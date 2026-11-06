#include <Geode/binding/ShareCommentLayer.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
void ShareCommentLayer::textInputOpened(CCTextInputNode* node) {}

#endif

#if defined(GEODE_IS_IOS)
void ShareCommentLayer::updateDescText(std::string desc) {
    m_descText = desc;
    this->updateCharCountLabel();
}
#endif

