#include <Geode/Geode.hpp>

TextGameObject::TextGameObject() {
    m_kerning = 0;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool TextGameObject::init(cocos2d::CCTexture2D* texture) {
    return GameObject::initWithTexture(texture);
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

