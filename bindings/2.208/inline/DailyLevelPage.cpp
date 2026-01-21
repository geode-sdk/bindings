#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#include <sys/types.h>
#include <sys/timeb.h>
void DailyLevelPage::FLAlert_Clicked(FLAlertLayer* layer, bool btn2) {}

int DailyLevelPage::getDailyTime() {
    __timeb64 current;
    _ftime64_s(&current);
    auto currentTime = ((current.time & 0xfffff) * 1000 + current.millitm) / 1000.0;
    return std::max<int>(GameLevelManager::sharedState()->getDailyTimer(m_type) - currentTime, 0);
}

void DailyLevelPage::refreshDailyPage() {
    if (auto dailyNode = m_dailyNode) {
        if (dailyNode->m_needsDownloading) return;
        if (auto level = dailyNode->m_level) {
            m_dailyNode = nullptr;
            this->createDailyNode(level, true, 0.f, false);
            dailyNode->removeMeAndCleanup();
        }
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

