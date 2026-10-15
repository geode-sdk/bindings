#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionFadeDown::CCTransitionFadeDown()
{
}
CCTransitionFadeDown::~CCTransitionFadeDown()
{
}

CCTransitionFadeDown* CCTransitionFadeDown::create(float t, CCScene* scene)
{
    CCTransitionFadeDown* pScene = new CCTransitionFadeDown();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}

CCActionInterval* CCTransitionFadeDown::actionWithSize(const CCSize& size)
{
    return CCFadeOutDownTiles::create(m_fDuration, size);
}
#endif

