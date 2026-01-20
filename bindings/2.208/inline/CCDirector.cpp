#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCPoint cocos2d::CCDirector::convertToUI(cocos2d::CCPoint const& p0) {
    kmMat4 projection;
    kmGLGetMatrix(KM_GL_PROJECTION, &projection);
    kmMat4 modelView;
    kmGLGetMatrix(KM_GL_MODELVIEW, &modelView);
    kmMat4 transform;
    kmMat4Multiply(&transform, &projection, &modelView);
    kmVec3 clipCoord;
    kmVec3 glCoord = { p0.x, p0.y, 0.0f };
    kmVec3TransformCoord(&clipCoord, &glCoord, &transform);
    auto glSize = m_pobOpenGLView->getDesignResolutionSize();
    return {
        glSize.width * (clipCoord.x * 0.5f + 0.5f),
        glSize.height * (-clipCoord.y * 0.5f + 0.5f)
    };
}

cocos2d::CCPoint cocos2d::CCDirector::getVisibleOrigin() {
    return m_pobOpenGLView ? m_pobOpenGLView->getVisibleOrigin() : cocos2d::CCPoint { 0.f, 0.f };
}

cocos2d::CCSize cocos2d::CCDirector::getVisibleSize() {
    return m_pobOpenGLView ? m_pobOpenGLView->getVisibleSize() : cocos2d::CCSize { 0.f, 0.f };
}
#endif

