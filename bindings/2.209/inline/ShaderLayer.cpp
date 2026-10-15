#include <Geode/Bindings.hpp>

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_ANDROID)
ShaderLayer::ShaderLayer() {
    m_timesyncShaderActions = false;
    m_shader = nullptr;
    m_renderTexture = nullptr;
    m_sprite = nullptr;
    m_antiAlias = false;
    m_configuredAntiAlias = false;
    m_gameLayer = nullptr;
    m_savedCameraRotation = 0.f;
    m_shockWaveTimeMult = 1.f;
    m_scaleFactor = 1.f;
}
#endif

#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
void ShaderLayer::setupInvertColorShader() {
    m_invertColorValueUniform = glGetUniformLocation(m_sprite->getShaderProgram()->getProgram(), "_invertColorValue");
}

void ShaderLayer::setupSepiaShader() {
    m_sepiaValueUniform = glGetUniformLocation(m_sprite->getShaderProgram()->getProgram(), "_sepiaValue");
}
#endif

#if defined(GEODE_IS_WINDOWS)
ShaderLayer::~ShaderLayer() {
    CC_SAFE_RELEASE(m_renderTexture);
}

ShaderLayer* ShaderLayer::create() {
    auto ret = new ShaderLayer();
    if (ret->init()) {
        ret->autorelease();
        return ret;
    }
    delete ret;
    return nullptr;
}

void ShaderLayer::preBulgeShader() {
    if (m_state.m_bulgeValue <= 0.f) {
        if (this->getActionByTag(21)) {
            m_state.m_usesShaders = true;
        }
        m_sprite->getShaderProgram()->setUniformLocationWith1f(m_bulgeValueUniform, 0.f);
    }
}

void ShaderLayer::preChromaticShader() {
    if (m_state.m_chromaticTargetX != 0.f || m_state.m_chromaticTargetY != 0.f || this->getActionByTag(1) || this->getActionByTag(2)) {
        m_state.m_usesShaders = true;
    }
    auto scale = m_state.m_chromaticRelative && m_gameLayer ? abs(m_gameLayer->m_objectLayer->getScale()) : 1.f;
    auto shaderProgram = m_sprite->getShaderProgram();
    shaderProgram->setUniformLocationWith1f(m_chromaticXOffUniform, (m_scaleFactor / 1.2018504f) * m_state.m_chromaticTargetX * m_state.m_textureScaleX * scale);
    shaderProgram->setUniformLocationWith1f(m_chromaticYOffUniform, (m_scaleFactor / 1.2018504f) * m_state.m_chromaticTargetY * m_state.m_textureScaleY * scale);
}

void ShaderLayer::preColorChangeShader() {
    auto shaderProgram = m_sprite->getShaderProgram();
    if (m_state.m_colorChangeCR != 1.f || m_state.m_colorChangeCG != 1.f || m_state.m_colorChangeCB != 1.f ||
        m_state.m_colorChangeBR != 0.f || m_state.m_colorChangeBG != 0.f || m_state.m_colorChangeBB != 0.f) {
        m_state.m_usesShaders = true;
        shaderProgram->setUniformLocationWith3f(m_colorChangeCUniform, std::max(m_state.m_colorChangeCR, .001f), m_state.m_colorChangeCG, m_state.m_colorChangeCB);
        shaderProgram->setUniformLocationWith3f(m_colorChangeBUniform, m_state.m_colorChangeBR, m_state.m_colorChangeBG, m_state.m_colorChangeBB);
    }
    else {
        shaderProgram->setUniformLocationWith3f(m_colorChangeCUniform, 0.f, 0.f, 0.f);
        if (this->getActionByTag(42) || this->getActionByTag(43) || this->getActionByTag(44) || this->getActionByTag(39) || this->getActionByTag(40) || this->getActionByTag(41)) {
            m_state.m_usesShaders = true;
        }
    }
}

