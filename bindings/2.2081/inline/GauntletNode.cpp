#include <Geode/Geode.hpp>

GauntletNode::GauntletNode() {
    m_gauntletInfoNode = nullptr;
    m_rewardNode = nullptr;
    m_gauntlet = nullptr;
    m_locked = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
GauntletNode* GauntletNode::create(GJMapPack* gauntlet) {
    auto ret = new GauntletNode();
    if (ret->init(gauntlet)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

