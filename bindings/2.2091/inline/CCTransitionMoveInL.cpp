#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCTransitionMoveInL::CCTransitionMoveInL() {}

cocos2d::CCTransitionMoveInL::~CCTransitionMoveInL() {}

cocos2d::CCTransitionMoveInL* cocos2d::CCTransitionMoveInL::create(float t, cocos2d::CCScene* scene) {
    auto ret = new CCTransitionMoveInL();
    if (ret->initWithDuration(t, scene)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void cocos2d::CCTransitionMoveInL::initScenes() {
    m_pInScene->setPosition({ -CCDirector::sharedDirector()->getWinSize().width, 0.f });
}
#endif

