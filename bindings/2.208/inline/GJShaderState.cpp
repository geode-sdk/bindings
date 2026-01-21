#include <Geode/Geode.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
GJShaderState::GJShaderState() {
    m_time = 0.0;
    m_prevTime = -1.0;
    m_textureScaleX = 1.f;
    m_textureScaleY = 1.f;
    m_blurRefChannel = 0;
    m_shockWaveStartTime = 0.f;
    m_shockWaveSpeed = 0.f;
    m_shockLineStartTime = 0.0;
    m_shockLineTargetID = 0;
    m_shockLineTarget = false;
    m_glitchStrength = 0.f;
    m_chromaticTargetX = 0.f;
    m_chromaticTargetY = 0.f;
    m_cGRGBOffset = 0.f;
    m_cGStrength = 0.f;
    m_cGSegmentHeight = 1.f;
    m_cGLineThickness = 0.f;
    m_cGLineStrength = 0.f;
    m_cGEnable = false;
    m_cGActive = false;
    m_pixelateTargetX = 1.f;
    m_pixelateTargetY = 1.f;
    m_pixelateSnapGrid = false;
    m_pixelatePixelating = false;
    m_lensCircleSize = 1.f;
    m_lensCircleFade = 0.f;
    m_lensCircleStrength = 0.f;
    m_lensCircleTargetID = 0;
    m_lensCircleTintChannel = 0;
    m_lensCircleRelative = false;
    m_lensCircleAdditive = false;
    m_radialBlurSize = 0.f;
    m_radialBlurFade = 0.f;
    m_motionBlurTargetX = 0.f;
    m_motionBlurTargetY = 0.f;
    m_motionBlurSpeedX = 0.f;
    m_motionBlurSpeedY = 0.f;
    m_motionBlurFollowEaseX = 1.f;
    m_motionBlurFollowEaseY = 1.f;
    m_motionBlurTargetIDX = 0;
    m_motionBlurTargetIDY = 0;
    m_motionBlurDual = false;
    m_bulgeValue = 0.f;
    m_bulgeRelative = false;
    m_bulgeTargetID = 0;
    m_bulgeRadius = 0.f;
    m_pinchTargetX = 0.f;
    m_pinchTargetY = 0.f;
    m_pinchTargetEnabledX = false;
    m_pinchTargetEnabledY = false;
    m_pinchTargetIDX = 0;
    m_pinchTargetIDY = 0;
    m_pinchRadius = 0.f;
    m_grayscaleValue = 0.f;
    m_grayscaleTintChannel = 0;
    m_sepiaValue = 0.f;
    m_invertColorEditRGB = 0.f;
    m_invertColorR = 1.f;
    m_invertColorG = 1.f;
    m_invertColorB = 1.f;
    m_invertColorClampRGB = false;
    m_hueShiftDegrees = 0.f;
    m_colorChangeCR = 1.f;
    m_colorChangeCG = 1.f;
    m_colorChangeCB = 1.f;
    m_colorChangeBR = 0.f;
    m_colorChangeBG = 0.f;
    m_colorChangeBB = 0.f;
    m_splitTargetRows = 0.f;
    m_splitTargetCols = 0.f;
    m_splitActive = false;
    m_minBlendingLayer = 0;
    m_maxBlendingLayer = 0;
    m_zLayerDirty = false;
    m_noPlayerParticles = false;
    m_usesShaders = false;
}

void GJShaderState::stopTweenAction(int action) {
    m_tweenActions.erase(action);
}
#endif

#if defined(GEODE_IS_WINDOWS)
void GJShaderState::reset() {
    m_cGSegmentHeight = 1.f;
    m_shockWaveStartTime = 0.f;
    m_shockLineStartTime = 0.0;
    m_glitchStrength = 0.f;
    m_chromaticTargetX = 0.f;
    m_chromaticTargetY = 0.f;
    m_blurIntensity = 0.f;
    m_cGEnable = false;
    m_cGSpeed = 0.f;
    m_cGRGBOffset = 0.f;
    m_cGStrength = 0.f;
    m_cGLineThickness = 0.f;
    m_cGLineStrength = 0.f;
    m_pixelateTargetX = 0.f;
    m_pixelateTargetY = 0.f;
    m_pixelateSnapGrid = false;
    m_lensCircleStrength = 0.f;
    m_lensCircleTargetID = 0;
    m_lensCircleTintChannel = 0;
    m_radialBlurSize = 0.f;
    m_motionBlurTargetX = 0.f;
    m_motionBlurTargetY = 0.f;
    m_motionBlurTargetIDX = 0;
    m_motionBlurTargetIDY = 0;
    m_motionBlurSpeedX = 0.f;
    m_motionBlurSpeedY = 0.f;
    m_textureScaleX = 1.f;
    m_textureScaleY = 1.f;
    m_lensCircleSize = 1.f;
    m_lensCircleFade = 0.f;
    m_radialBlurCenter.x = 0.f;
    m_radialBlurCenter.y = 0.f;
    m_bulgeValue = 0.f;
    m_pinchTargetX = 0.f;
    m_pinchTargetY = 0.f;
    m_pinchTargetIDX = 0;
    m_pinchTargetIDY = 0;
    m_pinchTargetEnabledX = false;
    m_pinchTargetEnabledY = false;
    m_pinchScreenOffset.x = 0.f;
    m_pinchScreenOffset.y = 0.f;
    m_grayscaleValue = 0.f;
    m_prevTime = -1.f;
    m_sepiaValue = 0.f;
    m_invertColorEditRGB = 0.f;
    m_hueShiftDegrees = 0.f;
    m_invertColorR = 1.f;
    m_invertColorG = 1.f;
    m_invertColorB = 1.f;
    m_colorChangeCR = 1.f;
    m_colorChangeCG = 1.f;
    m_colorChangeCB = 1.f;
    m_colorChangeBR = 0.f;
    m_colorChangeBG = 0.f;
    m_colorChangeBB = 0.f;
    m_invertColorClampRGB = false;
    m_splitTargetRows = 0.f;
    m_splitTargetCols = 0.f;
    m_zLayerDirty = false;
    m_noPlayerParticles = false;
    m_minBlendingLayer = 0;
    m_maxBlendingLayer = 0;
}

void GJShaderState::timesyncShaderActions() {
    for (auto& pair : m_tweenTimes) {
        this->timesyncShaderAction(pair.first);
    }
}

void GJShaderState::tweenValue(float fromValue, float toValue, int action, float duration, int easingType, float easingRate) {
    this->stopTweenAction(action);
    if (duration <= 0.f) {
        this->updateTweenAction(toValue, action);
        return;
    }
    GJValueTween tween;
    tween.m_easingRate = easingRate;
    tween.m_duration = duration;
    tween.m_deltaTime = 0.f;
    tween.m_currentValue = 0.f;
    tween.m_finished = false;
    tween.m_disabled = false;
    tween.m_easingType = easingType;
    tween.m_uniqueID = -1;
    tween.m_controlID = -1;
    tween.m_fromValue = fromValue;
    tween.m_toValue = toValue;
    m_tweenActions.emplace(action, tween);
    m_tweenTimes[action] = m_time;
}

void GJShaderState::updateTweenActions(float tweenValue) {
    for (auto it = m_tweenActions.begin(); it != m_tweenActions.end();) {
        it->second.step(tweenValue);
        this->updateTweenAction(it->second.m_currentValue, it->first);
        if (it->second.m_finished) it = m_tweenActions.erase(it);
        else ++it;
    }
}
#endif

#if defined(GEODE_IS_IOS)
#endif

