#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void AchievementNotifier::willSwitchToScene(cocos2d::CCScene* scene) {
    this->m_nextScene = scene;

    if (this->m_activeAchievementBar && this->m_activeAchievementBar->getParent() != this->m_nextScene)
    {
        this->m_activeAchievementBar->retain();
        this->m_activeAchievementBar->removeFromParentAndCleanup(false);
        this->m_nextScene->addChild(this->m_activeAchievementBar, 105);
        this->m_activeAchievementBar->release();
        this->m_activeAchievementBar->resumeSchedulerAndActions();
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

