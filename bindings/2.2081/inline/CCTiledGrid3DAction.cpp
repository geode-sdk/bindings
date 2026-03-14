#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCGridBase* CCTiledGrid3DAction::getGrid(void)
{
    return CCTiledGrid3D::create(m_sGridSize);
}

ccQuad3 CCTiledGrid3DAction::tile(const CCPoint& pos)
{
    CCTiledGrid3D *g = (CCTiledGrid3D*)m_pTarget->getGrid();
    return g->tile(pos);
}

ccQuad3 CCTiledGrid3DAction::originalTile(const CCPoint& pos)
{
    CCTiledGrid3D *g = (CCTiledGrid3D*)m_pTarget->getGrid();
    return g->originalTile(pos);
}

void CCTiledGrid3DAction::setTile(const CCPoint& pos, const ccQuad3& coords)
{
    CCTiledGrid3D *g = (CCTiledGrid3D*)m_pTarget->getGrid();
    return g->setTile(pos, coords);
}

CCTiledGrid3DAction* CCTiledGrid3DAction::create(float duration, const CCSize& gridSize)
{
    CCTiledGrid3DAction* pRet = new CCTiledGrid3DAction();
    if (pRet && pRet->initWithDuration(duration, gridSize))
    {
        pRet->autorelease();
    }
    else
    {
        CC_SAFE_DELETE(pRet);
    }
    return pRet;
}
#endif

