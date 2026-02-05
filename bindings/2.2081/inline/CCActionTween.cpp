#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
bool cocos2d::CCActionTween::initWithDuration(float p0, char const* p1, float p2, float p3) {
    if (!CCActionInterval::initWithDuration(p0)) return false;
    m_strKey = p1;
    // m_nIntTag = 0;
    m_fFrom = p2;
    m_fTo = p3;
    return true;
}

void cocos2d::CCActionTween::updateTargetValue(float p0) {
    m_fTo = p0;
    m_fDelta = p0 - m_fFrom;
}
#endif

