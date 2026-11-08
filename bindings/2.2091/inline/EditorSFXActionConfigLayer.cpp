#include <Geode/binding/EditorSFXActionConfigLayer.hpp>
#include <Geode/binding/EditorSoundsLayer.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
EditorSFXActionConfigLayer* EditorSFXActionConfigLayer::create(int action, EditorSoundsLayer* layer) {
    auto ret = new EditorSFXActionConfigLayer();
    if (ret->init(action, layer))
    {
        ret->autorelease();
        return ret;
    }

    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif
