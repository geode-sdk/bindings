#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void GroupCommandObject2::resetDelta(bool intermediate) {
    m_oldDeltaX = m_deltaX;
    m_oldDeltaY = m_deltaY;
    m_oldDeltaX_3 = m_deltaX_3;
    m_oldDeltaY_3 = m_deltaY_3;
    m_deltaX = 0.0;
    m_deltaY = 0.0;
    m_currentRotateOrTransformDelta = 0.0;
    if (!intermediate) {
        m_deltaX_3 = 0.0;
        m_deltaY_3 = 0.0;
        m_Delta_3_Related = 0.0;
    }
}

void GroupCommandObject2::runFollowCommand(double xMod, double yMod, double duration) {
    m_commandType = 2;
    m_followXMod = xMod;
    m_followYMod = yMod;
    m_duration = duration;
    if (xMod == 0.0 && yMod == 0.0) {
        m_finished = true;
        m_finishRelated = true;
    }
}

void GroupCommandObject2::runMoveCommand(cocos2d::CCPoint offset, double duration, int easingType, double easingRate, bool lockPlayerX, bool lockPlayerY, bool lockCameraX, bool lockCameraY, double moveModX, double moveModY) {
    m_commandType = 0;
    m_moveOffset = offset;
    m_duration = duration;
    m_easingType = (EasingType)easingType;
    m_easingRate = easingRate;
    m_lockToPlayerX = lockPlayerX;
    m_lockToPlayerY = lockPlayerY;
    m_lockToCameraX = lockCameraX;
    m_lockToCameraY = lockCameraY;
    m_moveModX = moveModX != 0.0 ? moveModX : 1.0;
    m_moveModY = moveModY != 0.0 ? moveModY : 1.0;
    m_lockedInX = lockPlayerX || lockCameraX;
    m_lockedInY = lockPlayerY || lockCameraY;
    if (offset.x != 0.f || offset.y != 0.f || lockPlayerX || lockPlayerY || lockCameraX || lockCameraY) {
        if (offset.x != 0.f && !lockCameraX && !lockPlayerX) {
            m_actionType1 = 1;
            m_actionValue1 = offset.x;
        }
        if (offset.y != 0.f && !lockCameraY && !lockPlayerY) {
            if (m_actionType1 == 0) {
                m_actionType1 = 2;
                m_actionValue1 = offset.y;
            }
            else {
                m_actionType2 = 2;
                m_actionValue2 = offset.y;
            }
        }
    }
    else {
        m_finished = true;
        m_finishRelated = true;
    }
}

void GroupCommandObject2::runPlayerFollowCommand(double delay, double speed, int offset, double maxSpeed, double duration) {
    m_commandType = 3;
    m_followYDelay = delay;
    m_followYSpeed = std::clamp(speed, 0.0, 500.0);
    m_followYOffset = offset;
    m_followYMaxSpeed = maxSpeed;
    m_duration = duration;
    if (delay <= 0.0) {
        m_finished = true;
        m_finishRelated = true;
    }
}

void GroupCommandObject2::runRotateCommand(double offset, double duration, int easingType, double easingRate, bool lockRotation, int targetType) {
    m_commandType = 1;
    m_rotationOffset = offset;
    m_duration = duration;
    m_easingType = (EasingType)easingType;
    m_easingRate = easingRate;
    m_lockObjectRotation = lockRotation;
    m_targetPlayer = targetType;
    if (offset == 0.0) {
        m_finished = true;
        m_finishRelated = true;
    }
    else {
        m_actionType1 = 3;
        m_actionValue1 = offset;
    }
}

void GroupCommandObject2::runTransformCommand(double duration, int easingType, double easingRate) {
    m_commandType = 4;
    m_duration = duration;
    m_easingType = (EasingType)easingType;
    m_easingRate = easingRate;
    m_actionType1 = 4;
    m_actionValue1 = 1.0;
}

void GroupCommandObject2::stepTransformCommand(float dt, bool intermediate, bool skipStep) {
    if (!m_finishRelated) {
        if (!skipStep) this->step(dt);
        m_someInterpValue1RelatedZero = m_someInterpValue1RelatedOne;
        m_someInterpValue1RelatedOne += m_currentRotateOrTransformDelta;
        m_someInterpValue2RelatedZero = m_someInterpValue2RelatedOne;
        if (!intermediate) m_someInterpValue2RelatedOne = m_someInterpValue1RelatedOne;
    }
    m_someInterpValue1RelatedZero = m_someInterpValue1RelatedOne;
    m_someInterpValue2RelatedZero = m_someInterpValue2RelatedOne;
    m_someInterpValue2RelatedOne = m_someInterpValue1RelatedOne;
}

void GroupCommandObject2::updateEffectAction(float value, int type) {
    switch (type) {
        case 1:
            if (!m_lockedInX) {
                m_currentXOffset = value;
                m_deltaX += value;
                m_deltaX_3 += value;
            }
            break;
        case 2:
            if (!m_lockedInY) {
                m_currentYOffset = value;
                m_deltaY += value;
                m_deltaY_3 += value;
            }
            break;
        case 3:
        case 4:
            m_currentRotateOrTransformDelta += value - m_currentRotateOrTransformValue;
            m_currentRotateOrTransformValue = value;
            break;
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