void ShaderLayer::preCommonShader() {
    auto shaderProgram = m_sprite->getShaderProgram();
    shaderProgram->setUniformLocationWith3f(m_blurRefColorUniform, m_state.m_blurRefColor.r / 255.f, m_state.m_blurRefColor.g / 255.f, m_state.m_blurRefColor.b / 255.f);
    shaderProgram->setUniformLocationWith1f(m_blurUseRefUniform, m_state.m_minBlendingLayer > 1);
    shaderProgram->setUniformLocationWith1f(m_blurIntensityUniform, m_state.m_blurIntensity + 1.f);
    shaderProgram->setUniformLocationWith2f(m_textureScaleUniform, m_state.m_textureScaleX, m_state.m_textureScaleY);
    shaderProgram->setUniformLocationWith2f(m_textureScaleInvUniform, 1.f / m_state.m_textureScaleX, 1.f / m_state.m_textureScaleY);
    shaderProgram->setUniformLocationWith1f(m_blurOnlyEmptyUniform, m_state.m_minBlendingLayer > 1 && m_state.m_blurOnlyEmpty);
    shaderProgram->setUniformLocationWith1f(m_screenAspectINVUniform, m_screenSize.height / m_screenSize.width);
    shaderProgram->setUniformLocationWith1f(m_shaderPositionUniform, m_screenSize.width / m_screenSize.height);
}

void ShaderLayer::preGrayscaleShader() {
    if (m_state.m_grayscaleValue > 0.f || this->getActionByTag(32)) {
        m_state.m_usesShaders = true;
    }
    auto shaderProgram = m_sprite->getShaderProgram();
    shaderProgram->setUniformLocationWith1f(m_grayscaleValueUniform, m_state.m_grayscaleValue);
    if (m_state.m_grayscaleValue > 0.f) {
        shaderProgram->setUniformLocationWith1f(m_grayscaleUseLumUniform, m_state.m_grayscaleUseLum);
        shaderProgram->setUniformLocationWith3f(m_grayscaleTintUniform, m_state.m_grayscaleTint.r / 255.f, m_state.m_grayscaleTint.g / 255.f, m_state.m_grayscaleTint.b / 255.f);
    }
}

void ShaderLayer::preHueShiftShader() {
    if (m_state.m_hueShiftDegrees != 0.f || this->getActionByTag(38)) {
        m_state.m_usesShaders = true;
    }
    auto radians = m_state.m_hueShiftDegrees * (M_PI / 180.f);
    auto shaderProgram = m_sprite->getShaderProgram();
    shaderProgram->setUniformLocationWith1f(m_hueShiftCosAUniform, cosf(radians));
    shaderProgram->setUniformLocationWith1f(m_hueShiftSinAUniform, sinf(radians));
}

void ShaderLayer::preInvertColorShader() {
    if (m_state.m_invertColorEditRGB > 0.f || this->getActionByTag(34)) {
        m_state.m_usesShaders = true;
    }
    auto shaderProgram = m_sprite->getShaderProgram();
    auto edit = m_state.m_invertColorEditRGB;
    auto r = edit * m_state.m_invertColorR;
    auto g = edit * m_state.m_invertColorG;
    auto b = edit * m_state.m_invertColorB;
    if (m_state.m_invertColorClampRGB) {
        r = std::min(r, 1.f);
        g = std::min(g, 1.f);
        b = std::min(b, 1.f);
    }
    shaderProgram->setUniformLocationWith4f(m_invertColorValueUniform, r, g, b, edit);
}

void ShaderLayer::prePinchShader() {
    if (m_state.m_pinchTargetX != 0.0 || m_state.m_pinchTargetY != 0.0 || this->getActionByTag(25) || this->getActionByTag(26)) {
        m_state.m_usesShaders = true;
    }
}

void ShaderLayer::preRadialBlurShader() {
    if (m_state.m_radialBlurSize != 0.f || this->getActionByTag(16)) {
        m_state.m_usesShaders = true;
    }
    auto shaderProgram = m_sprite->getShaderProgram();
    shaderProgram->setUniformLocationWith1f(m_radialBlurValueUniform, m_state.m_radialBlurSize / 45.f);
    if (m_state.m_radialBlurSize != 0.f) {
        shaderProgram->setUniformLocationWith1f(m_blurFadeUniform, std::clamp(m_state.m_radialBlurFade * .2f, .0f, .2f));
    }
}

