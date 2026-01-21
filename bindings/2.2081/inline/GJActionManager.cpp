#include <Geode/Geode.hpp>

GJActionManager::GJActionManager() {
    m_internalActions = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
cocos2d::CCAction* GJActionManager::getInternalAction(int id) {
    return static_cast<cocos2d::CCAction*>(m_internalActions->objectForKey(id));
}
#endif

#if defined(GEODE_IS_WINDOWS)
GJActionManager::~GJActionManager() {
    CC_SAFE_RELEASE(m_internalActions);
}

GJActionManager* GJActionManager::create() {
    auto ret = new GJActionManager();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void GJActionManager::runInternalAction(cocos2d::CCAction* action, cocos2d::CCNode* target) {
    m_internalActions->setObject(action, action->getTag());
    action->startWithTarget(target);
}

void GJActionManager::stopAllInternalActions() {
    this->updateInternalActions(0.f, true);
}

void GJActionManager::stopInternalAction(int id) {
    if (auto action = static_cast<cocos2d::CCAction*>(m_internalActions->objectForKey(id))) {
        action->stop();
        m_internalActions->removeObjectForKey(id);
    }
}

void GJActionManager::updateInternalActions(float dt, bool remove) {
    auto keys = m_internalActions->allKeys();
    for (auto obj : geode::cocos::CCArrayExt<cocos2d::CCObject*, false>(keys)) {
        auto key = static_cast<cocos2d::CCInteger*>(obj)->getValue();
        auto action = static_cast<cocos2d::CCAction*>(m_internalActions->objectForKey(key));
        if (action->isDone() || remove) {
            action->stop();
            m_internalActions->removeObjectForKey(key);
        }
        else {
            action->step(dt);
        }
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

