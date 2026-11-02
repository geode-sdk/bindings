#include <Geode/mapping/CCArray.hpp>
#include <Geode/binding/OptionsScrollLayer.hpp>
#include <Geode/utils/cocos.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
/*cocos2d::CCArray* OptionsScrollLayer::getRelevantObjects(cocos2d::CCArray* objects) {
    auto relevantObjects = cocos2d::CCArray::create();
    for (auto object : geode::cocos::CCArrayExt<OptionsObject, false>(objects)) {
        if (object->m_count > m_minCount || object->m_enabled) {
            relevantObjects->addObject(object);
        }
    }
    return relevantObjects;
}*/

#endif

#if defined(GEODE_IS_IOS)
#endif

