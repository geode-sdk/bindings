#include <Geode/binding/LikeItemLayer.hpp>

LikeItemLayer::LikeItemLayer() {
    m_itemType = LikeItemType::Unknown;
    m_itemID = 0;
    m_commentSourceID = 0;
    m_likeDelegate = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#ifdef GEODE_IS_MACOS
LikeItemLayer::~LikeItemLayer() {}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

