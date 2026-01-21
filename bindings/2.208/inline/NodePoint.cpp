#include <Geode/Geode.hpp>

NodePoint::NodePoint() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
NodePoint* NodePoint::create(cocos2d::CCPoint point) {
    auto ret = new NodePoint();
    if (ret->init(point)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

bool NodePoint::init(cocos2d::CCPoint point) {
    m_point = point;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

