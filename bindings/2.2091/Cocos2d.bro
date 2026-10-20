[[link(win, android)]]
class CCContentManager : cocos2d::CCObject {
    static CCContentManager* sharedManager() = imac 0x1635f0, m1 0x12e424;

    cocos2d::CCDictionary* addDict(char const*, bool) = imac 0x163760, m1 0x12e588;
    cocos2d::CCDictionary* addDictDS(char const*) = imac 0x163920, m1 0x12e738;
    void clearCache() = imac 0x163b20, m1 0x12e924;
    bool init() = imac 0x163670, m1 0x12e4a4, ios inline;
}

[[link(win, android)]]
class cocos2d {
    static cocos2d::CCAffineTransform __CCAffineTransformMake(float, float, float, float, float, float) = imac 0x225630, m1 0x1d2cc8;
    static cocos2d::CCPoint __CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&) = imac 0x225660, m1 0x1d2cd8;
    static cocos2d::CCSize __CCSizeApplyAffineTransform(cocos2d::CCSize const&, cocos2d::CCAffineTransform const&) = imac 0x2256d0, m1 0x1d2d34, ios inline;
    static char* cc_utf16_to_utf8(unsigned short const*, long, long*, long*) = imac 0x73fe90, m1 0x64d7a0;
    static std::vector<unsigned short> cc_utf16_vec_from_utf16_str(unsigned short const*) = imac 0x73fb00, m1 0x64d474;
    static unsigned int cc_utf8_find_last_not_char(std::vector<unsigned short>, unsigned short) = imac 0x73f600, m1 0x64d05c;
    static long cc_utf8_strlen(char const*, int) = imac 0x73f9c0, m1 0x64d394;
    static unsigned short* cc_utf8_to_utf16(char const*, int*) = imac 0x73fcb0, m1 0x64d5e4;
    static void cc_utf8_trim_ws(std::vector<unsigned short>*) = imac 0x73f740, m1 0x64d198;
    static int cc_wcslen(unsigned short const*) = imac 0x73f990, m1 0x64d368;
    static cocos2d::CCAffineTransform CCAffineTransformConcat(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&) = imac 0x225a90, m1 0x1d3040;
    static bool CCAffineTransformEqualToTransform(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&) = imac 0x225b00, m1 0x1d3098, ios inline;
    static cocos2d::CCAffineTransform CCAffineTransformInvert(cocos2d::CCAffineTransform const&) = imac 0x225b60, m1 0x1d3104;
    static cocos2d::CCAffineTransform CCAffineTransformMakeIdentity() = imac 0x225730, m1 0x1d2d84;
    static cocos2d::CCAffineTransform CCAffineTransformRotate(cocos2d::CCAffineTransform const&, float) = imac 0x225a40, m1 0x1d2ffc;
    static cocos2d::CCAffineTransform CCAffineTransformScale(cocos2d::CCAffineTransform const&, float, float) = imac 0x225a20, m1 0x1d2fdc, ios inline;
    static cocos2d::CCAffineTransform CCAffineTransformTranslate(cocos2d::CCAffineTransform const&, float, float) = imac 0x2259e0, m1 0x1d2fb0;
    static cocos2d::CCPoint ccCardinalSplineAt(cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, float, float) = imac 0x2be420, m1 0x25e708;
    static void ccDrawCardinalSpline(cocos2d::CCPointArray*, float, unsigned int) = imac 0x1ecc60, m1 0x19efd0;
    static void ccDrawCatmullRom(cocos2d::CCPointArray*, unsigned int) = imac 0x1ecc40, m1 0x19efc8;
    static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool) = imac 0x1ec210, m1 0x19e7a4;
    static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool, float, float) = imac 0x1ebdc0, m1 0x19e444;
    static void ccDrawCircleSegment(cocos2d::CCPoint const&, float, float, float, unsigned int, bool, float, float) = imac 0x1ec230, m1 0x19e7b0;
    static void ccDrawColor4B(unsigned char, unsigned char, unsigned char, unsigned char) = imac 0x1ed1e0, m1 0x19f448;
    static void ccDrawColor4F(float, float, float, float) = imac 0x1ed180, m1 0x19f404;
    static void ccDrawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int) = imac 0x1ecf00, m1 0x19f1f4;
    static void ccDrawFilledCircle(cocos2d::CCPoint const&, float, float, unsigned int) = imac 0x1ec680, m1 0x19eb10;
    static void ccDrawFree() = imac 0x1eb590, m1 0x19dbb4;
    static void ccDrawInit() = imac 0x1eb510, m1 0x19db30;
    static void ccDrawLine(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x1eb8f0, m1 0x19df30;
    static void ccDrawLines(cocos2d::CCPoint const*, unsigned int) = imac 0x1eb7e0;
    static void ccDrawPoint(cocos2d::CCPoint const&) = imac 0x1eb5c0, m1 0x19dbe8;
    static void ccDrawPoints(cocos2d::CCPoint const*, unsigned int) = imac 0x1eb6d0;
    static void ccDrawPoly(cocos2d::CCPoint const*, unsigned int, bool) = imac 0x1ebcc0, m1 0x19e32c;
    static void ccDrawQuadBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int) = imac 0x1eca50, m1 0x19ee1c;
    static void ccDrawRect(cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x1eba20, m1 0x19e078;
    static void ccDrawSolidPoly(cocos2d::CCPoint const*, unsigned int, cocos2d::ccColor4F) = imac 0x1ebbc0, m1 0x19e214;
    static void ccDrawSolidRect(cocos2d::CCPoint origin, cocos2d::CCPoint destination, cocos2d::ccColor4F color) = imac 0x1ebb10, m1 0x19e140, ios inline;
    static void ccGLBindTexture2D(unsigned int) = imac 0x346cf0, m1 0x2d7728;
    static void ccGLBindTexture2DN(unsigned int, unsigned int) = imac 0x346d30, m1 0x2d776c;
    static void ccGLBindVAO(unsigned int) = imac 0x346df0, m1 0x2d7854;
    static void ccGLBlendFunc(unsigned int, unsigned int) = imac 0x346c40, m1 0x2d7670;
    static void ccGLBlendResetToCache() = imac 0x346ca0, m1 0x2d76d4, ios inline;
    static void ccGLDeleteProgram(unsigned int) = imac 0x346c00, m1 0x2d7638;
    static void ccGLDeleteTexture(unsigned int) = imac 0x346d70, m1 0x2d77c4;
    static void ccGLDeleteTextureN(unsigned int, unsigned int) = imac 0x346db0, m1 0x2d7804, ios inline;
    static void ccGLEnable(cocos2d::ccGLServerState) = imac 0x346e10, m1 0x2d7870;
    static void ccGLEnableVertexAttribs(unsigned int) = imac 0x346e20, m1 0x2d7874;
    static void ccGLInvalidateStateCache() = imac 0x346b90, m1 0x2d75e4;
    static void ccGLUseProgram(unsigned int) = imac 0x346c20, m1 0x2d7654;
    // static void CCLog(char const*, ...);
    static void CCLuaLog(char const*) = imac 0x154ef0, m1 0x121370;
    static void CCMessageBox(char const*, char const*) = imac 0x154f00, m1 0x121374;
    static float ccpAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x341e00, m1 0x2d3418, ios inline;
    static float ccpAngleSigned(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x341ac0, m1 0x2d3158, ios inline;
    static cocos2d::CCPoint ccpClamp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x341990, m1 0x2d3090;
    static cocos2d::CCPoint ccpCompMult(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x341a90, m1 0x2d3140, ios inline;
    static float ccpDistance(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x341810, m1 0x2d2f78;
    static cocos2d::CCPoint ccpForAngle(float) = imac 0x3418a0, m1 0x2d2fd4;
    static cocos2d::CCPoint ccpFromSize(cocos2d::CCSize const& size) = imac 0x341a10, m1 0x2d30dc, ios inline;
    static bool ccpFuzzyEqual(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float) = imac 0x341a80, m1 0x2d313c, ios inline;
    static cocos2d::CCPoint ccpIntersectPoint(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x341ce0, m1 0x2d3310;
    static float ccpLength(cocos2d::CCPoint const&) = imac 0x3417f0, m1 0x2d2f64;
    static cocos2d::CCPoint ccpLerp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float) = imac 0x3418f0, m1 0x2d300c;
    static bool ccpLineIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, float*, float*) = imac 0x341bf0, m1 0x2d323c;
    static cocos2d::CCPoint ccpNormalize(cocos2d::CCPoint const&) = imac 0x341850, m1 0x2d2fa8;
    static cocos2d::CCPoint CCPointFromString(char const*);
    static void ccPointSize(float) = imac 0x1ed1b0, m1 0x19f418;
    static void CCProfilingBeginTimingBlock(char const*) = imac 0x4e71e0, m1 0x445d0c;
    static void CCProfilingEndTimingBlock(char const*) = imac 0x4e7370, m1 0x445e90;
    static void CCProfilingResetTimingBlock(char const*) = imac 0x4e7540, m1 0x446054;
    static cocos2d::CCPoint ccpRotateByAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float) = imac 0x341ad0, m1 0x2d315c;
    static bool ccpSegmentIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x341af0, m1 0x2d3160, ios inline;
    static float ccpToAngle(cocos2d::CCPoint const& point) = imac 0x3418d0, m1 0x2d3004, ios inline;
    static cocos2d::CCRect CCRectApplyAffineTransform(cocos2d::CCRect const&, cocos2d::CCAffineTransform const&) = imac 0x225750, m1 0x1d2d98;
    static cocos2d::CCRect CCRectFromString(char const*) = imac 0x5936b0, m1 0x4e36ec;
    static void ccSetProjectionMatrixDirty() = m1 0x2d7988;
    static cocos2d::CCSize CCSizeFromString(char const*);
    static bool ccVertexLineIntersect(float, float, float, float, float, float, float, float, float*) = imac 0x392de0, m1 0x31cb24;
    static void ccVertexLineToPolygon(cocos2d::CCPoint*, float, cocos2d::ccVertex2F*, unsigned int, unsigned int) = imac 0x392900, m1 0x31c7d0;
    static float clampf(float, float, float) = imac 0x341960, m1 0x2d3070;
    static char const* cocos2dVersion() = imac 0x340d80, m1 0x2d270c;
    static cocos2d::CCBMFontConfiguration* FNTConfigLoadFile(char const*) = imac 0x6a6590, m1 0x5c126c;
    static void FNTConfigRemoveCache() = imac 0x6a6850, m1 0x5c1538;
    static bool isspace_unicode(unsigned short) = imac 0x608a00, m1 0x64d09c;
}

[[link(win, android)]]
class cocos2d::CCAccelAmplitude : cocos2d::CCActionInterval {
    virtual ~CCAccelAmplitude() = imac 0x1edd00, m1 0x19ff48;

    static cocos2d::CCAccelAmplitude* create(cocos2d::CCAction*, float);

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x1eddc0, m1 0x1a0020;
    virtual void update(float) = imac 0x1eddf0, m1 0x1a0054;
    virtual cocos2d::CCActionInterval* reverse();

    bool initWithAction(cocos2d::CCAction*, float) = imac 0x1edcc0, m1 0x19ff04;
}

[[link(win, android)]]
class cocos2d::CCAccelDeccelAmplitude : cocos2d::CCActionInterval {
    virtual ~CCAccelDeccelAmplitude() = imac 0x1ed9e0, m1 0x19fc30;

    static cocos2d::CCAccelDeccelAmplitude* create(cocos2d::CCAction*, float);

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x1edaa0, m1 0x19fce8;
    virtual void update(float) = imac 0x1edad0, m1 0x19fd1c;
    virtual cocos2d::CCActionInterval* reverse();

    bool initWithAction(cocos2d::CCAction*, float);
}

[[link(win, android)]]
class cocos2d::CCAction : cocos2d::CCObject {
    // cocos2d::CCNode* getOriginalTarget();
    // float getSpeedMod() const;
    // int getTag();
    // cocos2d::CCNode* getTarget();
    // void setOriginalTarget(cocos2d::CCNode*);
    // void setSpeedMod(float);
    // void setTarget(cocos2d::CCNode*);
    // CCAction(cocos2d::CCAction const&);
    CCAction() = imac 0x6c6f10, m1 0x5df31c;
    virtual ~CCAction() = imac 0x6c6fb0, m1 0x5df37c;

    static cocos2d::CCAction* create() = imac 0x6c7000, m1 0x5df3bc, ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x6c7080, m1 0x5df44c;
    virtual void update(float) = imac 0x6c7180, m1 0x5df534;
    // virtual void setTag(int) = m1 0x1b6e5c, imac 0x205680;
    virtual bool isDone() = imac 0x6c7160, m1 0x5df528;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x6c7140, m1 0x5df518;
    virtual void stop() = imac 0x6c7150, m1 0x5df520;
    virtual void step(float) = imac 0x6c7170, m1 0x5df530;

    char const* description() = imac 0x6c7060, m1 0x5df420, ios inline;

    cocos2d::CCNode* m_pOriginalTarget;
    cocos2d::CCNode* m_pTarget;
    int m_nTag;
    float m_fSpeedMod;
}

[[link(win, android)]]
class cocos2d::CCActionCamera : cocos2d::CCActionInterval {
    // CCActionCamera(cocos2d::CCActionCamera const&);
    // CCActionCamera();

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x350c20, m1 0x2e0a00;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x350c90, m1 0x2e0a6c;
}

[[link(win, android)]]
class cocos2d::CCActionEase : cocos2d::CCActionInterval {
    // CCActionEase(cocos2d::CCActionEase const&);
    // CCActionEase();
    virtual ~CCActionEase() = imac 0x5155c0, m1 0x47052c;

    static cocos2d::CCActionEase* create(cocos2d::CCActionInterval*) = imac 0x5153b0, m1 0x470350;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x515480, m1 0x470438;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x515640, m1 0x4705e4;
    virtual void stop() = imac 0x515670, m1 0x470614;
    virtual void update(float) = imac 0x5156a0, m1 0x470644;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5156c0, m1 0x470654;
    virtual cocos2d::CCActionInterval* getInnerAction() = imac 0x5156e0, m1 0x470674;

    bool initWithAction(cocos2d::CCActionInterval* pAction) = imac 0x515450, m1 0x4703f8;
}

[[link(win, android)]]
class cocos2d::CCActionInstant : cocos2d::CCFiniteTimeAction {
    // CCActionInstant(cocos2d::CCActionInstant const&);
    CCActionInstant() = imac 0x88f640, m1 0x783778, ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x88f6a0, m1 0x7837c0;
    virtual void update(float) = imac 0x73bc20, m1 0x783898;
    virtual bool isDone() = imac 0x88f750, m1 0x783880;
    virtual void step(float) = imac 0x88f760, m1 0x783888;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x88f790, m1 0x78389c;
}

[[link(win, android)]]
class cocos2d::CCActionInterval : cocos2d::CCFiniteTimeAction {
    static cocos2d::CCActionInterval* create(float) = imac 0x39e760, m1 0x3270f8, ios inline;

    // CCActionInterval(cocos2d::CCActionInterval const&);
    // CCActionInterval();
    // ~CCActionInterval() = ios 0x264838;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x39e840, m1 0x3271a8;
    virtual bool isDone() = imac 0x39e940, m1 0x32728c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x39ea00, m1 0x327320;
    virtual void step(float) = imac 0x39e960, m1 0x32729c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x39ea20, m1 0x32734c;

    float getAmplitudeRate() = imac 0x39e9f0, m1 0x327318, ios inline;
    bool initWithDuration(float d) = imac 0x39e800, m1 0x327184;
    // float getElapsed();
    // bool getM_bFirstTick() const;
    void setAmplitudeRate(float) = imac 0x39e9e0, m1 0x327314, ios inline;

    float m_elapsed;
    bool m_bFirstTick;
}

[[link(win, android)]]
class cocos2d::CCActionManager : cocos2d::CCObject {
    CCActionManager() = imac 0x217f50, m1 0x1c760c;
    virtual ~CCActionManager() = imac 0x218010, m1 0x1c7634;

    virtual void update(float) = imac 0x219050, m1 0x1c8878;

    void actionAllocWithHashElement(cocos2d::_hashElement*) = imac 0x2181c0, m1 0x1c7884;
    void addAction(cocos2d::CCAction*, cocos2d::CCNode*, bool) = imac 0x218550, m1 0x1c7c9c;
    void deleteHashElement(cocos2d::_hashElement*) = imac 0x2180c0, m1 0x1c7754;
    cocos2d::CCAction* getActionByTag(unsigned int, cocos2d::CCObject*) = imac 0x218e40, m1 0x1c8638;
    unsigned int numberOfRunningActionsInTarget(cocos2d::CCObject* target) = imac 0x218f60, m1 0x1c876c, ios inline;
    cocos2d::CCSet* pauseAllRunningActions() = imac 0x218450, m1 0x1c7b80, ios inline;
    void pauseTarget(cocos2d::CCObject*) = imac 0x218290, m1 0x1c798c;
    void removeAction(cocos2d::CCAction*) = imac 0x218b00, m1 0x1c8290;
    void removeActionAtIndex(unsigned int, cocos2d::_hashElement*) = imac 0x218200, m1 0x1c78c4;
    void removeActionByTag(unsigned int, cocos2d::CCObject*) = imac 0x218c90, m1 0x1c8448;
    void removeAllActions() = imac 0x217fd0, m1 0x1c7680, ios inline;
    void removeAllActionsFromTarget(cocos2d::CCObject*) = imac 0x218990, m1 0x1c810c;
    void resumeTarget(cocos2d::CCObject*) = imac 0x218370, m1 0x1c7a88;
    void resumeTargets(cocos2d::CCSet*) = imac 0x2184c0, m1 0x1c7c08, ios inline;
}

[[link(win, android)]]
class cocos2d::CCActionTween {
    static cocos2d::CCActionTween* create(float, char const*, float, float) = imac 0x888730, m1 0x77d140;
    static cocos2d::CCActionTween* create(float, int, float, float) = imac 0x888630, m1 0x77d058;

    virtual void update(float) = imac 0x8888e0, m1 0x77d2b8;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x888890, m1 0x77d27c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x888950, m1 0x77d30c;

    bool initWithDuration(float, char const*, float, float) = imac 0x888830, m1 0x77d220, ios inline;
    // CCActionTween(cocos2d::CCActionTween const&);
    // CCActionTween();
    void updateTargetValue(float) = imac 0x8888c0, m1 0x77d2a8, ios inline;
}

[[link(win, android)]]
class cocos2d::CCAnimate : cocos2d::CCActionInterval {
    // cocos2d::CCAnimation* getAnimation() const;
    // bool getRecenterChildren() const;
    // bool getRecenterFrames() const;
    // void setAnimation(cocos2d::CCAnimation*);
    // void setRecenterChildren(bool);
    // void setRecenterFrames(bool);
    // CCAnimate(cocos2d::CCAnimate const&);
    CCAnimate() = imac 0x3a5aa0, m1 0x32d5d8;
    virtual ~CCAnimate() = imac 0x3a5b20, m1 0x32d644;

    static cocos2d::CCAnimate* create(cocos2d::CCAnimation*) = imac 0x3a5570, m1 0x32d194;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a5980, m1 0x32d4d0;
    virtual void update(float) = imac 0x3a5c80, m1 0x32d780;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a5bc0, m1 0x32d6c8;
    virtual void stop() = imac 0x3a5c30, m1 0x32d734;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a5ed0, m1 0x32d994;

    bool initWithAnimation(cocos2d::CCAnimation*) = imac 0x3a56b0, m1 0x32d2a4;

    std::vector<float>* m_pSplitTimes;
    int m_nNextFrame;
    cocos2d::CCSpriteFrame* m_pOrigFrame;
    uint32_t m_uExecutedLoops;
    bool m_bRecenterFrames;
    bool m_bRecenterChildren;
}

[[link(win, android)]]
class cocos2d::CCAnimation : cocos2d::CCObject {
    // static cocos2d::CCAnimation* create(cocos2d::CCArray*, float);
    // float getDelayPerUnit() const;
    // cocos2d::CCArray* getFrames() const;
    // unsigned int getLoops() const;
    // bool getRestoreOriginalFrame() const;
    // float getTotalDelayUnits() const;
    // void setDelayPerUnit(float);
    // void setFrames(cocos2d::CCArray*);
    // void setLoops(unsigned int);
    // void setRestoreOriginalFrame(bool);
    // CCAnimation(cocos2d::CCAnimation const&);
    CCAnimation() = imac 0x281320, m1 0x226968, ios inline;
    virtual ~CCAnimation() = imac 0x281370, m1 0x22699c;

    static cocos2d::CCAnimation* create() = imac 0x280e30, m1 0x2264b4, ios inline;
    static cocos2d::CCAnimation* create(cocos2d::CCArray*, float, unsigned int) = imac 0x281170, m1 0x2267b8;
    static cocos2d::CCAnimation* createWithSpriteFrames(cocos2d::CCArray*, float) = imac 0x280f70, m1 0x2265e0;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x2815d0, m1 0x226bf0;
    virtual float getDuration() = imac 0x2815c0, m1 0x226be4;

    void addSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x281430, m1 0x226a54, ios inline;
    void addSpriteFrameWithFileName(char const*) = imac 0x281510, m1 0x226b24, ios inline;
    void addSpriteFrameWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = imac 0x281590, m1 0x226bb4, ios inline;
    bool init() = imac 0x280f20, m1 0x226584, ios inline;
    bool initWithAnimationFrames(cocos2d::CCArray*, float, unsigned int) = imac 0x281280, m1 0x2268c0;
    bool initWithSpriteFrames(cocos2d::CCArray*, float) = imac 0x281000, m1 0x226668;
}

[[link(win, android)]]
class cocos2d::CCAnimationCache : cocos2d::CCObject {
    CCAnimationCache() = imac 0x461570, m1 0x3cde60, ios inline;
    virtual ~CCAnimationCache() = imac 0x4615a0, m1 0x3cde84;

    static void purgeSharedAnimationCache() = imac 0x461540, m1 0x3cde34;
    static cocos2d::CCAnimationCache* sharedAnimationCache() = imac 0x461430, m1 0x3cdd24;

    void addAnimation(cocos2d::CCAnimation*, const char*) = imac 0x1e5920;
    void addAnimationsWithDictionary(cocos2d::CCDictionary*, const char*) = imac 0x461fe0, m1 0x3ce8d8, ios inline;
    void addAnimationsWithFile(const char*) = imac 0x462200, m1 0x3ceb38, ios inline;
    cocos2d::CCAnimation* animationByName(const char*) = imac 0x461830;
    bool init() = imac 0x461500, m1 0x3cddec;
    void parseVersion1(cocos2d::CCDictionary*) = imac 0x461910, m1 0x3ce23c, ios inline;
    void parseVersion2(cocos2d::CCDictionary*) = imac 0x461bb0, m1 0x3ce4a0, ios inline;
    void removeAnimationByName(const char*) = imac 0x461750, m1 0x3ce03c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCAnimationFrame : cocos2d::CCObject {
    CCAnimationFrame() = imac 0x280b10, m1 0x2261c4, ios inline;
    virtual ~CCAnimationFrame() = imac 0x280be0, m1 0x226288;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x280cd0, m1 0x226364;

    bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, float, cocos2d::CCDictionary*) = imac 0x280b50, m1 0x2261f8, ios inline;
}

[[link(win, android)]]
class cocos2d::CCApplication : cocos2d::CCApplicationProtocol {
    CCApplication() = imac 0x314b00, m1 0x2a70b8;
    virtual ~CCApplication() = imac 0x314b30, m1 0x2a70e0;

    static cocos2d::CCApplication* sharedApplication() = imac 0x314c30, m1 0x2a71bc;

    virtual int run() = imac 0x314ba0, m1 0x2a7154;
    virtual void setAnimationInterval(double) = imac 0x314be0, m1 0x2a7188;
    virtual cocos2d::ccLanguageType getCurrentLanguage() = imac 0x314c40, m1 0x2a71c8;
    virtual cocos2d::TargetPlatform getTargetPlatform() = imac 0x314c20, m1 0x2a71b4;
    virtual void openURL(char const*) = imac 0x315940, m1 0x2a7a84;

    [[missing(android, ios)]]
    std::string const& getResourceRootPath() = imac 0x315230, m1 0x2a779c;
    [[missing(android, ios)]]
    std::string const& getStartupScriptFilename() = imac 0x315930, m1 0x2a7a7c;
    [[missing(android, mac, ios)]]
    int getTimeElapsed();
    [[missing(android, mac, ios)]]
    void leftMouseDown();
    [[missing(android, mac, ios)]]
    void leftMouseUp();
    [[missing(android, mac, ios)]]
    void logTimeElapsed(std::string);
    [[missing(android, mac, ios)]]
    void moveMouse(int relX, int relY);
    [[missing(android, mac, ios)]]
    void resetForceTimer();
    [[missing(android, ios)]]
    void setResourceRootPath(std::string const&) = imac 0x314e70, m1 0x2a73ec;
    [[missing(android, ios)]]
    void setStartupScriptFilename(std::string const&) = imac 0x315240, m1 0x2a77a4;
    [[missing(android, mac, ios)]]
    void setupVerticalSync();
    [[missing(android, mac, ios)]]
    void shutdownApplication();
    [[missing(android, mac, ios)]]
    void toggleMouseControl(bool);
    [[missing(android, mac, ios)]]
    void toggleVerticalSync(bool);
    [[missing(android, mac, ios)]]
    void updateController();
    [[missing(android, mac, ios)]]
    void updateControllerKeys(CXBOXController* controller, int userIndex);
    [[missing(android, mac, ios)]]
    void updateMouseControl();
    [[missing(android, mac, ios)]]
    void updateVerticalSync();

    PAD = win 0xc8, mac 0x30;
}

[[link(win, android)]]
class cocos2d::CCArray : cocos2d::CCObject {
    // static cocos2d::CCArray* create(cocos2d::CCObject*, ...);
    // static cocos2d::CCArray* create() = ios 0x249214;
    // static cocos2d::CCArray* createWithArray(cocos2d::CCArray*);
    // static cocos2d::CCArray* createWithCapacity(unsigned int);
    // static cocos2d::CCArray* createWithContentsOfFile(char const*);
    // static cocos2d::CCArray* createWithContentsOfFileThreadSafe(char const*);
    // bool initWithObjects(cocos2d::CCObject*, ...);
    // CCArray(cocos2d::CCArray const&);
    // CCArray(unsigned int);
    // CCArray();
    // void addObject(cocos2d::CCObject*) = ios 0x249394;

    void addObjectNew(cocos2d::CCObject*) = imac 0x7ff100, m1 0x6ffdc4, ios inline;
    // void addObjectsFromArray(cocos2d::CCArray*);
    // unsigned int capacity() const;
    // bool containsObject(cocos2d::CCObject*) const;
    // unsigned int count() const;
    // void exchangeObject(cocos2d::CCObject*, cocos2d::CCObject*);
    // void exchangeObjectAtIndex(unsigned int, unsigned int);
    // void fastRemoveObject(cocos2d::CCObject*);
    // void fastRemoveObjectAtIndex(unsigned int) = imac 0x709f10, m1 0x629530;
    void fastRemoveObjectAtIndexChild(unsigned int) = imac 0x7ff1c0, m1 0x6ffe24, ios inline;
    void fastRemoveObjectAtIndexNew(unsigned int) = imac 0x7ff1b0, m1 0x6ffe1c, ios inline;
    // unsigned int indexOfObject(cocos2d::CCObject*) const;
    // static cocos2d::CCArray* createWithObject(cocos2d::CCObject*) = ios 0x249270;
    // bool init() = imac 0x7094e0;
    // bool initWithArray(cocos2d::CCArray*);
    // bool initWithCapacity(unsigned int);
    // bool initWithObject(cocos2d::CCObject*);
    // void insertObject(cocos2d::CCObject*, unsigned int) = ios 0x2494f4;
    // bool isEqualToArray(cocos2d::CCArray*);
    // cocos2d::CCObject* lastObject();
    // cocos2d::CCObject* objectAtIndex(unsigned int) = m1 0x6293a0, imac 0x709d40;
    // cocos2d::CCObject* randomObject();
    void recreateNewIndexes() = imac 0x7ff0f0, m1 0x6ffdbc, ios inline;
    // void reduceMemoryFootprint();
    // void removeAllObjects() = ios 0x249528;
    // void removeLastObject(bool);
    // void removeObject(cocos2d::CCObject*, bool);
    // void removeObjectAtIndex(unsigned int, bool);
    void removeObjectAtIndexChild(unsigned int, bool) = imac 0x7ff160, m1 0x6ffdf8;
    // void removeObjectsInArray(cocos2d::CCArray*);
    // void replaceObjectAtIndex(unsigned int, cocos2d::CCObject*, bool);
    // void reverseObjects();
    cocos2d::CCString* stringAtIndex(unsigned int) = imac 0x7fefc0, m1 0x6ffc88;

    // virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios 0x249634, imac 0x71ff10, m1 0x632d6c;
    // virtual void acceptVisitor(cocos2d::CCDataVisitor&) = ios 0x2496f8, imac 0x720010, m1 0x632e6c;
    cocos2d::ccArray* data;
}

[[link(win, android)]]
class cocos2d::CCAtlasNode : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    CCAtlasNode() = imac 0x315f20;
    virtual ~CCAtlasNode();

    static cocos2d::CCAtlasNode* create(char const*, unsigned int, unsigned int, unsigned int) = imac 0x316120, m1 0x2a8184;

    virtual cocos2d::CCTextureAtlas* getTextureAtlas() = imac 0x316a60, m1 0x2a8a9c;
    virtual void setTextureAtlas(cocos2d::CCTextureAtlas*) = imac 0x316a20, m1 0x2a8a60;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x3168e0, m1 0x2a8944;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x316900, m1 0x2a8958;
    virtual unsigned int getQuadsToDraw() = imac 0x316a70, m1 0x2a8aa4;
    virtual void setQuadsToDraw(unsigned int) = imac 0x316a80, m1 0x2a8aac;
    virtual void updateAtlasValues() = imac 0x316520, m1 0x2a8574;
    virtual void draw() = imac 0x316530, m1 0x2a8578;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x3169f0, m1 0x2859b4;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x316920, m1 0x2a896c;
    virtual bool isOpacityModifyRGB() = imac 0x3168b0, m1 0x2a892c;
    virtual void setOpacityModifyRGB(bool) = imac 0x316800, m1 0x2a8864;
    virtual cocos2d::ccColor3B const& getColor() = imac 0x316620, m1 0x2a8684;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x316660, m1 0x2a86b8;
    virtual void setOpacity(unsigned char) = imac 0x316770, m1 0x2a87cc;

    void calculateMaxItems() = imac 0x316490, m1 0x2a84ec;
    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int, unsigned int, unsigned int) = imac 0x316270, m1 0x2a82d8;
    bool initWithTileFile(char const*, unsigned int, unsigned int, unsigned int) = imac 0x316210, m1 0x2a8278;
    void setIgnoreContentScaleFactor(bool) = imac 0x3168d0, m1 0x2a893c;
    void updateBlendFunc() = imac 0x316420, m1 0x2a8474;
    void updateOpacityModifyRGB() = imac 0x316460, m1 0x2a84b8;
}

[[link(win, android)]]
class cocos2d::CCAutoreleasePool : cocos2d::CCObject {
    CCAutoreleasePool() = imac 0x3e3870, m1 0x361cb4;
    virtual ~CCAutoreleasePool() = imac 0x3e3930, m1 0x361d38, ios inline;

    void addObject(cocos2d::CCObject*) = imac 0x3e39b0, m1 0x361e10, ios inline;
    void clear() = imac 0x3e3a30, m1 0x361e98;
    void removeObject(cocos2d::CCObject*) = imac 0x3e39e0, m1 0x361e44, ios inline;
}

[[link(win, android)]]
class cocos2d::CCBezierBy : cocos2d::CCActionInterval {
    static cocos2d::CCBezierBy* create(float, cocos2d::ccBezierConfig const&) = imac 0x3a2bb0, m1 0x32ace4;

    // CCBezierBy(cocos2d::CCBezierBy const&);
    // CCBezierBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a2db0, m1 0x32ae98;
    virtual void update(float) = imac 0x3a2f30, m1 0x32afe8;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a2d60, m1 0x32ae44;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a30d0, m1 0x32b140;

    bool initWithDuration(float, cocos2d::ccBezierConfig const&) = imac 0x3a2cf0, m1 0x32ade4;
}

[[link(win, android)]]
class cocos2d::CCBezierTo : cocos2d::CCBezierBy {
    static cocos2d::CCBezierTo* create(float, cocos2d::ccBezierConfig const&) = imac 0x3a31a0, m1 0x32b1f4;

    // CCBezierTo(cocos2d::CCBezierTo const&);
    // CCBezierTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a32f0, m1 0x32b304;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a3420, m1 0x32b404;

    bool initWithDuration(float, cocos2d::ccBezierConfig const&) = imac 0x3a3280, m1 0x32b2a4;
}

[[link(win, android)]]
class cocos2d::CCBlink : cocos2d::CCActionInterval {
    static cocos2d::CCBlink* create(float, unsigned int) = imac 0x3a3cb0, m1 0x32bb48;

    // CCBlink(cocos2d::CCBlink const&);
    // CCBlink();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a3e10, m1 0x32bc80;
    virtual void update(float) = imac 0x3a3f20, m1 0x32bd70;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a3dd0, m1 0x32bc3c;
    virtual void stop() = imac 0x3a3da0, m1 0x32bc08;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a3fa0, m1 0x32bdf8;

    bool initWithDuration(float, unsigned int) = imac 0x3a3d60, m1 0x32bbe0, ios inline;
}

[[link(win, android)]]
class cocos2d::CCBMFontConfiguration : cocos2d::CCObject {
    // CCBMFontConfiguration(cocos2d::CCBMFontConfiguration const&);
    CCBMFontConfiguration() = imac 0x6a75c0, m1 0x5c241c, ios inline;
    virtual ~CCBMFontConfiguration() = imac 0x6a7610, m1 0x5c2454;

    static cocos2d::CCBMFontConfiguration* create(char const*) = imac 0x6a67c0, m1 0x5c1490;

    char const* description() = imac 0x6a7970, m1 0x5c278c, ios inline;
    bool initWithFNTfile(char const*) = imac 0x6a68e0, m1 0x5c15a8, ios inline;
    void parseCharacterDefinition(std::string, cocos2d::_BMFontDef*) = imac 0x6a8520, m1 0x5c32cc;
    void parseCommonArguments(std::string) = imac 0x6a7bc0, m1 0x5c29d0;
    std::set<unsigned int>* parseConfigFile(char const*) = imac 0x6a6910, m1 0x5c15dc;
    void parseImageFileName(std::string, char const*) = imac 0x6a82b0, m1 0x5c3054;
    void parseInfoArguments(std::string) = imac 0xf1850, m1 0x5c27e8;
    void parseKerningEntry(std::string) = imac 0x6a9410, m1 0x5c3fa8;
    void purgeFontDefDictionary() = imac 0x6a76a0, m1 0x5c24f4;
    void purgeKerningDictionary() = imac 0x6a7800, m1 0x5c263c;
}

[[link(win, android)]]
class cocos2d::CCCallFunc : cocos2d::CCActionInstant {
    // CCCallFunc(cocos2d::CCCallFunc const&);
    // CCCallFunc();
    virtual ~CCCallFunc() = imac 0x8903f0, m1 0x78451c;

    static cocos2d::CCCallFunc* create(cocos2d::CCObject*, cocos2d::SEL_CallFunc) = imac 0x8902a0, m1 0x7843dc;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x8904f0, m1 0x784634;
    virtual void update(float) = imac 0x8905f0, m1 0x784738;
    virtual bool initWithTarget(cocos2d::CCObject*) = imac 0x8903b0, m1 0x7844dc;
    virtual void execute() = imac 0x890600, m1 0x784744;
}

[[link(win, android)]]
class cocos2d::CCCallFuncN : cocos2d::CCCallFunc, cocos2d::TypeInfo {
    static cocos2d::CCCallFuncN* create(cocos2d::CCObject* pSelectorTarget, cocos2d::SEL_CallFuncN selector) = imac 0x8906c0, m1 0x784828, ios inline;

    virtual bool initWithTarget(cocos2d::CCObject* pSelectorTarget, cocos2d::SEL_CallFuncN selector) = imac 0x8907f0, m1 0x784938, ios inline;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* zone) = imac 0x890840, m1 0x78498c, ios inline;
    virtual void execute() = imac 0x890660, m1 0x7847b4, ios inline;
}

[[link(win, android)]]
class cocos2d::CCCallFuncND : cocos2d::CCCallFuncN {
    static cocos2d::CCCallFuncND* create(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*) = imac 0x890930, m1 0x784a6c, ios inline;

    // CCCallFuncND(cocos2d::CCCallFuncND const&);
    // CCCallFuncND();
    virtual bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*) = imac 0x890a20, m1 0x784b34, ios inline;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x890a90, m1 0x784b98, ios inline;
    virtual void execute() = imac 0x890bb0, m1 0x784c94, ios inline;
}

[[link(win, android)]]
class cocos2d::CCCallFuncO : cocos2d::CCCallFunc, cocos2d::TypeInfo {
    // cocos2d::CCObject* getObject();
    // void setObject(cocos2d::CCObject*);
    // CCCallFuncO(cocos2d::CCCallFuncO const&);
    CCCallFuncO() = imac 0x890c50, m1 0x784d04, ios inline;
    virtual ~CCCallFuncO() = imac 0x890cb0, m1 0x784d3c;

    static cocos2d::CCCallFuncO* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*) = imac 0x890da0, m1 0x784e08;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x890ef0, m1 0x784f34;
    virtual void execute() = imac 0x890d60, m1 0x784dd4;
    virtual bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*) = imac 0x890e80, m1 0x784ec4;
}

[[link(win, android)]]
class cocos2d::CCCamera : cocos2d::CCObject {
    // private CCCamera(cocos2d::CCCamera const&);
    CCCamera() = imac 0x593380, m1 0x4e345c;
    virtual ~CCCamera() = imac 0x5933e0, m1 0x4e34cc, ios inline;

    static float getZEye() = imac 0x5934a0, m1 0x4e3570, ios inline;

    char const* description() = imac 0x593420, m1 0x4e34e8, ios inline;
    void getCenterXYZ(float*, float*, float*) = imac 0x5935f0, m1 0x4e3650, ios inline;
    void getEyeXYZ(float*, float*, float*) = imac 0x5935c0, m1 0x4e3634, ios inline;
    void getUpXYZ(float*, float*, float*) = imac 0x593620, m1 0x4e366c, ios inline;
    void init() = imac 0x593340, m1 0x4e3414, ios inline;
    void locate() = imac 0x5934b0, m1 0x4e3578;
    void restore() = imac 0x593460, m1 0x4e3528;
    void setCenterXYZ(float, float, float) = imac 0x593580, m1 0x4e360c, ios inline;
    void setEyeXYZ(float, float, float) = imac 0x593560, m1 0x4e35f8, ios inline;
    void setUpXYZ(float, float, float) = imac 0x5935a0, m1 0x4e3620, ios inline;
}

[[link(win, android)]]
class cocos2d::CCCardinalSplineBy : cocos2d::CCCardinalSplineTo {
    CCCardinalSplineBy() = imac 0x2bee10, m1 0x25f008;

    static cocos2d::CCCardinalSplineBy* create(float, cocos2d::CCPointArray*, float) = imac 0x2becf0, m1 0x25eedc;

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x2bf2a0, m1 0x25f43c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x2bef60, m1 0x25f178;
    virtual void updatePosition(cocos2d::CCPoint&) = imac 0x2bef10, m1 0x25f120;
}

[[link(win, android)]]
class cocos2d::CCCardinalSplineTo : cocos2d::CCActionInterval {
    CCCardinalSplineTo() = imac 0x2be610, m1 0x25e894;
    virtual ~CCCardinalSplineTo() = imac 0x2be6d0, m1 0x25e950;

    static cocos2d::CCCardinalSplineTo* create(float, cocos2d::CCPointArray*, float) = imac 0x2be520, m1 0x25e79c;

    virtual cocos2d::CCCardinalSplineTo* copyWithZone(cocos2d::CCZone*) = imac 0x2be870, m1 0x25eae4;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x2be800, m1 0x25ea70;
    virtual void update(float) = imac 0x2be9a0, m1 0x25ec00;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x2becc0, m1 0x25eeb0;
    virtual void updatePosition(cocos2d::CCPoint&) = imac 0x2bec90, m1 0x25ee78;

    bool initWithDuration(float, cocos2d::CCPointArray*, float) = imac 0x2be670, m1 0x25e8f0;
}

[[link(win, android)]]
class cocos2d::CCCatmullRomBy : cocos2d::CCCardinalSplineBy {
    static cocos2d::CCCatmullRomBy* create(float, cocos2d::CCPointArray*) = imac 0x2bf490, m1 0x25f640;

    bool initWithDuration(float, cocos2d::CCPointArray*) = imac 0x2bf5e0, m1 0x25f794;
}

[[link(win, android)]]
class cocos2d::CCCatmullRomTo : cocos2d::CCCardinalSplineTo {
    static cocos2d::CCCatmullRomTo* create(float, cocos2d::CCPointArray*) = imac 0x2bf330, m1 0x25f4cc;

    bool initWithDuration(float, cocos2d::CCPointArray*) = imac 0x2bf440, m1 0x25f5e8;
}

[[link(win, android)]]
class cocos2d::CCClippingNode : cocos2d::CCNode {
    protected CCClippingNode() = imac 0x7fdef0, m1 0x6fee14;
    virtual ~CCClippingNode() = m1 0x6fee6c;

    static cocos2d::CCClippingNode* create() = imac 0x7fe040, m1 0x6fef24;
    static cocos2d::CCClippingNode* create(cocos2d::CCNode* stencil) = imac 0x7fe0d0, m1 0x6fefac;

    virtual bool init() = imac 0x7fe180, m1 0x6ff04c;
    virtual bool init(cocos2d::CCNode* pStencil) = imac 0x7fe1a0, m1 0x6ff05c;
    virtual void onEnter() = imac 0x7fe210, m1 0x6ff0cc;
    virtual void onEnterTransitionDidFinish() = imac 0x7fe240, m1 0x6ff0f8;
    virtual void onExit() = imac 0x7fe2a0, m1 0x6ff154;
    virtual void onExitTransitionDidStart() = imac 0x7fe270, m1 0x6ff124;
    virtual void visit() = imac 0x7fe2d0, m1 0x6ff184;

    float getAlphaThreshold() const = imac 0x7fe680, m1 0x6ff504;
    cocos2d::CCNode* getStencil() const = imac 0x7fe630, m1 0x6ff4b8;
    bool isInverted() const = imac 0x7fe6a0, m1 0x6ff514;
    void setAlphaThreshold(float fAlphaThreshold) = imac 0x7fe690, m1 0x6ff50c;
    void setInverted(bool bInverted) = imac 0x7fe6b0, m1 0x6ff51c;
    void setStencil(cocos2d::CCNode* pStencil) = imac 0x7fe640, m1 0x6ff4c0;
}

[[link(win, android)]]
class cocos2d::CCComponent : cocos2d::CCObject {
    protected CCComponent() = imac 0x62f50, m1 0x5c15c;
    virtual ~CCComponent() = imac 0x62fb0, m1 0x5c1c4;

    static cocos2d::CCComponent* create() = imac 0x630c0, m1 0x5c2bc;

    virtual bool init() = imac 0x63070, m1 0x5c2a0;
    virtual void onEnter() = imac 0x63080, m1 0x5c2a8;
    virtual void onExit() = imac 0x63090, m1 0x5c2ac;
    virtual void update(float) = imac 0x630a0, m1 0x5c2b0;
    virtual bool serialize(void*) = imac 0x630b0, m1 0x5c2b4;
    virtual bool isEnabled() const = imac 0x63170, m1 0x5c358;
    virtual void setEnabled(bool) = imac 0x63180, m1 0x5c360;

    char const* getName() const = imac 0x63120, m1 0x5c324;
    cocos2d::CCNode* getOwner() const = imac 0x63150, m1 0x5c348;
    void setName(char const*) = imac 0x63140, m1 0x5c340;
    void setOwner(cocos2d::CCNode*) = imac 0x63160, m1 0x5c350;
}

[[link(win, android)]]
class cocos2d::CCComponentContainer {
    protected CCComponentContainer(cocos2d::CCNode*) = win inline, imac 0x2b1d80, m1 0x25306c;
    virtual ~CCComponentContainer() = imac 0x2b1da0, m1 0x253080;

    virtual cocos2d::CCComponent* get(char const*) const = imac 0x2b1e40, m1 0x253134;
    virtual bool add(cocos2d::CCComponent*) = imac 0x2b1f60, m1 0x253264;
    virtual bool remove(char const*) = imac 0x2b2180, m1 0x253478;
    virtual bool remove(cocos2d::CCComponent*) = imac 0x2b2450, m1 0x253744;
    virtual void removeAll() = imac 0x2b25f0, m1 0x2538d8;
    virtual void visit(float) = imac 0x2b27e0, m1 0x253a78;

    void alloc() = imac 0x2b27c0, m1 0x253a54, ios inline;
    bool isEmpty() const = imac 0x2b2830, m1 0x253acc;
}

[[link(win, android)]]
class cocos2d::CCConfiguration : cocos2d::CCObject {
    CCConfiguration() = imac 0x51a100, m1 0x474d98, ios inline;
    // CCConfiguration(cocos2d::CCConfiguration const&);
    virtual ~CCConfiguration() = imac 0x51a420, m1 0x4750a8;

    static void purgeConfiguration() = imac 0x51ae10, m1 0x475b44;
    static cocos2d::CCConfiguration* sharedConfiguration() = imac 0x51ad80, m1 0x475ac4;

    bool checkForGLExtension(std::string const&) const = imac 0x51ad50, m1 0x475a90;
    void dumpInfo() const = imac 0x51a4e0, m1 0x475154;
    void gatherGPUInfo() = imac 0x51a560, m1 0x4751f4;
    bool getBool(char const*, bool) const = imac 0x51afe0, m1 0x475ccc;
    char const* getCString(char const*, char const*) const = imac 0x51aec0, m1 0x475bb0;
    int getMaxModelviewStackDepth() const = imac 0x51ae50, m1 0x475b78, ios inline;
    int getMaxTextureSize() const = imac 0x51ae40, m1 0x475b70;
    int getMaxTextureUnits() const = imac 0x51ae60, m1 0x475b80, ios inline;
    double getNumber(char const*, double) const = imac 0x51b120, m1 0x475e0c;
    cocos2d::CCObject* getObject(char const*) const = imac 0x51b280, ios inline;
    bool init() = imac 0x51a180, m1 0x474df8;
    void loadConfigFile(char const*) = imac 0x51b450, m1 0x476188, ios inline;
    void setObject(char const*, cocos2d::CCObject*) = imac 0x51b360, ios inline;
    bool supportsBGRA8888() const = imac 0x51ae90, m1 0x475b98;
    bool supportsDiscardFramebuffer() const = imac 0x51aea0, m1 0x475ba0, ios inline;
    bool supportsNPOT() const = imac 0x51ae70, m1 0x475b88;
    bool supportsPVRTC() const = imac 0x51ae80, m1 0x475b90;
    bool supportsShareableVAO() const = imac 0x51aeb0, m1 0x475ba8, ios inline;
}

[[link(win, android)]]
class cocos2d::CCDataVisitor {
    virtual void visit(cocos2d::CCBool const*) = imac 0x4ae280, m1 0x413958, ios inline;
    virtual void visit(cocos2d::CCInteger const*) = imac 0x4ae290, m1 0x413964, ios inline;
    virtual void visit(cocos2d::CCFloat const*) = imac 0x4ae2a0, m1 0x413970, ios inline;
    virtual void visit(cocos2d::CCDouble const*) = imac 0x4ae2b0, m1 0x41397c, ios inline;
    virtual void visit(cocos2d::CCString const*) = imac 0x4ae2c0, m1 0x413988, ios inline;
    virtual void visit(cocos2d::CCArray const*) = imac 0x4ae2d0, m1 0x413994, ios inline;
    virtual void visit(cocos2d::CCDictionary const*) = imac 0x4ae2e0, m1 0x4139a0, ios inline;
    virtual void visit(cocos2d::CCSet const*) = imac 0x4ae2f0, m1 0x4139ac, ios inline;
}

[[link(win, android)]]
class cocos2d::CCDeccelAmplitude : cocos2d::CCActionInterval {
    virtual ~CCDeccelAmplitude() = imac 0x1ee010, m1 0x1a0288;

    static cocos2d::CCDeccelAmplitude* create(cocos2d::CCAction*, float);

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x1ee0d0, m1 0x1a0340;
    virtual void update(float) = imac 0x1ee100, m1 0x1a0374;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x1ee160, m1 0x1a03c8;

    bool initWithAction(cocos2d::CCAction*, float);
}

[[link(win, android)]]
class cocos2d::CCDelayTime : cocos2d::CCActionInterval {
    static cocos2d::CCDelayTime* create(float) = imac 0x3a0800, m1 0x328dac;

    // CCDelayTime(cocos2d::CCDelayTime const&);
    // CCDelayTime();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a4ff0, m1 0x32cca0;
    virtual void update(float) = imac 0x3a50c0, m1 0x32cd70;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a50d0, m1 0x32cd74;
}

[[link(win, android)]]
class cocos2d::CCDevice {
    static int getDPI() = imac 0x703e50, m1 0x6150b8;
}

[[link(win, android)]]
class cocos2d::CCDictElement {
    CCDictElement(char const*, cocos2d::CCObject*) = win inline, imac 0x2f82e0, m1 0x28ccdc, ios inline;
    CCDictElement(intptr_t, cocos2d::CCObject*) = win inline, imac 0x2f83a0, m1 0x28cd60, ios inline;
    ~CCDictElement() = imac 0x2f83e0, m1 0x28cd7c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCDictionary : cocos2d::CCObject {
    // CCDictionary(cocos2d::CCDictionary const&);
    CCDictionary() = imac 0x2f8430, m1 0x28cdac;
    virtual ~CCDictionary() = imac 0x2f8610, m1 0x28cdd4;

    static cocos2d::CCDictionary* create() = imac 0x2fa9a0, m1 0x28f1b4;
    static cocos2d::CCDictionary* createWithContentsOfFile(char const*) = imac 0x2fab30, m1 0x28f360;
    static cocos2d::CCDictionary* createWithContentsOfFileThreadSafe(char const*) = imac 0x2faa20;
    static cocos2d::CCDictionary* createWithDictionary(cocos2d::CCDictionary*) = imac 0x2faa00, m1 0x28f210;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x2fa680, m1 0x28ee88;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x2fab10, m1 0x28f348;

    cocos2d::CCArray* allKeys() = imac 0x2f86a0, m1 0x28cfe4;
    cocos2d::CCArray* allKeysForObject(cocos2d::CCObject*) = imac 0x2f8830, m1 0x28d17c, ios inline;
    char const* charForKey(std::string const&) = imac 0x2f8970, m1 0x28d2d8, ios inline;
    unsigned int count() = imac 0x2f8680, m1 0x28cfc8;
    std::string getFirstKey() = imac 0x2f87d0, m1 0x28d114;
    cocos2d::CCObject* objectForKey(intptr_t) = imac 0x2f8de0;
    cocos2d::CCObject* objectForKey(std::string const&) = imac 0x2f8a10, m1 0x28d418;
    cocos2d::CCObject* randomObject() = imac 0x2fa890, m1 0x28f050, ios inline;
    void removeAllObjects() = imac 0x2f8490, m1 0x28ce08;
    void removeObjectForElememt(cocos2d::CCDictElement*) = imac 0x2fa2d0, m1 0x28eaec;
    void removeObjectForKey(intptr_t) = imac 0x2fa400;
    void removeObjectForKey(std::string const&) = imac 0x2f9eb0, m1 0x28e788;
    void removeObjectsForKeys(cocos2d::CCArray*) = imac 0x2fa540, m1 0x28ed60;
    void setObject(cocos2d::CCObject*, intptr_t) = imac 0x2f9990, m1 0x28e2b8;
    void setObject(cocos2d::CCObject*, std::string const&) = imac 0x2f8f90, m1 0x28d96c;
    void setObjectUnSafe(cocos2d::CCObject*, intptr_t) = imac 0x2f9b40, m1 0x28e448;
    void setObjectUnSafe(cocos2d::CCObject*, std::string const&) = imac 0x2f93c0, m1 0x28ddb8;
    cocos2d::CCString const* valueForKey(intptr_t) = imac 0x2f8f10, m1 0x28d8d0;
    cocos2d::CCString const* valueForKey(std::string const&) = imac 0x2f8990, m1 0x28d37c;
    bool writeToFile(char const*) = imac 0x2fab50, m1 0x28f388, ios inline;

    cocos2d::CCDictElement* m_pElements;
    int m_eDictType;
}

[[link(win, android)]]
class cocos2d::CCDirector : cocos2d::CCObject, cocos2d::TypeInfo {
    // CCDirector(cocos2d::CCDirector const&);
    CCDirector() = imac 0x476e90;
    virtual ~CCDirector() = imac 0x477320, m1 0x3e1e98;

    static cocos2d::CCDirector* sharedDirector() = imac 0x476dc0, m1 0x3e19b0;

    virtual bool init() = imac 0x476ef0, m1 0x3e1ad4;
    virtual cocos2d::CCScheduler* getScheduler() = imac 0x479410, m1 0x3e3b24;
    virtual void setScheduler(cocos2d::CCScheduler*) = imac 0x4793d0, m1 0x3e3b2c;
    virtual cocos2d::CCActionManager* getActionManager() = imac 0x479410, m1 0x3e3b74;
    virtual void setActionManager(cocos2d::CCActionManager*) = imac 0x4793d0, m1 0x3e3b2c;
    virtual cocos2d::CCTouchDispatcher* getTouchDispatcher() = imac 0x479460, m1 0x3e3bc4;
    virtual void setTouchDispatcher(cocos2d::CCTouchDispatcher*) = imac 0x479420, m1 0x3e3b7c;
    virtual cocos2d::CCKeypadDispatcher* getKeypadDispatcher() = imac 0x4795e0, m1 0x3e3d34;
    virtual void setKeypadDispatcher(cocos2d::CCKeypadDispatcher*) = imac 0x4795a0, m1 0x3e3cf8;
    virtual cocos2d::CCKeyboardDispatcher* getKeyboardDispatcher() = imac 0x479540, m1 0x3e3cac;
    virtual void setKeyboardDispatcher(cocos2d::CCKeyboardDispatcher*) = imac 0x479500, m1 0x3e3c70;
    virtual cocos2d::CCMouseDispatcher* getMouseDispatcher() = imac 0x479590, m1 0x3e3cf0;
    virtual void setMouseDispatcher(cocos2d::CCMouseDispatcher*) = imac 0x479550, m1 0x3e3cb4;
    virtual cocos2d::CCAccelerometer* getAccelerometer() = imac 0x479620, m1 0x3e3d74;
    virtual void setAccelerometer(cocos2d::CCAccelerometer*) = imac 0x4795f0, m1 0x3e3d3c;
    virtual float getDeltaTime() = imac 0x477fe0, m1 0x3e29bc;

    void applySmoothFix() = imac 0x477f40, m1 0x3e2938, ios inline;
    void calculateDeltaTime() = imac 0x477ae0, m1 0x3e251c, ios inline;
    void calculateMPF() = imac 0x477ee0, m1 0x3e28c4, ios inline;
    void checkSceneReference() = imac 0x478d00, m1 0x3e3524, ios inline;
    cocos2d::CCPoint convertToGL(cocos2d::CCPoint const&) = imac 0x478750, m1 0x3e303c;
    cocos2d::CCPoint convertToUI(cocos2d::CCPoint const&) = imac 0x478870, m1 0x3e3118, ios inline;
    void createStatsLabel() = imac 0x4780d0, m1 0x3e2aa0;
    void drawScene() = imac 0x477750, m1 0x3e21e0;
    void end() = imac 0x478dc0, m1 0x3e35e0;
    // float getActualDeltaTime() const;
    // double getAnimationInterval();
    // float getContentScaleFactor();
    cocos2d::CCDirectorDelegate* getDelegate() const = imac 0x4793b0, m1 0x3e3b1c, ios inline;
    // bool getDontCallWillSwitch() const;
    void getFPSImageData(unsigned char**, unsigned int*) = imac 0x479260, m1 0x3e3a08, ios inline;
    // bool getIsTransitioning() const;
    // cocos2d::TextureQuality getLoadedTextureQuality() const;
    // cocos2d::CCScene* getNextScene();
    cocos2d::CCNode* getNotificationNode() = imac 0x479360, m1 0x3e3ad0, ios inline;
    // cocos2d::CCEGLView* getOpenGLView();
    // cocos2d::ccDirectorProjection getProjection();
    // cocos2d::CCScene* getRunningScene();
    // cocos2d::CCScene* getSceneReference() const;
    // float getScreenScaleFactor();
    // float getScreenScaleFactorH();
    // float getScreenScaleFactorMax();
    // float getScreenScaleFactorW();
    // float getSecondsPerFrame();
    // bool getSmoothFix() const;
    // bool getSmoothFixCheck() const;
    // int getSmoothFixCounter() const;
    // unsigned int getTotalFrames();
    cocos2d::CCPoint getVisibleOrigin() = imac 0x478a00, m1 0x3e322c, ios inline;
    cocos2d::CCSize getVisibleSize() = imac 0x4789c0, m1 0x3e3208, ios inline;
    cocos2d::CCSize getWinSize() = imac 0x478200, m1 0x3e2ba4;
    cocos2d::CCSize getWinSizeInPixels() = imac 0x478980, m1 0x3e31ec;
    float getZEye() = imac 0x4786c0, m1 0x3e2fc4, ios inline;
    // bool isDisplayStats();
    // bool isNextDeltaTimeZero();
    // bool isPaused();
    // bool isSendCleanupToScene();
    int levelForSceneInStack(cocos2d::CCScene*) = imac 0x478fe0, m1 0x3e37d8, ios inline;
    void pause() = imac 0x4791d0, m1 0x3e3978;
    void popScene() = imac 0x478d40, m1 0x3e3560;
    bool popSceneWithTransition(float, cocos2d::PopTransition) = imac 0x478dd0, m1 0x3e35ec;
    void popToRootScene() = imac 0x478eb0, m1 0x3e36bc;
    void popToSceneInStack(cocos2d::CCScene*) = imac 0x479030, m1 0x3e3824;
    void popToSceneStackLevel(int) = imac 0x478ec0, m1 0x3e36c4;
    void purgeCachedData() = imac 0x4786e0, m1 0x3e2fdc;
    void purgeDirector() = imac 0x479090, m1 0x3e3874;
    bool pushScene(cocos2d::CCScene*) = imac 0x478b30, m1 0x3e3354;
    void removeStatsLabel() = imac 0x479290, m1 0x3e3a38;
    bool replaceScene(cocos2d::CCScene*) = imac 0x478be0, m1 0x3e3400;
    void resetSmoothFixCounter() = imac 0x477fd0, m1 0x3e29b0;
    void reshapeProjection(cocos2d::CCSize const&) = imac 0x4786f0, m1 0x3e2fe0, ios inline;
    void resume() = imac 0x479210, m1 0x3e39bc;
    void runWithScene(cocos2d::CCScene*) = imac 0x478a90, m1 0x3e32a8;
    int sceneCount() = imac 0x478fc0, m1 0x3e37d0;
    // getScreenTop = ios 0x18260c, idk if i should add the function
    // getScreenBottom() = ios 0x182614
    // getScreenLeft() = ios 0x18261C
    // void setActualDeltaTime(float);
    void setAlphaBlending(bool) = imac 0x4774f0, m1 0x3e1ff4, ios inline;
    void setContentScaleFactor(float) = imac 0x478640, m1 0x3e2f54;
    void setDefaultValues() = imac 0x4771c0, m1 0x3e1d48;
    void setDelegate(cocos2d::CCDirectorDelegate*) = imac 0x4793c0, m1 0x3e3b24, ios inline;
    void setDeltaTime(float) = imac 0x477f30, m1 0x3e2930;
    void setDepthTest(bool) = imac 0x477510, m1 0x3e2008;
    // void setDisplayStats(bool);
    // void setDontCallWillSwitch(bool);
    void setGLDefaultValues() = imac 0x4774a0, m1 0x3e1fa8;
    void setNextDeltaTimeZero(bool) = imac 0x4786b0, m1 0x3e2fbc, ios inline;
    void setNextScene() = imac 0x477c10, m1 0x3e2648;
    // void setNotificationNode(cocos2d::CCNode*) = imac 0x4849e0, m1 0x3ea59c;
    void setOpenGLView(cocos2d::CCEGLView*) = imac 0x477ff0, m1 0x3e29c4;
    void setProjection(cocos2d::ccDirectorProjection) = imac 0x477550, m1 0x3e2038;
    void setupScreenScale(cocos2d::CCSize, cocos2d::CCSize, cocos2d::TextureQuality) = imac 0x478220, m1 0x3e2bb0;
    // void setSceneReference(cocos2d::CCScene*);
    // void setSmoothFix(bool);
    // void setSmoothFixCheck(bool);
    void setViewport() = imac 0x478660, m1 0x3e2f68;
    void showFPSLabel() = imac 0x477df0, m1 0x3e280c;
    void showStats() = imac 0x477d40, m1 0x3e2768;
    void toggleShowFPS(bool, std::string, cocos2d::CCPoint) = imac 0x4780e0, m1 0x3e2aa4;
    void updateContentScale(cocos2d::TextureQuality) = imac 0x478500, m1 0x3e2e50;
    void updateScreenScale(cocos2d::CCSize) = imac 0x478430, m1 0x3e2da0;
    void willSwitchToScene(cocos2d::CCScene*) = imac 0x478a40, m1 0x2368e4;
}

[[link(android)]]
class cocos2d::CCDisplayLinkDirector : cocos2d::CCDirector {
    virtual void setAnimationInterval(double) = imac 0x4796c0, m1 0x3e3dfc;
    virtual void stopAnimation() = imac 0x4796b0, m1 0x3e3df0;
    virtual void startAnimation() = imac 0x479630;
    virtual void mainLoop() = imac 0x479670, m1 0x3e3db8;
}

[[link(win, android)]]
class cocos2d::CCDrawNode : cocos2d::CCNodeRGBA {
    // CCDrawNode(cocos2d::CCDrawNode const&);
    CCDrawNode();
    virtual ~CCDrawNode() = imac 0x6ed720, m1 0x600c84;

    static cocos2d::CCDrawNode* create() = m1 0x600dcc;

    virtual bool init() = imac 0x6ed970, m1 0x600efc;
    virtual void draw() = imac 0x6edb60, m1 0x6010c0;

    void clear() = imac 0x6efae0, m1 0x602ac4;
    void disableDrawArea() = imac 0x6edcb0, m1 0x6011f8;
    void drawArchLikeHalfCircle(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, unsigned int, cocos2d::_ccColor4F const&, float) = imac 0x6edf20, m1 0x60144c;
    bool drawCircle(cocos2d::CCPoint const&, float, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&, unsigned int) = imac 0x6ef930, m1 0x602924;
    void drawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::ccColor4F const&, float) = imac 0x6ee5e0, m1 0x6019d4, ios inline;
    void drawCubicBezierDashed(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::ccColor4F const&, float, unsigned int, unsigned int) = imac 0x6ee0f0, m1 0x601608;
    bool drawDot(cocos2d::CCPoint const& pos, float radius, cocos2d::ccColor4F const& color) = imac 0x6edd30, m1 0x601270, ios inline;
    bool drawLines(cocos2d::CCPoint*, unsigned int, float, cocos2d::ccColor4F const&) = imac 0x6ef8b0, m1 0x60289c;
    bool drawPolygon(cocos2d::CCPoint*, unsigned int, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&, cocos2d::BorderAlignment) = imac 0x6eef60, m1 0x602130;
    void drawPreciseCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::ccColor4F const&, float) = imac 0x6ee300, m1 0x6017dc, ios inline;
    bool drawRect(cocos2d::CCRect const&, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&, cocos2d::BorderAlignment) = imac 0x6ef6f0, m1 0x6026d0;
    bool drawRect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&, cocos2d::BorderAlignment) = imac 0x6ef780, m1 0x602764;
    bool drawSegment(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::ccColor4F const&) = imac 0x6eef40, m1 0x602124;
    bool drawSegmentEx(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::ccColor4F const&, bool, bool) = imac 0x6ee870, m1 0x601bec;
    void enableDrawArea(cocos2d::CCRect&) = imac 0x6edc40, m1 0x601198;
    void ensureCapacity(unsigned int) = imac 0x65000, m1 0x5dd90;
    cocos2d::ccBlendFunc getBlendFunc() const = imac 0x6efb00, m1 0x602ad4;
    bool is_circle_on_screen(cocos2d::CCRect const&, cocos2d::CCPoint const&, float) = imac 0x6edcc0, m1 0x601200, ios inline;
    bool is_segment_on_screen(cocos2d::CCRect const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x6eee90, m1 0x602084;
    void listenBackToForeground(cocos2d::CCObject*) = imac 0x6efb20, m1 0x602ae8, ios inline;
    void render() = imac 0x6edad0, m1 0x601034;
    void setBlendFunc(cocos2d::ccBlendFunc const&) = imac 0x6efb10, m1 0x602adc;

    uint32_t m_uVao;
    uint32_t m_uVbo;
    uint32_t m_uBufferCapacity;
    int m_nBufferCount;
    cocos2d::ccV2F_C4B_T2F* m_pBuffer;
    cocos2d::ccBlendFunc m_sBlendFunc;
    bool m_bDirty;
    bool m_bUseArea;
    cocos2d::CCRect m_rDrawArea;
    float m_fMinAreaX;
    float m_fMaxAreaX;
    float m_fMaxAreaY;
    float m_fMinAreaY;
}

[[link(win, android)]]
class cocos2d::CCEaseBackIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackIn* create(cocos2d::CCActionInterval*);

    // CCEaseBackIn(cocos2d::CCEaseBackIn const&);
    // CCEaseBackIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x473304;
    virtual void update(float) = imac 0x5184d0, m1 0x4733ec;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBackInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackInOut* create(cocos2d::CCActionInterval* pAction) = ios inline;

    // CCEaseBackInOut(cocos2d::CCEaseBackInOut const&);
    // CCEaseBackInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x4736d8, ios inline;
    virtual void update(float time) = imac 0x5188c0, m1 0x4737c0, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x518950, m1 0x473854, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseBackOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackOut* create(cocos2d::CCActionInterval*);

    // CCEaseBackOut(cocos2d::CCEaseBackOut const&);
    // CCEaseBackOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x4734e8;
    virtual void update(float) = imac 0x5186c0, m1 0x4735d0;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBounce : cocos2d::CCActionEase {
    static cocos2d::CCEaseBounce* create(cocos2d::CCActionInterval* pAction) = ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline;
    virtual cocos2d::CCActionInterval* reverse() = ios inline;

    // CCEaseBounce(cocos2d::CCEaseBounce const&);
    // CCEaseBounce();
    float bounceTime(float) = imac 0x5179c0, m1 0x472804;
}

[[link(win, android)]]
class cocos2d::CCEaseBounceIn : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceIn* create(cocos2d::CCActionInterval*);

    // CCEaseBounceIn(cocos2d::CCEaseBounceIn const&);
    // CCEaseBounceIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x4729b4;
    virtual void update(float) = imac 0x517c40, m1 0x472a9c;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBounceInOut : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceInOut* create(cocos2d::CCActionInterval* pAction) = ios inline;

    // CCEaseBounceInOut(cocos2d::CCEaseBounceInOut const&);
    // CCEaseBounceInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x472f2c, ios inline;
    virtual void update(float time) = imac 0x518160, m1 0x473014, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseBounceOut : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceOut* create(cocos2d::CCActionInterval*) = m1 0x472bcc, imac 0x517d40;

    // CCEaseBounceOut(cocos2d::CCEaseBounceOut const&);
    // CCEaseBounceOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x517ee0, m1 0x472d5c;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseElastic : cocos2d::CCActionEase {
    static cocos2d::CCEaseElastic* create(cocos2d::CCActionInterval* pAction) = imac 0x516d10, m1 0x471c38, ios inline;
    static cocos2d::CCEaseElastic* create(cocos2d::CCActionInterval* pAction, float fPeriod) = ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x471d5c, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x516f50, m1 0x471e54, ios inline;

    // CCEaseElastic(cocos2d::CCEaseElastic const&);
    // CCEaseElastic();
    bool initWithAction(cocos2d::CCActionInterval* pAction, float fPeriod) = ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticIn : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval* pAction) = ios inline;
    static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval*, float);

    // CCEaseElasticIn(cocos2d::CCEaseElasticIn const&);
    // CCEaseElasticIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x517150, m1 0x472020;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5171f0, m1 0x4720b0;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticInOut : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticInOut* create(cocos2d::CCActionInterval* pAction) = imac 0x5174e0, m1 0x47236c, ios inline;
    static cocos2d::CCEaseElasticInOut* create(cocos2d::CCActionInterval* pAction, float fPeriod) = m1 0x47237c, imac 0x517500, ios inline;

    // CCEaseElasticInOut(cocos2d::CCEaseElasticInOut const&);
    // CCEaseElasticInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline;
    virtual void update(float time) = imac 0x5176d0, m1 0x472530, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticOut : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*) = imac 0x5172e0, m1 0x47219c;
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*, float) = imac 0x517220, m1 0x4720e0;

    // CCEaseElasticOut(cocos2d::CCEaseElasticOut const&);
    // CCEaseElasticOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x4721ac;
    virtual void update(float) = imac 0x517410, m1 0x4722a4;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5174b0, m1 0x47233c;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialIn* create(cocos2d::CCActionInterval*) = m1 0x471008, imac 0x5160d0;

    // CCEaseExponentialIn(cocos2d::CCEaseExponentialIn const&);
    // CCEaseExponentialIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x516270, m1 0x471198;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialInOut* create(cocos2d::CCActionInterval* pAction) = ios inline;

    // CCEaseExponentialInOut(cocos2d::CCEaseExponentialInOut const&);
    // CCEaseExponentialInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x4714e8, ios inline;
    virtual void update(float time) = imac 0x516690, m1 0x4715d0, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialOut* create(cocos2d::CCActionInterval*) = m1 0x47122c, imac 0x5162e0;

    // CCEaseExponentialOut(cocos2d::CCEaseExponentialOut const&);
    // CCEaseExponentialOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x516480, m1 0x4713bc;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseIn : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseIn* create(cocos2d::CCActionInterval*, float) = m1 0x470978, imac 0x515a00;

    // CCEaseIn(cocos2d::CCEaseIn const&);
    // CCEaseIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x515bd0, m1 0x470b2c;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseInOut : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseInOut* create(cocos2d::CCActionInterval*, float) = m1 0x470db8, imac 0x515e60;

    // CCEaseInOut(cocos2d::CCEaseInOut const&);
    // CCEaseInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x470e74;
    virtual void update(float) = imac 0x516030, m1 0x470f6c;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseOut : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseOut* create(cocos2d::CCActionInterval*, float);

    // CCEaseOut(cocos2d::CCEaseOut const&);
    // CCEaseOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x515e00, m1 0x470d48;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseRateAction : cocos2d::CCActionEase {
    // CCEaseRateAction(cocos2d::CCEaseRateAction const&);
    // CCEaseRateAction();
    virtual ~CCEaseRateAction() = imac 0x515910, m1 0x470888, ios inline;

    static cocos2d::CCEaseRateAction* create(cocos2d::CCActionInterval* pAction, float fRate) = ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline;
    virtual cocos2d::CCActionInterval* reverse() = ios inline;

    bool initWithAction(cocos2d::CCActionInterval* pAction, float fRate) = ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseSineIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineIn* create(cocos2d::CCActionInterval* pAction) = ios inline;

    // CCEaseSineIn(cocos2d::CCEaseSineIn const&);
    // CCEaseSineIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline;
    virtual void update(float time) = imac 0x5168c0, m1 0x4717ec, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseSineInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineInOut* create(cocos2d::CCActionInterval* pAction) = ios inline;

    // CCEaseSineInOut(cocos2d::CCEaseSineInOut const&);
    // CCEaseSineInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline;
    virtual void update(float time) = imac 0x516cb0, m1 0x471bcc, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x516cf0, m1 0x471c18, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseSineOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineOut* create(cocos2d::CCActionInterval* pAction) = imac 0x516920, m1 0x471850, ios inline;

    // CCEaseSineOut(cocos2d::CCEaseSineOut const&);
    // CCEaseSineOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline;
    virtual void update(float time) = imac 0x516ac0, m1 0x4719e0, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = ios inline;
}

[[link(win, android)]]
class cocos2d::CCEGLView {
    protected CCEGLView() = imac 0x5021b0, m1 0x45e104;
    protected virtual ~CCEGLView() = imac 0x502210, m1 0x45e154, ios inline;

    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithFullScreen(std::string const&, bool);
    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithFullScreen(std::string const&, bool, GLFWvidmode const&, GLFWmonitor*);
    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithRect(std::string const&, cocos2d::CCRect, float);
    static cocos2d::CCEGLView* sharedOpenGLView() = imac 0x502140, m1 0x45e094;

    virtual void end() = imac 0x5022c0, m1 0x45e1d8;
    virtual void swapBuffers() = imac 0x502330, m1 0x45e230;
    virtual bool isOpenGLReady() = imac 0x502290, m1 0x45e1ac;
    virtual void setIMEKeyboardState(bool) = imac 0x502460, m1 0x45e2e0;
    [[missing(android, mac, ios)]]
    virtual void setFrameSize(float, float);
    [[missing(win, android)]]
    virtual bool setContentScaleFactor(float) = imac 0x5022b0, m1 0x45e1d0;
    [[missing(android, ios)]]
    virtual void setViewPortInPoints(float, float, float, float) = imac 0x5024b0, m1 0x45e318;
    [[missing(android, ios)]]
    virtual void setScissorInPoints(float, float, float, float) = imac 0x5025a0, m1 0x45e3c0;
    [[missing(win, android, ios)]]
    virtual void setMultiTouchMask(bool) = imac 0x502690, m1 0x45e468;

    [[missing(android, mac, ios)]]
    bool initGlew();
    [[missing(android, mac, ios)]]
    void onGLFWCharCallback(GLFWwindow* window, unsigned int entered);
    [[missing(android, mac, ios)]]
    void onGLFWCursorEnterFunCallback(GLFWwindow* window, int entered);
    [[missing(android, mac, ios)]]
    void onGLFWDeviceChangeFunCallback(GLFWwindow* window);
    [[missing(android, mac, ios)]]
    void onGLFWError(int code, char const* description);
    [[missing(android, mac, ios)]]
    void onGLFWframebuffersize(GLFWwindow* window, int width, int height);
    [[missing(android, mac, ios)]]
    void onGLFWKeyCallback(GLFWwindow* window, int key, int scancode, int action, int mods) = win inline;
    [[missing(android, mac, ios)]]
    void onGLFWMouseCallBack(GLFWwindow* window, int button, int action, int mods) = win inline;
    [[missing(android, mac, ios)]]
    void onGLFWMouseMoveCallBack(GLFWwindow* window, double x, double y) = win inline;
    [[missing(android, mac, ios)]]
    void onGLFWMouseScrollCallback(GLFWwindow* window, double xOffset, double yOffset);
    [[missing(android, mac, ios)]]
    void onGLFWWindowIconifyFunCallback(GLFWwindow* window, int iconified);
    [[missing(android, mac, ios)]]
    void onGLFWWindowPosCallback(GLFWwindow* window, int x, int y);
    [[missing(android, mac, ios)]]
    void onGLFWWindowSizeFunCallback(GLFWwindow* window, int width, int height);
    [[missing(android, mac, ios)]]
    void performSafeClipboardPaste();
    [[missing(android, mac, ios)]]
    void pollEvents();
    [[missing(android, mac, ios)]]
    void pumpRawInput();
    [[missing(android, mac, ios)]]
    void setupWindow(cocos2d::CCRect);
    [[missing(android, ios), since("5.8.0")]]
    void showCursor(bool state) = imac 0x5026a0, m1 0x45e46c;
    [[missing(android, mac, ios)]]
    void toggleFullScreen(bool, bool, bool);
    [[missing(android, mac, ios)]]
    void toggleLockCursor(bool);
}

[[link(win, android)]]
class cocos2d::CCEGLViewProtocol {
    CCEGLViewProtocol() = imac 0x510c40, m1 0x46c060;
    virtual ~CCEGLViewProtocol() = imac 0x510ca0, m1 0x46c0b4;

    virtual cocos2d::CCSize const& getFrameSize() const = imac 0x510e20, m1 0x46c1e0;
    virtual void setFrameSize(float, float) = imac 0x510e30, m1 0x46c1e8;
    virtual cocos2d::CCSize getVisibleSize() const = imac 0x510e70, m1 0x46c22c;
    virtual cocos2d::CCPoint getVisibleOrigin() const = imac 0x510ec0, m1 0x46c25c;
    virtual void setDesignResolutionSize(float, float, ResolutionPolicy) = imac 0x510cd0, m1 0x46c0c0;
    virtual cocos2d::CCSize const& getDesignResolutionSize() const = imac 0x510e10, m1 0x46c1d8;
    virtual void setTouchDelegate(cocos2d::EGLTouchDelegate*) = imac 0x510f30, m1 0x46c2a8;
    virtual void setViewPortInPoints(float, float, float, float) = imac 0x510f40, m1 0x46c2b0;
    virtual void setScissorInPoints(float, float, float, float) = imac 0x510f80, m1 0x46c2dc;
    virtual bool isScissorEnabled() = imac 0x510fc0, m1 0x46c308;
    virtual cocos2d::CCRect getScissorRect() = imac 0x510fe0, m1 0x46c328;
    virtual void setViewName(char const*) = imac 0x511080, m1 0x46c3b8;
    virtual void pollInputEvents() = imac 0x511880, m1 0x46cbbc;
    virtual void handleTouchesBegin(int, int*, float*, float*, double) = imac 0x5110b0, m1 0x46c3dc;
    virtual void handleTouchesMove(int, int*, float*, float*, double) = imac 0x511390, m1 0x46c6ac;
    virtual void handleTouchesEnd(int, int*, float*, float*, double) = imac 0x5116c0, m1 0x46c9ec;
    virtual void handleTouchesCancel(int, int*, float*, float*, double);

    float getScaleX() const = imac 0x511860, m1 0x46cbac;
    float getScaleY() const = imac 0x511870, m1 0x46cbb4;
    void getSetOfTouchesEndOrCancel(cocos2d::CCSet&, int, int*, float*, float*, double) = imac 0x511530, m1 0x46c858;
    char const* getViewName() = imac 0x5110a0, m1 0x46c3d4, ios inline;
    cocos2d::CCRect const& getViewPortRect() const = imac 0x511850, m1 0x46cba4;
    void updateDesignResolutionSize() = imac 0x511890, m1 0x46cbc0, ios inline;
}

[[link(win, android)]]
class cocos2d::CCFadeIn : cocos2d::CCActionInterval {
    static cocos2d::CCFadeIn* create(float);

    // CCFadeIn(cocos2d::CCFadeIn const&);
    // CCFadeIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x3a41d0, m1 0x32bfec;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a4230, m1 0x32c050;
}

[[link(win, android)]]
class cocos2d::CCFadeOut : cocos2d::CCActionInterval {
    static cocos2d::CCFadeOut* create(float);

    // CCFadeOut(cocos2d::CCFadeOut const&);
    // CCFadeOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x3a4450, m1 0x32c238;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a44c0, m1 0x32c2a4;
}

[[link(win, android)]]
class cocos2d::CCFadeOutBLTiles : cocos2d::CCFadeOutTRTiles {
    static cocos2d::CCFadeOutBLTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = imac 0x89bd70, m1 0x78f2d4;
}

[[link(win, android)]]
class cocos2d::CCFadeOutDownTiles : cocos2d::CCFadeOutUpTiles {
    static cocos2d::CCFadeOutDownTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = imac 0x89c100, m1 0x78f660;
}

[[link(win, android)]]
class cocos2d::CCFadeOutTRTiles : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCFadeOutTRTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = imac 0x89b940, m1 0x78eec8;
    virtual void transformTile(cocos2d::CCPoint const&, float) = imac 0x89ba30, m1 0x78efbc;
    virtual void update(float) = imac 0x89bb10, m1 0x78f07c;

    void turnOffTile(cocos2d::CCPoint const&) = imac 0x89ba00, m1 0x78ef90;
    void turnOnTile(cocos2d::CCPoint const&) = imac 0x89b9c0, m1 0x78ef50;
}

[[link(win, android)]]
class cocos2d::CCFadeOutUpTiles : cocos2d::CCFadeOutTRTiles {
    static cocos2d::CCFadeOutUpTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = imac 0x89bee0, m1 0x78f448;
    virtual void transformTile(cocos2d::CCPoint const&, float) = imac 0x89bf60, m1 0x78f4c8;
}

[[link(win, android)]]
class cocos2d::CCFadeTo : cocos2d::CCActionInterval {
    static cocos2d::CCFadeTo* create(float, unsigned char) = imac 0x3a4570, m1 0x32c330;

    // CCFadeTo(cocos2d::CCFadeTo const&);
    // CCFadeTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a4660, m1 0x32c3ec;
    virtual void update(float) = imac 0x3a47c0, m1 0x32c53c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a4760, m1 0x32c4d8;

    bool initWithDuration(float, unsigned char) = imac 0x3a4620, m1 0x32c3c4, ios inline;
}

[[link(win, android)]]
class cocos2d::CCFileUtils : cocos2d::TypeInfo {
    protected CCFileUtils() = imac 0x428590, m1 0x39f8d8;
    virtual ~CCFileUtils() = imac 0x1e5ad0, m1 0x39f914;

    static void purgeFileUtils() = imac 0x428560, m1 0x39f8a4;
    // CCFileUtils(cocos2d::CCFileUtils const&);
    static cocos2d::CCFileUtils* sharedFileUtils() = imac 0x6e50b0, m1 0x5f9410;

    virtual void purgeCachedEntries() = imac 0x4287d0, m1 0x39fb44;
    virtual unsigned char* getFileData(char const* pszFileName, char const* pszMode, unsigned long* pSize) = imac 0x428800, m1 0x39fb74;
    virtual unsigned char* getFileDataFromZip(char const* pszZipFilePath, char const* pszFileName, unsigned long* pSize) = imac 0x428940, m1 0x39fce0;
    virtual std::string fullPathForFilename(char const* pszFileName, bool skipSuffix) = imac 0x4292b0, m1 0x3a0578;
    virtual void removeFullPath(char const* path) = imac 0x42a0c0, m1 0x3a1284;
    virtual void loadFilenameLookupDictionaryFromFile(char const* filename) = imac 0x42b3d0, m1 0x3a2634;
    virtual void setFilenameLookupDictionary(cocos2d::CCDictionary* pFilenameLookupDict) = imac 0x42b360, m1 0x3a25cc;
    virtual char const* fullPathFromRelativeFile(char const* pszFilename, char const* pszRelativeFile) = imac 0x42a220, m1 0x3a14f4;
    virtual void setSearchResolutionsOrder(std::vector<std::string> const& searchResolutionsOrder) = imac 0x42a480, m1 0x3a1760;
    virtual void addSearchResolutionsOrder(char const* order) = imac 0x42a6c0, m1 0x3a19a0;
    virtual std::vector<std::string> const& getSearchResolutionsOrder() = imac 0x42a7a0, m1 0x3a1a98;
    virtual void setSearchPaths(std::vector<std::string> const& searchPaths) = imac 0x42a7c0, m1 0x3a1aa8;
    virtual void addSearchPath(char const* path);
    virtual void removeSearchPath(char const* path);
    virtual std::vector<std::string> const& getSearchPaths() = imac 0x42a7b0, m1 0x3a1aa0;
    virtual std::string getWritablePath() = inline;
    virtual std::string getWritablePath2() = imac 0x42b770, m1 0x3a2a48;
    virtual bool isFileExist(std::string const& strFilePath) = inline;
    virtual bool isAbsolutePath(std::string const& strPath) = imac 0x42b6b0, m1 0x3a2980;
    virtual void setPopupNotify(bool bNotify) = imac 0x42b6d0;
    virtual bool isPopupNotify() = imac 0x42b6e0, m1 0x3a29ac;
    virtual bool init() = imac 0x428700, m1 0x39fa64;
    virtual std::string getNewFilename(char const* pszFileName) = imac 0x428a70, m1 0x39fe00;
    virtual bool shouldUseHD() = imac 0x428bf0, m1 0x39ff78;
    virtual std::string addSuffix(std::string, std::string) = imac 0x428c20, m1 0x39ff9c;
    virtual std::string getPathForFilename(std::string const& filename, std::string const& resolutionDirectory, std::string const& searchPath) = imac 0x428e60, m1 0x3a01a0;
    virtual std::string getFullPathForDirectoryAndFilename(std::string const& strDirectory, std::string const& strFilename) = imac 0x42b540, m1 0x3a2818;
    virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(std::string const& filename) = imac 0x428530, m1 0x39f88c;
    virtual bool writeToFile(cocos2d::CCDictionary* dict, std::string const& fullPath) = imac 0x428540, m1 0x39f894;
    virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(std::string const& filename) = imac 0x428550;

    void removeAllPaths() = imac 0x42b310, m1 0x3a2580, ios inline;

    cocos2d::CCDictionary* m_pFilenameLookupDict;
    std::vector<std::string> m_searchResolutionsOrderArray;
    std::vector<std::string> m_searchPathArray;
    std::string m_strDefaultResRootPath;
    std::map<std::string, std::string> m_fullPathCache;
    std::string m_strAndroidPath;
    cocos2d::CCFileUtils* s_sharedFileUtils;
}

[[link(android), missing(win, mac, ios)]]
class cocos2d::CCFileUtilsAndroid : cocos2d::CCFileUtils {
    private CCFileUtilsAndroid();
    virtual ~CCFileUtilsAndroid();

    virtual bool init();
    virtual unsigned char* getFileData(char const* pszFileName, char const* pszMode, unsigned long* pSize);
    virtual std::string getWritablePath();
    virtual bool isFileExist(std::string const& strFilePath);
    virtual bool isAbsolutePath(std::string const& strPath);

    unsigned char* doGetFileData(char const* pszFileName, char const* pszMode, unsigned long* pSize, bool forAsync);
    unsigned char* getFileDataForAsync(char const* pszFileName, char const* pszMode, unsigned long* pSize);
}

[[missing(win, android, mac)]]
class cocos2d::CCFileUtilsIOS : cocos2d::CCFileUtils {
    virtual std::string getWritablePath();
    virtual bool isFileExist(std::string const& strFilePath);
    virtual bool isAbsolutePath(std::string const& strPath);
    virtual std::string getFullPathForDirectoryAndFilename(std::string const& strDirectory, std::string const& strFilename);
    virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(std::string const& filename);
    virtual bool writeToFile(cocos2d::CCDictionary* dict, std::string const& fullPath);
    virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(std::string const& filename);
}

[[missing(win, android, ios)]]
class cocos2d::CCFileUtilsMac : cocos2d::CCFileUtils {
    virtual std::string getWritablePath() = imac 0x6e5140, m1 0x5f949c;
    virtual bool isFileExist(std::string const& strFilePath) = imac 0x64d970, m1 0x5f9580;
    virtual bool isAbsolutePath(std::string const& strPath) = imac 0x6e5890, m1 0x5f9b58;
    virtual std::string getFullPathForDirectoryAndFilename(std::string const& strDirectory, std::string const& strFilename) = imac 0x6e55b0, m1 0x5f98fc;
    virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(std::string const& filename) = imac 0x6e58e0, m1 0x5f9b84;
    virtual bool writeToFile(cocos2d::CCDictionary* dict, std::string const& fullPath) = imac 0x6e6440, m1 0x5fa474;
    virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(std::string const& filename) = imac 0x6e6690, m1 0xbced0;
}

[[link(win), missing(android, mac, ios), since("5.6.0")]]
class cocos2d::CCFileUtilsWin32 : cocos2d::CCFileUtils {
    // private CCFileUtilsWin32();

    virtual bool init();
    virtual void addSearchPath(char const* path);
    virtual void removeSearchPath(char const* path);
    virtual std::string getWritablePath();
    virtual std::string getWritablePath2();
    virtual bool isFileExist(std::string const& strFilePath);
    virtual bool isAbsolutePath(std::string const& strPath);
    virtual std::string getPathForFilename(std::string const& filename, std::string const& resolutionDirectory, std::string const& searchPath);
    virtual std::string fullPathForFilename(char const* pszFileName);

    std::string utf8Togbk(char const* src);
}

[[link(win, android)]]
class cocos2d::CCFiniteTimeAction : cocos2d::CCAction {
    // CCFiniteTimeAction(cocos2d::CCFiniteTimeAction const&);
    // CCFiniteTimeAction();

    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x6c7190, m1 0x5df538, ios inline;

    float m_fDuration;
}

[[link(win, android)]]
class cocos2d::CCFlipX : cocos2d::CCActionInstant {
    static cocos2d::CCFlipX* create(bool);

    virtual void update(float);
    virtual cocos2d::CCFiniteTimeAction* reverse();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x88fe60, m1 0x783fa0;

    bool initWithFlipX(bool);
}

[[link(win, android)]]
class cocos2d::CCFlipX3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCFlipX3D* create(float) = imac 0x269c00, m1 0x210fac;

    virtual bool initWithDuration(float) = imac 0x269cf0, m1 0x2110a4;
    virtual bool initWithSize(cocos2d::CCSize const&, float) = imac 0x269d40, m1 0x2110f4;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x269e90, m1 0x211224;
}

[[link(win, android)]]
class cocos2d::CCFlipY : cocos2d::CCActionInstant {
    static cocos2d::CCFlipY* create(bool);

    virtual void update(float);
    virtual cocos2d::CCFiniteTimeAction* reverse();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x890010, m1 0x784154;

    bool initWithFlipY(bool);
}

[[link(win, android)]]
class cocos2d::CCFlipY3D : cocos2d::CCFlipX3D {
    static cocos2d::CCFlipY3D* create(float) = imac 0x26a150, m1 0x211488;

    virtual void update(float) = imac 0x26a360, m1 0x211690;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
}

[[link(win, android)]]
class cocos2d::CCFollow : cocos2d::CCAction {
    virtual ~CCFollow() = imac 0x6c7680, m1 0x5df9d4;

    static cocos2d::CCFollow* create(cocos2d::CCNode*, cocos2d::CCRect const&) = m1 0x5dfab0;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x6c7990, m1 0x5dfcc4;
    virtual void step(float) = imac 0x6c7b40, m1 0x5dfe70;
    virtual bool isDone() = imac 0x6c7c20, m1 0x5dff48;
    virtual void stop() = imac 0x6c7c40, m1 0x5dff6c;

    bool initWithTarget(cocos2d::CCNode*, cocos2d::CCRect const&) = imac 0x6c7840, m1 0x5dfb74;
}

[[link(win, android)]]
class cocos2d::CCGLProgram : cocos2d::CCObject {
    CCGLProgram() = imac 0x417390, m1 0x38f788;
    // CCGLProgram(cocos2d::CCGLProgram const&);
    virtual ~CCGLProgram() = imac 0x4173e0, m1 0x38f7c8;

    void addAttribute(char const*, unsigned int) = imac 0x417800, m1 0x38fbf8;
    bool compileShader(unsigned int*, unsigned int, char const*) = imac 0x417640, m1 0x38f9fc;
    char const* description() = imac 0x4177d0, m1 0x38fbc4, ios inline;
    char const* fragmentShaderLog() = ios inline;
    // unsigned int const getProgram();
    int getUniformLocationForName(char const*) = imac 0x4182b0, m1 0x390730, ios inline;
    bool initWithVertexShaderByteArray(char const*, char const*) = imac 0x4175a0, m1 0x38f958;
    bool initWithVertexShaderFilename(char const*, char const*) = imac 0x4176f0, m1 0x38fac8, ios inline;
    bool link() = imac 0x417970, m1 0x38fd94;
    char const* logForOpenGLObject(unsigned int, cocos2d::GLInfoFunction, cocos2d::GLLogFunction) = imac 0x4179b0, m1 0x38fdd8, ios inline;
    char const* programLog() = ios inline;
    void reset() = imac 0x418c60, m1 0x391160;
    void setUniformLocationWith1f(int, float) = imac 0x418590, m1 0x390a68;
    void setUniformLocationWith1i(int, int) = imac 0x417930, m1 0x38fd40;
    void setUniformLocationWith2f(int, float, float) = imac 0x4185d0, m1 0x390ac8;
    void setUniformLocationWith2fv(int, float*, unsigned int) = imac 0x4187a0, m1 0x390d04, ios inline;
    void setUniformLocationWith2i(int, int, int) = imac 0x4182c0, m1 0x390738, ios inline;
    void setUniformLocationWith2iv(int, int*, unsigned int) = imac 0x4184a0, m1 0x390968, ios inline;
    void setUniformLocationWith3f(int, float, float, float) = imac 0x418660, m1 0x390b74;
    void setUniformLocationWith3fv(int, float*, unsigned int) = imac 0x4187f0, m1 0x390d58, ios inline;
    void setUniformLocationWith3i(int, int, int, int) = imac 0x418350, m1 0x3907e4, ios inline;
    void setUniformLocationWith3iv(int, int*, unsigned int) = imac 0x4184f0, m1 0x3909bc, ios inline;
    void setUniformLocationWith4f(int, float, float, float, float) = imac 0x418700, m1 0x390c38;
    void setUniformLocationWith4fv(int, float*, unsigned int) = imac 0x418890, m1 0x390e0c;
    void setUniformLocationWith4i(int, int, int, int, int) = imac 0x4183f0, m1 0x39089c, ios inline;
    void setUniformLocationWith4iv(int, int*, unsigned int) = imac 0x418540, m1 0x390a14, ios inline;
    void setUniformLocationWithMatrix3fv(int, float*, unsigned int) = imac 0x418840, m1 0x390db0;
    void setUniformLocationWithMatrix4fv(int, float*, unsigned int) = imac 0x4188e0, m1 0x390e60;
    void setUniformsForBuiltins() = imac 0x418930, m1 0x390eb8;
    bool updateUniformLocation(int, void*, unsigned int) = imac 0x417e70, m1 0x3902d0;
    void updateUniforms() = imac 0x417820, m1 0x38fc0c;
    void use() = imac 0x417920, m1 0x38fd38;
    char const* vertexShaderLog() = ios inline;
}

[[link(android)]]
class cocos2d::CCGrabber : cocos2d::CCObject {
    CCGrabber() = imac 0x6d0fe0, m1 0x5e82b8, ios inline;
    virtual ~CCGrabber() = win inline, imac 0x6d1140, m1 0x5e8408, ios inline;

    void afterRender(cocos2d::CCTexture2D*) = imac 0x6d1100, m1 0x5e83d8, ios inline;
    void beforeRender(cocos2d::CCTexture2D*) = imac 0x6d10a0, m1 0x5e8380, ios inline;
    void grab(cocos2d::CCTexture2D*) = imac 0x6d1030, m1 0x5e8310, ios inline;
}

[[link(win, android)]]
class cocos2d::CCGrid3D : cocos2d::CCGridBase {
    CCGrid3D();
    virtual ~CCGrid3D() = imac 0x4ded50, m1 0x43e9e0;

    static cocos2d::CCGrid3D* create(cocos2d::CCSize const&) = imac 0x4dec40, m1 0x43e8ac;
    static cocos2d::CCGrid3D* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = imac 0x4deb20, m1 0x43e788;

    virtual void blit() = imac 0x4dee40, m1 0x43ea8c;
    virtual void reuse() = imac 0x4df5e0, m1 0x43efe0;
    virtual void calculateVertexPoints() = imac 0x4deee0, m1 0x43eb30;

    cocos2d::ccVertex3F originalVertex(cocos2d::CCPoint const&) = imac 0x4df550, m1 0x43ef68;
    void setVertex(cocos2d::CCPoint const&, cocos2d::ccVertex3F const&) = imac 0x4df590, m1 0x43ef9c;
    cocos2d::ccVertex3F vertex(cocos2d::CCPoint const&) = imac 0x4df510, m1 0x43ef34;
}

[[link(win, android)]]
class cocos2d::CCGrid3DAction : cocos2d::CCGridAction {
    virtual cocos2d::CCGridBase* getGrid() = imac 0x1ed6c0, m1 0x19f8e8;

    cocos2d::ccVertex3F originalVertex(cocos2d::CCPoint const&) = imac 0x1ed700, m1 0x19f920;
    void setVertex(cocos2d::CCPoint const&, cocos2d::ccVertex3F const&) = imac 0x1ed730, m1 0x19f950;
    cocos2d::ccVertex3F vertex(cocos2d::CCPoint const&) = imac 0x1ed6d0, m1 0x19f8f0;
}

[[link(win, android)]]
class cocos2d::CCGridAction : cocos2d::CCActionInterval {
    static cocos2d::CCGridAction* create(float, cocos2d::CCSize const&) = imac 0x1ed3d0, m1 0x19f5d4;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x1ed5b0, m1 0x19f7e8;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x1ed4d0, m1 0x19f6f8;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x1ed5a0, m1 0x19f7e4;
    virtual bool initWithDuration(float, cocos2d::CCSize const&) = imac 0x1ed4a0, m1 0x19f6b4;
    virtual cocos2d::CCGridBase* getGrid() = imac 0x1ed590, m1 0x19f7dc;
}

[[link(win, android)]]
class cocos2d::CCGridBase : cocos2d::CCObject {
    virtual ~CCGridBase() = imac 0x4de830, m1 0x43e4dc;

    static cocos2d::CCGridBase* create(cocos2d::CCSize const&) = imac 0x4de4f0, m1 0x43e194;
    static cocos2d::CCGridBase* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = imac 0x4de6a0, m1 0x43e34c;

    virtual void blit() = imac 0x4deaf0, m1 0x43e77c;
    virtual void reuse() = imac 0x4deb00, m1 0x43e780;
    virtual void calculateVertexPoints() = imac 0x4deb10, m1 0x43e784;

    void afterDraw(cocos2d::CCNode*) = imac 0x4dea30, m1 0x43e6ac;
    void beforeDraw() = imac 0x4dea00, m1 0x43e678;
    bool initWithSize(cocos2d::CCSize const&) = imac 0x4de5b0, m1 0x43e258;
    bool initWithSize(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = imac 0x4de770, m1 0x43e408;
    void set2DProjection() = imac 0x4de970, m1 0x43e5fc;
    void setActive(bool) = imac 0x4de920, m1 0x43e5b8;
    void setTextureFlipped(bool) = imac 0x4de950, m1 0x43e5dc;
}

[[link(win, android)]]
class cocos2d::CCHide : cocos2d::CCActionInstant {
    static cocos2d::CCHide* create();

    // CCHide(cocos2d::CCHide const&);
    // CCHide();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x88f9e0, m1 0x783af8;
    virtual void update(float) = imac 0x88f970, m1 0x783a8c;
    virtual cocos2d::CCFiniteTimeAction* reverse();
}

[[link(win, android)]]
class cocos2d::CCImage : cocos2d::CCObject {
    // int getBitsPerComponent() const;
    // unsigned char* getData();
    // int getDataLen();
    // unsigned short getHeight() const;
    // unsigned short getWidth() const;
    CCImage() = imac 0x47ed40, m1 0x3e9000;
    virtual ~CCImage() = imac 0x47edc0, m1 0x3e902c;

    bool _initWithJpgData(void*, int);
    bool _initWithPngData(void*, int);
    bool _initWithRawData(void*, int, int, int, int, bool) = imac 0x47f6c0, m1 0x348cf0, ios inline;
    bool _initWithTiffData(void*, int);
    // bool _initWithWebpData(void*, int);
    bool _saveImageToJPG(char const*);
    bool _saveImageToPNG(char const*, bool);
    bool initWithImageData(void*, int, cocos2d::CCImage::EImageFormat, int, int, int, int) = imac 0x47f050, m1 0x3e9498;
    bool initWithImageFile(char const*, cocos2d::CCImage::EImageFormat) = imac 0x47ee40, m1 0x3e90ec;
    bool initWithImageFileThreadSafe(char const*, cocos2d::CCImage::EImageFormat) = imac 0x47f620, m1 0x3e9890;
    bool initWithString(char const*, int, int, cocos2d::CCImage::ETextAlign, char const*, int) = imac 0x47f740, m1 0x3e99c4, ios inline;
    [[missing(win, mac)]]
    bool initWithStringShadowStroke(char const*, int, int, cocos2d::CCImage::ETextAlign, char const*, int, float, float, float, bool, float, float, float, float, bool, float, float, float, float);
    // bool hasAlpha();
    // bool isPremultipliedAlpha();
    [[link(mac, ios)]]
    bool saveToFile(char const*, bool);
}

[[link(win, android)]]
class cocos2d::CCIMEDelegate {
    protected CCIMEDelegate() = imac 0x4b4d60, m1 0x419574;
    virtual ~CCIMEDelegate() = imac 0x4b4f60, m1 0x419784;

    virtual bool attachWithIME() = m1 0x4198ec;
    virtual bool detachWithIME() = imac 0xbd690, m1 0x419b24;
}

[[link(win, android)]]
class cocos2d::CCIMEDispatcher {
    CCIMEDispatcher() = imac 0x4b5420, m1 0x419c90, ios inline;
    ~CCIMEDispatcher() = imac 0x4b54a0, m1 0x419cf8;

    static cocos2d::CCIMEDispatcher* sharedDispatcher() = imac 0x4b4e50, m1 0x419670;

    void addDelegate(cocos2d::CCIMEDelegate*) = imac 0x4b4ef0, m1 0x419718;
    bool attachDelegateWithIME(cocos2d::CCIMEDelegate*) = imac 0x4b5220, m1 0x419a48;
    bool detachDelegateWithIME(cocos2d::CCIMEDelegate*) = imac 0x4b53c0, m1 0x419c18;
    void dispatchDeleteBackward() = imac 0x4b55d0, m1 0x419e28;
    void dispatchDeleteForward() = imac 0x4b55f0, m1 0x419e48, ios inline;
    void dispatchInsertText(char const*, int, cocos2d::enumKeyCodes) = imac 0x4b55a0, m1 0x419dfc;
    void dispatchKeyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4b5740, m1 0x419fe8;
    void dispatchKeyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4b56a0;
    void dispatchKeyboardWillHide() = imac 0x4b5790, m1 0x41a04c, ios inline;
    void dispatchKeyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4b56f0, m1 0x419f84;
    void dispatchKeyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4b5650;
    char const* getContentText() = imac 0x4b5610, m1 0x419e68, ios inline;
    bool hasDelegate() = imac 0x4b5580, m1 0x419de8, ios inline;
    void removeDelegate(cocos2d::CCIMEDelegate*) = imac 0x4b5050, m1 0x41987c;
}

[[link(win, android)]]
class cocos2d::CCJumpBy : cocos2d::CCActionInterval {
    static cocos2d::CCJumpBy* create(float, cocos2d::CCPoint const&, float, unsigned int) = imac 0x3a23c0, m1 0x32a5e8, ios inline;

    // CCJumpBy(cocos2d::CCJumpBy const&);
    // CCJumpBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x3a2550, m1 0x32a730, ios inline;
    virtual void update(float t) = imac 0x3a2710, m1 0x32a8c0, ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3a26c0, m1 0x32a86c, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a2840, m1 0x32a9bc, ios inline;

    bool initWithDuration(float, cocos2d::CCPoint const&, float, unsigned int) = imac 0x3a24e0, m1 0x32a6d4, ios inline;
}

[[link(win, android)]]
class cocos2d::CCJumpTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCJumpTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x89ce60, m1 0x7903c8;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);
}

[[link(win, android)]]
class cocos2d::CCJumpTo : cocos2d::CCActionInterval {
    static cocos2d::CCJumpTo* create(float, cocos2d::CCPoint const&, float, int) = imac 0x3a28a0, m1 0x32aa14, ios inline;

    // CCJumpTo(cocos2d::CCJumpTo const&);
    // CCJumpTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x3a29c0, m1 0x32ab0c, ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3a2b30, m1 0x32ac54, ios inline;
}

[[link(win, android, ios)]]
class cocos2d::CCKeyboardDispatcher : cocos2d::CCObject {
    // bool getAltKeyPressed() const;
    // bool getBlockRepeat() const;
    // bool getCommandKeyPressed() const;
    // bool getControlKeyPressed() const;
    // bool getShiftKeyPressed() const;
    // void setBlockRepeat(bool);
    // CCKeyboardDispatcher(cocos2d::CCKeyboardDispatcher const&);
    CCKeyboardDispatcher();
    virtual ~CCKeyboardDispatcher();

    static cocos2d::enumKeyCodes convertKeyCode(cocos2d::enumKeyCodes) = imac 0x1e6600;

    void addDelegate(cocos2d::CCKeyboardDelegate*) = imac 0x6d04e0, m1 0x4ed244;
    bool dispatchKeyboardMSG(cocos2d::enumKeyCodes, bool, bool, double) = imac 0x1e5d80, m1 0x19947c;
    void forceAddDelegate(cocos2d::CCKeyboardDelegate*) = imac 0x6d0530, m1 0x4ed2a0;
    void forceRemoveDelegate(cocos2d::CCKeyboardDelegate*);
    char const* keyToString(cocos2d::enumKeyCodes) = imac 0x1e6ab0, m1 0x199fc4;
    void removeDelegate(cocos2d::CCKeyboardDelegate*);
    void updateModifierKeys(bool, bool, bool, bool) = imac 0x1e6a70, m1 0x199fac;

    [[renamed_from(m_pDelegates)]]
    cocos2d::CCArray* m_pHandlers;
    bool m_bLocked;
    bool m_bToAdd;
    bool m_bToRemove;
    cocos2d::ccCArray* m_pHandlersToAdd;
    cocos2d::ccCArray* m_pHandlersToRemove;
    bool m_bShiftPressed;
    bool m_bControlPressed;
    bool m_bAltPressed;
    bool m_bCommandPressed;
    bool m_bBlockRepeat;
}

[[link(win, android, ios)]]
class cocos2d::CCKeyboardHandler : cocos2d::CCObject {
    virtual ~CCKeyboardHandler();

    static cocos2d::CCKeyboardHandler* handlerWithDelegate(cocos2d::CCKeyboardDelegate*) = imac 0x42bcd0, m1 0x3a2f80;

    virtual bool initWithDelegate(cocos2d::CCKeyboardDelegate*) = imac 0x42bc80, m1 0x3a2f2c;

    cocos2d::CCKeyboardDelegate* getDelegate();
    void setDelegate(cocos2d::CCKeyboardDelegate*);
}

[[link(win, android)]]
class cocos2d::CCKeypadDispatcher : cocos2d::CCObject {
    // CCKeypadDispatcher(cocos2d::CCKeypadDispatcher const&);
    CCKeypadDispatcher();
    virtual ~CCKeypadDispatcher();

    void addDelegate(cocos2d::CCKeypadDelegate*) = imac 0x6d04e0, m1 0x5e7820;
    bool dispatchKeypadMSG(cocos2d::ccKeypadMSGType) = imac 0x6d0560, m1 0x5e78b8;
    void forceAddDelegate(cocos2d::CCKeypadDelegate*) = imac 0x6d0530, m1 0x5e787c;
    void forceRemoveDelegate(cocos2d::CCKeypadDelegate*);
    void removeDelegate(cocos2d::CCKeypadDelegate*);

    [[renamed_from(m_pDelegates)]]
    cocos2d::CCArray* m_pHandlers;
    bool m_bLocked;
    bool m_bToAdd;
    bool m_bToRemove;
    cocos2d::ccCArray* m_pHandlersToAdd;
    cocos2d::ccCArray* m_pHandlersToRemove;
}

[[link(win, android)]]
class cocos2d::CCKeypadHandler : cocos2d::CCObject {
    virtual ~CCKeypadHandler();

    static cocos2d::CCKeypadHandler* handlerWithDelegate(cocos2d::CCKeypadDelegate*) = imac 0x3aaea0, m1 0x3322ec;

    virtual bool initWithDelegate(cocos2d::CCKeypadDelegate*) = imac 0x3aae50, m1 0x332298;

    cocos2d::CCKeypadDelegate* getDelegate();
    void setDelegate(cocos2d::CCKeypadDelegate*) = ios inline;
}

[[link(win, android)]]
class cocos2d::CCLabelAtlas : cocos2d::CCAtlasNode, cocos2d::CCLabelProtocol {
    static cocos2d::CCLabelAtlas* create(char const*, char const*) = imac 0x879b40, m1 0x76f5b8;
    static cocos2d::CCLabelAtlas* create(char const*, char const*, unsigned int, unsigned int, unsigned int) = imac 0x879940, m1 0x76f388;

    virtual void updateAtlasValues() = imac 0x489de0, m1 0x76fb3c;
    virtual void setString(char const*) = imac 0x87a3d0, m1 0x76fd8c;
    virtual char const* getString() = imac 0x87a4c0, m1 0x76fe64;

    bool initWithString(char const*, char const*) = imac 0x879be0, m1 0x76f64c;
    bool initWithString(char const*, char const*, unsigned int, unsigned int, unsigned int) = imac 0x879a40, m1 0x76f49c;
    bool initWithString(char const*, cocos2d::CCTexture2D*, unsigned int, unsigned int, unsigned int) = imac 0x879ad0, m1 0x76f534;
}

[[link(win, android)]]
class cocos2d::CCLabelBMFont : cocos2d::CCSpriteBatchNode, cocos2d::CCLabelProtocol, cocos2d::CCRGBAProtocol {
    CCLabelBMFont() = imac 0x6aa3f0, m1 0x5c4f14;
    virtual ~CCLabelBMFont() = imac 0x6aa520, m1 0x5c4ff0;

    static cocos2d::CCLabelBMFont* create() = imac 0x5dddd0, m1 0x5c47c0, ios inline;
    static cocos2d::CCLabelBMFont* create(char const*, char const*) = imac 0x6a9f80, m1 0x5c4a88;
    static cocos2d::CCLabelBMFont* create(char const* str, char const* fntFile, float width) = imac 0x6a9ed0, m1 0x5c49c8, ios inline;
    static cocos2d::CCLabelBMFont* create(char const* str, char const* fntFile, float width, cocos2d::CCTextAlignment alignment) = imac 0x6a9d80, m1 0x5c4844, ios inline;
    static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = imac 0x6a9e30, m1 0x5c4908;
    static cocos2d::CCLabelBMFont* createBatched(char const*, char const*, cocos2d::CCArray*, int) = imac 0x6aa2f0, m1 0x5c4dfc;
    static void purgeCachedData() = imac 0x6a9cd0, m1 0x5c4788;

    virtual bool init() = imac 0x64130, m1 0x5c4ec4;
    virtual void setScaleX(float) = imac 0x6acd10, m1 0x5c7210;
    virtual void setScaleY(float) = imac 0x6acd30, m1 0x5c723c;
    virtual void setScale(float) = imac 0x6accf0, m1 0x5c71e4;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x6abb20, m1 0x5c6434;
    virtual void setString(char const*) = imac 0x6ab050, m1 0x5c5a08;
    virtual void setString(char const*, bool) = imac 0x6ab0a0, m1 0x5c5a2c;
    virtual char const* getString() = imac 0x6ab2d0, m1 0x5c5c54;
    virtual void setCString(char const*) = imac 0x6ab320, m1 0x5c5c8c;
    virtual void updateLabel() = imac 0x6abb60, m1 0x5c6488;
    virtual void setAlignment(cocos2d::CCTextAlignment) = imac 0x6acc90, m1 0x5c71b4;
    virtual void setWidth(float) = imac 0x6accb0, m1 0x5c71c4;
    virtual void setLineBreakWithoutSpace(bool) = imac 0x6accd0, m1 0x5c71d4;
    virtual void setString(unsigned short*, bool) = imac 0x6ab120, m1 0x5c5ab4;
    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x5c5cb8;
    virtual cocos2d::ccColor3B const& getColor() = m1 0x5c5c98;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = m1 0x5c5ca8;
    virtual unsigned char getDisplayedOpacity() = m1 0x5c5e5c;
    virtual unsigned char getOpacity() = m1 0x5c5e4c;
    virtual void setOpacity(unsigned char) = m1 0x5c5e6c;
    virtual void setOpacityModifyRGB(bool) = imac 0x6ab680, m1 0x5c5fd8;
    virtual bool isOpacityModifyRGB() = imac 0x6ab7e0, m1 0x5c6138;
    virtual bool isCascadeColorEnabled() = imac 0x6abaa0, m1 0x5c63f4;
    virtual void setCascadeColorEnabled(bool) = imac 0x6abac0, m1 0x5c6404;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = imac 0x6ab900, m1 0x5c6260;
    virtual bool isCascadeOpacityEnabled() = imac 0x6abae0, m1 0x5c6414;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x6abb00, m1 0x5c6424;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x6ab800, m1 0x5c6148;

    // void setIsBatched(bool);
    // void setTargetArray(cocos2d::CCArray*);
    void createFontChars() = imac 0x6aa750, m1 0x5c51dc;
    // cocos2d::CCBMFontConfiguration* getConfiguration() const;
    // int getExtraKerning() const;
    char const* getFntFile() = imac 0x6ace30, m1 0x5c733c, ios inline;
    // bool getIsBatched() const;
    float getLetterPosXLeft(cocos2d::CCSprite*, float, bool);
    float getLetterPosXRight(cocos2d::CCSprite*, float, bool);
    bool initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = imac 0x6aa030, m1 0x5c4b50;
    int kerningAmountForFirst(unsigned short, unsigned short) = imac 0x6aa630, m1 0x5c50bc;
    void limitLabelWidth(float, float, float) = imac 0x6ace70, m1 0x5c7360;
    // cocos2d::CCArray* getTargetArray() const;
    // void setExtraKerning(int);
    void setFntFile(char const* filename) = imac 0x6acd50, m1 0x5c7268, ios inline;

    uint16_t* m_sString;
    std::string m_sFntFile;
    uint16_t* m_sInitialString;
    std::string m_sInitialStringUTF8;
    cocos2d::CCTextAlignment m_pAlignment;
    float m_fWidth;
    cocos2d::CCBMFontConfiguration* m_pConfiguration;
    bool m_bLineBreakWithoutSpaces;
    cocos2d::CCPoint m_tImageOffset;
    cocos2d::CCSprite* m_pReusedChar;
    uint8_t m_cDisplayedOpacity;
    uint8_t m_cRealOpacity;
    cocos2d::ccColor3B m_tDisplayedColor;
    cocos2d::ccColor3B m_tRealColor;
    bool m_bCascadeColorEnabled;
    bool m_bCascadeOpacityEnabled;
    bool m_bIsOpacityModifyRGB;
    bool m_bIsBatched;
    cocos2d::CCArray* m_pTargetArray;
    cocos2d::CCTexture2D* m_pSomeTexture;
    int m_nExtraKerning;
}

[[link(win, android)]]
class cocos2d::CCLabelTTF : cocos2d::CCSprite, cocos2d::CCLabelProtocol {
    // void setVerticalAlignment(cocos2d::CCVerticalTextAlignment);
    // CCLabelTTF(cocos2d::CCLabelTTF const&);
    CCLabelTTF() = imac 0x3a6480, m1 0x32dee4;
    virtual ~CCLabelTTF() = m1 0x32e064;

    static cocos2d::CCLabelTTF* create() = imac 0x3a6800, m1 0x9ae6c, ios inline;
    static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize) = imac 0x3a6920, m1 0x32e318, ios inline;
    static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment hAlignment) = imac 0x3a6aa0, m1 0x32e474, ios inline;
    static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment hAlignment, cocos2d::CCVerticalTextAlignment vAlignment) = imac 0x3a6940, m1 0x32e32c, ios inline;
    static cocos2d::CCLabelTTF* createWithFontDefinition(char const*, cocos2d::ccFontDefinition&) = imac 0x3a6c20, m1 0x32e5dc, ios inline;

    virtual bool init() = imac 0x3a6e00, m1 0x32e7c8;
    virtual void setString(char const*) = imac 0x3a6f30, m1 0x32e8c4;
    virtual char const* getString() = imac 0x3a7160, m1 0x32eac0;

    cocos2d::ccFontDefinition _prepareTextDefinition(bool) = imac 0x3a76a0, m1 0x32ef34;
    void _updateWithTextDefinition(cocos2d::ccFontDefinition&, bool) = imac 0x3a6e60, m1 0x32e80c, ios inline;
    char const* description() = imac 0x3a71b0, m1 0x32eaf8, ios inline;
    void disableShadow(bool) = imac 0x3a74f0, m1 0x32ed94, ios inline;
    void disableStroke(bool) = imac 0x3a7510, m1 0x32ed9c, ios inline;
    void enableShadow(cocos2d::CCSize const&, float, float, bool) = imac 0x3a74e0, m1 0x32ed90, ios inline;
    void enableStroke(cocos2d::ccColor3B const&, float, bool) = imac 0x3a7500, m1 0x32ed98, ios inline;
    // cocos2d::CCSize getDimensions();
    char const* getFontName() = imac 0x3a7380, m1 0x32ec4c, ios inline;
    // float getFontSize();
    // cocos2d::CCTextAlignment getHorizontalAlignment();
    cocos2d::ccFontDefinition* getTextDefinition() = imac 0x3a7550, m1 0x32edb4, ios inline;
    bool initWithString(char const* label, char const* fontName, float fontSize) = imac 0x3a6e30, m1 0x32e7f0;
    bool initWithString(char const* label, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment alignment) = imac 0x3a6e50, m1 0x32e804, ios inline;
    bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment) = imac 0x10a4d0, m1 0x32e47c;
    bool initWithStringAndTextDefinition(char const*, cocos2d::ccFontDefinition&) = imac 0x3a6d90, m1 0x32e744, ios inline;
    // cocos2d::CCVerticalTextAlignment getVerticalAlignment();
    // void setDimensions(cocos2d::CCSize const&);
    void setFontFillColor(cocos2d::ccColor3B const&, bool) = imac 0x3a7520, m1 0x32eda0, ios inline;
    void setFontName(char const*) = imac 0x3a73a0, m1 0x32ec64, ios inline;
    // void setFontSize(float);
    // void setHorizontalAlignment(cocos2d::CCTextAlignment);
    void setTextDefinition(cocos2d::ccFontDefinition*) = imac 0x3a7530, m1 0x32eda4, ios inline;
    bool updateTexture() = imac 0x3a6f80, m1 0x32e90c;

    cocos2d::CCSize m_tDimensions;
    cocos2d::CCTextAlignment m_hAlignment;
    cocos2d::CCVerticalTextAlignment m_vAlignment;
    std::string* m_pFontName;
    float m_fFontSize;
    std::string m_string;
    bool m_shadowEnabled;
    cocos2d::CCSize m_shadowOffset;
    float m_shadowOpacity;
    float m_shadowBlur;
    bool m_strokeEnabled;
    cocos2d::ccColor3B m_strokeColor;
    float m_strokeSize;
    cocos2d::ccColor3B m_textFillColor;
}

[[link(win, android)]]
class cocos2d::CCLayer : cocos2d::CCNode, cocos2d::CCTouchDelegate, cocos2d::CCAccelerometerDelegate, cocos2d::CCKeypadDelegate, cocos2d::CCKeyboardDelegate, cocos2d::CCMouseDelegate {
    // CCLayer(cocos2d::CCLayer const&);
    CCLayer() = imac 0x4a9260, m1 0x40f6cc;
    virtual ~CCLayer() = imac 0x4a9550, m1 0x40f8fc;

    static cocos2d::CCLayer* create() = imac 0x4a9820, m1 0x40fae8;

    virtual bool init() = imac 0x4a97c0, m1 0x40fa8c;
    virtual void onEnter() = imac 0x4aa0b0, m1 0x410338;
    virtual void onEnterTransitionDidFinish() = imac 0x4aa2b0, m1 0x41055c;
    virtual void onExit() = imac 0x4aa1b0, m1 0x410448;
    virtual void registerWithTouchDispatcher() = imac 0x4a9950, m1 0x40fbf8;
    virtual void registerScriptTouchHandler(int, bool, int, bool) = imac 0x4a99d0, m1 0x40fc78;
    virtual void unregisterScriptTouchHandler() = imac 0x4a9a30, m1 0x40fcd8;
    virtual bool isTouchEnabled() = imac 0x4a9ae0, m1 0x40fd94;
    virtual void setTouchEnabled(bool) = imac 0x4a9af0, m1 0x40fd9c;
    virtual void setTouchMode(cocos2d::ccTouchesMode) = imac 0x4a9b50, m1 0x40fdfc;
    virtual int getTouchMode() = imac 0x4a9c00, m1 0x40febc;
    virtual void setTouchPriority(int) = imac 0x4a9ba0, m1 0x40fe58;
    virtual int getTouchPriority() = imac 0x4a9bf0, m1 0x40feb4;
    virtual bool isAccelerometerEnabled() = imac 0x4a9c10, m1 0x40fec4;
    virtual void setAccelerometerEnabled(bool) = imac 0x4a9c20, m1 0x40fecc;
    virtual void setAccelerometerInterval(double) = imac 0x4a9c60, m1 0x40ff08;
    virtual bool isKeypadEnabled() = imac 0x4a9d60, m1 0x410004;
    virtual void setKeypadEnabled(bool) = imac 0x4a9d70, m1 0x41000c;
    virtual bool isKeyboardEnabled() = imac 0x4a9de0, m1 0x410084;
    virtual void setKeyboardEnabled(bool) = imac 0x4a9df0, m1 0x41008c;
    virtual bool isMouseEnabled() = imac 0x4a9e50, m1 0x4100f8;
    virtual void setMouseEnabled(bool) = imac 0x4a9e60, m1 0x410100;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4aa2f0, m1 0x410598;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4aa370, m1 0x410648;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4aa3f0, m1 0x4106d8;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4aa470, m1 0x410768;
    virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4aa4f0, m1 0x4107f8;
    virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4aa570, m1 0x410888;
    virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4aa5f0, m1 0x410918;
    virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4aa670, m1 0x4109a8;
    virtual void setPreviousPriority(int) = imac 0x2b90, m1 0x28e0;
    virtual int getPreviousPriority() = imac 0x2ba0, m1 0x28e8;
    virtual void didAccelerate(cocos2d::CCAcceleration*) = imac 0x4a9c90, m1 0x40ff40;
    virtual void keyBackClicked() = imac 0x4a9f10, m1 0x4101a8;
    virtual void keyMenuClicked() = imac 0x4a9fb0, m1 0x410248;
    virtual void keyDown(cocos2d::enumKeyCodes, double) = imac 0x4aa030, m1 0x4102c8;

    // cocos2d::CCScriptHandlerEntry* getScriptAccelerateHandlerEntry();
    // cocos2d::CCScriptHandlerEntry* getScriptKeypadHandlerEntry();
    // cocos2d::CCTouchScriptHandlerEntry* getScriptTouchHandlerEntry();
    int excuteScriptTouchHandler(int, cocos2d::CCSet*) = imac 0x4a9aa0, m1 0x40fd4c, ios inline;
    int excuteScriptTouchHandler(int, cocos2d::CCTouch*) = imac 0x4a9a60, m1 0x40fd04, ios inline;
    void registerScriptAccelerateHandler(int) = imac 0x4a9d10, m1 0x40ffc8, ios inline;
    void registerScriptKeypadHandler(int) = imac 0x4a9ec0, m1 0x41016c, ios inline;
    void unregisterScriptAccelerateHandler() = imac 0x4a9520, m1 0x40f8d0, ios inline;
    void unregisterScriptKeypadHandler() = imac 0x4a94f0, m1 0x40f8a4, ios inline;

    bool m_bTouchEnabled;
    bool m_bAccelerometerEnabled;
    bool m_bKeypadEnabled;
    bool m_bKeyboardEnabled;
    bool m_bMouseEnabled;
    cocos2d::CCTouchScriptHandlerEntry* m_pScriptTouchHandlerEntry;
    cocos2d::CCScriptHandlerEntry* m_pScriptKeypadHandlerEntry;
    cocos2d::CCScriptHandlerEntry* m_pScriptAccelerateHandlerEntry;
    int m_nTouchPriority;
    cocos2d::ccTouchesMode m_eTouchMode;
    int m_uPreviousPriority;
}

[[link(win, android)]]
class cocos2d::CCLayerColor : cocos2d::CCLayerRGBA, cocos2d::CCBlendProtocol {
    // CCLayerColor(cocos2d::CCLayerColor const&);
    CCLayerColor() = m1 0x4114cc, imac 0x4ab4b0;
    virtual ~CCLayerColor() = m1 0x4116c4, imac 0x4ab860;

    static cocos2d::CCLayerColor* create() = imac 0x4abb10, m1 0x4118f4, ios inline;
    static cocos2d::CCLayerColor* create(cocos2d::ccColor4B const&) = imac 0x4abec0, m1 0x411be8;
    static cocos2d::CCLayerColor* create(cocos2d::ccColor4B const&, float, float) = imac 0x4abcf0, m1 0x411a6c;

    virtual bool init() = imac 0x4ac090, m1 0x411d34;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x4ac280, m1 0x411f04;
    virtual void draw() = imac 0x4ac3c0, m1 0x412064;
    virtual bool initWithColor(cocos2d::ccColor4B const&, float, float) = imac 0x4ac0e0, m1 0x411d80;
    virtual bool initWithColor(cocos2d::ccColor4B const&) = imac 0x4ac1d0, m1 0x411e6c;
    virtual void updateColor() = imac 0x4ac370, m1 0x411fe8;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x4ac490, m1 0x412130;
    virtual void setOpacity(unsigned char) = imac 0x4ac610, m1 0x4122e4;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x4abaf0, m1 0x4118e4;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x4abad0, m1 0x4118d4;

    void addToVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x4ac240, m1 0x411ed8;
    void changeHeight(float) = imac 0x4ac330, m1 0x411fa0, ios inline;
    void changeWidth(float) = imac 0x4ac2f0, m1 0x411f5c, ios inline;
    void changeWidthAndHeight(float, float) = imac 0x4ac2b0, m1 0x411f1c, ios inline;
    void setVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x4ac220, m1 0x411ebc;

    std::array<cocos2d::ccVertex2F, 4> m_pSquareVertices;
    std::array<cocos2d::ccColor4F, 4> m_pSquareColors;
    cocos2d::ccBlendFunc m_tBlendFunc;
}

[[link(win, android)]]
class cocos2d::CCLayerGradient : cocos2d::CCLayerColor {
    static cocos2d::CCLayerGradient* create() = imac 0x4acb50, m1 0x41277c, ios inline;
    static cocos2d::CCLayerGradient* create(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&) = imac 0x4ac740, m1 0x412424;
    static cocos2d::CCLayerGradient* create(cocos2d::ccColor4B const& a1, cocos2d::ccColor4B const& a2, cocos2d::CCPoint const& a3) = imac 0x4ac940, m1 0x4125cc, ios inline;

    // CCLayerGradient(cocos2d::CCLayerGradient const&);
    // CCLayerGradient();
    virtual bool init() = imac 0x4acd40, m1 0x412908;
    virtual void visit() = imac 0x4ad230, m1 0x412d88;
    virtual void updateColor() = imac 0x4ace80, m1 0x412a38;
    virtual bool initWithColor(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&) = imac 0x4acd70, m1 0x412940;
    virtual bool initWithColor(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&, cocos2d::CCPoint const&) = imac 0x4acdd0, m1 0x4129a0;
    virtual cocos2d::ccColor3B const& getStartColor() = imac 0x4ad070, m1 0x412c58;
    virtual void setStartColor(cocos2d::ccColor3B const&) = imac 0x4ad080, m1 0x412c60;
    virtual cocos2d::ccColor3B const& getEndColor() = imac 0x4ad0d0, m1 0x412c8c;
    virtual void setEndColor(cocos2d::ccColor3B const&) = imac 0x4ad0a0, m1 0x412c6c;
    virtual unsigned char getStartOpacity() = imac 0x4ad100, m1 0x412ca4;
    virtual void setStartOpacity(unsigned char) = imac 0x4ad0e0, m1 0x412c94;
    virtual unsigned char getEndOpacity() = imac 0x4ad130, m1 0x412cbc;
    virtual void setEndOpacity(unsigned char) = imac 0x4ad110, m1 0x412cac;
    virtual cocos2d::CCPoint const& getVector() = imac 0x4ad170, m1 0x412cf4;
    virtual void setVector(cocos2d::CCPoint const&) = imac 0x4ad140, m1 0x412cc4;
    virtual void setCompressedInterpolation(bool) = imac 0x4ad210, m1 0x412d78;
    virtual bool isCompressedInterpolation() = imac 0x4ad200, m1 0x412d70;

    // bool getShouldPremultiply() const;
    // void setShouldPremultiply(bool);
    void setValues(cocos2d::ccColor3B const&, unsigned char, cocos2d::ccColor3B const&, unsigned char, cocos2d::CCPoint const&) = imac 0x4ad180, m1 0x412cfc;

    cocos2d::ccColor3B m_startColor;
    cocos2d::ccColor3B m_endColor;
    uint8_t m_startOpacity;
    uint8_t m_endOpacity;
    cocos2d::CCPoint m_AlongVector;
    bool m_bCompressedInterpolation;
    bool m_bShouldPremultiply;
}

[[link(win, android)]]
class cocos2d::CCLayerMultiplex : cocos2d::CCLayer {
    CCLayerMultiplex() = m1 0x412e88;
    virtual ~CCLayerMultiplex() = imac 0x4ad4d0;

    static cocos2d::CCLayerMultiplex* create() = imac 0x4ad9f0, m1 0x4132a8;
    static cocos2d::CCLayerMultiplex* create(cocos2d::CCLayer*, ...) = mac inline;
    static cocos2d::CCLayerMultiplex* createWithArray(cocos2d::CCArray*) = imac 0x4adba0, m1 0x413400;
    static cocos2d::CCLayerMultiplex* createWithLayer(cocos2d::CCLayer*) = imac 0x4ad9e0, m1 0x413288;

    void addLayer(cocos2d::CCLayer*) = imac 0x4addf0, m1 0x4135f0;
    bool initWithArray(cocos2d::CCArray*) = imac 0x4add30, m1 0x413544;
    bool initWithLayers(cocos2d::CCLayer*, va_list) = imac 0x4ad8c0, m1 0x4131ac;
    void switchTo(unsigned int) = imac 0x4ade10, m1 0x4135f8;
    void switchToAndReleaseMe(unsigned int) = imac 0x4ade80, m1 0x413664;
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA : cocos2d::CCLayer, cocos2d::CCRGBAProtocol {
    // static cocos2d::CCLayerRGBA* create();
    // CCLayerRGBA(cocos2d::CCLayerRGBA const&);
    CCLayerRGBA() = imac 0x4aa6f0, m1 0x410a38;
    virtual ~CCLayerRGBA() = m1 0x410c08, imac 0x4aaa60;

    virtual bool init() = imac 0x4aacd0, m1 0x410e18;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x4aaf10, m1 0x411050;
    virtual cocos2d::ccColor3B const& getColor() = imac 0x4aaed0, m1 0x411030;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = imac 0x4aaef0, m1 0x411040;
    virtual unsigned char getDisplayedOpacity() = imac 0x4aad70, m1 0x410eb4;
    virtual unsigned char getOpacity() = imac 0x4aad50, m1 0x410ea4;
    virtual void setOpacity(unsigned char) = imac 0x4aad90, m1 0x410ec4;
    virtual bool isCascadeColorEnabled() = imac 0x4ab470, m1 0x4114ac;
    virtual void setCascadeColorEnabled(bool) = imac 0x4ab490, m1 0x4114bc;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = imac 0x4ab210, m1 0x41137c;
    virtual bool isCascadeOpacityEnabled() = imac 0x4ab430, m1 0x41148c;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x4ab450, m1 0x41149c;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x4ab090, m1 0x4111e4;

    uint8_t _displayedOpacity;
    uint8_t _realOpacity;
    cocos2d::ccColor3B _displayedColor;
    cocos2d::ccColor3B _realColor;
    bool _cascadeOpacityEnabled;
    bool _cascadeColorEnabled;
}

[[link(win, android)]]
class cocos2d::CCLens3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCLens3D* create(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float) = imac 0x26a640, m1 0x2118f4;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x26a870, m1 0x211b20;
    virtual void update(float) = imac 0x26aa10, m1 0x211ca0;

    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float) = imac 0x26a790, m1 0x211a40;
    void setPosition(cocos2d::CCPoint const&) = imac 0x26a830, m1 0x211adc;
}

[[link(android)]]
class cocos2d::CCLightning : cocos2d::CCNode, cocos2d::CCRGBAProtocol {
    CCLightning() = win 0x48130, imac 0x6af030, m1 0x5c916c;
    virtual ~CCLightning() = win inline, imac 0x6af1d0, m1 0x5c92bc;

    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint) = win inline, imac 0x6af2f0, m1 0x5c9394, ios inline;
    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = win 0x48270, imac 0x6af4b0, m1 0x5c9500;

    virtual void draw() = win 0x9999999, imac 0x6af7a0, m1 0x5c97b0;
    virtual bool isOpacityModifyRGB() = win 0x9999999, imac 0x6afac0, m1 0x5c9a28;
    virtual void setOpacityModifyRGB(bool) = win 0x9999999, imac 0x6afae0, m1 0x5c9a38;
    virtual unsigned char getOpacity() = win 0x9999999, imac 0x6af9f0, m1 0x5c99b0;
    virtual unsigned char getDisplayedOpacity() = win 0x9999999, imac 0x6afa10, m1 0x5c99c0;
    virtual void setOpacity(unsigned char) = win 0x9999999, imac 0x6afa40, m1 0x5c99dc;
    virtual void updateDisplayedOpacity(unsigned char) = win 0x9999999, imac 0x6afb00, m1 0x5c9a48;
    virtual bool isCascadeOpacityEnabled() = win 0x9999999, imac 0x6afb20, m1 0x5c9a58;
    virtual void setCascadeOpacityEnabled(bool) = win 0x9999999, imac 0x6afb40, m1 0x5c9a68;
    virtual cocos2d::ccColor3B const& getColor() = win 0x9999999, imac 0x6afa60, m1 0x5c99ec;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = win 0x9999999, imac 0x6afb60, m1 0x5c9a78;
    virtual void setColor(cocos2d::ccColor3B const&) = win 0x9999999, imac 0x6afa80, m1 0x5c99fc;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = win 0x9999999, imac 0x6afb80, m1 0x5c9a88;
    virtual bool isCascadeColorEnabled() = win 0x9999999, imac 0x6afbc0, m1 0x5c9ab0;
    virtual void setCascadeColorEnabled(bool) = win 0x9999999, imac 0x6afbe0, m1 0x5c9ac0;

    bool initWithStrikePoint(cocos2d::CCPoint) = win inline, imac 0x6af450, m1 0x5c94ac, ios inline;
    bool initWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = win 0x48310, imac 0x6af600, m1 0x5c9620;
    void strike() = win 0x9999999, imac 0x6af740, m1 0x5c9744;
    void strikeFinished() = imac 0x6af9d0, m1 0x5c9994;
    void strikeRandom() = win inline, imac 0x6af8f0, m1 0x5c98ac, ios inline;
    void strikeWithSeed(uint64_t seed) = win inline, imac 0x6af960, m1 0x5c9924, ios inline;

    cocos2d::CCPoint m_strikePoint;
    cocos2d::CCPoint m_strikePoint2;
    bool m_split;
    int m_displacement;
    int m_minDisplacement;
    uint64_t m_seed;
    float m_lineWidth;
    bool m_unkBool;
    bool m_removeAfterFinished;
    float m_duration;
    float m_opacityModify;
    std::array<cocos2d::CCPoint, 200>* m_lightningPoints;
    uint32_t m_numPoints;
    uint8_t m_displayedOpacity;
    uint8_t m_opacity;
    cocos2d::ccColor3B m_displayedColor;
    cocos2d::ccColor3B m_color;
    bool m_cascadeColorEnabled;
    bool m_cascadeOpacityEnabled;
    bool m_opacityModifyEnabled;
}

[[link(win, android)]]
class cocos2d::CCLiquid : cocos2d::CCGrid3DAction {
    static cocos2d::CCLiquid* create(float, cocos2d::CCSize const&, unsigned int, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x26b7a0, m1 0x21291c;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);
}

[[link(win, android)]]
class cocos2d::CCMenu : cocos2d::CCLayerRGBA {
    static cocos2d::CCMenu* create() = imac 0x8735d0, m1 0x769c74;
    static cocos2d::CCMenu* create(cocos2d::CCMenuItem*, ...) = inline;
    static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*) = imac 0x8737d0, m1 0x769dcc;
    static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*) = imac 0x873a20, m1 0x76a018;
    static cocos2d::CCMenu* createWithItems(cocos2d::CCMenuItem*, va_list) = imac 0x873690, m1 0x769cc0;

    virtual bool init() = imac 0x873a30, m1 0x76a038;
    virtual void addChild(cocos2d::CCNode*) = imac 0x873a40, m1 0x76a040;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x873a50, m1 0x76a044;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x873a60, m1 0x76a048;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x602ef0, m1 0x76a098;
    virtual void onExit() = imac 0x873a70, m1 0x76a04c;
    virtual void registerWithTouchDispatcher() = imac 0x873c90, m1 0x76a278;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x873ce0, m1 0x5ce8a0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x873f80, m1 0x76a57c;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x873ea0, m1 0x76a48c;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x873f20, m1 0x76a514;

    // CCMenu(cocos2d::CCMenu const&);
    // CCMenu();
    void alignItemsHorizontally() = imac 0x874300;
    void alignItemsHorizontallyWithPadding(float) = imac 0x874320;
    void alignItemsInColumns(unsigned int, ...) = inline;
    void alignItemsInColumns(unsigned int, va_list) = imac 0x874610, m1 0x76aad8, ios inline;
    void alignItemsInColumnsWithArray(cocos2d::CCArray*) = imac 0x8746e0, m1 0x76ab8c, ios inline;
    void alignItemsInRows(unsigned int, ...) = inline;
    void alignItemsInRows(unsigned int, va_list) = imac 0x874cf0, m1 0x76afe8, ios inline;
    void alignItemsInRowsWithArray(cocos2d::CCArray*) = imac 0x6d77b0, m1 0x5cd9b0, ios inline;
    void alignItemsVertically() = imac 0x874090, ios inline;
    void alignItemsVerticallyWithPadding(float) = imac 0x8740b0;
    void giveMenuTouchPriority(int) = imac 0x873bd0, m1 0x76a1c0;
    bool initWithArray(cocos2d::CCArray*) = imac 0x8738a0, m1 0x769e84;
    cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*) = imac 0x873e40, m1 0x76a440;
    cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*, bool) = imac 0xd98c0, m1 0x76b5d4;
    void setHandlerPriority(int) = imac 0x873c50, m1 0x76a240, ios inline;

    bool m_bEnabled;
    cocos2d::tCCMenuState m_eState;
    cocos2d::CCMenuItem* m_pSelectedItem;
}

[[link(win, android)]]
class cocos2d::CCMenuItem : cocos2d::CCNodeRGBA {
    virtual ~CCMenuItem() = m1 0x32f3e4, imac 0x3a7c90;

    static cocos2d::CCMenuItem* create() = imac 0x3a7a20, m1 0x32f210, ios inline;
    static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a7ae0, m1 0x32f2b8, ios inline;

    virtual void activate() = imac 0x3a7df0, m1 0x32f580;
    virtual void selected() = imac 0x3a7d60, m1 0x32f4fc;
    virtual void unselected() = imac 0x3a7d70, m1 0x32f508;
    virtual void registerScriptTapHandler(int) = imac 0x3a7d80, m1 0x32f510;
    virtual void unregisterScriptTapHandler() = imac 0x3a7db0, m1 0x32f540;
    virtual bool isEnabled() = imac 0x3a7e70, m1 0x32f608;
    virtual void setEnabled(bool) = imac 0x3a7e60, m1 0x32f600;
    virtual bool isSelected() = imac 0x3a7ed0, m1 0x32f62c;

    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a7bb0, m1 0x32f374;
    // CCMenuItem(cocos2d::CCMenuItem const&);
    // CCMenuItem();
    cocos2d::CCRect rect() = imac 0x3a7e80, m1 0x32f610;
    // int getScriptTapHandler();
    void setTarget(cocos2d::CCObject* rec, cocos2d::SEL_MenuHandler selector) = imac 0x3a7ee0, m1 0x32f634, ios inline;

    bool m_bSelected;
    bool m_bEnabled;
    cocos2d::CCObject* m_pListener;
    cocos2d::SEL_MenuHandler m_pfnSelector;
    int m_nScriptTapHandler;
    float m_fSizeMult;
}

[[link(win, android)]]
class cocos2d::CCMenuItemAtlasFont : cocos2d::CCMenuItemLabel {
    static cocos2d::CCMenuItemAtlasFont* create(char const*, char const*, int, int, char) = imac 0x3a8700, m1 0x32fe54;
    static cocos2d::CCMenuItemAtlasFont* create(char const*, char const*, int, int, char, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a87e0, m1 0x32ff1c;

    bool initWithString(char const*, char const*, int, int, char, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a88d0, m1 0x330000;
}

[[link(win, android)]]
class cocos2d::CCMenuItemFont : cocos2d::CCMenuItemLabel {
    static cocos2d::CCMenuItemFont* create(char const*) = imac 0x3a8ce0, m1 0x33041c;
    static cocos2d::CCMenuItemFont* create(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a8ae0, m1 0x330230;
    static char const* fontName() = imac 0x3a8ac0, m1 0x330214;
    static unsigned int fontSize() = imac 0x3a8a60, m1 0x330190;
    static void setFontName(char const*) = imac 0x3a8a70, m1 0x33019c;
    static void setFontSize(unsigned int) = imac 0x3a8a50, m1 0x330184;

    char const* fontNameObj() = imac 0x3a8f30, m1 0x330624;
    unsigned int fontSizeObj() = imac 0x3a8e90, m1 0x3305a0;
    bool initWithString(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a8bb0, m1 0x3302ec;
    void recreateLabel() = imac 0x3a8d90, m1 0x3304bc;
    void setFontNameObj(char const*) = imac 0x3a8ea0, m1 0x3305a8;
    void setFontSizeObj(unsigned int) = imac 0x3a8e10, m1 0x33052c;
}

[[link(win, android)]]
class cocos2d::CCMenuItemImage : cocos2d::CCMenuItemSprite {
    static cocos2d::CCMenuItemImage* create() = imac 0x3a9660, m1 0x330d38, ios inline;
    static cocos2d::CCMenuItemImage* create(char const*, char const*) = imac 0x3a99b0, m1 0x3310ac, ios inline;
    static cocos2d::CCMenuItemImage* create(char const*, char const*, char const*) = imac 0x3a9c10, m1 0x3312cc, ios inline;
    static cocos2d::CCMenuItemImage* create(char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a9b40, m1 0x331214, ios inline;
    static cocos2d::CCMenuItemImage* create(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a9a60, m1 0x331150, ios inline;

    virtual bool init() = imac 0x3a97a0, m1 0x330e74;

    bool initWithNormalImage(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a9870, m1 0x330f5c;
    void setDisabledSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3a9d30, m1 0x3313dc, ios inline;
    void setNormalSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3a9cd0, m1 0x331374, ios inline;
    void setSelectedSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3a9d00, m1 0x3313a8, ios inline;
}

[[link(win, android)]]
class cocos2d::CCMenuItemLabel : cocos2d::CCMenuItem {
    ~CCMenuItemLabel();

    static cocos2d::CCMenuItemLabel* create(cocos2d::CCNode*) = imac 0x3a8210, m1 0x32f940;
    static cocos2d::CCMenuItemLabel* create(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a7fd0, m1 0x32f70c;

    virtual cocos2d::ccColor3B const& getDisabledColor() = imac 0x3a7f00, m1 0x32f640;
    virtual void setDisabledColor(cocos2d::ccColor3B const&) = imac 0x3a7f10, m1 0x32f648;
    virtual cocos2d::CCNode* getLabel() = imac 0x3a7f30, m1 0x32f65c;
    virtual void setLabel(cocos2d::CCNode*) = imac 0x3a7f40, m1 0x32f664;
    virtual void activate() = imac 0x3a84e0, m1 0x32fbf4;
    virtual void selected() = imac 0x3a8570, m1 0x32fc98;
    virtual void unselected() = imac 0x3a8600, m1 0x32fd40;
    virtual void setEnabled(bool) = imac 0x3a8660, m1 0x32fdb0;

    bool initWithLabel(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a8130, m1 0x32f850;
    void setString(char const*) = imac 0x3a8480, m1 0x32fb88;
}

[[link(win, android)]]
class cocos2d::CCMenuItemSprite : cocos2d::CCMenuItem {
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*) = imac 0x3a9190, m1 0x330874, ios inline;
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a9320, m1 0x3309f0, ios inline;
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a91b0, m1 0x330884, ios inline;

    virtual void selected() = imac 0x3a9430, m1 0x330b1c;
    virtual void unselected() = imac 0x3a94d0, m1 0x330ba8;
    virtual void setEnabled(bool) = imac 0x3a9550, m1 0x330c28;
    virtual cocos2d::CCNode* getNormalImage() = imac 0x3a8f60, m1 0x330640;
    virtual void setNormalImage(cocos2d::CCNode*) = imac 0x3a8f70, m1 0x330648;
    virtual cocos2d::CCNode* getSelectedImage() = imac 0x3a9030, m1 0x330714;
    virtual void setSelectedImage(cocos2d::CCNode*) = imac 0x3a9040, m1 0x33071c;
    virtual cocos2d::CCNode* getDisabledImage() = imac 0x3a90e0, m1 0x3307c4;
    virtual void setDisabledImage(cocos2d::CCNode*) = imac 0x3a90f0, m1 0x3307cc;
    virtual void updateImagesVisibility() = imac 0x3a9570, m1 0x330c48;

    bool initWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a9340, m1 0x330a04;

    cocos2d::CCNode* m_pNormalImage;
    cocos2d::CCNode* m_pSelectedImage;
    cocos2d::CCNode* m_pDisabledImage;
}

[[link(win, android)]]
class cocos2d::CCMenuItemToggle : cocos2d::CCMenuItem {
    virtual ~CCMenuItemToggle() = m1 0x331a80;

    static cocos2d::CCMenuItemToggle* create() = imac 0x3aa230, m1 0x331778;
    static cocos2d::CCMenuItemToggle* create(cocos2d::CCMenuItem*) = imac 0x3aa420, m1 0x331950;
    static cocos2d::CCMenuItemToggle* createWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCArray*) = imac 0x3a9db0, m1 0x331454;
    static cocos2d::CCMenuItemToggle* createWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCMenuItem*, ...) = mac inline;

    virtual unsigned int getSelectedIndex() = imac 0x3aa830, m1 0x331d00;
    virtual void setSelectedIndex(unsigned int) = imac 0x3aa740, m1 0x331c04;
    virtual cocos2d::CCArray* getSubItems() = imac 0x3a9da0, m1 0x33144c;
    virtual void setSubItems(cocos2d::CCArray*) = imac 0x3a9d60, m1 0x331410;
    virtual void activate() = imac 0x3aa8a0, m1 0x331d64;
    virtual void selected() = imac 0x3aa840, m1 0x331d08;
    virtual void unselected() = imac 0x3aa870, m1 0x331d38;
    virtual void setEnabled(bool) = imac 0x3aa950, m1 0x331e14;

    void addSubItem(cocos2d::CCMenuItem*) = imac 0x3aa560, m1 0x331a78;
    bool initWithItem(cocos2d::CCMenuItem*) = imac 0x3aa350, m1 0x331884;
    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCMenuItem*, va_list) = imac 0x3aa130, m1 0x3316ac;
    cocos2d::CCMenuItem* selectedItem() = imac 0x3aa9f0, m1 0x331ea4;
}

[[link(win, android)]]
class cocos2d::CCMotionStreak : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    // CCMotionStreak(cocos2d::CCMotionStreak const&);
    CCMotionStreak();
    virtual ~CCMotionStreak() = imac 0x5a35f0, m1 0x4f265c;

    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::ccColor3B const&, char const*) = imac 0x5a3710, m1 0x4f2710;
    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::ccColor3B const&, cocos2d::CCTexture2D*) = imac 0x5a38e0;

    virtual void update(float) = m1 0x4f2d6c;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x29c140, m1 0x4f2b74;
    virtual void draw() = imac 0x5a4690, m1 0x4f3628;
    virtual unsigned char getOpacity() = imac 0x5a3db0, m1 0x4f2cd4;
    virtual void setOpacity(unsigned char) = imac 0x5a3d90, m1 0x4f2ccc;
    virtual void setOpacityModifyRGB(bool) = imac 0x5a3dd0, m1 0x4f2ce4;
    virtual bool isOpacityModifyRGB() = imac 0x5a3df0, m1 0x4f2cec;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x5a3d50, m1 0x4f2cac;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x5a3d70, m1 0x4f2cbc;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x5a3ca0, m1 0x4f2c0c;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x5a3cc0, m1 0x4f2c1c;

    void enableRepeatMode(float) = imac 0x5a3e10, m1 0x4f2cfc;
    bool initWithFade(float, float, float, cocos2d::ccColor3B const&, char const*) = imac 0x5a3870, m1 0x4f283c;
    bool initWithFade(float, float, float, cocos2d::ccColor3B const&, cocos2d::CCTexture2D*) = imac 0x5a3a30, m1 0x4f29d0;
    // bool isFastMode();
    // bool isStartingPositionInitialized();
    void reset() = imac 0x5a4670, m1 0x4f361c;
    void resumeStroke() = imac 0x1562c0, m1 0x4f2d60;
    // bool getDontOpacityFade() const;
    // float getM_fMaxSeg() const;
    // void setDontOpacityFade(bool);
    // void setFastMode(bool);
    // void setM_fMaxSeg(float);
    // void setStartingPositionInitialized(bool);
    void setStroke(float) = imac 0x5a4660, m1 0x4f3614;
    void stopStroke() = m1 0x4f2d58;
    void tintWithColor(cocos2d::ccColor3B) = imac 0x5a3c20, m1 0x4f2b84, ios inline;
    void updateFade(float) = imac 0x5a3e60, m1 0x4f2d48;

    bool m_bFastMode;
    bool m_bStartingPositionInitialized;
    bool m_bStroke;
    cocos2d::CCTexture2D* m_pTexture;
    cocos2d::ccBlendFunc m_tBlendFunc;
    float m_fStroke;
    float m_fFadeDelta;
    float m_fMinSeg;
    uint32_t m_uMaxPoints;
    uint32_t m_uNuPoints;
    uint32_t m_uPreviousNuPoints;
    cocos2d::CCPoint* m_pPointVertexes;
    float* m_pPointState;
    cocos2d::ccVertex2F* m_pVertices;
    uint8_t* m_pColorPointer;
    cocos2d::ccTex2F* m_pTexCoords;
    bool m_bRepeatMode;
    float m_fRepeatSpeed;
    float m_fRepeatTime;
    bool m_idk;
    float m_fMaxSeg;
    bool m_bDontOpacityFade;
    cocos2d::CCPoint m_tPositionR;
}

[[link(win, android)]]
class cocos2d::CCMouseDispatcher : cocos2d::CCObject {
    // CCMouseDispatcher(cocos2d::CCMouseDispatcher const&);
    CCMouseDispatcher();
    virtual ~CCMouseDispatcher();

    void addDelegate(cocos2d::CCMouseDelegate*) = imac 0x1e5d00, m1 0x4ed244;
    bool dispatchScrollMSG(float, float) = imac 0x59e010, m1 0x4ed2dc, ios inline;
    void forceAddDelegate(cocos2d::CCMouseDelegate*) = imac 0x1e5d50, m1 0x4ed2a0, ios inline;
    void forceRemoveDelegate(cocos2d::CCMouseDelegate*);
    void removeDelegate(cocos2d::CCMouseDelegate*);

    cocos2d::CCArray* m_pMouseHandlers;
    bool m_bLocked;
    bool m_bToAdd;
    bool m_bToRemove;
    cocos2d::ccCArray* m_pHandlersToAdd;
    cocos2d::ccCArray* m_pHandlersToRemove;
}

[[link(win, android)]]
class cocos2d::CCMouseHandler : cocos2d::CCObject {
    // CCMouseHandler(cocos2d::CCMouseHandler const&);
    // CCMouseHandler();
    virtual ~CCMouseHandler();

    static cocos2d::CCMouseHandler* handlerWithDelegate(cocos2d::CCMouseDelegate*) = imac 0x2715f0, m1 0x218258;

    virtual bool initWithDelegate(cocos2d::CCMouseDelegate*) = imac 0x2715a0, m1 0x218204;

    cocos2d::CCMouseDelegate* getDelegate();
    void setDelegate(cocos2d::CCMouseDelegate*) = ios inline;

    cocos2d::CCMouseDelegate* m_pDelegate;
}

[[link(win, android)]]
class cocos2d::CCMoveBy : cocos2d::CCActionInterval {
    static cocos2d::CCMoveBy* create(float, cocos2d::CCPoint const&) = imac 0x3a1570, m1 0x3299d0;

    // CCMoveBy(cocos2d::CCMoveBy const&);
    // CCMoveBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a16b0, m1 0x329ae0;
    virtual void update(float) = imac 0x3a18a0, m1 0x329ca0;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a1800, m1 0x329c08;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a1850, m1 0x329c5c;

    bool initWithDuration(float, cocos2d::CCPoint const&) = imac 0x3a1670, m1 0x329aa8, ios inline;
}

[[link(win, android)]]
class cocos2d::CCMoveTo : cocos2d::CCMoveBy {
    static cocos2d::CCMoveTo* create(float, cocos2d::CCPoint const&) = imac 0x3a1970, m1 0x329d5c;

    // CCMoveTo(cocos2d::CCMoveTo const&);
    // CCMoveTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a1ac0, m1 0x329e7c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a1c20, m1 0x329fb8;

    bool initWithDuration(float, cocos2d::CCPoint const&) = imac 0x3a1a80, m1 0x329e44, ios inline;
}

[[link(win, android)]]
class cocos2d::CCNode : cocos2d::CCObject {
    // CCNode(cocos2d::CCNode const&);
    CCNode() = imac 0x25e700, m1 0x206418;
    virtual ~CCNode() = imac 0x25e8b0, m1 0x2065a4;

    static cocos2d::CCNode* create() = imac 0x25f300, m1 0x206e0c;
    static void resetGlobalOrderOfArrival() = imac 0x25e6f0, m1 0x206408;

    virtual void update(float) = imac 0x260840, m1 0x2082bc;
    virtual bool init() = imac 0x25ea40, m1 0x2066f4;
    virtual void setZOrder(int) = imac 0x25ead0, m1 0x206744;
    virtual void _setZOrder(int) = imac 0x25eac0, m1 0x20673c;
    virtual int getZOrder() = imac 0x25eab0, m1 0x206734;
    virtual void setVertexZ(float) = imac 0x25eb20, m1 0x20679c;
    virtual float getVertexZ() = imac 0x25eb10, m1 0x206794;
    virtual void setScaleX(float) = imac 0x25ec40, m1 0x20684c;
    virtual float getScaleX() = imac 0x25ec30, m1 0x206844;
    virtual void setScaleY(float) = imac 0x25ec70, m1 0x206868;
    virtual float getScaleY() = imac 0x25ec60, m1 0x206860;
    virtual void setScale(float) = imac 0x25ebf0, m1 0x20681c;
    virtual float getScale() = imac 0x25ebe0, m1 0x206814;
    virtual void setScale(float, float) = imac 0x25ec10, m1 0x206830;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x25eca0, m1 0x206884;
    virtual cocos2d::CCPoint const& getPosition() = imac 0x25ec90, m1 0x20687c;
    virtual void setPosition(float, float) = imac 0x25ece0, m1 0x2068b0;
    virtual void getPosition(float*, float*) = imac 0x25ecc0, m1 0x20689c;
    virtual void setPositionX(float) = imac 0x25ed40, m1 0x206900;
    virtual float getPositionX() = imac 0x25ed20, m1 0x2068f0;
    virtual void setPositionY(float) = imac 0x25ed80, m1 0x206944;
    virtual float getPositionY() = imac 0x25ed30, m1 0x2068f8;
    virtual void offsetPosition(float, float) = imac 0x25edc0, m1 0x20698c;
    virtual void applyScale(float) = imac 0x25ee00, m1 0x2069d8;
    virtual void setSkewX(float) = imac 0x25ea60, m1 0x206704;
    virtual float getSkewX() = imac 0x25ea50, m1 0x2066fc;
    virtual void setSkewY(float) = imac 0x25ea90, m1 0x206720;
    virtual float getSkewY() = imac 0x25ea80, m1 0x206718;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x25efe0, m1 0x206b8c;
    virtual cocos2d::CCPoint const& getAnchorPoint() = imac 0x25efd0, m1 0x206b84;
    virtual cocos2d::CCPoint const& getAnchorPointInPoints() = imac 0x25efc0, m1 0x206b7c;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x25f0a0, m1 0x206c40;
    virtual cocos2d::CCSize const& getContentSize() const = imac 0x25f060, m1 0x206c00;
    virtual cocos2d::CCSize getScaledContentSize() = imac 0x25f070, m1 0x206c08;
    virtual void setVisible(bool) = imac 0x25efb0, m1 0x206b74;
    virtual bool isVisible() = imac 0x25efa0, m1 0x206b6c;
    virtual void setRotation(float) = imac 0x25eb40, m1 0x2067ac;
    virtual float getRotation() = imac 0x25eb30, m1 0x2067a4;
    virtual void setRotationX(float) = imac 0x25eb90, m1 0x2067e4;
    virtual float getRotationX() = imac 0x25eb80, m1 0x2067dc;
    virtual void setRotationY(float) = imac 0x25ebc0, m1 0x206800;
    virtual float getRotationY() = imac 0x25ebb0, m1 0x2067f8;
    virtual void setOrderOfArrival(unsigned int) = imac 0x25f1c0, m1 0x206d0c;
    virtual unsigned int getOrderOfArrival() = imac 0x25f1b0, m1 0x206d04;
    virtual void setGLServerState(cocos2d::ccGLServerState) = imac 0x25f200, m1 0x206d2c;
    virtual cocos2d::ccGLServerState getGLServerState() = imac 0x25f1f0, m1 0x206d24;
    virtual void ignoreAnchorPointForPosition(bool) = imac 0x25f160, m1 0x206cd4;
    virtual bool isIgnoreAnchorPointForPosition() = imac 0x25f150, m1 0x206ccc;
    virtual void addChild(cocos2d::CCNode*) = imac 0x25f670, m1 0x20717c;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x25f650, m1 0x20716c;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x25f500, m1 0x207014;
    virtual cocos2d::CCNode* getChildByTag(int) = imac 0x25f480, m1 0x206f90;
    virtual cocos2d::CCArray* getChildren() = imac 0x25ee80, m1 0x206a64;
    virtual unsigned int getChildrenCount() const = imac 0x25eed0, m1 0x206ab8;
    virtual void setParent(cocos2d::CCNode*) = imac 0x25f140, m1 0x206cc4;
    virtual cocos2d::CCNode* getParent() = imac 0x25f130, m1 0x206cbc;
    virtual void removeFromParent() = imac 0x25f690, m1 0x207190;
    virtual void removeFromParentAndCleanup(bool) = imac 0x25f6b0, m1 0x2071a0;
    virtual void removeMeAndCleanup() = imac 0x25f6e0, m1 0x2071c0;
    virtual void removeChild(cocos2d::CCNode*) = imac 0x25f700, m1 0x2071d0;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x25f720, m1 0x2071e0;
    virtual void removeChildByTag(int) = imac 0x25f870, m1 0x20735c;
    virtual void removeChildByTag(int, bool) = imac 0x25f890, m1 0x20736c;
    virtual void removeAllChildren() = imac 0x25f8d0, m1 0x2073bc;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x25f8f0, m1 0x2073cc;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x25fa00, m1 0x207500;
    virtual void sortAllChildren() = imac 0x25fb50, m1 0x20761c;
    virtual cocos2d::CCGridBase* getGrid() = imac 0x25ef50, m1 0x206b28;
    virtual void setGrid(cocos2d::CCGridBase*) = imac 0x25ef60, m1 0x206b30;
    virtual void* getUserData() = imac 0x25f190, m1 0x206cf4;
    virtual void setUserData(void*) = imac 0x25f1a0, m1 0x206cfc;
    virtual cocos2d::CCObject* getUserObject() = imac 0x25f1e0, m1 0x206d1c;
    virtual void setUserObject(cocos2d::CCObject*) = imac 0x25f210, m1 0x206d34;
    virtual cocos2d::CCGLProgram* getShaderProgram() = imac 0x25f1d0, m1 0x206d14;
    virtual void setShaderProgram(cocos2d::CCGLProgram*) = imac 0x25f250, m1 0x206d70;
    virtual cocos2d::CCCamera* getCamera() = imac 0x25eef0, m1 0x206ac8;
    virtual bool isRunning() = imac 0x25f120, m1 0x206cb4;
    virtual void registerScriptHandler(int) = imac 0x260480, m1 0x207f90;
    virtual void unregisterScriptHandler() = imac 0x2604b0, m1 0x207fc0;
    virtual void onEnter() = imac 0x260160, m1 0x207c58;
    virtual void onEnterTransitionDidFinish() = imac 0x260280, m1 0x207d84;
    virtual void onExit() = imac 0x260380, m1 0x207e98;
    virtual void onExitTransitionDidStart() = imac 0x2602f0, m1 0x207e04;
    virtual void cleanup() = imac 0x25f360, m1 0x206e8c;
    virtual void draw() = imac 0x25ff20, m1 0x207a2c;
    virtual void visit() = imac 0x25ff30, m1 0x207a30;
    virtual void setActionManager(cocos2d::CCActionManager*) = imac 0x2604f0, m1 0x208000;
    virtual cocos2d::CCActionManager* getActionManager() = imac 0x260540, m1 0x208050;
    virtual void setScheduler(cocos2d::CCScheduler*) = imac 0x260600, m1 0x2080bc;
    virtual cocos2d::CCScheduler* getScheduler() = imac 0x260650, m1 0x20810c;
    virtual void updateTransform() = imac 0x261460, m1 0x208ecc;
    virtual cocos2d::CCAffineTransform const nodeToParentTransform() = imac 0x2608b0, m1 0x20833c;
    virtual cocos2d::CCAffineTransform const nodeToParentTransformFast() = imac 0x260bc0, m1 0x208600;
    virtual cocos2d::CCAffineTransform const parentToNodeTransform() = imac 0x260ff0, m1 0x208a7c;
    virtual cocos2d::CCAffineTransform nodeToWorldTransform() = imac 0x261070, m1 0x208af4;
    virtual cocos2d::CCAffineTransform nodeToWorldTransformFast() = imac 0x261100, m1 0x208b80;
    virtual cocos2d::CCAffineTransform worldToNodeTransform() = imac 0x261190, m1 0x208c0c;
    virtual bool addComponent(cocos2d::CCComponent*) = imac 0x2614d0, m1 0x208f34;
    virtual bool removeComponent(char const*) = imac 0x2614f0, m1 0x208f44;
    virtual bool removeComponent(cocos2d::CCComponent*) = imac 0x261510, m1 0x208f54;
    virtual void removeAllComponents() = imac 0x261530, m1 0x208f64;
    virtual void updateTweenAction(float, char const*) = imac 0x261440, m1 0x208ec4;
    virtual void updateTweenActionInt(float, int) = imac 0x261450, m1 0x208ec8;

    cocos2d::CCRect boundingBox() = imac 0x25f290, m1 0x206dac;
    void childrenAlloc() = imac 0x25f450, m1 0x206f68, ios inline;
    cocos2d::CCPoint convertToNodeSpace(cocos2d::CCPoint const&) = imac 0x2611d0, m1 0x208c4c;
    cocos2d::CCPoint convertToNodeSpaceAR(cocos2d::CCPoint const& worldPoint) = imac 0x261250, m1 0x208cdc, ios inline;
    cocos2d::CCPoint convertTouchToNodeSpace(cocos2d::CCTouch*) = imac 0x261370, m1 0x208df8;
    cocos2d::CCPoint convertTouchToNodeSpaceAR(cocos2d::CCTouch*) = imac 0x2613d0, m1 0x208e50, ios inline;
    cocos2d::CCPoint convertToWindowSpace(cocos2d::CCPoint const&) = imac 0x261310, m1 0x208da0, ios inline;
    cocos2d::CCPoint convertToWorldSpace(cocos2d::CCPoint const&) = imac 0x261210, m1 0x208c94;
    cocos2d::CCPoint convertToWorldSpaceAR(cocos2d::CCPoint const& point) = imac 0x2612b0, m1 0x208d40, ios inline;
    char const* description() = imac 0x25f430, m1 0x206f3c, ios inline;
    void detachChild(cocos2d::CCNode*, bool) = imac 0x25f7d0, m1 0x2072ac;
    cocos2d::CCAction* getActionByTag(int) = imac 0x2605c0, m1 0x2080a4;
    cocos2d::CCComponent* getComponent(char const*) const = imac 0x2614b0, m1 0x208f24, ios inline;
    void insertChild(cocos2d::CCNode*, int) = imac 0x25f600, m1 0x207114;
    unsigned int numberOfRunningActions() = imac 0x2605e0, m1 0x2080b0, ios inline;
    void pauseSchedulerAndActions() = imac 0x260440, m1 0x207f50;
    void qsortAllChildrenWithIndex() = imac 0x25fe70, m1 0x20796c;
    void resumeSchedulerAndActions() = imac 0x260240, m1 0x207d44;
    cocos2d::CCAction* runAction(cocos2d::CCAction*) = imac 0x260550, m1 0x208058;
    void schedule(cocos2d::SEL_SCHEDULE) = imac 0x260760, m1 0x20820c;
    void schedule(cocos2d::SEL_SCHEDULE, float) = imac 0x2607c0, m1 0x20824c;
    void schedule(cocos2d::SEL_SCHEDULE selector, float interval, unsigned int repeat, float delay) = imac 0x260790, m1 0x208230, ios inline;
    void scheduleOnce(cocos2d::SEL_SCHEDULE selector, float delay) = imac 0x2607f0, m1 0x20826c, ios inline;
    void scheduleUpdate() = imac 0x260660, m1 0x208114;
    void scheduleUpdateWithPriority(int) = imac 0x260680, m1 0x208130;
    void scheduleUpdateWithPriorityLua(int, int) = imac 0x2606a0, m1 0x20814c, ios inline;
    // int getScriptHandler();
    // cocos2d::CCAffineTransform getTransformTemp();
    // bool getUseChildIndex();
    void setAdditionalTransform(cocos2d::CCAffineTransform const& additionalTransform) = imac 0x260fc0, m1 0x208a5c, ios inline;
    void setUseChildIndex(bool) = imac 0x25fa40, m1 0x207558;
    void sortAllChildrenNoIndex() = imac 0x25fd70, m1 0x207850;
    void sortAllChildrenWithIndex() = imac 0x25fce0, m1 0x2077bc, ios inline;
    void stopAction(cocos2d::CCAction* action) = imac 0x260580, m1 0x208090, ios inline;
    void stopActionByTag(int) = imac 0x2605a0, m1 0x208098;
    void stopAllActions() = imac 0x25f3f0, m1 0x206f24;
    void transform() = imac 0x260060, m1 0x207b6c;
    void transformAncestors() = imac 0x260120, m1 0x207c20;
    void unschedule(cocos2d::SEL_SCHEDULE) = imac 0x260820, m1 0x208290;
    void unscheduleAllSelectors() = imac 0x25f410, m1 0x206f30;
    void unscheduleUpdate() = imac 0x260710, m1 0x2081c0;
    void updateChildIndexes() = imac 0x25eeb0, m1 0x206a9c;

    float m_fRotationX;
    float m_fRotationY;
    float m_fScaleX;
    float m_fScaleY;
    float m_fVertexZ;
    cocos2d::CCPoint m_obPosition;
    float m_fSkewX;
    float m_fSkewY;
    cocos2d::CCPoint m_obAnchorPointInPoints;
    cocos2d::CCPoint m_obAnchorPoint;
    cocos2d::CCSize m_obContentSize;
    cocos2d::CCAffineTransform m_sAdditionalTransform;
    cocos2d::CCAffineTransform m_sTransform;
    cocos2d::CCAffineTransform m_sInverse;
    cocos2d::CCCamera* m_pCamera;
    cocos2d::CCGridBase* m_pGrid;
    cocos2d::CCArray* m_pChildren;
    cocos2d::CCNode* m_pParent;
    void* m_pUserData;
    cocos2d::CCObject* m_pUserObject;
    cocos2d::CCGLProgram* m_pShaderProgram;
    cocos2d::ccGLServerState m_eGLServerState;
    cocos2d::CCScheduler* m_pScheduler;
    cocos2d::CCActionManager* m_pActionManager;
    bool m_bRunning;
    bool m_bTransformDirty;
    bool m_bPositionDirty;
    float m_fTransformX;
    float m_fTransformY;
    bool m_bInverseDirty;
    bool m_bAdditionalTransformDirty;
    bool m_bVisible;
    bool m_bIgnoreAnchorPointForPosition;
    bool m_bReorderChildDirty;
    int m_nScriptHandler;
    int m_nUpdateScriptHandler;
    cocos2d::ccScriptType m_eScriptType;
    cocos2d::CCComponentContainer* m_pComponentContainer;
    bool m_bUseChildIndex;
    bool m_bDontPauseSchedulerAndActions;
}

[[link(win, android)]]
class cocos2d::CCNodeRGBA : cocos2d::CCNode, cocos2d::CCRGBAProtocol {
    // CCNodeRGBA(cocos2d::CCNodeRGBA const&);
    CCNodeRGBA() = imac 0x261550, m1 0x208f74;
    virtual ~CCNodeRGBA() = imac 0x261600, m1 0x208fd4;

    static cocos2d::CCNodeRGBA* create() = imac 0x261650, m1 0x209004, ios inline;

    virtual bool init() = imac 0x261630, m1 0x208ff0;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x261a30, m1 0x2093cc;
    virtual cocos2d::ccColor3B const& getColor() = imac 0x2619f0, m1 0x2093ac;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = imac 0x261a10, m1 0x2093bc;
    virtual unsigned char getDisplayedOpacity() = imac 0x2616e0, m1 0x209078;
    virtual unsigned char getOpacity() = imac 0x2616c0, m1 0x209068;
    virtual void setOpacity(unsigned char) = imac 0x261700, m1 0x209088;
    virtual bool isCascadeColorEnabled() = imac 0x261dc0, m1 0x209670;
    virtual void setCascadeColorEnabled(bool) = imac 0x261de0, m1 0x209680;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = imac 0x261ba0, m1 0x209560;
    virtual bool isCascadeOpacityEnabled() = imac 0x2619b0, m1 0x20938c;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x2619d0, m1 0x20939c;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x261830, m1 0x2091f4;

    uint8_t _displayedOpacity;
    uint8_t _realOpacity;
    cocos2d::ccColor3B _displayedColor;
    cocos2d::ccColor3B _realColor;
    bool _cascadeColorEnabled;
    bool _cascadeOpacityEnabled;
}

[[link(win, android)]]
class cocos2d::CCNotificationCenter : cocos2d::CCObject {
    CCNotificationCenter() = imac 0x272a20, m1 0x219474;
    virtual ~CCNotificationCenter() = imac 0x272ac0, m1 0x219524;

    static void purgeNotificationCenter() = imac 0x272c10, m1 0x219668;
    static cocos2d::CCNotificationCenter* sharedNotificationCenter() = imac 0x272b80, m1 0x2195d0;

    void addObserver(cocos2d::CCObject*, cocos2d::SEL_CallFuncO, char const*, cocos2d::CCObject*) = imac 0x272cd0, m1 0x219754;
    int getObserverHandlerByName(char const*) = imac 0x273290, m1 0x219d44;
    bool observerExisted(cocos2d::CCObject*, char const*) = imac 0x272c40, m1 0x219694;
    void postNotification(char const*) = imac 0x273280, m1 0x219d3c;
    void postNotification(char const*, cocos2d::CCObject*) = imac 0x2730e0, m1 0x219bb4;
    void registerScriptObserver(cocos2d::CCObject*, int, char const*) = imac 0x272f50, m1 0x2199e0;
    int removeAllObservers(cocos2d::CCObject*) = imac 0x272ea0, m1 0x219938;
    void removeObserver(cocos2d::CCObject*, char const*) = imac 0x272de0, m1 0x219878;
    void unregisterScriptObserver(cocos2d::CCObject*, char const*) = imac 0x273040, m1 0x219b00;
}

[[link(win, android)]]
class cocos2d::CCNotificationObserver : cocos2d::CCObject {
    CCNotificationObserver(cocos2d::CCObject*, cocos2d::SEL_CallFuncO, char const*, cocos2d::CCObject*) = win inline, imac 0x273320, m1 0x219de4;
    virtual ~CCNotificationObserver() = imac 0x2734a0, m1 0x219f64;

    virtual cocos2d::CCObject* getTarget() = imac 0x273560, m1 0x21a024;
    virtual cocos2d::SEL_CallFuncO getSelector() = imac 0x273570, m1 0x21a02c;
    virtual char* getName() = imac 0x273580, m1 0x21a038;
    virtual cocos2d::CCObject* getObject() = imac 0x273590, m1 0x21a040;
    virtual int getHandler() = imac 0x2735a0, m1 0x21a048;
    virtual void setHandler(int) = imac 0x2735b0, m1 0x21a050;

    void performSelector(cocos2d::CCObject*) = imac 0x273230, m1 0x219cfc;
}

[[link(win, android)]]
class cocos2d::CCObject : cocos2d::CCCopying {
    // CCObject(cocos2d::CCObject const&);
    CCObject() = imac 0x47fec0, m1 0x3e9ee0;
    virtual ~CCObject() = imac 0x47ffd0, m1 0x3e9f70;

    static cocos2d::CCObject* createWithCoder(DS_Dictionary*) = imac 0x4801b0, m1 0x3ea1ec;

    virtual int getTag() const = imac 0x480180, m1 0x3ea1d8;
    virtual bool isEqual(cocos2d::CCObject const*) = imac 0x480150, m1 0x3ea1b4;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x480160, m1 0x3ea1c0;
    virtual void encodeWithCoder(DS_Dictionary*) = imac 0x4801a0, m1 0x3ea1e8;
    virtual bool canEncode() = imac 0x4801c0, m1 0x3ea1f4;
    virtual void setTag(int) = imac 0x480190, m1 0x3ea1e0;

    // cocos2d::CCObjectType getObjType() const;
    // void setObjType(cocos2d::CCObjectType);
    cocos2d::CCObject* autorelease() = imac 0x480100, m1 0x3ea170;
    // cocos2d::CCObject* copy();
    bool isSingleReference() const = imac 0x480130, m1 0x3ea19c, ios inline;
    void release() = imac 0x4800d0, m1 0x3ea13c;
    void retain() = imac 0x4800f0, m1 0x3ea160;

    // unsigned int retainCount() const;
    uint32_t m_uID;
    int m_nLuaID;
    int m_nTag;
    uint32_t m_uReference;
    uint32_t m_uAutoReleaseCount;
    cocos2d::CCObjectType m_eObjType;
    int m_uIndexInArray;
    int m_nChildIndex;
    int m_unknown2;
    int m_nZOrder;
    int m_uOrderOfArrival;
    int m_unknown5;
}

[[link(win, android)]]
class cocos2d::CCOrbitCamera : cocos2d::CCActionCamera {
    static cocos2d::CCOrbitCamera* create(float, float, float, float, float, float, float) = imac 0x350ca0, m1 0x2e0a70;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x350e90, m1 0x2e0be8;
    virtual void update(float) = imac 0x3512f0, m1 0x2e0f8c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x350fe0, m1 0x2e0d08;

    bool initWithDuration(float, float, float, float, float, float, float) = imac 0x350de0, m1 0x2e0b6c;
    // CCOrbitCamera(cocos2d::CCOrbitCamera const&);
    // CCOrbitCamera();
    void sphericalRadius(float*, float*, float*) = imac 0x3511b0, m1 0x2e0e88;
}

[[link(win, android)]]
class cocos2d::CCPageTurn3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCPageTurn3D* create(float, cocos2d::CCSize const&) = imac 0x2fc990, m1 0x291020;

    virtual void update(float) = imac 0x2fca70, m1 0x291100;
}

[[link(win, android)]]
class cocos2d::CCParallaxNode : cocos2d::CCNode {
    CCParallaxNode() = imac 0x4a78d0, m1 0x40def8;
    virtual ~CCParallaxNode() = imac 0x4a79d0, m1 0x40e020;

    static cocos2d::CCParallaxNode* create() = imac 0x4a7ac0, m1 0x40e0f0;

    virtual void addChild(cocos2d::CCNode*, unsigned int, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x4a7b90, m1 0x40e1a0;
    virtual void addChild(cocos2d::CCNode*, unsigned int, int) = imac 0x4a7b80, m1 0x40e19c;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x4a7d50, m1 0x40e350;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x4a7dd0, m1 0x40e3e0;
    virtual void visit() = imac 0x4a7e90, m1 0x40e4a8;

    cocos2d::CCPoint absolutePosition() = imac 0x4a7e00, m1 0x40e410;
}

[[link(win, android)]]
class cocos2d::CCParticleBatchNode : cocos2d::CCNode, cocos2d::CCTextureProtocol {
    CCParticleBatchNode() = imac 0x3b1cf0, m1 0x338cd0;
    virtual ~CCParticleBatchNode() = imac 0x3b1d70, m1 0x338d20;

    static cocos2d::CCParticleBatchNode* create(char const*, unsigned int) = imac 0x3b1fa0, m1 0x338f38;
    static cocos2d::CCParticleBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x3b1e60, m1 0x338df0;

    virtual void addChild(cocos2d::CCNode*) = imac 0x3b20f0, m1 0x339098;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x3b2100, m1 0x33909c;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x3b2110, m1 0x3390a0;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x3b2960, m1 0x3399ec;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x3b2550, m1 0x339560;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x3b2a90, m1 0x339b34;
    virtual void draw() = imac 0x3b2b20, m1 0x339bc0;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x3b2d00, m1 0x339d9c;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x3b2c60, m1 0x339cdc;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x3b2d30, m1 0x339dbc;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x3b2d50, m1 0x339dcc;
    virtual void visit() = imac 0x3b2080, m1 0x339014;

    unsigned int addChildHelper(cocos2d::CCParticleSystem*, int, int) = imac 0x3b2210, m1 0x3391cc;
    void disableParticle(unsigned int) = imac 0x3b2bd0, m1 0x339c54;
    void getCurrentIndex(unsigned int*, unsigned int*, cocos2d::CCNode*, int) = imac 0x3b27f0, m1 0x33986c;
    void increaseAtlasCapacityTo(unsigned int) = imac 0x3b2bb0, m1 0x339c4c;
    bool initWithFile(char const*, unsigned int) = imac 0x3b2040, m1 0x338fc4;
    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x3b1ee0, m1 0x338e6c;
    void insertChild(cocos2d::CCParticleSystem*, unsigned int) = imac 0x3b2350, m1 0x339320;
    void removeChildAtIndex(unsigned int, bool) = imac 0x3b2a60, m1 0x339af8;
    unsigned int searchNewPositionInChildrenForZ(int) = imac 0x3b24e0, m1 0x3394d8;
    void updateAllAtlasIndexes() = imac 0x3b2900, m1 0x339980;
    void updateBlendFunc() = imac 0x3b2c20, m1 0x339c9c;
}

[[link(win, android)]]
class cocos2d::CCParticleExplosion : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleExplosion* create() = ios inline;
    static cocos2d::CCParticleExplosion* createWithTotalParticles(unsigned int) = ios inline;

    // CCParticleExplosion(cocos2d::CCParticleExplosion const&);
    // CCParticleExplosion();
    // virtual bool init() = m1 0x3ec694, imac 0x486a30;
    virtual bool initWithTotalParticles(unsigned int) = imac 0x47adf0, ios inline;
}

[[link(win, android)]]
class cocos2d::CCParticleFire : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFire* create() = ios inline;
    static cocos2d::CCParticleFire* createWithTotalParticles(unsigned int) = imac 0x479970, m1 0x3e54c0, ios inline;

    // CCParticleFire(cocos2d::CCParticleFire const&);
    // CCParticleFire();
    // virtual bool init() = m1 0x3ec634, imac 0x486970;
    virtual bool initWithTotalParticles(unsigned int) = imac 0x4799f0, ios inline;
}

[[link(win, android)]]
class cocos2d::CCParticleFireworks : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFireworks* create() = m1 0x3e42f0;
    static cocos2d::CCParticleFireworks* createWithTotalParticles(unsigned int) = imac 0x479cc0;

    virtual bool initWithTotalParticles(unsigned int) = imac 0x479d40;
}

[[link(win, android)]]
class cocos2d::CCParticleFlower : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFlower* create();
    static cocos2d::CCParticleFlower* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleGalaxy : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleGalaxy* create();
    static cocos2d::CCParticleGalaxy* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleMeteor : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleMeteor* create() = m1 0x3e4e2c;
    static cocos2d::CCParticleMeteor* createWithTotalParticles(unsigned int) = imac 0x47a7b0;

    virtual bool initWithTotalParticles(unsigned int) = imac 0x47a830;
}

[[link(win, android)]]
class cocos2d::CCParticleRain : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleRain* create() = m1 0x3e5d20, ios inline;
    static cocos2d::CCParticleRain* createWithTotalParticles(unsigned int) = imac 0x47b600, ios inline;

    // CCParticleRain(cocos2d::CCParticleRain const&);
    // CCParticleRain();
    // virtual bool init() = m1 0x3ec6a4, imac 0x486a50;
    virtual bool initWithTotalParticles(unsigned int) = imac 0x47b680, ios inline;
}

[[link(win, android)]]
class cocos2d::CCParticleSmoke : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSmoke* create();
    static cocos2d::CCParticleSmoke* createWithTotalParticles(unsigned int) = imac 0x47b040;

    virtual bool initWithTotalParticles(unsigned int) = imac 0x47b0c0;
}

[[link(win, android)]]
class cocos2d::CCParticleSnow : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSnow* create() = ios inline;
    static cocos2d::CCParticleSnow* createWithTotalParticles(unsigned int numberOfParticles) = imac 0x47b310, ios inline;

    // CCParticleSnow(cocos2d::CCParticleSnow const&);
    // CCParticleSnow();
    // virtual bool init() = m1 0x3ec694, imac 0x486a30;
    virtual bool initWithTotalParticles(unsigned int numberOfParticles) = imac 0x47b390, m1 0x10208, ios inline;
}

[[link(win, android)]]
class cocos2d::CCParticleSpiral : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSpiral* create() = m1 0x3e5134;
    static cocos2d::CCParticleSpiral* createWithTotalParticles(unsigned int) = imac 0x47aaa0;

    virtual bool initWithTotalParticles(unsigned int) = imac 0x47ab20;
}

[[link(win, android)]]
class cocos2d::CCParticleSun : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSun* create() = m1 0x3e4550;
    static cocos2d::CCParticleSun* createWithTotalParticles(unsigned int) = imac 0x479f30, m1 0x3e54c0;

    virtual bool initWithTotalParticles(unsigned int) = imac 0x479fb0, m1 0x3e5554;
}

[[link(win, android)]]
class cocos2d::CCParticleSystem : cocos2d::CCNode, cocos2d::CCTextureProtocol {
    // bool getUseUniformColorMode() const;
    // bool getUsingSchedule() const;
    // bool getWasRemoved() const;
    // void setAtlasIndex(unsigned int);
    // void setDontCleanupOnFinish(bool);
    // void setDynamicRotationIsDir(bool);
    // void setEndAlpha(float);
    // void setEndRGBVarSync(bool);
    // void setFadeInTime(float);
    // void setFadeInTimeVar(float);
    // void setFadeOutTime(float);
    // void setFadeOutTimeVar(float);
    // void setFrictionPos(float);
    // void setFrictionPosVar(float);
    // void setFrictionRot(float);
    // void setFrictionRotVar(float);
    // void setFrictionSize(float);
    // void setFrictionSizeVar(float);
    // void setOrderSensitive(bool);
    // void setRespawn(float);
    // void setRespawnVar(float);
    // void setStartAlpha(float);
    // void setStartRGBVarSync(bool);
    // void setStartRadiusEqualToEnd(bool);
    // void setStartSizeEqualToEnd(bool);
    // void setStartSpinEqualToEnd(bool);
    // void setUsingSchedule(bool);
    // void setWasRemoved(bool);
    // CCParticleSystem(cocos2d::CCParticleSystem const&);
    CCParticleSystem() = imac 0x8ae290, m1 0x7a0528;
    virtual ~CCParticleSystem() = imac 0x8b03f0, m1 0x7a23dc;

    static cocos2d::CCParticleSystem* create(char const*) = imac 0x8ae460, m1 0x1a095c, ios inline;
    static cocos2d::CCParticleSystem* createWithTotalParticles(unsigned int) = imac 0x8ae730, m1 0x7a0954, ios inline;

    virtual void update(float) = m1 0x7a345c;
    virtual bool init() = imac 0x8ae7a0, m1 0x7a09e0;
    virtual void setScaleX(float) = imac 0x8b2f40, m1 0x7a457c;
    virtual void setScaleY(float) = imac 0x8b2f60, m1 0x7a4588;
    virtual void setScale(float) = imac 0x8b2f00, m1 0x7a4564;
    virtual void setVisible(bool) = imac 0x66ec0, m1 0x7a4198;
    virtual void setRotation(float) = imac 0x8b2f20, m1 0x7a4570;
    virtual cocos2d::CCParticleBatchNode* getBatchNode() = imac 0x8b2e20, m1 0x7a44cc;
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = imac 0x8b2e30, m1 0x7a44d4;
    virtual unsigned int getParticleCount() = imac 0x8b2a20, m1 0x7a42a4;
    virtual float getDuration() = imac 0x8b2a30, m1 0x7a42ac;
    virtual void setDuration(float) = imac 0x8b2a40, m1 0x7a42b4;
    virtual cocos2d::CCPoint const& getSourcePosition() = imac 0x8b2a50, m1 0x7a42bc;
    virtual void setSourcePosition(cocos2d::CCPoint const&) = imac 0x8b2a60, m1 0x7a42c4;
    virtual cocos2d::CCPoint const& getPosVar() = imac 0x8b2a80, m1 0x7a42cc;
    virtual void setPosVar(cocos2d::CCPoint const&) = imac 0x8b2a90, m1 0x7a42d4;
    virtual float getLife() = imac 0x8b2ab0, m1 0x7a42dc;
    virtual void setLife(float) = imac 0x8b2ac0, m1 0x7a42e4;
    virtual float getLifeVar() = imac 0x8b2ad0, m1 0x7a42ec;
    virtual void setLifeVar(float) = imac 0x8b2ae0, m1 0x7a42f4;
    virtual float getAngle() = imac 0x8b2af0, m1 0x7a42fc;
    virtual void setAngle(float) = imac 0x8b2b00, m1 0x7a4304;
    virtual float getAngleVar() = imac 0x8b2b10, m1 0x7a430c;
    virtual void setAngleVar(float) = imac 0x8b2b20, m1 0x7a4314;
    virtual void updateEmissionRate() = imac 0x8b0390, m1 0x7a23ac;
    virtual cocos2d::CCPoint const& getGravity() = imac 0x8b2900, m1 0x7a4214;
    virtual void setGravity(cocos2d::CCPoint const&) = imac 0x8b28e0, m1 0x7a420c;
    virtual float getSpeed() = imac 0x8b2920, m1 0x7a4224;
    virtual void setSpeed(float) = imac 0x8b2910, m1 0x7a421c;
    virtual float getSpeedVar() = imac 0x8b2940, m1 0x7a4234;
    virtual void setSpeedVar(float) = imac 0x8b2930, m1 0x7a422c;
    virtual float getTangentialAccel() = imac 0x8b2850, m1 0x7a41c4;
    virtual void setTangentialAccel(float) = imac 0x8b2840, m1 0x7a41bc;
    virtual float getTangentialAccelVar() = imac 0x8b2870, m1 0x7a41d4;
    virtual void setTangentialAccelVar(float) = imac 0x8b2860, m1 0x7a41cc;
    virtual float getRadialAccel() = imac 0x8b2890, m1 0x7a41e4;
    virtual void setRadialAccel(float) = imac 0x8b2880, m1 0x7a41dc;
    virtual float getRadialAccelVar() = imac 0x8b28b0, m1 0x7a41f4;
    virtual void setRadialAccelVar(float) = imac 0x8b28a0, m1 0x7a41ec;
    virtual bool getRotationIsDir() = imac 0x8b28d0, m1 0x7a4204;
    virtual void setRotationIsDir(bool) = imac 0x8b28c0, m1 0x7a41fc;
    virtual float getStartRadius() = imac 0x8b2960, m1 0x7a4244;
    virtual void setStartRadius(float) = imac 0x8b2950, m1 0x7a423c;
    virtual float getStartRadiusVar() = imac 0x8b2980, m1 0x7a4254;
    virtual void setStartRadiusVar(float) = imac 0x8b2970, m1 0x7a424c;
    virtual float getEndRadius() = imac 0x8b29a0, m1 0x7a4264;
    virtual void setEndRadius(float) = imac 0x8b2990, m1 0x7a425c;
    virtual float getEndRadiusVar() = imac 0x8b29c0, m1 0x7a4274;
    virtual void setEndRadiusVar(float) = imac 0x8b29b0, m1 0x7a426c;
    virtual float getRotatePerSecond() = imac 0x8b29e0, m1 0x7a4284;
    virtual void setRotatePerSecond(float) = imac 0x8b29d0, m1 0x7a427c;
    virtual float getRotatePerSecondVar() = imac 0x8b2a00, m1 0x7a4294;
    virtual void setRotatePerSecondVar(float) = imac 0x8b29f0, m1 0x7a428c;
    virtual bool isActive() = imac 0x8b2a10;
    virtual bool isBlendAdditive() = imac 0x8b27f0;
    virtual void setBlendAdditive(bool) = imac 0x8b2790, m1 0x7a40fc;
    virtual float getStartSize() = imac 0x8b2b30, m1 0x7a431c;
    virtual void setStartSize(float) = imac 0x8b2b40, m1 0x7a4324;
    virtual float getStartSizeVar() = imac 0x8b2b50, m1 0x7a432c;
    virtual void setStartSizeVar(float) = imac 0x8b2b60, m1 0x7a4334;
    virtual float getEndSize() = imac 0x8b2b70, m1 0x7a433c;
    virtual void setEndSize(float) = imac 0x8b2b80, m1 0x7a4344;
    virtual float getEndSizeVar() = imac 0x8b2b90, m1 0x7a42ac;
    virtual void setEndSizeVar(float) = imac 0x8b2ba0;
    virtual cocos2d::ccColor4F const& getStartColor() = imac 0x8b2bb0;
    virtual void setStartColor(cocos2d::ccColor4F const&) = imac 0x8b2bc0, m1 0x5e01a4;
    virtual cocos2d::ccColor4F const& getStartColorVar() = imac 0x8b2bd0;
    virtual void setStartColorVar(cocos2d::ccColor4F const&) = imac 0x8b2be0;
    virtual cocos2d::ccColor4F const& getEndColor() = imac 0x8b2bf0;
    virtual void setEndColor(cocos2d::ccColor4F const&) = imac 0x8b2c00;
    virtual cocos2d::ccColor4F const& getEndColorVar() = imac 0x8b2c10, m1 0x5e019c;
    virtual void setEndColorVar(cocos2d::ccColor4F const&) = imac 0x8b2c20, m1 0x5e01a4;
    virtual float getStartSpin() = imac 0x8b2c30, m1 0x7a43ac;
    virtual void setStartSpin(float) = imac 0x8b2c40, m1 0x7a43b4;
    virtual float getStartSpinVar() = imac 0x8b2c50, m1 0x7a43bc;
    virtual void setStartSpinVar(float) = imac 0x8b2c60, m1 0x7a43c4;
    virtual float getEndSpin() = imac 0x8b2c70, m1 0x7a43cc;
    virtual void setEndSpin(float) = imac 0x8b2c80, m1 0x7a43d4;
    virtual float getEndSpinVar() = imac 0x8b2c90, m1 0x7a43dc;
    virtual void setEndSpinVar(float) = imac 0x8b2ca0, m1 0x7a43e4;
    virtual float getEmissionRate() = imac 0x8b2cb0, m1 0x7a43ec;
    virtual void setEmissionRate(float) = imac 0x8b2cc0, m1 0x7a43f4;
    virtual unsigned int getTotalParticles() = imac 0x8b2cd0, m1 0x7a43fc;
    virtual void setTotalParticles(unsigned int) = imac 0x8b2ce0, m1 0x7a4404;
    virtual bool getOpacityModifyRGB() = imac 0x8b2da0, m1 0x7a448c;
    virtual void setOpacityModifyRGB(bool) = imac 0x8b2db0, m1 0x7a4494;
    virtual cocos2d::tCCPositionType getPositionType() = imac 0x8b2dc0, m1 0x7a449c;
    virtual void setPositionType(cocos2d::tCCPositionType) = imac 0x8b2dd0, m1 0x7a44a4;
    virtual bool isAutoRemoveOnFinish() = imac 0x8b2de0, m1 0x7a44ac;
    virtual void setAutoRemoveOnFinish(bool) = imac 0x8b2df0, m1 0x7a44b4;
    virtual int getEmitterMode() = imac 0x8b2e00, m1 0x7a44bc;
    virtual void setEmitterMode(int) = imac 0x8b2e10, m1 0x7a44c4;
    virtual bool initWithTotalParticles(unsigned int, bool) = imac 0x8b0220, m1 0x7a227c;
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&);
    virtual void postStep() = imac 0x8b2620, m1 0x81660;
    virtual void updateWithNoTime() = imac 0x8b25d0;
    virtual void updateBlendFunc() = imac 0x8b2700, m1 0x7a407c;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x8b2d10, m1 0x7a441c;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x8b2cf0, m1 0x7a440c;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x8b2770, m1 0x7a40ec;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x8b2630, m1 0x7a3fac;

    bool addParticle() = imac 0x8b0580, m1 0x7a2540;
    void calculateWorldSpace() = imac 0x8b1600, m1 0x7a3298;
    // unsigned int getAtlasIndex() const;
    // bool getDontCleanupOnFinish() const;
    // bool getDynamicRotationIsDir() const;
    // bool getEndRGBVarSync() const;
    // float getFadeInTime() const;
    // float getFadeInTimeVar() const;
    // float getFadeOutTime() const;
    // float getFadeOutTimeVar() const;
    // float getFrictionPos() const;
    // float getFrictionPosVar() const;
    // float getFrictionRot() const;
    // float getFrictionRotVar() const;
    // float getFrictionSize() const;
    // float getFrictionSizeVar() const;
    // bool getOrderSensitive() const;
    int getParticleDrawCost() = m1 0x1ef13c;
    // float getRespawn() const;
    // float getRespawnVar() const;
    // bool getStartRGBVarSync() const;
    // bool getStartRadiusEqualToEnd() const;
    // bool getStartSizeEqualToEnd() const;
    // bool getStartSpinEqualToEnd() const;
    float getTimeElapsed() = imac 0x8b03e0, m1 0x7a23d4;
    void initParticle(cocos2d::sCCParticle*) = imac 0x8b05f0, m1 0x7a25ac;
    bool initWithDictionary(cocos2d::CCDictionary*, bool) = imac 0x8b0170, m1 0x7a21e8, ios inline;
    bool initWithDictionary(cocos2d::CCDictionary*, char const*, bool) = imac 0x8ae7c0, m1 0x7a09f4;
    bool initWithFile(char const*, bool) = imac 0x8ae4c0, m1 0xe6070;
    bool isFull() = imac 0x55de80, m1 0x7a2598, ios inline;
    void loadDefaults() = imac 0x8b2f80, ios inline;
    void loadScaledDefaults(float) = imac 0x60e270;
    void resetSystem() = imac 0x8b1690, m1 0x7a3308;
    void resumeSystem() = imac 0x8b1680, m1 0x7a32fc;
    void saveDefaults() = imac 0x8b0190, m1 0x7a21f8;
    void stopSystem() = imac 0x8b1650, m1 0x7a32e8;
    // void toggleUniformColorMode(bool);
    void updateVisible() = imac 0xd2cf0, m1 0x7a3434, ios inline;

    std::string m_sPlistFile;
    float m_fElapsed;
    cocos2d::CCPoint modeA_gravity;
    float modeA_speed;
    float modeA_speedVar;
    float modeA_tangentialAccel;
    float modeA_tangentialAccelVar;
    float modeA_radialAccel;
    float modeA_radialAccelVar;
    bool modeA_rotationIsDir;
    float modeB_startRadius;
    float modeB_startRadiusVar;
    float modeB_endRadius;
    float modeB_endRadiusVar;
    float modeB_rotatePerSecond;
    float modeB_rotatePerSecondVar;
    cocos2d::sCCParticle* m_pParticles;
    float m_fEmitCounter;
    uint32_t m_uParticleIdx;
    cocos2d::CCParticleBatchNode* m_pBatchNode;
    uint32_t m_uAtlasIndex;
    bool m_bTransformSystemDirty;
    uint32_t m_uAllocatedParticles;
    bool m_bIsActive;
    uint32_t m_uParticleCount;
    float m_fDuration;
    cocos2d::CCPoint m_tSourcePosition;
    cocos2d::CCPoint m_tPosVar;
    float m_fLife;
    float m_fLifeVar;
    float m_fAngle;
    float m_fAngleVar;
    float m_fFadeInTime;
    float m_fFadeInTimeVar;
    float m_fFadeOutTime;
    float m_fFadeOutTimeVar;
    float m_fFrictionPos;
    float m_fFrictionPosVar;
    float m_fFrictionSize;
    float m_fFrictionSizeVar;
    float m_fFrictionRot;
    float m_fFrictionRotVar;
    float m_fRespawn;
    float m_fRespawnVar;
    bool m_bStartSpinEqualToEnd;
    bool m_bStartSizeEqualToEnd;
    bool m_bStartRadiusEqualToEnd;
    bool m_bDynamicRotationIsDir;
    bool m_bOrderSensitive;
    bool m_bStartRGBVarSync;
    bool m_bEndRGBVarSync;
    bool m_bWasRemoved;
    bool m_bUsingSchedule;
    float m_fStartSize;
    float m_fStartSizeVar;
    float m_fEndSize;
    float m_fEndSizeVar;
    cocos2d::ccColor4F m_tStartColor;
    cocos2d::ccColor4F m_tStartColorVar;
    cocos2d::ccColor4F m_tEndColor;
    cocos2d::ccColor4F m_tEndColorVar;
    float m_fStartSpin;
    float m_fStartSpinVar;
    float m_fEndSpin;
    float m_fEndSpinVar;
    float m_fEmissionRate;
    uint32_t m_uTotalParticles;
    cocos2d::CCTexture2D* m_pTexture;
    cocos2d::ccBlendFunc m_tBlendFunc;
    bool m_bOpacityModifyRGB;
    bool m_bIsBlendAdditive;
    cocos2d::tCCPositionType m_ePositionType;
    bool m_bIsAutoRemoveOnFinish;
    bool m_bDontCleanupOnFinish;
    int m_nEmitterMode;
    bool m_bWorldPosUninitialized;
    cocos2d::CCPoint m_tWorldPos;
    cocos2d::ccColor4F m_tUniformColor;
    cocos2d::ccColor4F m_tUniformDeltaColor;
    bool m_bUseUniformColorMode;
    float m_fDefaultStartSize;
    float m_fDefaultStartSizeVar;
    float m_fDefaultEndSize2;
    float m_fDefaultEndSize;
    float m_fDefaultAngle;
    float m_fDefaultModeASpeed;
    float m_fDefaultModeASpeedVar;
    cocos2d::CCPoint m_tDefaultPosVar;
    int m_nCustomParticleIndex;
}

[[link(win, android)]]
class cocos2d::CCParticleSystemQuad : cocos2d::CCParticleSystem {
    // CCParticleSystemQuad(cocos2d::CCParticleSystemQuad const&);
    CCParticleSystemQuad() = imac 0x6da320, m1 0x5f03bc;
    virtual ~CCParticleSystemQuad() = imac 0x6da420, m1 0x5f04a4;

    static cocos2d::CCParticleSystemQuad* create() = imac 0x6db8b0, m1 0x5f12d0, ios inline;
    static cocos2d::CCParticleSystemQuad* create(char const*, bool) = imac 0x6da500, m1 0x5f053c;
    static cocos2d::CCParticleSystemQuad* createWithTotalParticles(unsigned int, bool) = imac 0x6da5e0, m1 0x5f0624;

    virtual void draw() = imac 0x6daec0;
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = imac 0x6db490, m1 0x5f1154;
    virtual void setTotalParticles(unsigned int) = imac 0x6daf90, m1 0x5f0f44;
    virtual bool initWithTotalParticles(unsigned int, bool) = imac 0x6d9a70, m1 0x5f0054;
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&) = imac 0x6dab50;
    virtual void postStep() = imac 0x5b4860, m1 0x5f0e28;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x6da9a0, m1 0x5f0988;

    bool allocMemory() = imac 0x6d9dd0, m1 0x5f0138;
    void initIndices() = imac 0x6d9ec0, m1 0x5f0218;
    void initTexCoordsWithRect(cocos2d::CCRect const&) = imac 0x6da6d0, m1 0x5f0714;
    void listenBackToForeground(cocos2d::CCObject*) = imac 0x6db480, m1 0x5f1150, ios inline;
    // unsigned char getOpacity();
    void setDisplayFrame(cocos2d::CCSpriteFrame*) = imac 0x6daac0, m1 0x5f0ad4;
    // void setOpacity(unsigned char);
    void setTextureWithRect(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = imac 0x6da940;
    [[missing(mac, ios)]]
    void setupVBO();
    [[missing(win, android)]]
    void setupVBOandVAO() = imac 0x6da1b0, m1 0x5f0288;
    void updateTexCoords() = imac 0x6da920, m1 0x5f0900, ios inline;

    cocos2d::ccV3F_C4B_T2F_Quad* m_pQuads;
    uint16_t* m_pIndices;
    uint32_t m_uVAOname;
    std::array<uint32_t, 2> m_pBuffersVBO;
    cocos2d::CCRect m_tTextureRect;
    cocos2d::ccColor4B m_tQuadColor;
    uint16_t m_uParticleIdx;
    uint8_t m_uOpacity;
}

[[link(win, android)]]
class cocos2d::CCPlace : cocos2d::CCActionInstant {
    static cocos2d::CCPlace* create(cocos2d::CCPoint const&) = imac 0x8900d0, m1 0x784228;

    virtual void update(float) = imac 0x890280, m1 0x7843c4;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x890190, m1 0x7842cc;

    bool initWithPosition(cocos2d::CCPoint const&) = imac 0x890170, m1 0x7842b0;
}

[[link(win, android)]]
class cocos2d::CCPointArray : cocos2d::CCObject {
    CCPointArray() = imac 0x2bdbe0, m1 0x25dfb8;
    virtual ~CCPointArray() = imac 0x2bda50, m1 0x25de10;

    static cocos2d::CCPointArray* create(unsigned int) = imac 0x2bd700, m1 0x25db14;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x2bd7d0, m1 0x25dbd8;

    void addControlPoint(cocos2d::CCPoint) = imac 0x2bdc20, m1 0x25dfe4;
    unsigned int count() = imac 0x2be110, m1 0x25e46c;
    cocos2d::CCPoint getControlPointAtIndex(unsigned int) = imac 0x2be030, m1 0x25e390;
    std::vector<cocos2d::CCPoint*> const* getControlPoints() = imac 0x2bdc10, m1 0x25dfdc;
    bool initWithCapacity(unsigned int) = imac 0x2bd7a0, m1 0x25dba4;
    void insertControlPoint(cocos2d::CCPoint&, unsigned int) = imac 0x2bdd60, m1 0x25e0ec;
    void removeControlPointAtIndex(unsigned int) = imac 0x2be0b0, m1 0x25e404;
    void replaceControlPoint(cocos2d::CCPoint&, unsigned int) = imac 0x2be080, m1 0x25e3d0;
    cocos2d::CCPointArray* reverse() = imac 0x2be130, m1 0x25e480;
    void reverseInline() = imac 0x2be3a0, m1 0x25e690;
    void setControlPoints(std::vector<cocos2d::CCPoint*>*) = imac 0x2bd9d0, m1 0x25dd8c;
}

[[link(win, android)]]
class cocos2d::CCPoolManager {
    CCPoolManager() = imac 0x3e3bd0, m1 0x362038;
    ~CCPoolManager() = imac 0x3e3c20, m1 0x36208c;

    static void purgePoolManager() = imac 0x3e3b80, m1 0x362004;
    static cocos2d::CCPoolManager* sharedPoolManager() = imac 0x3e3aa0, m1 0x361f0c;

    void addObject(cocos2d::CCObject*) = imac 0x3e3fa0, m1 0x362404;
    void finalize() = imac 0x3e3d20, m1 0x362184;
    cocos2d::CCAutoreleasePool* getCurReleasePool() = imac 0x3e3fe0, m1 0x362450, ios inline;
    void pop() = imac 0x3e3ea0, m1 0x3622fc;
    void push() = imac 0x3e3df0, m1 0x362240;
    void removeObject(cocos2d::CCObject*) = imac 0x3e3f50, m1 0x3623b0;
}

[[link(win, android)]]
class cocos2d::CCPrettyPrinter : cocos2d::CCDataVisitor {
    CCPrettyPrinter(int) = win inline, imac 0x4ae300, m1 0x4139b8;

    virtual void clear() = imac 0x4ae4b0, m1 0x413ba8;
    virtual std::string getResult() = imac 0x4ae4e0, m1 0x413bcc;
    virtual void visitObject(cocos2d::CCObject const*) = imac 0x4ae520, m1 0x413bf4;
    virtual void visit(cocos2d::CCBool const*) = imac 0x4ae5a0, m1 0x413c74;
    virtual void visit(cocos2d::CCInteger const*) = imac 0x4ae630, m1 0x413d04;
    virtual void visit(cocos2d::CCFloat const*) = imac 0x4ae6b0, m1 0x413d88;
    virtual void visit(cocos2d::CCDouble const*) = imac 0x4ae730, m1 0x413e10;
    virtual void visit(cocos2d::CCString const*) = imac 0x4ae7b0, m1 0x413e94;
    virtual void visit(cocos2d::CCArray const*) = imac 0x4ae7e0, m1 0x413ec0;
    virtual void visit(cocos2d::CCDictionary const*) = imac 0x4aecf0, m1 0x41430c;
    virtual void visit(cocos2d::CCSet const*) = imac 0x4af190, m1 0x4146d8;

    void setIndentLevel(int) = imac 0x4ae3a0, m1 0x413a70;
}

[[link(win, android)]]
class cocos2d::CCProfiler : cocos2d::CCObject {
    virtual ~CCProfiler() = imac 0x4e6f60, m1 0x445a8c;

    static cocos2d::CCProfiler* sharedProfiler() = imac 0x4e6bc0, m1 0x4456f4;

    cocos2d::CCProfilingTimer* createAndAddTimerWithName(char const*) = imac 0x4e6cb0, m1 0x4457e8;
    void displayTimers() = imac 0x4e7020, m1 0x445b44;
    bool init() = imac 0x4e6c70, m1 0x4457a0;
    void releaseAllTimers() = imac 0x4e6f50, m1 0x445a84;
    void releaseTimer(char const*) = imac 0x4e6e70;
}

[[link(android)]]
class cocos2d::CCProfilingTimer : cocos2d::CCObject {
    CCProfilingTimer() = win inline, imac 0x4e7030, m1 0x445b48;
    virtual ~CCProfilingTimer() = win inline, imac 0x4e7080, m1 0x445b88;

    char const* description() = win inline, imac 0x4e7140, m1 0x445c64;
    bool initWithName(char const*) = win inline, imac 0xd8e00, m1 0xbf040;
    void reset() = win inline, imac 0x4e71b0, m1 0x445ce8;
}

[[link(win, android)]]
class cocos2d::CCProgressFromTo : cocos2d::CCActionInterval {
    static cocos2d::CCProgressFromTo* create(float, float, float) = imac 0x425680, m1 0x39cd80;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x425770, m1 0x39ce54;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x425870, m1 0x39cf3c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x425920, m1 0x39cfd0;
    virtual void update(float) = imac 0x425930, m1 0x39cfd4;

    bool initWithDuration(float, float, float) = imac 0x425730, m1 0x39ce1c;
}

[[link(win, android)]]
class cocos2d::CCProgressTimer : cocos2d::CCNodeRGBA {
    // CCProgressTimer(cocos2d::CCProgressTimer const&);
    CCProgressTimer() = imac 0x6db9e0, m1 0x5f1408;
    virtual ~CCProgressTimer() = imac 0x6dbea0, m1 0x5f1820;

    static cocos2d::CCProgressTimer* create(cocos2d::CCSprite*) = imac 0x6dbb20, m1 0x5f1510;

    virtual cocos2d::ccColor3B const& getColor() const = imac 0x6dc1f0, m1 0x5f1afc;
    virtual unsigned char getOpacity() const = imac 0x6dc2f0, m1 0x5f1bec;
    virtual void draw() = imac 0x6de0d0, m1 0x5f31c8;
    virtual cocos2d::CCPoint getMidpoint() = imac 0x6ddfb0, m1 0x3e2ba4;
    virtual void setMidpoint(cocos2d::CCPoint) = imac 0x6ddfd0, m1 0x5f30ec;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x6dc0c0, m1 0x5f19d4;
    virtual void setOpacity(unsigned char) = imac 0x6dc210, m1 0x5f1b0c;

    cocos2d::CCPoint boundaryTexCoord(char) = imac 0x6de040, m1 0x5f3148;
    bool initWithSprite(cocos2d::CCSprite*) = imac 0x6dbc00, m1 0x5f15cc;
    // cocos2d::CCPoint getBarChangeRate() const;
    // float getPercentage();
    // cocos2d::CCSprite* getSprite();
    // cocos2d::CCProgressTimerType getType();
    void setAnchorPoint(cocos2d::CCPoint) = imac 0x6dbe00, m1 0x5f179c, ios inline;
    // void setBarChangeRate(cocos2d::CCPoint);
    void setPercentage(float) = imac 0x6dbd90, m1 0x5f1730;
    // void setReverseDirection(bool);
    void setReverseProgress(bool) = imac 0x6dc070, m1 0x5f198c, ios inline;
    void setSprite(cocos2d::CCSprite*) = imac 0x6dbe10, m1 0x5f17a0;
    void setType(cocos2d::CCProgressTimerType type) = imac 0x6dc020, m1 0x5f193c, ios inline;
    // bool isReverseDirection();
    cocos2d::ccTex2F textureCoordFromAlphaPoint(cocos2d::CCPoint) = imac 0x6dc310, m1 0x5f1bfc;
    void updateBar() = imac 0x6dce40, m1 0x5f249c;
    void updateColor() = imac 0x6dc140, m1 0x5f1a44;
    void updateProgress() = imac 0x6dbff0, m1 0x5f1920;
    void updateRadial() = imac 0x6dc450, m1 0x5f1d20;
    cocos2d::ccVertex2F vertexFromAlphaPoint(cocos2d::CCPoint) = imac 0x6dc3c0, m1 0x5f1c9c;
}

[[link(win, android)]]
class cocos2d::CCProgressTo : cocos2d::CCActionInterval {
    static cocos2d::CCProgressTo* create(float, float) = imac 0x425440, m1 0x39cb7c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x425510, m1 0x39cc40;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x425610, m1 0x39cd28;
    virtual void update(float) = imac 0x425650, m1 0x39cd68;

    bool initWithDuration(float, float) = imac 0x4254e0, m1 0x39cc0c;
}

[[link(win, android)]]
class cocos2d::CCRemoveSelf : cocos2d::CCActionInstant {
    static cocos2d::CCRemoveSelf* create(bool isNeedCleanUp) = imac 0x88fbc0, m1 0x783d0c, ios inline;

    // CCRemoveSelf(cocos2d::CCRemoveSelf const&);
    // CCRemoveSelf();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x88fcb0, m1 0x783df0, ios inline;
    virtual void update(float time) = imac 0x88fc30, m1 0x783d78, ios inline;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x88fc50, m1 0x783d90, ios inline;

    bool init(bool isNeedCleanUp) = imac 0x88fc20, m1 0x783d6c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCRenderTexture : cocos2d::CCNode {
    // CCRenderTexture(cocos2d::CCRenderTexture const&);
    CCRenderTexture() = imac 0x6c7d00, m1 0x5e0008, ios inline;
    virtual ~CCRenderTexture() = imac 0x6c7dc0, m1 0x5e00a0;

    static cocos2d::CCRenderTexture* create(int, int) = imac 0x6c84e0, m1 0x5e0704;
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat) = imac 0x65ddd0, m1 0x5e01e8;
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = imac 0x6c8070, m1 0x5e02c8, ios inline;

    virtual void draw() = imac 0x6c8dd0, m1 0x5e0f4c;
    virtual void visit() = imac 0x6c8d40, m1 0x5e0eb4;
    virtual cocos2d::CCSprite* getSprite() = imac 0x6c7eb0, m1 0x5e0140;
    virtual void setSprite(cocos2d::CCSprite*) = imac 0x6c7ec0, m1 0x5e0148;

    void begin() = imac 0x6c85c0, m1 0x5e07fc;
    void beginWithClear(float, float, float, float) = imac 0x6c87f0, m1 0x5e09f0;
    void beginWithClear(float, float, float, float, float) = imac 0x6c8a30, m1 0x5e0bd8, ios inline;
    void beginWithClear(float, float, float, float, float, int) = imac 0x6c8b10, m1 0x5e0ca8, ios inline;
    void beginWithClear(float, float, float, float, float, int, unsigned int) = imac 0x6c8890, m1 0x5e0a90;
    void clear(float, float, float, float) = imac 0x6c8b70, m1 0x5e0cfc, ios inline;
    void clearDepth(float) = imac 0x6c8c60, m1 0x5e0ddc, ios inline;
    void clearStencil(int) = imac 0x6c8d00, m1 0x5e0e6c, ios inline;
    void end() = imac 0x6c8b20, m1 0x5e0cb0;
    cocos2d::ccColor4F const& getClearColor() const = imac 0x6c7f20, m1 0x5e019c, ios inline;
    float getClearDepth() const = imac 0x6c7f40, m1 0x5e01b4, ios inline;
    unsigned int getClearFlags() const = imac 0x6c7f00, m1 0x5e018c, ios inline;
    int getClearStencil() const = imac 0x6c7f60, m1 0x5e01c4, ios inline;
    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat) = imac 0x6c8060, m1 0x5e02c0, ios inline;
    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = imac 0x6c8140, m1 0x5e03b0;
    // void endToLua();
    bool isAutoDraw() const = imac 0x6c7f80, m1 0x5e01d8, ios inline;
    void listenToBackground(cocos2d::CCObject*) = imac 0x6c7e90, m1 0x5e0138, ios inline;
    void listenToForeground(cocos2d::CCObject*) = imac 0x6c7ea0, m1 0x5e013c, ios inline;
    cocos2d::CCImage* newCCImage(bool flipImage) = imac 0x6c9080, m1 0x5e116c, ios inline;
    bool saveToFile(char const*) = inline;
    bool saveToFile(char const*, cocos2d::eImageFormat) = inline;
    void setAutoDraw(bool) = imac 0x6c7f90, ios inline;
    void setClearColor(cocos2d::ccColor4F const&) = imac 0x6c7f30, m1 0x5e01a4, ios inline;
    void setClearDepth(float) = imac 0x6c7f50, m1 0x5e01bc, ios inline;
    void setClearFlags(unsigned int) = imac 0x6c7f10, m1 0x5e0194, ios inline;
    void setClearStencil(float) = imac 0x6c7f70, m1 0x5e01cc, ios inline;
    void updateInternalScale(float, float) = imac 0x6c85a0, m1 0x5e07d8;
}

[[link(win, android)]]
class cocos2d::CCRepeat : cocos2d::CCActionInterval {
    // cocos2d::CCFiniteTimeAction* getInnerAction();
    // void setInnerAction(cocos2d::CCFiniteTimeAction*);
    // CCRepeat(cocos2d::CCRepeat const&);
    // CCRepeat();
    virtual ~CCRepeat() = imac 0x39f950, m1 0x328070, ios inline;

    static cocos2d::CCRepeat* create(cocos2d::CCFiniteTimeAction* pAction, unsigned int times) = imac 0x39f660, m1 0x327d98, ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x39f7f0, m1 0x327f20, ios inline;
    virtual void update(float dt) = imac 0x39fa90, m1 0x3281b0, ios inline;
    virtual bool isDone() = imac 0x39fbb0, m1 0x328324, ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x39fa10, m1 0x328128, ios inline;
    virtual void stop() = imac 0x39fa60, m1 0x328180, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x39fbc0, m1 0x328334, ios inline;

    bool initWithAction(cocos2d::CCFiniteTimeAction* pAction, unsigned int times) = imac 0x39f760, m1 0x327e88, ios inline;
}

[[link(win, android)]]
class cocos2d::CCRepeatForever : cocos2d::CCActionInterval {
    // cocos2d::CCActionInterval* getInnerAction();
    // void setInnerAction(cocos2d::CCActionInterval*);
    // CCRepeatForever(cocos2d::CCRepeatForever const&);
    // CCRepeatForever();
    virtual ~CCRepeatForever() = imac 0x39fbf0, m1 0x328364;

    static cocos2d::CCRepeatForever* create(cocos2d::CCActionInterval*) = imac 0x39fcb0, m1 0x32841c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x39fd40, m1 0x3284b8;
    virtual bool isDone() = imac 0x39fed0, m1 0x328660;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x39fe20, m1 0x328588;
    virtual void step(float) = imac 0x39fe60, m1 0x3285c8;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x39fee0, m1 0x328668;

    bool initWithAction(cocos2d::CCActionInterval*) = imac 0x39fd20, m1 0x328488, ios inline;
}

[[link(win, android)]]
class cocos2d::CCReuseGrid : cocos2d::CCActionInstant {
    static cocos2d::CCReuseGrid* create(int) = imac 0x1ee2e0, m1 0x1a055c;

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x1ee360, m1 0x1a05d8;

    bool initWithTimes(int) = imac 0x1ee350, m1 0x1a05cc;
}

[[link(win, android)]]
class cocos2d::CCReverseTime : cocos2d::CCActionInterval {
    CCReverseTime() = imac 0x3a53c0, m1 0x32d00c;
    virtual ~CCReverseTime() = imac 0x3a53f0, m1 0x32d034;

    static cocos2d::CCReverseTime* create(cocos2d::CCFiniteTimeAction*) = imac 0x3a5180, m1 0x32ce00;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a52a0, m1 0x32cf08;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a54b0, m1 0x32d0ec;
    virtual void stop() = imac 0x3a54f0, m1 0x32d12c;
    virtual void update(float) = imac 0x3a5520, m1 0x32d15c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a5550, m1 0x32d17c;

    bool initWithAction(cocos2d::CCFiniteTimeAction*) = imac 0x3a5240, m1 0x32ceac;
}

[[link(win, android)]]
class cocos2d::CCRipple3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCRipple3D* create(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float) = imac 0x26ac50, m1 0x211e70;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x26ae00, m1 0x21200c;
    virtual void update(float) = imac 0x26af80, m1 0x212158;

    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float) = imac 0x26ad80, m1 0x211f98;
    void setPosition(cocos2d::CCPoint const&) = imac 0x26adf0, m1 0x212004;
}

[[link(win, android)]]
class cocos2d::CCRotateBy : cocos2d::CCActionInterval {
    static cocos2d::CCRotateBy* create(float, float) = imac 0x3a10c0, m1 0x3295a8;
    static cocos2d::CCRotateBy* create(float, float, float) = imac 0x3a11c0, m1 0x329670;

    // CCRotateBy(cocos2d::CCRotateBy const&);
    // CCRotateBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a12c0, m1 0x329744;
    virtual void update(float) = imac 0x3a1420, m1 0x329894;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a13d0, m1 0x32983c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a1490, m1 0x329920;

    bool initWithDuration(float, float) = imac 0x3a1180, m1 0x329644, ios inline;
    bool initWithDuration(float, float, float) = imac 0x3a1280, m1 0x329718, ios inline;
}

[[link(win, android)]]
class cocos2d::CCRotateTo : cocos2d::CCActionInterval {
    static cocos2d::CCRotateTo* create(float, float) = imac 0x3a0c00, m1 0x3291b0;
    static cocos2d::CCRotateTo* create(float fDuration, float fDeltaAngleX, float fDeltaAngleY) = imac 0x3a0d00, m1 0x32927c, ios inline;

    // CCRotateTo(cocos2d::CCRotateTo const&);
    // CCRotateTo();
    virtual bool initWithDuration(float fDuration, float fDeltaAngleX, float fDeltaAngleY) = imac 0x3a0dd0, m1 0x329328;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a0e10, m1 0x329354;
    virtual void update(float) = imac 0x3a1050, m1 0x32951c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a0f00, m1 0x32943c;

    bool initWithDuration(float, float) = imac 0x3a0cc0, m1 0x329250, ios inline;
}

[[link(win, android)]]
class cocos2d::CCSAXParser {
    CCSAXParser() = imac 0x155440, m1 0x121838;
    ~CCSAXParser() = imac 0x155460, m1 0x121844;

    static void endElement(void*, cocos2d::CC_XML_CHAR const*) = imac 0x1553a0, m1 0x12179c;
    static void startElement(void*, cocos2d::CC_XML_CHAR const*, cocos2d::CC_XML_CHAR const**) = imac 0x155350, m1 0x121740;
    static void textHandler(void*, cocos2d::CC_XML_CHAR const*, int) = imac 0x155410, m1 0x121814;

    bool init(char const*) = imac 0x155470, m1 0x121848;
    bool parse(char const*) = imac 0x155520, m1 0x1218f4;
    bool parse(char const*, unsigned int) = imac 0x155480, m1 0x121850;
    void setDelegator(cocos2d::CCSAXDelegator*) = imac 0x155610, m1 0x1219f4;
}

[[link(win, android)]]
class cocos2d::CCScaleBy : cocos2d::CCScaleTo {
    static cocos2d::CCScaleBy* create(float duration, float s) = imac 0x3a38e0, m1 0x32b80c, ios inline;
    static cocos2d::CCScaleBy* create(float duration, float sx, float sy) = imac 0x3a39a0, m1 0x32b8a4, ios inline;

    // CCScaleBy(cocos2d::CCScaleBy const&);
    // CCScaleBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3a3b80, m1 0x32ba38, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a3be0, m1 0x32baa8, ios inline;
}

[[link(win, android)]]
class cocos2d::CCScaleTo : cocos2d::CCActionInterval {
    static cocos2d::CCScaleTo* create(float, float) = imac 0x3a34f0, m1 0x32b4b8;
    static cocos2d::CCScaleTo* create(float, float, float) = imac 0x3a35f0, m1 0x32b578;

    // CCScaleTo(cocos2d::CCScaleTo const&);
    // CCScaleTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x3a3880, m1 0x32b7a0;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a3810, m1 0x32b734;

    bool initWithDuration(float duration, float s) = imac 0x3a35b0, m1 0x32b550, ios inline;
    bool initWithDuration(float duration, float sx, float sy) = imac 0x3a36c0, m1 0x32b61c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCScene : cocos2d::CCNode {
    // CCScene(cocos2d::CCScene const&);
    CCScene() = imac 0x27c190, m1 0x221af0;
    virtual ~CCScene() = imac 0x27c280, m1 0x221be8;

    static cocos2d::CCScene* create() = imac 0x27c300, m1 0x221c5c;

    virtual bool init() = imac 0x27c2b0, m1 0x221c04;

    int getHighestChildZ() = imac 0x27c3c0, m1 0x221d3c;
}

[[link(win, android)]]
class cocos2d::CCScheduler : cocos2d::CCObject {
    // float getTimeScale();
    // void setTimeScale(float);
    // CCScheduler(cocos2d::CCScheduler const&);
    CCScheduler() = imac 0x436310, m1 0x3ac668;
    virtual ~CCScheduler() = imac 0x436360, m1 0x3ac6a4;

    virtual void update(float) = imac 0x4381a0, m1 0x3ae538;

    void appendIn(cocos2d::_listEntry**, cocos2d::CCObject*, bool) = imac 0x436e40, m1 0x3ad1bc;
    bool isTargetPaused(cocos2d::CCObject*) = ios inline;
    cocos2d::CCSet* pauseAllTargets() = imac 0x437fd0, m1 0x3ae36c, ios inline;
    cocos2d::CCSet* pauseAllTargetsWithMinPriority(int) = imac 0x437fe0, m1 0x3ae374, ios inline;
    void pauseTarget(cocos2d::CCObject*);
    void priorityIn(cocos2d::_listEntry**, cocos2d::CCObject*, int, bool) = imac 0x436ac0, m1 0x3ace1c;
    void removeHashElement(cocos2d::_hashSelectorEntry*) = imac 0x436460, m1 0x3ac77c;
    void removeUpdateFromHash(cocos2d::_listEntry*) = imac 0x4372c0, m1 0x3ad644;
    void resumeTarget(cocos2d::CCObject*);
    void resumeTargets(cocos2d::CCSet*) = imac 0x438110, m1 0x3ae4a4, ios inline;
    unsigned int scheduleScriptFunc(unsigned int, float, bool) = imac 0x4378a0, m1 0x3adcb8, ios inline;
    void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, bool) = imac 0x436570, m1 0x3ac8a4;
    void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, unsigned int, float, bool) = imac 0x436590, m1 0x3ac8b4;
    void scheduleUpdateForTarget(cocos2d::CCObject*, int, bool) = imac 0x437170, m1 0x3ad508;
    void unscheduleAll() = imac 0x9370, m1 0x3ac6e8;
    void unscheduleAllForTarget(cocos2d::CCObject*) = imac 0x437710, m1 0x3adb14;
    void unscheduleAllWithMinPriority(int) = imac 0x437620, m1 0x3ada28;
    void unscheduleScriptEntry(unsigned int) = imac 0x4378f0, m1 0x3add24, ios inline;
    void unscheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*) = imac 0x4360a0, m1 0x3ac3d8;
    void unscheduleUpdateForTarget(cocos2d::CCObject const*) = imac 0x437500, m1 0x3ad8fc;
}

[[link(android)]]
class cocos2d::CCSchedulerScriptHandlerEntry : cocos2d::CCScriptHandlerEntry {
    virtual ~CCSchedulerScriptHandlerEntry() = win inline, imac 0x306e60, m1 0x29a3f0;

    static cocos2d::CCSchedulerScriptHandlerEntry* create(int, float, bool) = imac 0x306d00, m1 0x29a28c;

    bool init(float, bool) = win inline, imac 0x306de0, m1 0x29a36c;
}

[[link(win, android)]]
class cocos2d::CCScriptEngineManager {
    // cocos2d::CCScriptEngineProtocol* getScriptEngine();
    ~CCScriptEngineManager() = imac 0x307180, m1 0x29a708, ios inline;

    static void purgeSharedManager() = imac 0x307240, m1 0x29a7ec, ios inline;
    static cocos2d::CCScriptEngineManager* sharedManager() = imac 0x306b80, m1 0x29a0dc;

    void removeScriptEngine() = imac 0x3071b0, m1 0x29a744, ios inline;
    void setScriptEngine(cocos2d::CCScriptEngineProtocol* engine) = imac 0x307210, m1 0x29a7b4, ios inline;
}

[[link(win, android)]]
class cocos2d::CCScriptHandlerEntry : cocos2d::CCObject {
    virtual ~CCScriptHandlerEntry() = imac 0x306c10, m1 0x29a18c;

    static cocos2d::CCScriptHandlerEntry* create(int) = imac 0x306bb0, m1 0x29a11c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCSequence : cocos2d::CCActionInterval {
    // CCSequence(cocos2d::CCSequence const&);
    // CCSequence();
    virtual ~CCSequence() = imac 0x39f280, m1 0x3279d4;

    static cocos2d::CCSequence* create(cocos2d::CCArray*) = imac 0x39eee0, m1 0x32769c;
    // static cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, ...) = imac 0x3a2600, m1 0x33d1fc, ios 0x18da90;
    static cocos2d::CCSequence* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x39ea30, m1 0x327354;
    static cocos2d::CCSequence* createWithVariableList(cocos2d::CCFiniteTimeAction*, va_list) = imac 0x39ec10, m1 0x32749c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x39f130, m1 0x3278a8;
    virtual void update(float) = imac 0x39f3f0, m1 0x327b3c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x39f370, m1 0x327ab0;
    virtual void stop() = imac 0x39f3b0, m1 0x327af8;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x39f570, m1 0x327cb8;

    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x39eb00, m1 0x327410;
}

[[link(win, android)]]
class cocos2d::CCSet : cocos2d::CCObject {
    // CCSet(cocos2d::CCSet const&) = imac 0x79df40, m1 0x6b0448, ios 0x1af714;
    CCSet() = imac 0x898860, m1 0x78bfa4;
    virtual ~CCSet() = imac 0x8989c0, m1 0x78c11c;

    static cocos2d::CCSet* create() = imac 0x898b50, m1 0x78c288, ios inline;

    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x898b30, m1 0x78c270;

    void addObject(cocos2d::CCObject*) = imac 0x898c70, m1 0x78c3ac;
    cocos2d::CCObject* anyObject() = imac 0x898e40, m1 0x78c59c, ios inline;
    cocos2d::CCSetIterator begin() = imac 0x898e20, m1 0x78c584;
    bool containsObject(cocos2d::CCObject*) = imac 0x898dd0, m1 0x78c538;
    cocos2d::CCSet* copy() = imac 0x898be0, m1 0x78c310;
    int count() = imac 0x898c60, m1 0x78c3a0;
    cocos2d::CCSetIterator end() = imac 0x898e30, m1 0x78c590;
    cocos2d::CCSet* mutableCopy() = imac 0x898c20, m1 0x78c358;
    void removeAllObjects() = imac 0x898a80, m1 0x78c1d8;
    void removeObject(cocos2d::CCObject*) = imac 0x898d20, m1 0x78c464;

    std::set<cocos2d::CCObject*> m_pSet;
}

[[link(win, android)]]
class cocos2d::CCShaderCache : cocos2d::CCObject {
    // CCShaderCache(cocos2d::CCShaderCache const&);
    CCShaderCache() = imac 0x1e4ab0, m1 0x1980d0, ios inline;
    virtual ~CCShaderCache() = imac 0x1e4ae0, m1 0x1980f4;

    static void purgeSharedShaderCache() = imac 0x1e4a80, m1 0x1980a4;
    static cocos2d::CCShaderCache* sharedShaderCache() = imac 0x1e4960, m1 0x197f84;

    void addProgram(cocos2d::CCGLProgram*, char const*) = imac 0x308520;
    bool init() = imac 0x1e4a30, m1 0x198054;
    void loadDefaultShader(cocos2d::CCGLProgram*, int) = imac 0x1e52e0, m1 0x198930;
    void loadDefaultShaders() = imac 0x1e4ba0, m1 0x1981a0;
    cocos2d::CCGLProgram* programForKey(char const*) = imac 0x1e5840, m1 0x198f1c;
    void reloadDefaultShaders() = imac 0x1e54c0, m1 0x198b74, ios inline;
}

[[link(win, android)]]
class cocos2d::CCShaky3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCShaky3D* create(float, cocos2d::CCSize const&, int, bool);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x26b270, m1 0x212410;
    virtual void update(float) = imac 0x26b3a0, m1 0x212534;

    bool initWithDuration(float, cocos2d::CCSize const&, int, bool) = imac 0x26b240, m1 0x2123d4;
}

[[link(win, android)]]
class cocos2d::CCShakyTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCShakyTiles3D* create(float, cocos2d::CCSize const&, int, bool);

    virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool) = imac 0x89a600, m1 0x78db80;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x89a750, m1 0x78dcd4;
}

[[link(win, android)]]
class cocos2d::CCShatteredTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCShatteredTiles3D* create(float, cocos2d::CCSize const&, int, bool) = imac 0x89a9e0, m1 0x78df98;

    virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool) = imac 0x89aad0, m1 0x78e098;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x89ac30, m1 0x78e1f0;
}

[[link(win, android)]]
class cocos2d::CCShow : cocos2d::CCActionInstant {
    static cocos2d::CCShow* create() = imac 0x88f7b0, m1 0x7838b0;

    // CCShow(cocos2d::CCShow const&);
    // CCShow();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x88f8c0, m1 0x7839cc;
    virtual void update(float) = imac 0x88f800, m1 0x783908;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x88f820, m1 0x78391c;
}

[[link(win, android)]]
class cocos2d::CCShuffleTiles : cocos2d::CCTiledGrid3DAction {
    virtual ~CCShuffleTiles() = imac 0x89b110, m1 0x78e704;

    static cocos2d::CCShuffleTiles* create(float, cocos2d::CCSize const&, unsigned int) = imac 0x89aed0, m1 0x78e4c8;

    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int) = imac 0x89afc0, m1 0x78e5c0;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x89b3b0, m1 0x78e984;
    virtual void update(float) = imac 0x89b6d0, m1 0x78ec8c;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x89aff0, m1 0x78e5f0;

    cocos2d::CCSize getDelta(cocos2d::CCSize const&) = imac 0x89b260, m1 0x78e84c;
    void placeTile(cocos2d::CCPoint const&, cocos2d::Tile*) = imac 0x89b300, m1 0x4c1e10;
    void shuffle(unsigned int*, unsigned int) = imac 0x89b210, m1 0x78e7ec;
}

[[link(win, android)]]
class cocos2d::CCSkewBy : cocos2d::CCSkewTo {
    static cocos2d::CCSkewBy* create(float t, float sx, float sy) = imac 0x3a20a0, m1 0x32a384, ios inline;

    // CCSkewBy(cocos2d::CCSkewBy const&);
    // CCSkewBy();
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3a21d0, m1 0x32a464, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a22e0, m1 0x32a540, ios inline;
    virtual bool initWithDuration(float t, float deltaSkewX, float deltaSkewY) = imac 0x3a2180, m1 0x32a438, ios inline;
}

[[link(win, android)]]
class cocos2d::CCSkewTo : cocos2d::CCActionInterval {
    CCSkewTo() = imac 0x3a1d50, m1 0x32a0e0, ios inline;

    static cocos2d::CCSkewTo* create(float t, float sx, float sy) = imac 0x3a1ca0, m1 0x32a044, ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x3a1dd0, m1 0x32a138, ios inline;
    virtual void update(float t) = imac 0x3a2000, m1 0x32a2f8, ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3a1eb0, m1 0x32a210, ios inline;
    virtual bool initWithDuration(float t, float sx, float sy) = imac 0x3a1d90, m1 0x32a110, ios inline;
}

[[link(win, android)]]
class cocos2d::CCSpawn : cocos2d::CCActionInterval {
    // CCSpawn(cocos2d::CCSpawn const&);
    // CCSpawn();
    virtual ~CCSpawn() = imac 0x3a09a0, m1 0x328f2c;

    static cocos2d::CCSpawn* create(cocos2d::CCArray* arrayOfActions) = imac 0x3a02f0, m1 0x328930, ios inline;
    // static cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction*, ...) = m1 0x33e430, imac 0x3b9e30;
    static cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction* first, ...) = inline;
    static cocos2d::CCSpawn* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3a0260, m1 0x3288a4;
    static cocos2d::CCSpawn* createWithVariableList(cocos2d::CCFiniteTimeAction*, va_list) = imac 0x3a0010, m1 0x32870c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a08a0, m1 0x328e38;
    virtual void update(float) = imac 0x3a0b00, m1 0x32909c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a0a90, m1 0x329008;
    virtual void stop() = imac 0x3a0ad0, m1 0x32905c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a0b50, m1 0x18dcf4;

    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3a04c0, m1 0x328b14;
}

[[link(win, android)]]
class cocos2d::CCSpeed : cocos2d::CCAction {
    // void setSpeed(float);
    // CCSpeed(cocos2d::CCSpeed const&);
    // CCSpeed();
    virtual ~CCSpeed() = imac 0x6c71a0, m1 0x5df540;

    static cocos2d::CCSpeed* create(cocos2d::CCActionInterval*, float) = imac 0x6c7290, m1 0x5df61c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x6c7370, m1 0x5df6ec;
    virtual bool isDone() = imac 0x6c7580, m1 0x5df8d4;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x6c7510, m1 0x5df874;
    virtual void stop() = imac 0x6c7530, m1 0x5df888;
    virtual void step(float) = imac 0x6c7560, m1 0x5df8b8;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x6c7590, m1 0x5df8e4;

    bool initWithAction(cocos2d::CCActionInterval*, float) = imac 0x6c7330, m1 0x5df6ac;
    // cocos2d::CCActionInterval* getInnerAction();
    // float getSpeed();
    void setInnerAction(cocos2d::CCActionInterval*) = imac 0x6c7640, m1 0x5df988;
}

[[link(win, android)]]
class cocos2d::CCSplitCols : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCSplitCols* create(float, unsigned int);

    virtual bool initWithDuration(float, unsigned int) = imac 0x89d4c0;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x89d680, m1 0x790b68;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x89d640, m1 0x790b28;
}

[[link(win, android)]]
class cocos2d::CCSplitRows : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCSplitRows* create(float, unsigned int);

    virtual bool initWithDuration(float, unsigned int) = imac 0x89d110;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x89d2d0, m1 0x7907e0;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x89d290, m1 0x7907a0;
}

[[link(win, android)]]
class cocos2d::CCSprite : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    // void setTextureAtlas(cocos2d::CCTextureAtlas*);
    // void setTlVertexMod(float);
    // void setTrVertexMod(float);
    // void setUseVertexMod(bool);
    // CCSprite(cocos2d::CCSprite const&);
    CCSprite() = imac 0x274060, m1 0x21aab4;
    virtual ~CCSprite() = imac 0x274160, m1 0x21ab3c;

    static cocos2d::CCSprite* create() = imac 0x1b5b90, m1 0x21a63c;
    static cocos2d::CCSprite* create(char const*) = imac 0x2738a0, m1 0x21a32c;
    static cocos2d::CCSprite* create(char const*, cocos2d::CCRect const&) = ios inline;
    static cocos2d::CCSprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x273a90, m1 0x21a520;
    static cocos2d::CCSprite* createWithSpriteFrameName(char const*) = imac 0x273b90, m1 0x21a614;
    static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*) = imac 0x273610, m1 0x21a0b0;
    static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);

    virtual bool init() = imac 0x273cb0, m1 0x21a724;
    virtual void setVertexZ(float) = imac 0x275780, m1 0x21bf5c;
    virtual void setScaleX(float) = imac 0x275620, m1 0x21bdcc;
    virtual void setScaleY(float) = imac 0x275690, m1 0x21be4c;
    virtual void setScale(float) = imac 0x275700, m1 0x21becc;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x275370, m1 0x21baf0;
    virtual void setSkewX(float) = imac 0x275540, m1 0x21bce4;
    virtual void setSkewY(float) = imac 0x2755b0, m1 0x21bd58;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x2757f0, m1 0x21bfd0;
    virtual void setVisible(bool) = imac 0x275870, m1 0x21c048;
    virtual void setRotation(float) = imac 0x2753f0, m1 0x21bb88;
    virtual void setRotationX(float) = imac 0x275460, m1 0x21bbfc;
    virtual void setRotationY(float) = imac 0x2754d0, m1 0x21bc70;
    virtual void ignoreAnchorPointForPosition(bool) = imac 0x275860, m1 0x21c044;
    virtual void addChild(cocos2d::CCNode*) = imac 0x274eb0, m1 0x21b61c;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x274ec0, m1 0x21b620;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x274ed0, m1 0x21b624;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x275010, m1 0x21b78c;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x18dd0, m1 0x21b7d4;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x274f90, m1 0x21b6f8;
    virtual void sortAllChildren() = imac 0x275110, m1 0x21b888;
    virtual void draw() = imac 0x274d90, m1 0x21b50c;
    virtual void updateTransform() = imac 0x274880, m1 0x21b120;
    virtual bool initWithTexture(cocos2d::CCTexture2D*) = imac 0x273e70, m1 0x21a8a0;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = imac 0x273e50, m1 0x21a890;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = imac 0x273cd0, m1 0x21a73c;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x273fd0, m1 0x21aa14;
    virtual bool initWithSpriteFrameName(char const*) = imac 0x274020, m1 0x21aa78;
    virtual bool initWithFile(char const*) = imac 0x273ee0, m1 0x21a91c;
    virtual bool initWithFile(char const*, cocos2d::CCRect const&) = imac 0x273f70, m1 0x21a9b0;
    virtual void setChildColor(cocos2d::ccColor3B const&) = imac 0x275e80, m1 0x21c440;
    virtual void setChildOpacity(unsigned char) = imac 0x275c50, m1 0x21c2e4;
    virtual cocos2d::CCSpriteBatchNode* getBatchNode() = imac 0x276650, m1 0x21c848;
    virtual void setBatchNode(cocos2d::CCSpriteBatchNode*) = imac 0x276660, m1 0x21c850;
    virtual void refreshTextureRect() = imac 0x274220, m1 0x21ac24;
    virtual void setTextureRect(cocos2d::CCRect const&) = imac 0x2742b0, m1 0x21aca8;
    virtual void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&) = imac 0x2742d0, m1 0x21acbc;
    virtual void setVertexRect(cocos2d::CCRect const&) = imac 0x274630, m1 0x21af4c;
    virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = imac 0x276340, m1 0x21c5c8;
    virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = imac 0x276410, m1 0x21c69c;
    virtual cocos2d::CCSpriteFrame* displayFrame() = imac 0x2764a0, m1 0x21c740;
    virtual void setDisplayFrameWithAnimationName(char const*, int) = imac 0x2763c0, m1 0x21c648;
    virtual void setTextureCoords(cocos2d::CCRect const&) = imac 0x274650, m1 0x21af54;
    virtual void updateBlendFunc() = imac 0x2766d0, m1 0x21c89c;
    virtual void setReorderChildDirtyRecursively() = imac 0x275290, m1 0x21ba0c;
    virtual void setDirtyRecursively(bool) = imac 0x2752f0, m1 0x65770;
    virtual void setOpacity(unsigned char) = imac 0x275aa0, m1 0x21c1ec;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x2761f0, m1 0x21c57c;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x275d00, m1 0x21c38c;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = imac 0x2760a0, m1 0x21c530;
    virtual void setOpacityModifyRGB(bool) = imac 0x275f30, m1 0x21c4e8;
    virtual bool isOpacityModifyRGB() = imac 0x276080, m1 0x21c520;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x276730, m1 0x21c8f8;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x2768a0, m1 0x21ca38;

    bool isFlipX() = imac 0x275920, m1 0x21c0e8;
    bool isFlipY() = imac 0x275970, m1 0x21c11c;
    // unsigned int getAtlasIndex();
    // float getBlVertexMod() const;
    // float getBrVertexMod() const;
    // bool getDontDraw() const;
    // cocos2d::CCPoint const& getOffsetPosition();
    // cocos2d::ccV3F_C4B_T2F_Quad getQuad();
    // cocos2d::CCTextureAtlas* getTextureAtlas();
    // cocos2d::CCRect const& getTextureRect();
    // float getTlVertexMod() const;
    // float getTrVertexMod() const;
    // cocos2d::CCPoint const& getUnflippedOffsetPosition();
    // bool getUseVertexMod() const;
    // void setAtlasIndex(unsigned int);
    // void setBlVertexMod(float);
    // void setBrVertexMod(float);
    // void setDontDraw(bool);
    void setFlipX(bool) = imac 0x2758e0, m1 0x21c0bc;
    void setFlipY(bool) = imac 0x275930, m1 0x21c0f0;
    // bool isTextureRectRotated();
    void updateColor() = imac 0x275980, m1 0x21c124;

    cocos2d::CCTextureAtlas* m_pobTextureAtlas;
    uint32_t m_uAtlasIndex;
    cocos2d::CCSpriteBatchNode* m_pobBatchNode;
    bool m_bDirty;
    bool m_bRecursiveDirty;
    bool m_bHasChildren;
    bool m_bShouldBeHidden;
    cocos2d::CCAffineTransform m_transformToBatch;
    cocos2d::ccBlendFunc m_sBlendFunc;
    cocos2d::CCTexture2D* m_pobTexture;
    cocos2d::CCRect m_obRect;
    bool m_bRectRotated;
    cocos2d::CCPoint m_obOffsetPosition;
    cocos2d::CCPoint m_obUnflippedOffsetPositionFromCenter;
    cocos2d::ccV3F_C4B_T2F_Quad m_sQuad;
    bool m_bOpacityModifyRGB;
    bool m_bFlipX;
    bool m_bFlipY;
    bool m_bDontDraw;
    bool m_bUseVertexMod;
    float m_fTlVertexMod;
    float m_fTrVertexMod;
    float m_fBlVertexMod;
    float m_fBrVertexMod;
    float m_fTextureLeft;
    float m_fTextureRight;
    float m_fTextureBottom;
    float m_fTextureTop;
}

[[link(win, android)]]
class cocos2d::CCSpriteBatchNode : cocos2d::CCNode, cocos2d::CCTextureProtocol {
    CCSpriteBatchNode() = imac 0x155a60, m1 0x121ddc;
    virtual ~CCSpriteBatchNode() = imac 0x155b10, m1 0x121e0c;

    static cocos2d::CCSpriteBatchNode* create(char const* fileImage, unsigned int capacity) = imac 0x1558d0, m1 0x121c54;
    static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x1556a0, m1 0x121a64;

    virtual bool init() = imac 0x155a10, m1 0x121d80;
    virtual void addChild(cocos2d::CCNode*) = imac 0x155ec0, m1 0x122200;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x155ed0, m1 0x122204;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x155c80, m1 0x121fb0;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x155f40, m1 0x12227c;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x156220, m1 0x1224e0;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x155ee0, m1 0x122208;
    virtual void sortAllChildren() = imac 0x1562d0, m1 0x122580;
    virtual void draw() = imac 0x156a90, m1 0x122b0c;
    virtual void visit() = imac 0x155be0, m1 0x121f00;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x157300, m1 0x123378;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x157320, m1 0x123388;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x157340, m1 0x123398;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x157370, m1 0x1233b8;

    cocos2d::CCSpriteBatchNode* addSpriteWithoutQuad(cocos2d::CCSprite*, unsigned int, int) = imac 0x157640, m1 0x12369c, ios inline;
    void appendChild(cocos2d::CCSprite*) = imac 0x155cf0, m1 0x122034;
    unsigned int atlasIndexForChild(cocos2d::CCSprite*, int) = imac 0x156e20, m1 0x122ec4, ios inline;
    int getAtlasCapacity() = imac 0x156c20, m1 0x122cac;
    int getUsedAtlasCapacity() = imac 0x156c10, m1 0x122ca0;
    unsigned int highestAtlasIndexInChild(cocos2d::CCSprite*) = imac 0x156d60, m1 0x122e08, ios inline;
    void increaseAtlasCapacity() = imac 0x156b70, m1 0x122be4;
    void increaseAtlasCapacity(unsigned int) = imac 0x156bd0, m1 0x122c54;
    bool initWithFile(char const*, unsigned int) = imac 0x155980, m1 0x121ce8;
    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x155790, m1 0x121b18;
    void insertChild(cocos2d::CCSprite*, unsigned int) = imac 0x156fb0, m1 0x123080, ios inline;
    void insertQuadFromSprite(cocos2d::CCSprite*, unsigned int) = imac 0x157420, m1 0x123464, ios inline;
    unsigned int lowestAtlasIndexInChild(cocos2d::CCSprite*) = imac 0x156dc0, m1 0x122e64, ios inline;
    void manualSortAllChildren() = imac 0x1562c0, m1 0x122574;
    unsigned int rebuildIndexInOrder(cocos2d::CCSprite*, unsigned int) = imac 0x156c40, m1 0x122cbc, ios inline;
    void removeChildAtIndex(unsigned int, bool) = imac 0x1561f0, m1 0x1224a4, ios inline;
    void removeSpriteFromAtlas(cocos2d::CCSprite*) = imac 0x155f80, m1 0x1222c0;
    void reorderBatch(bool) = imac 0x156a80, m1 0x122b04;
    void swap(int, int) = imac 0x156950, m1 0x122a40;
    void updateAtlasIndex(cocos2d::CCSprite*, int*) = imac 0x156410, m1 0x1226a4;
    void updateBlendFunc() = imac 0x1559c0, m1 0x121d38, ios inline;
    void updateQuadFromSprite(cocos2d::CCSprite*, unsigned int) = imac 0x157560, m1 0x12359c, ios inline;

    cocos2d::CCTextureAtlas* m_pobTextureAtlas;
    cocos2d::ccBlendFunc m_blendFunc;
    cocos2d::CCArray* m_pobDescendants;
    bool m_bManualSortChildren;
    bool m_bManualSortAllChildrenDirty;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrame : cocos2d::CCObject {
    // CCSpriteFrame(cocos2d::CCSpriteFrame const&);
    virtual ~CCSpriteFrame();

    static cocos2d::CCSpriteFrame* create(char const* filename, cocos2d::CCRect const& rect) = ios inline;
    static cocos2d::CCSpriteFrame* create(char const* filename, cocos2d::CCRect const& rect, bool rotated, cocos2d::CCPoint const& offset, cocos2d::CCSize const& size) = ios inline;
    static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D* pobTexture, cocos2d::CCRect const& rect) = imac 0x342ea0, m1 0x2d4200, ios inline;
    static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);

    // bool isRotated();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x203a00, m1 0x2d49e4;

    cocos2d::CCPoint const& getOffset() = imac 0x343bd0, m1 0x2d4c7c;
    cocos2d::CCPoint const& getOffsetInPixels() = imac 0x343c70, m1 0x2d4cf0;
    // cocos2d::CCSize const& getOriginalSize();
    // cocos2d::CCSize const& getOriginalSizeInPixels();
    // cocos2d::CCRect const& getRect();
    // cocos2d::CCRect const& getRectInPixels();
    cocos2d::CCTexture2D* getTexture() = imac 0x343d10, m1 0x2d4d64;
    bool initWithTexture(cocos2d::CCTexture2D* pobTexture, cocos2d::CCRect const& rect) = imac 0x342fc0, m1 0x2d42ec, ios inline;
    bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x3431f0, m1 0x2d44b8;
    bool initWithTextureFilename(char const* filename, cocos2d::CCRect const& rect) = imac 0x342db0, m1 0x2d4140, ios inline;
    bool initWithTextureFilename(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x343520, m1 0x2d4724;
    void setOffset(cocos2d::CCPoint const&) = imac 0x343be0, m1 0x2d4c84, ios inline;
    void setOffsetInPixels(cocos2d::CCPoint const&) = imac 0x343c80, m1 0x2d4cf8, ios inline;
    // void setOriginalSize(cocos2d::CCSize const&);
    // void setOriginalSizeInPixels(cocos2d::CCSize const&);
    void setRect(cocos2d::CCRect const&) = imac 0x343a10, m1 0x2d4b40, ios inline;
    void setRectInPixels(cocos2d::CCRect const&) = imac 0x343af0, m1 0x2d4bdc, ios inline;
    // void setRotated(bool);
    void setTexture(cocos2d::CCTexture2D*) = imac 0x3439d0, m1 0x2d4afc;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrameCache : cocos2d::CCObject {
    // CCSpriteFrameCache();
    // CCSpriteFrameCache(cocos2d::CCSpriteFrameCache const&);
    virtual ~CCSpriteFrameCache() = imac 0x307460, m1 0x29aa20;

    static void purgeSharedSpriteFrameCache() = imac 0x307430, m1 0x29a9f4;
    static cocos2d::CCSpriteFrameCache* sharedSpriteFrameCache() = imac 0x3072d0, m1 0x29a888;

    void addSpriteFrame(cocos2d::CCSpriteFrame* pobFrame, char const* pszFrameName) = imac 0x308520, m1 0x29bb34, ios inline;
    void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*) = imac 0x3075c0, m1 0x29ab5c;
    void addSpriteFramesWithFile(char const*) = imac 0x3081c0, m1 0x29b6a0;
    void addSpriteFramesWithFile(char const* plist, char const* textureFilename) = imac 0x308150, m1 0x29b630, ios inline;
    void addSpriteFramesWithFile(char const* plist, cocos2d::CCTexture2D* texture) = imac 0x308110, m1 0x29b5e8, ios inline;
    bool init() = imac 0x3073b0, m1 0x29a968;
    void removeSpriteFrameByName(char const* name) = imac 0x308700, m1 0x29bd18, ios inline;
    void removeSpriteFrames() = imac 0x308610, m1 0x29bc34, ios inline;
    void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*) = imac 0x308be0, m1 0x29c2ac;
    void removeSpriteFramesFromFile(char const*) = imac 0x308a10, m1 0x29bfe0;
    void removeSpriteFramesFromTexture(cocos2d::CCTexture2D*) = imac 0x308e10, m1 0x29c4e4, ios inline;
    void removeUnusedSpriteFrames() = imac 0x308650, m1 0x29bc80, ios inline;
    cocos2d::CCSpriteFrame* spriteFrameByName(char const*) = imac 0x309110, m1 0x29c7cc;
}

[[link(win, android)]]
class cocos2d::CCStandardTouchHandler : cocos2d::CCTouchHandler {
    static cocos2d::CCStandardTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int) = imac 0x475dd0, m1 0x3e0aa4;

    virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int) = imac 0x475d70, m1 0x3e0a34;
}

[[link(win, android)]]
class cocos2d::CCStopGrid : cocos2d::CCActionInstant {
    static cocos2d::CCStopGrid* create() = imac 0x1ee270, m1 0x1a04f4;

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x1ee230, m1 0x1a04a4;
}

[[link(win, android)]]
class cocos2d::CCString : cocos2d::CCObject {
    [[since("5.0.0-beta.4")]]
    CCString() = inline;

    static cocos2d::CCString* createWithContentsOfFile(char const*) = imac 0x88e970, m1 0x782d64;
    static cocos2d::CCString* createWithData(unsigned char const*, unsigned long) = imac 0x88e6a0, m1 0x782b24;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x88e460, m1 0x7828e0;
    virtual bool isEqual(cocos2d::CCObject const*) = imac 0x88e560, m1 0x7829e0;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x88e9d0, m1 0x782dd0;

    bool boolValue() const = imac 0x88e3e0, m1 0x782850;
    int compare(char const*) const = imac 0x88e440, m1 0x7828c4, ios inline;
    double doubleValue() const = imac 0x88e3b0, m1 0x782824;
    float floatValue() const = imac 0x88e380, m1 0x7827e4;
    // static cocos2d::CCString* createWithFormat(char const*, ...) = ios 0x2680c0, m1 0x6a8cd0;
    char const* getCString() const = imac 0x88e010, m1 0x7824dc;
    int intValue() const = imac 0x88e300, m1 0x782774;
    unsigned int length() const = imac 0x88e330, m1 0x7827a0;
    unsigned int uintValue() const = imac 0x88e350, m1 0x7827b8, ios inline;

    std::string m_sString;
}

[[link(win, android)]]
class cocos2d::CCTargetedAction : cocos2d::CCActionInterval {
    CCTargetedAction() = imac 0x3a5fb0, m1 0x32da6c;
    virtual ~CCTargetedAction() = imac 0x3a5fe0, m1 0x32da94;

    static cocos2d::CCTargetedAction* create(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*) = imac 0x3a60d0, m1 0x32db70;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a61f0, m1 0x32dc80;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a6310, m1 0x32dd84;
    virtual void stop() = imac 0x3a6340, m1 0x32ddbc;
    virtual void update(float) = imac 0x3a6350, m1 0x32ddcc;

    bool initWithTarget(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*) = imac 0x3a6180, m1 0x32dc14;
}

[[link(win, android)]]
class cocos2d::CCTargetedTouchHandler : cocos2d::CCTouchHandler {
    virtual ~CCTargetedTouchHandler() = imac 0x476030, m1 0x3e0cd8;

    static cocos2d::CCTargetedTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x475eb0, m1 0x3e0b64;

    cocos2d::CCSet* getClaimedTouches() = imac 0x475ea0, m1 0x3e0b5c;
    bool initWithDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x475fa0, m1 0x3e0c44;
    // CCTargetedTouchHandler(cocos2d::CCTargetedTouchHandler const&);
    // CCTargetedTouchHandler();
    bool isSwallowsTouches() = imac 0x475e80, m1 0x3e0b4c;
    void setSwallowsTouches(bool) = imac 0x475e90, m1 0x3e0b54, ios inline;

    bool m_bSwallowsTouches;
    cocos2d::CCSet* m_pClaimedTouches;
}

[[link(win, android)]]
class cocos2d::CCTextFieldTTF : cocos2d::CCLabelTTF, cocos2d::CCIMEDelegate {
    CCTextFieldTTF() = imac 0x268290, m1 0x20f758;
    virtual ~CCTextFieldTTF() = imac 0x2683b0, m1 0x20f828;

    static cocos2d::CCTextFieldTTF* textFieldWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize) = imac 0x268710, m1 0x20fb00;
    static cocos2d::CCTextFieldTTF* textFieldWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize) = imac 0x268500, m1 0x20f8fc, ios inline;

    // void setDelegate(cocos2d::CCTextFieldDelegate* var);
    virtual void draw() = imac 0x269230, m1 0x21067c;
    virtual const cocos2d::ccColor3B& getColorSpaceHolder() = imac 0x2692d0, m1 0x210738;
    virtual void setColorSpaceHolder(const cocos2d::ccColor3B& color) = imac 0x2692e0, m1 0x210740;
    virtual const char* getPlaceHolder() = imac 0x269740, m1 0x210b28;
    virtual void setPlaceHolder(const char* text) = imac 0x2695e0, m1 0x2109dc;
    virtual void setSecureTextEntry(bool value) = imac 0x269760, m1 0x210b40;
    virtual bool isSecureTextEntry() = imac 0x2697a0, m1 0x210b8c;
    virtual void setString(const char* text) = imac 0x269300, m1 0x210754;
    virtual const char* getString() = imac 0x2695a0, m1 0x2109ac;
    virtual bool attachWithIME() = imac 0x2688e0, m1 0x20fce8;
    virtual bool detachWithIME() = imac 0x268960, m1 0x20fd74;
    virtual bool canAttachWithIME() = imac 0x2689e0, m1 0x20fe00;
    virtual bool canDetachWithIME() = imac 0x268a30, m1 0x20fe6c;
    virtual void insertText(const char* text, int len, cocos2d::enumKeyCodes keyCode) = m1 0x20fed8;
    virtual void deleteBackward() = m1 0x210314;
    virtual void deleteForward() = imac 0x268e20, m1 0x2102b4;
    virtual const char* getContentText() = imac 0x2691f0, m1 0x21064c;

    bool initWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize) = imac 0x2687a0, m1 0x20fbc4, ios inline;
    bool initWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize) = imac 0x2685b0, m1 0x20f9c4, ios inline;

    cocos2d::CCTextFieldDelegate* m_pDelegate;
    int m_nCharCount;
    std::string* m_pInputText;
    std::string* m_pPlaceHolder;
    cocos2d::ccColor3B m_ColorSpaceHolder;
    bool m_bSecureTextEntry;
    cocos2d::CCTextFieldTTF::LengthStack* m_pLens;
    int m_uCursorPos;
}

[[link(win, android)]]
class cocos2d::CCTexture2D : cocos2d::CCObject {
    CCTexture2D() = imac 0x46c8c0, m1 0x3d8318;
    // CCTexture2D(cocos2d::CCTexture2D const&);
    virtual ~CCTexture2D() = imac 0x46c980, m1 0x3d83e0;

    static cocos2d::CCTexture2DPixelFormat defaultAlphaPixelFormat() = imac 0x46dfc0, m1 0x3d995c;
    static void PVRImagesHavePremultipliedAlpha(bool) = imac 0x46ddf0;
    static void setDefaultAlphaPixelFormat(cocos2d::CCTexture2DPixelFormat) = imac 0x46dfb0, m1 0x3d9950;

    virtual cocos2d::CCTexture2DPixelFormat getPixelFormat() = imac 0x46ca70, m1 0x3d84bc;
    virtual unsigned int getPixelsWide() = imac 0x46ca80, m1 0x3d84c4;
    virtual unsigned int getPixelsHigh() = imac 0x46ca90, m1 0x3d84cc;
    virtual unsigned int getName() = imac 0x46caa0, m1 0x3d84d4;
    virtual float getMaxS() = imac 0x46cb30, m1 0x3d853c;
    virtual void setMaxS(float) = imac 0x46cb40, m1 0x3d8544;
    virtual float getMaxT() = imac 0x46cb50, m1 0x3d854c;
    virtual void setMaxT(float) = imac 0x46cb60, m1 0x3d8554;
    virtual cocos2d::CCSize getContentSize() = imac 0x46cab0, m1 0x3d84dc;
    virtual cocos2d::CCGLProgram* getShaderProgram() = imac 0x46cb70, m1 0x3d855c;
    virtual void setShaderProgram(cocos2d::CCGLProgram*) = imac 0x46cb80, m1 0x3d8564;

    unsigned int bitsPerPixelForFormat() = imac 0x46dfd0, m1 0x3d9968, ios inline;
    unsigned int bitsPerPixelForFormat(cocos2d::CCTexture2DPixelFormat) = imac 0x46cf20, m1 0x3d88c4;
    char const* description() = imac 0x46cf40, m1 0x3d88e4, ios inline;
    void drawAtPoint(cocos2d::CCPoint const&) = imac 0x46da40, m1 0x3d93e8, ios inline;
    void drawInRect(cocos2d::CCRect const&) = imac 0x46db50, m1 0x3d9500, ios inline;
    void generateMipmap() = imac 0x46de00, m1 0x3d979c, ios inline;
    cocos2d::CCSize const& getContentSizeInPixels() = imac 0x46cb20, m1 0x3d8534;
    bool hasMipmaps() = imac 0x46de40, m1 0x3d97ec, ios inline;
    bool hasPremultipliedAlpha() = imac 0x46cc10, m1 0x3d85dc;
    bool initPremultipliedATextureWithImage(cocos2d::CCImage*, unsigned int, unsigned int) = imac 0x46cfe0, m1 0x3d89a4;
    bool initWithData(void const*, cocos2d::CCTexture2DPixelFormat, unsigned int, unsigned int, cocos2d::CCSize const&) = imac 0x46cc20, m1 0x3d85e4;
    bool initWithETCFile(char const*) = imac 0x46dd20, m1 0x3d96c8;
    bool initWithImage(cocos2d::CCImage*) = imac 0x46cf80, m1 0x3d8928;
    bool initWithPVRFile(char const*) = imac 0x46dc40, m1 0x3d95f4;
    bool initWithString(char const*, cocos2d::ccFontDefinition*) = imac 0x46da30, m1 0x3d93e0;
    bool initWithString(char const*, char const*, float) = imac 0x46d890, m1 0x3d9224, ios inline;
    bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment) = imac 0x46d8f0, m1 0x3d9294, ios inline;
    void* keepData(void*, unsigned int) = imac 0x46cc00, m1 0x3d85d4, ios inline;
    void releaseData(void*) = imac 0x46cbf0, m1 0x3d85cc, ios inline;
    void releaseGLTexture() = imac 0x46cbc0, m1 0x3d85a0, ios inline;
    void setAliasTexParameters() = imac 0x46dee0, m1 0x3d988c;
    void setAntiAliasTexParameters() = imac 0x46df30, m1 0x3d98dc;
    void setTexParameters(cocos2d::ccTexParams*) = imac 0x46de50, m1 0x3d97f4;
    char const* stringForFormat() = imac 0x46df80, m1 0x3d992c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCTextureAtlas : cocos2d::CCObject {
    // void setDirty(bool);
    // CCTextureAtlas(cocos2d::CCTextureAtlas const&);
    CCTextureAtlas() = imac 0x4a5e90, m1 0x40cffc;
    virtual ~CCTextureAtlas() = imac 0x4a5ed0, m1 0x40d02c;

    static cocos2d::CCTextureAtlas* create(char const*, unsigned int) = imac 0x4a6020, m1 0x40d12c, ios inline;
    static cocos2d::CCTextureAtlas* createWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x4a6120, m1 0x40d24c, ios inline;

    virtual unsigned int getTotalQuads() = imac 0x4a5f90, m1 0x40d0c0;
    virtual unsigned int getCapacity() = imac 0x4a5fa0, m1 0x40d0c8;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x4a5fb0, m1 0x40d0d0;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x4a5fc0, m1 0x40d0d8;
    virtual cocos2d::ccV3F_C4B_T2F_Quad* getQuads() = imac 0x4a6000, m1 0x40d114;
    virtual void setQuads(cocos2d::ccV3F_C4B_T2F_Quad*) = imac 0x4a6010, m1 0x40d124;

    char const* description() = imac 0x4a6a40, m1 0x40d62c, ios inline;
    void drawNumberOfQuads(unsigned int) = imac 0x4a7860, m1 0x40de8c, ios inline;
    void drawNumberOfQuads(unsigned int, unsigned int) = imac 0x4a7780, m1 0x40dda4;
    void drawQuads() = imac 0x4a7770, m1 0x40dd98;
    void fillWithEmptyQuadsFromIndex(unsigned int, unsigned int) = imac 0x4a7600, m1 0x40dd54, ios inline;
    void increaseTotalQuadsWith(unsigned int) = imac 0x4a7490, m1 0x40dc38, ios inline;
    bool initWithFile(char const*, unsigned int) = imac 0x4a60d0, m1 0x40d1f0, ios inline;
    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x4a61c0, m1 0x40d2fc;
    void insertQuad(cocos2d::ccV3F_C4B_T2F_Quad*, unsigned int) = imac 0x4a6b50, m1 0x40d724;
    void insertQuadFromIndex(unsigned int, unsigned int) = imac 0x4a6de0, m1 0x40d88c, ios inline;
    void insertQuads(cocos2d::ccV3F_C4B_T2F_Quad*, unsigned int, unsigned int) = imac 0x4a6c00, m1 0x2a7038, ios inline;
    // bool isDirty();
    void listenBackToForeground(cocos2d::CCObject*) = imac 0x4a6a20, m1 0x40d604, ios inline;
    void mapBuffers() = imac 0x4a6a60, m1 0x40d658;
    void moveQuadsFromIndex(unsigned int, unsigned int) = imac 0x4a75c0, m1 0x40dd34, ios inline;
    void moveQuadsFromIndex(unsigned int, unsigned int, unsigned int) = imac 0x4a74b0, m1 0x40dc58, ios inline;
    void removeAllQuads() = imac 0x4a6f80, m1 0x40d9e0;
    void removeQuadAtIndex(unsigned int) = imac 0x4a6ed0, m1 0x40d930;
    void removeQuadsAtIndex(unsigned int, unsigned int) = imac 0x4a6f30, m1 0x40d98c, ios inline;
    bool resizeCapacity(unsigned int) = imac 0x4a6f90, m1 0x40d9e8;
    void setupIndices() = imac 0x4a6600, m1 0x40d480;
    [[missing(mac, ios)]]
    void setupVBO();
    [[missing(win, android)]]
    void setupVBOandVAO() = imac 0x4a68f0, m1 0x40d4f0;
    void updateQuad(cocos2d::ccV3F_C4B_T2F_Quad*, unsigned int) = imac 0x4a6af0, m1 0x40d6e0;
}

[[link(win, android)]]
class cocos2d::CCTextureCache : cocos2d::CCObject {
    // CCTextureCache(cocos2d::CCTextureCache const&);
    CCTextureCache() = imac 0x6bf950, m1 0x5d85b0;
    virtual ~CCTextureCache() = imac 0x6bfa50, m1 0x5d86b0;

    static void purgeSharedTextureCache() = imac 0x6bfb50, m1 0x5d87a4;
    static void reloadAllTextures() = imac 0x6c20a0, ios inline;
    static cocos2d::CCTextureCache* sharedTextureCache() = imac 0x6bf8a0, m1 0x5d84f4;

    cocos2d::CCTexture2D* addETCImage(char const*);
    cocos2d::CCTexture2D* addImage(char const*, bool) = imac 0x6c0b60, m1 0x5d96bc;
    void addImageAsync(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler, int, cocos2d::CCTexture2DPixelFormat) = imac 0x6bfd60, m1 0x5d8990;
    void addImageAsyncCallBack(float) = imac 0x6c0870, m1 0x5a01fc;
    cocos2d::CCTexture2D* addPVRImage(char const*);
    cocos2d::CCTexture2D* addUIImage(cocos2d::CCImage*, char const*) = imac 0x6c1970, m1 0x5da54c;
    char const* description() = imac 0x6bfb80, m1 0x5d87d0, ios inline;
    void dumpCachedTextureInfo() = imac 0x6c20b0, m1 0x5dacf4, ios inline;
    void prepareAsyncLoading() = imac 0x6bfd20, m1 0x5d895c;
    bool reloadTexture(char const*) = imac 0x6c1c00, m1 0x5da7e0, ios inline;
    void removeAllTextures() = imac 0x6c1d20, ios inline;
    void removeTexture(cocos2d::CCTexture2D*) = imac 0x6c1ec0, m1 0x5daacc, ios inline;
    void removeTextureForKey(char const*) = imac 0x6190d0, m1 0x5dab04;
    void removeUnusedTextures() = imac 0x6c1d30, m1 0x5da93c, ios inline;
    cocos2d::CCDictionary* snapshotTextures() = imac 0x6bfbb0, m1 0x5d8800, ios inline;
    cocos2d::CCTexture2D* textureForKey(char const*) = imac 0x6c1970, m1 0x5dab94;
}

[[link(win, android)]]
class cocos2d::CCTextureETC : cocos2d::CCObject {
    CCTextureETC() = imac 0x1ed2b0, m1 0x19f504;
    virtual ~CCTextureETC() = imac 0x1ed2e0, m1 0x19f52c, ios inline;

    unsigned int getHeight() const = imac 0x1ed350, m1 0x2904;
    unsigned int getName() const = imac 0x1ed330, m1 0x19f550;
    unsigned int getWidth() const = imac 0x1ed340, m1 0x28fc;
    bool initWithFile(char const*) = imac 0x1ed320, m1 0x19f548;
    bool loadTexture(char const*) = imac 0x1ed360, m1 0x19f568, ios inline;
}

[[link(android)]]
class cocos2d::CCTexturePVR : cocos2d::CCObject {
    CCTexturePVR() = win 0x143f80, imac 0x2716a0, m1 0x21830c;
    virtual ~CCTexturePVR() = win inline, imac 0x2716d0, m1 0x218338;

    static cocos2d::CCTexturePVR* create(char const*) = win inline, imac 0x272380, m1 0x218e54, ios inline;

    bool createGLTexture() = win 0x144020, imac 0x271d10, m1 0x218880;
    bool initWithContentsOfFile(char const*) = win 0x9999999, imac 0x272050, m1 0x218b40;
    bool unpackPVRv2Data(unsigned char*, unsigned int) = win 0x9999999, imac 0x2717c0, m1 0x218408;
    bool unpackPVRv3Data(unsigned char*, unsigned int) = win 0x144880, imac 0x271a30, m1 0x218628;
}

[[link(win, android)]]
class cocos2d::CCThread {
    ~CCThread() = imac 0x3c66b0, m1 0x34aca8;

    void createAutoreleasePool() = imac 0x3c66d0, m1 0x34acd4;
}

[[link(win, android)]]
class cocos2d::CCTiledGrid3D : cocos2d::CCGridBase {
    CCTiledGrid3D();
    virtual ~CCTiledGrid3D() = imac 0x4df710, m1 0x43f110;

    static cocos2d::CCTiledGrid3D* create(cocos2d::CCSize const&) = imac 0x4df8c0, m1 0x43f278;
    static cocos2d::CCTiledGrid3D* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = imac 0x4df800, m1 0x43f1bc;

    virtual void blit() = imac 0x4df970, m1 0x43f344;
    virtual void reuse() = imac 0x4e0030, m1 0x43f6f8;
    virtual void calculateVertexPoints() = imac 0x4dfa10, m1 0x43f3e8;

    cocos2d::ccQuad3 originalTile(cocos2d::CCPoint const&) = imac 0x4dff90, m1 0x43f680;
    void setTile(cocos2d::CCPoint const&, cocos2d::ccQuad3 const&) = imac 0x4dff40, m1 0x43f644;
    cocos2d::ccQuad3 tile(cocos2d::CCPoint const&) = imac 0x4dffe0, m1 0x43f6bc;
}

[[link(win, android)]]
class cocos2d::CCTiledGrid3DAction : cocos2d::CCGridAction {
    static cocos2d::CCTiledGrid3DAction* create(float, cocos2d::CCSize const&) = imac 0x1ed800, m1 0x19fa38;

    virtual cocos2d::CCGridBase* getGrid() = imac 0x1ed760, m1 0x19f988;

    cocos2d::ccQuad3 originalTile(cocos2d::CCPoint const&) = imac 0x1ed7a0, m1 0x19f9c8;
    void setTile(cocos2d::CCPoint const&, cocos2d::ccQuad3 const&) = imac 0x1ed7d0, m1 0x19fa00;
    cocos2d::ccQuad3 tile(cocos2d::CCPoint const&) = imac 0x1ed770, m1 0x19f990;
}

[[link(win, android)]]
class cocos2d::CCTileMapAtlas : cocos2d::CCAtlasNode {
    CCTileMapAtlas() = imac 0x2111a0, m1 0x1c0854;
    virtual ~CCTileMapAtlas() = imac 0x2111f0, m1 0x1c088c;

    static cocos2d::CCTileMapAtlas* create(char const*, char const*, int, int) = imac 0x210d20, m1 0x1c02a8;

    virtual cocos2d::sImageTGA* getTGAInfo() = imac 0x211a70, m1 0x21ca40;
    virtual void setTGAInfo(cocos2d::sImageTGA*) = imac 0x211a60, m1 0x1c0fd0;
    virtual void updateAtlasValues() = imac 0x211830, m1 0x1c0d94;

    void calculateItemsToRender() = imac 0x2110b0, m1 0x1c070c;
    bool initWithTileFile(char const*, char const*, int, int) = imac 0x210e30, m1 0x1c03b4;
    void loadTGAfile(char const*) = imac 0x211030, m1 0x1c0664;
    void releaseMap() = imac 0x211340, m1 0x1c0998;
    void setTile(cocos2d::ccColor3B const&, cocos2d::CCPoint const&) = imac 0x211390, m1 0x1c09d4;
    cocos2d::ccColor3B tileAt(cocos2d::CCPoint const&) = imac 0x2117f0, m1 0x1c0d5c;
    void updateAtlasValueAt(cocos2d::CCPoint const&, cocos2d::ccColor3B const&, unsigned int) = imac 0x211500, m1 0x1c0b44;
}

[[link(win, android)]]
class cocos2d::CCTime {
    static int gettimeofdayCocos2d(cocos2d::cc_timeval*, void*) = imac 0x30ca40, m1 0x29fad4;
    static double timersubCocos2d(cocos2d::cc_timeval*, cocos2d::cc_timeval*) = imac 0x30ca60, m1 0x29faf4;
}

[[link(win, android)]]
class cocos2d::CCTimer : cocos2d::CCObject {
    CCTimer() = imac 0x435c40, m1 0x3abf68, ios inline;

    static cocos2d::CCTimer* timerWithScriptHandler(int, float) = imac 0x435e10, m1 0x3ac120, ios inline;
    static cocos2d::CCTimer* timerWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE) = imac 0x435c90, m1 0x3abfa8, ios inline;
    static cocos2d::CCTimer* timerWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE, float) = imac 0x435d60, m1 0x3ac078, ios inline;

    virtual void update(float) = imac 0x435ef0, m1 0x3ac1ec;

    float getInterval() const = imac 0x436290, m1 0x3ac610, ios inline;
    cocos2d::SEL_SCHEDULE getSelector() const = imac 0x4362b0, m1 0x3ac620, ios inline;
    bool initWithScriptHandler(int, float) = imac 0x435ea0, m1 0x3ac1a8, ios inline;
    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE) = imac 0x435ec0, m1 0x3ac1c0, ios inline;
    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE, float, unsigned int, float) = imac 0x435d20, m1 0x3ac040, ios inline;
    void setInterval(float) = imac 0x4362a0, m1 0x3ac618, ios inline;
}

[[link(win, android)]]
class cocos2d::CCTintBy : cocos2d::CCActionInterval {
    static cocos2d::CCTintBy* create(float, short, short, short) = imac 0x3a4bb0, m1 0x32c8bc;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a4cc0, m1 0x32c99c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a4de0, m1 0x32ca9c;
    virtual void update(float) = imac 0x3a4e50, m1 0x32cb14;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a4f20, m1 0x32cbe4;

    bool initWithDuration(float, short, short, short) = imac 0x3a4c80, m1 0x32c96c;
}

[[link(win, android)]]
class cocos2d::CCTintTo : cocos2d::CCActionInterval {
    static cocos2d::CCTintTo* create(float, unsigned char, unsigned char, unsigned char) = imac 0x3a4840, m1 0x32c5bc;

    // CCTintTo(cocos2d::CCTintTo const&);
    // CCTintTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a4960, m1 0x32c698;
    virtual void update(float) = imac 0x3a4ad0, m1 0x32c7f8;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a4a70, m1 0x32c78c;

    bool initWithDuration(float, unsigned char, unsigned char, unsigned char) = imac 0x3a4910, m1 0x32c668, ios inline;
}

[[link(win, android)]]
class cocos2d::CCTMXLayer : cocos2d::CCSpriteBatchNode {
    CCTMXLayer() = imac 0x243db0, m1 0x1ee554;
    virtual ~CCTMXLayer() = imac 0x243e40, m1 0x1ee5d4;

    static cocos2d::CCTMXLayer* create(cocos2d::CCTMXTilesetInfo*, cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*) = imac 0x2438a0, m1 0x1ee0e4;

    virtual cocos2d::CCTMXTilesetInfo* getTileSet() = imac 0x243f30, m1 0x1ee688;
    virtual void setTileSet(cocos2d::CCTMXTilesetInfo*) = imac 0x243f40, m1 0x1ee690;
    virtual cocos2d::CCDictionary* getProperties() = imac 0x245890, m1 0x1efd3c;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x2458a0, m1 0x1efd44;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x2456c0, m1 0x1efbf4;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x2456d0, m1 0x1efbf8;

    cocos2d::CCSprite* appendTileForGID(unsigned int, cocos2d::CCPoint const&) = imac 0x244430, m1 0x1eeae0;
    unsigned int atlasIndexForExistantZ(unsigned int) = imac 0x244f30, m1 0x1ef504;
    unsigned int atlasIndexForNewZ(int) = imac 0x2451d0, m1 0x1ef750;
    cocos2d::CCPoint calculateLayerOffset(cocos2d::CCPoint const&) = imac 0x243cd0, m1 0x1ee480;
    bool initWithTilesetInfo(cocos2d::CCTMXTilesetInfo*, cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*) = imac 0x243a20, m1 0x1ee240;
    cocos2d::CCSprite* insertTileForGID(unsigned int, cocos2d::CCPoint const&) = imac 0x244fc0, m1 0x1ef588;
    void parseInternalProperties() = imac 0x244320, m1 0x1ee9b8;
    cocos2d::CCPoint positionAt(cocos2d::CCPoint const&) = imac 0x244940, m1 0x1eefc4;
    cocos2d::CCPoint positionForHexAt(cocos2d::CCPoint const&) = imac 0x245810, m1 0x1efce4;
    cocos2d::CCPoint positionForIsoAt(cocos2d::CCPoint const&) = imac 0x245790, m1 0x1efc90;
    cocos2d::CCPoint positionForOrthoAt(cocos2d::CCPoint const&) = imac 0x245740, m1 0x1efc64;
    cocos2d::CCString* propertyNamed(char const*) = imac 0x2445b0;
    void releaseMap() = imac 0x243f80, m1 0x1ee6cc;
    void removeTileAt(cocos2d::CCPoint const&) = imac 0x245580, m1 0x1efac8;
    cocos2d::CCSprite* reusedTileWithRect(cocos2d::CCRect) = imac 0x244b90, m1 0x1ef1ac;
    void setTileGID(unsigned int, cocos2d::CCPoint const&) = imac 0x245360, m1 0x1ef8c8;
    void setTileGID(unsigned int, cocos2d::CCPoint const&, cocos2d::ccTMXTileFlags) = imac 0x245370, m1 0x1ef8d0;
    void setupTiles() = imac 0x243fd0, m1 0x1ee708;
    void setupTileSprite(cocos2d::CCSprite*, cocos2d::CCPoint, unsigned int) = imac 0x244690, m1 0x1eed14;
    cocos2d::CCSprite* tileAt(cocos2d::CCPoint const&) = imac 0x244c50, m1 0x1ef278;
    unsigned int tileGIDAt(cocos2d::CCPoint const&) = imac 0x244f00, m1 0x1ef4e4;
    unsigned int tileGIDAt(cocos2d::CCPoint const&, cocos2d::ccTMXTileFlags*) = imac 0x244f80, m1 0x1ef55c;
    cocos2d::CCSprite* updateTileForGID(unsigned int, cocos2d::CCPoint const&) = imac 0x245210, m1 0x1ef78c;
    int vertexZForPos(cocos2d::CCPoint const&) = imac 0x244b10, m1 0x1ef13c;
}

[[link(win, android)]]
class cocos2d::CCTMXLayerInfo : cocos2d::CCObject {
    CCTMXLayerInfo() = imac 0x1e5a10, m1 0x42b6d0;
    virtual ~CCTMXLayerInfo() = imac 0x4c8930, m1 0x42b788;

    virtual cocos2d::CCDictionary* getProperties() = imac 0x4c8a80, m1 0x42b8f8;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x4c8a90, m1 0x42b900;
}

[[link(win, android)]]
class cocos2d::CCTMXMapInfo : cocos2d::CCObject, cocos2d::CCSAXDelegator {
    CCTMXMapInfo() = imac 0x4c9360, m1 0x42c1d4;
    virtual ~CCTMXMapInfo() = imac 0x4c9400, m1 0x42c264;

    static cocos2d::CCTMXMapInfo* formatWithTMXFile(char const*) = imac 0x4c8d40, m1 0x42bbe8;
    static cocos2d::CCTMXMapInfo* formatWithXML(char const*, char const*) = imac 0x4c8f50, m1 0x42bdd8;

    virtual cocos2d::CCArray* getLayers() = imac 0x4c9510;
    virtual void setLayers(cocos2d::CCArray*) = imac 0x4c9520;
    virtual cocos2d::CCArray* getTilesets() = imac 0x4c9560;
    virtual void setTilesets(cocos2d::CCArray*) = imac 0x4c9570;
    virtual cocos2d::CCArray* getObjectGroups() = imac 0x4c95b0, m1 0x42c3c8;
    virtual void setObjectGroups(cocos2d::CCArray*) = imac 0x4c95c0, m1 0x42c3d0;
    virtual cocos2d::CCDictionary* getProperties() = imac 0x4c9600, m1 0x42c40c;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x4c9610, m1 0x42c414;
    virtual void startElement(void*, char const*, char const**) = imac 0x4c96a0, m1 0x42c494;
    virtual void endElement(void*, char const*) = imac 0x4cc840, m1 0x42ede8;
    virtual void textHandler(void*, char const*, int) = imac 0x4ccc80, m1 0x42f260;

    cocos2d::CCDictionary* getTileProperties() = imac 0x4c9650, m1 0x42c450;
    bool initWithTMXFile(char const*) = imac 0x4c8f10, m1 0x42bd90;
    bool initWithXML(char const*, char const*) = imac 0x4c9060, m1 0x42bee8;
    void internalInit(char const*, char const*) = imac 0x4c9090, m1 0x42bf18;
    bool parseXMLFile(char const*) = imac 0x4c9280, m1 0x42c0e8;
    bool parseXMLString(char const*) = imac 0x4c91d0, m1 0x42c038;
    void setTileProperties(cocos2d::CCDictionary*) = imac 0x4c9660, m1 0x42c458;
}

[[link(win, android)]]
class cocos2d::CCTMXObjectGroup : cocos2d::CCObject {
    CCTMXObjectGroup() = imac 0x495750, m1 0x3fdde4;
    virtual ~CCTMXObjectGroup() = imac 0x495810, m1 0x3fde98;

    virtual cocos2d::CCDictionary* getProperties() = imac 0x495b50, m1 0x3fe228;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x495b60, m1 0x3fe230;
    virtual cocos2d::CCArray* getObjects() = imac 0x495ba0, m1 0x3fe26c;
    virtual void setObjects(cocos2d::CCArray*) = imac 0x495bb0, m1 0x3fe274;

    cocos2d::CCDictionary* objectNamed(char const*) = imac 0x495930, m1 0x3fdfd8;
    cocos2d::CCString* propertyNamed(char const*) = imac 0x495a70;
}

[[link(win, android)]]
class cocos2d::CCTMXTiledMap : cocos2d::CCNode {
    CCTMXTiledMap() = imac 0x5197d0, m1 0x47451c;
    virtual ~CCTMXTiledMap() = imac 0x519840;

    static cocos2d::CCTMXTiledMap* create(char const*) = imac 0x5192e0, m1 0x47403c;
    static cocos2d::CCTMXTiledMap* createWithXML(char const*, char const*) = imac 0x5194b0, m1 0x474214;

    virtual cocos2d::CCArray* getObjectGroups() = imac 0x519970, m1 0x474688;
    virtual void setObjectGroups(cocos2d::CCArray*) = imac 0x519980, m1 0x474690;
    virtual cocos2d::CCDictionary* getProperties() = imac 0x5199c0, m1 0x4746cc;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x5199d0, m1 0x4746d4;

    void buildWithMapInfo(cocos2d::CCTMXMapInfo*) = imac 0x519600, m1 0x47436c;
    bool initWithTMXFile(char const*) = imac 0x519450, m1 0x4741a8;
    bool initWithXML(char const*, char const*) = imac 0x5195a0, m1 0x4742fc;
    cocos2d::CCTMXLayer* layerNamed(char const*) = imac 0x519c70, m1 0x47494c;
    cocos2d::CCTMXObjectGroup* objectGroupNamed(char const*) = imac 0x519d40, m1 0x474a00;
    cocos2d::CCTMXLayer* parseLayer(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*) = imac 0x519a10, m1 0x474710;
    cocos2d::CCDictionary* propertiesForGID(int) = imac 0x51a080, m1 0x474d28;
    cocos2d::CCString* propertyNamed(char const*) = imac 0x519fa0;
    cocos2d::CCTMXTilesetInfo* tilesetForLayer(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*) = imac 0x519b50, m1 0x47483c;
}

[[link(win, android)]]
class cocos2d::CCTMXTilesetInfo : cocos2d::CCObject {
    CCTMXTilesetInfo() = imac 0x4c8ad0, m1 0x42b93c;
    virtual ~CCTMXTilesetInfo() = imac 0x4c8bb0;

    cocos2d::CCRect rectForGID(unsigned int) = imac 0x4c8c80, m1 0x42bb48;
}

[[link(win, android)]]
class cocos2d::CCToggleVisibility : cocos2d::CCActionInstant {
    static cocos2d::CCToggleVisibility* create() = imac 0x88fa90, m1 0x783bb8;

    virtual void update(float) = imac 0x88fae0, m1 0x783c10;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x88fb10, m1 0x783c4c;
}

[[link(win, android)]]
class cocos2d::CCTouch : cocos2d::CCObject {
    cocos2d::CCPoint getDelta() const = imac 0x1e900, m1 0x1a538, ios inline;
    cocos2d::CCPoint getLocation() const = imac 0x1e870, m1 0x1a4b4;
    cocos2d::CCPoint getLocationInView() const = imac 0x1e810, m1 0x1a490;
    cocos2d::CCPoint getPreviousLocation() const = imac 0x1e8a0, m1 0x1a4e0, ios inline;
    cocos2d::CCPoint getPreviousLocationInView() const = imac 0x1e830, m1 0x1a49c, ios inline;
    cocos2d::CCPoint getStartLocation() const = imac 0x1e8d0, m1 0x1a50c, ios inline;
    cocos2d::CCPoint getStartLocationInView() const = imac 0x1e850, m1 0x1a4a8, ios inline;

    int m_nId;
    bool m_startPointCaptured;
    cocos2d::CCPoint m_startPoint;
    cocos2d::CCPoint m_point;
    cocos2d::CCPoint m_prevPoint;
}

[[link(win, android)]]
class cocos2d::CCTouchDelegate {
    // CCTouchDelegate(cocos2d::CCTouchDelegate const&);
    // CCTouchDelegate();

    virtual void setPreviousPriority(int) = inline;
    virtual int getPreviousPriority() = inline;
}

[[link(win, android)]]
class cocos2d::CCTouchDispatcher : cocos2d::CCObject, cocos2d::EGLTouchDelegate {
    // CCTouchDispatcher(cocos2d::CCTouchDispatcher const&);
    // CCTouchDispatcher();
    virtual ~CCTouchDispatcher() = imac 0x4c71a0;

    virtual void touchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x42b5d0;
    virtual void touchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4c8750, m1 0x42b5d0;
    virtual void touchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4c8790, m1 0x42b604;
    virtual void touchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4c87d0, m1 0x42b638;

    void addPrioTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool);
    void addStandardDelegate(cocos2d::CCTouchDelegate*, int) = imac 0x4c79e0, m1 0x42a870;
    void addTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x4c7740, m1 0x42a590;
    void decrementForcePrio(int) = imac 0x4c72e0, m1 0x42a0ec, ios inline;
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCTouchDelegate*) = imac 0x4c7d70, m1 0x42ac50;
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCArray*, cocos2d::CCTouchDelegate*) = imac 0x4c7cb0, m1 0x42ab64;
    void forceAddHandler(cocos2d::CCTouchHandler*, cocos2d::CCArray*) = imac 0x4c7910, m1 0x42a79c;
    void forceRemoveAllDelegates() = imac 0x4c7d10, m1 0x42abe8, ios inline;
    void forceRemoveDelegate(cocos2d::CCTouchDelegate*) = imac 0x4c7b00, m1 0x42a9a4;
    void incrementForcePrio(int) = imac 0x4c72c0, m1 0x42a0d0, ios inline;
    bool init() = imac 0x4c70e0, m1 0x429f6c;
    bool isDispatchEvents() = imac 0x4c70c0, m1 0x429f5c, ios inline;
    bool isUsingForcePrio() = imac 0x4c7690;
    void rearrangeHandlers(cocos2d::CCArray* handlers) = imac 0x4c7e30, m1 0x42ad2c, ios inline;
    void registerForcePrio(cocos2d::CCObject*, int, int) = imac 0x4c7300, m1 0x42a108;
    void removeAllDelegates() = imac 0x4c7d40, m1 0x42ac10;
    void removeDelegate(cocos2d::CCTouchDelegate*) = imac 0x4c7bf0, m1 0x42aa98;
    // int getTargetPrio() const;
    void setDispatchEvents(bool) = imac 0x4c70d0, m1 0x429f64;
    void setPriority(int p1, cocos2d::CCTouchDelegate* p2) = imac 0x4c7eb0, m1 0x42adb4, ios inline;
    void touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int) = imac 0x4c8000, m1 0x42af24;
    void unregisterForcePrio(cocos2d::CCObject*) = imac 0x4c7470, m1 0x42a2a0;

    cocos2d::CCArray* m_pTargetedHandlers;
    cocos2d::CCArray* m_pStandardHandlers;
    bool m_bLocked;
    bool m_bToAdd;
    bool m_bToRemove;
    cocos2d::CCArray* m_pHandlersToAdd;
    cocos2d::ccCArray* m_pHandlersToRemove;
    bool m_bToQuit;
    bool m_bDispatchEvents;
    int m_targetPrio;
    cocos2d::CCDictionary* m_pForcePrioDict;
    int m_forcePrio;
}

[[link(win, android)]]
class cocos2d::CCTouchHandler : cocos2d::CCObject {
    virtual ~CCTouchHandler();

    static cocos2d::CCTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int) = imac 0x475b40, m1 0x3e0814, ios inline;

    // CCTouchHandler(cocos2d::CCTouchHandler const&);
    // CCTouchHandler();
    virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int) = imac 0x475bf0, m1 0x3e08bc;

    cocos2d::CCTouchDelegate* getDelegate() = imac 0x475a80, m1 0x3e0780;
    int getEnabledSelectors() = imac 0x475b20, m1 0x3e0804, ios inline;
    int getPriority() = imac 0x475b00, m1 0x3e07f4;
    void setDelegate(cocos2d::CCTouchDelegate*) = imac 0x475a90, m1 0x3e0788, ios inline;
    void setEnalbedSelectors(int) = imac 0x475b30, m1 0x3e080c, ios inline;
    void setPriority(int prio) = imac 0x475b10, m1 0x3e07fc, ios inline;

    cocos2d::CCTouchDelegate* m_pDelegate;
    int m_nPriority;
    int m_nEnabledSelectors;
}

[[link(win, android)]]
class cocos2d::CCTouchScriptHandlerEntry : cocos2d::CCScriptHandlerEntry {
    virtual ~CCTouchScriptHandlerEntry() = imac 0x307060, m1 0x29a5e4;

    static cocos2d::CCTouchScriptHandlerEntry* create(int, bool, int, bool) = imac 0x306fb0, m1 0x29a538;

    bool init(bool, int, bool) = imac 0x307040, m1 0x29a5d0, ios inline;
}

[[link(win, android)]]
class cocos2d::CCTransitionCrossFade : cocos2d::CCTransitionScene {
    // CCTransitionCrossFade(cocos2d::CCTransitionCrossFade const&);
    CCTransitionCrossFade();
    virtual ~CCTransitionCrossFade();

    static cocos2d::CCTransitionCrossFade* create(float, cocos2d::CCScene*) = imac 0xa7a20, m1 0x96c74;

    virtual void onEnter() = imac 0xa7ab0, m1 0x96d18;
    virtual void onExit() = imac 0xa7df0, m1 0x97050;
    virtual void draw() = imac 0xa7aa0, m1 0x96d14;
}

[[link(win, android)]]
class cocos2d::CCTransitionFade : cocos2d::CCTransitionScene {
    // CCTransitionFade(cocos2d::CCTransitionFade const&);
    CCTransitionFade() = ios inline;
    virtual ~CCTransitionFade() = imac 0xa74d0, ios inline;

    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*) = imac 0xa7660, m1 0x968d8;
    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::ccColor3B const&) = imac 0xa75c0, m1 0x9683c;

    virtual void onEnter() = imac 0xa7750, m1 0x969c4;
    virtual void onExit() = imac 0xa7880, m1 0x96b00;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xa7730, m1 0x9699c;
    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::ccColor3B const&) = imac 0xa76e0, m1 0x96958;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeBL : cocos2d::CCTransitionFadeTR {
    // CCTransitionFadeBL(cocos2d::CCTransitionFadeBL const&);
    CCTransitionFadeBL();
    virtual ~CCTransitionFadeBL();

    static cocos2d::CCTransitionFadeBL* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeDown : cocos2d::CCTransitionFadeTR {
    // CCTransitionFadeDown(cocos2d::CCTransitionFadeDown const&);
    CCTransitionFadeDown();
    virtual ~CCTransitionFadeDown();

    static cocos2d::CCTransitionFadeDown* create(float, cocos2d::CCScene*) = imac 0xa8f20, m1 0x97fe0;

    virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = imac 0xa8fb0, m1 0x98088;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeTR : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionFadeTR(cocos2d::CCTransitionFadeTR const&);
    CCTransitionFadeTR();
    virtual ~CCTransitionFadeTR();

    static cocos2d::CCTransitionFadeTR* create(float, cocos2d::CCScene*) = m1 0x97974;

    virtual void onEnter() = imac 0xa8890, m1 0x97a24;
    virtual void sceneOrder() = imac 0xa8880, m1 0x97a1c;
    virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = imac 0xa8990, m1 0x97b20;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeUp : cocos2d::CCTransitionFadeTR {
    // CCTransitionFadeUp(cocos2d::CCTransitionFadeUp const&);
    CCTransitionFadeUp();
    virtual ~CCTransitionFadeUp();

    static cocos2d::CCTransitionFadeUp* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipAngular : cocos2d::CCTransitionSceneOriented {
    // CCTransitionFlipAngular(cocos2d::CCTransitionFlipAngular const&);
    CCTransitionFlipAngular();
    virtual ~CCTransitionFlipAngular();

    static cocos2d::CCTransitionFlipAngular* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = m1 0x958e0;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipX : cocos2d::CCTransitionSceneOriented {
    // CCTransitionFlipX(cocos2d::CCTransitionFlipX const&);
    CCTransitionFlipX();
    virtual ~CCTransitionFlipX();

    static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = imac 0xa5d40, m1 0x951c4;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipY : cocos2d::CCTransitionSceneOriented {
    // CCTransitionFlipY(cocos2d::CCTransitionFlipY const&);
    CCTransitionFlipY();
    virtual ~CCTransitionFlipY();

    static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = m1 0x95554;
}

[[link(win, android)]]
class cocos2d::CCTransitionJumpZoom : cocos2d::CCTransitionScene {
    // CCTransitionJumpZoom(cocos2d::CCTransitionJumpZoom const&);
    CCTransitionJumpZoom();
    virtual ~CCTransitionJumpZoom();

    static cocos2d::CCTransitionJumpZoom* create(float, cocos2d::CCScene*) = imac 0xa3f70, m1 0x93618;

    virtual void onEnter() = imac 0xa3ff0, m1 0x936b8;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInB : cocos2d::CCTransitionMoveInL {
    // CCTransitionMoveInB(cocos2d::CCTransitionMoveInB const&);
    CCTransitionMoveInB();
    virtual ~CCTransitionMoveInB();

    static cocos2d::CCTransitionMoveInB* create(float, cocos2d::CCScene*) = imac 0xa4b50, m1 0x94118;

    virtual void initScenes() = imac 0xa4be0, m1 0x941c0;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInL : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionMoveInL(cocos2d::CCTransitionMoveInL const&);
    CCTransitionMoveInL() = ios inline;
    virtual ~CCTransitionMoveInL() = ios inline;

    static cocos2d::CCTransitionMoveInL* create(float, cocos2d::CCScene*) = imac 0xa4360, m1 0x939ac, ios inline;

    virtual void onEnter() = imac 0xa43f0, m1 0x93a54;
    virtual void initScenes() = imac 0xa4520, m1 0x93b80, ios inline;
    virtual cocos2d::CCActionInterval* action() = imac 0xa44c0, m1 0x93b30;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xa4500, m1 0x93b70;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInR : cocos2d::CCTransitionMoveInL {
    // CCTransitionMoveInR(cocos2d::CCTransitionMoveInR const&);
    CCTransitionMoveInR();
    virtual ~CCTransitionMoveInR();

    static cocos2d::CCTransitionMoveInR* create(float, cocos2d::CCScene*) = imac 0xa46d0, m1 0x93cf0;

    virtual void initScenes() = imac 0xa4760, m1 0x93d98;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInT : cocos2d::CCTransitionMoveInL {
    // CCTransitionMoveInT(cocos2d::CCTransitionMoveInT const&);
    CCTransitionMoveInT() = ios inline;
    virtual ~CCTransitionMoveInT() = ios inline;

    static cocos2d::CCTransitionMoveInT* create(float, cocos2d::CCScene*) = imac 0xa4910, m1 0x93f04;

    virtual void initScenes() = imac 0xa49a0, m1 0x93fac;
}

[[link(win, android)]]
class cocos2d::CCTransitionPageTurn : cocos2d::CCTransitionScene {
    CCTransitionPageTurn() = imac 0x3c66f0, m1 0x34ad00;
    virtual ~CCTransitionPageTurn() = imac 0x3c6730, m1 0x34ad40;

    static cocos2d::CCTransitionPageTurn* create(float, cocos2d::CCScene*, bool) = imac 0x3c6770, m1 0x34ad5c;

    virtual bool initWithDuration(float, cocos2d::CCScene*, bool) = imac 0x3c67f0, m1 0x34ade0;
    virtual void onEnter() = imac 0x3c6830, m1 0x34ae08;
    virtual void sceneOrder() = imac 0x3c6810, m1 0x34adfc;

    cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = imac 0x3c6970, m1 0x34af1c;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgress : cocos2d::CCTransitionScene {
    CCTransitionProgress() = imac 0x2789f0, m1 0x21e7e8;

    static cocos2d::CCTransitionProgress* create(float, cocos2d::CCScene*) = imac 0x278a50, m1 0x21e830;

    virtual void onEnter() = imac 0x278ae0, m1 0x21e8d4;
    virtual void onExit() = imac 0x278c90, m1 0x21ea84;
    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x278d00, m1 0x21ead8;
    virtual void setupTransition() = imac 0x278cd0, m1 0x21eac0;
    virtual void sceneOrder() = imac 0x278cc0, m1 0x21eab8;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressHorizontal : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressHorizontal* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x279090;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressInOut : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressInOut* create(float, cocos2d::CCScene*) = imac 0x279350, m1 0x21f1bc;

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x279430, m1 0x21f2b4;
    virtual void sceneOrder() = imac 0x2793f0, m1 0x21f294;
    virtual void setupTransition() = imac 0x279400, m1 0x21f29c;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressOutIn : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressOutIn* create(float, cocos2d::CCScene*) = m1 0x21f3b4;

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x2795e0, m1 0x21f48c;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCCW : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressRadialCCW* create(float, cocos2d::CCScene*) = imac 0x278de0, m1 0x21eba0;

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = m1 0x21eae0;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCW : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressRadialCW* create(float, cocos2d::CCScene*) = imac 0x278e80;

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = m1 0x21ed50;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressVertical : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressVertical* create(float, cocos2d::CCScene*) = imac 0x2791a0;

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x279240;
}

[[link(win, android)]]
class cocos2d::CCTransitionRotoZoom : cocos2d::CCTransitionScene {
    // CCTransitionRotoZoom(cocos2d::CCTransitionRotoZoom const&);
    CCTransitionRotoZoom() = imac 0xa3ae0, m1 0x931d4;
    virtual ~CCTransitionRotoZoom() = m1 0x932b4;

    static cocos2d::CCTransitionRotoZoom* create(float, cocos2d::CCScene*) = imac 0xa3b20, m1 0x93214;

    virtual void onEnter() = imac 0xa3c90, m1 0x93378;
}

[[link(win, android)]]
class cocos2d::CCTransitionScene : cocos2d::CCScene {
    // CCTransitionScene(cocos2d::CCTransitionScene const&);
    CCTransitionScene() = ios inline;
    virtual ~CCTransitionScene() = imac 0xa3390, m1 0x92aac;

    static cocos2d::CCTransitionScene* create(float, cocos2d::CCScene*) = imac 0xa3480, m1 0x92b70, ios inline;

    virtual void onEnter() = imac 0xa3810, m1 0x92f2c;
    virtual void onExit() = imac 0xa3860, m1 0x92f80;
    virtual void cleanup() = imac 0xa38c0, m1 0x92fd4;
    virtual void draw() = imac 0xa35d0, m1 0x92d00;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xa3500, m1 0x92c10;
    virtual void sceneOrder() = imac 0xa35c0, m1 0x92cf4;

    void finish() = imac 0xa3620, m1 0x92d54;
    void hideOutShowIn() = imac 0xa37c0, m1 0x92ee0;
    void setNewScene(float) = imac 0xa3750, m1 0x92e80;
}

[[link(win, android)]]
class cocos2d::CCTransitionSceneOriented : cocos2d::CCTransitionScene {
    CCTransitionSceneOriented();
    virtual ~CCTransitionSceneOriented() = imac 0xa3940;

    static cocos2d::CCTransitionSceneOriented* create(float, cocos2d::CCScene*, cocos2d::tOrientation) = imac 0xa3a30, m1 0x9311c;

    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::tOrientation) = imac 0xa3ab0, m1 0x931a4;
}

[[link(win, android)]]
class cocos2d::CCTransitionShrinkGrow : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionShrinkGrow(cocos2d::CCTransitionShrinkGrow const&);
    CCTransitionShrinkGrow();
    virtual ~CCTransitionShrinkGrow();

    static cocos2d::CCTransitionShrinkGrow* create(float, cocos2d::CCScene*) = imac 0xa59c0;

    virtual void onEnter() = imac 0xa5a50, m1 0x94f20;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xa5bd0, m1 0x950a8;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInB : cocos2d::CCTransitionSlideInL {
    // CCTransitionSlideInB(cocos2d::CCTransitionSlideInB const&);
    CCTransitionSlideInB();
    virtual ~CCTransitionSlideInB();

    static cocos2d::CCTransitionSlideInB* create(float, cocos2d::CCScene*) = imac 0xa5700, m1 0x94bec;

    virtual void sceneOrder() = imac 0xa5790, m1 0x94c94;
    virtual void initScenes() = imac 0xa57a0, m1 0x94ca0;
    virtual cocos2d::CCActionInterval* action() = imac 0xa5810, m1 0x94d04;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInL : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionSlideInL(cocos2d::CCTransitionSlideInL const&);
    CCTransitionSlideInL();
    virtual ~CCTransitionSlideInL() = m1 0x9426c;

    static cocos2d::CCTransitionSlideInL* create(float, cocos2d::CCScene*);

    virtual void onEnter() = imac 0xa4d90, m1 0x94330;
    virtual void sceneOrder() = imac 0xa4e80, m1 0x94438;
    virtual void initScenes() = imac 0xa4e90, m1 0x94440;
    virtual cocos2d::CCActionInterval* action() = imac 0xa4f00, m1 0x944a4;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xa4f60, m1 0x94504;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInR : cocos2d::CCTransitionSlideInL {
    // CCTransitionSlideInR(cocos2d::CCTransitionSlideInR const&);
    CCTransitionSlideInR();
    virtual ~CCTransitionSlideInR();

    static cocos2d::CCTransitionSlideInR* create(float, cocos2d::CCScene*) = imac 0xa5180, m1 0x946d8;

    virtual void sceneOrder() = imac 0xa5210, m1 0x94780;
    virtual void initScenes() = imac 0xa5220, m1 0x9478c;
    virtual cocos2d::CCActionInterval* action() = imac 0xa5280, m1 0x947ec;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInT : cocos2d::CCTransitionSlideInL {
    // CCTransitionSlideInT(cocos2d::CCTransitionSlideInT const&);
    CCTransitionSlideInT();
    virtual ~CCTransitionSlideInT();

    static cocos2d::CCTransitionSlideInT* create(float, cocos2d::CCScene*) = imac 0xa5440, m1 0x94964;

    virtual void sceneOrder() = imac 0xa54d0, m1 0x94a0c;
    virtual void initScenes() = imac 0xa54e0, m1 0x94a14;
    virtual cocos2d::CCActionInterval* action() = imac 0xa5540, m1 0x94a74;
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitCols : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionSplitCols(cocos2d::CCTransitionSplitCols const&);
    CCTransitionSplitCols();
    virtual ~CCTransitionSplitCols();

    static cocos2d::CCTransitionSplitCols* create(float, cocos2d::CCScene*) = imac 0xa82c0;

    virtual void onEnter() = imac 0xa8350, m1 0x97550;
    virtual cocos2d::CCActionInterval* action() = imac 0xa8440, m1 0x97664;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xa8460, m1 0x97678;
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitRows : cocos2d::CCTransitionSplitCols {
    // CCTransitionSplitRows(cocos2d::CCTransitionSplitRows const&);
    CCTransitionSplitRows();
    virtual ~CCTransitionSplitRows() = imac 0xa8500, m1 0x976e0;

    static cocos2d::CCTransitionSplitRows* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCActionInterval* action() = imac 0xa85f0, m1 0x977a4;
}

[[link(win, android)]]
class cocos2d::CCTransitionTurnOffTiles : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionTurnOffTiles(cocos2d::CCTransitionTurnOffTiles const&);
    CCTransitionTurnOffTiles();
    virtual ~CCTransitionTurnOffTiles();

    static cocos2d::CCTransitionTurnOffTiles* create(float, cocos2d::CCScene*) = m1 0x971d4;

    virtual void onEnter() = imac 0xa8050, m1 0x97284;
    virtual void sceneOrder() = imac 0xa8040, m1 0x9727c;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipAngular : cocos2d::CCTransitionSceneOriented {
    // CCTransitionZoomFlipAngular(cocos2d::CCTransitionZoomFlipAngular const&);
    CCTransitionZoomFlipAngular();
    virtual ~CCTransitionZoomFlipAngular();

    static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = m1 0x96444;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipX : cocos2d::CCTransitionSceneOriented {
    // CCTransitionZoomFlipX(cocos2d::CCTransitionZoomFlipX const&);
    CCTransitionZoomFlipX();
    virtual ~CCTransitionZoomFlipX();

    static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = imac 0xa68d0, m1 0x95c78;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipY : cocos2d::CCTransitionSceneOriented {
    // CCTransitionZoomFlipY(cocos2d::CCTransitionZoomFlipY const&);
    CCTransitionZoomFlipY();
    virtual ~CCTransitionZoomFlipY();

    static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = m1 0x96060;
}

[[link(win, android)]]
class cocos2d::CCTurnOffTiles : cocos2d::CCTiledGrid3DAction {
    // CCTurnOffTiles(cocos2d::CCTurnOffTiles const&);
    // CCTurnOffTiles();
    virtual ~CCTurnOffTiles() = imac 0x89c4c0, m1 0x78fa1c;

    static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&) = imac 0x89c180, m1 0x78f6ec;
    static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&, unsigned int) = imac 0x89c270, m1 0x78f7d8;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x89c390, m1 0x78f904;
    virtual void update(float) = imac 0x89c750, m1 0x78fcf8;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x89c640, m1 0x78fba8;
    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int) = imac 0x89c360, m1 0x78f8d4;

    void shuffle(unsigned int*, unsigned int) = imac 0x89c580, m1 0x78fadc;
    void turnOffTile(cocos2d::CCPoint const&) = imac 0x89c610, m1 0x78fb7c;
    void turnOnTile(cocos2d::CCPoint const&) = imac 0x89c5d0, m1 0x78fb3c;
}

[[link(win, android)]]
class cocos2d::CCTwirl : cocos2d::CCGrid3DAction {
    static cocos2d::CCTwirl* create(float, cocos2d::CCSize const&, cocos2d::CCPoint, unsigned int, float) = imac 0x26bdc0, m1 0x212ed4;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x26bf60, m1 0x213070;
    virtual void update(float) = imac 0x26c0f0, m1 0x2131d0;

    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint, unsigned int, float) = imac 0x26bef0, m1 0x213004;
    void setPosition(cocos2d::CCPoint const&) = imac 0x26bf50, m1 0x213068;
}

[[link(win, android)]]
class cocos2d::CCUserDefault {
    CCUserDefault() = imac 0x6afcb0, m1 0x5c9b7c;
    ~CCUserDefault() = imac 0x6afc60, m1 0x5c9b34;

    static bool createXMLFile() = imac 0x6b0ec0, m1 0x5cab40;
    static std::string const& getXMLFilePath() = imac 0x6b0ed0, m1 0x5cab48;
    static void initXMLFilePath() = imac 0x6b0de0, m1 0x5caa68;
    static bool isXMLFileExist() = imac 0x6b0e70, m1 0x5caaec;
    static void purgeSharedUserDefault() = imac 0x6afcf0, m1 0x5c9b94;
    static cocos2d::CCUserDefault* sharedUserDefault() = imac 0x6b0d20, m1 0x5ca9b0;

    void flush() = imac 0x6b0130, m1 0x5c9fe4;
    bool getBoolForKey(char const*) = imac 0x6afd10, m1 0x5c9ba0;
    bool getBoolForKey(char const*, bool) = imac 0x6afd20, m1 0x5c9ba8;
    double getDoubleForKey(char const*) = imac 0x6b0680, m1 0x428588;
    double getDoubleForKey(char const*, double) = imac 0x6b0690, m1 0x428590;
    float getFloatForKey(char const*) = imac 0x6b03f0, m1 0x5ca2c0;
    float getFloatForKey(char const*, float) = imac 0x6b0400, m1 0x5ca2c8;
    int getIntegerForKey(char const*) = imac 0x6b0170, m1 0x5ca0f0;
    int getIntegerForKey(char const*, int) = imac 0x6b0180, m1 0x5ca0f8;
    std::string getStringForKey(char const*) = imac 0x6b0910, m1 0x5ca688;
    std::string getStringForKey(char const*, std::string const&) = imac 0x6b0940, m1 0x5ca6b0;
    void setBoolForKey(char const*, bool) = imac 0x6b0050, m1 0x5c9f58;
    void setDoubleForKey(char const*, double) = imac 0x6b0820, m1 0x5ca5f4;
    void setFloatForKey(char const*, float) = imac 0x41e740, m1 0x5ca410;
    void setIntegerForKey(char const*, int) = imac 0x6b0310, m1 0x5ca234;
    void setStringForKey(char const*, std::string const&) = imac 0x6b0c30, m1 0x5ca91c;
}

[[link(win, android)]]
class cocos2d::CCWaves : cocos2d::CCGrid3DAction {
    static cocos2d::CCWaves* create(float, cocos2d::CCSize const&, unsigned int, float, bool, bool) = imac 0x26b920, m1 0x212a90;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x26ba90, m1 0x212bf8;
    virtual void update(float) = imac 0x26bbf0, m1 0x212d40;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float, bool, bool) = imac 0x26ba30, m1 0x212b9c;
}

[[link(win, android)]]
class cocos2d::CCWaves3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCWaves3D* create(float, cocos2d::CCSize const&, unsigned int, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x269a90, m1 0x210e6c;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);
}

[[link(win, android)]]
class cocos2d::CCWavesTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCWavesTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float);

    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float) = imac 0x89c920, m1 0x78fec0;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x89c960, m1 0x78ff04;
    virtual void update(float) = imac 0x89ca80, m1 0x79001c;
}

[[link(win, android)]]
class cocos2d::CCZone {
    CCZone(cocos2d::CCObject* object) = win inline, imac 0xe9de0, m1 0xcbbd0;
}

[[link(win, android)]]
class cocos2d::extension::CCArrayForObjectSorting : cocos2d::CCArray {
    unsigned int indexOfSortedObject(cocos2d::extension::CCSortableObject*) = imac 0x416ce0, m1 0x38efe8;
    void insertSortedObject(cocos2d::extension::CCSortableObject*) = imac 0x416bd0, m1 0x38eec8;
    cocos2d::extension::CCSortableObject* objectWithObjectID(unsigned int) = imac 0x417160, m1 0x38f560;
    void removeSortedObject(cocos2d::extension::CCSortableObject*) = imac 0x416da0, m1 0x38f0d0;
    void setObjectID_ofSortedObject(unsigned int, cocos2d::extension::CCSortableObject*) = imac 0x416f00, m1 0x38f278;
}

[[link(win, android)]]
class cocos2d::extension::CCControl : cocos2d::CCLayerRGBA {
    CCControl() = imac 0x33c9b0;
    virtual ~CCControl() = imac 0x33ccd0;

    static cocos2d::extension::CCControl* create() = imac 0x33cb10, m1 0x2cead4, ios inline;

    virtual bool init() = imac 0x33cc00, m1 0x2ceb9c;
    virtual void onEnter() = imac 0x33d070, m1 0x2ceef8;
    virtual void onExit() = imac 0x33d080, m1 0x2ceefc;
    virtual void registerWithTouchDispatcher() = imac 0x33d020, m1 0x2ceea8;
    virtual void setOpacityModifyRGB(bool) = imac 0x33db50, m1 0x2cf94c;
    virtual bool isOpacityModifyRGB() = imac 0x33dcb0, m1 0x2cfaa4;
    virtual void setEnabled(bool) = imac 0x33dda0, m1 0x2cfb74;
    virtual bool isEnabled() = imac 0x33ddd0, m1 0x2cfb94;
    virtual void setSelected(bool) = imac 0x33dde0, m1 0x2cfb9c;
    virtual bool isSelected() = imac 0x33de00, m1 0x2cfbac;
    virtual void setHighlighted(bool) = imac 0x33de10, m1 0x2cfbb4;
    virtual bool isHighlighted() = imac 0x33de30, m1 0x2cfbc4;
    virtual void needsLayout() = imac 0x33dd90, m1 0x2cfb70;
    virtual void sendActionsForControlEvents(unsigned int) = imac 0x33d090, m1 0x2cef00;
    virtual void addTargetWithActionForControlEvents(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, unsigned int) = imac 0x33d340, m1 0x2cf1a8;
    virtual void removeTargetWithActionForControlEvents(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, unsigned int) = imac 0x33d800, m1 0x2cf61c;
    virtual cocos2d::CCPoint getTouchLocation(cocos2d::CCTouch*) = imac 0x33dcd0, m1 0x2cfab4;
    virtual bool isTouchInside(cocos2d::CCTouch*) = imac 0x33dd20, m1 0x2cfb00;

    void addHandleOfControlEvent(int, cocos2d::extension::CCControlEvent) = imac 0x33dea0, m1 0x2cfc40, ios inline;
    void addTargetWithActionForControlEvent(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = imac 0x33d790, m1 0x2cf594;
    cocos2d::CCArray* dispatchListforControlEvent(cocos2d::extension::CCControlEvent) = imac 0x33d2a0, m1 0x2cf0f4;
    int getHandleOfControlEvent(cocos2d::extension::CCControlEvent) = imac 0x33d2f0, m1 0x2cf15c, ios inline;
    bool hasVisibleParents() = imac 0x33de40, m1 0x2cfbcc, ios inline;
    void removeHandleOfControlEvent(cocos2d::extension::CCControlEvent) = imac 0x33df70, m1 0x2cfd00, ios inline;
    void removeTargetWithActionForControlEvent(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = imac 0x33d9b0, m1 0x2cf784;
}

[[link(win, android)]]
class cocos2d::extension::CCControlButton : cocos2d::extension::CCControl {
    CCControlButton() = imac 0x33e970, m1 0x2d0588;
    virtual ~CCControlButton() = imac 0x33eb50, m1 0x2428a0;

    static cocos2d::extension::CCControlButton* create() = imac 0x340be0, m1 0x2d25a0;
    static cocos2d::extension::CCControlButton* create(cocos2d::extension::CCScale9Sprite*) = imac 0x33f4e0, m1 0x2d0f10;
    static cocos2d::extension::CCControlButton* create(cocos2d::CCNode*, cocos2d::extension::CCScale9Sprite*) = imac 0x33f160, m1 0x2d0c28;
    static cocos2d::extension::CCControlButton* create(std::string, char const*, float) = imac 0x33f300, m1 0x2d0d70;

    virtual void needsLayout() = imac 0x3400d0, m1 0x2d1afc;
    virtual void setEnabled(bool) = imac 0x33f640, m1 0x2d100c;
    virtual void setSelected(bool) = imac 0x33f660, m1 0x2d1038;
    virtual void setHighlighted(bool) = imac 0x33f680, m1 0x2d1064;
    virtual cocos2d::CCSize getPreferredSize() = imac 0x33f830, m1 0x2d1234;
    virtual void setPreferredSize(cocos2d::CCSize) = imac 0x33f770, m1 0x2d1180;
    virtual bool getZoomOnTouchDown() = imac 0x33f760, m1 0x2d1178;
    virtual void setZoomOnTouchDown(bool) = imac 0x33f750, m1 0x2d1170;
    virtual cocos2d::CCPoint getLabelAnchorPoint() = imac 0x33f860, m1 0x2d1248;
    virtual void setLabelAnchorPoint(cocos2d::CCPoint) = imac 0x33f880, m1 0x2d1254;
    virtual unsigned char getOpacity() = imac 0x340a50, m1 0x2d2450;
    virtual void setOpacity(unsigned char) = imac 0x340990, m1 0x2d23a4;
    virtual cocos2d::ccColor3B const& getColor() = imac 0x340b30, m1 0x2d250c;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x340a70, m1 0x2d2460;
    virtual void setMargins(int, int) = imac 0x33f620, m1 0x2d0ff8;
    virtual bool init() = imac 0x33ecd0, m1 0x2d07bc;
    virtual bool initWithLabelAndBackgroundSprite(cocos2d::CCNode*, cocos2d::extension::CCScale9Sprite*) = imac 0x33ed20, m1 0x2d080c;
    virtual bool initWithTitleAndFontNameAndFontSize(std::string, char const*, float) = imac 0x33f2b0, m1 0x2d0d20;
    virtual bool initWithBackgroundSprite(cocos2d::extension::CCScale9Sprite*) = imac 0x33f490, m1 0x2d0ec4;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x6c160, m1 0x65364;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x340790, m1 0x2d2168;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3408d0, m1 0x2d22d8;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x340b50, m1 0x2d251c;
    virtual cocos2d::CCString* getTitleForState(unsigned int) = imac 0x33f8c0, m1 0x2d129c;
    virtual void setTitleForState(cocos2d::CCString*, unsigned int) = imac 0x33f950, m1 0x2d1344;
    virtual cocos2d::ccColor3B const getTitleColorForState(unsigned int) = imac 0x33f9c0, m1 0x2d13bc;
    virtual void setTitleColorForState(cocos2d::ccColor3B, unsigned int) = imac 0x33fa20, m1 0x2d1418;
    virtual cocos2d::CCNode* getTitleLabelForState(unsigned int) = imac 0x33fae0, m1 0x2d14e0;
    virtual void setTitleLabelForState(cocos2d::CCNode*, unsigned int) = imac 0x33fb20, m1 0x2d1520;
    virtual void setTitleTTFForState(char const*, unsigned int) = imac 0x33fbf0, m1 0x2d1608;
    virtual char const* getTitleTTFForState(unsigned int) = imac 0x33fc90, m1 0x2d16c0;
    virtual void setTitleTTFSizeForState(float, unsigned int) = imac 0x33fd00, m1 0x2d1728;
    virtual float getTitleTTFSizeForState(unsigned int) = imac 0x33fd80, m1 0x2d179c;
    virtual void setTitleBMFontForState(char const*, unsigned int) = imac 0x33fdf0, m1 0x2d1800;
    virtual char const* getTitleBMFontForState(unsigned int) = imac 0x33fe90, m1 0x2d18b4;
    virtual cocos2d::extension::CCScale9Sprite* getBackgroundSpriteForState(unsigned int) = imac 0x33ff00, m1 0x2d191c;
    virtual void setBackgroundSpriteForState(cocos2d::extension::CCScale9Sprite*, unsigned int) = imac 0x33ff40, m1 0x2d195c;
    virtual void setBackgroundSpriteFrameForState(cocos2d::CCSpriteFrame*, unsigned int) = imac 0x3400a0, m1 0x2d1ac0;

    bool doesAdjustBackgroundImage() = imac 0x33f850, m1 0x2d1240;
    void setAdjustBackgroundImage(bool) = imac 0x33f140, m1 0x2d0c18;
}

[[link(win, android)]]
class cocos2d::extension::CCControlColourPicker : cocos2d::extension::CCControl {
    CCControlColourPicker() = inline;
    virtual ~CCControlColourPicker() = inline;

    static cocos2d::extension::CCControlColourPicker* colourPicker() = imac 0x341470, m1 0x2d2ce4;

    virtual bool init() = imac 0x340df0, m1 0x2d277c;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3416f0, m1 0x2d2eb8;
    virtual void setColorValue(cocos2d::ccColor3B const&) = imac 0x341540, m1 0x1fd970;

    void colourSliderValueChanged(cocos2d::CCObject*, unsigned int) = imac 0x341240, m1 0x2d2b34;
    cocos2d::ccColor3B const& getColorValue() const = inline;
    void hueSliderValueChanged(cocos2d::CCObject*, unsigned int) = imac 0x341110, m1 0x2d2a50;
    void updateControlPicker() = imac 0x341690, m1 0x2d2e70, ios inline;
    void updateHueAndControlPicker() = imac 0x341320, m1 0x2d2bf0;
}

[[link(win, android)]]
class cocos2d::extension::CCControlHuePicker : cocos2d::extension::CCControl {
    CCControlHuePicker() = imac 0x341f20;
    virtual ~CCControlHuePicker() = imac 0x342080;

    static cocos2d::extension::CCControlHuePicker* create(cocos2d::CCNode*, cocos2d::CCPoint) = imac 0x342370, m1 0x2d3828;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x342a80, m1 0x2d3e74;
    virtual void setEnabled(bool) = imac 0x342790, m1 0x2d3ba4;
    virtual bool initWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint) = imac 0x342490, m1 0x2d3908;
    virtual void setHue(float) = imac 0x342670, m1 0x2d3ac4;
    virtual void setHuePercentage(float) = imac 0x3426a0, m1 0x2d3ae0;
    virtual void registerWithTouchDispatcher() = imac 0x342630, m1 0x2d3a8c;

    bool checkSliderPosition(cocos2d::CCPoint) = imac 0x342880, m1 0x2d3c8c;
    void updateSliderPosition(cocos2d::CCPoint) = imac 0x3427e0, m1 0x2d3bf4;
}

[[link(win, android)]]
class cocos2d::extension::CCControlPotentiometer : cocos2d::extension::CCControl {
    CCControlPotentiometer() = imac 0x345b80;
    virtual ~CCControlPotentiometer() = imac 0x345c30;

    static cocos2d::extension::CCControlPotentiometer* create(char const*, char const*, char const*) = imac 0x345f60, m1 0x2d6a30;

    virtual void setEnabled(bool) = imac 0x3462a0, m1 0x2d6d54;
    virtual bool isTouchInside(cocos2d::CCTouch*) = imac 0x346470, m1 0x2d6ee0;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3465a0, m1 0x2d6fec;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x346760, m1 0x2d71bc;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3469c0, m1 0x2d73f4;

    float angleInDegreesBetweenLineFromPoint_toPoint_toLineFromPoint_toPoint(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x346ab0, m1 0x2d74fc;
    float distanceBetweenPointAndPoint(cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x346570, m1 0x2d6fcc;
    float getMaximumValue() = imac 0x346460, m1 0x2d6ed8;
    float getMinimumValue() = imac 0x3463a0, m1 0x2d6e38;
    float getValue() = imac 0x3462f0, m1 0x2d6da4;
    bool initWithTrackSprite_ProgressTimer_ThumbSprite(cocos2d::CCSprite*, cocos2d::CCProgressTimer*, cocos2d::CCSprite*) = imac 0x3460a0, m1 0x2d6b50;
    void potentiometerBegan(cocos2d::CCPoint) = imac 0x346650, m1 0x2d70ac;
    void potentiometerEnded(cocos2d::CCPoint) = imac 0x346a10, m1 0x2d7454;
    void potentiometerMoved(cocos2d::CCPoint) = imac 0x3467b0, m1 0x2d7208;
    void setMaximumValue(float) = imac 0x3463b0, m1 0x2d6e40;
    void setMinimumValue(float) = imac 0x346300, m1 0x2d6dac;
    void setValue(float) = imac 0x346210, m1 0x2d6cc8;
}

[[link(win, android)]]
class cocos2d::extension::CCControlSaturationBrightnessPicker : cocos2d::extension::CCControl {
    CCControlSaturationBrightnessPicker() = imac 0x351440;
    virtual ~CCControlSaturationBrightnessPicker() = imac 0x3515c0;

    static cocos2d::extension::CCControlSaturationBrightnessPicker* create(cocos2d::CCNode*, cocos2d::CCPoint) = imac 0x351a60, m1 0x2e1540;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x352170, m1 0x2e1b30;
    virtual void setEnabled(bool) = imac 0x351b90, m1 0x2e1630;
    virtual bool initWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint) = imac 0x3518e0, m1 0x2e13c4;
    virtual void updateWithHSV(cocos2d::extension::HSV) = imac 0x351be0, m1 0x2e1680;
    virtual void updateDraggerWithHSV(cocos2d::extension::HSV) = imac 0x351c80, m1 0x2e16f4;
    virtual void registerWithTouchDispatcher() = imac 0x352030, m1 0x2e19f4;

    bool checkSliderPosition(cocos2d::CCPoint) = imac 0x351f20, m1 0x2e1910;
    void updateSliderPosition(cocos2d::CCPoint) = imac 0x351d20, m1 0x2e177c;
}

[[link(win, android)]]
class cocos2d::extension::CCControlSlider : cocos2d::extension::CCControl {
    CCControlSlider() = imac 0x389280;
    virtual ~CCControlSlider() = imac 0x389320;

    static cocos2d::extension::CCControlSlider* create(char const*, char const*, char const*) = imac 0x389610, m1 0x3141cc;
    static cocos2d::extension::CCControlSlider* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x1dab50, m1 0x31429c;

    virtual void setValue(float) = imac 0x389b20, m1 0x31465c;
    virtual void setMinimumValue(float) = imac 0x389b70, m1 0x3146b0;
    virtual void setMaximumValue(float) = imac 0x389bc0, m1 0x3146e0;
    virtual void setEnabled(bool) = imac 0x389ad0, m1 0x31460c;
    virtual bool isTouchInside(cocos2d::CCTouch*) = imac 0x389c10, m1 0x314710;
    virtual bool initWithSprites(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x389810, m1 0x314350;
    virtual void needsLayout() = imac 0x6a540, m1 0x314df0;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x389d50, m1 0x314860;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x389fa0, m1 0x314a90;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x38a150, m1 0x314c24;

    cocos2d::CCPoint locationFromTouch(cocos2d::CCTouch*) = imac 0x389cc0, m1 0x3147c8;
    void sliderBegan(cocos2d::CCPoint) = imac 0x389ed0, m1 0x10398;
    void sliderEnded(cocos2d::CCPoint) = imac 0x38a230, m1 0x314d10;
    void sliderMoved(cocos2d::CCPoint) = imac 0x38a0b0, m1 0x314b94;
    float valueForLocation(cocos2d::CCPoint) = imac 0x38a450, m1 0xf7158;
}

[[link(win, android)]]
class cocos2d::extension::CCControlStepper : cocos2d::extension::CCControl {
    CCControlStepper() = imac 0x38d050;
    virtual ~CCControlStepper() = imac 0x38d100, m1 0x1c1044;

    static cocos2d::extension::CCControlStepper* create(cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x38d6b0, m1 0x317c34;

    virtual void setWraps(bool) = imac 0x38d7b0, m1 0x317d28;
    virtual void setMinimumValue(double) = imac 0x38d820, m1 0x317db4;
    virtual void setMaximumValue(double) = imac 0x38d850, m1 0x317dc8;
    virtual void setValue(double) = imac 0x38d880, m1 0x317ddc;
    virtual double getValue() = imac 0x38d8a0, m1 0x317dec;
    virtual void setStepValue(double) = imac 0x38d8b0, m1 0x317df4;
    virtual void setValueWithSendingEvent(double, bool) = imac 0x38d8d0, m1 0x317e04;
    virtual bool isContinuous() = imac 0x38d8c0, m1 0x317dfc;
    virtual void update(float) = imac 0x38da30, m1 0x317f54;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x38dbb0, m1 0x3180c4;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x38dd60, m1 0x31826c;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x38df50, m1 0x318458;

    bool initWithMinusSpriteAndPlusSprite(cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x38d250, m1 0x317824;
    void startAutorepeat() = imac 0x38d9e0, m1 0x317f18;
    void stopAutorepeat() = imac 0x38da10, m1 0x317f48;
    void updateLayoutUsingTouchLocation(cocos2d::CCPoint) = imac 0x38dac0, m1 0x317fd8;
}

[[link(win, android)]]
class cocos2d::extension::CCControlSwitch : cocos2d::extension::CCControl {
    CCControlSwitch() = imac 0x391b30;
    virtual ~CCControlSwitch() = m1 0x31bc2c;

    static cocos2d::extension::CCControlSwitch* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x3920b0, m1 0x31c014;
    static cocos2d::extension::CCControlSwitch* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCLabelTTF*, cocos2d::CCLabelTTF*) = imac 0x3921b0, m1 0x31c10c;

    virtual void setEnabled(bool) = imac 0x2eed30, m1 0x31c328;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x392480, m1 0x31c3a0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x392570, m1 0x31c46c;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);

    bool initWithMaskSprite(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x391ea0, m1 0x31be28;
    bool initWithMaskSprite(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCLabelTTF*, cocos2d::CCLabelTTF*) = imac 0x391ec0, m1 0x31be34;
    cocos2d::CCPoint locationFromTouch(cocos2d::CCTouch*) = imac 0x392430, m1 0x31c354;
    void setOn(bool) = imac 0x3922c0, m1 0x31c200;
    void setOn(bool, bool) = imac 0x392330, m1 0x31c270;
}

[[link(win, android)]]
class cocos2d::extension::CCControlUtils {
    static cocos2d::CCSprite* addSpriteToTargetWithPosAndAnchor(char const*, cocos2d::CCNode*, cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x392f00, m1 0x31cc20;
    static cocos2d::CCRect CCRectUnion(cocos2d::CCRect const&, cocos2d::CCRect const&) = imac 0x3931b0, m1 0x31ce60, ios inline;
    static cocos2d::extension::HSV HSVfromRGB(cocos2d::extension::RGBA) = imac 0x392f60;
    static cocos2d::extension::RGBA RGBfromHSV(cocos2d::extension::HSV) = imac 0x393050, m1 0x31cd44;
}

[[link(win, android)]]
class cocos2d::extension::CCEditBox : cocos2d::extension::CCControlButton, cocos2d::CCIMEDelegate {
    CCEditBox();
    virtual ~CCEditBox() = imac 0x4a30b0, m1 0x829438;

    static cocos2d::extension::CCEditBox* create(cocos2d::CCSize const&, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*) = imac 0x4a3340, m1 0x40a908;

    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x4a3a40, m1 0x40af3c;
    virtual void setVisible(bool) = imac 0x4a3a80, m1 0x40af80;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x4a3ac0, m1 0x40afc4;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x4a3b00, m1 0x40b008;
    virtual void visit() = imac 0x4a3b40, m1 0x40b04c;
    virtual void onEnter() = imac 0x4a3b70, m1 0x40b088;
    virtual void onExit() = imac 0x4a3ba0, m1 0x40b0c4;
    virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4a3bd0, m1 0x40b100;
    virtual void keyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4a3ce0, m1 0x40b1dc;
    virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4a3d00, m1 0x40b1e4;
    virtual void keyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4a3d80, m1 0x40b234;

    cocos2d::extension::CCEditBoxDelegate* getDelegate() = imac 0x4a35f0, m1 0x40ab78;
    int getMaxLength() = imac 0x4a39e0, m1 0x40af00;
    char const* getPlaceHolder() = imac 0x4a3950, m1 0x40aeac;
    char const* getText() = imac 0x4a3650, m1 0x40abcc;
    bool initWithSizeAndBackgroundSprite(cocos2d::CCSize const&, cocos2d::extension::CCScale9Sprite*) = imac 0x4a3510, m1 0x40aa90;
    void registerScriptEditBoxHandler(int) = imac 0x4a3da0, m1 0x40b23c;
    void setDelegate(cocos2d::extension::CCEditBoxDelegate*) = imac 0x4a35d0, m1 0x40ab64;
    void setFont(char const*, int) = imac 0x4a3680, m1 0x40ac00;
    void setFontColor(cocos2d::ccColor3B const&) = imac 0x4a3790, m1 0x40ad04;
    void setFontName(char const*) = imac 0x4a36e0, m1 0x40ac64;
    void setFontSize(int) = imac 0x4a3730, m1 0x40acb8;
    void setInputFlag(cocos2d::extension::EditBoxInputFlag) = imac 0x4a39f0, m1 0x40af08;
    void setInputMode(cocos2d::extension::EditBoxInputMode) = imac 0x4a3980, m1 0x40aec8;
    void setMaxLength(int) = imac 0x4a39b0, m1 0x40aee4;
    void setPlaceHolder(char const*) = imac 0x4a3900, m1 0x40ae60;
    void setPlaceholderFont(char const*, int) = imac 0x4a37c0, m1 0x40ad2c;
    void setPlaceholderFontColor(cocos2d::ccColor3B const&) = imac 0x4a38d0, m1 0x40ae38;
    void setPlaceholderFontName(char const*) = imac 0x4a3820, m1 0x40ad90;
    void setPlaceholderFontSize(int) = imac 0x4a3870, m1 0x40ade8;
    void setReturnType(cocos2d::extension::KeyboardReturnType) = imac 0x4a3a20, m1 0x40af24;
    void setText(char const*) = imac 0x4a3600, m1 0x40ab80;
    void touchDownAction(cocos2d::CCObject*, cocos2d::extension::CCControlEvent) = imac 0x4a3320, m1 0x40a8f8;
    void unregisterScriptEditBoxHandler() = imac 0x4a3210, m1 0x40a860;
}

[[link(win, android)]]
class cocos2d::extension::CCHttpClient : cocos2d::CCObject {
    CCHttpClient() = imac 0x426020, m1 0x39d5ec;
    virtual ~CCHttpClient() = imac 0x426200, m1 0x39d7c8;

    static void destroyInstance() = imac 0x426380, m1 0x39d93c, ios inline;
    static cocos2d::extension::CCHttpClient* getInstance() = imac 0x426330, m1 0x39d8e0;

    size_t availableThreadCount() = imac 0x426470, m1 0x39da50;
    void dispatchResponseCallbacks(float);
    void send(cocos2d::extension::CCHttpRequest* request) = imac 0x4263b0, m1 0x39d970;

    int _timeoutForConnect;
    int _timeoutForRead;
}

[[link(win, android)]]
class cocos2d::extension::CCHttpRequest : cocos2d::CCObject {
    int _requestType;
    std::string _url;
    std::vector<char> _requestData;
    std::string _tag;
    cocos2d::CCObject* _pTarget;
    cocos2d::extension::SEL_HttpResponse _pSelector;
    void* _pUserData;
    std::vector<std::string> _headers;
    int _type;
    bool _shouldCancel;
    int _downloadProgress;
    int _readTimeout;
    int _connectTimeout;
}

[[link(win, android)]]
class cocos2d::extension::CCHttpResponse : cocos2d::CCObject {
    cocos2d::extension::CCHttpRequest* _pHttpRequest;
    bool _succeed;
    std::vector<char> _responseData;
    std::vector<char> _responseHeader;
    int _responseCode;
    std::string _errorBuffer;
}

[[link(win, android)]]
class cocos2d::extension::CCInvocation : cocos2d::CCObject {
    CCInvocation(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = win inline, imac 0x3c4fe0, m1 0x3498f8, ios inline;

    static cocos2d::extension::CCInvocation* create(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = imac 0x3c4f10, m1 0x349824;

    void invoke(cocos2d::CCObject*) = imac 0x3c5030, m1 0x349948;
}

[[link(win, android)]]
class cocos2d::extension::CCScale9Sprite : cocos2d::CCNodeRGBA {
    CCScale9Sprite() = imac 0x3e0d60, m1 0x35f370;
    virtual ~CCScale9Sprite() = imac 0x3e0e50, m1 0x35f424;

    static cocos2d::extension::CCScale9Sprite* create() = imac 0x3e2da0, m1 0x3612e4, ios inline;
    static cocos2d::extension::CCScale9Sprite* create(char const* pszname) = imac 0x3e28f0, m1 0x360d88, ios inline;
    static cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect) = imac 0x3e2720, m1 0x360b64;
    static cocos2d::extension::CCScale9Sprite* create(cocos2d::CCRect capInsets, char const* filename) = imac 0x3e2810, m1 0x360c84, ios inline;
    static cocos2d::extension::CCScale9Sprite* create(char const* filename, cocos2d::CCRect rect, cocos2d::CCRect capInsets) = imac 0x3e2620, m1 0x360a3c, ios inline;
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3e2ac0, m1 0x360f98, ios inline;
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = ios inline;
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const* spriteFrameName) = imac 0x3e2c80, m1 0x361194, ios inline;
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const* spriteFrameName, cocos2d::CCRect capInsets) = ios inline;

    virtual bool init() = imac 0x3e0f70, m1 0x35f4ec;
    virtual void setContentSize(const cocos2d::CCSize& size) = imac 0x3e20a0, m1 0x3604ec;
    virtual void visit() = imac 0x3e33e0, m1 0x361868;
    virtual unsigned char getOpacity() = imac 0x3e3730, m1 0x361b94;
    virtual void setOpacity(unsigned char) = imac 0x3e35b0, m1 0x361a2c;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x3e31b0, m1 0x3616bc;
    virtual const cocos2d::ccColor3B& getColor() = imac 0x3e3590, m1 0x361a1c;
    virtual void setColor(const cocos2d::ccColor3B& color) = imac 0x3e3410, m1 0x36189c;
    virtual void updateDisplayedColor(const cocos2d::ccColor3B& parentColor) = imac 0x3e3220, m1 0x361728;
    virtual void setOpacityModifyRGB(bool bValue) = imac 0x3e3030, m1 0x36154c;
    virtual bool isOpacityModifyRGB() = imac 0x3e3190, m1 0x3616ac;
    virtual cocos2d::CCSize getPreferredSize() = imac 0x3e2e30, m1 0x361398;
    virtual void setPreferredSize(cocos2d::CCSize) = imac 0x3e2e00, m1 0x361364;
    virtual cocos2d::CCRect getCapInsets() = imac 0x3e2ef0, m1 0x36143c;
    virtual void setCapInsets(cocos2d::CCRect) = imac 0x3e2e50, m1 0x3613a4;
    virtual float getInsetLeft() = imac 0x3e3320, m1 0x361828;
    virtual void setInsetLeft(float) = imac 0x3e3360, m1 0x361848;
    virtual float getInsetTop() = imac 0x3e3330, m1 0x361830;
    virtual void setInsetTop(float) = imac 0x3e3380, m1 0x361850;
    virtual float getInsetRight() = imac 0x3e3340, m1 0x361838;
    virtual void setInsetRight(float) = imac 0x3e33a0, m1 0x361858;
    virtual float getInsetBottom() = imac 0x3e3350, m1 0x361840;
    virtual void setInsetBottom(float) = imac 0x3e33c0, m1 0x361860;
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = imac 0x3e1030, m1 0x35f5b8;
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, cocos2d::CCRect) = imac 0x3e0fd0, m1 0x35f54c;
    virtual bool initWithFile(const char*, cocos2d::CCRect, cocos2d::CCRect) = imac 0x3e25b0, m1 0x3609c4;
    virtual bool initWithFile(const char*, cocos2d::CCRect) = imac 0x3e26c0, m1 0x360b04;
    virtual bool initWithFile(cocos2d::CCRect, const char*) = imac 0x3e27b0, m1 0x360c18;
    virtual bool initWithFile(const char*) = imac 0x3e28a0, m1 0x360d38;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = imac 0x3e2960, m1 0x360e10;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3e2a70, m1 0x360f48;
    virtual bool initWithSpriteFrameName(const char*, cocos2d::CCRect) = imac 0x3e2b30, m1 0x361020;
    virtual bool initWithSpriteFrameName(const char*) = imac 0x3e2c30, m1 0x361144;
    virtual bool updateWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = imac 0x3e10d0, m1 0x35f65c;
    virtual void setSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3e3290, m1 0x361794;

    cocos2d::extension::CCScale9Sprite* resizableSpriteWithCapInsets(cocos2d::CCRect) = imac 0x3e2cf0, m1 0x36121c, ios inline;
    void setBlendAdditive(bool) = imac 0x3e3750, m1 0x361ba4;
    void updateCapInset() = imac 0x3e2f10, m1 0x361448;
    void updatePositions() = imac 0x3e20c0, m1 0x360514;
}

[[link(win, android)]]
class cocos2d::extension::CCScrollView : cocos2d::CCLayer {
    CCScrollView() = imac 0x3e4010, m1 0x36248c;
    virtual ~CCScrollView() = imac 0x3e4170, m1 0x362578;

    static cocos2d::extension::CCScrollView* create() = imac 0x3e46c0, m1 0x362a34;
    static cocos2d::extension::CCScrollView* create(cocos2d::CCSize, cocos2d::CCNode*) = imac 0x3e44a0, m1 0x362824;

    virtual bool init() = imac 0x3e4750, m1 0x362ae4;
    virtual void registerWithTouchDispatcher() = imac 0x3e4790, m1 0x362b2c;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3e5d30, m1 0x363fd0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3e5fb0, m1 0x62b90;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3e6380, m1 0x364558;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3e6440, m1 0x364608;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x3e5600, m1 0x3638c0;
    virtual cocos2d::CCSize const& getContentSize() const = imac 0x3e55e0, m1 0x3638b0;
    virtual void visit() = imac 0x3e5bc0, m1 0x363e30;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x36990, m1 0x363a2c;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x3e5860, m1 0x363ae8;
    virtual void addChild(cocos2d::CCNode*) = imac 0x3e58a0, m1 0x363b3c;
    virtual void setTouchEnabled(bool) = imac 0x3e49e0, m1 0x362d4c;

    void afterDraw() = imac 0x3e5b60, m1 0x363dd4;
    void beforeDraw() = imac 0x3e58f0, m1 0x363ba0;
    void deaccelerateScrolling(float) = imac 0x3e5280, m1 0x363598;
    cocos2d::CCNode* getContainer() = imac 0x3e5020, m1 0x363348;
    cocos2d::CCPoint getContentOffset() = imac 0x3e48b0, m1 0x362c34;
    int getScriptHandler(int) = imac 0x3e6670, m1 0x364838;
    cocos2d::CCRect getViewRect() = imac 0x3e5a40, m1 0x363cc0;
    float getZoomScale() = imac 0x3e48e0, m1 0x362c68;
    bool initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*) = imac 0x3e4530, m1 0x3628d0;
    bool isNodeVisible(cocos2d::CCNode*) = imac 0x3e47e0, m1 0x362b74;
    cocos2d::CCPoint maxContainerOffset() = imac 0x3e4ce0;
    cocos2d::CCPoint minContainerOffset() = imac 0x3e4c20, m1 0x362f74;
    void pause(cocos2d::CCObject*) = imac 0x3e4900, m1 0x362c78;
    void performedAnimatedScroll(float) = imac 0x3e4d40, m1 0x363060;
    void registerScriptHandler(int, int) = imac 0x3e6500, m1 0x3646cc;
    void relocateContainer(bool) = imac 0x3e50e0, m1 0x363404;
    void resume(cocos2d::CCObject*) = imac 0x3e4970, m1 0x362ce0;
    void setContainer(cocos2d::CCNode*) = imac 0x3e5030, m1 0x363350;
    void setContentOffset(cocos2d::CCPoint, bool) = imac 0x3e4a20, m1 0x362d8c;
    void setContentOffsetInDuration(cocos2d::CCPoint, float) = imac 0x3e4bb0, m1 0x362efc;
    void setViewSize(cocos2d::CCSize) = imac 0x3e4720, m1 0x362ab4;
    void setZoomScale(float) = imac 0x3e4d80, m1 0x363098;
    void setZoomScale(float, bool) = imac 0x3e4f10, m1 0x363208;
    void setZoomScaleInDuration(float, float) = imac 0x3e4f90, m1 0x3632a8;
    void stoppedAnimatedScroll(cocos2d::CCNode*) = imac 0x3e4d00, m1 0x363014;
    void unregisterScriptHandler(int) = imac 0x3e4360, m1 0x36272c;
    void updateInset() = imac 0x3e5640;
}

[[link(win, android)]]
class cocos2d::extension::CCTableView : cocos2d::extension::CCScrollView, cocos2d::extension::CCScrollViewDelegate {
    CCTableView() = imac 0x419310, m1 0x3917a4;
    virtual ~CCTableView() = imac 0x4193c0;

    static cocos2d::extension::CCTableView* create(cocos2d::extension::CCTableViewDataSource*, cocos2d::CCSize) = imac 0x418e20, m1 0x391328;
    static cocos2d::extension::CCTableView* create(cocos2d::extension::CCTableViewDataSource*, cocos2d::CCSize, cocos2d::CCNode*) = imac 0x418e50, m1 0x391364;

    virtual void scrollViewDidScroll(cocos2d::extension::CCScrollView*) = imac 0x41a3a0, m1 0x3927ac;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x41a770, m1 0x392ac8;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x41a8f0, m1 0x29993c;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x41a670, m1 0x3929e8;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x41a9a0, m1 0x392ce8;

    int __indexFromOffset(cocos2d::CCPoint) = imac 0x41a300, m1 0x392700;
    cocos2d::CCPoint __offsetFromIndex(unsigned int) = imac 0x119a10, m1 0x392548;
    void _addCellIfNecessary(cocos2d::extension::CCTableViewCell*) = imac 0x419b90, m1 0x391f4c;
    unsigned int _indexFromOffset(cocos2d::CCPoint) = imac 0x41a1e0, m1 0x3925cc;
    void _moveCellOutOfSight(cocos2d::extension::CCTableViewCell*) = imac 0x4199e0, m1 0x391d60;
    cocos2d::CCPoint _offsetFromIndex(unsigned int) = imac 0x41a090, m1 0x392460;
    void _setIndexForCell(unsigned int, cocos2d::extension::CCTableViewCell*) = imac 0x419b20, m1 0x391ec4;
    void _updateCellPositions() = imac 0x419110, m1 0x39159c;
    void _updateContentSize() = imac 0x419220, m1 0x3916b0;
    cocos2d::extension::CCTableViewCell* cellAtIndex(unsigned int) = imac 0x419850, m1 0x391bc4;
    cocos2d::extension::CCTableViewCell* dequeueCell() = imac 0x41a030, m1 0x3923f4;
    cocos2d::extension::CCTableViewVerticalFillOrder getVerticalFillOrder() = imac 0x419840, m1 0x391bbc;
    bool initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*) = imac 0x419020, m1 0x3914a4;
    void insertCellAtIndex(unsigned int) = imac 0x419c80, m1 0x392050;
    void reloadData() = imac 0x4196b0, m1 0x391a30;
    void removeCellAtIndex(unsigned int) = imac 0x419e20, m1 0x3921f0;
    void setVerticalFillOrder(cocos2d::extension::CCTableViewVerticalFillOrder) = imac 0x419670, m1 0x3919e8;
    void unregisterAllScriptHandler() = imac 0x419520, m1 0x391910;
    void updateCellAtIndex(unsigned int) = imac 0x4198c0, m1 0x391c30;
}

[[link(win, android)]]
class cocos2d::extension::CCTableViewCell : cocos2d::CCNode, cocos2d::extension::CCSortableObject {
    virtual void setObjectID(unsigned int) = imac 0x425330, m1 0x39cac8;
    virtual unsigned int getObjectID() = imac 0x425350, m1 0x39cad8;

    unsigned int getIdx() = imac 0x425370, m1 0x39cae8;
    void reset() = imac 0x425320, m1 0x39cabc;
    void setIdx(unsigned int) = imac 0x425380, m1 0x39caf0;
}

[[link(win, android)]]
class cocos2d::ZipUtils {
    static std::string base64DecodeEnc(std::string const&, std::string) = imac 0x1e8c80, m1 0x19b234;
    static std::string base64EncodeEnc(std::string const&, std::string) = imac 0x1e8ec0, m1 0x19b4a8;
    static std::string base64URLDecode(std::string const&) = imac 0x1e9100;
    static std::string base64URLEncode(std::string const&) = imac 0x1e91e0;
    // static void ccDecodeEncodedPvr(unsigned int*, int);
    static int ccDeflateMemory(unsigned char* data, unsigned int size, unsigned char** out, int level);
    // static int ccInflateCCZFile(char const*, unsigned char**);
    // static int ccInflateGZipFile(char const*, unsigned char**);
    // static int ccInflateMemory(unsigned char* data, unsigned int size, unsigned char** out) = imac 0x1f3660, m1 0x1a91b0;
    // static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int*, unsigned int) = imac 0x1f45f0, m1 0x1aa1b8;
    // static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int) = imac 0x1f4720, m1 0x1aa2e0;
    // static void ccSetPvrEncryptionKey(unsigned int, unsigned int, unsigned int, unsigned int);
    // static void ccSetPvrEncryptionKeyPart(int, unsigned int);
    static std::string compressString(std::string const& data, bool encrypt, int encryptionKey, int level);
    static std::string decompressString(std::string const& data, bool encrypt, int encryptionKey) = imac 0x1e8a00, m1 0x19afac;
    static std::string decompressString2(unsigned char* data, bool encrypt, int size, int encryptionKey) = imac 0x1e86e0, m1 0x19ac8c;
    static std::string encryptDecrypt(std::string const& data, int encryptionKey) = inline;
    static std::string encryptDecryptWKey(std::string const&, std::string) = inline;
    static unsigned char hexToChar(std::string const&) = imac 0x1e9650, m1 0x19bc9c;
    static std::string urlDecode(std::string const&) = imac 0x1e92c0, m1 0x19b930;
}

[[link(win, android)]]
class cocos2d::ParticleStruct {

}

[[link(win, android)]]
class DS_Dictionary {
    DS_Dictionary() = imac 0x158cb0, m1 0x124b20;

    static void copyFile(char const*, char const*) = imac 0x15bc70, m1 0x127534;

    void addBoolValuesToMapForKey(std::map<std::string, bool>&, char const*, bool) = imac 0x160b90, m1 0x12bc54;
    void addBoolValuesToMapForKeySpecial(std::map<std::string, bool>&, char const*, bool) = imac 0x160830, m1 0x12b92c;
    void checkCompatibility() = imac 0x159e90, m1 0x125ba8;
    std::string cleanStringWhiteSpace(std::string const&) = imac 0x158ec0, m1 0x124cdc;
    cocos2d::CCObject* decodeObjectForKey(char const*, bool, int) = imac 0x161250, m1 0x12c268;
    std::vector<std::string> getAllKeys() = imac 0x15c760, m1 0x127e28;
    cocos2d::CCArray* getArrayForKey(char const*, bool) = imac 0x15fe80, m1 0x12b060;
    bool getBoolForKey(char const*) = imac 0x15ce40, m1 0x128468;
    cocos2d::CCDictionary* getDictForKey(char const*, bool) = imac 0x160d60, m1 0x12bdf8;
    float getFloatForKey(char const*) = imac 0x15cf40, m1 0x60fcc;
    unsigned int getIndexOfKey(char const*) = imac 0x15c8d0, m1 0x127f84;
    unsigned int getIndexOfKeyWithClosestAlphaNumericalMatch(char const*) = imac 0x15c990, m1 0x12803c;
    int getIntegerForKey(char const*) = imac 0x15cd00, m1 0x12835c;
    std::string getKey(unsigned int) = imac 0x15c640, m1 0x127d0c;
    unsigned int getNumKeys() = imac 0x15c5c0, m1 0x127ca0;
    cocos2d::CCObject* getObjectForKey(char const*) = imac 0x160000, m1 0x12b1c8;
    std::vector<cocos2d::CCRect> getRectArrayForKey(char const*) = m1 0x128ec0;
    cocos2d::CCRect getRectForKey(char const*) = m1 0x12893c;
    std::vector<std::string> getStringArrayForKey(char const*) = imac 0x15d590, m1 0x128b30;
    std::string getStringForKey(char const*) = m1 0x128680;
    std::vector<cocos2d::CCPoint> getVec2ArrayForKey(char const*) = m1 0x128d50;
    cocos2d::CCPoint getVec2ForKey(char const*) = m1 0x128808;
    bool loadRootSubDictFromCompressedFile(char const*, bool) = imac 0x159ee0;
    bool loadRootSubDictFromFile(char const*) = imac 0x159ee0, m1 0x125c08;
    bool loadRootSubDictFromString(std::string const&) = imac 0x15a5d0, m1 0x126248;
    bool rectFromString(std::string const&, cocos2d::CCRect&) = imac 0x159740, m1 0x1254c0;
    void removeAllKeys() = imac 0x15cc20, m1 0x1282b8;
    void removeKey(char const*) = imac 0x15cb30, m1 0x1281d4;
    void removeKey(unsigned int) = imac 0x15ca50, m1 0x1280f8;
    bool saveRootSubDictToCompressedFile(char const*, bool) = m1 0x50b398;
    bool saveRootSubDictToFile(char const*) = imac 0x15a7f0, m1 0x126418;
    std::string saveRootSubDictToString() = imac 0x15bc00, m1 0x1274bc;
    void setArrayForKey(char const*, cocos2d::CCArray*) = imac 0x15fb20, m1 0x12acf0;
    void setBoolForKey(char const*, bool) = imac 0x15e0e0, m1 0x12953c;
    void setBoolForKey(char const*, bool, bool) = imac 0x15e190, m1 0x1295e4;
    void setBoolMapForKey(char const*, std::map<std::string, bool>&) = imac 0x1605f0, m1 0x12b704;
    void setDictForKey(char const*, cocos2d::CCDictionary*) = imac 0x1603b0, m1 0x12b510;
    void setFloatForKey(char const*, float) = imac 0x15e310, m1 0x129724;
    void setFloatForKey(char const*, float, bool) = imac 0x15e320, m1 0x12972c;
    void setIntegerForKey(char const*, int) = imac 0x15de00, m1 0x1292d0;
    void setIntegerForKey(char const*, int, bool) = imac 0x15de10, m1 0x1292d8;
    void setObjectForKey(char const*, cocos2d::CCObject*) = imac 0x15fc70, m1 0x12ae2c;
    void setRectArrayForKey(char const*, std::vector<cocos2d::CCRect> const&) = m1 0x12a958;
    void setRectArrayForKey(char const*, std::vector<cocos2d::CCRect> const&, bool) = m1 0x12a960;
    void setRectForKey(char const*, cocos2d::CCRect const&) = imac 0x15ed00, m1 0x12a07c;
    void setRectForKey(char const*, cocos2d::CCRect const&, bool) = imac 0x15ed10, m1 0x12a084;
    void setStringArrayForKey(char const*, std::vector<std::string> const&) = imac 0x15f060, m1 0x12a418;
    void setStringArrayForKey(char const*, std::vector<std::string> const&, bool) = imac 0x15f070, m1 0x12a420;
    void setStringForKey(char const*, std::string const&) = imac 0x15e610, m1 0x1299a8;
    void setStringForKey(char const*, std::string const&, bool) = imac 0x15e620, m1 0x1299b0;
    void setSubDictForKey(char const*) = imac 0x15dae0, m1 0x129030, ios inline;
    void setSubDictForKey(char const*, bool, bool) = imac 0x15db90, m1 0x1290d4;
    void setVec2ArrayForKey(char const*, std::vector<cocos2d::CCPoint> const&) = m1 0x12a610;
    void setVec2ArrayForKey(char const*, std::vector<cocos2d::CCPoint> const&, bool) = m1 0x12a618;
    void setVec2ForKey(char const*, cocos2d::CCPoint const&) = imac 0x15e800, m1 0x129b34;
    void setVec2ForKey(char const*, cocos2d::CCPoint const&, bool) = imac 0x15e810, m1 0x129b3c;
    void split(std::string const&, char const*, std::vector<std::string>&) = imac 0x159050, m1 0x124e4c;
    bool splitWithForm(std::string const&, std::vector<std::string>&) = imac 0x159500, m1 0x125254;
    void stepBackToRootSubDict() = imac 0x15c440, m1 0x127b74;
    bool stepIntoSubDictWithKey(char const*) = imac 0x15c200, m1 0x1279b0;
    void stepOutOfSubDict() = imac 0x15c410, m1 0x127b58, ios inline;
    bool vec2FromString(std::string const&, cocos2d::CCPoint&) = imac 0x159d60, m1 0x125a4c;
}

[[link(win, android)]]
class ObjectDecoder : cocos2d::CCNode {
    // virtual ~ObjectDecoder();

    static ObjectDecoder* sharedDecoder() = imac 0x872cb0, m1 0x7691d0;

    virtual bool init() = imac 0x872d20, m1 0x769244;

    cocos2d::CCObject* getDecodedObject(int objectType, DS_Dictionary* data) = imac 0x872d30, m1 0x769248;
    [[since("5.9.0")]]
    ObjectDecoderDelegate* getDelegate() const = inline;
    [[since("5.9.0")]]
    void setDelegate(ObjectDecoderDelegate* delegate) = inline;

    ObjectDecoderDelegate* m_delegate;
}

[[link(android)]]
class ObjectDecoderDelegate {
    virtual cocos2d::CCObject* getDecodedObject(int objectType, DS_Dictionary* data) = inline;
}

[[link(win, android)]]
class pugi::xml_document : pugi::xml_node {
    xml_document() = imac 0x71de80, m1 0x62d6cc;
    ~xml_document() = imac 0x71dfc0, m1 0x62d81c;
}

[[link(android)]]
class pugi::xml_node {
    xml_node() = imac 0x717ff0, m1 0x627690;
    ~xml_node() = inline;
}
