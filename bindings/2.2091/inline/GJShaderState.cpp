#include <Geode/binding/GJShaderState.hpp>


#if defined(GEODE_IS_ANDROID)
GJShaderState::GJShaderState() {
    m_time = 0.0;
    m_prevTime = -1.0;
    m_startTime = 0.0;
    m_textureScaleX = 1.f;
    m_textureScaleY = 1.f;
    m_blurRefColor = { 0, 0, 0 };
    m_blurIntensity = 0.f;
    m_blurRefChannel = 0;
    m_blurOnlyEmpty = false;
    m_shockWaveStartTime = 0.f;
    m_shockWaveTime = 0.f;
    m_shockWaveTimeOffset = 0.f;
    m_shockWaveSpeed = 0.f;
    m_shockWaveThickness = 0.f;
    m_shockWaveStrength = 0.f;
    m_shockWaveWidth = 0.f;
    m_shockWaveFadeIn = 0.f;
    m_shockWaveFadeOut = 0.f;
    m_shockWaveInvert = false;
    m_shockWaveInner = 0.f;
    m_shockWaveOuter = 0.f;
    m_shockWaveTargetID = 0;
    m_shockWaveTarget = false;
    m_shockWaveCenterMoving = false;
    m_shockWaveRelative = false;
    m_shockWaveMaxSize = 0.f;
    m_shockWaveCenterDirty = false;
    m_shockLineStartTime = 0.0;
    m_shockLineTime = 0.f;
    m_shockLineTimeOffset = 0.f;
    m_shockLineSpeed = 0.f;
    m_shockLineAxis = false;
    m_shockLineDirection = false;
    m_shockLineDual = false;
    m_shockLineInvert = false;
    m_shockLineScreenOffset = 0.f;
    m_shockLineStrength = 0.f;
    m_shockLineWidth = 0.f;
    m_shockLineFadeIn = 0.f;
    m_shockLineFadeOut = 0.f;
    m_shockLineThickness = 0.f;
    m_shockLineTargetID = 0;
    m_shockLineTarget = false;
    m_shockLineCenterMoving = false;
    m_shockLineRelative = false;
    m_shockLineMaxSize = 0.f;
    m_shockLineCenterDirty = false;
    m_glitchStrength = 0.f;
    m_glitchSpeed = 0.f;
    m_glitchSliceHeight = 0.f;
    m_glitchMaxSliceXOff = 0.f;
    m_glitchMaxColXOff = 0.f;
    m_glitchMaxColYOff = 0.f;
    m_glitchRelative = false;
    m_chromaticTargetX = 0.f;
    m_chromaticTargetY = 0.f;
    m_chromaticRelative = false;
    m_cGStartTime = 0.f;
    m_cGTime = 0.f;
    m_cGSpeed = 0.f;
    m_cGRGBOffset = 0.f;
    m_cGStrength = 0.f;
    m_cGSegmentHeight = 1.f;
    m_cGLineThickness = 0.f;
    m_cGLineStrength = 0.f;
    m_cGEnable = false;
    m_cGActive = false;
    m_cGRelative = false;
    m_cGRelativePos = false;
    m_pixelateTargetX = 1.f;
    m_pixelateTargetY = 1.f;
    m_pixelateSnapGrid = false;
    m_pixelatePixelating = false;
    m_pixelateRelative = false;
    m_pixelateHardEdges = false;
    m_lensCircleSize = 1.f;
    m_lensCircleFade = 0.f;
    m_lensCircleStrength = 0.f;
    m_lensCircleTargetID = 0;
    m_lensCircleTintChannel = 0;
    m_lensCircleRelative = false;
    m_lensCircleAdditive = false;
    m_lensCircleTint = { 0, 0, 0 };
    m_radialBlurSize = 0.f;
    m_radialBlurFade = 0.f;
    m_radialBlurTarget = false;
    m_radialBlurTargetID = 0;
    m_motionBlurTargetX = 0.f;
    m_motionBlurTargetY = 0.f;
    m_motionBlurSpeedX = 0.f;
    m_motionBlurSpeedY = 0.f;
    m_motionBlurFollowEaseX = 1.f;
    m_motionBlurFollowEaseY = 1.f;
    m_motionBlurTargetIDX = 0;
    m_motionBlurTargetIDY = 0;
    m_motionBlurDual = false;
    m_motionBlurRelative = false;
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
    m_pinchRelative = false;
    m_pinchRadius = 0.f;
    m_grayscaleValue = 0.f;
    m_grayscaleUseLum = false;
    m_grayscaleTintChannel = 0;
    m_grayscaleTint = { 0, 0, 0 };
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
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void GJShaderState::stopTweenAction(int action) {
    m_tweenActions.erase(action);
}
#endif

#if defined(GEODE_IS_WINDOWS)
void GJShaderState::reset() {
    m_tweenActions.clear();
    m_tweenTimes.clear();
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

