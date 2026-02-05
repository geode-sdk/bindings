#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
bool URLViewLayer::init(gd::string title, cocos2d::CCArray* objects) {
    if (!GJDropDownLayer::init(title.c_str())) return false;
    if (objects) {
        m_urlObjects = objects;
        objects->retain();
    }
    auto winSize = cocos2d::CCDirector::sharedDirector()->getWinSize();
    auto listView = CustomListView::create(m_urlObjects, nullptr, 220.f, 356.f, 0, BoomListType::URL, 0.f);
    listView->setTag(9);
    m_listLayer->addChild(listView, 6);
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

