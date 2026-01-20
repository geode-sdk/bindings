#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
bool cocos2d::CCScaleTo::initWithDuration(float duration, float s) {
    if (cocos2d::CCActionInterval::initWithDuration(duration))
    {
        m_fEndScaleX = s;
        m_fEndScaleY = s;

        return true;
    }

    return false;
}

bool cocos2d::CCScaleTo::initWithDuration(float duration, float sx, float sy) {
    if (cocos2d::CCActionInterval::initWithDuration(duration))
    {
        m_fEndScaleX = sx;
        m_fEndScaleY = sy;

        return true;
    }

    return false;
}
#endif

