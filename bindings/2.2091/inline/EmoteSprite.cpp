#include <Geode/Bindings.hpp>

EmoteSprite* EmoteSprite::createWithName(std::string const& name) {
    auto def = defForName(name);
    return createWithDef(def);
}

#if defined(GEODE_IS_WINDOWS)
EmoteSprite::EmoteSprite() {}

bool EmoteSprite::initWithDef(EmoteDef const* def) {
    if (!def)
        return false;

    auto frame = CCString::createWithFormat(
        "particle_%02d_001.png",
        def->m_particleIndex
    );

    if (!CCSprite::initWithSpriteFrameName(frame->getCString()))
        return false;
    
    m_emoteDef = def;
    CCSprite::setColor(def->m_color);

    if (def->m_flipX)
        CCSprite::setFlipX(true);
    
    return true;
}

float EmoteSprite::heightFactor() {
    ensureEmotesAreLoaded();
    return *reinterpret_cast<float*>(
        geode::base::get() + 0x8fe390
    );
}

int EmoteSprite::maxEmotesMessage() {
    ensureEmotesAreLoaded();
    return *reinterpret_cast<int*>(
        geode::base::get() + 0x8fe394
    );
}

float EmoteSprite::jumboMultiScale() {
    ensureEmotesAreLoaded();
    return *reinterpret_cast<float*>(
        geode::base::get() + 0x8fe398
    );
}

float EmoteSprite::jumboScale() {
    ensureEmotesAreLoaded();
    return *reinterpret_cast<float*>(
        geode::base::get() + 0x8fe39c
    );
}

float EmoteSprite::jumboMaxAspect() {
    ensureEmotesAreLoaded();
    return *reinterpret_cast<float*>(
        geode::base::get() + 0x8fe3a0
    );
}

int EmoteSprite::maxEmotesComment() {
    ensureEmotesAreLoaded();
    return *reinterpret_cast<int*>(
        geode::base::get() + 0x8fe3a4
    );
}
#endif