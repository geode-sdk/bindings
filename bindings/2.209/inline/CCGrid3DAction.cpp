#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCGridBase* CCGrid3DAction::getGrid(void)
{
    return CCGrid3D::create(m_sGridSize);
}

ccVertex3F CCGrid3DAction::vertex(const CCPoint& position)
{
    CCGrid3D *g = (CCGrid3D*)m_pTarget->getGrid();
    return g->vertex(position);
}

ccVertex3F CCGrid3DAction::originalVertex(const CCPoint& position)
{
    CCGrid3D *g = (CCGrid3D*)m_pTarget->getGrid();
    return g->originalVertex(position);
}

void CCGrid3DAction::setVertex(const CCPoint& position, const ccVertex3F& vertex)
{
    CCGrid3D *g = (CCGrid3D*)m_pTarget->getGrid();
    g->setVertex(position, vertex);
}
#endif

