#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::CCProgressTimer::setType(cocos2d::CCProgressTimerType type) {
    if (type != m_eType) {
        if (m_pVertexData) {
            free(m_pVertexData);
            m_pVertexData = nullptr;
            m_nVertexDataCount = 0;
        }
        m_eType = type;
    }
}
#endif

