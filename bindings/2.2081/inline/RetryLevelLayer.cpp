#include <Geode/Geode.hpp>

RetryLevelLayer::RetryLevelLayer() {
    m_mainMenu = nullptr;
    m_exitingMenu = false;
    m_unk1e9 = false;
}

bool RetryLevelLayer::shouldOffsetRewardCurrency() { return true; }

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
const char* RetryLevelLayer::getEndText() {
    auto index = rand() % 5;
    switch (index) {
        case 2: return "Good Job!";
        case 3: return "Well Done!";
        case 4: return "Impressive!";
        default: return "Awesome!";
    }
}

void RetryLevelLayer::onEveryplay(cocos2d::CCObject* sender) {}
#endif

#if defined(GEODE_IS_WINDOWS)
RetryLevelLayer::~RetryLevelLayer() {
    auto gm = GameManager::sharedState();
    if (gm->m_rewardedVideoDelegate == this) gm->m_rewardedVideoDelegate = nullptr;
}

RetryLevelLayer* RetryLevelLayer::create() {
    auto ret = new RetryLevelLayer();
    if (ret->init(" ", 230.f, true)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void RetryLevelLayer::keyUp(cocos2d::enumKeyCodes key, double timestamp) {}
#endif

#if defined(GEODE_IS_IOS)
#endif