void ShaderLayer::preSepiaShader() {
    if (m_state.m_sepiaValue > 0.f || this->getActionByTag(33)) {
        m_state.m_usesShaders = true;
    }
    m_sprite->getShaderProgram()->setUniformLocationWith1f(m_sepiaValueUniform, m_state.m_sepiaValue);
}

void ShaderLayer::resetTargetContainer() {
    if (m_gameLayer) {
        auto parent = m_state.m_minBlendingLayer < 2 ? m_gameLayer->m_objectParent : m_gameLayer->m_inShaderParent;
        parent->setPosition(m_savedCameraPosition);
        parent->setScale(1.f);
        parent->setRotation(m_savedCameraRotation);
        this->setRotation(0.f);
    }
}

void ShaderLayer::setupBulgeShader() {
    auto program = m_sprite->getShaderProgram()->getProgram();
    m_bulgeValueUniform = glGetUniformLocation(program, "_bulgeValue");
    m_bulgeValue2Uniform = glGetUniformLocation(program, "_bulgeValue2");
    m_bulgeOriginUniform = glGetUniformLocation(program, "_bulgeOrigin");
    m_bulgeRadiusUniform = glGetUniformLocation(program, "_bulgeRadius");
}

void ShaderLayer::setupChromaticGlitchUniforms() {
    auto program = m_sprite->getShaderProgram()->getProgram();
    m_cGRGBOffsetUniform = glGetUniformLocation(program, "_cGRGBOffset");
    m_cGYOffsetUniform = glGetUniformLocation(program, "_cGYOffset");
    m_cGTimeUniform = glGetUniformLocation(program, "_cGTime");
    m_cGStrengthUniform = glGetUniformLocation(program, "_cGStrength");
    m_cGHeightUniform = glGetUniformLocation(program, "_cGHeight");
    m_cGLineThickUniform = glGetUniformLocation(program, "_cGLineThick");
    m_cGLineStrengthUniform = glGetUniformLocation(program, "_cGLineStrength");
}

void ShaderLayer::setupChromaticUniforms() {
    auto program = m_sprite->getShaderProgram()->getProgram();
    m_chromaticXOffUniform = glGetUniformLocation(program, "_chromaticXOff");
    m_chromaticYOffUniform = glGetUniformLocation(program, "_chromaticYOff");
}

void ShaderLayer::setupColorChangeShader() {
    auto program = m_sprite->getShaderProgram()->getProgram();
    m_colorChangeCUniform = glGetUniformLocation(program, "_colorChangeC");
    m_colorChangeBUniform = glGetUniformLocation(program, "_colorChangeB");
}

void ShaderLayer::setupGlitchUniforms() {
    auto program = m_sprite->getShaderProgram()->getProgram();
    m_glitchBotUniform = glGetUniformLocation(program, "_glitchBot");
    m_glitchTopUniform = glGetUniformLocation(program, "_glitchTop");
    m_glitchXOffsetUniform = glGetUniformLocation(program, "_glitchXOffset");
    m_glitchColOffsetUniform = glGetUniformLocation(program, "_glitchColOffset");
    m_glitchRndUniform = glGetUniformLocation(program, "_glitchRnd");
}

void ShaderLayer::setupGrayscaleShader() {
    auto program = m_sprite->getShaderProgram()->getProgram();
    m_grayscaleValueUniform = glGetUniformLocation(program, "_grayscaleValue");
    m_grayscaleTintUniform = glGetUniformLocation(program, "_grayscaleTint");
    m_grayscaleUseLumUniform = glGetUniformLocation(program, "_grayscaleUseLum");
}

void ShaderLayer::setupHueShiftShader() {
    auto program = m_sprite->getShaderProgram()->getProgram();
    m_hueShiftCosAUniform = glGetUniformLocation(program, "_hueShiftCosA");
    m_hueShiftSinAUniform = glGetUniformLocation(program, "_hueShiftSinA");
}

void ShaderLayer::setupLensCircleShader() {
    auto program = m_sprite->getShaderProgram()->getProgram();
    m_lensCircleOriginUniform = glGetUniformLocation(program, "_lensCircleOrigin");
    m_lensCircleStartUniform = glGetUniformLocation(program, "_lensCircleStart");
    m_lensCircleEndUniform = glGetUniformLocation(program, "_lensCircleEnd");
    m_lensCircleStrengthUniform = glGetUniformLocation(program, "_lensCircleStrength");
    m_lensCircleTintUniform = glGetUniformLocation(program, "_lensCircleTint");
    m_lensCircleAdditiveUniform = glGetUniformLocation(program, "_lensCircleAdditive");
}

