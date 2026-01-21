#include <Geode/Geode.hpp>

PointNode::PointNode() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool PointNode::init(cocos2d::CCPoint point) {
    m_point = point;

    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
PointNode* PointNode::create(cocos2d::CCPoint point) {
    auto ret = new PointNode();
    if (ret->init(point)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

