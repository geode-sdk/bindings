#include <Geode/Geode.hpp>

InheritanceNode::InheritanceNode() {
    m_colorID = 0;
    m_inheritanceNode = nullptr;
    m_colorAction = nullptr;
    m_unk050 = false;
    m_unk051 = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool InheritanceNode::init(int colorID, InheritanceNode* node) {
    m_colorID = colorID;
    m_inheritanceNode = node;
    return true;
}
#endif

#if defined(GEODE_IS_WINDOWS)
InheritanceNode* InheritanceNode::create(int colorID, InheritanceNode* node) {
    auto ret = new InheritanceNode();
    if (ret->init(colorID, node)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

