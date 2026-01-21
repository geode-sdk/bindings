#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void GJSongBrowser::setupPageInfo(int itemCount, int pageStartIdx, int pageEndIdx) {
    m_leftArrow->setVisible(pageStartIdx != 0);
    auto nextIndex = pageStartIdx + pageEndIdx;
    m_rightArrow->setVisible(itemCount > nextIndex);
    nextIndex = std::min(nextIndex, itemCount);
    m_countText->setString(cocos2d::CCString::createWithFormat("%i to %i of %i", pageStartIdx + 1, nextIndex, itemCount)->getCString());
}

void GJSongBrowser::setupSongBrowser(cocos2d::CCArray* songs) {
    m_listLayer->removeChildByTag(9, true);
    m_listView = CustomListView::create(songs, this, 220.f, 356.f, 0, BoomListType::CustomSong, 0.f);
    m_listView->setTag(9);
    m_listLayer->addChild(m_listView, 6);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

