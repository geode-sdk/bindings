#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
bool ExplodeItemNode::init(cocos2d::CCRenderTexture* texture) {
    if (!cocos2d::CCNode::init()) return false;
    m_floorHeight = 90.f;
    m_renderTexture = texture;
    texture->retain();
    m_sprites = cocos2d::CCArray::create();
    m_sprites->retain();
    return true;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

