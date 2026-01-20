#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void GJPFollowCommandLayer::updateMaxSpeed() {
    if (m_gameObject) {
        m_gameObject->m_followYMaxSpeed = m_maxSpeed;
    }
    else {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            static_cast<EffectGameObject*>(m_gameObjects->objectAtIndex(i))->m_followYMaxSpeed = m_maxSpeed;
        }
    }
}

void GJPFollowCommandLayer::updateMaxSpeedLabel() {
    m_disableTextDelegate = true;
    if (m_maxSpeed == -99999.f) m_maxSpeedInput->setString("");
    else m_maxSpeedInput->setString(cocos2d::CCString::createWithFormat("%0.1f", m_maxSpeed)->getCString());
    m_disableTextDelegate = false;
}

void GJPFollowCommandLayer::updateOffsetLabel() {
    m_disableTextDelegate = true;
    if (m_offset == -99999) m_offsetInput->setString("");
    else m_offsetInput->setString(cocos2d::CCString::createWithFormat("%i", (int)(m_offset / 3.f))->getCString());
    m_disableTextDelegate = false;
}

void GJPFollowCommandLayer::updatePlayerOffset() {
    if (m_gameObject) {
        m_gameObject->m_followYOffset = m_offset;
    }
    else {
        for (int i = 0; i < m_gameObjects->count(); i++) {
            static_cast<EffectGameObject*>(m_gameObjects->objectAtIndex(i))->m_followYOffset = m_offset;
        }
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

