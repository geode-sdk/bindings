#include <Geode/Bindings.hpp>

CCMoveCNode::CCMoveCNode() {
    m_unk038 = 0.0;
    m_unk040 = 0.0;
    m_unk048 = 0.0;
    m_unk058 = 0.0;
    m_unk060 = 0.0;
    m_unk068 = 0.0;
    m_unk070 = false;
    m_unk071 = false;
    m_unk074 = 0;
    m_unk078 = false;
    m_unk07c = 0;
    m_unk080 = 1.0;
    m_unk088 = 1.0;
    m_unk090 = 0.0;
    m_unk098 = 0.0;
    m_unk0a0 = 0.0;
    m_unk0a8 = 0.0;
    m_unk0b0 = 0.0;
    m_unk0b8 = 0;
    m_unk0c0 = 0.0;
    m_groupObject = nullptr;
    m_unk0d0 = false;
    m_unk0d1 = false;
}

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
bool CCMoveCNode::init() { return true; }

void CCMoveCNode::reset() {
    m_unk038 = 0.0;
    m_unk040 = 0.0;
    m_unk048 = 0.0;
    m_unk058 = 0.0;
    m_unk060 = 0.0;
    m_unk068 = 0.0;
    m_unk070 = false;
    m_unk071 = false;
    m_unk074 = 0;
    m_unk078 = false;
    m_unk07c = 0;
    m_unk080 = 1.0;
    m_unk088 = 1.0;
    m_unk090 = 0.0;
    m_unk098 = 0.0;
    m_unk0a0 = 0.0;
    m_unk0a8 = 0.0;
    m_unk0b0 = 0.0;
    m_unk0b8 = 0;
    m_unk0c0 = 0.0;
    m_unk0d0 = false;
    m_groupObjects.clear();
    this->setTag(0);
    this->setObjType((cocos2d::CCObjectType)0);
}
#endif

#if defined(GEODE_IS_WINDOWS)
CCMoveCNode* CCMoveCNode::create() {
    auto ret = new CCMoveCNode();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}
#endif

#if defined(GEODE_IS_IOS)
#endif

