#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCSplitCols* CCSplitCols::create(float duration, unsigned int nCols)
{
    CCSplitCols *pAction = new CCSplitCols();

    if (pAction)
    {
        if (pAction->initWithDuration(duration, nCols))
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

bool CCSplitCols::initWithDuration(float duration, unsigned int nCols)
{
    m_nCols = nCols;
    return CCTiledGrid3DAction::initWithDuration(duration, CCSizeMake(nCols, 1));
}

CCObject* CCSplitCols::copyWithZone(CCZone *pZone)
{
    CCZone* pNewZone = NULL;
    CCSplitCols* pCopy = NULL;
    if(pZone && pZone->m_pCopyObject) 
    {
        pCopy = (CCSplitCols*)(pZone->m_pCopyObject);
    }
    else
    {
        pCopy = new CCSplitCols();
        pZone = pNewZone = new CCZone(pCopy);
    }

    CCTiledGrid3DAction::copyWithZone(pZone);
    pCopy->initWithDuration(m_fDuration, m_nCols);

    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}

void CCSplitCols::startWithTarget(CCNode *pTarget)
{
    CCTiledGrid3DAction::startWithTarget(pTarget);
    m_winSize = CCDirector::sharedDirector()->getWinSizeInPixels();
}

void CCSplitCols::update(float time)
{
    unsigned int i;

    for (i = 0; i < m_sGridSize.width; ++i)
    {
        ccQuad3 coords = originalTile(ccp(i, 0));
        float    direction = 1;

        if ( (i % 2 ) == 0 )
        {
            direction = -1;
        }

        coords.bl.y += direction * m_winSize.height * time;
        coords.br.y += direction * m_winSize.height * time;
        coords.tl.y += direction * m_winSize.height * time;
        coords.tr.y += direction * m_winSize.height * time;

        setTile(ccp(i, 0), coords);
    }
}
#endif

