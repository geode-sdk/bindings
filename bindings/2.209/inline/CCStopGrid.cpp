#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

void CCStopGrid::startWithTarget(CCNode *pTarget)
{
    CCActionInstant::startWithTarget(pTarget);

    CCGridBase *pGrid = m_pTarget->getGrid();
    if (pGrid && pGrid->isActive())
    {
        pGrid->setActive(false);
    }
}

CCStopGrid* CCStopGrid::create(void)
{
    CCStopGrid* pAction = new CCStopGrid();
    pAction->autorelease();

    return pAction;
}
#endif

