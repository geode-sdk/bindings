#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCFadeOutDownTiles* CCFadeOutDownTiles::create(float duration, const CCSize& gridSize)
{
    CCFadeOutDownTiles *pAction = new CCFadeOutDownTiles();

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

float CCFadeOutDownTiles::testFunc(const CCSize& pos, float time)
{
    CCPoint n = ccpMult(ccp((float)m_sGridSize.width, (float)m_sGridSize.height), (1.0f - time));
    if (pos.height == 0)
    {
        return 1.0f;
    }

    return powf(n.y / pos.height, 6);
}
#endif

