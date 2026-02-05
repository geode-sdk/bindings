#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
GJUINode* UIOptionsLayer::getNode(int type) {
    switch (type) {
        case 0: return m_uiNode1;
        case 1: return m_uiNode2;
        case 2: return m_uiNode3;
        case 3: return m_uiNode4;
        default: return nullptr;
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
#endif

