#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCGridAction* CCGridAction::create(float duration, const CCSize& gridSize)
{
    CCGridAction *pAction = new CCGridAction();
    if (pAction)
    {
        if (pAction->initWithDuration(duration, gridSize))
        {
            pAction->autorelease();
        }
        else
        {
            CC_SAFE_DELETE(pAction);
        }
    }

    return pAction;
}

bool CCGridAction::initWithDuration(float duration, const CCSize& gridSize)
{
    if (CCActionInterval::initWithDuration(duration))
    {
        m_sGridSize = gridSize;

        return true;
    }

    return false;
}

void CCGridAction::startWithTarget(CCNode *pTarget)
{
    CCActionInterval::startWithTarget(pTarget);

    CCGridBase *newgrid = this->getGrid();

    CCNode *t = m_pTarget;
    CCGridBase *targetGrid = t->getGrid();

    if (targetGrid && targetGrid->getReuseGrid() > 0)
    {
        if (targetGrid->isActive() && targetGrid->getGridSize().width == m_sGridSize.width
            && targetGrid->getGridSize().height == m_sGridSize.height /*&& dynamic_cast<CCGridBase*>(targetGrid) != NULL*/)
        {
            targetGrid->reuse();
        }
        else
        {
            CCAssert(0, "");
        }
    }
    else
    {
        if (targetGrid && targetGrid->isActive())
        {
            targetGrid->setActive(false);
        }

        t->setGrid(newgrid);
        t->getGrid()->setActive(true);
    }
}

CCGridBase* CCGridAction::getGrid(void)
{
    // Abstract class needs implementation
    CCAssert(0, "");

    return NULL;
}

CCActionInterval* CCGridAction::reverse(void)
{
    return CCReverseTime::create(this);
}

CCObject* CCGridAction::copyWithZone(CCZone *pZone)
{
    CCZone* pNewZone = NULL;
    CCGridAction* pCopy = NULL;
    if(pZone && pZone->m_pCopyObject) 
    {
        //in case of being called at sub class
        pCopy = (CCGridAction*)(pZone->m_pCopyObject);
    }
    else
    {
        pCopy = new CCGridAction();
        pZone = pNewZone = new CCZone(pCopy);
    }

    CCActionInterval::copyWithZone(pZone);

    pCopy->initWithDuration(m_fDuration, m_sGridSize);
    
    CC_SAFE_DELETE(pNewZone);
    return pCopy;
}
#endif

