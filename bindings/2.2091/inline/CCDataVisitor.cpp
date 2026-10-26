#include <Geode/mapping/CCDataVisitor.hpp>
#include <Geode/mapping/CCBool.hpp>
#include <Geode/mapping/CCInteger.hpp>
#include <Geode/mapping/CCFloat.hpp>
#include <Geode/mapping/CCDouble.hpp>
#include <Geode/mapping/CCString.hpp>
#include <Geode/mapping/CCArray.hpp>
#include <Geode/mapping/CCDictionary.hpp>
#include <Geode/mapping/CCSet.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
void cocos2d::CCDataVisitor::visit(cocos2d::CCBool const* p0) {
    return visitObject(p0);
}

void cocos2d::CCDataVisitor::visit(cocos2d::CCInteger const* p0) {
    return visitObject(p0);
}

void cocos2d::CCDataVisitor::visit(cocos2d::CCFloat const* p0) {
    return visitObject(p0);
}

void cocos2d::CCDataVisitor::visit(cocos2d::CCDouble const* p0) {
    return visitObject(p0);
}

void cocos2d::CCDataVisitor::visit(cocos2d::CCString const* p0) {
    return visitObject(p0);
}

void cocos2d::CCDataVisitor::visit(cocos2d::CCArray const* p0) {
    return visitObject(p0);
}

void cocos2d::CCDataVisitor::visit(cocos2d::CCDictionary const* p0) {
    return visitObject(p0);
}

void cocos2d::CCDataVisitor::visit(cocos2d::CCSet const* p0) {
    return visitObject(p0);
}
#endif

