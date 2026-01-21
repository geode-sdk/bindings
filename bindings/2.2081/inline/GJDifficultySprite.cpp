#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
bool GJDifficultySprite::init(int difficulty, GJDifficultyName name) {
    return cocos2d::CCSprite::initWithSpriteFrameName(GJDifficultySprite::getDifficultyFrame(difficulty, name).c_str());
}

void GJDifficultySprite::updateFeatureStateFromLevel(GJGameLevel* level) {
    if (!level) return;

    GJFeatureState featureState;

    if (level->m_isEpic >= 3) {
        featureState = GJFeatureState::Mythic;
    } else if (level->m_isEpic == 2) {
        featureState = GJFeatureState::Legendary;
    } else if (level->m_isEpic == 1) {
        featureState = GJFeatureState::Epic;
    } else if (level->m_featured >= 1) {
        featureState = GJFeatureState::Featured;
    } else {
        featureState = GJFeatureState::None;
    }

    this->updateFeatureState(featureState);
}
#endif

#if defined(GEODE_IS_IOS)
#endif

