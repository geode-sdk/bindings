#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
unsigned int cocos2d::CCActionManager::numberOfRunningActionsInTarget(cocos2d::CCObject* target) {
    struct tHashElement {
        ccArray* actions;
        CCObject* target;
        unsigned int actionIndex;
        CCAction* currentAction;
        bool currentActionSalvaged;
        bool paused;
        UT_hash_handle hh;
    };

    tHashElement* element = nullptr;
    HASH_FIND_INT(reinterpret_cast<tHashElement*>(m_pTargets), &target, element);
    return element && element->actions ? element->actions->num : 0;
}

cocos2d::CCSet* cocos2d::CCActionManager::pauseAllRunningActions() {
    struct tHashElement {
        ccArray* actions;
        CCObject* target;
        unsigned int actionIndex;
        CCAction* currentAction;
        bool currentActionSalvaged;
        bool paused;
        UT_hash_handle hh;
    };

    auto targets = new CCSet();
    targets->autorelease();
    for (auto element = reinterpret_cast<tHashElement*>(m_pTargets); element != nullptr; element = static_cast<tHashElement*>(element->hh.next)) {
        if (!element->paused) {
            element->paused = true;
            targets->addObject(element->target);
        }
    }
    return targets;
}

void cocos2d::CCActionManager::removeAllActions() {
    struct tHashElement {
        ccArray* actions;
        CCObject* target;
        unsigned int actionIndex;
        CCAction* currentAction;
        bool currentActionSalvaged;
        bool paused;
        UT_hash_handle hh;
    };

    for (auto element = reinterpret_cast<tHashElement*>(m_pTargets); element != nullptr; element = static_cast<tHashElement*>(element->hh.next)) {
        this->removeAllActionsFromTarget(element->target);
    }
}

void cocos2d::CCActionManager::resumeTargets(cocos2d::CCSet* p0) {
    for (auto it = p0->begin(); it != p0->end(); ++it) {
        this->resumeTarget(*it);
    }
}
#endif

