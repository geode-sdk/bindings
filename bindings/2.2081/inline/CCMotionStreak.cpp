#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::CCMotionStreak::tintWithColor(cocos2d::ccColor3B p0) {
    this->setColor(p0);
    for (int i = 0; i < m_uNuPoints * 2; i++) {
        *reinterpret_cast<ccColor3B*>(m_pColorPointer + i * 4) = p0;
    }
}
#endif

