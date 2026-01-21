#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
int SetupCameraOffsetTrigger::posFromSliderValue(float value) {
    return (int)((value - .5f) * 200.f) * 3.f;
}

float SetupCameraOffsetTrigger::sliderValueFromPos(int pos) {
    return std::clamp((int)((float)pos / 3.f) / 200.f + .5f, 0.f, 1.f);
}
#endif

#if defined(GEODE_IS_WINDOWS)
void SetupCameraOffsetTrigger::updateDurLabel(bool decimals) {
    m_disableTextDelegate = true;
    auto moveTime = m_moveTime;
    if (moveTime == -99999.f) {
        m_moveTimeInput->setString("Mixed");
    }
    else if (decimals || moveTime - (int)moveTime != 0.f) {
        m_moveTimeInput->setString(cocos2d::CCString::createWithFormat("%.02f", moveTime)->getCString());
    }
    else {
        m_moveTimeInput->setString(cocos2d::CCString::createWithFormat("%i", (int)moveTime)->getCString());
    }
    m_disableTextDelegate = false;
}

void SetupCameraOffsetTrigger::updateMoveCommandEasing() {
    if (m_gameObject) m_gameObject->m_easingType = m_cameraEasingType;
    else {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            static_cast<EffectGameObject*>(m_gameObjects->objectAtIndex(i))->m_easingType = m_cameraEasingType;
        }
    }
}

void SetupCameraOffsetTrigger::updateMoveCommandEasingRate() {
    if (m_gameObject) m_gameObject->m_easingRate = m_cameraEasingRate;
    else {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            static_cast<EffectGameObject*>(m_gameObjects->objectAtIndex(i))->m_easingRate = m_cameraEasingRate;
        }
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

