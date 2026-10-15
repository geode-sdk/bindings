#include <Geode/Bindings.hpp>

CustomListView::CustomListView() {
    m_cellMode = 0;
}

CustomListView* CustomListView::create(cocos2d::CCArray* entries, BoomListType type, float height, float width) {
    return CustomListView::create(entries, nullptr, height, width, 0, type, 0.0f);
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

