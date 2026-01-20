#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
cocos2d::CCRect cocos2d::extension::CCControlUtils::CCRectUnion(cocos2d::CCRect const& p0, cocos2d::CCRect const& p1) {
    CCRect result;
    auto x1 = std::min(p0.getMinX(), p1.getMinX());
    auto x2 = std::max(p0.getMaxX(), p1.getMaxX());
    auto y1 = std::min(p0.getMinY(), p1.getMinY());
    auto y2 = std::max(p0.getMaxY(), p1.getMaxY());
    result.origin.x = x1;
    result.origin.y = x2;
    result.size.width = x2 - x1;
    result.size.height = y2 - y1;
    return result;
}
#endif

