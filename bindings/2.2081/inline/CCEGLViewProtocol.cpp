#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCRect const& cocos2d::CCEGLViewProtocol::getViewPortRect() const  {
    return m_obViewPortRect;
}
#endif

