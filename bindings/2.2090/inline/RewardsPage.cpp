#include <Geode/Bindings.hpp>

RewardsPage::RewardsPage() {
    m_leftLabel = nullptr;
    m_rightLabel = nullptr;
    m_leftChest = nullptr;
    m_rightChest = nullptr;
    m_leftOpen = false;
    m_rightOpen = false;
    m_openLayer = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
char const* RewardsPage::getRewardFrame(int type, int state) {
    return cocos2d::CCString::createWithFormat("chest_%02d_%02d_001.png", type, state)->getCString();
}

void RewardsPage::unlockLayerClosed(RewardUnlockLayer* layer) {
    if (m_openLayer == layer) m_openLayer = nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS)
RewardsPage::~RewardsPage() {
    auto glm = GameLevelManager::sharedState();
    if (glm->m_GJRewardDelegate == this) glm->m_GJRewardDelegate = nullptr;
}

RewardsPage* RewardsPage::create() {
    auto ret = new RewardsPage();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void RewardsPage::FLAlert_Clicked(FLAlertLayer* layer, bool btn2) {}
#endif

#if defined(GEODE_IS_IOS)
#endif

