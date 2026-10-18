#include <Geode/Bindings.hpp>

#if defined(GEODE_IS_MACOS) || defined(GEODE_IS_IOS)
bool cocos2d::CCRenderTexture::saveToFile(const char* filePath) {
    if (auto image = this->newCCImage(true)) {
        auto ret = image->saveToFile(filePath, kCCImageFormatJPEG);
        delete image;
        return ret;
    }
    return false;
}

bool cocos2d::CCRenderTexture::saveToFile(const char* fileName, cocos2d::tCCImageFormat format) {
    if (auto image = this->newCCImage(true)) {
        auto ret = image->saveToFile((CCFileUtils::sharedFileUtils()->getWritablePath() + fileName).c_str(), true);
        delete image;
        return ret;
    }
    return false;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCRenderTexture::CCRenderTexture() {
    m_pSprite = nullptr;
    m_uFBO = 0;
    m_uDepthRenderBufffer = 0;
    m_nOldFBO = 0;
    m_pTexture = nullptr;
    m_pTextureCopy = nullptr;
    m_pUITextureImage = nullptr;
    m_ePixelFormat = kCCTexture2DPixelFormat_RGBA8888;
    m_uClearFlags = 0;
    m_sClearColor = { 0.0f, 0.0f, 0.0f, 0.0f };
    m_fClearDepth = 0.0f;
    m_nClearStencil = 0;
    m_bAutoDraw = false;
}

cocos2d::CCRenderTexture* cocos2d::CCRenderTexture::create(int p0, int p1, cocos2d::CCTexture2DPixelFormat p2, unsigned int p3) {
    auto ret = new CCRenderTexture();
    if (ret->initWithWidthAndHeight(p0, p1, p2, p3)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void cocos2d::CCRenderTexture::beginWithClear(float p0, float p1, float p2, float p3, float p4) {
    this->beginWithClear(p0, p1, p2, p3, p4, 0, GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
}

void cocos2d::CCRenderTexture::beginWithClear(float p0, float p1, float p2, float p3, float p4, int p5) {
    this->beginWithClear(p0, p1, p2, p3, p4, p5, GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
}

void cocos2d::CCRenderTexture::clear(float r, float g, float b, float a) {
    this->beginWithClear(r, g, b, a);
    this->end();
}

void cocos2d::CCRenderTexture::clearDepth(float depthValue) {
    this->begin();
    float depthClearValue;
    glGetFloatv(GL_DEPTH_CLEAR_VALUE, &depthClearValue);
    glClearDepth(depthValue);
    glClear(GL_DEPTH_BUFFER_BIT);
    glClearDepth(depthClearValue);
    this->end();
}

void cocos2d::CCRenderTexture::clearStencil(int stencilValue) {
    int stencilClearValue;
    glGetIntegerv(GL_STENCIL_CLEAR_VALUE, &stencilClearValue);
    glClearStencil(stencilValue);
    glClear(GL_STENCIL_BUFFER_BIT);
    glClearStencil(stencilClearValue);
}

bool cocos2d::CCRenderTexture::initWithWidthAndHeight(int p0, int p1, cocos2d::CCTexture2DPixelFormat p2) {
    return this->initWithWidthAndHeight(p0, p1, p2, 0);
}

cocos2d::CCImage* cocos2d::CCRenderTexture::newCCImage(bool flipImage) {
    if (!m_pTexture) return nullptr;

    auto& s = m_pTexture->getContentSizeInPixels();
    int width = s.width;
    int height = s.height;
    auto buffer = new uint8_t[width * height * 4];
    auto data = new uint8_t[width * height * 4];
    auto image = new CCImage();

    this->begin();
    glPixelStorei(GL_PACK_ALIGNMENT, 1);
    glReadPixels(0, 0, width, height, GL_RGBA, GL_UNSIGNED_BYTE, data);
    this->end();

    if (flipImage) {
        for (int i = 0; i < height; i++) {
            memcpy(&buffer[i * width * 4], &data[(height - i - 1) * width * 4], width * 4);
        }

        image->initWithImageData(buffer, width * height * 4, CCImage::kFmtRawData, width, height, 8);
    }
    else image->initWithImageData(data, width * height * 4, CCImage::kFmtRawData, width, height, 8);    

    delete[] buffer;
    delete[] data;
    return image;
}

void cocos2d::CCRenderTexture::listenToBackground(cocos2d::CCObject* obj) {}

void cocos2d::CCRenderTexture::listenToForeground(cocos2d::CCObject* obj) {}

unsigned int cocos2d::CCRenderTexture::getClearFlags() const {
    return m_uClearFlags;
}

void cocos2d::CCRenderTexture::setClearFlags(unsigned int uClearFlags) {
    m_uClearFlags = uClearFlags;
}

cocos2d::ccColor4F const& cocos2d::CCRenderTexture::getClearColor() const {
    return m_sClearColor;
}

void cocos2d::CCRenderTexture::setClearColor(cocos2d::ccColor4F const& clearColor) {
    m_sClearColor = clearColor;
}

float cocos2d::CCRenderTexture::getClearDepth() const {
    return m_fClearDepth;
}

void cocos2d::CCRenderTexture::setClearDepth(float fClearDepth) {
    m_fClearDepth = fClearDepth;
}

int cocos2d::CCRenderTexture::getClearStencil() const {
    return m_nClearStencil;
}

void cocos2d::CCRenderTexture::setClearStencil(float fClearStencil) {
    m_nClearStencil = fClearStencil;
}

bool cocos2d::CCRenderTexture::isAutoDraw() const {
    return m_bAutoDraw;
}

void cocos2d::CCRenderTexture::setAutoDraw(bool bAutoDraw) {
    m_bAutoDraw = bAutoDraw;
}
#endif

