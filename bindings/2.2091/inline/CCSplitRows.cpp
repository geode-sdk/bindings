#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCSplitRows* CCSplitRows::create(float duration, unsigned int nRows)
{
    CCSplitRows *pAction = new CCSplitRows();

    if (pAction)
    {
        if (pAction->initWithDuration(duration, nRows))
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

bool CCSplitRows::initWithDuration(float duration, unsigned int nRows)
{
    m_nRows = nRows;

    return CCTiledGrid3DAction::initWithDuration(duration, CCSizeMake(1, nRows));
}

CCObject* CCSplitRows::copyWithZone(CCZone *pZone)
{
    CCZone* pNewZone = NULL;
    CCSplitRows* pCopy = NULL;
    if(pZone && pZone->m_pCopyObject) 
    {
        pCopy = (CCSplitRows*)(pZone->m_pCopyObject);
    }
    else
    {
        pCopy = new CCSplitRows();
        pZone = pNewZone = new CCZone(pCopy);
    }

    CCTiledGrid3DAction::copyWithZone(pZone);

    pCopy->initWithDuration(m_fDuration, m_nRows);

    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}

void CCSplitRows::startWithTarget(CCNode *pTarget)
{
    CCTiledGrid3DAction::startWithTarget(pTarget);
    m_winSize = CCDirector::sharedDirector()->getWinSizeInPixels();
}

void CCSplitRows::update(float time)
{
    unsigned int j;

    for (j = 0; j < m_sGridSize.height; ++j)
    {
        ccQuad3 coords = originalTile(ccp(0, j));
        float    direction = 1;

        if ( (j % 2 ) == 0 )
        {
            direction = -1;
        }

        coords.bl.x += direction * m_winSize.width * time;
        coords.br.x += direction * m_winSize.width * time;
        coords.tl.x += direction * m_winSize.width * time;
        coords.tr.x += direction * m_winSize.width * time;

        setTile(ccp(0, j), coords);
    }
}
#endif

