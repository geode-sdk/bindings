#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool RewardUnlockLayer::readyToCollect(GJRewardItem* item) {
    return item ? m_chestType == (int)item->m_rewardType : false;
}
#endif

#if defined(GEODE_IS_WINDOWS)
void RewardUnlockLayer::keyBackClicked() {}

void RewardUnlockLayer::labelEnterFinishedO(cocos2d::CCObject* object) {}
#endif

#if defined(GEODE_IS_IOS)
#endif

