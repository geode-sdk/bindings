#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionFadeBL::CCTransitionFadeBL()
{
}
CCTransitionFadeBL::~CCTransitionFadeBL()
{
}

CCTransitionFadeBL* CCTransitionFadeBL::create(float t, CCScene* scene)
{
    CCTransitionFadeBL* pScene = new CCTransitionFadeBL();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}

CCActionInterval*  CCTransitionFadeBL::actionWithSize(const CCSize& size)
{
    return CCFadeOutBLTiles::create(m_fDuration, size);
}
#endif