void ShaderLayer::setupMotionBlurShader() {
    auto program = m_sprite->getShaderProgram()->getProgram();
    m_motionBlurValueUniform = glGetUniformLocation(program, "_motionBlurValue");
    m_motionBlurMultUniform = glGetUniformLocation(program, "_motionBlurMult");
    m_motionBlurDualUniform = glGetUniformLocation(program, "_motionBlurDual");
}

void ShaderLayer::setupPinchShader() {
    auto program = m_sprite->getShaderProgram()->getProgram();
    m_pinchValueUniform = glGetUniformLocation(program, "_pinchValue");
    m_pinchCenterPosUniform = glGetUniformLocation(program, "_pinchCenterPos");
    m_pinchCalcUniform = glGetUniformLocation(program, "_pinchCalc1");
    m_pinchRadiusUniform = glGetUniformLocation(program, "_pinchRadius");
}

void ShaderLayer::setupRadialBlurShader() {
    auto program = m_sprite->getShaderProgram()->getProgram();
    m_radialBlurCenterUniform = glGetUniformLocation(program, "_radialBlurCenter");
    m_radialBlurValueUniform = glGetUniformLocation(program, "_radialBlurValue");
}

void ShaderLayer::triggerChromaticX(float fadeTime, float targetX, int easingType, float easingRate, bool relative) {
    this->tweenValueAuto(targetX, 1, fadeTime, easingType, easingRate);
    m_state.m_chromaticRelative = relative;
}

void ShaderLayer::triggerChromaticY(float fadeTime, float targetY, int easingType, float easingRate, bool relative) {
    this->tweenValueAuto(targetY, 2, fadeTime, easingType, easingRate);
    m_state.m_chromaticRelative = relative;
}

void ShaderLayer::triggerGlitch(float fadeTime, float strength, float speed, float sliceHeight, float maxSliceXOff, float maxColXOff, float maxColYOff, bool relative) {
    this->tweenValueAuto(strength, 49, fadeTime, 0, 0.f);
    m_state.m_glitchSpeed = speed;
    m_state.m_glitchSliceHeight = sliceHeight;
    m_state.m_glitchMaxSliceXOff = maxSliceXOff;
    m_state.m_glitchMaxColXOff = maxColXOff;
    m_state.m_glitchMaxColYOff = maxColYOff;
    m_state.m_glitchRelative = relative;
}

void ShaderLayer::triggerGrayscale(float fadeTime, float target, bool useLuminance, int tintChannel, int easingType, float easingRate) {
    if (tintChannel > -1) m_state.m_grayscaleTintChannel = tintChannel;
    m_state.m_grayscaleUseLum = useLuminance;
    this->tweenValueAuto(target, 32, fadeTime, easingType, easingRate);
}

void ShaderLayer::triggerHueShift(float fadeTime, float degrees, int easingType, float easingRate) {
    this->tweenValueAuto(degrees, 38, fadeTime, easingType, easingRate);
}

void ShaderLayer::triggerMotionBlurX(float fadeTime, float targetX, float intensity, float fade, int targetID, float followEase, bool dualDir, int refChannel, int easingType, float easingRate, bool relative, bool emptyOnly) {
    m_state.m_blurRefChannel = refChannel;
    this->tweenValueAuto(fade, 48, fadeTime, 0, 0.f);
    this->tweenValueAuto(intensity, 47, fadeTime, 0, 0.f);
    this->tweenValueAuto(targetX, 19, fadeTime, easingType, easingRate);
    m_state.m_blurOnlyEmpty = emptyOnly;
    m_state.m_motionBlurFollowEaseX = followEase;
    m_state.m_motionBlurTargetIDX = targetID;
    m_state.m_motionBlurDual = dualDir;
    m_state.m_motionBlurRelative = relative;
}

