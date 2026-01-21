#include <Geode/Geode.hpp>

MoreSearchLayer::MoreSearchLayer() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void MoreSearchLayer::onFollowed(cocos2d::CCObject* sender) {
    auto glm = GameLevelManager::sharedState();
    glm->setBoolForKey(!glm->getBoolForKey("follow_filter"), "follow_filter");
}

void MoreSearchLayer::onFriends(cocos2d::CCObject* sender) {
    auto glm = GameLevelManager::sharedState();
    glm->setBoolForKey(!glm->getBoolForKey("friend_filter"), "friend_filter");
}
#endif

#if defined(GEODE_IS_WINDOWS)
MoreSearchLayer::~MoreSearchLayer() {
    CC_SAFE_RELEASE(m_commonSongNodes);
    CC_SAFE_RELEASE(m_normalSongNodes);
    CC_SAFE_RELEASE(m_customSongNodes);
}

MoreSearchLayer* MoreSearchLayer::create() {
    auto ret = new MoreSearchLayer();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

