#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCTransitionSceneOriented::CCTransitionSceneOriented()
{
}

CCTransitionSceneOriented::~CCTransitionSceneOriented()
{
}

CCTransitionSceneOriented * CCTransitionSceneOriented::create(float t, CCScene *scene, tOrientation orientation)
{
    CCTransitionSceneOriented * pScene = new CCTransitionSceneOriented();
    pScene->initWithDuration(t,scene,orientation);
    pScene->autorelease();
    return pScene;
}

bool CCTransitionSceneOriented::initWithDuration(float t, CCScene *scene, tOrientation orientation)
{
    if ( CCTransitionScene::initWithDuration(t, scene) )
    {
        m_eOrientation = orientation;
    }
    return true;
}
#endif

