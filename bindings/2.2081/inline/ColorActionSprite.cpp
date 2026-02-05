#include <Geode/Bindings.hpp>

ColorActionSprite::ColorActionSprite() {
    m_opacity = 255.f;
    m_colorID = 0;
    m_colorAction = nullptr;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
ColorActionSprite* ColorActionSprite::create() {
    auto ret = new ColorActionSprite();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

