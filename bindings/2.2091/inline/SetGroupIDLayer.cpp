#include <Geode/Bindings.hpp>

#if !defined(GEODE_IS_IOS)
SetGroupIDLayer::SetGroupIDLayer() {
    m_targetObject = nullptr;
    m_targetObjects = nullptr;
    m_editorLayerInput = nullptr;
    m_editorLayer2Input = nullptr;
    m_zOrderInput = nullptr;
    m_groupIDInput = nullptr;
    m_orderInput = nullptr;
    m_channelInput = nullptr;
    m_showChannelOrder = false;
    m_channelValue = 0;
    m_channelUpdated = false;
    m_groupIDValue = 0;
    m_editorLayerValue = 0;
    m_editorLayer2Value = 0;
    m_zOrderValue = -1000;
    m_zLayerValue = ZLayer::Default;
    m_orderValue = 0;
    m_channelOrderEdited = false;
    m_editorLayerEdited = false;
    m_removeGroupsLock = false;
    m_addedGroup = false;
    m_reverseChanged = false;
    m_unk2ff = false;
    m_unk300 = false;
    m_nextFreeID = 0;
    m_parentGroups = nullptr;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void SetGroupIDLayer::onSmoothEase(cocos2d::CCObject* sender) {
    if (auto teleportObject = static_cast<TeleportPortalObject*>(m_targetObject)) {
        teleportObject->m_teleportEase = !teleportObject->m_teleportEase;
    }
}
#endif

#if defined(GEODE_IS_WINDOWS)
SetGroupIDLayer::~SetGroupIDLayer() {
    CC_SAFE_RELEASE(m_targetObjects);
    CC_SAFE_RELEASE(m_zLayerButtons);
    CC_SAFE_RELEASE(m_groupIDObjects);
    CC_SAFE_RELEASE(m_parentGroups);
}

SetGroupIDLayer* SetGroupIDLayer::create(GameObject* object, cocos2d::CCArray* objects) {
    auto ret = new SetGroupIDLayer();
    if (ret->init(object, objects)) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void SetGroupIDLayer::addGroupID(int id) {
    m_addedGroup = true;
    if (m_targetObject) {
        if (m_targetObject->addToGroup(id) == 1) {
            GameManager::sharedState()->m_levelEditorLayer->addToGroup(m_targetObject, id, false);
        }
    }
    else {
        for (int i = 0; i < m_targetObjects->count(); i++) {
            auto obj = static_cast<GameObject*>(m_targetObjects->objectAtIndex(i));
            if (obj->addToGroup(id) == 1) {
                GameManager::sharedState()->m_levelEditorLayer->addToGroup(obj, id, false);
            }
        }
    }
}

void SetGroupIDLayer::removeGroupID(int id) {
    m_addedGroup = true;
    if (m_targetObject) {
        m_targetObject->removeFromGroup(id);
        GameManager::sharedState()->m_levelEditorLayer->removeFromGroup(m_targetObject, id);
    }
    else {
        for (int i = 0; i < m_targetObjects->count(); i++) {
            auto obj = static_cast<GameObject*>(m_targetObjects->objectAtIndex(i));
            obj->removeFromGroup(id);
            GameManager::sharedState()->m_levelEditorLayer->removeFromGroup(obj, id);
        }
    }
    this->updateGroupIDButtons();
}
#endif

#if defined(GEODE_IS_IOS)
#endif

