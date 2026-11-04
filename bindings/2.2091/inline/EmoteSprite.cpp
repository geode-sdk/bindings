#include <Geode/Bindings.hpp>

EmoteSprite* EmoteSprite::createWithName(std::string const& name) {
    auto def = defForName(name);
    return createWithDef(def);
}

#if defined(GEODE_IS_WINDOWS)
EmoteSprite::EmoteSprite() {
    m_emoteDef = nullptr;
}

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

static std::vector<EmoteDef>& getEmoteDefs() {
    return *reinterpret_cast<std::vector<EmoteDef>*>(geode::base::get() + 0x909d50);
}

int EmoteSprite::defCount() {
    ensureEmotesAreLoaded();
    return static_cast<int>(getEmoteDefs().size());
}

EmoteDef* EmoteSprite::defAtIndex(int index) {
    ensureEmotesAreLoaded();
    auto& loadedEmotes = getEmoteDefs();

    if (index < 0 || index >= loadedEmotes.size())
        return nullptr;
    
    return &(loadedEmotes[index]);
}

int EmoteSprite::characterCount(std::string const& str) {
    int count = 0;
    for (unsigned char c: str) {
        if ((c & 0xc0) != 0x80) //not continuation byte.
            ++count;
    }

    return count;
}

int EmoteSprite::charIndexForByte(std::string const& str, int byteIndex) {
    int last = byteIndex;
    if (byteIndex >= str.size())
        last = str.size() - 1;

    int count = 0;
    for (int i = 0; i <= last; ++i) {
        auto& c = str[i];
        if ((c & 0xc0) != 0x80)
            ++count;
    }

    if (byteIndex < size)
        --count;
    
    return count;
}
#endif