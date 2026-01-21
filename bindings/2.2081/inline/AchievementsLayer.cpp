#include <Geode/Geode.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
AchievementsLayer::AchievementsLayer() {
    m_currentPage = 0;
    m_nextPageButton = nullptr;
    m_prevPageButton = nullptr;
    m_pageLabel = nullptr;
}

AchievementsLayer* AchievementsLayer::create() {
    auto ret = new AchievementsLayer();
    if (ret->init("Achievements")) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void AchievementsLayer::setupLevelBrowser(cocos2d::CCArray* arr) {
    m_listLayer->removeChildByTag(9, true);
    auto* listView = CustomListView::create(arr, BoomListType::Default, 220.f, 356.f);
    listView->setTag(9);
    m_listLayer->addChild(listView, 6);
}

void AchievementsLayer::setupPageInfo(int itemCount, int pageStartIdx, int pageEndIdx) {
    m_prevPageButton->setVisible(pageStartIdx != 0);
    auto nextIndex = pageStartIdx + pageEndIdx;
    m_nextPageButton->setVisible(itemCount > nextIndex);
    nextIndex = std::min(nextIndex, itemCount);
    m_pageLabel->setString(cocos2d::CCString::createWithFormat("%i to %i of %i", pageStartIdx + 1, nextIndex, itemCount)->getCString());
}
#endif

#if defined(GEODE_IS_IOS)
#endif

