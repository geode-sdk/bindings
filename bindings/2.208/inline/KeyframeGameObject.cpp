#include <Geode/Geode.hpp>

KeyframeGameObject::KeyframeGameObject() {
    m_shadowObjects = nullptr;
    m_previewSprite = nullptr;
    m_keyframeGroup = 0;
    m_keyframeIndex = 0;
    m_referenceOnly = false;
    m_proximity = false;
    m_curve = false;
    m_closeLoop = false;
    m_timeMode = 0;
    m_unk760 = 0.0f;
    m_spawnDelay = 0.0f;
    m_previewArt = false;
    m_keyframeActive = false;
    m_autoLayer = false;
    m_direction = 0;
    m_revolutions = 0;
    m_lineOpacity = 1.0f;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
KeyframeGameObject::~KeyframeGameObject() {
    CC_SAFE_RELEASE(m_shadowObjects);
}

KeyframeGameObject* KeyframeGameObject::create() {
    auto ret = new KeyframeGameObject();
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

