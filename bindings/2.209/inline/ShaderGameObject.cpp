#include <Geode/Bindings.hpp>

#if !defined(GEODE_IS_IOS)
ShaderGameObject::ShaderGameObject() {
    m_speed = 1.f;
    m_strength = 1.f;
    m_outer = 1.f;
    m_timeOff = 0.f;
    m_waveWidth = 1.f;
    m_targetX = 1.f;
    m_targetY = 1.f;
    m_fadeIn = 1.f;
    m_fadeOut = 1.f;
    m_screenOffsetX = 0.f;
    m_screenOffsetY = 0.f;
    m_invert = false;
    m_inner = 0.f;
    m_maxSize = 0.f;
    m_flip = false;
    m_rotate = false;
    m_dual = false;
    m_useX = false;
    m_useY = false;
    m_snapGrid = false;
    m_hardEdges = false;
    m_disableAll = false;
    m_zLayerMin = 0;
    m_zLayerMax = 0;
    m_animate = false;
    m_relative = false;
    m_editorDisabled = false;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool ShaderGameObject::init(char const* frame) {
    return EffectGameObject::init(frame);
}
#endif

#if defined(GEODE_IS_WINDOWS)
ShaderGameObject* ShaderGameObject::create(char const* frame) {
    auto ret = new ShaderGameObject();
    if (ret->init(frame)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

