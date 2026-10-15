#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCFadeOutBLTiles* CCFadeOutBLTiles::create(float duration, const CCSize& gridSize)
{
    CCFadeOutBLTiles *pAction = new CCFadeOutBLTiles();

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

float CCFadeOutBLTiles::testFunc(const CCSize& pos, float time)
{
    CCPoint n = ccpMult(ccp((float)m_sGridSize.width, (float)m_sGridSize.height), (1.0f - time));
    if ((pos.width + pos.height) == 0)
    {
        return 1.0f;
    }

    return powf((n.x + n.y) / (pos.width + pos.height), 6);
}
#endif

