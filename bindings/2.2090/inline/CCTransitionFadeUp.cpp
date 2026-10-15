#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionFadeUp::CCTransitionFadeUp()
{
}

CCTransitionFadeUp::~CCTransitionFadeUp()
{
}

CCTransitionFadeUp* CCTransitionFadeUp::create(float t, CCScene* scene)
{
    CCTransitionFadeUp* pScene = new CCTransitionFadeUp();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}

CCActionInterval* CCTransitionFadeUp::actionWithSize(const CCSize& size)
{
    return CCFadeOutUpTiles::create(m_fDuration, size);
}
#endif

