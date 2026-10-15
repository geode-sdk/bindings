#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionSplitRows::CCTransitionSplitRows()
{
}

CCTransitionSplitRows::~CCTransitionSplitRows()
{
}

CCActionInterval* CCTransitionSplitRows::action()
{
    return CCSplitRows::create(m_fDuration/2.0f, 3);
}

CCTransitionSplitRows* CCTransitionSplitRows::create(float t, CCScene* scene)
{
    CCTransitionSplitRows* pScene = new CCTransitionSplitRows();
    if(pScene && pScene->initWithDuration(t, scene))
    {
        pScene->autorelease();
        return pScene;
    }
    CC_SAFE_DELETE(pScene);
    return NULL;
}
#endif

