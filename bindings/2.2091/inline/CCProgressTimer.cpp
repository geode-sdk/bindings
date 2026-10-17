#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::CCProgressTimer::setAnchorPoint(cocos2d::CCPoint anchorPoint) {
    CCNode::setAnchorPoint(anchorPoint);
}

void cocos2d::CCProgressTimer::setReverseProgress(bool reverse) {
    if (m_bReverseDirection != reverse) {
        m_bReverseDirection = reverse;
        CC_SAFE_FREE(m_pVertexData);
        m_nVertexDataCount = 0;
    }
}

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

