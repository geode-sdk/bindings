#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCFadeOutTRTiles* CCFadeOutTRTiles::create(float duration, const CCSize& gridSize)
{
    CCFadeOutTRTiles *pAction = new CCFadeOutTRTiles();

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

float CCFadeOutTRTiles::testFunc(const CCSize& pos, float time)
{
    CCPoint n = ccpMult(ccp((float)m_sGridSize.width, (float)m_sGridSize.height), time);
    if ((n.x + n.y) == 0.0f)
    {
        return 1.0f;
    }

    return powf((pos.width + pos.height) / (n.x + n.y), 6);
}

void CCFadeOutTRTiles::turnOnTile(const CCPoint& pos)
{
    setTile(pos, originalTile(pos));
}

void CCFadeOutTRTiles::turnOffTile(const CCPoint& pos)
{
    ccQuad3 coords;
    memset(&coords, 0, sizeof(ccQuad3));
    setTile(pos, coords);
}

void CCFadeOutTRTiles::transformTile(const CCPoint& pos, float distance)
{
    ccQuad3 coords = originalTile(pos);
    CCPoint step = m_pTarget->getGrid()->getStep();

    coords.bl.x += (step.x / 2) * (1.0f - distance);
    coords.bl.y += (step.y / 2) * (1.0f - distance);

    coords.br.x -= (step.x / 2) * (1.0f - distance);
    coords.br.y += (step.y / 2) * (1.0f - distance);

    coords.tl.x += (step.x / 2) * (1.0f - distance);
    coords.tl.y -= (step.y / 2) * (1.0f - distance);

    coords.tr.x -= (step.x / 2) * (1.0f - distance);
    coords.tr.y -= (step.y / 2) * (1.0f - distance);

    setTile(pos, coords);
}

void CCFadeOutTRTiles::update(float time)
{
    int i, j;

    for (i = 0; i < m_sGridSize.width; ++i)
    {
        for (j = 0; j < m_sGridSize.height; ++j)
        {
            float distance = testFunc(CCSizeMake(i, j), time);
            if ( distance == 0 )
            {
                turnOffTile(ccp(i, j));
            } else 
            if (distance < 1)
            {
                transformTile(ccp(i, j), distance);
            }
            else
            {
                turnOnTile(ccp(i, j));
            }
        }
    }
}
#endif

