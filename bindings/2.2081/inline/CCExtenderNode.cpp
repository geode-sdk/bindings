#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void CCExtenderNode::setOpacity(unsigned int opacity) {
    auto children = this->getChildren();
    for (int i = 0; i < children->count(); i++) {
        static_cast<cocos2d::CCNodeRGBA*>(children->objectAtIndex(i))->setOpacity(opacity);
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

