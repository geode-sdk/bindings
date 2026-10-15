#include <Geode/Bindings.hpp>

ShareListLayer::ShareListLayer() {
    m_list = nullptr;
    m_friendsOnlyToggler = nullptr;
    m_friendsOnlyLabel = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
ShareListLayer::~ShareListLayer() {
    CC_SAFE_RELEASE(m_list);
}

ShareListLayer* ShareListLayer::create(GJLevelList* list) {
    auto ret = new ShareListLayer();
    if (ret->init(list)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

