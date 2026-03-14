#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCGridBase* CCGridBase::create(const CCSize& gridSize)
{
    CCGridBase *pGridBase = new CCGridBase();

    if (pGridBase)
    {
        if (pGridBase->initWithSize(gridSize))
        {
            pGridBase->autorelease();
        }
        else
        {
            CC_SAFE_RELEASE_NULL(pGridBase);
        }
    }

    return pGridBase;
}

CCGridBase* CCGridBase::create(const CCSize& gridSize, CCTexture2D *texture, bool flipped)
{
    CCGridBase *pGridBase = new CCGridBase();

    if (pGridBase)
    {
        if (pGridBase->initWithSize(gridSize, texture, flipped))
        {
            pGridBase->autorelease();
        }
        else
        {
            CC_SAFE_RELEASE_NULL(pGridBase);
        }
    }

    return pGridBase;
}

bool CCGridBase::initWithSize(const CCSize& gridSize, CCTexture2D *pTexture, bool bFlipped)
{
    bool bRet = true;

    m_bActive = false;
    m_nReuseGrid = 0;
    m_sGridSize = gridSize;

    m_pTexture = pTexture;
    CC_SAFE_RETAIN(m_pTexture);
    m_bIsTextureFlipped = bFlipped;

    CCSize texSize = m_pTexture->getContentSize();
    m_obStep.x = texSize.width / m_sGridSize.width;
    m_obStep.y = texSize.height / m_sGridSize.height;

    m_pGrabber = new CCGrabber();
    if (m_pGrabber)
    {
        m_pGrabber->grab(m_pTexture);
    }
    else
    {
        bRet = false;
    }
    
    m_pShaderProgram = CCShaderCache::sharedShaderCache()->programForKey(kCCShader_PositionTexture);
    calculateVertexPoints();

    return bRet;
}

bool CCGridBase::initWithSize(const CCSize& gridSize)
{
    CCDirector *pDirector = CCDirector::sharedDirector();
    CCSize s = pDirector->getWinSizeInPixels();
    
    unsigned long POTWide = ccNextPOT((unsigned int)s.width);
    unsigned long POTHigh = ccNextPOT((unsigned int)s.height);

    // we only use rgba8888
    CCTexture2DPixelFormat format = kCCTexture2DPixelFormat_RGBA8888;

    void *data = calloc((int)(POTWide * POTHigh * 4), 1);
    if (! data)
    {
        CCLOG("cocos2d: CCGrid: not enough memory.");
        this->release();
        return false;
    }

    CCTexture2D *pTexture = new CCTexture2D();
    pTexture->initWithData(data, format, POTWide, POTHigh, s);

    free(data);

    if (! pTexture)
    {
        CCLOG("cocos2d: CCGrid: error creating texture");
        return false;
    }

    initWithSize(gridSize, pTexture, false);

    pTexture->release();

    return true;
}

CCGridBase::~CCGridBase(void)
{
    CCLOGINFO("cocos2d: deallocing %p", this);

//TODO: ? why 2.0 comments this line        setActive(false);
    CC_SAFE_RELEASE(m_pTexture);
    CC_SAFE_RELEASE(m_pGrabber);
}

// properties
void CCGridBase::setActive(bool bActive)
{
    m_bActive = bActive;
    if (! bActive)
    {
        CCDirector *pDirector = CCDirector::sharedDirector();
        ccDirectorProjection proj = pDirector->getProjection();
        pDirector->setProjection(proj);
    }
}

void CCGridBase::setTextureFlipped(bool bFlipped)
{
    if (m_bIsTextureFlipped != bFlipped)
    {
        m_bIsTextureFlipped = bFlipped;
        calculateVertexPoints();
    }
}

void CCGridBase::set2DProjection()
{
    CCDirector *director = CCDirector::sharedDirector();

    CCSize    size = director->getWinSizeInPixels();

    glViewport(0, 0, (GLsizei)(size.width), (GLsizei)(size.height) );
    kmGLMatrixMode(KM_GL_PROJECTION);
    kmGLLoadIdentity();

    kmMat4 orthoMatrix;
    kmMat4OrthographicProjection(&orthoMatrix, 0, size.width, 0, size.height, -1, 1);
    kmGLMultMatrix( &orthoMatrix );

    kmGLMatrixMode(KM_GL_MODELVIEW);
    kmGLLoadIdentity();


    ccSetProjectionMatrixDirty();
}

void CCGridBase::beforeDraw(void)
{
    // save projection
    CCDirector *director = CCDirector::sharedDirector();
    m_directorProjection = director->getProjection();

    // 2d projection
    //    [director setProjection:kCCDirectorProjection2D];
    set2DProjection();
    m_pGrabber->beforeRender(m_pTexture);
}

void CCGridBase::afterDraw(cocos2d::CCNode *pTarget)
{
    m_pGrabber->afterRender(m_pTexture);

    // restore projection
    CCDirector *director = CCDirector::sharedDirector();
    director->setProjection(m_directorProjection);

    if (pTarget->getCamera()->isDirty())
    {
        CCPoint offset = pTarget->getAnchorPointInPoints();

        //
        // XXX: Camera should be applied in the AnchorPoint
        //
        kmGLTranslatef(offset.x, offset.y, 0);
        pTarget->getCamera()->locate();
        kmGLTranslatef(-offset.x, -offset.y, 0);
    }

    ccGLBindTexture2D(m_pTexture->getName());

    // restore projection for default FBO .fixed bug #543 #544
//TODO:         CCDirector::sharedDirector()->setProjection(CCDirector::sharedDirector()->getProjection());
//TODO:         CCDirector::sharedDirector()->applyOrientation();
    blit();
}

void CCGridBase::blit(void)
{
    CCAssert(0, "");
}

void CCGridBase::reuse(void)
{
    CCAssert(0, "");
}

void CCGridBase::calculateVertexPoints(void)
{
    CCAssert(0, "");
}
#endif

