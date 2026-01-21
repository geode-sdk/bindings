#include <Geode/Geode.hpp>

SetItemIDLayer::SetItemIDLayer() {}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
SetItemIDLayer* SetItemIDLayer::create(EffectGameObject* object, cocos2d::CCArray* objects) {
    auto ret = new SetItemIDLayer();
    if (ret->init(object, objects)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void SetItemIDLayer::updateEditorLabel() {
    auto objects = this->getObjects();
    for (int i = 0; i < objects->count(); i++) {
        static_cast<LabelGameObject*>(objects->objectAtIndex(i))->updatePreviewLabel();
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

