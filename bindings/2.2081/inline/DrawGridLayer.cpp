#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void DrawGridLayer::addAudioLineObject(AudioLineGuideGameObject* object) {
    m_audioLineObjects[object->m_uniqueID] = object;
}

cocos2d::CCPoint DrawGridLayer::posForTime(float time) {
    return LevelTools::posForTime(time, m_speedObjects, (int)m_editorLayer->m_levelSettings->m_startSpeed, m_editorLayer->m_levelSettings->m_platformerMode, m_editorLayer->m_gameState.m_rotateChannel);
}

void DrawGridLayer::postUpdate() {
    m_oldPlaybackTime = m_playbackTime;
}

void DrawGridLayer::removeAudioLineObject(AudioLineGuideGameObject* object) {
    m_audioLineObjects.erase(object->m_uniqueID);
}

void DrawGridLayer::removeFromEffects(EffectGameObject* object) {
    m_effectGameObjects->removeObject(object);
    m_sortEffects = true;
}

void DrawGridLayer::sortSpeedObjects() {
    LevelTools::sortSpeedObjects(m_speedObjects, m_editorLayer);
}
#endif

#if defined(GEODE_IS_WINDOWS)
void DrawGridLayer::addToEffects(EffectGameObject* object) {
    if (!m_effectGameObjects->containsObject(object)) {
        m_effectGameObjects->addObject(object);
        m_sortEffects = true;
    }
}

void DrawGridLayer::addToGuides(GameObject* object) {
    if (!m_guideObjects->containsObject(object)) {
        m_guideObjects->addObject(object);
    }
}

void DrawGridLayer::addToSpeedObjects(EffectGameObject* object) {
    if (!m_speedObjects->containsObject(object)) {
        m_speedObjects->addObject(object);
        m_updateSpeedObjects = true;
        object->updateSpeedModType();
    }
}

cocos2d::CCPoint DrawGridLayer::getPortalMinMax(GameObject* object) {
    auto objectType = object->getType();
    float height;
    if (objectType == GameObjectType::BallPortal) height = 240.f;
    else if (objectType == GameObjectType::SpiderPortal) height = 270.f;
    else height = 300.f;
    auto minimum = std::max((int)((object->getPosition().y - height * .5f) / 30.f) * 30.f, 90.f);
    return { minimum, minimum + height };
}

bool DrawGridLayer::init(cocos2d::CCNode* parent, LevelEditorLayer* layer) {
    if (!cocos2d::CCLayer::init()) return false;
    m_objectLayer = parent;
    m_editorLayer = layer;
    m_timeMarkers = nullptr;
    m_effectGameObjects = cocos2d::CCArray::create();
    m_effectGameObjects->retain();
    m_guideObjects = cocos2d::CCArray::create();
    m_guideObjects->retain();
    m_speedObjects = cocos2d::CCArray::create();
    m_speedObjects->retain();
    m_slowSpeed = 251.16008f;
    m_normalSpeed = 311.5801f;
    m_fastSpeed = 387.42014f;
    m_fasterSpeed = 468.00015f;
    m_fastestSpeed = 576.0002f;
    m_currentSpeed = 311.5801f;
    m_pointArray1 = new std::array<cocos2d::CCPoint, 400>();
    m_pointArray2 = new std::array<cocos2d::CCPoint, 400>();
    m_pointArray3 = new std::array<cocos2d::CCPoint, 400>();
    return true;
}

void DrawGridLayer::removeFromGuides(GameObject* object) {
    m_guideObjects->removeObject(object);
}

void DrawGridLayer::removeFromSpeedObjects(EffectGameObject* object) {
    if (m_speedObjects->containsObject(object)) {
        m_speedObjects->removeObject(object);
        m_updateSpeedObjects = true;
    }
}

float DrawGridLayer::timeForPos(cocos2d::CCPoint position, int order, int channel, bool songTriggers, bool ignoreWarp, bool ignoreRotate, int id) {
    return LevelTools::timeForPos(position, m_speedObjects, (int)m_editorLayer->m_levelSettings->m_startSpeed, order, channel, songTriggers, m_editorLayer->m_levelSettings->m_platformerMode, ignoreWarp, ignoreRotate, id);
}

void DrawGridLayer::updateMusicGuideTime(float time) {
    m_musicTime = time;
    m_playbackTime = time;
    m_oldPlaybackTime = time;
}

void DrawGridLayer::updateTimeMarkers() {
    m_updateTimeMarkers = true;
    m_updateSpeedObjects = false;
    this->sortSpeedObjects();
    this->loadTimeMarkers(m_timeMarkerString);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

