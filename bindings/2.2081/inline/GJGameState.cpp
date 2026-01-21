#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void GJGameState::stopTweenAction(int action) {
    m_tweenActions.erase(action);
}
#endif

#if defined(GEODE_IS_WINDOWS)
void GJGameState::updateTweenAction(float value, int action) {
    switch (action) {
        case 1: m_cameraPosition.x = value; break;
        case 2: m_cameraPosition.y = value; break;
        case 7: m_levelFlipping = value; break;
        case 9: m_portalY = value; break;
        case 10: m_unkPoint6.x = value; break;
        case 11: m_unkPoint6.y = value; break;
        case 12: m_unkPoint8.x = value; break;
        case 13: m_unkPoint8.y = value; break;
        case 14: m_cameraZoom = value; break;
        case 15: m_cameraOffset.x = value; break;
        case 16: m_cameraOffset.y = value; break;
        case 17: m_cameraAngle = value; break;
        case 18: m_unkPoint26.x = value; break;
        case 19: m_unkPoint26.y = value; break;
        case 20: m_middleGroundOffsetY = value; break;
        case 21: m_unkPoint12.x = value; break;
        case 22: m_unkPoint12.y = value; break;
        case 25: m_unkFloat9 = value; break;
    }
}

void GJGameState::updateTweenActions(float tweenValue) {
    for (auto it = m_tweenActions.begin(); it != m_tweenActions.end();) {
        it->second.step(tweenValue);
        this->updateTweenAction(it->second.m_currentValue, it->first);
        if (it->second.m_finished) it = m_tweenActions.erase(it);
        else ++it;
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

