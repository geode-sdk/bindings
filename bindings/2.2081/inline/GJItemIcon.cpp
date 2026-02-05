#include <Geode/Bindings.hpp>

#if !defined(GEODE_IS_IOS)
GJItemIcon::GJItemIcon() {
    m_player = nullptr;
    m_iconRequestID = 0;
    m_isIcon = false;
    m_unlockID = 0;
    m_unlockType = (UnlockType)0;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GJItemIcon::~GJItemIcon() {
    GameManager::sharedState()->unloadIcons(m_iconRequestID);
}

GJItemIcon* GJItemIcon::create(UnlockType type, int id, cocos2d::ccColor3B color1, cocos2d::ccColor3B color2, bool dark, bool unused, bool noLabel, cocos2d::ccColor3B unlockColor) {
    auto ret = new GJItemIcon();
    if (ret->init(type, id, color1, color2, dark, unused, noLabel, unlockColor)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

cocos2d::ccColor3B GJItemIcon::unlockedColorForType(int type) {
    switch (type) {
        case 1: return { 10, 30, 20 };
        case 2: return { 33, 22, 66 };
        case 3: return { 20, 20, 40 };
        case 4: return { 20, 30, 50 };
        case 5: return { 50, 50, 50 };
        default: return { 60, 30, 20 };
    }
}
#endif

#if defined(GEODE_IS_IOS)
GJItemIcon* GJItemIcon::createBrowserItem(UnlockType unlockType, int itemID) {
    return create(unlockType, itemID, { 175, 175, 175 }, { 255, 255, 255 }, false, true, true, { 255, 255, 255 });
}
#endif

