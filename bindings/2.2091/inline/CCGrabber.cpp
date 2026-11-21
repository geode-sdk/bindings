#include <Geode/mapping/CCGrabber.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
cocos2d::CCGrabber::~CCGrabber() {
    glDeleteFramebuffers(1, &m_FBO);
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCGrabber::CCGrabber() {
    memset(m_oldClearColor, 0, sizeof(m_oldClearColor));
    glGenFramebuffers(1, &m_FBO);
}

void cocos2d::CCGrabber::grab(cocos2d::CCTexture2D* p0) {
    glGetIntegerv(GL_FRAMEBUFFER_BINDING, &m_oldFBO);
    glBindFramebuffer(GL_FRAMEBUFFER, m_FBO);
    glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, p0->getName(), 0);
    glCheckFramebufferStatus(GL_FRAMEBUFFER);
    glBindFramebuffer(GL_FRAMEBUFFER, m_oldFBO);
}
#endif

