#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTurnOffTiles* CCTurnOffTiles::create(float duration, const CCSize& gridSize)
{
    CCTurnOffTiles* pAction = new CCTurnOffTiles();
    if (pAction->initWithDuration(duration, gridSize, 0))
    {
        pAction->autorelease();
    }
    else
    {
        CC_SAFE_RELEASE_NULL(pAction);
    }
    return pAction;
}

CCTurnOffTiles* CCTurnOffTiles::create(float duration, const CCSize& gridSize, unsigned int seed)
{
    CCTurnOffTiles *pAction = new CCTurnOffTiles();

    if (pAction)
    {
        if (pAction->initWithDuration(duration, gridSize, seed))
        {
            pAction->autorelease();
        }
        else
        {
            CC_SAFE_RELEASE_NULL(pAction);
        }
    }

    return pAction;
}

bool CCTurnOffTiles::initWithDuration(float duration, const CCSize& gridSize, unsigned int seed)
{
    if (CCTiledGrid3DAction::initWithDuration(duration, gridSize))
    {
        m_nSeed = seed;
        m_pTilesOrder = NULL;

        return true;
    }

    return false;
}

CCObject* CCTurnOffTiles::copyWithZone(CCZone *pZone)
{
    CCZone* pNewZone = NULL;
    CCTurnOffTiles* pCopy = NULL;
    if(pZone && pZone->m_pCopyObject) 
    {
        pCopy = (CCTurnOffTiles*)(pZone->m_pCopyObject);
    }
    else
    {
        pCopy = new CCTurnOffTiles();
        pZone = pNewZone = new CCZone(pCopy);
    }

    CCTiledGrid3DAction::copyWithZone(pZone);

    pCopy->initWithDuration(m_fDuration, m_sGridSize, m_nSeed );

    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}

CCTurnOffTiles::~CCTurnOffTiles(void)
{
    CC_SAFE_DELETE_ARRAY(m_pTilesOrder);
}

void CCTurnOffTiles::shuffle(unsigned int *pArray, unsigned int nLen)
{
    int i;
    for (i = nLen - 1; i >= 0; i--)
    {
        unsigned int j = rand() % (i+1);
        unsigned int v = pArray[i];
        pArray[i] = pArray[j];
        pArray[j] = v;
    }
}

void CCTurnOffTiles::turnOnTile(const CCPoint& pos)
{
    setTile(pos, originalTile(pos));
}

void CCTurnOffTiles::turnOffTile(const CCPoint& pos)
{
    ccQuad3 coords;

    memset(&coords, 0, sizeof(ccQuad3));
    setTile(pos, coords);
}

void CCTurnOffTiles::startWithTarget(CCNode *pTarget)
{
    unsigned int i;

    CCTiledGrid3DAction::startWithTarget(pTarget);

    if (m_nSeed != (unsigned int)-1)
    {
        srand(m_nSeed);
    }

    m_nTilesCount = m_sGridSize.width * m_sGridSize.height;
    m_pTilesOrder = new unsigned int[m_nTilesCount];

    for (i = 0; i < m_nTilesCount; ++i)
    {
        m_pTilesOrder[i] = i;
    }

    shuffle(m_pTilesOrder, m_nTilesCount);
}

void CCTurnOffTiles::update(float time)
{
    unsigned int i, l, t;

    l = (unsigned int)(time * (float)m_nTilesCount);

    for( i = 0; i < m_nTilesCount; i++ )
    {
        t = m_pTilesOrder[i];
        CCPoint tilePos = ccp( (unsigned int)(t / m_sGridSize.height), t % (unsigned int)m_sGridSize.height );

        if ( i < l )
        {
            turnOffTile(tilePos);
        }
        else
        {
            turnOnTile(tilePos);
        }
    }
}
#endif

