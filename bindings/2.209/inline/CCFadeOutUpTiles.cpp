#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCFadeOutUpTiles* CCFadeOutUpTiles::create(float duration, const CCSize& gridSize)
{
    CCFadeOutUpTiles *pAction = new CCFadeOutUpTiles();

    if (pAction)
    {
        if (pAction->initWithDuration(duration, gridSize))
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

float CCFadeOutUpTiles::testFunc(const CCSize& pos, float time)
{
    CCPoint n = ccpMult(ccp((float)m_sGridSize.width, (float)m_sGridSize.height), time);
    if (n.y == 0.0f)
    {
        return 1.0f;
    }

    return powf(pos.height / n.y, 6);
}

void CCFadeOutUpTiles::transformTile(const CCPoint& pos, float distance)
{
    ccQuad3 coords = originalTile(pos);
    CCPoint step = m_pTarget->getGrid()->getStep();

    coords.bl.y += (step.y / 2) * (1.0f - distance);
    coords.br.y += (step.y / 2) * (1.0f - distance);
    coords.tl.y -= (step.y / 2) * (1.0f - distance);
    coords.tr.y -= (step.y / 2) * (1.0f - distance);

    setTile(pos, coords);
}
#endif