void ShaderLayer::triggerMotionBlurY(float fadeTime, float targetY, float intensity, float fade, int targetID, float followEase, bool dualDir, int refChannel, int easingType, float easingRate, bool relative, bool emptyOnly) {
    m_state.m_blurRefChannel = refChannel;
    this->tweenValueAuto(fade, 48, fadeTime, 0, 0.f);
    this->tweenValueAuto(intensity, 47, fadeTime, 0, 0.f);
    this->tweenValueAuto(targetY, 20, fadeTime, easingType, easingRate);
    m_state.m_blurOnlyEmpty = emptyOnly;
    m_state.m_motionBlurFollowEaseY = followEase;
    m_state.m_motionBlurTargetIDY = targetID;
    m_state.m_motionBlurDual = dualDir;
    m_state.m_motionBlurRelative = relative;
}

void ShaderLayer::triggerPixelateX(float fadeTime, float targetX, bool snapGrid, bool hardEdges, int easingType, float easingRate, bool relative) {
    m_state.m_pixelateSnapGrid = snapGrid;
    if (m_state.m_pixelateTargetX < 1.f) m_state.m_pixelateTargetX = 1.f;
    this->tweenValueAuto(targetX, 9, fadeTime, easingType, easingRate);
    m_state.m_pixelateRelative = relative;
    m_state.m_pixelateHardEdges = hardEdges;
}

void ShaderLayer::triggerPixelateY(float fadeTime, float targetY, bool snapGrid, bool hardEdges, int easingType, float easingRate, bool relative) {
    m_state.m_pixelateSnapGrid = snapGrid;
    if (m_state.m_pixelateTargetY < 1.f) m_state.m_pixelateTargetY = 1.f;
    this->tweenValueAuto(targetY, 10, fadeTime, easingType, easingRate);
    m_state.m_pixelateRelative = relative;
    m_state.m_pixelateHardEdges = hardEdges;
}

void ShaderLayer::triggerSepia(float fadeTime, float target, int easingType, float easingRate) {
    this->tweenValueAuto(target, 33, fadeTime, easingType, easingRate);
}

void ShaderLayer::triggerSplitScreenCols(float fadeTime, float targetX, int easingType, float easingRate) {
    this->tweenValueAuto(targetX, 46, fadeTime, easingType, easingRate);
}

void ShaderLayer::triggerSplitScreenRows(float fadeTime, float targetY, int easingType, float easingRate) {
    this->tweenValueAuto(targetY, 45, fadeTime, easingType, easingRate);
}

void ShaderLayer::updateMotionBlurSpeedX(float x, float dt) {
    auto divisor = m_state.m_motionBlurFollowEaseX;
    if (divisor > 1.f) {
        if (dt > 0.f) divisor /= dt;
        m_state.m_motionBlurSpeedX += (x - m_state.m_motionBlurSpeedX) / divisor;
    }
    else m_state.m_motionBlurSpeedX = x;
}

void ShaderLayer::updateMotionBlurSpeedY(float y, float dt) {
    auto divisor = m_state.m_motionBlurFollowEaseY;
    if (divisor > 1.f) {
        if (dt > 0.f) divisor /= dt;
        m_state.m_motionBlurSpeedY += (y - m_state.m_motionBlurSpeedY) / divisor;
    }
    else m_state.m_motionBlurSpeedY = y;
}

void ShaderLayer::updateShockLineCenter(cocos2d::CCPoint center) {
    if (m_state.m_shockLineCenterDirty) {
        if (!m_state.m_shockLineCenterMoving) m_state.m_shockLineCenterDirty = false;
        m_state.m_shockLineCenter = center;
    }
}

void ShaderLayer::updateShockWaveCenter(cocos2d::CCPoint center) {
    if (m_state.m_shockWaveCenterDirty) {
        if (!m_state.m_shockWaveCenterMoving) m_state.m_shockWaveCenterDirty = false;
        m_state.m_shockWaveCenter = center;
    }
}
#endif

#if defined(GEODE_IS_IOS)
void ShaderLayer::tweenValue(float fromValue, float toValue, int action, float duration, int easingType, float easingRate) {
    m_state.tweenValue(fromValue, toValue, action, duration, easingType, easingRate);
}
#endif

