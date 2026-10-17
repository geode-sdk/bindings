#include <Geode/Bindings.hpp>

GameOptionsTrigger::GameOptionsTrigger() {
    m_streakAdditive = GameOptionsSetting::Disabled;
    m_unlinkDualGravity = GameOptionsSetting::Disabled;
    m_hideGround = GameOptionsSetting::Disabled;
    m_hideP1 = GameOptionsSetting::Disabled;
    m_hideP2 = GameOptionsSetting::Disabled;
    m_disableP1Controls = GameOptionsSetting::Disabled;
    m_disableP2Controls = GameOptionsSetting::Disabled;
    m_hideMG = GameOptionsSetting::Disabled;
    m_hideAttempts = GameOptionsSetting::Disabled;
    m_editRespawnTime = GameOptionsSetting::Disabled;
    m_respawnTime = 0.f;
    m_audioOnDeath = GameOptionsSetting::Disabled;
    m_noDeathSFX = GameOptionsSetting::Disabled;
    m_boostSlide = GameOptionsSetting::Disabled;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool GameOptionsTrigger::init(char const* frame) {
    return EffectGameObject::init(frame);
}
#endif

#if defined(GEODE_IS_WINDOWS)
GameOptionsTrigger* GameOptionsTrigger::create(char const* frame) {
    auto ret = new GameOptionsTrigger();
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

