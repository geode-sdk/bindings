#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCCamera::~CCCamera() {}

const char* cocos2d::CCCamera::description() {
    return CCString::createWithFormat("<CCCamera | center = (%.2f,%.2f,%.2f)>", m_fCenterX, m_fCenterY, m_fCenterZ)->getCString();
}

float cocos2d::CCCamera::getZEye() {
    return FLT_EPSILON;
}

void cocos2d::CCCamera::init() {
    this->restore();
}

void cocos2d::CCCamera::setEyeXYZ(float eyeX, float eyeY, float eyeZ) {
    m_fEyeX = eyeX;
    m_fEyeY = eyeY;
    m_fEyeZ = eyeZ;
    m_bDirty = true;
}

void cocos2d::CCCamera::setCenterXYZ(float centerX, float centerY, float centerZ) {
    m_fCenterX = centerX;
    m_fCenterY = centerY;
    m_fCenterZ = centerZ;
    m_bDirty = true;
}

void cocos2d::CCCamera::setUpXYZ(float upX, float upY, float upZ) {
    m_fUpX = upX;
    m_fUpY = upY;
    m_fUpZ = upZ;
    m_bDirty = true;
}

void cocos2d::CCCamera::getEyeXYZ(float* eyeX, float* eyeY, float* eyeZ) {
    *eyeX = m_fEyeX;
    *eyeY = m_fEyeY;
    *eyeZ = m_fEyeZ;
}

void cocos2d::CCCamera::getCenterXYZ(float* centerX, float* centerY, float* centerZ) {
    *centerX = m_fCenterX;
    *centerY = m_fCenterY;
    *centerZ = m_fCenterZ;
}

void cocos2d::CCCamera::getUpXYZ(float* upX, float* upY, float* upZ) {
    *upX = m_fUpX;
    *upY = m_fUpY;
    *upZ = m_fUpZ;
}
#endif

