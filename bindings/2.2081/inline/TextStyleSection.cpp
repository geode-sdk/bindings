#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
TextStyleSection* TextStyleSection::createColoredSection(cocos2d::ccColor3B color, int start, int end) {
    auto ret = TextStyleSection::create(start, end, TextStyleType::Colored);
    ret->m_color = color;
    return ret;
}

TextStyleSection* TextStyleSection::createDelaySection(int start, float delay) {
    auto ret = TextStyleSection::create(start, -1, TextStyleType::Delayed);
    ret->m_delay = delay;
    return ret;
}

TextStyleSection* TextStyleSection::createInstantSection(int start, int end, float duration) {
    auto ret = TextStyleSection::create(start, end, TextStyleType::Instant);
    ret->m_instantTime = duration;
    return ret;
}

TextStyleSection* TextStyleSection::createShakeSection(int start, int end, int intensity, int perSecond) {
    auto ret = TextStyleSection::create(start, end, TextStyleType::Shake);
    ret->m_shakeIntensity = intensity;
    ret->m_shakesPerSecond = perSecond;
    return ret;
}

bool TextStyleSection::init(int start, int end, TextStyleType type) {
    m_styleType = type;
    m_startIndex = start;
    m_endIndex = end;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

