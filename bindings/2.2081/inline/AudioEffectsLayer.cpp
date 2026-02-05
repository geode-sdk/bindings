#include <Geode/Bindings.hpp>

AudioEffectsLayer::AudioEffectsLayer() {
    m_batchNode = nullptr;
    m_unk1bc = nullptr;
    m_unk1c0 = nullptr;
    m_timeElapsed = 0;
    m_audioPulseMod = 0;
    m_goingDown = false;
    m_audioScale = 0;
    m_unk1d4 = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
AudioEffectsLayer::~AudioEffectsLayer() {
    CC_SAFE_RELEASE(m_unk1bc);
    CC_SAFE_RELEASE(m_unk1c0);
}

AudioEffectsLayer* AudioEffectsLayer::create(gd::string audioString) {
    auto ret = new AudioEffectsLayer();
    if (ret->init(audioString)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void AudioEffectsLayer::draw() {}

void AudioEffectsLayer::triggerEffect(float pulse) {
    float scale;
    if (pulse == 1.f) scale = .8f;
    else if (pulse == .9f) scale = .6f;
    else if (pulse == .8f) scale = .4f;
    else scale = pulse * .2f;
    auto pulseMod = std::min(scale + m_audioScale, 1.1f);
    if (!m_goingDown && m_audioPulseMod > pulseMod) return;
    m_audioPulseMod = pulseMod;
    m_goingDown = false;
    this->stopActionByTag(0);
    auto action = cocos2d::CCSequence::create(
        cocos2d::CCActionTween::create(.05f, "audioScale", m_audioScale, pulseMod),
        cocos2d::CCCallFunc::create(this, callfunc_selector(AudioEffectsLayer::goingDown)),
        cocos2d::CCActionTween::create(.2f, "audioScale", pulseMod, .1f),
        nullptr
    );
    action->setTag(0);
    this->runAction(action);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

