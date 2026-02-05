#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void ConfigureHSVWidget::onClose() {
    cocos2d::CCDictElement* element;
    cocos2d::CCDictElement* temp;
    HASH_ITER(hh, m_inputs->m_pElements, element, temp) {
        static_cast<CCTextInputNode*>(element->getObject())->onClickTrackNode(false);
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
void ConfigureHSVWidget::textInputOpened(CCTextInputNode* node) {}
#endif

#if defined(GEODE_IS_IOS)
#endif

