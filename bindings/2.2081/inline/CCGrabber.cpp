#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCGrabber::CCGrabber() {
    memset(m_oldClearColor, 0, sizeof(m_oldClearColor));
    glGenFramebuffers(1, &m_FBO);
}

cocos2d::CCGrabber::~CCGrabber() {
    glDeleteFramebuffers(1, &m_FBO);
}

void cocos2d::CCGrabber::afterRender(cocos2d::CCTexture2D* p0) {
    glBindFramebuffer(GL_FRAMEBUFFER, m_oldFBO);
    glClearColor(m_oldClearColor[0], m_oldClearColor[1], m_oldClearColor[2], m_oldClearColor[3]);
}

void cocos2d::CCGrabber::beforeRender(cocos2d::CCTexture2D* p0) {
    glGetIntegerv(GL_FRAMEBUFFER_BINDING, &m_oldFBO);
    glBindFramebuffer(GL_FRAMEBUFFER, m_FBO);
    glGetFloatv(GL_COLOR_CLEAR_VALUE, m_oldClearColor);
    glClearColor(0, 0, 0, 0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}

void cocos2d::CCGrabber::grab(cocos2d::CCTexture2D* p0) {
    glGetIntegerv(GL_FRAMEBUFFER_BINDING, &m_oldFBO);
    glBindFramebuffer(GL_FRAMEBUFFER, m_FBO);
    glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, p0->getName(), 0);
    glCheckFramebufferStatus(GL_FRAMEBUFFER);
    glBindFramebuffer(GL_FRAMEBUFFER, m_oldFBO);
}
#endif

