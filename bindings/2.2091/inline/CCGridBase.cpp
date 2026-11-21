#include <Geode/mapping/CCGridBase.hpp>
#include <Geode/mapping/CCShaderCache.hpp>
#include <Geode/cocos/kazmath/include/kazmath/kazmath.h>
#include <Geode/cocos/kazmath/include/kazmath/GL/matrix.h>
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

unsigned long ccNextPOT(unsigned long x)
{
    x = x - 1;
    x = x | (x >> 1);
    x = x | (x >> 2);
    x = x | (x >> 4);
    x = x | (x >> 8);
    x = x | (x >>16);
    return x + 1;
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

