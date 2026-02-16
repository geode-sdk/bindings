[[link(win, android)]]
class CCContentManager : cocos2d::CCObject {
    static CCContentManager* sharedManager() = imac 0x184200, m1 0x1491c0, ios 0x4126ac;

    cocos2d::CCDictionary* addDict(char const*, bool) = imac 0x184370, m1 0x149324, ios 0x412774;
    cocos2d::CCDictionary* addDictDS(char const*) = imac 0x184530, m1 0x1494d4;
    void clearCache() = imac 0x184730, m1 0x1496c0, ios 0x41284c;
    bool init() = imac 0x184280, m1 0x149240, ios inline;
}

[[link(win, android)]]
class cocos2d {
    static cocos2d::CCAffineTransform __CCAffineTransformMake(float, float, float, float, float, float) = imac 0x23ff70, m1 0x1e7948, ios 0x413230;
    static cocos2d::CCPoint __CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&) = imac 0x23ffa0, m1 0x1e7958, ios 0x413240;
    static cocos2d::CCSize __CCSizeApplyAffineTransform(cocos2d::CCSize const&, cocos2d::CCAffineTransform const&) = imac 0x240010, m1 0x1e79b4, ios inline;
    static char* cc_utf16_to_utf8(unsigned short const*, long, long*, long*);
    static gd::vector<unsigned short> cc_utf16_vec_from_utf16_str(unsigned short const*);
    static unsigned int cc_utf8_find_last_not_char(gd::vector<unsigned short>, unsigned short);
    static long cc_utf8_strlen(char const*, int);
    static unsigned short* cc_utf8_to_utf16(char const*, int*);
    static void cc_utf8_trim_ws(gd::vector<unsigned short>*);
    static int cc_wcslen(unsigned short const*);
    static cocos2d::CCAffineTransform CCAffineTransformConcat(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&) = imac 0x2403d0, m1 0x1e7cc0, ios 0x4134bc;
    static bool CCAffineTransformEqualToTransform(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&) = imac 0x240440, m1 0x1e7d18, ios inline;
    static cocos2d::CCAffineTransform CCAffineTransformInvert(cocos2d::CCAffineTransform const&) = imac 0x2404a0, m1 0x1e7d84, ios 0x413514;
    static cocos2d::CCAffineTransform CCAffineTransformMakeIdentity() = imac 0x240070, m1 0x1e7a04, ios 0x41329c;
    static cocos2d::CCAffineTransform CCAffineTransformRotate(cocos2d::CCAffineTransform const&, float) = imac 0x240380, m1 0x1e7c7c, ios 0x413478;
    static cocos2d::CCAffineTransform CCAffineTransformScale(cocos2d::CCAffineTransform const&, float, float) = imac 0x240360, m1 0x1e7c5c, ios inline;
    static cocos2d::CCAffineTransform CCAffineTransformTranslate(cocos2d::CCAffineTransform const&, float, float) = imac 0x240320, m1 0x1e7c30, ios 0x41344c;
    static cocos2d::CCPoint ccCardinalSplineAt(cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, float, float);
    static void ccDrawCardinalSpline(cocos2d::CCPointArray*, float, unsigned int);
    static void ccDrawCatmullRom(cocos2d::CCPointArray*, unsigned int);
    static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool) = imac 0x208dc0, m1 0x1b4f7c, ios 0x24c6fc;
    static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool, float, float) = imac 0x208970, m1 0x1b4c1c;
    static void ccDrawCircleSegment(cocos2d::CCPoint const&, float, float, float, unsigned int, bool, float, float);
    static void ccDrawColor4B(unsigned char, unsigned char, unsigned char, unsigned char) = imac 0x209d90, m1 0x1b5c20, ios 0x24c9f0;
    static void ccDrawColor4F(float, float, float, float);
    static void ccDrawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
    static void ccDrawFilledCircle(cocos2d::CCPoint const&, float, float, unsigned int) = imac 0x209230, m1 0x1b52e8, ios 0x24c894;
    static void ccDrawFree();
    static void ccDrawInit();
    static void ccDrawLine(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x2084a0, m1 0x1b4708, ios 0x24c314;
    static void ccDrawLines(cocos2d::CCPoint const*, unsigned int) = imac 0x208390, m1 0x1b45f4, ios 0x24c258;
    static void ccDrawPoint(cocos2d::CCPoint const&);
    static void ccDrawPoints(cocos2d::CCPoint const*, unsigned int);
    static void ccDrawPoly(cocos2d::CCPoint const*, unsigned int, bool);
    static void ccDrawQuadBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
    static void ccDrawRect(cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x2085d0, m1 0x1b4850, ios 0x24c3f4;
    static void ccDrawSolidPoly(cocos2d::CCPoint const*, unsigned int, cocos2d::ccColor4F) = imac 0x208770, m1 0x1b49ec, ios 0x24c4bc;
    static void ccDrawSolidRect(cocos2d::CCPoint origin, cocos2d::CCPoint destination, cocos2d::ccColor4F color) = imac 0x2086c0, m1 0x1b4918, ios inline;
    static void ccGLBindTexture2D(unsigned int) = imac 0x35b760, m1 0x2e6d0c, ios 0x18e82c;
    static void ccGLBindTexture2DN(unsigned int, unsigned int) = imac 0x35b7a0, m1 0x2e6d50, ios 0x18e838;
    static void ccGLBindVAO(unsigned int);
    static void ccGLBlendFunc(unsigned int, unsigned int) = imac 0x35b6b0, m1 0x2e6c54, ios 0x18e7b4;
    static void ccGLBlendResetToCache() = imac 0x35b710, m1 0x2e6cb8, ios inline;
    static void ccGLDeleteProgram(unsigned int);
    static void ccGLDeleteTexture(unsigned int) = imac 0x35b7e0, m1 0x2e6da8, ios 0x18e884;
    static void ccGLDeleteTextureN(unsigned int, unsigned int) = imac 0x35b820, m1 0x2e6de8, ios inline;
    static void ccGLEnable(cocos2d::ccGLServerState) = imac 0x35b880, m1 0x2e6e54, ios 0x18e8e0;
    static void ccGLEnableVertexAttribs(unsigned int) = imac 0x35b890, m1 0x2e6e58, ios 0x18e8e4;
    static void ccGLInvalidateStateCache();
    static void ccGLUseProgram(unsigned int) = imac 0x35b690, m1 0x2e6c38, ios 0x18e798;
    static void CCLog(char const*);
    static void CCLuaLog(char const*);
    static void CCMessageBox(char const*, char const*);
    static float ccpAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpAngleSigned(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static cocos2d::CCPoint ccpClamp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static cocos2d::CCPoint ccpCompMult(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpDistance(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x356100, m1 0x2e24a8, ios 0x1ae920;
    static cocos2d::CCPoint ccpForAngle(float);
    static cocos2d::CCPoint ccpFromSize(cocos2d::CCSize const& size) = imac 0x356300, m1 0x2e260c, ios inline;
    static bool ccpFuzzyEqual(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
    static cocos2d::CCPoint ccpIntersectPoint(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpLength(cocos2d::CCPoint const&);
    static cocos2d::CCPoint ccpLerp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float) = imac 0x3561e0, m1 0x2e253c, ios 0x1ae9ac;
    static bool ccpLineIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, float*, float*) = imac 0x3564e0, m1 0x2e276c, ios 0x1aea80;
    static cocos2d::CCPoint ccpNormalize(cocos2d::CCPoint const&) = imac 0x356140, m1 0x2e24d8, ios 0x1ae950;
    static cocos2d::CCPoint CCPointFromString(char const*) = imac 0x5675e0, m1 0x4b5f48, ios 0x1a6808;
    static void ccPointSize(float);
    static void CCProfilingBeginTimingBlock(char const*);
    static void CCProfilingEndTimingBlock(char const*);
    static void CCProfilingResetTimingBlock(char const*);
    static cocos2d::CCPoint ccpRotateByAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
    static bool ccpSegmentIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpToAngle(cocos2d::CCPoint const& point) = imac 0x3561c0, m1 0x2e2534, ios inline;
    static cocos2d::CCRect CCRectApplyAffineTransform(cocos2d::CCRect const&, cocos2d::CCAffineTransform const&) = imac 0x240090, m1 0x1e7a18, ios 0x4132b0;
    static cocos2d::CCRect CCRectFromString(char const*) = imac 0x5668a0, m1 0x4b5358, ios 0x1a6168;
    static void ccSetProjectionMatrixDirty();
    static cocos2d::CCSize CCSizeFromString(char const*) = imac 0x5676e0, m1 0x4b6074, ios 0x1a68dc;
    static bool ccVertexLineIntersect(float, float, float, float, float, float, float, float, float*);
    static void ccVertexLineToPolygon(cocos2d::CCPoint*, float, cocos2d::ccVertex2F*, unsigned int, unsigned int);
    static float clampf(float, float, float) = imac 0x356250, m1 0x2e25a0, ios 0x1aea10;
    static char const* cocos2dVersion() = imac 0x355670, m1 0x2e1c3c, ios 0x7c16c;
    static cocos2d::CCBMFontConfiguration* FNTConfigLoadFile(char const*) = imac 0x5d4c40, m1 0x500b70, ios 0x2f8d54;
    static void FNTConfigRemoveCache() = ios 0x2f8ee4;
    static bool isspace_unicode(unsigned short);
    // static cocos2d::CCPoint ccpCompOp(cocos2d::CCPoint const&, float (float)*);
}

[[link(win, android)]]
class cocos2d::CCAccelAmplitude : cocos2d::CCActionInterval {

    virtual ~CCAccelAmplitude() = imac 0x20a8b0, m1 0x1b6720;

    static cocos2d::CCAccelAmplitude* create(cocos2d::CCAction*, float) = imac 0x20a7b0, m1 0x1b6614;

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x20a970, m1 0x1b67f8;
    virtual void update(float) = imac 0x20a9a0, m1 0x1b682c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x20a9f0, m1 0x1b6878;

    bool initWithAction(cocos2d::CCAction*, float) = imac 0x20a870, m1 0x1b66dc;
}

[[link(win, android)]]
class cocos2d::CCAccelDeccelAmplitude : cocos2d::CCActionInterval {

    virtual ~CCAccelDeccelAmplitude() = imac 0x20a590, m1 0x1b6408;

    static cocos2d::CCAccelDeccelAmplitude* create(cocos2d::CCAction*, float) = imac 0x20a490, m1 0x1b62fc;

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x20a650, m1 0x1b64c0;
    virtual void update(float) = imac 0x20a680, m1 0x1b64f4;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x20a6e0, m1 0x1b6538;

    bool initWithAction(cocos2d::CCAction*, float) = imac 0x20a550, m1 0x1b63c4;
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
    CCAction() = imac 0x5f41c0, m1 0x51d67c, ios 0x2656a8;
    virtual ~CCAction() = imac 0x5f4240, m1 0x51d6dc, ios 0x2656d8;

    static cocos2d::CCAction* create() = imac 0x5f42b0, m1 0x51d71c, ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5f4330, m1 0x51d7ac, ios 0x265718;
    virtual void update(float) = imac 0x5f4430, m1 0x51d894, ios 0x2657e4;
    //virtual void setTag(int) = m1 0x1b6e5c, imac 0x205680;
    virtual bool isDone() = imac 0x5f4410, m1 0x51d888, ios 0x2657d8;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x5f43f0, m1 0x51d878, ios 0x2657c8;
    virtual void stop() = imac 0x5f4400, m1 0x51d880, ios 0x2657d0;
    virtual void step(float) = imac 0x5f4420, m1 0x51d890, ios 0x2657e0;

    char const* description() = imac 0x5f4310, m1 0x51d780, ios inline;

    cocos2d::CCNode* m_pOriginalTarget;
    cocos2d::CCNode* m_pTarget;
    int m_nTag;
    float m_fSpeedMod;
}

[[link(win, android)]]
class cocos2d::CCActionCamera : cocos2d::CCActionInterval {
    // CCActionCamera(cocos2d::CCActionCamera const&);
    // CCActionCamera();

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x367810, m1 0x2f1fdc;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x367880, m1 0x2f2048;
}

[[link(win, android)]]
class cocos2d::CCActionEase : cocos2d::CCActionInterval {
    // CCActionEase(cocos2d::CCActionEase const&);
    // CCActionEase();
    virtual ~CCActionEase() = imac 0x5144b0, m1 0x46ae68, ios 0x26be54;

    static cocos2d::CCActionEase* create(cocos2d::CCActionInterval*) = imac 0x5142e0, m1 0x46ac8c, ios 0x26bca0;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5143b0, m1 0x46ad74, ios 0x26bd78;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x514570, m1 0x46af20, ios 0x26bea8;
    virtual void stop() = imac 0x5145a0, m1 0x46af50, ios 0x26bed8;
    virtual void update(float) = imac 0x5145d0, m1 0x46af80, ios 0x26bf08;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5145f0, m1 0x46af90, ios 0x26bf18;
    virtual cocos2d::CCActionInterval* getInnerAction() = imac 0x514610, m1 0x46afb0, ios 0x26bf38;

    bool initWithAction(cocos2d::CCActionInterval* pAction) = imac 0x514380, m1 0x46ad34, ios 0x26bd30;
}

[[link(win, android)]]
class cocos2d::CCActionInstant : cocos2d::CCFiniteTimeAction {
    // CCActionInstant(cocos2d::CCActionInstant const&);
    CCActionInstant() = imac 0x7ac3a0, m1 0x6b2b14, ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7ac400, m1 0x6b2b5c, ios 0x1ad944;
    virtual void update(float) = imac 0x7ac4e0, m1 0x6b2c34, ios 0x1ada04;
    virtual bool isDone() = imac 0x7ac4b0, m1 0x6b2c1c, ios 0x1ad9ec;
    virtual void step(float) = imac 0x7ac4c0, m1 0x6b2c24, ios 0x1ad9f4;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x7ac4f0, m1 0x6b2c38, ios 0x1ada08;
}

[[link(win, android)]]
class cocos2d::CCActionInterval : cocos2d::CCFiniteTimeAction {
    static cocos2d::CCActionInterval* create(float) = imac 0x3b5360, m1 0x3381b4, ios inline;

    // CCActionInterval(cocos2d::CCActionInterval const&);
    // CCActionInterval();
    // ~CCActionInterval() = ios 0x264838;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b5440, m1 0x338264, ios 0x18a20c;
    virtual bool isDone() = imac 0x3b5540, m1 0x338348, ios 0x18a2e4;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b5600, m1 0x3383dc, ios 0x18a36c;
    virtual void step(float) = imac 0x3b5560, m1 0x338358, ios 0x18a2f4;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b5620, m1 0x338408, ios 0x18a398;

    float getAmplitudeRate() = imac 0x3b55f0, m1 0x3383d4, ios inline;
    bool initWithDuration(float d) = imac 0x3b5400, m1 0x338240, ios 0x18a1e8;
    // float getElapsed();
    // bool getM_bFirstTick() const;
    void setAmplitudeRate(float) = imac 0x3b55e0, m1 0x3383d0, ios inline;

    float m_elapsed;
    bool m_bFirstTick;
}

[[link(win, android)]]
class cocos2d::CCActionManager : cocos2d::CCObject {
    CCActionManager() = imac 0x233710, m1 0x1dd1a4, ios 0x2f4128;
    virtual ~CCActionManager() = imac 0x233740, m1 0x1dd1cc, ios 0x2f4150;

    virtual void update(float) = imac 0x234810, m1 0x1de410, ios 0x2f4f1c;

    void actionAllocWithHashElement(cocos2d::_hashElement*) = imac 0x233980, m1 0x1dd41c, ios 0x2f42d0;
    void addAction(cocos2d::CCAction*, cocos2d::CCNode*, bool) = imac 0x233d10, m1 0x1dd834, ios 0x2f45c0;
    void deleteHashElement(cocos2d::_hashElement*) = imac 0x233880, m1 0x1dd2ec, ios 0x2f41b4;
    cocos2d::CCAction* getActionByTag(unsigned int, cocos2d::CCObject*) = imac 0x234600, m1 0x1de1d0, ios 0x2f4df0;
    unsigned int numberOfRunningActionsInTarget(cocos2d::CCObject* target) = imac 0x234720, m1 0x1de304, ios inline;
    cocos2d::CCSet* pauseAllRunningActions() = imac 0x233c10, m1 0x1dd718, ios inline;
    void pauseTarget(cocos2d::CCObject*) = imac 0x233a50, m1 0x1dd524, ios 0x2f43cc;
    void removeAction(cocos2d::CCAction*) = imac 0x2342c0, m1 0x1dde28, ios 0x2f4b7c;
    void removeActionAtIndex(unsigned int, cocos2d::_hashElement*) = imac 0x2339c0, m1 0x1dd45c, ios 0x2f4310;
    void removeActionByTag(unsigned int, cocos2d::CCObject*) = imac 0x234450, m1 0x1ddfe0, ios 0x2f4cb0;
    void removeAllActions() = imac 0x233790, m1 0x1dd218, ios inline;
    void removeAllActionsFromTarget(cocos2d::CCObject*) = imac 0x234150, m1 0x1ddca4, ios 0x2f49f8;
    void resumeTarget(cocos2d::CCObject*) = imac 0x233b30, m1 0x1dd620, ios 0x2f44c8;
    void resumeTargets(cocos2d::CCSet*) = imac 0x233c80, m1 0x1dd7a0, ios inline;
}

[[link(win, android)]]
class cocos2d::CCActionTween {
    static cocos2d::CCActionTween* create(float, char const*, float, float) = imac 0x7a5490, m1 0x6ac4dc, ios 0x3a8d8c;
    static cocos2d::CCActionTween* create(float, int, float, float) = imac 0x7a5390, m1 0x6ac3f4, ios 0x3a8d60;

    virtual void update(float) = imac 0x7a5640, m1 0x6ac654, ios 0x3a8e98;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x7a55f0, m1 0x6ac618, ios 0x3a8e6c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x7a56b0, m1 0x6ac6a8, ios 0x3a8ee0;

    bool initWithDuration(float, char const*, float, float) = imac 0x7a5590, m1 0x6ac5bc, ios inline;
    // CCActionTween(cocos2d::CCActionTween const&);
    // CCActionTween();
    void updateTargetValue(float) = imac 0x7a5620, m1 0x6ac644, ios inline;
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
    CCAnimate() = imac 0x3bc6a0, m1 0x33e694, ios 0x18d5b0;
    virtual ~CCAnimate() = imac 0x3bc720, m1 0x33e700, ios 0x18d61c;

    static cocos2d::CCAnimate* create(cocos2d::CCAnimation*) = imac 0x3bc170, m1 0x33e250, ios 0x18d26c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3bc580, m1 0x33e58c, ios 0x18d4f8;
    virtual void update(float) = imac 0x3bc880, m1 0x33e83c, ios 0x18d754;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3bc7c0, m1 0x33e784, ios 0x18d6a0;
    virtual void stop() = imac 0x3bc830, m1 0x33e7f0, ios 0x18d70c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3bcad0, m1 0x33ea50, ios 0x18d960;

    bool initWithAnimation(cocos2d::CCAnimation*) = imac 0x3bc2b0, m1 0x33e360, ios 0x18d2c4;

    gd::vector<float>* m_pSplitTimes;
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
    CCAnimation();
    virtual ~CCAnimation();

    static cocos2d::CCAnimation* create() = imac 0x2967a0, m1 0x236a50;
    static cocos2d::CCAnimation* create(cocos2d::CCArray*, float, unsigned int) = imac 0x296ae0, m1 0x236d54;
    static cocos2d::CCAnimation* createWithSpriteFrames(cocos2d::CCArray*, float) = imac 0x2968e0, m1 0x236b7c, ios 0x1a417c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x296f40, m1 0x23718c, ios 0x1a4498;
    virtual float getDuration() = imac 0x296f30, m1 0x237180, ios 0x1a448c;

    void addSpriteFrame(cocos2d::CCSpriteFrame*);
    void addSpriteFrameWithFileName(char const*);
    void addSpriteFrameWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
    bool init() = imac 0x296890, m1 0x236b20;
    bool initWithAnimationFrames(cocos2d::CCArray*, float, unsigned int) = imac 0x296bf0, m1 0x236e5c;
    bool initWithSpriteFrames(cocos2d::CCArray*, float) = imac 0x296970, m1 0x236c04;
}

[[link(win, android)]]
class cocos2d::CCAnimationCache : cocos2d::CCObject {
    CCAnimationCache() = imac 0x46d180, m1 0x3d4da8, ios inline;
    virtual ~CCAnimationCache() = imac 0x46d1b0, m1 0x3d4dcc, ios 0x1d4218;

    static void purgeSharedAnimationCache() = imac 0x46d150, m1 0x3d4d7c, ios 0x1d41ec;
    static cocos2d::CCAnimationCache* sharedAnimationCache() = imac 0x46d040, m1 0x3d4c6c, ios 0x1d413c;

    void addAnimation(cocos2d::CCAnimation*, const char*) = imac 0x46d270, m1 0x3d4e84, ios 0x1d426c;
    void addAnimationsWithDictionary(cocos2d::CCDictionary*, const char*) = imac 0x46dbf0, m1 0x3d5820;
    void addAnimationsWithFile(const char*) = imac 0x46de10, m1 0x3d5a80;
    cocos2d::CCAnimation* animationByName(const char*) = imac 0x46d440, m1 0x3d5080, ios 0x1d42dc;
    bool init() = imac 0x46d110, m1 0x3d4d34, ios 0x1d41a4;
    void parseVersion1(cocos2d::CCDictionary*) = imac 0x46d520, m1 0x3d5184;
    void parseVersion2(cocos2d::CCDictionary*) = imac 0x46d7c0, m1 0x3d53e8;
    void removeAnimationByName(const char*) = imac 0x46d360, m1 0x3d4f84, ios inline;
}

[[link(win, android)]]
class cocos2d::CCAnimationFrame : cocos2d::CCObject {
    CCAnimationFrame();
    virtual ~CCAnimationFrame();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x296640, m1 0x236900, ios 0x1a407c;

    bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, float, cocos2d::CCDictionary*);
}

[[link(win, android)]]
class cocos2d::CCApplication : cocos2d::CCApplicationProtocol {
    CCApplication();
    virtual ~CCApplication() = imac 0x329420, m1 0x2b6610, ios 0x1abea4;

    static cocos2d::CCApplication* sharedApplication() = imac 0x329520, m1 0x2b66ec, ios 0x1abff0;

    virtual int run();
    virtual void setAnimationInterval(double) = imac 0x3294d0, m1 0x2b66b8, ios 0x1abfc4;
    virtual cocos2d::ccLanguageType getCurrentLanguage() = imac 0x329530, m1 0x2b66f8, ios 0x1ac00c;
    virtual cocos2d::TargetPlatform getTargetPlatform() = imac 0x329510, m1 0x2b66e4, ios 0x1ac1d0;
    virtual void openURL(char const*) = imac 0x32a230, m1 0x2b6fb4, ios 0x1abf38;

    [[missing(android, ios)]]
    gd::string const& getResourceRootPath();
    [[missing(android, ios)]]
    gd::string const& getStartupScriptFilename();
    [[missing(android, mac, ios)]]
    int getTimeElapsed();
    [[missing(android, mac, ios)]]
    void leftMouseDown();
    [[missing(android, mac, ios)]]
    void leftMouseUp();
    [[missing(android, mac, ios)]]
    void logTimeElapsed(gd::string);
    [[missing(android, mac, ios)]]
    void moveMouse(int relX, int relY);
    [[missing(android, mac, ios)]]
    void resetForceTimer();
    [[missing(android, ios)]]
    void setResourceRootPath(gd::string const&);
    [[missing(android, ios)]]
    void setStartupScriptFilename(gd::string const&);
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

    PAD = win 0xc8, imac 0x30, m1 0x30;
}

[[link(win, android)]]
class cocos2d::CCArray : cocos2d::CCObject {
    // static cocos2d::CCArray* create(cocos2d::CCObject*, ...);
    // static cocos2d::CCArray* create() = ios 0x249214;
    // static cocos2d::CCArray* createWithArray(cocos2d::CCArray*);
    // static cocos2d::CCArray* createWithCapacity(unsigned int);

    static cocos2d::CCArray* createWithContentsOfFile(char const*);
    static cocos2d::CCArray* createWithContentsOfFileThreadSafe(char const*);

    // bool initWithObjects(cocos2d::CCObject*, ...);
    // CCArray(cocos2d::CCArray const&);
    // CCArray(unsigned int);
    // CCArray();
    // void addObject(cocos2d::CCObject*) = ios 0x249394;
    void addObjectNew(cocos2d::CCObject*) = imac 0x7201e0, m1 0x633060, ios inline;
    // void addObjectsFromArray(cocos2d::CCArray*);
    unsigned int capacity() const;
    // bool containsObject(cocos2d::CCObject*) const;
    // unsigned int count() const;
    void exchangeObject(cocos2d::CCObject*, cocos2d::CCObject*);
    void exchangeObjectAtIndex(unsigned int, unsigned int);
    // void fastRemoveObject(cocos2d::CCObject*);
    // void fastRemoveObjectAtIndex(unsigned int) = imac 0x709f10, m1 0x629530;
    void fastRemoveObjectAtIndexChild(unsigned int) = imac 0x7202a0, m1 0x6330c0, ios inline;
    void fastRemoveObjectAtIndexNew(unsigned int) = imac 0x720290, m1 0x6330b8, ios inline;
    unsigned int indexOfObject(cocos2d::CCObject*) const;
    // static cocos2d::CCArray* createWithObject(cocos2d::CCObject*) = ios 0x249270;
    // bool init() = imac 0x7094e0;
    bool initWithArray(cocos2d::CCArray*);
    // bool initWithCapacity(unsigned int);
    bool initWithObject(cocos2d::CCObject*);
    // void insertObject(cocos2d::CCObject*, unsigned int) = ios 0x2494f4;
    bool isEqualToArray(cocos2d::CCArray*);
    // cocos2d::CCObject* lastObject();
    // cocos2d::CCObject* objectAtIndex(unsigned int) = m1 0x6293a0, imac 0x709d40;
    cocos2d::CCObject* randomObject();
    void recreateNewIndexes() = imac 0x7201d0, m1 0x633058, ios inline;
    void reduceMemoryFootprint();
    // void removeAllObjects() = ios 0x249528;
    // void removeLastObject(bool);
    void removeObject(cocos2d::CCObject*, bool);
    // void removeObjectAtIndex(unsigned int, bool);
    void removeObjectAtIndexChild(unsigned int, bool) = imac 0x720240, m1 0x633094, ios 0x24a454;
    void removeObjectsInArray(cocos2d::CCArray*);
    void replaceObjectAtIndex(unsigned int, cocos2d::CCObject*, bool);
    void reverseObjects();
    cocos2d::CCString* stringAtIndex(unsigned int) = imac 0x7200a0, m1 0x632f24, ios 0x24a378;

    // virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios 0x249634, imac 0x71ff10, m1 0x632d6c;
    // virtual void acceptVisitor(cocos2d::CCDataVisitor&) = ios 0x2496f8, imac 0x720010, m1 0x632e6c;
    cocos2d::ccArray* data;
}

[[link(win, android)]]
class cocos2d::CCAtlasNode : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    CCAtlasNode() = imac 0x32a810, m1 0x2b753c;
    virtual ~CCAtlasNode() = imac 0x32a8f0, m1 0x2b75cc;

    static cocos2d::CCAtlasNode* create(char const*, unsigned int, unsigned int, unsigned int) = imac 0x32aa10, m1 0x2b76b4;

    virtual cocos2d::CCTextureAtlas* getTextureAtlas() = imac 0x32b350, m1 0x2b7fcc;
    virtual void setTextureAtlas(cocos2d::CCTextureAtlas*) = imac 0x32b310, m1 0x2b7f90;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x32b1d0, m1 0x2b7e74;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x32b1f0, m1 0x2b7e88;
    virtual unsigned int getQuadsToDraw() = imac 0x32b360, m1 0x2b7fd4;
    virtual void setQuadsToDraw(unsigned int) = imac 0x32b370, m1 0x2b7fdc;
    virtual void updateAtlasValues() = imac 0x32ae10, m1 0x2b7aa4;
    virtual void draw() = imac 0x32ae20, m1 0x2b7aa8;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x32b2e0, m1 0x2b7f70;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x32b210, m1 0x2b7e9c;
    virtual bool isOpacityModifyRGB() = imac 0x32b1a0, m1 0x2b7e5c;
    virtual void setOpacityModifyRGB(bool) = imac 0x32b0f0, m1 0x2b7d94;
    virtual cocos2d::ccColor3B const& getColor() = imac 0x32af10, m1 0x2b7bb4;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x32af50, m1 0x2b7be8;
    virtual void setOpacity(unsigned char) = imac 0x32b060, m1 0x2b7cfc;

    void calculateMaxItems() = imac 0x32ad80, m1 0x2b7a1c;
    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int, unsigned int, unsigned int) = imac 0x32ab60, m1 0x2b7808;
    bool initWithTileFile(char const*, unsigned int, unsigned int, unsigned int) = imac 0x32ab00, m1 0x2b77a8;
    void setIgnoreContentScaleFactor(bool) = imac 0x32b1c0, m1 0x2b7e6c;
    void updateBlendFunc() = imac 0x32ad10, m1 0x2b79a4;
    void updateOpacityModifyRGB() = imac 0x32ad50, m1 0x2b79e8;
}

[[link(win, android)]]
class cocos2d::CCAutoreleasePool : cocos2d::CCObject {
    CCAutoreleasePool() = imac 0x3f6690, m1 0x36f4d8, ios 0x1afe18;
    virtual ~CCAutoreleasePool() = imac 0x3f6710, m1 0x36f55c, ios inline;

    void addObject(cocos2d::CCObject*) = imac 0x3f67d0, m1 0x36f634, ios inline;
    void clear() = imac 0x3f6850, m1 0x36f6bc, ios 0x1aff1c;
    void removeObject(cocos2d::CCObject*) = imac 0x3f6800, m1 0x36f668, ios inline;
}

[[link(win, android)]]
class cocos2d::CCBezierBy : cocos2d::CCActionInterval {
    static cocos2d::CCBezierBy* create(float, cocos2d::ccBezierConfig const&) = imac 0x3b97b0, m1 0x33bda0, ios 0x18bcc4;

    // CCBezierBy(cocos2d::CCBezierBy const&);
    // CCBezierBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b99b0, m1 0x33bf54, ios 0x18be40;
    virtual void update(float) = imac 0x3b9b30, m1 0x33c0a4, ios 0x18bf50;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b9960, m1 0x33bf00, ios 0x18bdec;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b9cd0, m1 0x33c1fc, ios 0x18c0a8;

    bool initWithDuration(float, cocos2d::ccBezierConfig const&) = imac 0x3b98f0, m1 0x33bea0, ios 0x18bd8c;
}

[[link(win, android)]]
class cocos2d::CCBezierTo : cocos2d::CCBezierBy {
    static cocos2d::CCBezierTo* create(float, cocos2d::ccBezierConfig const&) = imac 0x3b9da0, m1 0x33c2b0, ios 0x18c15c;

    // CCBezierTo(cocos2d::CCBezierTo const&);
    // CCBezierTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b9ef0, m1 0x33c3c0, ios 0x18c23c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3ba020, m1 0x33c4c0, ios 0x18c304;

    bool initWithDuration(float, cocos2d::ccBezierConfig const&) = imac 0x3b9e80, m1 0x33c360, ios 0x18c1dc;
}

[[link(win, android)]]
class cocos2d::CCBlink : cocos2d::CCActionInterval {
    static cocos2d::CCBlink* create(float, unsigned int) = imac 0x3ba8b0, m1 0x33cc04, ios 0x18c684;

    // CCBlink(cocos2d::CCBlink const&);
    // CCBlink();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3baa10, m1 0x33cd3c, ios 0x18c794;
    virtual void update(float) = imac 0x3bab20, m1 0x33ce2c, ios 0x18c880;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3ba9d0, m1 0x33ccf8, ios 0x18c750;
    virtual void stop() = imac 0x3ba9a0, m1 0x33ccc4, ios 0x18c71c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3baba0, m1 0x33ceb4, ios 0x18c908;

    bool initWithDuration(float, unsigned int) = imac 0x3ba960, m1 0x33cc9c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCBMFontConfiguration : cocos2d::CCObject {
    // CCBMFontConfiguration(cocos2d::CCBMFontConfiguration const&);
    CCBMFontConfiguration() = imac 0x5d5c70, m1 0x501d20, ios inline;
    virtual ~CCBMFontConfiguration() = imac 0x5d5cc0, m1 0x501d58, ios 0x2f9998;

    static cocos2d::CCBMFontConfiguration* create(char const*) = imac 0x5d4e70, m1 0x500d94, ios 0x2f8e48;

    char const* description() = imac 0x5d6020, m1 0x502090, ios inline;
    bool initWithFNTfile(char const*) = imac 0x5d4f90, m1 0x500eac, ios inline;
    void parseCharacterDefinition(gd::string, cocos2d::_BMFontDef*) = imac 0x5d6bd0, m1 0x502bd0, ios 0x2fa2b0;
    void parseCommonArguments(gd::string) = imac 0x5d6270, m1 0x5022d4, ios 0x2f9d98;
    gd::set<unsigned int>* parseConfigFile(char const*) = imac 0x5d4fc0, m1 0x500ee0, ios 0x2f8f1c;
    void parseImageFileName(gd::string, char const*) = imac 0x5d6960, m1 0x502958, ios 0x2fa168;
    void parseInfoArguments(gd::string) = imac 0x5d6080, m1 0x5020ec, ios 0x2f9c78;
    void parseKerningEntry(gd::string) = imac 0x5d7ac0, m1 0x5038ac, ios 0x2faa30;
    void purgeFontDefDictionary() = imac 0x5d5d50, m1 0x501df8, ios 0x2f9a20;
    void purgeKerningDictionary() = imac 0x5d5eb0, m1 0x501f40, ios 0x2f9b48;
}

[[link(win, android)]]
class cocos2d::CCCallFunc : cocos2d::CCActionInstant {
    // CCCallFunc(cocos2d::CCCallFunc const&);
    // CCCallFunc();
    virtual ~CCCallFunc() = imac 0x7ad150, m1 0x6b38b8, ios 0x1add30;

    static cocos2d::CCCallFunc* create(cocos2d::CCObject*, cocos2d::SEL_CallFunc) = imac 0x7ad000, m1 0x6b3778, ios 0x1adc4c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7ad250, m1 0x6b39d0, ios 0x1adda4;
    virtual void update(float) = imac 0x7ad350, m1 0x6b3ad4, ios 0x1adea4;
    virtual bool initWithTarget(cocos2d::CCObject*) = imac 0x7ad110, m1 0x6b3878, ios 0x1adcf0;
    virtual void execute() = imac 0x7ad360, m1 0x6b3ae0, ios 0x1adeb0;
}

[[link(win, android)]]
class cocos2d::CCCallFuncN : cocos2d::CCCallFunc, cocos2d::TypeInfo {
    static cocos2d::CCCallFuncN* create(cocos2d::CCObject* pSelectorTarget, cocos2d::SEL_CallFuncN selector) = imac 0x7ad420, m1 0x6b3bc4, ios inline;

    virtual bool initWithTarget(cocos2d::CCObject* pSelectorTarget, cocos2d::SEL_CallFuncN selector) = imac 0x7ad550, m1 0x6b3cd4, ios inline;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* zone) = imac 0x7ad5a0, m1 0x6b3d28, ios inline;
    virtual void execute() = imac 0x7ad3c0, m1 0x6b3b50, ios inline;
}

[[link(win, android)]]
class cocos2d::CCCallFuncND : cocos2d::CCCallFuncN {
    static cocos2d::CCCallFuncND* create(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*) = imac 0x7ad690, m1 0x6b3e08, ios inline;

    // CCCallFuncND(cocos2d::CCCallFuncND const&);
    // CCCallFuncND();
    virtual bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*) = imac 0x7ad780, m1 0x6b3ed0, ios inline;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7ad7f0, m1 0x6b3f34, ios inline;
    virtual void execute() = imac 0x7ad910, m1 0x6b4030, ios inline;
}

[[link(win, android)]]
class cocos2d::CCCallFuncO : cocos2d::CCCallFunc, cocos2d::TypeInfo {
    // cocos2d::CCObject* getObject();
    // void setObject(cocos2d::CCObject*);
    // CCCallFuncO(cocos2d::CCCallFuncO const&);
    CCCallFuncO() = imac 0x7ad9b0, m1 0x6b40a0, ios inline;
    virtual ~CCCallFuncO() = imac 0x7ada10, m1 0x6b40d8, ios 0x1adf20;

    static cocos2d::CCCallFuncO* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*) = imac 0x7adb00, m1 0x6b41a4, ios 0x1adfb0;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7adc50, m1 0x6b42d0, ios 0x1ae0bc;
    virtual void execute() = imac 0x7adac0, m1 0x6b4170, ios 0x1adf7c;
    virtual bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*) = imac 0x7adbe0, m1 0x6b4260, ios 0x1ae070;
}

[[link(win, android)]]
class cocos2d::CCCamera : cocos2d::CCObject {
    // private CCCamera(cocos2d::CCCamera const&);
    CCCamera();
    virtual ~CCCamera();

    static float getZEye();

    char const* description();
    void getCenterXYZ(float*, float*, float*);
    void getEyeXYZ(float*, float*, float*);
    void getUpXYZ(float*, float*, float*);
    void init();
    void locate();
    void restore();
    void setCenterXYZ(float, float, float);
    void setEyeXYZ(float, float, float);
    void setUpXYZ(float, float, float);
}

[[link(win, android)]]
class cocos2d::CCCardinalSplineBy : cocos2d::CCCardinalSplineTo {
    CCCardinalSplineBy() = imac 0x2d2140, m1 0x26d320;

    static cocos2d::CCCardinalSplineBy* create(float, cocos2d::CCPointArray*, float) = imac 0x2d2020, m1 0x26d1f4;

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x2d25d0, m1 0x26d754;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x2d2290, m1 0x26d490;
    virtual void updatePosition(cocos2d::CCPoint&) = imac 0x2d2240, m1 0x26d438;
}

[[link(win, android)]]
class cocos2d::CCCardinalSplineTo : cocos2d::CCActionInterval {
    CCCardinalSplineTo() = imac 0x2d1940, m1 0x26cbac;
    virtual ~CCCardinalSplineTo() = imac 0x2d1a00, m1 0x26cc68;

    static cocos2d::CCCardinalSplineTo* create(float, cocos2d::CCPointArray*, float) = imac 0x2d1850, m1 0x26cab4;

    virtual cocos2d::CCCardinalSplineTo* copyWithZone(cocos2d::CCZone*) = imac 0x2d1ba0, m1 0x26cdfc;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x2d1b30, m1 0x26cd88;
    virtual void update(float) = imac 0x2d1cd0, m1 0x26cf18;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x2d1ff0, m1 0x26d1c8;
    virtual void updatePosition(cocos2d::CCPoint&) = imac 0x2d1fc0, m1 0x26d190;

    bool initWithDuration(float, cocos2d::CCPointArray*, float) = imac 0x2d19a0, m1 0x26cc08;
}

[[link(win, android)]]
class cocos2d::CCCatmullRomBy : cocos2d::CCCardinalSplineBy {
    static cocos2d::CCCatmullRomBy* create(float, cocos2d::CCPointArray*) = imac 0x2d27c0, m1 0x26d958;

    bool initWithDuration(float, cocos2d::CCPointArray*) = imac 0x2d2910, m1 0x26daac;
}

[[link(win, android)]]
class cocos2d::CCCatmullRomTo : cocos2d::CCCardinalSplineTo {
    static cocos2d::CCCatmullRomTo* create(float, cocos2d::CCPointArray*) = imac 0x2d2660, m1 0x26d7e4;

    bool initWithDuration(float, cocos2d::CCPointArray*) = imac 0x2d2770, m1 0x26d900;
}

[[link(win, android)]]
class cocos2d::CCClippingNode : cocos2d::CCNode {
    protected CCClippingNode() = imac 0x71efd0, m1 0x6320b0;
    virtual ~CCClippingNode() = imac 0x71f050, m1 0x632108;

    static cocos2d::CCClippingNode* create() = imac 0x71f120, m1 0x6321c0;
    static cocos2d::CCClippingNode* create(cocos2d::CCNode* stencil) = imac 0x71f1b0, m1 0x632248;

    virtual bool init() = imac 0x71f260, m1 0x6322e8;
    virtual bool init(cocos2d::CCNode* pStencil) = imac 0x71f280, m1 0x6322f8;
    virtual void onEnter() = imac 0x71f2f0, m1 0x632368;
    virtual void onEnterTransitionDidFinish() = imac 0x71f320, m1 0x632394;
    virtual void onExit() = imac 0x71f380, m1 0x6323f0;
    virtual void onExitTransitionDidStart() = imac 0x71f350, m1 0x6323c0;
    virtual void visit() = imac 0x71f3b0, m1 0x632420;

    float getAlphaThreshold() const;
    cocos2d::CCNode* getStencil() const = imac 0x71f710, m1 0x632754;
    bool isInverted() const;
    void setAlphaThreshold(float fAlphaThreshold) = imac 0x71f770, m1 0x6327a8;
    void setInverted(bool bInverted) = imac 0x71f790, m1 0x6327b8;
    void setStencil(cocos2d::CCNode* pStencil) = imac 0x71f720, m1 0x63275c;
}

[[link(win, android)]]
class cocos2d::CCComponent : cocos2d::CCObject {
    protected CCComponent();
    virtual ~CCComponent();

    static cocos2d::CCComponent* create();

    virtual bool init() = imac 0x9bd60, m1 0x8ca8c;
    virtual void onEnter() = imac 0x9bd70, m1 0x8ca94;
    virtual void onExit() = imac 0x9bd80, m1 0x8ca98;
    virtual void update(float) = imac 0x9bd90, m1 0x8ca9c;
    virtual bool serialize(void*) = imac 0x9bda0, m1 0x8caa0;
    virtual bool isEnabled() const = imac 0x9be60, m1 0x8cb44;
    virtual void setEnabled(bool) = imac 0x9be70, m1 0x8cb4c;

    char const* getName() const;
    cocos2d::CCNode* getOwner() const;
    void setName(char const*);
    void setOwner(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCComponentContainer {
    protected CCComponentContainer(cocos2d::CCNode*) = win inline;
    virtual ~CCComponentContainer();

    virtual cocos2d::CCComponent* get(char const*) const = imac 0x2c5050, m1 0x26135c, ios 0x164ce0;
    virtual bool add(cocos2d::CCComponent*) = imac 0x2c5170, m1 0x26148c, ios 0x164d80;
    virtual bool remove(char const*) = imac 0x2c5390, m1 0x2616a0, ios 0x164ec0;
    virtual bool remove(cocos2d::CCComponent*) = imac 0x2c5660, m1 0x26196c, ios 0x165164;
    virtual void removeAll() = imac 0x2c5800, m1 0x261b00, ios 0x1652e4;
    virtual void visit(float) = imac 0x2c59f0, m1 0x261ca0, ios 0x165454;

    void alloc();
    bool isEmpty() const;
}

[[link(win, android)]]
class cocos2d::CCConfiguration : cocos2d::CCObject {
    CCConfiguration();
    // CCConfiguration(cocos2d::CCConfiguration const&);
    virtual ~CCConfiguration();

    static void purgeConfiguration();
    static cocos2d::CCConfiguration* sharedConfiguration() = imac 0x519cb0, m1 0x4703f8, ios 0x324f78;

    bool checkForGLExtension(gd::string const&) const = imac 0x519c80, m1 0x4703c4, ios 0x324f44;
    void dumpInfo() const;
    void gatherGPUInfo();
    bool getBool(char const*, bool) const;
    char const* getCString(char const*, char const*) const;
    int getMaxModelviewStackDepth() const;
    int getMaxTextureSize() const;
    int getMaxTextureUnits() const;
    double getNumber(char const*, double) const;
    cocos2d::CCObject* getObject(char const*) const;
    bool init();
    void loadConfigFile(char const*);
    void setObject(char const*, cocos2d::CCObject*);
    bool supportsBGRA8888() const;
    bool supportsDiscardFramebuffer() const;
    bool supportsNPOT() const;
    bool supportsPVRTC() const;
    bool supportsShareableVAO() const;
}

[[link(win, android)]]
class cocos2d::CCDataVisitor {
    virtual void visit(cocos2d::CCBool const*) = imac 0x4b50a0, m1 0x416300, ios inline;
    virtual void visit(cocos2d::CCInteger const*) = imac 0x4b50b0, m1 0x41630c, ios inline;
    virtual void visit(cocos2d::CCFloat const*) = imac 0x4b50c0, m1 0x416318, ios inline;
    virtual void visit(cocos2d::CCDouble const*) = imac 0x4b50d0, m1 0x416324, ios inline;
    virtual void visit(cocos2d::CCString const*) = imac 0x4b50e0, m1 0x416330, ios inline;
    virtual void visit(cocos2d::CCArray const*) = imac 0x4b50f0, m1 0x41633c, ios inline;
    virtual void visit(cocos2d::CCDictionary const*) = imac 0x4b5100, m1 0x416348, ios inline;
    virtual void visit(cocos2d::CCSet const*) = imac 0x4b5110, m1 0x416354, ios inline;
}

[[link(win, android)]]
class cocos2d::CCDeccelAmplitude : cocos2d::CCActionInterval {

    virtual ~CCDeccelAmplitude() = imac 0x20abc0, m1 0x1b6a60;

    static cocos2d::CCDeccelAmplitude* create(cocos2d::CCAction*, float) = imac 0x20aac0, m1 0x1b6954;

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x20ac80, m1 0x1b6b18;
    virtual void update(float) = imac 0x20acb0, m1 0x1b6b4c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x20ad10, m1 0x1b6ba0;

    bool initWithAction(cocos2d::CCAction*, float) = imac 0x20ab80, m1 0x1b6a1c;
}

[[link(win, android)]]
class cocos2d::CCDelayTime : cocos2d::CCActionInterval {
    static cocos2d::CCDelayTime* create(float) = imac 0x3b7400, m1 0x339e68, ios 0x18add0;

    // CCDelayTime(cocos2d::CCDelayTime const&);
    // CCDelayTime();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3bbbf0, m1 0x33dd5c, ios 0x18d1a8;
    virtual void update(float) = imac 0x3bbcc0, m1 0x33de2c, ios 0x18d260;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3bbcd0, m1 0x33de30, ios 0x18d264;
}

[[link(win, android)]]
class cocos2d::CCDevice {
    static int getDPI();
}

[[link(win, android)]]
class cocos2d::CCDictElement {
    CCDictElement(char const*, cocos2d::CCObject*) = win inline, imac 0x30d8c0, m1 0x29cdf8, ios inline;
    CCDictElement(intptr_t, cocos2d::CCObject*) = win inline, imac 0x30d980, m1 0x29ce7c, ios inline;
    ~CCDictElement() = imac 0x30d9c0, m1 0x29ce98, ios inline;
}

[[link(win, android)]]
class cocos2d::CCDictionary : cocos2d::CCObject {
    // CCDictionary(cocos2d::CCDictionary const&);
    CCDictionary() = imac 0x30da10, m1 0x29cec8, ios 0x4226c0;
    virtual ~CCDictionary() = imac 0x30da40, m1 0x29cef0, ios 0x4226e8;

    static cocos2d::CCDictionary* create() = imac 0x30ff80, m1 0x29f2d0, ios 0x4243e4;
    static cocos2d::CCDictionary* createWithContentsOfFile(char const*) = imac 0x310110, m1 0x29f47c, ios 0x424500;
    static cocos2d::CCDictionary* createWithContentsOfFileThreadSafe(char const*) = imac 0x310000, m1 0x29f354, ios 0x424468;
    static cocos2d::CCDictionary* createWithDictionary(cocos2d::CCDictionary*) = imac 0x30ffe0, m1 0x29f32c, ios 0x424440;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x30fc60, m1 0x29efa4, ios 0x4242c4;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x3100f0, m1 0x29f464, ios 0x4244e8;

    cocos2d::CCArray* allKeys() = imac 0x30dc80, m1 0x29d100, ios 0x422880;
    cocos2d::CCArray* allKeysForObject(cocos2d::CCObject*) = imac 0x30de10, m1 0x29d298, ios inline;
    char const* charForKey(gd::string const&) = imac 0x30df50, m1 0x29d3f4, ios inline;
    unsigned int count() = imac 0x30dc60, m1 0x29d0e4, ios 0x422864;
    gd::string getFirstKey() = imac 0x30ddb0, m1 0x29d230, ios 0x4229a0;
    cocos2d::CCObject* objectForKey(gd::string const&) = imac 0x30dff0, m1 0x29d534, ios 0x422aa8;
    cocos2d::CCObject* objectForKey(intptr_t) = imac 0x30e3c0, m1 0x29d8b0, ios 0x422db4;
    cocos2d::CCObject* randomObject() = imac 0x30fe70, m1 0x29f16c, ios inline;
    void removeAllObjects() = imac 0x30da70, m1 0x29cf24, ios 0x42271c;
    void removeObjectForElememt(cocos2d::CCDictElement*) = imac 0x30f8b0, m1 0x29ec08, ios 0x423fd0;
    void removeObjectForKey(gd::string const&) = imac 0x30f490, m1 0x29e8a4, ios 0x423cc8;
    void removeObjectForKey(intptr_t) = imac 0x30f9e0, m1 0x29ed3c, ios 0x4240ec;
    void removeObjectsForKeys(cocos2d::CCArray*) = imac 0x30fb20, m1 0x29ee7c, ios 0x424220;
    void setObject(cocos2d::CCObject*, gd::string const&) = imac 0x30e570, m1 0x29da88, ios 0x422f7c;
    void setObject(cocos2d::CCObject*, intptr_t) = imac 0x30ef70, m1 0x29e3d4, ios 0x423820;
    void setObjectUnSafe(cocos2d::CCObject*, gd::string const&) = imac 0x30e9a0, m1 0x29ded4, ios 0x423340;
    void setObjectUnSafe(cocos2d::CCObject*, intptr_t) = imac 0x30f120, m1 0x29e564, ios 0x4239a4;
    cocos2d::CCString const* valueForKey(gd::string const&) = imac 0x30df70, m1 0x29d498, ios 0x422a14;
    cocos2d::CCString const* valueForKey(intptr_t) = imac 0x30e4f0, m1 0x29d9ec, ios 0x422ee8;
    bool writeToFile(char const*) = imac 0x310130, m1 0x29f4a4, ios inline;

    cocos2d::CCDictElement* m_pElements;
    int m_eDictType;
}

[[link(win, android)]]
class cocos2d::CCDirector : cocos2d::CCObject, cocos2d::TypeInfo {
    // CCDirector(cocos2d::CCDirector const&);
    CCDirector() = imac 0x482530, m1 0x3e8550, ios 0x174f34;
    virtual ~CCDirector() = imac 0x4829b0, m1 0x3e8964, ios 0x1752f4;

    static cocos2d::CCDirector* sharedDirector() = imac 0x482460, m1 0x3e8490, ios 0x174ec4;

    virtual bool init() = imac 0x482590, m1 0x3e85b4, ios 0x174f98;
    virtual cocos2d::CCScheduler* getScheduler() = imac 0x484a80, m1 0x3ea638, ios 0x176634;
    virtual void setScheduler(cocos2d::CCScheduler*) = imac 0x484a40, m1 0x3ea5f0, ios 0x1765ec;
    virtual cocos2d::CCActionManager* getActionManager() = imac 0x484ad0, m1 0x3ea688, ios 0x176684;
    virtual void setActionManager(cocos2d::CCActionManager*) = imac 0x484a90, m1 0x3ea640, ios 0x17663c;
    virtual cocos2d::CCTouchDispatcher* getTouchDispatcher() = imac 0x484b20, m1 0x3ea6d8, ios 0x1766d4;
    virtual void setTouchDispatcher(cocos2d::CCTouchDispatcher*) = imac 0x484ae0, m1 0x3ea690, ios 0x17668c;
    virtual cocos2d::CCKeypadDispatcher* getKeypadDispatcher() = imac 0x484c10, m1 0x3ea7a4, ios 0x1767a0;
    virtual void setKeypadDispatcher(cocos2d::CCKeypadDispatcher*) = imac 0x484bd0, m1 0x3ea768, ios 0x176764;
    virtual cocos2d::CCKeyboardDispatcher* getKeyboardDispatcher() = imac 0x484b70, m1 0x3ea71c, ios 0x176718;
    virtual void setKeyboardDispatcher(cocos2d::CCKeyboardDispatcher*) = imac 0x484b30, m1 0x3ea6e0, ios 0x1766dc;
    virtual cocos2d::CCMouseDispatcher* getMouseDispatcher() = imac 0x484bc0, m1 0x3ea760, ios 0x17675c;
    virtual void setMouseDispatcher(cocos2d::CCMouseDispatcher*) = imac 0x484b80, m1 0x3ea724, ios 0x176720;
    virtual cocos2d::CCAccelerometer* getAccelerometer() = imac 0x484c50, m1 0x3ea7e4, ios 0x1767e4;
    virtual void setAccelerometer(cocos2d::CCAccelerometer*) = imac 0x484c20, m1 0x3ea7ac, ios 0x1767a8;
    virtual float getDeltaTime() = imac 0x483650, m1 0x3e9480, ios 0x1759ac;

    void applySmoothFix();
    void calculateDeltaTime() = imac 0x483160, m1 0x3e8fe4;
    void calculateMPF() = imac 0x483550, m1 0x3e9388;
    void checkSceneReference();
    cocos2d::CCPoint convertToGL(cocos2d::CCPoint const&) = imac 0x483dc0, m1 0x3e9b00, ios 0x175d80;
    cocos2d::CCPoint convertToUI(cocos2d::CCPoint const&) = imac 0x483ee0, m1 0x3e9bdc, ios inline;
    void createStatsLabel();
    void drawScene() = imac 0x482de0, m1 0x3e8cac, ios 0x1755fc;
    void end() = imac 0x484430, m1 0x3ea0a4, ios 0x176160;
    // float getActualDeltaTime() const;
    // double getAnimationInterval();
    float getContentScaleFactor(); // ios 0x179bdc
    cocos2d::CCDirectorDelegate* getDelegate() const;
    // bool getDontCallWillSwitch() const;
    void getFPSImageData(unsigned char**, unsigned int*);
    // bool getIsTransitioning() const;
    // cocos2d::TextureQuality getLoadedTextureQuality() const;
    // cocos2d::CCScene* getNextScene();
    cocos2d::CCNode* getNotificationNode() = imac 0x4849d0, m1 0x3ea594;
    // cocos2d::CCEGLView* getOpenGLView();
    // cocos2d::ccDirectorProjection getProjection();
    // cocos2d::CCScene* getRunningScene();
    // cocos2d::CCScene* getSceneReference() const;
    float getScreenScaleFactor();
    float getScreenScaleFactorH();
    float getScreenScaleFactorMax();
    float getScreenScaleFactorW();
    // float getSecondsPerFrame();
    // bool getSmoothFix() const;
    // bool getSmoothFixCheck() const;
    // int getSmoothFixCounter() const;
    // unsigned int getTotalFrames();
    cocos2d::CCPoint getVisibleOrigin() = imac 0x484070, m1 0x3e9cf0, ios inline;
    cocos2d::CCSize getVisibleSize() = imac 0x484030, m1 0x3e9ccc, ios inline;
    cocos2d::CCSize getWinSize() = imac 0x483870, m1 0x3e9668, ios 0x175b68;
    cocos2d::CCSize getWinSizeInPixels() = imac 0x483ff0, m1 0x3e9cb0, ios 0x175e88;
    float getZEye();
    // bool isDisplayStats();
    // bool isNextDeltaTimeZero();
    // bool isPaused();
    // bool isSendCleanupToScene();
    int levelForSceneInStack(cocos2d::CCScene*);
    void pause() = imac 0x484840, m1 0x3ea43c, ios 0x176488;
    void popScene() = imac 0x4843b0, m1 0x3ea024, ios 0x1760e8;
    bool popSceneWithTransition(float, cocos2d::PopTransition) = imac 0x484440, m1 0x3ea0b0, ios 0x17616c;
    void popToRootScene() = imac 0x484520, m1 0x3ea180, ios 0x17623c;
    void popToSceneInStack(cocos2d::CCScene*) = imac 0x4846a0, m1 0x3ea2e8, ios 0x176334;
    void popToSceneStackLevel(int) = imac 0x484530, m1 0x3ea188, ios 0x176244;
    void purgeCachedData();
    void purgeDirector() = imac 0x484700, m1 0x3ea338, ios 0x176384;
    bool pushScene(cocos2d::CCScene*) = imac 0x4841a0, m1 0x3e9e18, ios 0x175f28;
    void removeStatsLabel() = imac 0x484900, m1 0x3ea4fc;
    bool replaceScene(cocos2d::CCScene*) = imac 0x484250, m1 0x3e9ec4, ios 0x175fd4;
    void resetSmoothFixCounter() = imac 0x483640, m1 0x3e9474, ios 0x1759a0;
    void reshapeProjection(cocos2d::CCSize const&);
    void resume() = imac 0x484880, m1 0x3ea480, ios 0x1764cc;
    void runWithScene(cocos2d::CCScene*) = imac 0x484100, m1 0x3e9d6c, ios 0x175efc;
    int sceneCount() = imac 0x484630, m1 0x3ea294, ios 0x17632c;
    //getScreenTop = ios 0x18260c, idk if i should add the function
    //getScreenBottom() = ios 0x182614
    //getScreenLeft() = ios 0x18261C
    // void setActualDeltaTime(float);
    void setAlphaBlending(bool);
    void setContentScaleFactor(float);
    void setDefaultValues() = imac 0x482850, m1 0x3e8814;
    void setDelegate(cocos2d::CCDirectorDelegate*);
    void setDeltaTime(float);
    void setDepthTest(bool) = imac 0x482ba0, m1 0x3e8ad4, ios 0x175454;
    // void setDisplayStats(bool);
    // void setDontCallWillSwitch(bool);
    void setGLDefaultValues() = imac 0x482b30, m1 0x3e8a74, ios 0x175408;
    void setNextDeltaTimeZero(bool);
    void setNextScene() = imac 0x483290, m1 0x3e9110, ios 0x175730;
    // void setNotificationNode(cocos2d::CCNode*) = imac 0x4849e0, m1 0x3ea59c;
    void setOpenGLView(cocos2d::CCEGLView*);
    void setProjection(cocos2d::ccDirectorProjection) = imac 0x482be0, m1 0x3e8b04, ios 0x175484;
    void setupScreenScale(cocos2d::CCSize, cocos2d::CCSize, cocos2d::TextureQuality) = m1 0x3e9674, imac 0x483890, ios 0x175b74;
    // void setSceneReference(cocos2d::CCScene*);
    // void setSmoothFix(bool);
    // void setSmoothFixCheck(bool);
    void setViewport() = imac 0x483cd0, m1 0x3e9a2c, ios 0x175d28;
    void showFPSLabel() = imac 0x483470, m1 0x3e92d4;
    void showStats() = imac 0x4833c0, m1 0x3e9230;
    void toggleShowFPS(bool, gd::string, cocos2d::CCPoint) = imac 0x483750, m1 0x3e9568, ios 0x175a68;
    void updateContentScale(cocos2d::TextureQuality) = imac 0x483b70, m1 0x3e9914, ios 0x175c84;
    void updateScreenScale(cocos2d::CCSize) = m1 0x3e9864, imac 0x483aa0, ios 0x175bd4;
    void willSwitchToScene(cocos2d::CCScene*) = imac 0x4840b0, m1 0x3e9d14, ios 0x175ea4;
}

[[link(android)]]
class cocos2d::CCDisplayLinkDirector : cocos2d::CCDirector {
    virtual void setAnimationInterval(double) = win 0xbf3f0, imac 0x484cf0, m1 0x3ea86c, ios 0x17686c;
    virtual void stopAnimation() = win 0xbff30, imac 0x484ce0, m1 0x3ea860, ios 0x176860;
    virtual void startAnimation() = win 0xbfef0, imac 0x484c60, m1 0x3ea7ec, ios 0x1767ec;
    virtual void mainLoop() = win 0xbeae0, imac 0x484ca0, m1 0x3ea828, ios 0x176828;
}

[[link(win, android)]]
class cocos2d::CCDrawNode : cocos2d::CCNodeRGBA {
    // CCDrawNode(cocos2d::CCDrawNode const&);
    CCDrawNode() = imac 0x610b00, m1 0x536340, ios 0x41d34;
    virtual ~CCDrawNode() = imac 0x610c00, m1 0x536430, ios 0x41dac;

    static cocos2d::CCDrawNode* create() = imac 0x610dc0, m1 0x536578, ios 0x41e30;

    virtual bool init() = imac 0x610ee0, m1 0x5366a8, ios 0x41ef8;
    virtual void draw() = imac 0x6110d0, m1 0x53686c, ios 0x4208c;

    void clear() = imac 0x613050, m1 0x538270, ios 0x431dc;
    void disableDrawArea() = imac 0x611220, m1 0x5369a4, ios 0x42158;
    void drawArchLikeHalfCircle(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, unsigned int, cocos2d::_ccColor4F const&, float) = imac 0x611490, m1 0x536bf8, ios 0x42160;
    bool drawCircle(cocos2d::CCPoint const&, float, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&, unsigned int) = imac 0x612ea0, m1 0x5380d0, ios 0x43048;
    void drawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::ccColor4F const&, float) = imac 0x611b50, m1 0x537180, ios inline;
    void drawCubicBezierDashed(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::ccColor4F const&, float, unsigned int, unsigned int) = imac 0x611660, m1 0x536db4, ios 0x4230c;
    bool drawDot(cocos2d::CCPoint const& pos, float radius, cocos2d::ccColor4F const& color) = imac 0x6112a0, m1 0x536a1c, ios inline;
    bool drawLines(cocos2d::CCPoint*, unsigned int, float, cocos2d::ccColor4F const&) = imac 0x612e20, m1 0x538048, ios 0x42fc0;
    bool drawPolygon(cocos2d::CCPoint*, unsigned int, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&, cocos2d::BorderAlignment) = imac 0x6124d0, m1 0x5378dc, ios 0x4295c;
    void drawPreciseCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::ccColor4F const&, float) = imac 0x611870, m1 0x536f88, ios inline;
    bool drawRect(cocos2d::CCRect const&, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&, cocos2d::BorderAlignment) = imac 0x612c60, m1 0x537e7c, ios 0x42df8;
    bool drawRect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&, cocos2d::BorderAlignment) = imac 0x612cf0, m1 0x537f10, ios 0x42e8c;
    bool drawSegment(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::ccColor4F const&) = imac 0x6124b0, m1 0x5378d0, ios 0x42950;
    bool drawSegmentEx(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::ccColor4F const&, bool, bool) = imac 0x611de0, m1 0x537398, ios 0x424d8;
    void enableDrawArea(cocos2d::CCRect&) = imac 0x6111b0, m1 0x536944, ios 0x420f8;
    void ensureCapacity(unsigned int) = imac 0x610e90, m1 0x536650, ios 0x41ea4;
    cocos2d::ccBlendFunc getBlendFunc() const = imac 0x613070, m1 0x538280, ios 0x431ec;
    bool is_circle_on_screen(cocos2d::CCRect const&, cocos2d::CCPoint const&, float) = imac 0x611230, m1 0x5369ac, ios inline;
    bool is_segment_on_screen(cocos2d::CCRect const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x612400, m1 0x537830, ios 0x428b4;
    void listenBackToForeground(cocos2d::CCObject*) = imac 0x613090, m1 0x538294, ios inline;
    void render() = imac 0x611040, m1 0x5367e0, ios 0x42000;
    void setBlendFunc(cocos2d::ccBlendFunc const&) = imac 0x613080, m1 0x538288, ios 0x431f4;

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
    static cocos2d::CCEaseBackIn* create(cocos2d::CCActionInterval*) = imac 0x517260, m1 0x46db98, ios 0x26d14c;

    // CCEaseBackIn(cocos2d::CCEaseBackIn const&);
    // CCEaseBackIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x517300, m1 0x46dc40, ios 0x26d1dc;
    virtual void update(float) = imac 0x517400, m1 0x46dd28, ios 0x26d2a4;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x517430, m1 0x46dd5c, ios 0x26d2d0;
}

[[link(win, android)]]
class cocos2d::CCEaseBackInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackInOut* create(cocos2d::CCActionInterval* pAction) = imac 0x517650, m1 0x46df6c, ios inline;

    // CCEaseBackInOut(cocos2d::CCEaseBackInOut const&);
    // CCEaseBackInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x5176f0, m1 0x46e014, ios inline;
    virtual void update(float time) = imac 0x5177f0, m1 0x46e0fc, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x517880, m1 0x46e190, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseBackOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackOut* create(cocos2d::CCActionInterval*) = imac 0x517450, m1 0x46dd7c, ios 0x26d2f0;

    // CCEaseBackOut(cocos2d::CCEaseBackOut const&);
    // CCEaseBackOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5174f0, m1 0x46de24, ios 0x26d380;
    virtual void update(float) = imac 0x5175f0, m1 0x46df0c, ios 0x26d448;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x517630, m1 0x46df4c, ios 0x26d480;
}

[[link(win, android)]]
class cocos2d::CCEaseBounce : cocos2d::CCActionEase {
    static cocos2d::CCEaseBounce* create(cocos2d::CCActionInterval* pAction) = imac 0x516750, m1 0x46cfb0, ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x5167f0, m1 0x46d058, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5169b0, m1 0x46d228, ios inline;

    // CCEaseBounce(cocos2d::CCEaseBounce const&);
    // CCEaseBounce();
    float bounceTime(float) = imac 0x5168f0, m1 0x46d140, ios 0x26cd40;
}

[[link(win, android)]]
class cocos2d::CCEaseBounceIn : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceIn* create(cocos2d::CCActionInterval*) = imac 0x5169d0, m1 0x46d248, ios 0x26cdf0;

    // CCEaseBounceIn(cocos2d::CCEaseBounceIn const&);
    // CCEaseBounceIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x516a70, m1 0x46d2f0, ios 0x26ce80;
    virtual void update(float) = imac 0x516b70, m1 0x46d3d8, ios 0x26cf48;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x516c50, m1 0x46d4e8, ios 0x26cf88;
}

[[link(win, android)]]
class cocos2d::CCEaseBounceInOut : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceInOut* create(cocos2d::CCActionInterval* pAction) = imac 0x516ef0, m1 0x46d7c0, ios inline;

    // CCEaseBounceInOut(cocos2d::CCEaseBounceInOut const&);
    // CCEaseBounceInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x516f90, m1 0x46d868, ios inline;
    virtual void update(float time) = imac 0x517090, m1 0x46d950, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x517240, m1 0x46db78, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseBounceOut : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceOut* create(cocos2d::CCActionInterval*) = imac 0x516c70, m1 0x46d508, ios 0x26cfa8;

    // CCEaseBounceOut(cocos2d::CCEaseBounceOut const&);
    // CCEaseBounceOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x516d10, m1 0x46d5b0, ios 0x26d038;
    virtual void update(float) = imac 0x516e10, m1 0x46d698, ios 0x26d100;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x516ed0, m1 0x46d7a0, ios 0x26d12c;
}

[[link(win, android)]]
class cocos2d::CCEaseElastic : cocos2d::CCActionEase {
    static cocos2d::CCEaseElastic* create(cocos2d::CCActionInterval* pAction) = imac 0x515c40, m1 0x46c574, ios inline;
    static cocos2d::CCEaseElastic* create(cocos2d::CCActionInterval* pAction, float fPeriod) = imac 0x515c60, m1 0x46c584, ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x515d70, m1 0x46c698, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x515e80, m1 0x46c790, ios inline;

    // CCEaseElastic(cocos2d::CCEaseElastic const&);
    // CCEaseElastic();
    bool initWithAction(cocos2d::CCActionInterval* pAction, float fPeriod) = imac 0x515d20, m1 0x46c640, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticIn : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval* pAction) = imac 0x515e90, m1 0x46c798, ios inline;
    static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval*, float) = imac 0x515eb0, m1 0x46c7a8, ios 0x26c8bc;

    // CCEaseElasticIn(cocos2d::CCEaseElasticIn const&);
    // CCEaseElasticIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x515f70, m1 0x46c864, ios 0x26c95c;
    virtual void update(float) = imac 0x516080, m1 0x46c95c, ios 0x26ca38;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x516120, m1 0x46c9ec, ios 0x26cac4;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticInOut : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticInOut* create(cocos2d::CCActionInterval* pAction) = imac 0x516410, m1 0x46cca8, ios inline;
    static cocos2d::CCEaseElasticInOut* create(cocos2d::CCActionInterval* pAction, float fPeriod) = imac 0x516430, m1 0x46ccb8, ios inline;

    // CCEaseElasticInOut(cocos2d::CCEaseElasticInOut const&);
    // CCEaseElasticInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x5164f0, m1 0x46cd74, ios inline;
    virtual void update(float time) = imac 0x516600, m1 0x46ce6c, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x516720, m1 0x46cf80, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticOut : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*) = imac 0x516210, m1 0x46cad8, ios 0x26cb94;
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*, float) = imac 0x516150, m1 0x46ca1c, ios 0x26caf4;

    // CCEaseElasticOut(cocos2d::CCEaseElasticOut const&);
    // CCEaseElasticOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x516230, m1 0x46cae8, ios 0x26cba0;
    virtual void update(float) = imac 0x516340, m1 0x46cbe0, ios 0x26cc7c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5163e0, m1 0x46cc78, ios 0x26cd10;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialIn* create(cocos2d::CCActionInterval*) = imac 0x515000, m1 0x46b944, ios 0x26c528;

    // CCEaseExponentialIn(cocos2d::CCEaseExponentialIn const&);
    // CCEaseExponentialIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5150a0, m1 0x46b9ec, ios 0x26c5b8;
    virtual void update(float) = imac 0x5151a0, m1 0x46bad4, ios 0x26c680;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5151f0, m1 0x46bb48, ios 0x26c6d8;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialInOut* create(cocos2d::CCActionInterval* pAction) = imac 0x515420, m1 0x46bd7c, ios inline;

    // CCEaseExponentialInOut(cocos2d::CCEaseExponentialInOut const&);
    // CCEaseExponentialInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x5154c0, m1 0x46be24, ios inline;
    virtual void update(float time) = imac 0x5155c0, m1 0x46bf0c, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x515630, m1 0x46bf78, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialOut* create(cocos2d::CCActionInterval*) = imac 0x515210, m1 0x46bb68, ios 0x26c6f8;

    // CCEaseExponentialOut(cocos2d::CCEaseExponentialOut const&);
    // CCEaseExponentialOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5152b0, m1 0x46bc10, ios 0x26c788;
    virtual void update(float) = imac 0x5153b0, m1 0x46bcf8, ios 0x26c850;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x515400, m1 0x46bd5c, ios 0x26c89c;
}

[[link(win, android)]]
class cocos2d::CCEaseIn : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseIn* create(cocos2d::CCActionInterval*, float) = imac 0x514930, m1 0x46b2b4, ios 0x26bf40;

    // CCEaseIn(cocos2d::CCEaseIn const&);
    // CCEaseIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5149f0, m1 0x46b370, ios 0x26bfe0;
    virtual void update(float) = imac 0x514b00, m1 0x46b468, ios 0x26c0bc;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x514b30, m1 0x46b498, ios 0x26c0ec;
}

[[link(win, android)]]
class cocos2d::CCEaseInOut : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseInOut* create(cocos2d::CCActionInterval*, float) = imac 0x514d90, m1 0x46b6f4, ios 0x26c310;

    // CCEaseInOut(cocos2d::CCEaseInOut const&);
    // CCEaseInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x514e50, m1 0x46b7b0, ios 0x26c3b0;
    virtual void update(float) = imac 0x514f60, m1 0x46b8a8, ios 0x26c48c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x514fd0, m1 0x46b914, ios 0x26c4f8;
}

[[link(win, android)]]
class cocos2d::CCEaseOut : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseOut* create(cocos2d::CCActionInterval*, float) = imac 0x514b60, m1 0x46b4d0, ios 0x26c124;

    // CCEaseOut(cocos2d::CCEaseOut const&);
    // CCEaseOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x514c20, m1 0x46b58c, ios 0x26c1c4;
    virtual void update(float) = imac 0x514d30, m1 0x46b684, ios 0x26c2a0;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x514d60, m1 0x46b6bc, ios 0x26c2d8;
}

[[link(win, android)]]
class cocos2d::CCEaseRateAction : cocos2d::CCActionEase {
    // CCEaseRateAction(cocos2d::CCEaseRateAction const&);
    // CCEaseRateAction();
    virtual ~CCEaseRateAction() = imac 0x514840, m1 0x46b1c4, ios inline;

    static cocos2d::CCEaseRateAction* create(cocos2d::CCActionInterval* pAction, float fRate) = imac 0x514620, m1 0x46afb8, ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x514730, m1 0x46b0cc, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x514900, m1 0x46b27c, ios inline;

    bool initWithAction(cocos2d::CCActionInterval* pAction, float fRate) = imac 0x5146e0, m1 0x46b074, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseSineIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineIn* create(cocos2d::CCActionInterval* pAction) = imac 0x515650, m1 0x46bf98, ios inline;

    // CCEaseSineIn(cocos2d::CCEaseSineIn const&);
    // CCEaseSineIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x5156f0, m1 0x46c040, ios inline;
    virtual void update(float time) = imac 0x5157f0, m1 0x46c128, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x515830, m1 0x46c16c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseSineInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineInOut* create(cocos2d::CCActionInterval* pAction) = imac 0x515a40, m1 0x46c378, ios inline;

    // CCEaseSineInOut(cocos2d::CCEaseSineInOut const&);
    // CCEaseSineInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x515ae0, m1 0x46c420, ios inline;
    virtual void update(float time) = imac 0x515be0, m1 0x46c508, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x515c20, m1 0x46c554, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseSineOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineOut* create(cocos2d::CCActionInterval* pAction) = imac 0x515850, m1 0x46c18c, ios inline;

    // CCEaseSineOut(cocos2d::CCEaseSineOut const&);
    // CCEaseSineOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x5158f0, m1 0x46c234, ios inline;
    virtual void update(float time) = imac 0x5159f0, m1 0x46c31c, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x515a20, m1 0x46c358, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEGLView {
    protected CCEGLView() = imac 0x5035b0, m1 0x45b284, ios 0x12a68c;
    protected virtual ~CCEGLView() = imac 0x503610, m1 0x45b2d4, ios inline;

    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithFullScreen(gd::string const&, bool);
    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithFullScreen(gd::string const&, bool, GLFWvidmode const&, GLFWmonitor*);
    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithRect(gd::string const&, cocos2d::CCRect, float);
    static cocos2d::CCEGLView* sharedOpenGLView() = imac 0x503540, m1 0x45b214, ios 0x12a810;

    virtual void end() = imac 0x5036c0, m1 0x45b358, ios 0x12a778;
    virtual void swapBuffers() = imac 0x503730, m1 0x45b3b0, ios 0x12a7a0;
    virtual bool isOpenGLReady() = imac 0x503690, m1 0x45b32c, ios 0x12a71c;
    virtual void setIMEKeyboardState(bool) = imac 0x5037b0, m1 0x45b3e8, ios 0x12a7bc;
    [[missing(android, mac, ios)]]
    virtual void setFrameSize(float, float);
    [[missing(win, android)]]
    virtual bool setContentScaleFactor(float) = imac 0x5036b0, m1 0x45b350, ios 0x12a740;
    [[missing(android, ios)]]
    virtual void setViewPortInPoints(float, float, float, float) = imac 0x503800, m1 0x45b420;
    [[missing(android, ios)]]
    virtual void setScissorInPoints(float, float, float, float) = imac 0x5038f0, m1 0x45b4c8;
    [[missing(win, android, ios)]]
    virtual void setMultiTouchMask(bool) = imac 0x5039e0, m1 0x45b570;

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
    [[missing(android, mac, ios)]]
    void toggleFullScreen(bool, bool, bool);
}

[[link(win, android)]]
class cocos2d::CCEGLViewProtocol {
    CCEGLViewProtocol() = imac 0x50fb10, m1 0x4669c0, ios 0x2e6a40;
    virtual ~CCEGLViewProtocol() = imac 0x50fb70, m1 0x466a14, ios 0x2e6a94;

    virtual cocos2d::CCSize const& getFrameSize() const = imac 0x50fcf0, m1 0x466b40, ios 0x2e6bc0;
    virtual void setFrameSize(float, float) = imac 0x50fd00, m1 0x466b48, ios 0x2e6bc8;
    virtual cocos2d::CCSize getVisibleSize() const = imac 0x50fd40, m1 0x466b8c, ios 0x2e6c0c;
    virtual cocos2d::CCPoint getVisibleOrigin() const = imac 0x50fd90, m1 0x466bbc, ios 0x2e6c3c;
    virtual void setDesignResolutionSize(float, float, ResolutionPolicy) = imac 0x50fba0, m1 0x466a20, ios 0x2e6aa0;
    virtual cocos2d::CCSize const& getDesignResolutionSize() const = imac 0x50fce0, m1 0x466b38, ios 0x2e6bb8;
    virtual void setTouchDelegate(cocos2d::EGLTouchDelegate*) = imac 0x50fe00, m1 0x466c08, ios 0x2e6c88;
    virtual void setViewPortInPoints(float, float, float, float) = imac 0x50fe10, m1 0x466c10, ios 0x2e6c90;
    virtual void setScissorInPoints(float, float, float, float) = imac 0x50fe50, m1 0x466c3c, ios 0x2e6cbc;
    virtual bool isScissorEnabled() = imac 0x50fe90, m1 0x466c68, ios 0x2e6ce8;
    virtual cocos2d::CCRect getScissorRect() = imac 0x50feb0, m1 0x466c88, ios 0x2e6d08;
    virtual void setViewName(char const*) = imac 0x50ff50, m1 0x466d18, ios 0x2e6d98;
    virtual void pollInputEvents() = imac 0x5106e0, m1 0x4674bc, ios 0x2e7400;
    virtual void handleTouchesBegin(int, int*, float*, float*, double) = imac 0x50ff80, m1 0x466d3c, ios 0x2e6db4;
    virtual void handleTouchesMove(int, int*, float*, float*, double) = imac 0x510260, m1 0x46700c, ios 0x2e6ff8;
    virtual void handleTouchesEnd(int, int*, float*, float*, double) = imac 0x510590, m1 0x46734c, ios 0x2e7290;
    virtual void handleTouchesCancel(int, int*, float*, float*, double) = imac 0x510620, m1 0x4673f8, ios 0x2e733c;

    double getPlatformTimestamp();
    float getScaleX() const;
    float getScaleY() const;
    void getSetOfTouchesEndOrCancel(cocos2d::CCSet&, int, int*, float*, float*);
    char const* getViewName();
    cocos2d::CCRect const& getViewPortRect() const = imac 0x5106b0, m1 0x4674a4, ios inline;
    void updateDesignResolutionSize();
}

[[link(win, android)]]
class cocos2d::CCFadeIn : cocos2d::CCActionInterval {
    static cocos2d::CCFadeIn* create(float) = imac 0x3bac60, m1 0x33cf4c, ios 0x18c914;

    // CCFadeIn(cocos2d::CCFadeIn const&);
    // CCFadeIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3bad00, m1 0x33cfd8, ios 0x18c9a0;
    virtual void update(float) = imac 0x3badd0, m1 0x33d0a8, ios 0x18ca58;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3bae30, m1 0x33d10c, ios 0x18cabc;
}

[[link(win, android)]]
class cocos2d::CCFadeOut : cocos2d::CCActionInterval {
    static cocos2d::CCFadeOut* create(float) = imac 0x3baee0, m1 0x33d198, ios 0x18cac4;

    // CCFadeOut(cocos2d::CCFadeOut const&);
    // CCFadeOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3baf80, m1 0x33d224, ios 0x18cb50;
    virtual void update(float) = imac 0x3bb050, m1 0x33d2f4, ios 0x18cc08;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3bb0c0, m1 0x33d360, ios 0x18cc74;
}

[[link(win, android)]]
class cocos2d::CCFadeOutBLTiles : cocos2d::CCFadeOutTRTiles {
    static cocos2d::CCFadeOutBLTiles* create(float, cocos2d::CCSize const&) = imac 0x7b6770, m1 0x6bc6c8;

    virtual float testFunc(cocos2d::CCSize const&, float) = imac 0x7b6850, m1 0x6bc7a8;
}

[[link(win, android)]]
class cocos2d::CCFadeOutDownTiles : cocos2d::CCFadeOutUpTiles {
    static cocos2d::CCFadeOutDownTiles* create(float, cocos2d::CCSize const&) = imac 0x7b6b00, m1 0x6bca54;

    virtual float testFunc(cocos2d::CCSize const&, float) = imac 0x7b6be0, m1 0x6bcb34;
}

[[link(win, android)]]
class cocos2d::CCFadeOutTRTiles : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCFadeOutTRTiles* create(float, cocos2d::CCSize const&) = imac 0x7b6340, m1 0x6bc2bc;

    virtual float testFunc(cocos2d::CCSize const&, float) = imac 0x7b6420, m1 0x6bc39c;
    virtual void transformTile(cocos2d::CCPoint const&, float) = imac 0x7b6510, m1 0x6bc490;
    virtual void update(float) = imac 0x7b65f0, m1 0x6bc550;

    void turnOffTile(cocos2d::CCPoint const&) = imac 0x7b64e0, m1 0x6bc464;
    void turnOnTile(cocos2d::CCPoint const&) = imac 0x7b64a0, m1 0x6bc424;
}

[[link(win, android)]]
class cocos2d::CCFadeOutUpTiles : cocos2d::CCFadeOutTRTiles {
    static cocos2d::CCFadeOutUpTiles* create(float, cocos2d::CCSize const&) = imac 0x7b68e0, m1 0x6bc83c;

    virtual float testFunc(cocos2d::CCSize const&, float) = imac 0x7b69c0, m1 0x6bc91c;
    virtual void transformTile(cocos2d::CCPoint const&, float) = imac 0x7b6a40, m1 0x6bc99c;
}

[[link(win, android)]]
class cocos2d::CCFadeTo : cocos2d::CCActionInterval {
    static cocos2d::CCFadeTo* create(float, unsigned char) = imac 0x3bb170, m1 0x33d3ec, ios 0x18cc7c;

    // CCFadeTo(cocos2d::CCFadeTo const&);
    // CCFadeTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3bb260, m1 0x33d4a8, ios 0x18cd10;
    virtual void update(float) = imac 0x3bb3c0, m1 0x33d5f8, ios 0x18ce5c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3bb360, m1 0x33d594, ios 0x18cdf8;

    bool initWithDuration(float, unsigned char) = imac 0x3bb220, m1 0x33d480, ios inline;
}

[[link(win, android)]]
class cocos2d::CCFileUtils : cocos2d::TypeInfo {
    protected CCFileUtils();
    // CCFileUtils(cocos2d::CCFileUtils const&);
    virtual ~CCFileUtils();

    static void purgeFileUtils();
    static cocos2d::CCFileUtils* sharedFileUtils() = imac 0x60b8d0, m1 0x531b28, ios 0x23620c;

    virtual void addSearchPath(char const*) = imac 0x43d220, m1 0x3aec64, ios 0x151fc0;
    virtual void addSearchResolutionsOrder(char const*) = imac 0x43cc80, m1 0x3ae744, ios 0x151c74;
    virtual gd::string addSuffix(gd::string, gd::string) = imac 0x43b1a0, m1 0x3acce8, ios 0x150e5c;
    virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(gd::string const&) = imac 0x43aad0, m1 0x3ac5e8, ios 0x150968;
    virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(gd::string const&) = imac 0x43aab0, m1 0x3ac5d8, ios 0x150958;
    virtual gd::string fullPathForFilename(char const*, bool) = imac 0x43b830, m1 0x3ad2c4, ios 0x1512b0;
    virtual char const* fullPathFromRelativeFile(char const*, char const*) = imac 0x43c7e0, m1 0x3ae298, ios 0x151988;
    virtual unsigned char* getFileData(char const*, char const*, unsigned long*) = imac 0x43ad80, m1 0x3ac8c0, ios 0x150b24;
    virtual unsigned char* getFileDataFromZip(char const*, char const*, unsigned long*) = imac 0x43aec0, m1 0x3aca2c, ios 0x150c74;
    virtual gd::string getFullPathForDirectoryAndFilename(gd::string const&, gd::string const&) = imac 0x43db00, m1 0x3af5bc, ios 0x152458;
    virtual gd::string getNewFilename(char const*) = imac 0x43aff0, m1 0x3acb4c, ios 0x150d90;
    virtual gd::string getPathForFilename(gd::string const&, gd::string const&, gd::string const&) = imac 0x43b3e0, m1 0x3aceec, ios 0x151060;
    virtual gd::vector<gd::string> const& getSearchPaths() = imac 0x43cd70, m1 0x3ae844, ios 0x151ce0;
    virtual gd::vector<gd::string> const& getSearchResolutionsOrder() = imac 0x43cd60, m1 0x3ae83c, ios 0x151cd8;
    virtual gd::string getWritablePath2() = imac 0x43dd30, m1 0x3af7ec, ios 0x152584;
    virtual bool init() = imac 0x43ac80, m1 0x3ac7b0, ios 0x150a78;
    virtual bool isAbsolutePath(gd::string const&) = imac 0x43dc70, m1 0x3af724, ios 0x1524c8;
    virtual bool isPopupNotify() = imac 0x43dca0, m1 0x3af750, ios 0x1524f4;
    virtual void loadFilenameLookupDictionaryFromFile(char const*) = imac 0x43d990, m1 0x3af3d8, ios 0x1522e8;
    virtual void purgeCachedEntries() = imac 0x43ad50, m1 0x3ac890, ios 0x150af4;
    virtual void removeFullPath(char const*) = imac 0x43c680, m1 0x3ae028, ios 0x1518f8;
    virtual void removeSearchPath(char const*) = imac 0x43d530, m1 0x3aef7c, ios 0x1520f8;
    virtual void setFilenameLookupDictionary(cocos2d::CCDictionary*) = imac 0x43d920, m1 0x3af370, ios 0x152280;
    virtual void setPopupNotify(bool) = imac 0x43dc90, m1 0x3af744, ios 0x1524e8;
    virtual void setSearchPaths(gd::vector<gd::string> const&) = imac 0x43cd80, m1 0x3ae84c, ios 0x151ce8;
    virtual void setSearchResolutionsOrder(gd::vector<gd::string> const&) = imac 0x43ca40, m1 0x3ae504, ios 0x151aec;
    virtual bool shouldUseHD() = imac 0x43b170, m1 0x3accc4, ios 0x150e38;
    virtual bool writeToFile(cocos2d::CCDictionary*, gd::string const&) = imac 0x43aac0, m1 0x3ac5e0, ios 0x150960;

    void removeAllPaths();
}

[[link(win, android)]]
class cocos2d::CCFiniteTimeAction : cocos2d::CCAction {
    // CCFiniteTimeAction(cocos2d::CCFiniteTimeAction const&);
    // CCFiniteTimeAction();

    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x5f4440, m1 0x51d898, ios inline;

    float m_fDuration;
}

[[link(win, android)]]
class cocos2d::CCFlipX : cocos2d::CCActionInstant {
    static cocos2d::CCFlipX* create(bool) = imac 0x7acad0, m1 0x6b325c;

    virtual void update(float) = imac 0x7acb40, m1 0x6b32c8;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x7acb60, m1 0x6b32d8;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7acbc0, m1 0x6b333c;

    bool initWithFlipX(bool) = imac 0x7acb30, m1 0x6b32bc;
}

[[link(win, android)]]
class cocos2d::CCFlipX3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCFlipX3D* create(float) = imac 0x27d540, m1 0x21f630;

    virtual bool initWithDuration(float) = imac 0x27d630, m1 0x21f728;
    virtual bool initWithSize(cocos2d::CCSize const&, float) = imac 0x27d680, m1 0x21f778;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27d6b0, m1 0x21f798;
    virtual void update(float) = imac 0x27d7d0, m1 0x21f8a8;
}

[[link(win, android)]]
class cocos2d::CCFlipY : cocos2d::CCActionInstant {
    static cocos2d::CCFlipY* create(bool) = imac 0x7acc80, m1 0x6b3410;

    virtual void update(float) = imac 0x7accf0, m1 0x6b347c;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x7acd10, m1 0x6b348c;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7acd70, m1 0x6b34f0;

    bool initWithFlipY(bool) = imac 0x7acce0, m1 0x6b3470;
}

[[link(win, android)]]
class cocos2d::CCFlipY3D : cocos2d::CCFlipX3D {
    static cocos2d::CCFlipY3D* create(float) = imac 0x27da90, m1 0x21fb0c;

    virtual void update(float) = imac 0x27dca0, m1 0x21fd14;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27db80, m1 0x21fc04;
}

[[link(win, android)]]
class cocos2d::CCFollow : cocos2d::CCAction {

    virtual ~CCFollow() = imac 0x5f4930, m1 0x51dd34;

    static cocos2d::CCFollow* create(cocos2d::CCNode*, cocos2d::CCRect const&) = imac 0x5f4a20, m1 0x51de10;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5f4c40, m1 0x51e024;
    virtual void step(float) = imac 0x5f4df0, m1 0x51e1d0;
    virtual bool isDone() = imac 0x5f4ed0, m1 0x51e2a8;
    virtual void stop() = imac 0x5f4ef0, m1 0x51e2cc;

    bool initWithTarget(cocos2d::CCNode*, cocos2d::CCRect const&) = imac 0x5f4af0, m1 0x51ded4;
}

[[link(win, android)]]
class cocos2d::CCGLProgram : cocos2d::CCObject {
    CCGLProgram() = imac 0x42a720, m1 0x39d178, ios 0x135098;
    // CCGLProgram(cocos2d::CCGLProgram const&);
    virtual ~CCGLProgram() = imac 0x42a770, m1 0x39d1b8, ios 0x1350d8;

    void addAttribute(char const*, unsigned int) = imac 0x42ab90, m1 0x39d5e8, ios 0x1353c0;
    bool compileShader(unsigned int*, unsigned int, char const*) = imac 0x42a9d0, m1 0x39d3ec, ios 0x1352e8;
    char const* description() = imac 0x42ab60, m1 0x39d5b4, ios inline;
    char const* fragmentShaderLog() = imac 0x42afa0, m1 0x39da48, ios inline;
    // unsigned int const getProgram();
    int getUniformLocationForName(char const*) = imac 0x42b640, m1 0x39e120, ios inline;
    bool initWithVertexShaderByteArray(char const*, char const*) = imac 0x42a930, m1 0x39d348, ios 0x135244;
    bool initWithVertexShaderFilename(char const*, char const*) = imac 0x42aa80, m1 0x39d4b8, ios inline;
    bool link() = imac 0x42ad00, m1 0x39d784, ios 0x135528;
    char const* logForOpenGLObject(unsigned int, GLInfoFunction, GLLogFunction) = imac 0x42ad40, m1 0x39d7c8, ios inline;
    char const* programLog() = imac 0x42b0d0, m1 0x39db84, ios inline;
    void reset() = imac 0x42bff0, m1 0x39eb50, ios 0x135eec;
    void setUniformLocationWith1f(int, float) = imac 0x42b920, m1 0x39e458, ios 0x1359bc;
    void setUniformLocationWith1i(int, int) = imac 0x42acc0, m1 0x39d730, ios 0x1354d4;
    void setUniformLocationWith2f(int, float, float) = imac 0x42b960, m1 0x39e4b8, ios 0x135a1c;
    void setUniformLocationWith2fv(int, float*, unsigned int) = imac 0x42bb30, m1 0x39e6f4, ios inline;
    void setUniformLocationWith2i(int, int, int) = imac 0x42b650, m1 0x39e128, ios inline;
    void setUniformLocationWith2iv(int, int*, unsigned int) = imac 0x42b830, m1 0x39e358, ios inline;
    void setUniformLocationWith3f(int, float, float, float) = imac 0x42b9f0, m1 0x39e564, ios 0x135ac8;
    void setUniformLocationWith3fv(int, float*, unsigned int) = imac 0x42bb80, m1 0x39e748, ios inline;
    void setUniformLocationWith3i(int, int, int, int) = imac 0x42b6e0, m1 0x39e1d4, ios inline;
    void setUniformLocationWith3iv(int, int*, unsigned int) = imac 0x42b880, m1 0x39e3ac, ios inline;
    void setUniformLocationWith4f(int, float, float, float, float) = imac 0x42ba90, m1 0x39e628, ios 0x135b8c;
    void setUniformLocationWith4fv(int, float*, unsigned int) = imac 0x42bc20, m1 0x39e7fc, ios 0x135cb4;
    void setUniformLocationWith4i(int, int, int, int, int) = imac 0x42b780, m1 0x39e28c, ios inline;
    void setUniformLocationWith4iv(int, int*, unsigned int) = imac 0x42b8d0, m1 0x39e404, ios inline;
    void setUniformLocationWithMatrix3fv(int, float*, unsigned int) = imac 0x42bbd0, m1 0x39e7a0, ios 0x135c58;
    void setUniformLocationWithMatrix4fv(int, float*, unsigned int) = imac 0x42bc70, m1 0x39e850, ios 0x135d08;
    void setUniformsForBuiltins() = imac 0x42bcc0, m1 0x39e8a8, ios 0x135d60;
    bool updateUniformLocation(int, void*, unsigned int) = imac 0x42b200, m1 0x39dcc0, ios 0x13556c;
    void updateUniforms() = imac 0x42abb0, m1 0x39d5fc, ios 0x1353d4;
    void use() = imac 0x42acb0, m1 0x39d728, ios 0x1354cc;
    char const* vertexShaderLog() = imac 0x42ae70, m1 0x39d90c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCGrabber : cocos2d::CCObject {
    CCGrabber() = imac 0x5fa1e0, m1 0x522cc8, ios inline;
    virtual ~CCGrabber() = imac 0x5fa340, m1 0x522e18, ios inline;

    void afterRender(cocos2d::CCTexture2D*) = imac 0x5fa300, m1 0x522de8, ios inline;
    void beforeRender(cocos2d::CCTexture2D*) = imac 0x5fa2a0, m1 0x522d90, ios inline;
    void grab(cocos2d::CCTexture2D*) = imac 0x5fa230, m1 0x522d20, ios inline;
}

[[link(win, android)]]
class cocos2d::CCGrid3D : cocos2d::CCGridBase {
    CCGrid3D() = imac 0x4e3d00, m1 0x43f294;
    virtual ~CCGrid3D() = imac 0x4e3d60, m1 0x43f2fc;

    static cocos2d::CCGrid3D* create(cocos2d::CCSize const&) = imac 0x4e3c50, m1 0x43f1c8;
    static cocos2d::CCGrid3D* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = imac 0x4e3b30, m1 0x43f0a4;

    virtual void blit() = imac 0x4e3e50, m1 0x43f3a8;
    virtual void reuse() = imac 0x4e45f0, m1 0x43f8fc;
    virtual void calculateVertexPoints() = imac 0x4e3ef0, m1 0x43f44c;

    cocos2d::ccVertex3F originalVertex(cocos2d::CCPoint const&) = imac 0x4e4560, m1 0x43f884;
    void setVertex(cocos2d::CCPoint const&, cocos2d::ccVertex3F const&) = imac 0x4e45a0, m1 0x43f8b8;
    cocos2d::ccVertex3F vertex(cocos2d::CCPoint const&) = imac 0x4e4520, m1 0x43f850;
}

[[link(win, android)]]
class cocos2d::CCGrid3DAction : cocos2d::CCGridAction {
    virtual cocos2d::CCGridBase* getGrid() = imac 0x20a270, m1 0x1b60c0;

    cocos2d::ccVertex3F originalVertex(cocos2d::CCPoint const&) = imac 0x20a2b0, m1 0x1b60f8;
    void setVertex(cocos2d::CCPoint const&, cocos2d::ccVertex3F const&) = imac 0x20a2e0, m1 0x1b6128;
    cocos2d::ccVertex3F vertex(cocos2d::CCPoint const&) = imac 0x20a280, m1 0x1b60c8;
}

[[link(win, android)]]
class cocos2d::CCGridAction : cocos2d::CCActionInterval {
    static cocos2d::CCGridAction* create(float, cocos2d::CCSize const&) = imac 0x209f80, m1 0x1b5dac;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x20a160, m1 0x1b5fc0;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x20a080, m1 0x1b5ed0;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x20a150, m1 0x1b5fbc;
    virtual bool initWithDuration(float, cocos2d::CCSize const&) = imac 0x20a050, m1 0x1b5e8c;
    virtual cocos2d::CCGridBase* getGrid() = imac 0x20a140, m1 0x1b5fb4;
}

[[link(win, android)]]
class cocos2d::CCGridBase : cocos2d::CCObject {

    virtual ~CCGridBase() = imac 0x4e3840, m1 0x43edf8;

    static cocos2d::CCGridBase* create(cocos2d::CCSize const&) = imac 0x4e3500, m1 0x43eab0;
    static cocos2d::CCGridBase* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = imac 0x4e36b0, m1 0x43ec68;

    virtual void blit() = imac 0x4e3b00, m1 0x43f098;
    virtual void reuse() = imac 0x4e3b10, m1 0x43f09c;
    virtual void calculateVertexPoints() = imac 0x4e3b20, m1 0x43f0a0;

    void afterDraw(cocos2d::CCNode*) = imac 0x4e3a40, m1 0x43efc8;
    void beforeDraw() = imac 0x4e3a10, m1 0x43ef94;
    bool initWithSize(cocos2d::CCSize const&) = imac 0x4e35c0, m1 0x43eb74;
    bool initWithSize(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = imac 0x4e3780, m1 0x43ed24;
    void set2DProjection() = imac 0x4e3980, m1 0x43ef18;
    void setActive(bool) = imac 0x4e3930, m1 0x43eed4;
    void setTextureFlipped(bool) = imac 0x4e3960, m1 0x43eef8;
}

[[link(win, android)]]
class cocos2d::CCHide : cocos2d::CCActionInstant {
    static cocos2d::CCHide* create() = imac 0x7ac5d0, m1 0x6b2d10, ios 0x1ada8c;

    // CCHide(cocos2d::CCHide const&);
    // CCHide();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7ac740, m1 0x6b2e94, ios 0x1adba4;
    virtual void update(float) = imac 0x7ac6d0, m1 0x6b2e28, ios 0x1adb8c;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x7ac6f0, m1 0x6b2e3c, ios 0x1adba0;
}

[[link(win, android)]]
class cocos2d::CCImage : cocos2d::CCObject {
    // int getBitsPerComponent() const;
    // unsigned char* getData();
    // int getDataLen();
    // unsigned short getHeight() const;
    // unsigned short getWidth() const;
    CCImage() = imac 0x489720, m1 0x3eef84, ios 0x2b008;
    virtual ~CCImage() = imac 0x489760, m1 0x3eefb0, ios 0x2b034;

    bool _initWithJpgData(void*, int);
    bool _initWithPngData(void*, int);
    bool _initWithRawData(void*, int, int, int, int, bool);
    bool _initWithTiffData(void*, int);
    // bool _initWithWebpData(void*, int);
    bool _saveImageToJPG(char const*);
    bool _saveImageToPNG(char const*, bool);
    bool initWithImageData(void*, int, cocos2d::CCImage::EImageFormat, int, int, int, int) = imac 0x489a30, m1 0x3ef41c, ios 0x2b19c;
    bool initWithImageFile(char const*, cocos2d::CCImage::EImageFormat) = imac 0x489820, m1 0x3ef070, ios 0x2b088;
    bool initWithImageFileThreadSafe(char const*, cocos2d::CCImage::EImageFormat) = imac 0x48a000, m1 0x3ef814;
    bool initWithString(char const*, int, int, cocos2d::CCImage::ETextAlign, char const*, int);
    // bool hasAlpha();
    // bool isPremultipliedAlpha();
    bool saveToFile(char const*, bool);
}

[[link(win, android)]]
class cocos2d::CCIMEDelegate {
    protected CCIMEDelegate() = imac 0x4bbc20, m1 0x41be44, ios 0x1d3818;
    virtual ~CCIMEDelegate() = imac 0x4bbe20, m1 0x41c054, ios 0x1d3958;

    virtual bool attachWithIME() = imac 0x4bbfa0, m1 0x41c1bc, ios 0x1d3a0c;
    virtual bool detachWithIME() = imac 0x4bc190, m1 0x41c3f4, ios 0x1d3b10;
}

[[link(win, android)]]
class cocos2d::CCIMEDispatcher {
    CCIMEDispatcher();
    ~CCIMEDispatcher();

    static cocos2d::CCIMEDispatcher* sharedDispatcher() = imac 0x4bbd10, m1 0x41bf40, ios 0x1d3858;

    void addDelegate(cocos2d::CCIMEDelegate*);
    bool attachDelegateWithIME(cocos2d::CCIMEDelegate*);
    bool detachDelegateWithIME(cocos2d::CCIMEDelegate*);
    void dispatchDeleteBackward() = imac 0x4bc490, m1 0x41c6f8, ios 0x1d3c1c;
    void dispatchDeleteForward() = imac 0x4bc4b0, m1 0x41c718;
    void dispatchInsertText(char const*, int, cocos2d::enumKeyCodes) = imac 0x4bc460, m1 0x41c6cc, ios 0x1d3bf0;
    void dispatchKeyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&);
    void dispatchKeyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&);
    void dispatchKeyboardWillHide();
    void dispatchKeyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
    void dispatchKeyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
    char const* getContentText();
    bool hasDelegate() = imac 0x4bc440, m1 0x41c6b8;
    void removeDelegate(cocos2d::CCIMEDelegate*);
}

[[link(win, android)]]
class cocos2d::CCJumpBy : cocos2d::CCActionInterval {
    static cocos2d::CCJumpBy* create(float, cocos2d::CCPoint const&, float, unsigned int) = imac 0x3b8fc0, m1 0x33b6a4, ios inline;

    // CCJumpBy(cocos2d::CCJumpBy const&);
    // CCJumpBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x3b9150, m1 0x33b7ec, ios inline;
    virtual void update(float t) = imac 0x3b9310, m1 0x33b97c, ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3b92c0, m1 0x33b928, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b9440, m1 0x33ba78, ios inline;

    bool initWithDuration(float, cocos2d::CCPoint const&, float, unsigned int) = imac 0x3b90e0, m1 0x33b790, ios inline;
}

[[link(win, android)]]
class cocos2d::CCJumpTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCJumpTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float) = imac 0x7b76c0, m1 0x6bd628;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7b7800, m1 0x6bd770;
    virtual void update(float) = imac 0x7b7940, m1 0x6bd89c;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float) = imac 0x7b77c0, m1 0x6bd72c;
}

[[link(win, android)]]
class cocos2d::CCJumpTo : cocos2d::CCActionInterval {
    static cocos2d::CCJumpTo* create(float, cocos2d::CCPoint const&, float, int) = imac 0x3b94a0, m1 0x33bad0, ios inline;

    // CCJumpTo(cocos2d::CCJumpTo const&);
    // CCJumpTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x3b95c0, m1 0x33bbc8, ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3b9730, m1 0x33bd10, ios inline;
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
    [[link(win, android)]]
    CCKeyboardDispatcher() = imac 0x203250, m1 0x1b0168;
    [[link(win, android)]]
    virtual ~CCKeyboardDispatcher() = imac 0x2032d0, m1 0x1b01e0;

    static cocos2d::enumKeyCodes convertKeyCode(cocos2d::enumKeyCodes) = imac 0x203870, m1 0x1b07d0;

    void addDelegate(cocos2d::CCKeyboardDelegate*) = m1 0x1b043c, imac 0x203530;
    bool dispatchKeyboardMSG(cocos2d::enumKeyCodes, bool, bool, double) = imac 0x2035b0, m1 0x1b04d4;
    void forceAddDelegate(cocos2d::CCKeyboardDelegate*) = m1 0x1b0498, imac 0x203580;
    void forceRemoveDelegate(cocos2d::CCKeyboardDelegate*) = m1 0x1b03a8, imac 0x2034a0;
    char const* keyToString(cocos2d::enumKeyCodes) = imac 0x2038c0, m1 0x1b0804;
    void removeDelegate(cocos2d::CCKeyboardDelegate*) = m1 0x1b02e0, imac 0x2033f0;
    void updateModifierKeys(bool, bool, bool, bool) = imac 0x203890, m1 0x1b07ec;

    cocos2d::CCArray* m_pDelegates;
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

    [[link(win, android)]]
    virtual ~CCKeyboardHandler() = imac 0x43e0b0, m1 0x3afb5c;

    static cocos2d::CCKeyboardHandler* handlerWithDelegate(cocos2d::CCKeyboardDelegate*) = imac 0x43e290, m1 0x3afd24;

    virtual bool initWithDelegate(cocos2d::CCKeyboardDelegate*) = imac 0x43e240, m1 0x3afcd0;

    cocos2d::CCKeyboardDelegate* getDelegate() = imac 0x43e0a0, m1 0x3afb54;
    void setDelegate(cocos2d::CCKeyboardDelegate*) = imac 0x43e1d0, m1 0x3afc64;
}

[[link(win, android)]]
class cocos2d::CCKeypadDispatcher : cocos2d::CCObject {
    // CCKeypadDispatcher(cocos2d::CCKeypadDispatcher const&);
    CCKeypadDispatcher() = imac 0x5f9420, m1 0x521f9c, ios 0x1ad530;
    virtual ~CCKeypadDispatcher() = imac 0x5f9490, m1 0x52200c, ios 0x1ad5a4;

    void addDelegate(cocos2d::CCKeypadDelegate*) = imac 0x5f96f0, m1 0x522268, ios 0x1ad6ec;
    bool dispatchKeypadMSG(cocos2d::ccKeypadMSGType) = imac 0x5f9770, m1 0x522300, ios 0x1ad770;
    void forceAddDelegate(cocos2d::CCKeypadDelegate*) = imac 0x5f9740, m1 0x5222c4, ios 0x1ad734;
    void forceRemoveDelegate(cocos2d::CCKeypadDelegate*) = imac 0x5f9660, m1 0x5221d4, ios 0x1ad658;
    void removeDelegate(cocos2d::CCKeypadDelegate*) = imac 0x5f95b0, m1 0x52210c, ios 0x1ad610;

    cocos2d::CCArray* m_pDelegates;
    bool m_bLocked;
    bool m_bToAdd;
    bool m_bToRemove;
    cocos2d::ccCArray* m_pHandlersToAdd;
    cocos2d::ccCArray* m_pHandlersToRemove;
}

[[link(win, android)]]
class cocos2d::CCKeypadHandler : cocos2d::CCObject {

    virtual ~CCKeypadHandler() = imac 0x3c18c0, m1 0x3431e0, ios 0x4b54c;

    static cocos2d::CCKeypadHandler* handlerWithDelegate(cocos2d::CCKeypadDelegate*) = imac 0x3c1aa0, m1 0x3433a8, ios 0x4b600;

    virtual bool initWithDelegate(cocos2d::CCKeypadDelegate*) = imac 0x3c1a50, m1 0x343354, ios 0x4b5b8;

    cocos2d::CCKeypadDelegate* getDelegate() = imac 0x3c18b0, m1 0x3431d8, ios 0x4b544;
    void setDelegate(cocos2d::CCKeypadDelegate*) = imac 0x3c19e0, m1 0x3432e8, ios inline;
}

[[link(win, android)]]
class cocos2d::CCLabelAtlas : cocos2d::CCAtlasNode, cocos2d::CCLabelProtocol {
    static cocos2d::CCLabelAtlas* create(char const*, char const*) = imac 0x799380, m1 0x6a0f40;
    static cocos2d::CCLabelAtlas* create(char const*, char const*, unsigned int, unsigned int, unsigned int) = imac 0x799180, m1 0x6a0d10;

    virtual void updateAtlasValues() = imac 0x799940, m1 0x6a14c4;
    virtual void setString(char const*) = imac 0x799c10, m1 0x6a1714;
    virtual char const* getString() = imac 0x799d00, m1 0x6a17ec;

    bool initWithString(char const*, char const*) = imac 0x799420, m1 0x6a0fd4;
    bool initWithString(char const*, char const*, unsigned int, unsigned int, unsigned int) = imac 0x799280, m1 0x6a0e24;
    bool initWithString(char const*, cocos2d::CCTexture2D*, unsigned int, unsigned int, unsigned int) = imac 0x799310, m1 0x6a0ebc;
}

[[link(win, android)]]
class cocos2d::CCLabelBMFont : cocos2d::CCSpriteBatchNode, cocos2d::CCLabelProtocol, cocos2d::CCRGBAProtocol {
    CCLabelBMFont() = imac 0x5d8aa0, m1 0x504818, ios 0x2fb4f0;
    virtual ~CCLabelBMFont() = imac 0x5d8bd0, m1 0x5048f4, ios 0x2fb5b4;

    static cocos2d::CCLabelBMFont* create() = imac 0x5d83c0, m1 0x5040c4, ios inline;
    static cocos2d::CCLabelBMFont* create(char const*, char const*) = imac 0x5d8630, m1 0x50438c, ios 0x2fb0e4;
    static cocos2d::CCLabelBMFont* create(char const* str, char const* fntFile, float width) = imac 0x5d8580, m1 0x5042cc, ios inline;
    static cocos2d::CCLabelBMFont* create(char const* str, char const* fntFile, float width, cocos2d::CCTextAlignment alignment) = imac 0x5d8430, m1 0x504148, ios inline;
    static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = imac 0x5d84e0, m1 0x50420c, ios 0x2fb024;
    static cocos2d::CCLabelBMFont* createBatched(char const*, char const*, cocos2d::CCArray*, int) = imac 0x5d89a0, m1 0x504700, ios 0x2fb3d8;
    static void purgeCachedData() = imac 0x5d8380, m1 0x50408c, ios 0x2fb020;

    virtual bool init() = imac 0x5d8a50, m1 0x5047c8, ios 0x2fb4a0;
    virtual void setScaleX(float) = imac 0x5db400, m1 0x506b4c, ios 0x2fcd64;
    virtual void setScaleY(float) = imac 0x5db420, m1 0x506b78, ios 0x2fcd90;
    virtual void setScale(float) = imac 0x5db3e0, m1 0x506b20, ios 0x2fcd38;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x5da1d0, m1 0x505d34, ios 0x2fc420;
    virtual void setString(char const*) = imac 0x5d9700, m1 0x505308, ios 0x2fbdcc;
    virtual void setString(char const*, bool) = imac 0x5d9750, m1 0x50532c, ios 0x2fbdf0;
    virtual char const* getString() = imac 0x5d9980, m1 0x505554, ios 0x2fbfd0;
    virtual void setCString(char const*) = imac 0x5d99d0, m1 0x50558c, ios 0x2fc008;
    virtual void updateLabel() = imac 0x5da210, m1 0x505d88, ios 0x2fc474;
    virtual void setAlignment(cocos2d::CCTextAlignment) = imac 0x5db380, m1 0x506af0, ios 0x2fcd08;
    virtual void setWidth(float) = imac 0x5db3a0, m1 0x506b00, ios 0x2fcd18;
    virtual void setLineBreakWithoutSpace(bool) = imac 0x5db3c0, m1 0x506b10, ios 0x2fcd28;
    virtual void setString(unsigned short*, bool) = imac 0x5d97d0, m1 0x5053b4, ios 0x2fbe78;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x5d9a30, m1 0x5055b8, ios 0x2fc034;
    virtual cocos2d::ccColor3B const& getColor() = imac 0x5d99f0, m1 0x505598, ios 0x2fc014;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = imac 0x5d9a10, m1 0x5055a8, ios 0x2fc024;
    virtual unsigned char getDisplayedOpacity() = imac 0x5d9bd0, m1 0x50575c, ios 0x2fc118;
    virtual unsigned char getOpacity() = imac 0x5d9bb0, m1 0x50574c, ios 0x2fc108;
    virtual void setOpacity(unsigned char) = imac 0x5d9bf0, m1 0x50576c, ios 0x2fc128;
    virtual void setOpacityModifyRGB(bool) = imac 0x5d9d30, m1 0x5058d8, ios 0x2fc1c4;
    virtual bool isOpacityModifyRGB() = imac 0x5d9e90, m1 0x505a38, ios 0x2fc274;
    virtual bool isCascadeColorEnabled() = imac 0x5da150, m1 0x505cf4, ios 0x2fc3e0;
    virtual void setCascadeColorEnabled(bool) = imac 0x5da170, m1 0x505d04, ios 0x2fc3f0;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = imac 0x5d9fb0, m1 0x505b60, ios 0x2fc314;
    virtual bool isCascadeOpacityEnabled() = imac 0x5da190, m1 0x505d14, ios 0x2fc400;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x5da1b0, m1 0x505d24, ios 0x2fc410;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x5d9eb0, m1 0x505a48, ios 0x2fc284;

    // void setIsBatched(bool);
    // void setTargetArray(cocos2d::CCArray*);
    void createFontChars() = imac 0x5d8e00, m1 0x504ae0, ios 0x2fb780;
    cocos2d::CCBMFontConfiguration* getConfiguration() const;
    // int getExtraKerning() const;
    char const* getFntFile() = imac 0x5db520, m1 0x506c78, ios inline;
    // bool getIsBatched() const;
    float getLetterPosXLeft(cocos2d::CCSprite*, float, bool) = imac 0x5db220, m1 0x5069a8, ios 0x2fcbc0;
    float getLetterPosXRight(cocos2d::CCSprite*, float, bool) = imac 0x5db2d0, m1 0x506a4c, ios 0x2fcc64;
    bool initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = imac 0x5d86e0, m1 0x504454, ios 0x2fb134;
    int kerningAmountForFirst(unsigned short, unsigned short) = imac 0x5d8ce0, m1 0x5049c0, ios 0x2fb668;
    void limitLabelWidth(float, float, float) = imac 0x5db560, m1 0x506c9c, ios 0x2fcdbc;
    // cocos2d::CCArray* getTargetArray() const;
    // void setExtraKerning(int);
    void setFntFile(char const* filename) = imac 0x5db440, m1 0x506ba4, ios inline;

    uint16_t* m_sString;
    gd::string m_sFntFile;
    uint16_t* m_sInitialString;
    gd::string m_sInitialStringUTF8;
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
    CCLabelTTF() = imac 0x3bd080, m1 0x33efa0, ios 0x6e708;
    virtual ~CCLabelTTF() = imac 0x3bd240, m1 0x33f120, ios 0x6e7d0;

    static cocos2d::CCLabelTTF* create() = imac 0x3bd400, m1 0x33f2c0, ios inline;
    static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize) = imac 0x3bd520, m1 0x33f3d4, ios inline;
    static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment hAlignment) = imac 0x3bd6a0, m1 0x33f530, ios inline;
    static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment hAlignment, cocos2d::CCVerticalTextAlignment vAlignment) = imac 0x3bd540, m1 0x33f3e8, ios inline;
    static cocos2d::CCLabelTTF* createWithFontDefinition(char const*, cocos2d::ccFontDefinition&) = imac 0x3bd820, m1 0x33f698, ios inline;

    virtual bool init() = imac 0x3bda00, m1 0x33f884, ios 0x6e954;
    virtual void setString(char const*) = imac 0x3bdb30, m1 0x33f980, ios 0x6e990;
    virtual char const* getString() = imac 0x3bdd60, m1 0x33fb7c, ios 0x6eae8;

    cocos2d::ccFontDefinition _prepareTextDefinition(bool) = imac 0x3be2a0, m1 0x33fff0, ios 0x6eb20;
    void _updateWithTextDefinition(cocos2d::ccFontDefinition&, bool) = imac 0x3bda60, m1 0x33f8c8, ios inline;
    char const* description() = imac 0x3bddb0, m1 0x33fbb4, ios inline;
    void disableShadow(bool) = imac 0x3be0f0, m1 0x33fe50, ios inline;
    void disableStroke(bool) = imac 0x3be110, m1 0x33fe58, ios inline;
    void enableShadow(cocos2d::CCSize const&, float, float, bool) = imac 0x3be0e0, m1 0x33fe4c, ios inline;
    void enableStroke(cocos2d::ccColor3B const&, float, bool) = imac 0x3be100, m1 0x33fe54, ios inline;
    // cocos2d::CCSize getDimensions();
    char const* getFontName() = imac 0x3bdf80, m1 0x33fd08, ios inline;
    // float getFontSize();
    // cocos2d::CCTextAlignment getHorizontalAlignment();
    cocos2d::ccFontDefinition* getTextDefinition() = imac 0x3be150, m1 0x33fe70, ios inline;
    bool initWithString(char const* label, char const* fontName, float fontSize) = imac 0x3bda30, m1 0x33f8ac, ios 0x6e97c;
    bool initWithString(char const* label, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment alignment) = imac 0x3bda50, m1 0x33f8c0, ios inline;
    bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment) = imac 0x3bd6b0, m1 0x33f538, ios 0x6e860;
    bool initWithStringAndTextDefinition(char const*, cocos2d::ccFontDefinition&) = imac 0x3bd990, m1 0x33f800, ios inline;
    // cocos2d::CCVerticalTextAlignment getVerticalAlignment();
    // void setDimensions(cocos2d::CCSize const&);
    void setFontFillColor(cocos2d::ccColor3B const&, bool) = imac 0x3be120, m1 0x33fe5c, ios inline;
    void setFontName(char const*) = imac 0x3bdfa0, m1 0x33fd20, ios inline;
    // void setFontSize(float);
    // void setHorizontalAlignment(cocos2d::CCTextAlignment);
    void setTextDefinition(cocos2d::ccFontDefinition*) = imac 0x3be130, m1 0x33fe60, ios inline;
    bool updateTexture() = imac 0x3bdb80, m1 0x33f9c8, ios 0x6e9d8;

    cocos2d::CCSize m_tDimensions;
    cocos2d::CCTextAlignment m_hAlignment;
    cocos2d::CCVerticalTextAlignment m_vAlignment;
    gd::string* m_pFontName;
    float m_fFontSize;
    gd::string m_string;
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
    CCLayer() = imac 0x4b0080, m1 0x412074, ios 0x148490;
    virtual ~CCLayer() = imac 0x4b0240, m1 0x4121cc, ios 0x14853c;

    static cocos2d::CCLayer* create() = imac 0x4b0640, m1 0x412490, ios 0x148650;

    virtual bool init() = imac 0x4b05e0, m1 0x412434, ios 0x1485f4;
    virtual void onEnter() = imac 0x4b0ed0, m1 0x412ce0, ios 0x148ce8;
    virtual void onEnterTransitionDidFinish() = imac 0x4b10d0, m1 0x412f04, ios 0x148ea4;
    virtual void onExit() = imac 0x4b0fd0, m1 0x412df0, ios 0x148dc8;
    virtual void registerWithTouchDispatcher() = imac 0x4b0770, m1 0x4125a0, ios 0x1486c4;
    virtual void registerScriptTouchHandler(int, bool, int, bool) = imac 0x4b07f0, m1 0x412620, ios 0x14873c;
    virtual void unregisterScriptTouchHandler() = imac 0x4b0850, m1 0x412680, ios 0x14879c;
    virtual bool isTouchEnabled() = imac 0x4b0900, m1 0x41273c, ios 0x1487c8;
    virtual void setTouchEnabled(bool) = imac 0x4b0910, m1 0x412744, ios 0x1487d0;
    virtual void setTouchMode(cocos2d::ccTouchesMode) = imac 0x4b0970, m1 0x4127a4, ios 0x148844;
    virtual int getTouchMode() = imac 0x4b0a20, m1 0x412864, ios 0x14891c;
    virtual void setTouchPriority(int) = imac 0x4b09c0, m1 0x412800, ios 0x1488ac;
    virtual int getTouchPriority() = imac 0x4b0a10, m1 0x41285c, ios 0x148914;
    virtual bool isAccelerometerEnabled() = imac 0x4b0a30, m1 0x41286c, ios 0x148924;
    virtual void setAccelerometerEnabled(bool) = imac 0x4b0a40, m1 0x412874, ios 0x14892c;
    virtual void setAccelerometerInterval(double) = imac 0x4b0a80, m1 0x4128b0, ios 0x148994;
    virtual bool isKeypadEnabled() = imac 0x4b0b80, m1 0x4129ac, ios 0x148a68;
    virtual void setKeypadEnabled(bool) = imac 0x4b0b90, m1 0x4129b4, ios 0x148a70;
    virtual bool isKeyboardEnabled() = imac 0x4b0c00, m1 0x412a2c, ios 0x148ae8;
    virtual void setKeyboardEnabled(bool) = imac 0x4b0c10, m1 0x412a34, ios 0x148af0;
    virtual bool isMouseEnabled() = imac 0x4b0c70, m1 0x412aa0, ios 0x148b5c;
    virtual void setMouseEnabled(bool) = imac 0x4b0c80, m1 0x412aa8, ios 0x148b64;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4b1110, m1 0x412f40, ios 0x148ee8;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4b1190, m1 0x412ff0, ios 0x148f98;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4b1210, m1 0x413080, ios 0x149028;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4b1290, m1 0x413110, ios 0x1490b8;
    virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b1310, m1 0x4131a0, ios 0x149148;
    virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b1390, m1 0x413230, ios 0x1491d8;
    virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b1410, m1 0x4132c0, ios 0x149268;
    virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b1490, m1 0x413350, ios 0x1492f8;
    virtual void setPreviousPriority(int) = imac 0x6b00, m1 0x600c, ios 0xa8d8;
    virtual int getPreviousPriority() = imac 0x6b10, m1 0x6014, ios 0xa8e0;
    virtual void didAccelerate(cocos2d::CCAcceleration*) = imac 0x4b0ab0, m1 0x4128e8, ios 0x1489e0;
    virtual void keyBackClicked() = imac 0x4b0d30, m1 0x412b50, ios 0x148bd0;
    virtual void keyMenuClicked() = imac 0x4b0dd0, m1 0x412bf0, ios 0x148c2c;
    virtual void keyDown(cocos2d::enumKeyCodes, double) = imac 0x4b0e50, m1 0x412c70, ios 0x148cac;

    // cocos2d::CCScriptHandlerEntry* getScriptAccelerateHandlerEntry();
    // cocos2d::CCScriptHandlerEntry* getScriptKeypadHandlerEntry();
    // cocos2d::CCTouchScriptHandlerEntry* getScriptTouchHandlerEntry();
    int excuteScriptTouchHandler(int, cocos2d::CCSet*) = imac 0x4b08c0, m1 0x4126f4, ios inline;
    int excuteScriptTouchHandler(int, cocos2d::CCTouch*) = imac 0x4b0880, m1 0x4126ac, ios inline;
    void registerScriptAccelerateHandler(int) = imac 0x4b0b30, m1 0x412970, ios inline;
    void registerScriptKeypadHandler(int) = imac 0x4b0ce0, m1 0x412b14, ios inline;
    void unregisterScriptAccelerateHandler() = imac 0x4b0340, m1 0x412278, ios inline;
    void unregisterScriptKeypadHandler() = imac 0x4b0310, m1 0x41224c, ios inline;

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
    CCLayerColor() = imac 0x4b22d0, m1 0x413e74, ios 0x14982c;
    virtual ~CCLayerColor() = imac 0x4b25b0, m1 0x41406c, ios 0x149890;

    static cocos2d::CCLayerColor* create() = imac 0x4b2930, m1 0x41429c, ios inline;
    static cocos2d::CCLayerColor* create(cocos2d::ccColor4B const&) = imac 0x4b2ce0, m1 0x414590, ios 0x1499c8;
    static cocos2d::CCLayerColor* create(cocos2d::ccColor4B const&, float, float) = imac 0x4b2b10, m1 0x414414, ios 0x1498ec;

    virtual bool init() = imac 0x4b2eb0, m1 0x4146dc, ios 0x149a8c;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x4b30a0, m1 0x4148ac, ios 0x149c3c;
    virtual void draw() = imac 0x4b31e0, m1 0x414a0c, ios 0x149ca8;
    virtual bool initWithColor(cocos2d::ccColor4B const&, float, float) = imac 0x4b2f00, m1 0x414728, ios 0x149ad8;
    virtual bool initWithColor(cocos2d::ccColor4B const&) = imac 0x4b2ff0, m1 0x414814, ios 0x149ba4;
    virtual void updateColor() = imac 0x4b3190, m1 0x414990, ios 0x149c54;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x4b32b0, m1 0x414ad8, ios 0x149d74;
    virtual void setOpacity(unsigned char) = imac 0x4b3430, m1 0x414c8c, ios 0x149dd0;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x4b2910, m1 0x41428c, ios 0x1498dc;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x4b28f0, m1 0x41427c, ios 0x1498cc;

    void addToVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x4b3060, m1 0x414880, ios 0x149c10;
    void changeHeight(float) = imac 0x4b3150, m1 0x414948, ios inline;
    void changeWidth(float) = imac 0x4b3110, m1 0x414904, ios inline;
    void changeWidthAndHeight(float, float) = imac 0x4b30d0, m1 0x4148c4, ios inline;
    void setVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x4b3040, m1 0x414864, ios 0x149bf4;

    std::array<cocos2d::ccVertex2F, 4> m_pSquareVertices;
    std::array<cocos2d::ccColor4F, 4> m_pSquareColors;
    cocos2d::ccBlendFunc m_tBlendFunc;
}

[[link(win, android)]]
class cocos2d::CCLayerGradient : cocos2d::CCLayerColor {
    static cocos2d::CCLayerGradient* create() = imac 0x4b3970, m1 0x415124, ios inline;
    static cocos2d::CCLayerGradient* create(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&) = imac 0x4b3560, m1 0x414dcc, ios 0x149e2c;
    static cocos2d::CCLayerGradient* create(cocos2d::ccColor4B const& a1, cocos2d::ccColor4B const& a2, cocos2d::CCPoint const& a3) = imac 0x4b3760, m1 0x414f74, ios inline;

    // CCLayerGradient(cocos2d::CCLayerGradient const&);
    // CCLayerGradient();
    virtual bool init() = imac 0x4b3b60, m1 0x4152b0, ios 0x149f2c;
    virtual void visit() = imac 0x4b4050, m1 0x415730, ios 0x14a374;
    virtual void updateColor() = imac 0x4b3ca0, m1 0x4153e0, ios 0x14a044;
    virtual bool initWithColor(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&) = imac 0x4b3b90, m1 0x4152e8, ios 0x149f64;
    virtual bool initWithColor(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&, cocos2d::CCPoint const&) = imac 0x4b3bf0, m1 0x415348, ios 0x149fc4;
    virtual cocos2d::ccColor3B const& getStartColor() = imac 0x4b3e90, m1 0x415600, ios 0x14a244;
    virtual void setStartColor(cocos2d::ccColor3B const&) = imac 0x4b3ea0, m1 0x415608, ios 0x14a24c;
    virtual cocos2d::ccColor3B const& getEndColor() = imac 0x4b3ef0, m1 0x415634, ios 0x14a278;
    virtual void setEndColor(cocos2d::ccColor3B const&) = imac 0x4b3ec0, m1 0x415614, ios 0x14a258;
    virtual unsigned char getStartOpacity() = imac 0x4b3f20, m1 0x41564c, ios 0x14a290;
    virtual void setStartOpacity(unsigned char) = imac 0x4b3f00, m1 0x41563c, ios 0x14a280;
    virtual unsigned char getEndOpacity() = imac 0x4b3f50, m1 0x415664, ios 0x14a2a8;
    virtual void setEndOpacity(unsigned char) = imac 0x4b3f30, m1 0x415654, ios 0x14a298;
    virtual cocos2d::CCPoint const& getVector() = imac 0x4b3f90, m1 0x41569c, ios 0x14a2e0;
    virtual void setVector(cocos2d::CCPoint const&) = imac 0x4b3f60, m1 0x41566c, ios 0x14a2b0;
    virtual void setCompressedInterpolation(bool) = imac 0x4b4030, m1 0x415720, ios 0x14a364;
    virtual bool isCompressedInterpolation() = imac 0x4b4020, m1 0x415718, ios 0x14a35c;

    // bool getShouldPremultiply() const;
    // void setShouldPremultiply(bool);
    void setValues(cocos2d::ccColor3B const&, unsigned char, cocos2d::ccColor3B const&, unsigned char, cocos2d::CCPoint const&) = imac 0x4b3fa0, m1 0x4156a4, ios 0x14a2e8;

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
    CCLayerMultiplex() = imac 0x4b41b0, m1 0x415830;
    virtual ~CCLayerMultiplex() = imac 0x4b42f0, m1 0x415910;

    static cocos2d::CCLayerMultiplex* create() = imac 0x4b4810, m1 0x415c50;
    static cocos2d::CCLayerMultiplex* create(cocos2d::CCLayer*, ...) = imac inline, m1 inline;
    static cocos2d::CCLayerMultiplex* createWithArray(cocos2d::CCArray*) = imac 0x4b49c0, m1 0x415da8;
    static cocos2d::CCLayerMultiplex* createWithLayer(cocos2d::CCLayer*) = imac 0x4b4800, m1 0x415c30;

    void addLayer(cocos2d::CCLayer*) = imac 0x4b4c10, m1 0x415f98;
    bool initWithArray(cocos2d::CCArray*) = imac 0x4b4b50, m1 0x415eec;
    bool initWithLayers(cocos2d::CCLayer*, va_list) = imac 0x4b46e0, m1 0x415b54;
    void switchTo(unsigned int) = imac 0x4b4c30, m1 0x415fa0;
    void switchToAndReleaseMe(unsigned int) = imac 0x4b4ca0, m1 0x41600c;
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA : cocos2d::CCLayer, cocos2d::CCRGBAProtocol {
    // static cocos2d::CCLayerRGBA* create();
    // CCLayerRGBA(cocos2d::CCLayerRGBA const&);
    CCLayerRGBA() = imac 0x4b1510, m1 0x4133e0, ios 0x149388;
    virtual ~CCLayerRGBA() = imac 0x4b17b0, m1 0x4135b0, ios 0x1493d8;

    virtual bool init() = imac 0x4b1af0, m1 0x4137c0, ios 0x149414;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x4b1d30, m1 0x4139f8, ios 0x14954c;
    virtual cocos2d::ccColor3B const& getColor() = imac 0x4b1cf0, m1 0x4139d8, ios 0x14952c;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = imac 0x4b1d10, m1 0x4139e8, ios 0x14953c;
    virtual unsigned char getDisplayedOpacity() = imac 0x4b1b90, m1 0x41385c, ios 0x149480;
    virtual unsigned char getOpacity() = imac 0x4b1b70, m1 0x41384c, ios 0x149470;
    virtual void setOpacity(unsigned char) = imac 0x4b1bb0, m1 0x41386c, ios 0x149490;
    virtual bool isCascadeColorEnabled() = imac 0x4b2290, m1 0x413e54, ios 0x14980c;
    virtual void setCascadeColorEnabled(bool) = imac 0x4b22b0, m1 0x413e64, ios 0x14981c;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = imac 0x4b2030, m1 0x413d24, ios 0x1496e8;
    virtual bool isCascadeOpacityEnabled() = imac 0x4b2250, m1 0x413e34, ios 0x1497ec;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x4b2270, m1 0x413e44, ios 0x1497fc;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x4b1eb0, m1 0x413b8c, ios 0x149620;

    uint8_t _displayedOpacity;
    uint8_t _realOpacity;
    cocos2d::ccColor3B _displayedColor;
    cocos2d::ccColor3B _realColor;
    bool _cascadeOpacityEnabled;
    bool _cascadeColorEnabled;
}

[[link(win, android)]]
class cocos2d::CCLens3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCLens3D* create(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float) = imac 0x27df80, m1 0x21ff78;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27e1b0, m1 0x2201a4;
    virtual void update(float) = imac 0x27e350, m1 0x220324;

    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float) = imac 0x27e0d0, m1 0x2200c4;
    void setPosition(cocos2d::CCPoint const&) = imac 0x27e170, m1 0x220160;
}

[[link(android)]]
class cocos2d::CCLightning : cocos2d::CCNode, cocos2d::CCRGBAProtocol {
    CCLightning() = win 0x44470, imac 0x5dd720, m1 0x508aa8, ios 0x347640;
    virtual ~CCLightning() = win inline, imac 0x5dd8c0, m1 0x508bf8, ios 0x3476e8;

    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint) = win inline, imac 0x5dd9e0, m1 0x508cd0, ios inline;
    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = win 0x445b0, imac 0x5ddba0, m1 0x508e3c, ios 0x347744;

    virtual void draw() = win 0x44770, imac 0x5dde90, m1 0x5090ec, ios 0x347928;
    virtual bool isOpacityModifyRGB() = win 0x449d0, imac 0x5de1b0, m1 0x509364, ios 0x347ab8;
    virtual void setOpacityModifyRGB(bool) = win 0x449e0, imac 0x5de1d0, m1 0x509374, ios 0x347ac8;
    virtual unsigned char getOpacity() = win 0x44980, imac 0x5de0e0, m1 0x5092ec, ios 0x347a40;
    virtual unsigned char getDisplayedOpacity() = win 0x44990, imac 0x5de100, m1 0x5092fc, ios 0x347a50;
    virtual void setOpacity(unsigned char) = win 0x449a0, imac 0x5de130, m1 0x509318, ios 0x347a6c;
    virtual void updateDisplayedOpacity(unsigned char) = win 0x449f0, imac 0x5de1f0, m1 0x509384, ios 0x347ad8;
    virtual bool isCascadeOpacityEnabled() = win 0x44a00, imac 0x5de210, m1 0x509394, ios 0x347ae8;
    virtual void setCascadeOpacityEnabled(bool) = win 0x44a10, imac 0x5de230, m1 0x5093a4, ios 0x347af8;
    virtual cocos2d::ccColor3B const& getColor() = win 0x449b0, imac 0x5de150, m1 0x509328, ios 0x347a7c;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = win 0x44a20, imac 0x5de250, m1 0x5093b4, ios 0x347b08;
    virtual void setColor(cocos2d::ccColor3B const&) = win 0x449c0, imac 0x5de170, m1 0x509338, ios 0x347a8c;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = win 0x44a30, imac 0x5de270, m1 0x5093c4, ios 0x347b18;
    virtual bool isCascadeColorEnabled() = win 0x44a40, imac 0x5de2b0, m1 0x5093ec, ios 0x347b40;
    virtual void setCascadeColorEnabled(bool) = win 0x44a50, imac 0x5de2d0, m1 0x5093fc, ios 0x347b50;

    bool initWithStrikePoint(cocos2d::CCPoint) = win inline, imac 0x5ddb40, m1 0x508de8, ios inline;
    bool initWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = win 0x44650, imac 0x5ddcf0, m1 0x508f5c, ios 0x3477dc;
    void strike() = win 0x448f0, imac 0x5dde30, m1 0x509080, ios 0x3478bc;
    void strikeFinished() = win 0x44960, imac 0x5de0c0, m1 0x5092d0, ios 0x347a24;
    void strikeRandom() = win inline, imac 0x5ddfe0, m1 0x5091e8, ios inline;
    void strikeWithSeed(uint64_t seed) = win inline, imac 0x5de050, m1 0x509260, ios inline;

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
    static cocos2d::CCLiquid* create(float, cocos2d::CCSize const&, unsigned int, float) = imac 0x27ee60, m1 0x220d2c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27efa0, m1 0x220e74;
    virtual void update(float) = imac 0x27f0e0, m1 0x220fa0;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float) = imac 0x27ef60, m1 0x220e30;
}

[[link(win, android)]]
class cocos2d::CCMenu : cocos2d::CCLayerRGBA {
    // static cocos2d::CCMenu* create(cocos2d::CCMenuItem*, ...) = ios 0x1d8d28, m1 0x6a6d58, imac 0x79e7b0;

    static cocos2d::CCMenu* create() = imac 0x792c40, m1 0x69b524, ios 0x1d7eac;
    static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*) = imac 0x792e40, m1 0x69b67c, ios 0x1d7f58;
    static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*) = imac 0x793090, m1 0x69b8c8, ios 0x1d8198;

    virtual bool init() = imac 0x7930a0, m1 0x69b8e8, ios 0x1d81b8;
    virtual void addChild(cocos2d::CCNode*) = imac 0x7930b0, m1 0x69b8f0, ios 0x1d81c0;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x7930c0, m1 0x69b8f4, ios 0x1d81c4;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x7930d0, m1 0x69b8f8, ios 0x1d81c8;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x793140, m1 0x69b948, ios 0x1d8214;
    virtual void onExit() = imac 0x7930e0, m1 0x69b8fc, ios 0x1d81cc;
    virtual void registerWithTouchDispatcher() = imac 0x793280, m1 0x69baa4, ios 0x1d8314;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x7932d0, m1 0x69baf4, ios 0x1d8364;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x793580, m1 0x69bdcc, ios 0x1d8550;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x7934a0, m1 0x69bcdc, ios 0x1d8460;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x793520, m1 0x69bd64, ios 0x1d84e8;

    // CCMenu(cocos2d::CCMenu const&);
    // CCMenu();
    void alignItemsHorizontally();
    void alignItemsHorizontallyWithPadding(float) = imac 0x793920, m1 0x69c108, ios 0x1d87a0;
    // void alignItemsInColumns(unsigned int, ...);
    // void alignItemsInColumns(unsigned int, char*);
    void alignItemsInColumnsWithArray(cocos2d::CCArray*);
    // void alignItemsInRows(unsigned int, ...);
    // void alignItemsInRows(unsigned int, char*);
    void alignItemsInRowsWithArray(cocos2d::CCArray*);
    void alignItemsVertically();
    void alignItemsVerticallyWithPadding(float) = imac 0x7936b0, m1 0x69bf08, ios 0x1d85b8;
    // static cocos2d::CCMenu* createWithItems(cocos2d::CCMenuItem*, char*);
    void giveMenuTouchPriority() = imac 0x7931b0, m1 0x69b9dc, ios 0x1d8284;
    bool initWithArray(cocos2d::CCArray*) = imac 0x792f10, m1 0x69b734, ios 0x1d8004;
    cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*) = imac 0x7933a0, m1 0x69bbc4, ios 0x1d8414;
    cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*, bool) = imac 0x794a50, m1 0x69ce24, ios 0x1d8980;
    void setHandlerPriority(int);

    bool m_bEnabled;
    cocos2d::tCCMenuState m_eState;
    cocos2d::CCMenuItem* m_pSelectedItem;
}

[[link(win, android)]]
class cocos2d::CCMenuItem : cocos2d::CCNodeRGBA {

    virtual ~CCMenuItem() = imac 0x3be830, m1 0x3404a0, ios 0x4cb74;

    static cocos2d::CCMenuItem* create() = imac 0x3be620, m1 0x3402cc;
    static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3be6e0, m1 0x340374;

    virtual void activate() = imac 0x3be9f0, m1 0x34063c, ios 0x4cc4c;
    virtual void selected() = imac 0x3be960, m1 0x3405b8, ios 0x4cbc8;
    virtual void unselected() = imac 0x3be970, m1 0x3405c4, ios 0x4cbd4;
    virtual void registerScriptTapHandler(int) = imac 0x3be980, m1 0x3405cc, ios 0x4cbdc;
    virtual void unregisterScriptTapHandler() = imac 0x3be9b0, m1 0x3405fc, ios 0x4cc0c;
    virtual bool isEnabled() = imac 0x3bea70, m1 0x3406c4, ios 0x4ccd4;
    virtual void setEnabled(bool) = imac 0x3bea60, m1 0x3406bc, ios 0x4cccc;
    virtual bool isSelected() = imac 0x3bead0, m1 0x3406e8, ios 0x4ccf8;

    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3be7b0, m1 0x340430;
    // CCMenuItem(cocos2d::CCMenuItem const&);
    // CCMenuItem();
    cocos2d::CCRect rect() = imac 0x3bea80, m1 0x3406cc, ios 0x4ccdc;
    // int getScriptTapHandler();
    void setTarget(cocos2d::CCObject* rec, cocos2d::SEL_MenuHandler selector) = imac 0x3beae0, m1 0x3406f0, ios inline;

    bool m_bSelected;
    bool m_bEnabled;
    cocos2d::CCObject* m_pListener;
    cocos2d::SEL_MenuHandler m_pfnSelector;
    int m_nScriptTapHandler;
    float m_fSizeMult;
}

[[link(win, android)]]
class cocos2d::CCMenuItemAtlasFont : cocos2d::CCMenuItemLabel {
    static cocos2d::CCMenuItemAtlasFont* create(char const*, char const*, int, int, char);
    static cocos2d::CCMenuItemAtlasFont* create(char const*, char const*, int, int, char, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

    bool initWithString(char const*, char const*, int, int, char, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
}

[[link(win, android)]]
class cocos2d::CCMenuItemFont : cocos2d::CCMenuItemLabel {
    static cocos2d::CCMenuItemFont* create(char const*);
    static cocos2d::CCMenuItemFont* create(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
    static char const* fontName();
    static unsigned int fontSize();
    static void setFontName(char const*);
    static void setFontSize(unsigned int);

    char const* fontNameObj();
    unsigned int fontSizeObj();
    bool initWithString(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
    void recreateLabel();
    void setFontNameObj(char const*);
    void setFontSizeObj(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCMenuItemImage : cocos2d::CCMenuItemSprite {
    static cocos2d::CCMenuItemImage* create() = imac 0x3c0260, m1 0x341df4, ios inline;
    static cocos2d::CCMenuItemImage* create(char const*, char const*) = imac 0x3c05b0, m1 0x342168, ios inline;
    static cocos2d::CCMenuItemImage* create(char const*, char const*, char const*) = imac 0x3c0810, m1 0x342388, ios inline;
    static cocos2d::CCMenuItemImage* create(char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3c0740, m1 0x3422d0, ios inline;
    static cocos2d::CCMenuItemImage* create(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3c0660, m1 0x34220c, ios inline;

    virtual bool init() = imac 0x3c03a0, m1 0x341f30, ios 0x4d25c;

    bool initWithNormalImage(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3c0470, m1 0x342018, ios 0x4d28c;
    void setDisabledSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3c0930, m1 0x342498, ios inline;
    void setNormalSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3c08d0, m1 0x342430, ios inline;
    void setSelectedSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3c0900, m1 0x342464, ios inline;
}

[[link(win, android)]]
class cocos2d::CCMenuItemLabel : cocos2d::CCMenuItem {

    ~CCMenuItemLabel() = imac 0x3bef50, m1 0x340b2c;

    static cocos2d::CCMenuItemLabel* create(cocos2d::CCNode*);
    static cocos2d::CCMenuItemLabel* create(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

    virtual cocos2d::ccColor3B const& getDisabledColor() = imac 0x3beb00, m1 0x3406fc;
    virtual void setDisabledColor(cocos2d::ccColor3B const&) = imac 0x3beb10, m1 0x340704;
    virtual cocos2d::CCNode* getLabel() = imac 0x3beb30, m1 0x340718;
    virtual void setLabel(cocos2d::CCNode*) = imac 0x3beb40, m1 0x340720;
    virtual void activate() = imac 0x3bf0e0, m1 0x340cb0;
    virtual void selected() = imac 0x3bf170, m1 0x340d54;
    virtual void unselected() = imac 0x3bf200, m1 0x340dfc;
    virtual void setEnabled(bool) = imac 0x3bf260, m1 0x340e6c;

    bool initWithLabel(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
    void setString(char const*);
}

[[link(win, android)]]
class cocos2d::CCMenuItemSprite : cocos2d::CCMenuItem {
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*) = imac 0x3bfd90, m1 0x341930, ios inline;
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3bff20, m1 0x341aac, ios inline;
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3bfdb0, m1 0x341940, ios inline;

    virtual void selected() = imac 0x3c0030, m1 0x341bd8, ios 0x4d04c;
    virtual void unselected() = imac 0x3c00d0, m1 0x341c64, ios 0x4d0d8;
    virtual void setEnabled(bool) = imac 0x3c0150, m1 0x341ce4, ios 0x4d158;
    virtual cocos2d::CCNode* getNormalImage() = imac 0x3bfb60, m1 0x3416fc, ios 0x4cd00;
    virtual void setNormalImage(cocos2d::CCNode*) = imac 0x3bfb70, m1 0x341704, ios 0x4cd08;
    virtual cocos2d::CCNode* getSelectedImage() = imac 0x3bfc30, m1 0x3417d0, ios 0x4cdd4;
    virtual void setSelectedImage(cocos2d::CCNode*) = imac 0x3bfc40, m1 0x3417d8, ios 0x4cddc;
    virtual cocos2d::CCNode* getDisabledImage() = imac 0x3bfce0, m1 0x341880, ios 0x4ce84;
    virtual void setDisabledImage(cocos2d::CCNode*) = imac 0x3bfcf0, m1 0x341888, ios 0x4ce8c;
    virtual void updateImagesVisibility() = imac 0x3c0170, m1 0x341d04, ios 0x4d178;

    bool initWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3bff40, m1 0x341ac0, ios 0x4cf34;

    cocos2d::CCNode* m_pNormalImage;
    cocos2d::CCNode* m_pSelectedImage;
    cocos2d::CCNode* m_pDisabledImage;
}

[[link(win, android)]]
class cocos2d::CCMenuItemToggle : cocos2d::CCMenuItem {

    virtual ~CCMenuItemToggle() = imac 0x3c1180, m1 0x342b3c;

    static cocos2d::CCMenuItemToggle* create();
    static cocos2d::CCMenuItemToggle* create(cocos2d::CCMenuItem*);
    static cocos2d::CCMenuItemToggle* createWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCArray*);
    static cocos2d::CCMenuItemToggle* createWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCMenuItem*);

    virtual unsigned int getSelectedIndex() = imac 0x3c1430, m1 0x342dbc;
    virtual void setSelectedIndex(unsigned int) = imac 0x3c1340, m1 0x342cc0;
    virtual cocos2d::CCArray* getSubItems() = imac 0x3c09a0, m1 0x342508;
    virtual void setSubItems(cocos2d::CCArray*) = imac 0x3c0960, m1 0x3424cc;
    virtual void activate() = imac 0x3c14a0, m1 0x342e20;
    virtual void selected() = imac 0x3c1440, m1 0x342dc4;
    virtual void unselected() = imac 0x3c1470, m1 0x342df4;
    virtual void setEnabled(bool) = imac 0x3c1550, m1 0x342ed0;

    void addSubItem(cocos2d::CCMenuItem*);
    bool initWithItem(cocos2d::CCMenuItem*);
    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCMenuItem*, va_list);
    cocos2d::CCMenuItem* selectedItem();
}

[[link(win, android)]]
class cocos2d::CCMotionStreak : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    // CCMotionStreak(cocos2d::CCMotionStreak const&);
    CCMotionStreak() = imac 0x576060, m1 0x4c3c5c, ios 0x176a64;
    virtual ~CCMotionStreak() = imac 0x576200, m1 0x4c3d94, ios 0x176b00;

    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::ccColor3B const&, char const*) = imac 0x576320, m1 0x4c3e48, ios 0x176bb4;
    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::ccColor3B const&, cocos2d::CCTexture2D*) = imac 0x5764e0, m1 0x4c3fdc, ios 0x176cbc;

    virtual void update(float) = imac 0x576a90, m1 0x4c4484, ios 0x177020;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x5767f0, m1 0x4c428c, ios 0x176ef0;
    virtual void draw() = imac 0x577140, m1 0x4c4c40, ios 0x17750c;
    virtual unsigned char getOpacity() = imac 0x5769a0, m1 0x4c43ec, ios 0x176f88;
    virtual void setOpacity(unsigned char) = imac 0x576980, m1 0x4c43e4, ios 0x176f80;
    virtual void setOpacityModifyRGB(bool) = imac 0x5769c0, m1 0x4c43fc, ios 0x176f98;
    virtual bool isOpacityModifyRGB() = imac 0x5769e0, m1 0x4c4404, ios 0x176fa0;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x576940, m1 0x4c43c4, ios 0x176f60;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x576960, m1 0x4c43d4, ios 0x176f70;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x576890, m1 0x4c4324, ios 0x176f00;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x5768b0, m1 0x4c4334, ios 0x176f10;

    void enableRepeatMode(float) = imac 0x576a00, m1 0x4c4414, ios 0x176fb0;
    bool initWithFade(float, float, float, cocos2d::ccColor3B const&, char const*) = imac 0x576470, m1 0x4c3f64, ios 0x176c44;
    bool initWithFade(float, float, float, cocos2d::ccColor3B const&, cocos2d::CCTexture2D*) = imac 0x576620, m1 0x4c40e8, ios 0x176d4c;
    // bool isFastMode();
    // bool isStartingPositionInitialized();
    void reset() = imac 0x577120, m1 0x4c4c34, ios 0x177500;
    void resumeStroke() = imac 0x576a80, m1 0x4c4478, ios 0x177014;
    // bool getDontOpacityFade() const;
    // float getM_fMaxSeg() const;
    // void setDontOpacityFade(bool);
    // void setFastMode(bool);
    // void setM_fMaxSeg(float);
    // void setStartingPositionInitialized(bool);
    void setStroke(float) = imac 0x577110, m1 0x4c4c2c, ios 0x1774f8;
    void stopStroke() = imac 0x576a70, m1 0x4c4470, ios 0x17700c;
    void tintWithColor(cocos2d::ccColor3B) = imac 0x576810, m1 0x4c429c, ios inline;
    void updateFade(float) = imac 0x576a50, m1 0x4c4460, ios 0x176ffc;

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
    CCMouseDispatcher() = imac 0x570b50, m1 0x4be920, ios 0x2fe080;
    virtual ~CCMouseDispatcher() = imac 0x570bc0, m1 0x4be990, ios 0x2fe0f4;

    void addDelegate(cocos2d::CCMouseDelegate*) = imac 0x570e20, m1 0x4bebec, ios 0x2fe23c;
    bool dispatchScrollMSG(float, float) = imac 0x570ea0, m1 0x4bec84, ios inline;
    void forceAddDelegate(cocos2d::CCMouseDelegate*) = imac 0x570e70, m1 0x4bec48, ios inline;
    void forceRemoveDelegate(cocos2d::CCMouseDelegate*) = imac 0x570d90, m1 0x4beb58, ios 0x2fe1a8;
    void removeDelegate(cocos2d::CCMouseDelegate*) = imac 0x570ce0, m1 0x4bea90, ios 0x2fe160;

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
    virtual ~CCMouseHandler() = imac 0x284860, m1 0x22638c, ios 0x84748;

    static cocos2d::CCMouseHandler* handlerWithDelegate(cocos2d::CCMouseDelegate*) = imac 0x284a40, m1 0x226554, ios 0x847fc;

    virtual bool initWithDelegate(cocos2d::CCMouseDelegate*) = imac 0x2849f0, m1 0x226500, ios 0x847b4;

    cocos2d::CCMouseDelegate* getDelegate() = imac 0x284850, m1 0x226384, ios 0x84740;
    void setDelegate(cocos2d::CCMouseDelegate*) = imac 0x284980, m1 0x226494, ios inline;

    cocos2d::CCMouseDelegate* m_pDelegate;
}

[[link(win, android)]]
class cocos2d::CCMoveBy : cocos2d::CCActionInterval {
    static cocos2d::CCMoveBy* create(float, cocos2d::CCPoint const&) = imac 0x3b8170, m1 0x33aa8c, ios 0x18b71c;

    // CCMoveBy(cocos2d::CCMoveBy const&);
    // CCMoveBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b82b0, m1 0x33ab9c, ios 0x18b7ec;
    virtual void update(float) = imac 0x3b84a0, m1 0x33ad5c, ios 0x18b9a0;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b8400, m1 0x33acc4, ios 0x18b908;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b8450, m1 0x33ad18, ios 0x18b95c;

    bool initWithDuration(float, cocos2d::CCPoint const&) = imac 0x3b8270, m1 0x33ab64, ios inline;
}

[[link(win, android)]]
class cocos2d::CCMoveTo : cocos2d::CCMoveBy {
    static cocos2d::CCMoveTo* create(float, cocos2d::CCPoint const&) = imac 0x3b8570, m1 0x33ae18, ios 0x18ba5c;

    // CCMoveTo(cocos2d::CCMoveTo const&);
    // CCMoveTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b86c0, m1 0x33af38, ios 0x18bb3c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b8820, m1 0x33b074, ios 0x18bc6c;

    bool initWithDuration(float, cocos2d::CCPoint const&) = imac 0x3b8680, m1 0x33af00, ios inline;
}

[[link(win, android)]]
class cocos2d::CCNode : cocos2d::CCObject {
    // CCNode(cocos2d::CCNode const&);
    CCNode() = imac 0x272220, m1 0x214c94, ios 0x23ade0;
    virtual ~CCNode() = imac 0x2723d0, m1 0x214e20, ios 0x23af3c;

    static cocos2d::CCNode* create() = imac 0x272d60, m1 0x2155b0, ios 0x23b69c;
    static void resetGlobalOrderOfArrival() = imac 0x272210, m1 0x214c84, ios 0x23add0;

    virtual void update(float) = imac 0x2742a0, m1 0x216a60, ios 0x23c624;
    virtual bool init() = imac 0x272560, m1 0x214f70, ios 0x23b06c;
    virtual void setZOrder(int) = imac 0x2725f0, m1 0x214fc0, ios 0x23b0bc;
    virtual void _setZOrder(int) = imac 0x2725e0, m1 0x214fb8, ios 0x23b0b4;
    virtual int getZOrder() = imac 0x2725d0, m1 0x214fb0, ios 0x23b0ac;
    virtual void setVertexZ(float) = imac 0x272640, m1 0x215018, ios 0x23b114;
    virtual float getVertexZ() = imac 0x272630, m1 0x215010, ios 0x23b10c;
    virtual void setScaleX(float) = imac 0x272760, m1 0x2150c8, ios 0x23b1c4;
    virtual float getScaleX() = imac 0x272750, m1 0x2150c0, ios 0x23b1bc;
    virtual void setScaleY(float) = imac 0x272790, m1 0x2150e4, ios 0x23b1e0;
    virtual float getScaleY() = imac 0x272780, m1 0x2150dc, ios 0x23b1d8;
    virtual void setScale(float) = imac 0x272710, m1 0x215098, ios 0x23b194;
    virtual float getScale() = imac 0x272700, m1 0x215090, ios 0x23b18c;
    virtual void setScale(float, float) = imac 0x272730, m1 0x2150ac, ios 0x23b1a8;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x2727c0, m1 0x215100, ios 0x23b1fc;
    virtual cocos2d::CCPoint const& getPosition() = imac 0x2727b0, m1 0x2150f8, ios 0x23b1f4;
    virtual void setPosition(float, float) = imac 0x272800, m1 0x21512c, ios 0x23b228;
    virtual void getPosition(float*, float*) = imac 0x2727e0, m1 0x215118, ios 0x23b214;
    virtual void setPositionX(float) = imac 0x272860, m1 0x21517c, ios 0x23b278;
    virtual float getPositionX() = imac 0x272840, m1 0x21516c, ios 0x23b268;
    virtual void setPositionY(float) = imac 0x2728a0, m1 0x2151c0, ios 0x23b2bc;
    virtual float getPositionY() = imac 0x272850, m1 0x215174, ios 0x23b270;
    virtual void setSkewX(float) = imac 0x272580, m1 0x214f80, ios 0x23b07c;
    virtual float getSkewX() = imac 0x272570, m1 0x214f78, ios 0x23b074;
    virtual void setSkewY(float) = imac 0x2725b0, m1 0x214f9c, ios 0x23b098;
    virtual float getSkewY() = imac 0x2725a0, m1 0x214f94, ios 0x23b090;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x272a40, m1 0x215330, ios 0x23b41c;
    virtual cocos2d::CCPoint const& getAnchorPoint() = imac 0x272a30, m1 0x215328, ios 0x23b414;
    virtual cocos2d::CCPoint const& getAnchorPointInPoints() = imac 0x272a20, m1 0x215320, ios 0x23b40c;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x272b00, m1 0x2153e4, ios 0x23b4d0;
    virtual cocos2d::CCSize const& getContentSize() const = imac 0x272ac0, m1 0x2153a4, ios 0x23b490;
    virtual cocos2d::CCSize getScaledContentSize() = imac 0x272ad0, m1 0x2153ac, ios 0x23b498;
    virtual void setVisible(bool) = imac 0x272a10, m1 0x215318, ios 0x23b404;
    virtual bool isVisible() = imac 0x272a00, m1 0x215310, ios 0x23b3fc;
    virtual void setRotation(float) = imac 0x272660, m1 0x215028, ios 0x23b124;
    virtual float getRotation() = imac 0x272650, m1 0x215020, ios 0x23b11c;
    virtual void setRotationX(float) = imac 0x2726b0, m1 0x215060, ios 0x23b15c;
    virtual float getRotationX() = imac 0x2726a0, m1 0x215058, ios 0x23b154;
    virtual void setRotationY(float) = imac 0x2726e0, m1 0x21507c, ios 0x23b178;
    virtual float getRotationY() = imac 0x2726d0, m1 0x215074, ios 0x23b170;
    virtual void setOrderOfArrival(unsigned int) = imac 0x272c20, m1 0x2154b0, ios 0x23b59c;
    virtual unsigned int getOrderOfArrival() = imac 0x272c10, m1 0x2154a8, ios 0x23b594;
    virtual void setGLServerState(cocos2d::ccGLServerState) = imac 0x272c60, m1 0x2154d0, ios 0x23b5bc;
    virtual cocos2d::ccGLServerState getGLServerState() = imac 0x272c50, m1 0x2154c8, ios 0x23b5b4;
    virtual void ignoreAnchorPointForPosition(bool) = imac 0x272bc0, m1 0x215478, ios 0x23b564;
    virtual bool isIgnoreAnchorPointForPosition() = imac 0x272bb0, m1 0x215470, ios 0x23b55c;
    virtual void addChild(cocos2d::CCNode*) = imac 0x2730d0, m1 0x215920, ios 0x23b96c;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x2730b0, m1 0x215910, ios 0x23b95c;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x272f60, m1 0x2157b8, ios 0x23b834;
    virtual cocos2d::CCNode* getChildByTag(int) = imac 0x272ee0, m1 0x215734, ios 0x23b7c0;
    virtual cocos2d::CCArray* getChildren() = imac 0x2728e0, m1 0x215208, ios 0x23b304;
    virtual unsigned int getChildrenCount() const = imac 0x272930, m1 0x21525c, ios 0x23b358;
    virtual void setParent(cocos2d::CCNode*) = imac 0x272ba0, m1 0x215468, ios 0x23b554;
    virtual cocos2d::CCNode* getParent() = imac 0x272b90, m1 0x215460, ios 0x23b54c;
    virtual void removeFromParent() = imac 0x2730f0, m1 0x215934, ios 0x23b980;
    virtual void removeFromParentAndCleanup(bool) = imac 0x273110, m1 0x215944, ios 0x23b990;
    virtual void removeMeAndCleanup() = imac 0x273140, m1 0x215964, ios 0x23b9b0;
    virtual void removeChild(cocos2d::CCNode*) = imac 0x273160, m1 0x215974, ios 0x23b9c0;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x273180, m1 0x215984, ios 0x23b9d0;
    virtual void removeChildByTag(int) = imac 0x2732d0, m1 0x215b00, ios 0x23ba90;
    virtual void removeChildByTag(int, bool) = imac 0x2732f0, m1 0x215b10, ios 0x23baa0;
    virtual void removeAllChildren() = imac 0x273330, m1 0x215b60, ios 0x23baf0;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x273350, m1 0x215b70, ios 0x23bb00;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x273460, m1 0x215ca4, ios 0x23bbe0;
    virtual void sortAllChildren() = imac 0x2735b0, m1 0x215dc0, ios 0x23bca8;
    virtual cocos2d::CCGridBase* getGrid() = imac 0x2729b0, m1 0x2152cc, ios 0x23b3b8;
    virtual void setGrid(cocos2d::CCGridBase*) = imac 0x2729c0, m1 0x2152d4, ios 0x23b3c0;
    virtual void* getUserData() = imac 0x272bf0, m1 0x215498, ios 0x23b584;
    virtual void setUserData(void*) = imac 0x272c00, m1 0x2154a0, ios 0x23b58c;
    virtual cocos2d::CCObject* getUserObject() = imac 0x272c40, m1 0x2154c0, ios 0x23b5ac;
    virtual void setUserObject(cocos2d::CCObject*) = imac 0x272c70, m1 0x2154d8, ios 0x23b5c4;
    virtual cocos2d::CCGLProgram* getShaderProgram() = imac 0x272c30, m1 0x2154b8, ios 0x23b5a4;
    virtual void setShaderProgram(cocos2d::CCGLProgram*) = imac 0x272cb0, m1 0x215514, ios 0x23b600;
    virtual cocos2d::CCCamera* getCamera() = imac 0x272950, m1 0x21526c, ios 0x23b368;
    virtual bool isRunning() = imac 0x272b80, m1 0x215458, ios 0x23b544;
    virtual void registerScriptHandler(int) = imac 0x273ee0, m1 0x216734, ios 0x23c3c0;
    virtual void unregisterScriptHandler() = imac 0x273f10, m1 0x216764, ios 0x23c3f0;
    virtual void onEnter() = imac 0x273bc0, m1 0x2163fc, ios 0x23c0dc;
    virtual void onEnterTransitionDidFinish() = imac 0x273ce0, m1 0x216528, ios 0x23c1d4;
    virtual void onExit() = imac 0x273de0, m1 0x21663c, ios 0x23c2e8;
    virtual void onExitTransitionDidStart() = imac 0x273d50, m1 0x2165a8, ios 0x23c254;
    virtual void cleanup() = imac 0x272dc0, m1 0x215630, ios 0x23b710;
    virtual void draw() = imac 0x273980, m1 0x2161d0, ios 0x23bec0;
    virtual void visit() = imac 0x273990, m1 0x2161d4, ios 0x23bec4;
    virtual void setActionManager(cocos2d::CCActionManager*) = imac 0x273f50, m1 0x2167a4, ios 0x23c430;
    virtual cocos2d::CCActionManager* getActionManager() = imac 0x273fa0, m1 0x2167f4, ios 0x23c480;
    virtual void setScheduler(cocos2d::CCScheduler*) = imac 0x274060, m1 0x216860, ios 0x23c4d8;
    virtual cocos2d::CCScheduler* getScheduler() = imac 0x2740b0, m1 0x2168b0, ios 0x23c528;
    virtual void updateTransform() = imac 0x274ec0, m1 0x217670, ios 0x23d03c;
    virtual cocos2d::CCAffineTransform const nodeToParentTransform() = imac 0x274310, m1 0x216ae0, ios 0x23c6a4;
    virtual cocos2d::CCAffineTransform const nodeToParentTransformFast() = imac 0x274620, m1 0x216da4, ios 0x23c944;
    virtual cocos2d::CCAffineTransform const parentToNodeTransform() = imac 0x274a50, m1 0x217220, ios 0x23cd7c;
    virtual cocos2d::CCAffineTransform nodeToWorldTransform() = imac 0x274ad0, m1 0x217298, ios 0x23cdf4;
    virtual cocos2d::CCAffineTransform nodeToWorldTransformFast() = imac 0x274b60, m1 0x217324, ios 0x23ce80;
    virtual cocos2d::CCAffineTransform worldToNodeTransform() = imac 0x274bf0, m1 0x2173b0, ios 0x23cf0c;
    virtual bool addComponent(cocos2d::CCComponent*) = imac 0x274f30, m1 0x2176d8, ios 0x23d094;
    virtual bool removeComponent(char const*) = imac 0x274f50, m1 0x2176e8, ios 0x23d0a4;
    virtual bool removeComponent(cocos2d::CCComponent*) = imac 0x274f70, m1 0x2176f8, ios 0x23d0b4;
    virtual void removeAllComponents() = imac 0x274f90, m1 0x217708, ios 0x23d0c4;
    virtual void updateTweenAction(float, char const*) = imac 0x274ea0, m1 0x217668, ios 0x23d034;
    virtual void updateTweenActionInt(float, int) = imac 0x274eb0, m1 0x21766c, ios 0x23d038;

    cocos2d::CCRect boundingBox() = imac 0x272cf0, m1 0x215550, ios 0x23b63c;
    void childrenAlloc() = imac 0x272eb0, m1 0x21570c, ios inline;
    cocos2d::CCPoint convertToNodeSpace(cocos2d::CCPoint const&) = imac 0x274c30, m1 0x2173f0, ios 0x23cf4c;
    cocos2d::CCPoint convertToNodeSpaceAR(cocos2d::CCPoint const& worldPoint) = imac 0x274cb0, m1 0x217480, ios inline;
    cocos2d::CCPoint convertTouchToNodeSpace(cocos2d::CCTouch*) = imac 0x274dd0, m1 0x21759c, ios 0x23cfdc;
    cocos2d::CCPoint convertTouchToNodeSpaceAR(cocos2d::CCTouch*) = imac 0x274e30, m1 0x2175f4, ios inline;
    cocos2d::CCPoint convertToWindowSpace(cocos2d::CCPoint const&) = imac 0x274d70, m1 0x217544, ios inline;
    cocos2d::CCPoint convertToWorldSpace(cocos2d::CCPoint const&) = imac 0x274c70, m1 0x217438, ios 0x23cf94;
    cocos2d::CCPoint convertToWorldSpaceAR(cocos2d::CCPoint const& point) = imac 0x274d10, m1 0x2174e4, ios inline;
    char const* description() = imac 0x272e90, m1 0x2156e0, ios inline;
    void detachChild(cocos2d::CCNode*, bool) = imac 0x273230, m1 0x215a50, ios 0x23b9e0;
    cocos2d::CCAction* getActionByTag(int) = imac 0x274020, m1 0x216848, ios 0x23c4cc;
    cocos2d::CCComponent* getComponent(char const*) const = imac 0x274f10, m1 0x2176c8, ios inline;
    void insertChild(cocos2d::CCNode*, int) = imac 0x273060, m1 0x2158b8, ios 0x23b904;
    unsigned int numberOfRunningActions() = imac 0x274040, m1 0x216854, ios inline;
    void pauseSchedulerAndActions() = imac 0x273ea0, m1 0x2166f4, ios 0x23c384;
    void qsortAllChildrenWithIndex() = imac 0x2738d0, m1 0x216110, ios 0x23be00;
    void resumeSchedulerAndActions() = imac 0x273ca0, m1 0x2164e8, ios 0x23c198;
    cocos2d::CCAction* runAction(cocos2d::CCAction*) = imac 0x273fb0, m1 0x2167fc, ios 0x23c488;
    void schedule(cocos2d::SEL_SCHEDULE) = imac 0x2741c0, m1 0x2169b0, ios 0x23c5b4;
    void schedule(cocos2d::SEL_SCHEDULE, float) = imac 0x274220, m1 0x2169f0, ios 0x23c5d8;
    void schedule(cocos2d::SEL_SCHEDULE selector, float interval, unsigned int repeat, float delay) = imac 0x2741f0, m1 0x2169d4, ios inline;
    void scheduleOnce(cocos2d::SEL_SCHEDULE selector, float delay) = imac 0x274250, m1 0x216a10, ios inline;
    void scheduleUpdate() = imac 0x2740c0, m1 0x2168b8, ios 0x23c530;
    void scheduleUpdateWithPriority(int) = imac 0x2740e0, m1 0x2168d4, ios 0x23c54c;
    void scheduleUpdateWithPriorityLua(int, int) = imac 0x274100, m1 0x2168f0, ios inline;
    // int getScriptHandler();
    // cocos2d::CCAffineTransform getTransformTemp();
    // bool getUseChildIndex();
    void setAdditionalTransform(cocos2d::CCAffineTransform const& additionalTransform) = imac 0x274a20, m1 0x217200, ios inline;
    void setUseChildIndex(bool) = imac 0x2734a0, m1 0x215cfc, ios 0x23bc38;
    void sortAllChildrenNoIndex() = imac 0x2737d0, m1 0x215ff4, ios 0x23bcf0;
    void sortAllChildrenWithIndex() = imac 0x273740, m1 0x215f60, ios inline;
    void stopAction(cocos2d::CCAction* action) = imac 0x273fe0, m1 0x216834, ios inline;
    void stopActionByTag(int) = imac 0x274000, m1 0x21683c, ios 0x23c4c0;
    void stopAllActions() = imac 0x272e50, m1 0x2156c8, ios 0x23b7a8;
    void transform() = imac 0x273ac0, m1 0x216310, ios 0x23bffc;
    void transformAncestors() = imac 0x273b80, m1 0x2163c4, ios 0x23c0a4;
    void unschedule(cocos2d::SEL_SCHEDULE) = imac 0x274280, m1 0x216a34, ios 0x23c5f8;
    void unscheduleAllSelectors() = imac 0x272e70, m1 0x2156d4, ios 0x23b7b4;
    void unscheduleUpdate() = imac 0x274170, m1 0x216964, ios 0x23c568;
    void updateChildIndexes() = imac 0x272910, m1 0x215240, ios 0x23b33c;

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
    CCNodeRGBA() = imac 0x274fb0, m1 0x217718, ios 0x23d0d4;
    virtual ~CCNodeRGBA() = imac 0x275050, m1 0x217778, ios 0x23d104;

    static cocos2d::CCNodeRGBA* create() = imac 0x2750b0, m1 0x2177a8, ios inline;

    virtual bool init() = imac 0x275090, m1 0x217794, ios 0x23d120;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x275490, m1 0x217b70, ios 0x23d2f8;
    virtual cocos2d::ccColor3B const& getColor() = imac 0x275450, m1 0x217b50, ios 0x23d2d8;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = imac 0x275470, m1 0x217b60, ios 0x23d2e8;
    virtual unsigned char getDisplayedOpacity() = imac 0x275140, m1 0x21781c, ios 0x23d144;
    virtual unsigned char getOpacity() = imac 0x275120, m1 0x21780c, ios 0x23d134;
    virtual void setOpacity(unsigned char) = imac 0x275160, m1 0x21782c, ios 0x23d154;
    virtual bool isCascadeColorEnabled() = imac 0x275820, m1 0x217e14, ios 0x23d4d0;
    virtual void setCascadeColorEnabled(bool) = imac 0x275840, m1 0x217e24, ios 0x23d4e0;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = imac 0x275600, m1 0x217d04, ios 0x23d3cc;
    virtual bool isCascadeOpacityEnabled() = imac 0x275410, m1 0x217b30, ios 0x23d2b8;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x275430, m1 0x217b40, ios 0x23d2c8;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x275290, m1 0x217998, ios 0x23d1f0;

    uint8_t _displayedOpacity;
    uint8_t _realOpacity;
    cocos2d::ccColor3B _displayedColor;
    cocos2d::ccColor3B _realColor;
    bool _cascadeColorEnabled;
    bool _cascadeOpacityEnabled;
}

[[link(win, android)]]
class cocos2d::CCNotificationCenter : cocos2d::CCObject {
    CCNotificationCenter();
    virtual ~CCNotificationCenter();

    static void purgeNotificationCenter();
    static cocos2d::CCNotificationCenter* sharedNotificationCenter();

    void addObserver(cocos2d::CCObject*, cocos2d::SEL_CallFuncO, char const*, cocos2d::CCObject*);
    int getObserverHandlerByName(char const*);
    bool observerExisted(cocos2d::CCObject*, char const*);
    void postNotification(char const*);
    void postNotification(char const*, cocos2d::CCObject*);
    void registerScriptObserver(cocos2d::CCObject*, int, char const*);
    int removeAllObservers(cocos2d::CCObject*);
    void removeObserver(cocos2d::CCObject*, char const*);
    void unregisterScriptObserver(cocos2d::CCObject*, char const*);
}

[[link(win, android)]]
class cocos2d::CCNotificationObserver : cocos2d::CCObject {
    CCNotificationObserver(cocos2d::CCObject*, cocos2d::SEL_CallFuncO, char const*, cocos2d::CCObject*) = win inline;
    virtual ~CCNotificationObserver();

    virtual cocos2d::CCObject* getTarget() = imac 0x288000, m1 0x229770;
    virtual cocos2d::SEL_CallFuncO getSelector() = imac 0x288010, m1 0x229778;
    virtual char* getName() = imac 0x288020, m1 0x229784;
    virtual cocos2d::CCObject* getObject() = imac 0x288030, m1 0x22978c;
    virtual int getHandler() = imac 0x288040, m1 0x229794;
    virtual void setHandler(int) = imac 0x288050, m1 0x22979c;

    void performSelector(cocos2d::CCObject*);
}

[[link(win, android)]]
class cocos2d::CCObject : cocos2d::CCCopying {
    // CCObject(cocos2d::CCObject const&);
    CCObject() = imac 0x48a8a0, m1 0x3efe64, ios 0x8487c;
    virtual ~CCObject() = imac 0x48a940, m1 0x3efef4, ios 0x848c4;

    static cocos2d::CCObject* createWithCoder(DS_Dictionary*) = imac 0x48ab90, m1 0x3f0170, ios 0x84a14;

    virtual int getTag() const = imac 0x48ab60, m1 0x3f015c, ios 0x84a00;
    virtual bool isEqual(cocos2d::CCObject const*) = imac 0x48ab30, m1 0x3f0138, ios 0x849dc;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x48ab40, m1 0x3f0144, ios 0x849e8;
    virtual void encodeWithCoder(DS_Dictionary*) = imac 0x48ab80, m1 0x3f016c, ios 0x84a10;
    virtual bool canEncode() = imac 0x48aba0, m1 0x3f0178, ios 0x84a1c;
    virtual void setTag(int) = imac 0x48ab70, m1 0x3f0164, ios 0x84a08;

    // cocos2d::CCObjectType getObjType() const;
    // void setObjType(cocos2d::CCObjectType);
    cocos2d::CCObject* autorelease() = imac 0x48aae0, m1 0x3f00f4, ios 0x849b0;
    cocos2d::CCObject* copy();
    bool isSingleReference() const = imac 0x48ab10, m1 0x3f0120, ios inline;
    void release() = imac 0x48aab0, m1 0x3f00c0, ios 0x8497c;
    void retain() = imac 0x48aad0, m1 0x3f00e4, ios 0x849a0;
    unsigned int retainCount() const;

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
    static cocos2d::CCOrbitCamera* create(float, float, float, float, float, float, float) = imac 0x367890, m1 0x2f204c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x367a80, m1 0x2f21c4;
    virtual void update(float) = imac 0x367ee0, m1 0x2f2568;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x367bd0, m1 0x2f22e4;

    bool initWithDuration(float, float, float, float, float, float, float) = imac 0x3679d0, m1 0x2f2148;
    // CCOrbitCamera(cocos2d::CCOrbitCamera const&);
    // CCOrbitCamera();
    void sphericalRadius(float*, float*, float*) = imac 0x367da0, m1 0x2f2464;
}

[[link(win, android)]]
class cocos2d::CCPageTurn3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCPageTurn3D* create(float, cocos2d::CCSize const&) = imac 0x311e70, m1 0x2a10a4;

    virtual void update(float) = imac 0x311f50, m1 0x2a1184;
}

[[link(win, android)]]
class cocos2d::CCParallaxNode : cocos2d::CCNode {
    CCParallaxNode();
    virtual ~CCParallaxNode();

    static cocos2d::CCParallaxNode* create();

    virtual void addChild(cocos2d::CCNode*, unsigned int, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x4ae9b0, m1 0x410b48;
    virtual void addChild(cocos2d::CCNode*, unsigned int, int) = imac 0x4ae9a0, m1 0x410b44;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x4aeb70, m1 0x410cf8;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x4aebf0, m1 0x410d88;
    virtual void visit() = imac 0x4aecb0, m1 0x410e50;

    cocos2d::CCPoint absolutePosition();
}

[[link(win, android)]]
class cocos2d::CCParticleBatchNode : cocos2d::CCNode, cocos2d::CCTextureProtocol {
    CCParticleBatchNode();
    virtual ~CCParticleBatchNode();

    static cocos2d::CCParticleBatchNode* create(char const*, unsigned int);
    static cocos2d::CCParticleBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int);

    virtual void addChild(cocos2d::CCNode*) = imac 0x3c8c20, m1 0x34a0c4;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x3c8c30, m1 0x34a0c8;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x3c8c40, m1 0x34a0cc;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x3c9490, m1 0x34aa18;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x3c9080, m1 0x34a58c;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x3c95c0, m1 0x34ab60;
    virtual void draw() = imac 0x3c9650, m1 0x34abec;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x3c9830, m1 0x34adc8;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x3c9790, m1 0x34ad08;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x3c9860, m1 0x34ade8;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x3c9880, m1 0x34adf8;
    virtual void visit() = imac 0x3c8bb0, m1 0x34a040;

    unsigned int addChildHelper(cocos2d::CCParticleSystem*, int, int);
    void disableParticle(unsigned int);
    void getCurrentIndex(unsigned int*, unsigned int*, cocos2d::CCNode*, int);
    void increaseAtlasCapacityTo(unsigned int);
    bool initWithFile(char const*, unsigned int);
    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int);
    void insertChild(cocos2d::CCParticleSystem*, unsigned int);
    void removeChildAtIndex(unsigned int, bool);
    unsigned int searchNewPositionInChildrenForZ(int);
    void updateAllAtlasIndexes();
    void updateBlendFunc();
}

[[link(win, android)]]
class cocos2d::CCParticleExplosion : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleExplosion* create() = imac 0x486330, m1 0x3ebee4, ios inline;
    static cocos2d::CCParticleExplosion* createWithTotalParticles(unsigned int) = imac 0x4863b0, m1 0x3ebf74, ios inline;

    // CCParticleExplosion(cocos2d::CCParticleExplosion const&);
    // CCParticleExplosion();
    // virtual bool init() = m1 0x3ec694, imac 0x486a30;
    virtual bool initWithTotalParticles(unsigned int) = imac 0x486430, m1 0x3ec008, ios inline;
}

[[link(win, android)]]
class cocos2d::CCParticleFire : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFire* create() = imac 0x484f30, m1 0x3eaa0c, ios inline;
    static cocos2d::CCParticleFire* createWithTotalParticles(unsigned int) = imac 0x484fb0, m1 0x3eaa9c, ios inline;

    // CCParticleFire(cocos2d::CCParticleFire const&);
    // CCParticleFire();
    // virtual bool init() = m1 0x3ec634, imac 0x486970;
    virtual bool initWithTotalParticles(unsigned int) = imac 0x485030, m1 0x3eab30, ios inline;
}

[[link(win, android)]]
class cocos2d::CCParticleFireworks : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFireworks* create();
    static cocos2d::CCParticleFireworks* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = imac 0x485380, m1 0x3eae90;
}

[[link(win, android)]]
class cocos2d::CCParticleFlower : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFlower* create();
    static cocos2d::CCParticleFlower* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = imac 0x485b80, m1 0x3eb6dc;
}

[[link(win, android)]]
class cocos2d::CCParticleGalaxy : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleGalaxy* create();
    static cocos2d::CCParticleGalaxy* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = imac 0x4858a0, m1 0x3eb3cc;
}

[[link(win, android)]]
class cocos2d::CCParticleMeteor : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleMeteor* create();
    static cocos2d::CCParticleMeteor* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = imac 0x485e70, m1 0x3eb9ec;
}

[[link(win, android)]]
class cocos2d::CCParticleRain : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleRain* create() = imac 0x486bc0, m1 0x3ec7e8, ios inline;
    static cocos2d::CCParticleRain* createWithTotalParticles(unsigned int) = imac 0x486c40, m1 0x3ec878, ios inline;

    // CCParticleRain(cocos2d::CCParticleRain const&);
    // CCParticleRain();
    // virtual bool init() = m1 0x3ec6a4, imac 0x486a50;
    virtual bool initWithTotalParticles(unsigned int) = imac 0x486cc0, m1 0x3ec90c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCParticleSmoke : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSmoke* create();
    static cocos2d::CCParticleSmoke* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = imac 0x486700, m1 0x3ec30c;
}

[[link(win, android)]]
class cocos2d::CCParticleSnow : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSnow* create() = imac 0x4868d0, m1 0x3ec4e0, ios inline;
    static cocos2d::CCParticleSnow* createWithTotalParticles(unsigned int numberOfParticles) = imac 0x486950, m1 0x3ec570, ios inline;

    // CCParticleSnow(cocos2d::CCParticleSnow const&);
    // CCParticleSnow();
    // virtual bool init() = m1 0x3ec694, imac 0x486a30;
    virtual bool initWithTotalParticles(unsigned int numberOfParticles) = imac 0x4869d0, m1 0x3ec604, ios inline;
}

[[link(win, android)]]
class cocos2d::CCParticleSpiral : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSpiral* create();
    static cocos2d::CCParticleSpiral* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = imac 0x486160, m1 0x3ebd04;
}

[[link(win, android)]]
class cocos2d::CCParticleSun : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSun* create();
    static cocos2d::CCParticleSun* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = imac 0x4855f0, m1 0x3eb0f8;
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
    CCParticleSystem() = imac 0x7c6a00, m1 0x6cba14, ios 0x193210;
    virtual ~CCParticleSystem() = imac 0x7c8b50, m1 0x6cd8d0, ios 0x19478c;

    static cocos2d::CCParticleSystem* create(char const*) = imac 0x7c6bc0, m1 0x6cbb60;
    static cocos2d::CCParticleSystem* createWithTotalParticles(unsigned int);

    virtual void update(float) = imac 0x7c9f90, m1 0x6ce94c, ios 0x1955d4;
    virtual bool init() = imac 0x7c6f00, m1 0x6cbed4, ios 0x1934d4;
    virtual void setScaleX(float) = imac 0x7cb760, m1 0x6cfad4, ios 0x196620;
    virtual void setScaleY(float) = imac 0x7cb780, m1 0x6cfae0, ios 0x19662c;
    virtual void setScale(float) = imac 0x7cb720, m1 0x6cfabc, ios 0x196608;
    virtual void setVisible(bool) = imac 0x7cb030, m1 0x6cf6e0, ios 0x1961f8;
    virtual void setRotation(float) = imac 0x7cb740, m1 0x6cfac8, ios 0x196614;
    virtual cocos2d::CCParticleBatchNode* getBatchNode() = imac 0x7cb640, m1 0x6cfa24, ios 0x19653c;
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = imac 0x7cb650, m1 0x6cfa2c, ios 0x196544;
    virtual unsigned int getParticleCount() = imac 0x7cb240, m1 0x6cf7ec, ios 0x196304;
    virtual float getDuration() = imac 0x7cb250, m1 0x6cf7f4, ios 0x19630c;
    virtual void setDuration(float) = imac 0x7cb260, m1 0x6cf7fc, ios 0x196314;
    virtual cocos2d::CCPoint const& getSourcePosition() = imac 0x7cb270, m1 0x6cf804, ios 0x19631c;
    virtual void setSourcePosition(cocos2d::CCPoint const&) = imac 0x7cb280, m1 0x6cf80c, ios 0x196324;
    virtual cocos2d::CCPoint const& getPosVar() = imac 0x7cb2a0, m1 0x6cf814, ios 0x19632c;
    virtual void setPosVar(cocos2d::CCPoint const&) = imac 0x7cb2b0, m1 0x6cf81c, ios 0x196334;
    virtual float getLife() = imac 0x7cb2d0, m1 0x6cf824, ios 0x19633c;
    virtual void setLife(float) = imac 0x7cb2e0, m1 0x6cf82c, ios 0x196344;
    virtual float getLifeVar() = imac 0x7cb2f0, m1 0x6cf834, ios 0x19634c;
    virtual void setLifeVar(float) = imac 0x7cb300, m1 0x6cf83c, ios 0x196354;
    virtual float getAngle() = imac 0x7cb310, m1 0x6cf844, ios 0x19635c;
    virtual void setAngle(float) = imac 0x7cb320, m1 0x6cf84c, ios 0x196364;
    virtual float getAngleVar() = imac 0x7cb330, m1 0x6cf854, ios 0x19636c;
    virtual void setAngleVar(float) = imac 0x7cb340, m1 0x6cf85c, ios 0x196374;
    virtual void updateEmissionRate() = imac 0x7c8af0, m1 0x6cd8a0, ios 0x19475c;
    virtual cocos2d::CCPoint const& getGravity() = imac 0x7cb120, m1 0x6cf75c, ios 0x196274;
    virtual void setGravity(cocos2d::CCPoint const&) = imac 0x7cb100, m1 0x6cf754, ios 0x19626c;
    virtual float getSpeed() = imac 0x7cb140, m1 0x6cf76c, ios 0x196284;
    virtual void setSpeed(float) = imac 0x7cb130, m1 0x6cf764, ios 0x19627c;
    virtual float getSpeedVar() = imac 0x7cb160, m1 0x6cf77c, ios 0x196294;
    virtual void setSpeedVar(float) = imac 0x7cb150, m1 0x6cf774, ios 0x19628c;
    virtual float getTangentialAccel() = imac 0x7cb070, m1 0x6cf70c, ios 0x196224;
    virtual void setTangentialAccel(float) = imac 0x7cb060, m1 0x6cf704, ios 0x19621c;
    virtual float getTangentialAccelVar() = imac 0x7cb090, m1 0x6cf71c, ios 0x196234;
    virtual void setTangentialAccelVar(float) = imac 0x7cb080, m1 0x6cf714, ios 0x19622c;
    virtual float getRadialAccel() = imac 0x7cb0b0, m1 0x6cf72c, ios 0x196244;
    virtual void setRadialAccel(float) = imac 0x7cb0a0, m1 0x6cf724, ios 0x19623c;
    virtual float getRadialAccelVar() = imac 0x7cb0d0, m1 0x6cf73c, ios 0x196254;
    virtual void setRadialAccelVar(float) = imac 0x7cb0c0, m1 0x6cf734, ios 0x19624c;
    virtual bool getRotationIsDir() = imac 0x7cb0f0, m1 0x6cf74c, ios 0x196264;
    virtual void setRotationIsDir(bool) = imac 0x7cb0e0, m1 0x6cf744, ios 0x19625c;
    virtual float getStartRadius() = imac 0x7cb180, m1 0x6cf78c, ios 0x1962a4;
    virtual void setStartRadius(float) = imac 0x7cb170, m1 0x6cf784, ios 0x19629c;
    virtual float getStartRadiusVar() = imac 0x7cb1a0, m1 0x6cf79c, ios 0x1962b4;
    virtual void setStartRadiusVar(float) = imac 0x7cb190, m1 0x6cf794, ios 0x1962ac;
    virtual float getEndRadius() = imac 0x7cb1c0, m1 0x6cf7ac, ios 0x1962c4;
    virtual void setEndRadius(float) = imac 0x7cb1b0, m1 0x6cf7a4, ios 0x1962bc;
    virtual float getEndRadiusVar() = imac 0x7cb1e0, m1 0x6cf7bc, ios 0x1962d4;
    virtual void setEndRadiusVar(float) = imac 0x7cb1d0, m1 0x6cf7b4, ios 0x1962cc;
    virtual float getRotatePerSecond() = imac 0x7cb200, m1 0x6cf7cc, ios 0x1962e4;
    virtual void setRotatePerSecond(float) = imac 0x7cb1f0, m1 0x6cf7c4, ios 0x1962dc;
    virtual float getRotatePerSecondVar() = imac 0x7cb220, m1 0x6cf7dc, ios 0x1962f4;
    virtual void setRotatePerSecondVar(float) = imac 0x7cb210, m1 0x6cf7d4, ios 0x1962ec;
    virtual bool isActive() = imac 0x7cb230, m1 0x6cf7e4, ios 0x1962fc;
    virtual bool isBlendAdditive() = imac 0x7cb010, m1 0x6cf6bc, ios 0x1961d4;
    virtual void setBlendAdditive(bool) = imac 0x7cafb0, m1 0x6cf644, ios 0x196180;
    virtual float getStartSize() = imac 0x7cb350, m1 0x6cf864, ios 0x19637c;
    virtual void setStartSize(float) = imac 0x7cb360, m1 0x6cf86c, ios 0x196384;
    virtual float getStartSizeVar() = imac 0x7cb370, m1 0x6cf874, ios 0x19638c;
    virtual void setStartSizeVar(float) = imac 0x7cb380, m1 0x6cf87c, ios 0x196394;
    virtual float getEndSize() = imac 0x7cb390, m1 0x6cf884, ios 0x19639c;
    virtual void setEndSize(float) = imac 0x7cb3a0, m1 0x6cf88c, ios 0x1963a4;
    virtual float getEndSizeVar() = imac 0x7cb3b0, m1 0x6cf894, ios 0x1963ac;
    virtual void setEndSizeVar(float) = imac 0x7cb3c0, m1 0x6cf89c, ios 0x1963b4;
    virtual cocos2d::ccColor4F const& getStartColor() = imac 0x7cb3d0, m1 0x6cf8a4, ios 0x1963bc;
    virtual void setStartColor(cocos2d::ccColor4F const&) = imac 0x7cb3e0, m1 0x6cf8ac, ios 0x1963c4;
    virtual cocos2d::ccColor4F const& getStartColorVar() = imac 0x7cb3f0, m1 0x6cf8bc, ios 0x1963d4;
    virtual void setStartColorVar(cocos2d::ccColor4F const&) = imac 0x7cb400, m1 0x6cf8c4, ios 0x1963dc;
    virtual cocos2d::ccColor4F const& getEndColor() = imac 0x7cb410, m1 0x6cf8d4, ios 0x1963ec;
    virtual void setEndColor(cocos2d::ccColor4F const&) = imac 0x7cb420, m1 0x6cf8dc, ios 0x1963f4;
    virtual cocos2d::ccColor4F const& getEndColorVar() = imac 0x7cb430, m1 0x6cf8ec, ios 0x196404;
    virtual void setEndColorVar(cocos2d::ccColor4F const&) = imac 0x7cb440, m1 0x6cf8f4, ios 0x19640c;
    virtual float getStartSpin() = imac 0x7cb450, m1 0x6cf904, ios 0x19641c;
    virtual void setStartSpin(float) = imac 0x7cb460, m1 0x6cf90c, ios 0x196424;
    virtual float getStartSpinVar() = imac 0x7cb470, m1 0x6cf914, ios 0x19642c;
    virtual void setStartSpinVar(float) = imac 0x7cb480, m1 0x6cf91c, ios 0x196434;
    virtual float getEndSpin() = imac 0x7cb490, m1 0x6cf924, ios 0x19643c;
    virtual void setEndSpin(float) = imac 0x7cb4a0, m1 0x6cf92c, ios 0x196444;
    virtual float getEndSpinVar() = imac 0x7cb4b0, m1 0x6cf934, ios 0x19644c;
    virtual void setEndSpinVar(float) = imac 0x7cb4c0, m1 0x6cf93c, ios 0x196454;
    virtual float getEmissionRate() = imac 0x7cb4d0, m1 0x6cf944, ios 0x19645c;
    virtual void setEmissionRate(float) = imac 0x7cb4e0, m1 0x6cf94c, ios 0x196464;
    virtual unsigned int getTotalParticles() = imac 0x7cb4f0, m1 0x6cf954, ios 0x19646c;
    virtual void setTotalParticles(unsigned int) = imac 0x7cb500, m1 0x6cf95c, ios 0x196474;
    virtual bool getOpacityModifyRGB() = imac 0x7cb5c0, m1 0x6cf9e4, ios 0x1964fc;
    virtual void setOpacityModifyRGB(bool) = imac 0x7cb5d0, m1 0x6cf9ec, ios 0x196504;
    virtual cocos2d::tCCPositionType getPositionType() = imac 0x7cb5e0, m1 0x6cf9f4, ios 0x19650c;
    virtual void setPositionType(cocos2d::tCCPositionType) = imac 0x7cb5f0, m1 0x6cf9fc, ios 0x196514;
    virtual bool isAutoRemoveOnFinish() = imac 0x7cb600, m1 0x6cfa04, ios 0x19651c;
    virtual void setAutoRemoveOnFinish(bool) = imac 0x7cb610, m1 0x6cfa0c, ios 0x196524;
    virtual int getEmitterMode() = imac 0x7cb620, m1 0x6cfa14, ios 0x19652c;
    virtual void setEmitterMode(int) = imac 0x7cb630, m1 0x6cfa1c, ios 0x196534;
    virtual bool initWithTotalParticles(unsigned int, bool) = imac 0x7c8980, m1 0x6cd770, ios 0x1945f4;
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&) = imac 0x7cad00, m1 0x6cf46c, ios 0x196020;
    virtual void postStep() = imac 0x7cae40, m1 0x6cf4f0, ios 0x19609c;
    virtual void updateWithNoTime() = imac 0x7cace0, m1 0x6cf45c, ios 0x196010;
    virtual void updateBlendFunc() = imac 0x7caf20, m1 0x6cf5c4, ios 0x196108;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x7cb530, m1 0x6cf974, ios 0x19648c;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x7cb510, m1 0x6cf964, ios 0x19647c;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x7caf90, m1 0x6cf634, ios 0x196170;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x7cae50, m1 0x6cf4f4, ios 0x1960a0;

    bool addParticle();
    void calculateWorldSpace();
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
    int getParticleDrawCost() = imac 0x7cad10, m1 0x6cf470, ios 0x196024;
    // float getRespawn() const;
    // float getRespawnVar() const;
    // bool getStartRGBVarSync() const;
    // bool getStartRadiusEqualToEnd() const;
    // bool getStartSizeEqualToEnd() const;
    // bool getStartSpinEqualToEnd() const;
    float getTimeElapsed();
    void initParticle(cocos2d::sCCParticle*) = imac 0x7c8d50, m1 0x6cdaa0, ios 0x194860;
    bool initWithDictionary(cocos2d::CCDictionary*, bool) = imac 0x7c88d0, m1 0x6cd6dc, ios inline;
    bool initWithDictionary(cocos2d::CCDictionary*, char const*, bool) = imac 0x7c6f20, m1 0x6cbee8, ios 0x1934e8;
    bool initWithFile(char const*, bool) = imac 0x7c6c20, m1 0x6cbbe4, ios 0x193368;
    bool isFull();
    void loadDefaults();
    void loadScaledDefaults(float) = imac 0x7cb830, m1 0x6cfb68, ios 0x196638;
    void resetSystem() = imac 0x7c9df0, m1 0x6ce7fc, ios 0x1954ac;
    void resumeSystem() = imac 0x7c9de0, m1 0x6ce7f0, ios 0x1954a0;
    void saveDefaults();
    void stopSystem() = imac 0x7c9db0, m1 0x6ce7dc, ios 0x19548c;
    // void toggleUniformColorMode(bool);
    void updateVisible();

    gd::string m_sPlistFile;
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
    CCParticleSystemQuad() = imac 0x602940, m1 0x52a2c0, ios 0x2535d0;
    virtual ~CCParticleSystemQuad() = imac 0x602a40, m1 0x52a3a8, ios 0x253644;

    static cocos2d::CCParticleSystemQuad* create() = imac 0x603ed0, m1 0x52b1cc, ios inline;
    static cocos2d::CCParticleSystemQuad* create(char const*, bool) = imac 0x602b20, m1 0x52a440, ios 0x2536dc;
    static cocos2d::CCParticleSystemQuad* createWithTotalParticles(unsigned int, bool) = imac 0x602c00, m1 0x52a528, ios 0x253760;

    virtual void draw() = imac 0x6034e0, m1 0x52ad78, ios 0x253d60;
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = imac 0x603ab0, m1 0x52b050, ios 0x254004;
    virtual void setTotalParticles(unsigned int) = imac 0x6035b0, m1 0x52ae40, ios 0x253e24;
    virtual bool initWithTotalParticles(unsigned int, bool) = imac 0x602090, m1 0x529f58, ios 0x2532e4;
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&) = imac 0x603170, m1 0x52aa70, ios 0x253a68;
    virtual void postStep() = imac 0x603490, m1 0x52ad2c, ios 0x253d14;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x602fc0, m1 0x52a88c, ios 0x2539b0;

    bool allocMemory() = imac 0x6023f0, m1 0x52a03c;
    void initIndices();
    void initTexCoordsWithRect(cocos2d::CCRect const&) = imac 0x602cf0, m1 0x52a618;
    void listenBackToForeground(cocos2d::CCObject*);
    // unsigned char getOpacity();
    void setDisplayFrame(cocos2d::CCSpriteFrame*) = imac 0x6030e0, m1 0x52a9d8, ios 0x253a18;
    // void setOpacity(unsigned char);
    void setTextureWithRect(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
    [[missing(mac, ios)]]
    void setupVBO();
    [[missing(win, android)]]
    void setupVBOandVAO() = imac 0x6027d0, m1 0x52a18c;
    void updateTexCoords();

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
    static cocos2d::CCPlace* create(cocos2d::CCPoint const&) = imac 0x7ace30, m1 0x6b35c4;

    virtual void update(float) = imac 0x7acfe0, m1 0x6b3760;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7acef0, m1 0x6b3668;

    bool initWithPosition(cocos2d::CCPoint const&) = imac 0x7aced0, m1 0x6b364c;
}

[[link(win, android)]]
class cocos2d::CCPointArray : cocos2d::CCObject {
    CCPointArray() = imac 0x2d0f10, m1 0x26c2d0;
    virtual ~CCPointArray() = imac 0x2d0d80, m1 0x26c128;

    static cocos2d::CCPointArray* create(unsigned int) = imac 0x2d0a30, m1 0x26be2c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x2d0b00, m1 0x26bef0;

    void addControlPoint(cocos2d::CCPoint) = imac 0x2d0f50, m1 0x26c2fc;
    unsigned int count() = imac 0x2d1440, m1 0x26c784;
    cocos2d::CCPoint getControlPointAtIndex(unsigned int) = imac 0x2d1360, m1 0x26c6a8;
    gd::vector<cocos2d::CCPoint*> const* getControlPoints() = imac 0x2d0f40, m1 0x26c2f4;
    bool initWithCapacity(unsigned int) = imac 0x2d0ad0, m1 0x26bebc;
    void insertControlPoint(cocos2d::CCPoint&, unsigned int) = imac 0x2d1090, m1 0x26c404;
    void removeControlPointAtIndex(unsigned int) = imac 0x2d13e0, m1 0x26c71c;
    void replaceControlPoint(cocos2d::CCPoint&, unsigned int) = imac 0x2d13b0, m1 0x26c6e8;
    cocos2d::CCPointArray* reverse() = imac 0x2d1460, m1 0x26c798;
    void reverseInline() = imac 0x2d16d0, m1 0x26c9a8;
    void setControlPoints(gd::vector<cocos2d::CCPoint*>*) = imac 0x2d0d00, m1 0x26c0a4;
}

[[link(win, android)]]
class cocos2d::CCPoolManager {
    CCPoolManager() = imac 0x3f69f0, m1 0x36f85c, ios 0x1b0010;
    ~CCPoolManager() = imac 0x3f6a40, m1 0x36f8b0, ios 0x1b0064;

    static void purgePoolManager() = imac 0x3f69a0, m1 0x36f828, ios 0x1affe0;
    static cocos2d::CCPoolManager* sharedPoolManager() = imac 0x3f68c0, m1 0x36f730, ios 0x1aff90;

    void addObject(cocos2d::CCObject*) = imac 0x3f6dc0, m1 0x36fc28, ios 0x1b0228;
    void finalize() = imac 0x3f6b40, m1 0x36f9a8, ios 0x1b00b8;
    cocos2d::CCAutoreleasePool* getCurReleasePool() = imac 0x3f6e00, m1 0x36fc74, ios inline;
    void pop() = imac 0x3f6cc0, m1 0x36fb20, ios 0x1b016c;
    void push() = imac 0x3f6c10, m1 0x36fa64, ios 0x1b0118;
    void removeObject(cocos2d::CCObject*) = imac 0x3f6d70, m1 0x36fbd4, ios 0x1b01d4;
}

[[link(win, android)]]
class cocos2d::CCPrettyPrinter : cocos2d::CCDataVisitor {
    CCPrettyPrinter(int) = win inline, imac 0x4b5120, m1 0x416360, ios 0x24e5cc;

    virtual void clear() = imac 0x4b52d0, m1 0x416550, ios 0x24e6c0;
    virtual gd::string getResult() = imac 0x4b5300, m1 0x416574, ios 0x24e6e4;
    virtual void visitObject(cocos2d::CCObject const*) = imac 0x4b5340, m1 0x41659c, ios 0x24e70c;
    virtual void visit(cocos2d::CCBool const*) = imac 0x4b53c0, m1 0x41661c, ios 0x24e78c;
    virtual void visit(cocos2d::CCInteger const*) = imac 0x4b5450, m1 0x4166ac, ios 0x24e81c;
    virtual void visit(cocos2d::CCFloat const*) = imac 0x4b54d0, m1 0x416730, ios 0x24e8a0;
    virtual void visit(cocos2d::CCDouble const*) = imac 0x4b5550, m1 0x4167b8, ios 0x24e928;
    virtual void visit(cocos2d::CCString const*) = imac 0x4b55d0, m1 0x41683c, ios 0x24e9ac;
    virtual void visit(cocos2d::CCArray const*) = imac 0x4b5600, m1 0x416868, ios 0x24e9d8;
    virtual void visit(cocos2d::CCDictionary const*) = imac 0x4b5b10, m1 0x416cb4, ios 0x24ecb4;
    virtual void visit(cocos2d::CCSet const*) = imac 0x4b5fb0, m1 0x417080, ios 0x24ef2c;

    void setIndentLevel(int) = imac 0x4b51c0, m1 0x416418, ios 0x24e640;
}

[[link(win, android)]]
class cocos2d::CCProfiler : cocos2d::CCObject {

    virtual ~CCProfiler();

    static cocos2d::CCProfiler* sharedProfiler();

    cocos2d::CCProfilingTimer* createAndAddTimerWithName(char const*);
    void displayTimers();
    bool init();
    void releaseAllTimers();
    void releaseTimer(char const*);
}

[[link(win, android)]]
class cocos2d::CCProfilingTimer : cocos2d::CCObject {
    CCProfilingTimer();
    virtual ~CCProfilingTimer();

    char const* description();
    bool initWithName(char const*);
    void reset();
}

[[link(win, android)]]
class cocos2d::CCProgressFromTo : cocos2d::CCActionInterval {
    static cocos2d::CCProgressFromTo* create(float, float, float) = imac 0x437be0, m1 0x3a9a9c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x437cd0, m1 0x3a9b70;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x437dd0, m1 0x3a9c58;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x437e80, m1 0x3a9cec;
    virtual void update(float) = imac 0x437e90, m1 0x3a9cf0;

    bool initWithDuration(float, float, float) = imac 0x437c90, m1 0x3a9b38;
}

[[link(win, android)]]
class cocos2d::CCProgressTimer : cocos2d::CCNodeRGBA {
    // CCProgressTimer(cocos2d::CCProgressTimer const&);
    CCProgressTimer() = imac 0x604000, m1 0x52b304, ios 0x3fd530;
    virtual ~CCProgressTimer() = imac 0x6044c0, m1 0x52b71c, ios 0x3fd7a0;

    static cocos2d::CCProgressTimer* create(cocos2d::CCSprite*) = imac 0x604140, m1 0x52b40c, ios 0x3fd5b4;

    virtual cocos2d::ccColor3B const& getColor() const = imac 0x604810, m1 0x52b9f8, ios 0x3fd8d0;
    virtual unsigned char getOpacity() const = imac 0x604910, m1 0x52bae8, ios 0x3fd940;
    virtual void draw() = imac 0x6066f0, m1 0x52d0c4, ios 0x3fe3c0;
    virtual cocos2d::CCPoint getMidpoint() = imac 0x6065d0, m1 0x52cfdc, ios 0x3fe2e0;
    virtual void setMidpoint(cocos2d::CCPoint) = imac 0x6065f0, m1 0x52cfe8, ios 0x3fe2ec;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x6046e0, m1 0x52b8d0, ios 0x3fd828;
    virtual void setOpacity(unsigned char) = imac 0x604830, m1 0x52ba08, ios 0x3fd8e0;

    cocos2d::CCPoint boundaryTexCoord(char) = imac 0x606660, m1 0x52d044, ios 0x3fe348;
    bool initWithSprite(cocos2d::CCSprite*) = imac 0x604220, m1 0x52b4c8, ios 0x3fd60c;
    // cocos2d::CCPoint getBarChangeRate() const;
    // float getPercentage();
    // cocos2d::CCSprite* getSprite();
    // cocos2d::CCProgressTimerType getType();
    void setAnchorPoint(cocos2d::CCPoint);
    // void setBarChangeRate(cocos2d::CCPoint);
    void setPercentage(float) = imac 0x6043b0, m1 0x52b62c, ios 0x3fd6dc;
    // void setReverseDirection(bool);
    void setReverseProgress(bool);
    void setSprite(cocos2d::CCSprite*) = imac 0x604430, m1 0x52b69c, ios 0x3fd720;
    void setType(cocos2d::CCProgressTimerType type) = imac 0x604640, m1 0x52b838, ios inline;
    // bool isReverseDirection();
    cocos2d::ccTex2F textureCoordFromAlphaPoint(cocos2d::CCPoint) = imac 0x604930, m1 0x52baf8, ios 0x3fd950;
    void updateBar() = imac 0x605460, m1 0x52c398, ios 0x3fde28;
    void updateColor();
    void updateProgress() = imac 0x604610, m1 0x52b81c, ios 0x3fd80c;
    void updateRadial() = imac 0x604a70, m1 0x52bc1c, ios 0x3fda6c;
    cocos2d::ccVertex2F vertexFromAlphaPoint(cocos2d::CCPoint) = imac 0x6049e0, m1 0x52bb98, ios 0x3fd9ec;
}

[[link(win, android)]]
class cocos2d::CCProgressTo : cocos2d::CCActionInterval {
    static cocos2d::CCProgressTo* create(float, float) = imac 0x4379a0, m1 0x3a9898;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x437a70, m1 0x3a995c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x437b70, m1 0x3a9a44;
    virtual void update(float) = imac 0x437bb0, m1 0x3a9a84;

    bool initWithDuration(float, float) = imac 0x437a40, m1 0x3a9928;
}

[[link(win, android)]]
class cocos2d::CCRemoveSelf : cocos2d::CCActionInstant {
    static cocos2d::CCRemoveSelf* create(bool isNeedCleanUp) = imac 0x7ac920, m1 0x6b30a8, ios inline;

    // CCRemoveSelf(cocos2d::CCRemoveSelf const&);
    // CCRemoveSelf();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x7aca10, m1 0x6b318c, ios inline;
    virtual void update(float time) = imac 0x7ac990, m1 0x6b3114, ios inline;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x7ac9b0, m1 0x6b312c, ios inline;

    bool init(bool isNeedCleanUp) = imac 0x7ac980, m1 0x6b3108, ios inline;
}

[[link(win, android)]]
class cocos2d::CCRenderTexture : cocos2d::CCNode {
    // CCRenderTexture(cocos2d::CCRenderTexture const&);
    CCRenderTexture() = imac 0x5f4fb0, m1 0x51e368, ios inline;
    virtual ~CCRenderTexture() = imac 0x5f5070, m1 0x51e400, ios 0x3c0198;

    static cocos2d::CCRenderTexture* create(int, int) = imac 0x5f5790, m1 0x51ea64, ios 0x3c0684;
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat) = imac 0x5f5250, m1 0x51e548, ios 0x3c027c;
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = imac 0x5f5320, m1 0x51e628, ios inline;

    virtual void draw() = imac 0x5f6080, m1 0x51f2ac, ios 0x3c0b58;
    virtual void visit() = imac 0x5f5ff0, m1 0x51f214, ios 0x3c0ac0;
    virtual cocos2d::CCSprite* getSprite() = imac 0x5f5160, m1 0x51e4a0, ios 0x3c0230;
    virtual void setSprite(cocos2d::CCSprite*) = imac 0x5f5170, m1 0x51e4a8, ios 0x3c0238;

    void begin() = imac 0x5f5870, m1 0x51eb5c, ios 0x3c076c;
    void beginWithClear(float, float, float, float) = imac 0x5f5aa0, m1 0x51ed50, ios 0x3c093c;
    void beginWithClear(float, float, float, float, float) = imac 0x5f5ce0, m1 0x51ef38, ios inline;
    void beginWithClear(float, float, float, float, float, int) = imac 0x5f5dc0, m1 0x51f008, ios inline;
    void beginWithClear(float, float, float, float, float, int, unsigned int) = imac 0x5f5b40, m1 0x51edf0, ios 0x3c094c;
    void clear(float, float, float, float);
    void clearDepth(float);
    void clearStencil(int);
    void end() = imac 0x5f5dd0, m1 0x51f010, ios 0x3c0a74;
    cocos2d::ccColor4F const& getClearColor() const;
    float getClearDepth() const;
    unsigned int getClearFlags() const;
    int getClearStencil() const;
    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat) = imac 0x5f5310, m1 0x51e620, ios inline;
    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = imac 0x5f53f0, m1 0x51e710, ios 0x3c0344;
    // void endToLua();
    bool isAutoDraw() const;
    void listenToBackground(cocos2d::CCObject*);
    void listenToForeground(cocos2d::CCObject*);
    cocos2d::CCImage* newCCImage(bool flipImage) = imac 0x5f6330, m1 0x51f4cc, ios inline;
    bool saveToFile(char const*);
    bool saveToFile(char const*, cocos2d::eImageFormat);
    void setAutoDraw(bool);
    void setClearColor(cocos2d::ccColor4F const&);
    void setClearDepth(float);
    void setClearFlags(unsigned int);
    void setClearStencil(float);
    void updateInternalScale(float, float);
}

[[link(win, android)]]
class cocos2d::CCRepeat : cocos2d::CCActionInterval {
    // cocos2d::CCFiniteTimeAction* getInnerAction();
    // void setInnerAction(cocos2d::CCFiniteTimeAction*);
    // CCRepeat(cocos2d::CCRepeat const&);
    // CCRepeat();
    virtual ~CCRepeat() = imac 0x3b6550, m1 0x33912c, ios inline;

    static cocos2d::CCRepeat* create(cocos2d::CCFiniteTimeAction* pAction, unsigned int times) = imac 0x3b6260, m1 0x338e54, ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x3b63f0, m1 0x338fdc, ios inline;
    virtual void update(float dt) = imac 0x3b6690, m1 0x33926c, ios inline;
    virtual bool isDone() = imac 0x3b67b0, m1 0x3393e0, ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3b6610, m1 0x3391e4, ios inline;
    virtual void stop() = imac 0x3b6660, m1 0x33923c, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b67c0, m1 0x3393f0, ios inline;

    bool initWithAction(cocos2d::CCFiniteTimeAction* pAction, unsigned int times) = imac 0x3b6360, m1 0x338f44, ios inline;
}

[[link(win, android)]]
class cocos2d::CCRepeatForever : cocos2d::CCActionInterval {
    // cocos2d::CCActionInterval* getInnerAction();
    // void setInnerAction(cocos2d::CCActionInterval*);
    // CCRepeatForever(cocos2d::CCRepeatForever const&);
    // CCRepeatForever();
    virtual ~CCRepeatForever() = imac 0x3b67f0, m1 0x339420, ios 0x18a954;

    static cocos2d::CCRepeatForever* create(cocos2d::CCActionInterval*) = imac 0x3b68b0, m1 0x3394d8, ios 0x18a9a8;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b6940, m1 0x339574, ios 0x18aa14;
    virtual bool isDone() = imac 0x3b6ad0, m1 0x33971c, ios 0x18abb8;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b6a20, m1 0x339644, ios 0x18aae0;
    virtual void step(float) = imac 0x3b6a60, m1 0x339684, ios 0x18ab20;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b6ae0, m1 0x339724, ios 0x18abc0;

    bool initWithAction(cocos2d::CCActionInterval*) = imac 0x3b6920, m1 0x339544, ios inline;
}

[[link(win, android)]]
class cocos2d::CCReuseGrid : cocos2d::CCActionInstant {
    static cocos2d::CCReuseGrid* create(int) = imac 0x20ae90, m1 0x1b6d34;

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x20af10, m1 0x1b6db0;

    bool initWithTimes(int) = imac 0x20af00, m1 0x1b6da4;
}

[[link(win, android)]]
class cocos2d::CCReverseTime : cocos2d::CCActionInterval {
    CCReverseTime() = imac 0x3bbfc0, m1 0x33e0c8;
    virtual ~CCReverseTime() = imac 0x3bbff0, m1 0x33e0f0;

    static cocos2d::CCReverseTime* create(cocos2d::CCFiniteTimeAction*) = imac 0x3bbd80, m1 0x33debc;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3bbea0, m1 0x33dfc4;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3bc0b0, m1 0x33e1a8;
    virtual void stop() = imac 0x3bc0f0, m1 0x33e1e8;
    virtual void update(float) = imac 0x3bc120, m1 0x33e218;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3bc150, m1 0x33e238;

    bool initWithAction(cocos2d::CCFiniteTimeAction*) = imac 0x3bbe40, m1 0x33df68;
}

[[link(win, android)]]
class cocos2d::CCRipple3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCRipple3D* create(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float) = imac 0x27e590, m1 0x2204f4;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27e740, m1 0x220690;
    virtual void update(float) = imac 0x27e8c0, m1 0x2207dc;

    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float) = imac 0x27e6c0, m1 0x22061c;
    void setPosition(cocos2d::CCPoint const&) = imac 0x27e730, m1 0x220688;
}

[[link(win, android)]]
class cocos2d::CCRotateBy : cocos2d::CCActionInterval {
    static cocos2d::CCRotateBy* create(float, float) = imac 0x3b7cc0, m1 0x33a664, ios 0x18b3f8;
    static cocos2d::CCRotateBy* create(float, float, float) = imac 0x3b7dc0, m1 0x33a72c, ios 0x18b494;

    // CCRotateBy(cocos2d::CCRotateBy const&);
    // CCRotateBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b7ec0, m1 0x33a800, ios 0x18b53c;
    virtual void update(float) = imac 0x3b8020, m1 0x33a950, ios 0x18b688;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b7fd0, m1 0x33a8f8, ios 0x18b630;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b8090, m1 0x33a9dc, ios 0x18b704;

    bool initWithDuration(float, float) = imac 0x3b7d80, m1 0x33a700, ios inline;
    bool initWithDuration(float, float, float) = imac 0x3b7e80, m1 0x33a7d4, ios inline;
}

[[link(win, android)]]
class cocos2d::CCRotateTo : cocos2d::CCActionInterval {
    static cocos2d::CCRotateTo* create(float, float) = imac 0x3b7800, m1 0x33a26c, ios 0x18b0ec;
    static cocos2d::CCRotateTo* create(float fDuration, float fDeltaAngleX, float fDeltaAngleY) = imac 0x3b7900, m1 0x33a338, ios inline;

    // CCRotateTo(cocos2d::CCRotateTo const&);
    // CCRotateTo();
    virtual bool initWithDuration(float fDuration, float fDeltaAngleX, float fDeltaAngleY) = imac 0x3b79d0, m1 0x33a3e4, ios 0x18b18c;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b7a10, m1 0x33a410, ios 0x18b1b8;
    virtual void update(float) = imac 0x3b7c50, m1 0x33a5d8, ios 0x18b37c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b7b00, m1 0x33a4f8, ios 0x18b29c;

    bool initWithDuration(float, float) = imac 0x3b78c0, m1 0x33a30c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCSAXParser {
    CCSAXParser();
    ~CCSAXParser();

    static void endElement(void*, cocos2d::CC_XML_CHAR const*);
    static void startElement(void*, cocos2d::CC_XML_CHAR const*, const CC_XML_CHAR **);
    static void textHandler(void*, cocos2d::CC_XML_CHAR const*, int);

    bool init(char const*);
    bool parse(char const*);
    bool parse(char const*, unsigned int);
    void setDelegator(cocos2d::CCSAXDelegator*);
}

[[link(win, android)]]
class cocos2d::CCScaleBy : cocos2d::CCScaleTo {
    static cocos2d::CCScaleBy* create(float duration, float s) = imac 0x3ba4e0, m1 0x33c8c8, ios inline;
    static cocos2d::CCScaleBy* create(float duration, float sx, float sy) = imac 0x3ba5a0, m1 0x33c960, ios inline;

    // CCScaleBy(cocos2d::CCScaleBy const&);
    // CCScaleBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x3ba670, m1 0x33ca04, ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3ba780, m1 0x33caf4, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3ba7e0, m1 0x33cb64, ios inline;
}

[[link(win, android)]]
class cocos2d::CCScaleTo : cocos2d::CCActionInterval {
    static cocos2d::CCScaleTo* create(float, float) = imac 0x3ba0f0, m1 0x33c574, ios 0x18c380;
    static cocos2d::CCScaleTo* create(float, float, float) = imac 0x3ba1f0, m1 0x33c634, ios 0x18c418;

    // CCScaleTo(cocos2d::CCScaleTo const&);
    // CCScaleTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3ba300, m1 0x33c700, ios 0x18c4bc;
    virtual void update(float) = imac 0x3ba480, m1 0x33c85c, ios 0x18c614;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3ba410, m1 0x33c7f0, ios 0x18c5a8;

    bool initWithDuration(float duration, float s) = imac 0x3ba1b0, m1 0x33c60c, ios inline;
    bool initWithDuration(float duration, float sx, float sy) = imac 0x3ba2c0, m1 0x33c6d8, ios inline;
}

[[link(win, android)]]
class cocos2d::CCScene : cocos2d::CCNode {
    // CCScene(cocos2d::CCScene const&);
    CCScene() = imac 0x290d00, m1 0x231264, ios 0x2403a0;
    virtual ~CCScene() = imac 0x290de0, m1 0x23135c, ios 0x24041c;

    static cocos2d::CCScene* create() = imac 0x290e70, m1 0x2313d0, ios 0x240490;

    virtual bool init() = imac 0x290e20, m1 0x231378, ios 0x240438;

    int getHighestChildZ() = imac 0x290f30, m1 0x2314b0, ios 0x240504;
}

[[link(win, android)]]
class cocos2d::CCScheduler : cocos2d::CCObject {
    // float getTimeScale();
    // void setTimeScale(float);
    // CCScheduler(cocos2d::CCScheduler const&);
    CCScheduler();
    virtual ~CCScheduler();

    virtual void update(float) = imac 0x443db0, m1 0x3b5480, ios 0x1abb2c;

    void appendIn(cocos2d::_listEntry**, cocos2d::CCObject*, bool);
    bool isTargetPaused(cocos2d::CCObject*);
    cocos2d::CCSet* pauseAllTargets();
    cocos2d::CCSet* pauseAllTargetsWithMinPriority(int);
    void pauseTarget(cocos2d::CCObject*) = imac 0x443780, m1 0x3b4eb4, ios 0x1ab938;
    void priorityIn(cocos2d::_listEntry**, cocos2d::CCObject*, int, bool);
    void removeHashElement(cocos2d::_hashSelectorEntry*);
    void removeUpdateFromHash(cocos2d::_listEntry*);
    void resumeTarget(cocos2d::CCObject*) = imac 0x443550, m1 0x3b4cc8, ios 0x1ab74c;
    void resumeTargets(cocos2d::CCSet*);
    unsigned int scheduleScriptFunc(unsigned int, float, bool);
    void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, bool) = imac 0x442180, m1 0x3b37ec, ios 0x1aa3e4;
    void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, unsigned int, float, bool) = imac 0x4421a0, m1 0x3b37fc, ios 0x1aa3f4;
    void scheduleUpdateForTarget(cocos2d::CCObject*, int, bool) = imac 0x442d80, m1 0x3b4450, ios 0x1aaff8;
    void unscheduleAll() = imac 0x441fc0, m1 0x3b3630, ios 0x1aa29c;
    void unscheduleAllForTarget(cocos2d::CCObject*) = imac 0x443320, m1 0x3b4a5c, ios 0x1ab5a8;
    void unscheduleAllWithMinPriority(int);
    void unscheduleScriptEntry(unsigned int);
    void unscheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*) = imac 0x441cb0, m1 0x3b3320, ios 0x1a9ffc;
    void unscheduleUpdateForTarget(cocos2d::CCObject const*);
}

[[link(win, android)]]
class cocos2d::CCSchedulerScriptHandlerEntry : cocos2d::CCScriptHandlerEntry {

    virtual ~CCSchedulerScriptHandlerEntry();

    static cocos2d::CCSchedulerScriptHandlerEntry* create(int, float, bool);

    bool init(float, bool);
}

[[link(win, android)]]
class cocos2d::CCScriptEngineManager {
    // cocos2d::CCScriptEngineProtocol* getScriptEngine();
    ~CCScriptEngineManager();

    static void purgeSharedManager();
    static cocos2d::CCScriptEngineManager* sharedManager() = imac 0x31b8d0, m1 0x2a99d8, ios 0x273574;

    void removeScriptEngine();
    void setScriptEngine(cocos2d::CCScriptEngineProtocol* engine) = imac 0x31bf60, m1 0x2aa0b0, ios inline;
}

[[link(win, android)]]
class cocos2d::CCScriptHandlerEntry : cocos2d::CCObject {

    virtual ~CCScriptHandlerEntry() = m1 0x2a9a88, imac 0x31b960, ios 0x2735a8;

    static cocos2d::CCScriptHandlerEntry* create(int) = m1 0x2a9a18, imac 0x31b900, ios inline;
}

[[link(win, android)]]
class cocos2d::CCSequence : cocos2d::CCActionInterval {
    // CCSequence(cocos2d::CCSequence const&);
    // CCSequence();
    virtual ~CCSequence() = imac 0x3b5e80, m1 0x338a90, ios 0x18a6cc;

    static cocos2d::CCSequence* create(cocos2d::CCArray*) = imac 0x3b5ae0, m1 0x338758, ios 0x18a53c;
    // static cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, ...) = imac 0x3a2600, m1 0x33d1fc, ios 0x18da90;
    static cocos2d::CCSequence* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3b5630, m1 0x338410, ios 0x18a3a0;
    static cocos2d::CCSequence* createWithVariableList(cocos2d::CCFiniteTimeAction*, va_list) = imac 0x3b5810, m1 0x338558, ios 0x18a4bc;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b5d30, m1 0x338964, ios 0x18a5d8;
    virtual void update(float) = imac 0x3b5ff0, m1 0x338bf8, ios 0x18a7b4;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b5f70, m1 0x338b6c, ios 0x18a72c;
    virtual void stop() = imac 0x3b5fb0, m1 0x338bb4, ios 0x18a774;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b6170, m1 0x338d74, ios 0x18a90c;

    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3b5700, m1 0x3384cc, ios 0x18a430;
}

[[link(win, android)]]
class cocos2d::CCSet : cocos2d::CCObject {
    //CCSet(cocos2d::CCSet const&) = imac 0x79df40, m1 0x6b0448, ios 0x1af714;
    CCSet() = imac 0x7b3400, m1 0x6b94f0, ios 0x1ac274;
    virtual ~CCSet() = imac 0x7b3560, m1 0x6b9668, ios 0x1ac3ac;

    static cocos2d::CCSet* create() = imac 0x7b36f0, m1 0x6b97d4, ios inline;

    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x7b36d0, m1 0x6b97bc, ios 0x1ac490;

    void addObject(cocos2d::CCObject*) = imac 0x7b3810, m1 0x6b98f8, ios 0x1ac500;
    cocos2d::CCObject* anyObject() = imac 0x7b39e0, m1 0x6b9ae8, ios inline;
    cocos2d::CCSetIterator begin() = imac 0x7b39c0, m1 0x6b9ad0, ios 0x1ac5c4;
    bool containsObject(cocos2d::CCObject*) = imac 0x7b3970, m1 0x6b9a84, ios 0x1ac578;
    cocos2d::CCSet* copy() = imac 0x7b3780, m1 0x6b985c, ios 0x1ac4a8;
    int count() = imac 0x7b3800, m1 0x6b98ec, ios 0x1ac4f4;
    cocos2d::CCSetIterator end() = imac 0x7b39d0, m1 0x6b9adc, ios 0x1ac5d0;
    cocos2d::CCSet* mutableCopy() = imac 0x7b37c0, m1 0x6b98a4, ios 0x1ac4f0;
    void removeAllObjects() = imac 0x7b3620, m1 0x6b9724, ios 0x1ac400;
    void removeObject(cocos2d::CCObject*) = imac 0x7b38c0, m1 0x6b99b0, ios 0x1ac544;

    gd::set<cocos2d::CCObject*> m_pSet;
}

[[link(win, android)]]
class cocos2d::CCShaderCache : cocos2d::CCObject {
    // CCShaderCache(cocos2d::CCShaderCache const&);
    CCShaderCache();
    virtual ~CCShaderCache();

    static void purgeSharedShaderCache() = imac 0x202240, m1 0x1af074, ios 0x128414;
    static cocos2d::CCShaderCache* sharedShaderCache() = imac 0x202120, m1 0x1aef54, ios 0x12835c;

    void addProgram(cocos2d::CCGLProgram*, char const*) = imac 0x2030e0, m1 0x1afff0, ios 0x128aec;
    bool init() = imac 0x2021f0, m1 0x1af024, ios 0x1283c4;
    void loadDefaultShader(cocos2d::CCGLProgram*, int) = imac 0x202aa0, m1 0x1af900, ios 0x12883c;
    void loadDefaultShaders() = imac 0x202360, m1 0x1af170, ios 0x128490;
    cocos2d::CCGLProgram* programForKey(char const*) = imac 0x203000, m1 0x1afeec, ios 0x128a80;
    void reloadDefaultShaders() = imac 0x202c80, m1 0x1afb44, ios inline;
}

[[link(win, android)]]
class cocos2d::CCShaky3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCShaky3D* create(float, cocos2d::CCSize const&, int, bool) = imac 0x27ea90, m1 0x22095c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27ebb0, m1 0x220a94;
    virtual void update(float) = imac 0x27ece0, m1 0x220bb8;

    bool initWithDuration(float, cocos2d::CCSize const&, int, bool) = imac 0x27eb80, m1 0x220a58;
}

[[link(win, android)]]
class cocos2d::CCShakyTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCShakyTiles3D* create(float, cocos2d::CCSize const&, int, bool) = imac 0x7b4ff0, m1 0x6baf58;

    virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool) = imac 0x7b50e0, m1 0x6bb054;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7b5110, m1 0x6bb090;
    virtual void update(float) = imac 0x7b5230, m1 0x6bb1a8;
}

[[link(win, android)]]
class cocos2d::CCShatteredTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCShatteredTiles3D* create(float, cocos2d::CCSize const&, int, bool) = imac 0x7b54c0, m1 0x6bb46c;

    virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool) = imac 0x7b55b0, m1 0x6bb56c;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7b55f0, m1 0x6bb5ac;
    virtual void update(float) = imac 0x7b5710, m1 0x6bb6c4;
}

[[link(win, android)]]
class cocos2d::CCShow : cocos2d::CCActionInstant {
    static cocos2d::CCShow* create() = imac 0x7ac510, m1 0x6b2c4c, ios 0x1ada1c;

    // CCShow(cocos2d::CCShow const&);
    // CCShow();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7ac620, m1 0x6b2d68, ios 0x1adae4;
    virtual void update(float) = imac 0x7ac560, m1 0x6b2ca4, ios 0x1ada74;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x7ac580, m1 0x6b2cb8, ios 0x1ada88;
}

[[link(win, android)]]
class cocos2d::CCShuffleTiles : cocos2d::CCTiledGrid3DAction {

    virtual ~CCShuffleTiles() = imac 0x7b5bf0, m1 0x6bbbd8;

    static cocos2d::CCShuffleTiles* create(float, cocos2d::CCSize const&, unsigned int) = imac 0x7b59b0, m1 0x6bb99c;

    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int) = imac 0x7b5aa0, m1 0x6bba94;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x7b5e90, m1 0x6bbe58;
    virtual void update(float) = imac 0x7b61b0, m1 0x6bc160;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7b5ad0, m1 0x6bbac4;

    cocos2d::CCSize getDelta(cocos2d::CCSize const&) = imac 0x7b5d40, m1 0x6bbd20;
    void placeTile(cocos2d::CCPoint const&, cocos2d::Tile*) = imac 0x7b5de0, m1 0x6bbdac;
    void shuffle(unsigned int*, unsigned int) = imac 0x7b5cf0, m1 0x6bbcc0;
}

[[link(win, android)]]
class cocos2d::CCSkewBy : cocos2d::CCSkewTo {
    static cocos2d::CCSkewBy* create(float t, float sx, float sy) = imac 0x3b8ca0, m1 0x33b440, ios inline;

    // CCSkewBy(cocos2d::CCSkewBy const&);
    // CCSkewBy();
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3b8dd0, m1 0x33b520, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b8ee0, m1 0x33b5fc, ios inline;
    virtual bool initWithDuration(float t, float deltaSkewX, float deltaSkewY) = imac 0x3b8d80, m1 0x33b4f4, ios inline;
}

[[link(win, android)]]
class cocos2d::CCSkewTo : cocos2d::CCActionInterval {
    CCSkewTo() = imac 0x3b8950, m1 0x33b19c, ios inline;

    static cocos2d::CCSkewTo* create(float t, float sx, float sy) = imac 0x3b88a0, m1 0x33b100, ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x3b89d0, m1 0x33b1f4, ios inline;
    virtual void update(float t) = imac 0x3b8c00, m1 0x33b3b4, ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3b8ab0, m1 0x33b2cc, ios inline;
    virtual bool initWithDuration(float t, float sx, float sy) = imac 0x3b8990, m1 0x33b1cc, ios inline;
}

[[link(win, android)]]
class cocos2d::CCSpawn : cocos2d::CCActionInterval {
    // CCSpawn(cocos2d::CCSpawn const&);
    // CCSpawn();
    virtual ~CCSpawn() = imac 0x3b75a0, m1 0x339fe8, ios 0x18af4c;

    static cocos2d::CCSpawn* create(cocos2d::CCArray* arrayOfActions) = imac 0x3b6ef0, m1 0x3399ec, ios inline;
    // static cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction*, ...) = m1 0x33e430, imac 0x3b9e30;
    static cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction* first, ...) = inline;
    static cocos2d::CCSpawn* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3b6e60, m1 0x339960, ios 0x18ac88;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b74a0, m1 0x339ef4, ios 0x18ae5c;
    virtual void update(float) = imac 0x3b7700, m1 0x33a158, ios 0x18b040;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b7690, m1 0x33a0c4, ios 0x18afac;
    virtual void stop() = imac 0x3b76d0, m1 0x33a118, ios 0x18b000;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b7750, m1 0x33a1bc, ios 0x18b0a4;

    // static cocos2d::CCSpawn* createWithVariableList(cocos2d::CCFiniteTimeAction*, char*);
    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3b70c0, m1 0x339bd0, ios 0x18ad14;
}

[[link(win, android)]]
class cocos2d::CCSpeed : cocos2d::CCAction {
    // void setSpeed(float);
    // CCSpeed(cocos2d::CCSpeed const&);
    // CCSpeed();
    virtual ~CCSpeed() = imac 0x5f4450, m1 0x51d8a0;

    static cocos2d::CCSpeed* create(cocos2d::CCActionInterval*, float) = imac 0x5f4540, m1 0x51d97c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5f4620, m1 0x51da4c;
    virtual bool isDone() = imac 0x5f4830, m1 0x51dc34;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x5f47c0, m1 0x51dbd4;
    virtual void stop() = imac 0x5f47e0, m1 0x51dbe8;
    virtual void step(float) = imac 0x5f4810, m1 0x51dc18;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5f4840, m1 0x51dc44;

    bool initWithAction(cocos2d::CCActionInterval*, float) = imac 0x5f45e0, m1 0x51da0c;
    // cocos2d::CCActionInterval* getInnerAction();
    // float getSpeed();
    void setInnerAction(cocos2d::CCActionInterval*) = imac 0x5f48f0, m1 0x51dce8;
}

[[link(win, android)]]
class cocos2d::CCSplitCols : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCSplitCols* create(float, unsigned int) = imac 0x7b7eb0, m1 0x6bdd98;

    virtual bool initWithDuration(float, unsigned int) = imac 0x7b7fa0, m1 0x6bde8c;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7b7ff0, m1 0x6bdee0;
    virtual void update(float) = imac 0x7b8160, m1 0x6be03c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x7b8120, m1 0x6bdffc;
}

[[link(win, android)]]
class cocos2d::CCSplitRows : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCSplitRows* create(float, unsigned int) = imac 0x7b7b00, m1 0x6bda10;

    virtual bool initWithDuration(float, unsigned int) = imac 0x7b7bf0, m1 0x6bdb04;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7b7c40, m1 0x6bdb58;
    virtual void update(float) = imac 0x7b7db0, m1 0x6bdcb4;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x7b7d70, m1 0x6bdc74;
}

[[link(win, android)]]
class cocos2d::CCSprite : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    // void setTextureAtlas(cocos2d::CCTextureAtlas*);
    // void setTlVertexMod(float);
    // void setTrVertexMod(float);
    // void setUseVertexMod(bool);
    // CCSprite(cocos2d::CCSprite const&);
    CCSprite() = imac 0x288b00, m1 0x22a200, ios 0x237bb4;
    virtual ~CCSprite() = imac 0x288ba0, m1 0x22a288, ios 0x237c3c;

    static cocos2d::CCSprite* create() = imac 0x288660, m1 0x229d88, ios 0x2377b0;
    static cocos2d::CCSprite* create(char const*) = imac 0x288340, m1 0x229a78, ios 0x23768c;
    static cocos2d::CCSprite* create(char const*, cocos2d::CCRect const&) = imac 0x288430, m1 0x229b68;
    static cocos2d::CCSprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x288530, m1 0x229c6c, ios 0x237708;
    static cocos2d::CCSprite* createWithSpriteFrameName(char const*) = imac 0x288630, m1 0x229d60, ios 0x237788;
    static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*) = imac 0x2880b0, m1 0x2297fc, ios 0x237580;
    static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = imac 0x288240, m1 0x229974, ios 0x237600;

    virtual bool init() = imac 0x288750, m1 0x229e70, ios 0x237824;
    virtual void setVertexZ(float) = imac 0x28a220, m1 0x22b6a8, ios 0x238f88;
    virtual void setScaleX(float) = imac 0x28a0c0, m1 0x22b518, ios 0x238df8;
    virtual void setScaleY(float) = imac 0x28a130, m1 0x22b598, ios 0x238e78;
    virtual void setScale(float) = imac 0x28a1a0, m1 0x22b618, ios 0x238ef8;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x289e10, m1 0x22b23c, ios 0x238b1c;
    virtual void setSkewX(float) = imac 0x289fe0, m1 0x22b430, ios 0x238d10;
    virtual void setSkewY(float) = imac 0x28a050, m1 0x22b4a4, ios 0x238d84;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x28a290, m1 0x22b71c, ios 0x238ffc;
    virtual void setVisible(bool) = imac 0x28a310, m1 0x22b794, ios 0x239074;
    virtual void setRotation(float) = imac 0x289e90, m1 0x22b2d4, ios 0x238bb4;
    virtual void setRotationX(float) = imac 0x289f00, m1 0x22b348, ios 0x238c28;
    virtual void setRotationY(float) = imac 0x289f70, m1 0x22b3bc, ios 0x238c9c;
    virtual void ignoreAnchorPointForPosition(bool) = imac 0x28a300, m1 0x22b790, ios 0x239070;
    virtual void addChild(cocos2d::CCNode*) = imac 0x289950, m1 0x22ad68, ios 0x23865c;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x289960, m1 0x22ad6c, ios 0x238660;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x289970, m1 0x22ad70, ios 0x238664;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x289ab0, m1 0x22aed8, ios 0x2387cc;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x289af0, m1 0x22af20, ios 0x238814;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x289a30, m1 0x22ae44, ios 0x238738;
    virtual void sortAllChildren() = imac 0x289bb0, m1 0x22afd4, ios 0x2388c0;
    virtual void draw() = imac 0x289830, m1 0x22ac58, ios 0x238550;
    virtual void updateTransform() = imac 0x289320, m1 0x22a86c, ios 0x238164;
    virtual bool initWithTexture(cocos2d::CCTexture2D*) = imac 0x288910, m1 0x229fec, ios 0x2379a0;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = imac 0x2888f0, m1 0x229fdc, ios 0x237990;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = imac 0x288770, m1 0x229e88, ios 0x23783c;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x288a70, m1 0x22a160, ios 0x237b14;
    virtual bool initWithSpriteFrameName(char const*) = imac 0x288ac0, m1 0x22a1c4, ios 0x237b78;
    virtual bool initWithFile(char const*) = imac 0x288980, m1 0x22a068, ios 0x237a1c;
    virtual bool initWithFile(char const*, cocos2d::CCRect const&) = imac 0x288a10, m1 0x22a0fc, ios 0x237ab0;
    virtual void setChildColor(cocos2d::ccColor3B const&) = imac 0x28a920, m1 0x22bb8c, ios 0x2393a4;
    virtual void setChildOpacity(unsigned char) = imac 0x28a6f0, m1 0x22ba30, ios 0x239298;
    virtual cocos2d::CCSpriteBatchNode* getBatchNode() = imac 0x28b0f0, m1 0x22bf94, ios 0x239794;
    virtual void setBatchNode(cocos2d::CCSpriteBatchNode*) = imac 0x28b100, m1 0x22bf9c, ios 0x23979c;
    virtual void refreshTextureRect() = imac 0x288cc0, m1 0x22a370, ios 0x237ca0;
    virtual void setTextureRect(cocos2d::CCRect const&) = imac 0x288d50, m1 0x22a3f4, ios 0x237d24;
    virtual void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&) = imac 0x288d70, m1 0x22a408, ios 0x237d38;
    virtual void setVertexRect(cocos2d::CCRect const&) = imac 0x2890d0, m1 0x22a698, ios 0x237fa4;
    virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = imac 0x28ade0, m1 0x22bd14, ios 0x239524;
    virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = imac 0x28aeb0, m1 0x22bde8, ios 0x2395f8;
    virtual cocos2d::CCSpriteFrame* displayFrame() = imac 0x28af40, m1 0x22be8c, ios 0x23968c;
    virtual void setDisplayFrameWithAnimationName(char const*, int) = imac 0x28ae60, m1 0x22bd94, ios 0x2395a4;
    virtual void setTextureCoords(cocos2d::CCRect const&) = imac 0x2890f0, m1 0x22a6a0, ios 0x237fac;
    virtual void updateBlendFunc() = imac 0x28b170, m1 0x22bfe8, ios 0x2397e8;
    virtual void setReorderChildDirtyRecursively() = imac 0x289d30, m1 0x22b158, ios 0x238a38;
    virtual void setDirtyRecursively(bool) = imac 0x289d90, m1 0x22b1c0, ios 0x238aa0;
    virtual void setOpacity(unsigned char) = imac 0x28a540, m1 0x22b938, ios 0x239218;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x28ac90, m1 0x22bcc8, ios 0x2394d8;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x28a7a0, m1 0x22bad8, ios 0x239338;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = imac 0x28ab40, m1 0x22bc7c, ios 0x23948c;
    virtual void setOpacityModifyRGB(bool) = imac 0x28a9d0, m1 0x22bc34, ios 0x239444;
    virtual bool isOpacityModifyRGB() = imac 0x28ab20, m1 0x22bc6c, ios 0x23947c;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x28b1d0, m1 0x22c044, ios 0x239840;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x28b340, m1 0x22c184, ios 0x239980;

    bool isFlipX() = imac 0x28a3c0, m1 0x22b834, ios 0x239114;
    bool isFlipY() = imac 0x28a410, m1 0x22b868, ios 0x239148;
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
    void setFlipX(bool) = imac 0x28a380, m1 0x22b808, ios 0x2390e8;
    void setFlipY(bool) = imac 0x28a3d0, m1 0x22b83c, ios 0x23911c;
    // bool isTextureRectRotated();
    void updateColor();

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
    CCSpriteBatchNode() = imac 0x1766b0, m1 0x13cbb4, ios 0x1d7234;
    virtual ~CCSpriteBatchNode() = imac 0x176700, m1 0x13cbe4, ios 0x1d7264;

    static cocos2d::CCSpriteBatchNode* create(char const* fileImage, unsigned int capacity) = imac 0x176520, m1 0x13ca2c, ios 0x1d7104;
    static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x1762f0, m1 0x13c83c, ios 0x1d6f64;

    virtual bool init() = imac 0x176660, m1 0x13cb58, ios 0x1d71d8;
    virtual void addChild(cocos2d::CCNode*) = imac 0x176b10, m1 0x13cfd8, ios 0x1d7584;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x176b20, m1 0x13cfdc, ios 0x1d7588;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x1768d0, m1 0x13cd88, ios 0x1d737c;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x176b90, m1 0x13d054, ios 0x1d7600;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x176e70, m1 0x13d2b8, ios 0x1d7790;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x176b30, m1 0x13cfe0, ios 0x1d758c;
    virtual void sortAllChildren() = imac 0x176f20, m1 0x13d358, ios 0x1d7830;
    virtual void draw() = imac 0x1776e0, m1 0x13d8e4, ios 0x1d7bac;
    virtual void visit() = imac 0x176830, m1 0x13ccd8, ios 0x1d72cc;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x177f50, m1 0x13e150, ios 0x1d7d5c;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x177f70, m1 0x13e160, ios 0x1d7d6c;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x177f90, m1 0x13e170, ios 0x1d7d7c;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x177fc0, m1 0x13e190, ios 0x1d7d9c;

    cocos2d::CCSpriteBatchNode* addSpriteWithoutQuad(cocos2d::CCSprite*, unsigned int, int);
    void appendChild(cocos2d::CCSprite*);
    unsigned int atlasIndexForChild(cocos2d::CCSprite*, int);
    int getAtlasCapacity();
    int getUsedAtlasCapacity();
    unsigned int highestAtlasIndexInChild(cocos2d::CCSprite*);
    void increaseAtlasCapacity();
    void increaseAtlasCapacity(unsigned int);
    bool initWithFile(char const*, unsigned int);
    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x1763e0, m1 0x13c8f0, ios 0x1d6fe8;
    void insertChild(cocos2d::CCSprite*, unsigned int);
    void insertQuadFromSprite(cocos2d::CCSprite*, unsigned int);
    unsigned int lowestAtlasIndexInChild(cocos2d::CCSprite*);
    void manualSortAllChildren();
    unsigned int rebuildIndexInOrder(cocos2d::CCSprite*, unsigned int);
    void removeChildAtIndex(unsigned int, bool);
    void removeSpriteFromAtlas(cocos2d::CCSprite*);
    void reorderBatch(bool);
    void swap(int, int);
    void updateAtlasIndex(cocos2d::CCSprite*, int*);
    void updateBlendFunc();
    void updateQuadFromSprite(cocos2d::CCSprite*, unsigned int);

    cocos2d::CCTextureAtlas* m_pobTextureAtlas;
    cocos2d::ccBlendFunc m_blendFunc;
    cocos2d::CCArray* m_pobDescendants;
    bool m_bManualSortChildren;
    bool m_bManualSortAllChildrenDirty;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrame : cocos2d::CCObject {
    // CCSpriteFrame(cocos2d::CCSpriteFrame const&);
    virtual ~CCSpriteFrame() = imac 0x358010, m1 0x2e3db0, ios 0x24e344;

    static cocos2d::CCSpriteFrame* create(char const* filename, cocos2d::CCRect const& rect) = imac 0x357580, m1 0x2e3584, ios inline;
    static cocos2d::CCSpriteFrame* create(char const* filename, cocos2d::CCRect const& rect, bool rotated, cocos2d::CCPoint const& offset, cocos2d::CCSize const& size) = imac 0x357cd0, m1 0x2e3b48, ios inline;
    static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D* pobTexture, cocos2d::CCRect const& rect) = imac 0x357790, m1 0x2e3730, ios inline;
    static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x3579a0, m1 0x2e38dc, ios 0x24df84;

    // bool isRotated();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x358160, m1 0x2e3f14, ios 0x24e3b8;

    cocos2d::CCPoint const& getOffset() = imac 0x3584c0, m1 0x2e41ac, ios 0x24e4f0;
    cocos2d::CCPoint const& getOffsetInPixels() = imac 0x358560, m1 0x2e4220, ios 0x24e4f8;
    // cocos2d::CCSize const& getOriginalSize();
    // cocos2d::CCSize const& getOriginalSizeInPixels();
    // cocos2d::CCRect const& getRect();
    // cocos2d::CCRect const& getRectInPixels();
    cocos2d::CCTexture2D* getTexture() = imac 0x358600, m1 0x2e4294, ios 0x24e500;
    bool initWithTexture(cocos2d::CCTexture2D* pobTexture, cocos2d::CCRect const& rect) = imac 0x3578b0, m1 0x2e381c, ios inline;
    bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x357ae0, m1 0x2e39e8, ios 0x24e088;
    bool initWithTextureFilename(char const* filename, cocos2d::CCRect const& rect) = imac 0x3576a0, m1 0x2e3670, ios inline;
    bool initWithTextureFilename(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x357e10, m1 0x2e3c54, ios 0x24e1e8;
    void setOffset(cocos2d::CCPoint const&) = imac 0x3584d0, m1 0x2e41b4, ios inline;
    void setOffsetInPixels(cocos2d::CCPoint const&) = imac 0x358570, m1 0x2e4228, ios inline;
    // void setOriginalSize(cocos2d::CCSize const&);
    // void setOriginalSizeInPixels(cocos2d::CCSize const&);
    void setRect(cocos2d::CCRect const&) = imac 0x358300, m1 0x2e4070, ios inline;
    void setRectInPixels(cocos2d::CCRect const&) = imac 0x3583e0, m1 0x2e410c, ios inline;
    // void setRotated(bool);
    void setTexture(cocos2d::CCTexture2D*) = imac 0x3582c0, m1 0x2e402c, ios 0x24e4ac;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrameCache : cocos2d::CCObject {
    // CCSpriteFrameCache();
    // CCSpriteFrameCache(cocos2d::CCSpriteFrameCache const&);
    virtual ~CCSpriteFrameCache();

    static void purgeSharedSpriteFrameCache();
    static cocos2d::CCSpriteFrameCache* sharedSpriteFrameCache() = imac 0x31c020, m1 0x2aa184, ios 0x3bbe68;

    void addSpriteFrame(cocos2d::CCSpriteFrame* pobFrame, char const* pszFrameName) = imac 0x31d270, m1 0x2ab430, ios inline;
    void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*) = imac 0x31c310, m1 0x2aa458, ios 0x3bbff8;
    void addSpriteFramesWithFile(char const*) = imac 0x31cf10, m1 0x2aaf9c, ios 0x3bc8ac;
    void addSpriteFramesWithFile(char const* plist, char const* textureFilename) = imac 0x31cea0, m1 0x2aaf2c, ios inline;
    void addSpriteFramesWithFile(char const* plist, cocos2d::CCTexture2D* texture) = imac 0x31ce60, m1 0x2aaee4, ios inline;
    bool init();
    void removeSpriteFrameByName(char const* name) = imac 0x31d450, m1 0x2ab614, ios inline;
    void removeSpriteFrames() = imac 0x31d360, m1 0x2ab530;
    void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*) = imac 0x31d930, m1 0x2abba8, ios 0x3bcc20;
    void removeSpriteFramesFromFile(char const*) = imac 0x31d760, m1 0x2ab8dc, ios 0x3bcb10;
    void removeSpriteFramesFromTexture(cocos2d::CCTexture2D*) = imac 0x31db60, m1 0x2abde0;
    void removeUnusedSpriteFrames() = imac 0x31d3a0, m1 0x2ab57c;
    cocos2d::CCSpriteFrame* spriteFrameByName(char const*) = imac 0x31de60, m1 0x2ac0c8, ios 0x3bcd44;
}

[[link(win, android)]]
class cocos2d::CCStandardTouchHandler : cocos2d::CCTouchHandler {

    virtual ~CCStandardTouchHandler();

    static cocos2d::CCStandardTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int);

    virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int) = imac 0x481410, m1 0x3e7514, ios 0xc5ec;
}

[[link(win, android)]]
class cocos2d::CCStopGrid : cocos2d::CCActionInstant {
    static cocos2d::CCStopGrid* create() = imac 0x20ae20, m1 0x1b6ccc;

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x20ade0, m1 0x1b6c7c;
}

[[link(win, android)]]
class cocos2d::CCString : cocos2d::CCObject {
    static cocos2d::CCString* createWithContentsOfFile(char const*) = imac 0x7ab6d0, m1 0x6b2100, ios 0x268fd4;
    static cocos2d::CCString* createWithData(unsigned char const*, unsigned long) = imac 0x7ab400, m1 0x6b1ec0, ios 0x268e98;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7ab1c0, m1 0x6b1c7c, ios 0x268d58;
    virtual bool isEqual(cocos2d::CCObject const*) = imac 0x7ab2c0, m1 0x6b1d7c, ios 0x268db0;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x7ab730, m1 0x6b216c, ios 0x26903c;

    bool boolValue() const = imac 0x7ab140, m1 0x6b1bec, ios 0x268ce0;
    int compare(char const*) const = imac 0x7ab1a0, m1 0x6b1c60, ios inline;
    double doubleValue() const = imac 0x7ab110, m1 0x6b1bc0, ios 0x268cb4;
    float floatValue() const = imac 0x7ab0e0, m1 0x6b1b80, ios 0x268c74;
    // static cocos2d::CCString* createWithFormat(char const*, ...) = ios 0x2680c0, m1 0x6a8cd0;
    char const* getCString() const = imac 0x7aad70, m1 0x6b1878, ios 0x268b2c;
    int intValue() const = imac 0x7ab060, m1 0x6b1b10, ios 0x268c30;
    unsigned int length() const = imac 0x7ab090, m1 0x6b1b3c, ios 0x268c5c;
    unsigned int uintValue() const = imac 0x7ab0b0, m1 0x6b1b54, ios inline;

    gd::string m_sString;
}

[[link(win, android)]]
class cocos2d::CCTargetedAction : cocos2d::CCActionInterval {
    CCTargetedAction() = imac 0x3bcbb0, m1 0x33eb28;
    virtual ~CCTargetedAction() = imac 0x3bcbe0, m1 0x33eb50;

    static cocos2d::CCTargetedAction* create(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*) = imac 0x3bccd0, m1 0x33ec2c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3bcdf0, m1 0x33ed3c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3bcf10, m1 0x33ee40;
    virtual void stop() = imac 0x3bcf40, m1 0x33ee78;
    virtual void update(float) = imac 0x3bcf50, m1 0x33ee88;

    bool initWithTarget(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*) = imac 0x3bcd80, m1 0x33ecd0;
}

[[link(win, android)]]
class cocos2d::CCTargetedTouchHandler : cocos2d::CCTouchHandler {

    virtual ~CCTargetedTouchHandler() = imac 0x4816d0, m1 0x3e77b8, ios 0xc784;

    static cocos2d::CCTargetedTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int, bool);

    cocos2d::CCSet* getClaimedTouches() = imac 0x481540, m1 0x3e763c, ios 0xc690;
    bool initWithDelegate(cocos2d::CCTouchDelegate*, int, bool);
    // CCTargetedTouchHandler(cocos2d::CCTargetedTouchHandler const&);
    // CCTargetedTouchHandler();
    bool isSwallowsTouches();
    void setSwallowsTouches(bool);

    bool m_bSwallowsTouches;
    cocos2d::CCSet* m_pClaimedTouches;
}

[[link(win, android)]]
class cocos2d::CCTextFieldTTF : cocos2d::CCLabelTTF, cocos2d::CCIMEDelegate {
    CCTextFieldTTF() = imac 0x27bc90, m1 0x21deb8, ios 0x1cb018;
    virtual ~CCTextFieldTTF() = imac 0x27bdb0, m1 0x21df84, ios 0x1cb0d4;

    static cocos2d::CCTextFieldTTF* textFieldWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize) = imac 0x27c110, m1 0x21e25c, ios 0x1cb1a8;
    static cocos2d::CCTextFieldTTF* textFieldWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize) = imac 0x27bf00, m1 0x21e058, ios inline;

    // void setDelegate(cocos2d::CCTextFieldDelegate* var);
    virtual void draw() = imac 0x27cb60, m1 0x21ece4, ios 0x1cb8f8;
    virtual const cocos2d::ccColor3B& getColorSpaceHolder() = imac 0x27cc00, m1 0x21eda0, ios 0x1cb9b4;
    virtual void setColorSpaceHolder(const cocos2d::ccColor3B& color) = imac 0x27cc10, m1 0x21eda8, ios 0x1cb9bc;
    virtual const char* getPlaceHolder() = imac 0x27d080, m1 0x21f1ac, ios 0x1cbc9c;
    virtual void setPlaceHolder(const char* text) = imac 0x27cf20, m1 0x21f060, ios 0x1cbbd4;
    virtual void setSecureTextEntry(bool value) = imac 0x27d0a0, m1 0x21f1c4, ios 0x1cbcb4;
    virtual bool isSecureTextEntry() = imac 0x27d0e0, m1 0x21f210, ios 0x1cbd00;
    virtual void setString(const char* text) = imac 0x27cc30, m1 0x21edbc, ios 0x1cb9d0;
    virtual const char* getString() = imac 0x27cee0, m1 0x21f030, ios 0x1cbba4;
    virtual bool attachWithIME() = imac 0x27c2e0, m1 0x21e444, ios 0x1cb258;
    virtual bool detachWithIME() = imac 0x27c360, m1 0x21e4d0, ios 0x1cb2a8;
    virtual bool canAttachWithIME() = imac 0x27c3e0, m1 0x21e55c, ios 0x1cb2f8;
    virtual bool canDetachWithIME() = imac 0x27c430, m1 0x21e5c8, ios 0x1cb364;
    virtual void insertText(const char* text, int len, cocos2d::enumKeyCodes keyCode) = imac 0x27c480, m1 0x21e634, ios 0x1cb3d0;
    virtual void deleteBackward() = imac 0x27c7c0, m1 0x21e9ac, ios 0x1cb698;
    virtual void deleteForward() = imac 0x27c760, m1 0x21e94c, ios 0x1cb638;
    virtual const char* getContentText() = imac 0x27cb20, m1 0x21ecb4, ios 0x1cb8c8;

    bool initWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize) = imac 0x27c1a0, m1 0x21e320, ios inline;
    bool initWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize) = imac 0x27bfb0, m1 0x21e120, ios inline;

    cocos2d::CCTextFieldDelegate* m_pDelegate;
    int m_nCharCount;
    gd::string* m_pInputText;
    gd::string* m_pPlaceHolder;
    cocos2d::ccColor3B m_ColorSpaceHolder;
    bool m_bSecureTextEntry;
    cocos2d::CCTextFieldTTF::LengthStack* m_pLens;
    int m_uCursorPos;
}

[[link(win, android)]]
class cocos2d::CCTexture2D : cocos2d::CCObject {
    CCTexture2D() = imac 0x477f60, m1 0x3dedfc, ios 0x12d34c;
    // CCTexture2D(cocos2d::CCTexture2D const&);
    virtual ~CCTexture2D() = imac 0x478020, m1 0x3deec4, ios 0x12d3b4;

    static cocos2d::CCTexture2DPixelFormat defaultAlphaPixelFormat();
    static void PVRImagesHavePremultipliedAlpha(bool) = imac 0x479490, m1 0x3e0274, ios 0x12dedc;
    static void setDefaultAlphaPixelFormat(cocos2d::CCTexture2DPixelFormat) = imac 0x479650, m1 0x3e0434;

    virtual cocos2d::CCTexture2DPixelFormat getPixelFormat() = imac 0x478110, m1 0x3defa0, ios 0x12d414;
    virtual unsigned int getPixelsWide() = imac 0x478120, m1 0x3defa8, ios 0x12d41c;
    virtual unsigned int getPixelsHigh() = imac 0x478130, m1 0x3defb0, ios 0x12d424;
    virtual unsigned int getName() = imac 0x478140, m1 0x3defb8, ios 0x12d42c;
    virtual float getMaxS() = imac 0x4781d0, m1 0x3df020, ios 0x12d494;
    virtual void setMaxS(float) = imac 0x4781e0, m1 0x3df028, ios 0x12d49c;
    virtual float getMaxT() = imac 0x4781f0, m1 0x3df030, ios 0x12d4a4;
    virtual void setMaxT(float) = imac 0x478200, m1 0x3df038, ios 0x12d4ac;
    virtual cocos2d::CCSize getContentSize() = imac 0x478150, m1 0x3defc0, ios 0x12d434;
    virtual cocos2d::CCGLProgram* getShaderProgram() = imac 0x478210, m1 0x3df040, ios 0x12d4b4;
    virtual void setShaderProgram(cocos2d::CCGLProgram*) = imac 0x478220, m1 0x3df048, ios 0x12d4bc;

    unsigned int bitsPerPixelForFormat() = imac 0x479670, m1 0x3e044c, ios inline;
    unsigned int bitsPerPixelForFormat(cocos2d::CCTexture2DPixelFormat) = imac 0x4785c0, m1 0x3df3a8, ios inline;
    char const* description() = imac 0x4785e0, m1 0x3df3c8;
    void drawAtPoint(cocos2d::CCPoint const&) = imac 0x4790e0, m1 0x3dfecc;
    void drawInRect(cocos2d::CCRect const&) = imac 0x4791f0, m1 0x3dffe4;
    void generateMipmap() = imac 0x4794a0, m1 0x3e0280;
    cocos2d::CCSize const& getContentSizeInPixels() = imac 0x4781c0, m1 0x3df018, ios 0x12d48c;
    bool hasMipmaps();
    bool hasPremultipliedAlpha();
    bool initPremultipliedATextureWithImage(cocos2d::CCImage*, unsigned int, unsigned int) = imac 0x478680, m1 0x3df488, ios 0x12d86c;
    bool initWithData(void const*, cocos2d::CCTexture2DPixelFormat, unsigned int, unsigned int, cocos2d::CCSize const&) = imac 0x4782c0, m1 0x3df0c8, ios 0x12d500;
    bool initWithETCFile(char const*) = imac 0x4793c0, m1 0x3e01ac;
    bool initWithImage(cocos2d::CCImage*) = imac 0x478620, m1 0x3df40c, ios 0x12d7fc;
    bool initWithPVRFile(char const*) = imac 0x4792e0, m1 0x3e00d8;
    bool initWithString(char const*, cocos2d::ccFontDefinition*) = m1 0x3dfec4, imac 0x4790d0, ios 0x12db2c;
    bool initWithString(char const*, char const*, float) = imac 0x478f30, m1 0x3dfd08, ios inline;
    bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment) = imac 0x478f90, m1 0x3dfd78, ios inline;
    void* keepData(void*, unsigned int);
    void releaseData(void*);
    void releaseGLTexture() = imac 0x478260, m1 0x3df084;
    void setAliasTexParameters() = imac 0x479580, m1 0x3e0370, ios 0x12df80;
    void setAntiAliasTexParameters() = imac 0x4795d0, m1 0x3e03c0, ios 0x12dfd0;
    void setTexParameters(cocos2d::ccTexParams*) = imac 0x4794f0, m1 0x3e02d8, ios 0x12dee8;
    char const* stringForFormat() = imac 0x479620, m1 0x3e0410;
}

[[link(win, android)]]
class cocos2d::CCTextureAtlas : cocos2d::CCObject {
    // void setDirty(bool);
    // CCTextureAtlas(cocos2d::CCTextureAtlas const&);
    CCTextureAtlas() = imac 0x4accb0, m1 0x40f9a4, ios 0x269df8;
    virtual ~CCTextureAtlas() = imac 0x4accf0, m1 0x40f9d4, ios 0x269e28;

    static cocos2d::CCTextureAtlas* create(char const*, unsigned int);
    static cocos2d::CCTextureAtlas* createWithTexture(cocos2d::CCTexture2D*, unsigned int);

    virtual unsigned int getTotalQuads() = imac 0x4acdb0, m1 0x40fa68, ios 0x269ebc;
    virtual unsigned int getCapacity() = imac 0x4acdc0, m1 0x40fa70, ios 0x269ec4;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x4acdd0, m1 0x40fa78, ios 0x269ecc;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x4acde0, m1 0x40fa80, ios 0x269ed4;
    virtual cocos2d::ccV3F_C4B_T2F_Quad* getQuads() = imac 0x4ace20, m1 0x40fabc, ios 0x269f10;
    virtual void setQuads(cocos2d::ccV3F_C4B_T2F_Quad*) = imac 0x4ace30, m1 0x40facc, ios 0x269f20;

    char const* description();
    void drawNumberOfQuads(unsigned int);
    void drawNumberOfQuads(unsigned int, unsigned int);
    void drawQuads();
    void fillWithEmptyQuadsFromIndex(unsigned int, unsigned int);
    void increaseTotalQuadsWith(unsigned int);
    bool initWithFile(char const*, unsigned int);
    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int);
    void insertQuad(cocos2d::ccV3F_C4B_T2F_Quad*, unsigned int);
    void insertQuadFromIndex(unsigned int, unsigned int);
    void insertQuads(cocos2d::ccV3F_C4B_T2F_Quad*, unsigned int, unsigned int);
    // bool isDirty();
    void listenBackToForeground(cocos2d::CCObject*);
    void mapBuffers();
    void moveQuadsFromIndex(unsigned int, unsigned int);
    void moveQuadsFromIndex(unsigned int, unsigned int, unsigned int);
    void removeAllQuads();
    void removeQuadAtIndex(unsigned int);
    void removeQuadsAtIndex(unsigned int, unsigned int);
    bool resizeCapacity(unsigned int);
    void setupIndices();
    [[missing(mac, ios)]]
    void setupVBO();
    [[missing(win, android)]]
    void setupVBOandVAO();
    void updateQuad(cocos2d::ccV3F_C4B_T2F_Quad*, unsigned int);
}

[[link(win, android)]]
class cocos2d::CCTextureCache : cocos2d::CCObject {
    // CCTextureCache(cocos2d::CCTextureCache const&);
    CCTextureCache();
    virtual ~CCTextureCache();

    static void purgeSharedTextureCache();
    static void reloadAllTextures();
    static cocos2d::CCTextureCache* sharedTextureCache() = imac 0x5ec810, m1 0x5166bc, ios 0x113204;

    cocos2d::CCTexture2D* addETCImage(char const*);
    cocos2d::CCTexture2D* addImage(char const*, bool) = imac 0x5edad0, m1 0x517884, ios 0x113dec;
    void addImageAsync(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler, int, cocos2d::CCTexture2DPixelFormat) = imac 0x5eccd0, m1 0x516b58, ios 0x113394;
    void addImageAsyncCallBack(float);
    cocos2d::CCTexture2D* addPVRImage(char const*);
    cocos2d::CCTexture2D* addUIImage(cocos2d::CCImage*, char const*) = imac 0x5ee8e0, m1 0x518714, ios 0x1147a0;
    char const* description() = imac 0x5ecaf0, m1 0x516998;
    void dumpCachedTextureInfo();
    void prepareAsyncLoading() = imac 0x5ecc90, m1 0x516b24, ios 0x113360;
    bool reloadTexture(char const*);
    void removeAllTextures();
    void removeTexture(cocos2d::CCTexture2D*);
    void removeTextureForKey(char const*) = imac 0x5eee60, m1 0x518ccc, ios 0x114930;
    void removeUnusedTextures();
    cocos2d::CCDictionary* snapshotTextures();
    cocos2d::CCTexture2D* textureForKey(char const*) = imac 0x5eeee0, m1 0x518d5c, ios 0x1149b0;
}

[[link(win, android)]]
class cocos2d::CCTextureETC : cocos2d::CCObject {
    CCTextureETC();
    virtual ~CCTextureETC();

    unsigned int getHeight() const;
    unsigned int getName() const;
    unsigned int getWidth() const;
    bool initWithFile(char const*);
    bool loadTexture(char const*);
}

[[link(win, android)]]
class cocos2d::CCTexturePVR : cocos2d::CCObject {
    CCTexturePVR();
    virtual ~CCTexturePVR();

    static cocos2d::CCTexturePVR* create(char const*);

    bool createGLTexture();
    bool initWithContentsOfFile(char const*);
    bool unpackPVRv2Data(unsigned char*, unsigned int);
    bool unpackPVRv3Data(unsigned char*, unsigned int);
}

[[link(win, android)]]
class cocos2d::CCThread {

    ~CCThread();

    void createAutoreleasePool();
}

[[link(win, android)]]
class cocos2d::CCTiledGrid3D : cocos2d::CCGridBase {
    CCTiledGrid3D() = imac 0x4e46c0, m1 0x43f9c4;
    virtual ~CCTiledGrid3D() = imac 0x4e4720, m1 0x43fa2c;

    static cocos2d::CCTiledGrid3D* create(cocos2d::CCSize const&) = imac 0x4e48d0, m1 0x43fb94;
    static cocos2d::CCTiledGrid3D* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = imac 0x4e4810, m1 0x43fad8;

    virtual void blit() = imac 0x4e4980, m1 0x43fc60;
    virtual void reuse() = imac 0x4e5040, m1 0x440014;
    virtual void calculateVertexPoints() = imac 0x4e4a20, m1 0x43fd04;

    cocos2d::ccQuad3 originalTile(cocos2d::CCPoint const&) = imac 0x4e4fa0, m1 0x43ff9c;
    void setTile(cocos2d::CCPoint const&, cocos2d::ccQuad3 const&) = imac 0x4e4f50, m1 0x43ff60;
    cocos2d::ccQuad3 tile(cocos2d::CCPoint const&) = imac 0x4e4ff0, m1 0x43ffd8;
}

[[link(win, android)]]
class cocos2d::CCTiledGrid3DAction : cocos2d::CCGridAction {
    static cocos2d::CCTiledGrid3DAction* create(float, cocos2d::CCSize const&) = imac 0x20a3b0, m1 0x1b6210;

    virtual cocos2d::CCGridBase* getGrid() = imac 0x20a310, m1 0x1b6160;

    cocos2d::ccQuad3 originalTile(cocos2d::CCPoint const&) = imac 0x20a350, m1 0x1b61a0;
    void setTile(cocos2d::CCPoint const&, cocos2d::ccQuad3 const&) = imac 0x20a380, m1 0x1b61d8;
    cocos2d::ccQuad3 tile(cocos2d::CCPoint const&) = imac 0x20a320, m1 0x1b6168;
}

[[link(win, android)]]
class cocos2d::CCTileMapAtlas : cocos2d::CCAtlasNode {
    CCTileMapAtlas() = imac 0x22c9b0, m1 0x1d6274;
    virtual ~CCTileMapAtlas() = imac 0x22cdc0, m1 0x1d6784;

    static cocos2d::CCTileMapAtlas* create(char const*, char const*, int, int);

    virtual cocos2d::sImageTGA* getTGAInfo() = imac 0x22d640, m1 0x1d6ed0;
    virtual void setTGAInfo(cocos2d::sImageTGA*) = imac 0x22d630, m1 0x1d6ec8;
    virtual void updateAtlasValues() = imac 0x22d400, m1 0x1d6c8c;

    void calculateItemsToRender();
    bool initWithTileFile(char const*, char const*, int, int);
    void loadTGAfile(char const*);
    void releaseMap();
    void setTile(cocos2d::ccColor3B const&, cocos2d::CCPoint const&);
    cocos2d::ccColor3B tileAt(cocos2d::CCPoint const&);
    void updateAtlasValueAt(cocos2d::CCPoint const&, cocos2d::ccColor3B const&, unsigned int);
}

[[link(win, android)]]
class cocos2d::CCTime {
    static int gettimeofdayCocos2d(cocos2d::cc_timeval*, void*);
    static double timersubCocos2d(cocos2d::cc_timeval*, cocos2d::cc_timeval*);
}

[[link(win, android)]]
class cocos2d::CCTimer : cocos2d::CCObject {
    CCTimer();

    static cocos2d::CCTimer* timerWithScriptHandler(int, float);
    static cocos2d::CCTimer* timerWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE);
    static cocos2d::CCTimer* timerWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE, float);

    virtual void update(float) = imac 0x441b00, m1 0x3b3134, ios 0x1a9e18;

    float getInterval() const;
    cocos2d::SEL_SCHEDULE getSelector() const;
    bool initWithScriptHandler(int, float);
    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE);
    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE, float, unsigned int, float);
    void setInterval(float);
}

[[link(win, android)]]
class cocos2d::CCTintBy : cocos2d::CCActionInterval {
    static cocos2d::CCTintBy* create(float, short, short, short) = imac 0x3bb7b0, m1 0x33d978;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3bb8c0, m1 0x33da58;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3bb9e0, m1 0x33db58;
    virtual void update(float) = imac 0x3bba50, m1 0x33dbd0;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3bbb20, m1 0x33dca0;

    bool initWithDuration(float, short, short, short) = imac 0x3bb880, m1 0x33da28;
}

[[link(win, android)]]
class cocos2d::CCTintTo : cocos2d::CCActionInterval {
    static cocos2d::CCTintTo* create(float, unsigned char, unsigned char, unsigned char) = imac 0x3bb440, m1 0x33d678, ios 0x18cedc;

    // CCTintTo(cocos2d::CCTintTo const&);
    // CCTintTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3bb560, m1 0x33d754, ios 0x18cf88;
    virtual void update(float) = imac 0x3bb6d0, m1 0x33d8b4, ios 0x18d0e4;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3bb670, m1 0x33d848, ios 0x18d078;

    bool initWithDuration(float, unsigned char, unsigned char, unsigned char) = imac 0x3bb510, m1 0x33d724, ios inline;
}

[[link(win, android)]]
class cocos2d::CCTMXLayer : cocos2d::CCSpriteBatchNode {
    CCTMXLayer() = imac 0x259a00, m1 0x1fec04;
    virtual ~CCTMXLayer() = imac 0x259eb0, m1 0x1ff018;

    static cocos2d::CCTMXLayer* create(cocos2d::CCTMXTilesetInfo*, cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);

    virtual cocos2d::CCTMXTilesetInfo* getTileSet() = imac 0x259fa0, m1 0x1ff0cc;
    virtual void setTileSet(cocos2d::CCTMXTilesetInfo*) = imac 0x259fb0, m1 0x1ff0d4;
    virtual cocos2d::CCDictionary* getProperties() = imac 0x25b900, m1 0x200780;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x25b910, m1 0x200788;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x25b730, m1 0x200638;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x25b740, m1 0x20063c;

    cocos2d::CCSprite* appendTileForGID(unsigned int, cocos2d::CCPoint const&);
    unsigned int atlasIndexForExistantZ(unsigned int);
    unsigned int atlasIndexForNewZ(int);
    cocos2d::CCPoint calculateLayerOffset(cocos2d::CCPoint const&);
    bool initWithTilesetInfo(cocos2d::CCTMXTilesetInfo*, cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);
    cocos2d::CCSprite* insertTileForGID(unsigned int, cocos2d::CCPoint const&);
    void parseInternalProperties();
    cocos2d::CCPoint positionAt(cocos2d::CCPoint const&);
    cocos2d::CCPoint positionForHexAt(cocos2d::CCPoint const&);
    cocos2d::CCPoint positionForIsoAt(cocos2d::CCPoint const&);
    cocos2d::CCPoint positionForOrthoAt(cocos2d::CCPoint const&);
    cocos2d::CCString* propertyNamed(char const*);
    void releaseMap();
    void removeTileAt(cocos2d::CCPoint const&);
    cocos2d::CCSprite* reusedTileWithRect(cocos2d::CCRect);
    void setTileGID(unsigned int, cocos2d::CCPoint const&);
    void setTileGID(unsigned int, cocos2d::CCPoint const&, cocos2d::ccTMXTileFlags);
    void setupTiles();
    void setupTileSprite(cocos2d::CCSprite*, cocos2d::CCPoint, unsigned int);
    cocos2d::CCSprite* tileAt(cocos2d::CCPoint const&);
    unsigned int tileGIDAt(cocos2d::CCPoint const&);
    unsigned int tileGIDAt(cocos2d::CCPoint const&, cocos2d::ccTMXTileFlags*);
    cocos2d::CCSprite* updateTileForGID(unsigned int, cocos2d::CCPoint const&);
    int vertexZForPos(cocos2d::CCPoint const&);
}

[[link(win, android)]]
class cocos2d::CCTMXLayerInfo : cocos2d::CCObject {
    CCTMXLayerInfo() = imac 0x4ccd00, m1 0x42b9bc;
    virtual ~CCTMXLayerInfo() = imac 0x4ccdc0, m1 0x42ba74;

    virtual cocos2d::CCDictionary* getProperties() = imac 0x4ccf10, m1 0x42bbe4;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x4ccf20, m1 0x42bbec;
}

[[link(win, android)]]
class cocos2d::CCTMXMapInfo : cocos2d::CCObject, cocos2d::CCSAXDelegator {
    CCTMXMapInfo() = imac 0x4cd300, m1 0x42bfec;
    virtual ~CCTMXMapInfo() = imac 0x4cd890, m1 0x42c550;

    static cocos2d::CCTMXMapInfo* formatWithTMXFile(char const*);
    static cocos2d::CCTMXMapInfo* formatWithXML(char const*, char const*);

    virtual cocos2d::CCArray* getLayers() = imac 0x4cd9a0, m1 0x42c62c;
    virtual void setLayers(cocos2d::CCArray*) = imac 0x4cd9b0, m1 0x42c634;
    virtual cocos2d::CCArray* getTilesets() = imac 0x4cd9f0, m1 0x42c670;
    virtual void setTilesets(cocos2d::CCArray*) = imac 0x4cda00, m1 0x42c678;
    virtual cocos2d::CCArray* getObjectGroups() = imac 0x4cda40, m1 0x42c6b4;
    virtual void setObjectGroups(cocos2d::CCArray*) = imac 0x4cda50, m1 0x42c6bc;
    virtual cocos2d::CCDictionary* getProperties() = imac 0x4cda90, m1 0x42c6f8;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x4cdaa0, m1 0x42c700;
    virtual void startElement(void*, char const*, char const**) = imac 0x4cdb30, m1 0x42c780;
    virtual void endElement(void*, char const*) = imac 0x4d0cd0, m1 0x42f0d4;
    virtual void textHandler(void*, char const*, int) = imac 0x4d1110, m1 0x42f54c;

    cocos2d::CCDictionary* getTileProperties();
    bool initWithTMXFile(char const*);
    bool initWithXML(char const*, char const*);
    void internalInit(char const*, char const*);
    bool parseXMLFile(char const*);
    bool parseXMLString(char const*);
    void setTileProperties(cocos2d::CCDictionary*);
}

[[link(win, android)]]
class cocos2d::CCTMXObjectGroup : cocos2d::CCObject {
    CCTMXObjectGroup() = imac 0x49c780, m1 0x4009d8;
    virtual ~CCTMXObjectGroup() = imac 0x49c840, m1 0x400a8c;

    virtual cocos2d::CCDictionary* getProperties() = imac 0x49cb80, m1 0x400e1c;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x49cb90, m1 0x400e24;
    virtual cocos2d::CCArray* getObjects() = imac 0x49cbd0, m1 0x400e60;
    virtual void setObjects(cocos2d::CCArray*) = imac 0x49cbe0, m1 0x400e68;

    cocos2d::CCDictionary* objectNamed(char const*);
    cocos2d::CCString* propertyNamed(char const*);
}

[[link(win, android)]]
class cocos2d::CCTMXTiledMap : cocos2d::CCNode {
    CCTMXTiledMap() = imac 0x518310, m1 0x46ea70;
    virtual ~CCTMXTiledMap() = imac 0x518770, m1 0x46eebc;

    static cocos2d::CCTMXTiledMap* create(char const*);
    static cocos2d::CCTMXTiledMap* createWithXML(char const*, char const*);

    virtual cocos2d::CCArray* getObjectGroups() = imac 0x5188a0, m1 0x46efbc;
    virtual void setObjectGroups(cocos2d::CCArray*) = imac 0x5188b0, m1 0x46efc4;
    virtual cocos2d::CCDictionary* getProperties() = imac 0x5188f0, m1 0x46f000;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x518900, m1 0x46f008;

    void buildWithMapInfo(cocos2d::CCTMXMapInfo*);
    bool initWithTMXFile(char const*);
    bool initWithXML(char const*, char const*);
    cocos2d::CCTMXLayer* layerNamed(char const*);
    cocos2d::CCTMXObjectGroup* objectGroupNamed(char const*);
    cocos2d::CCTMXLayer* parseLayer(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);
    cocos2d::CCDictionary* propertiesForGID(int);
    cocos2d::CCString* propertyNamed(char const*);
    cocos2d::CCTMXTilesetInfo* tilesetForLayer(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);
}

[[link(win, android)]]
class cocos2d::CCTMXTilesetInfo : cocos2d::CCObject {
    CCTMXTilesetInfo();
    virtual ~CCTMXTilesetInfo();

    cocos2d::CCRect rectForGID(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCToggleVisibility : cocos2d::CCActionInstant {
    static cocos2d::CCToggleVisibility* create() = imac 0x7ac7f0, m1 0x6b2f54;

    virtual void update(float) = imac 0x7ac840, m1 0x6b2fac;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7ac870, m1 0x6b2fe8;
}

[[link(win, android)]]
class cocos2d::CCTouch : cocos2d::CCObject {
    cocos2d::CCPoint getDelta() const = imac 0x596d0, m1 0x4cdec, ios inline;
    cocos2d::CCPoint getLocation() const = imac 0x59640, m1 0x4cd68, ios 0x2fe630;
    cocos2d::CCPoint getLocationInView() const = imac 0x595e0, m1 0x4cd44, ios 0x2fe624;
    cocos2d::CCPoint getPreviousLocation() const = imac 0x59670, m1 0x4cd94, ios inline;
    cocos2d::CCPoint getPreviousLocationInView() const = imac 0x59600, m1 0x4cd50;
    cocos2d::CCPoint getStartLocation() const = imac 0x596a0, m1 0x4cdc0, ios inline;
    cocos2d::CCPoint getStartLocationInView() const;

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

    virtual void setPreviousPriority(int);
    virtual int getPreviousPriority();
}

[[link(win, android)]]
class cocos2d::CCTouchDispatcher : cocos2d::CCObject, cocos2d::EGLTouchDelegate {
    // CCTouchDispatcher(cocos2d::CCTouchDispatcher const&);
    // CCTouchDispatcher();
    virtual ~CCTouchDispatcher();

    virtual void touchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4ccba0, m1 0x42b888, ios 0x14f69c;
    virtual void touchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4ccbe0, m1 0x42b8bc, ios 0x14f6d0;
    virtual void touchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4ccc20, m1 0x42b8f0, ios 0x14f704;
    virtual void touchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4ccc60, m1 0x42b924, ios 0x14f738;

    void addPrioTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x4cbcb0, m1 0x42a984, ios 0x14ed58;
    void addStandardDelegate(cocos2d::CCTouchDelegate*, int);
    void addTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x4cbcd0, m1 0x42a99c, ios 0x14ed70;
    void decrementForcePrio(int);
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCTouchDelegate*) = imac 0x4cc2b0, m1 0x42b000, ios 0x14f200;
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCArray*, cocos2d::CCTouchDelegate*);
    void forceAddHandler(cocos2d::CCTouchHandler*, cocos2d::CCArray*);
    void forceRemoveAllDelegates();
    void forceRemoveDelegate(cocos2d::CCTouchDelegate*) = imac 0x4cc040, m1 0x42ad54, ios 0x14efe8;
    void incrementForcePrio(int);
    bool init() = imac 0x4cba00, m1 0x42a6f0, ios 0x14eb34;
    bool isDispatchEvents();
    bool isUsingForcePrio() = imac 0x4cbca0, m1 0x42a974, ios 0x14ed48;
    void rearrangeHandlers(cocos2d::CCArray* handlers) = imac 0x4cc370, m1 0x42b0dc, ios inline;
    void registerForcePrio(cocos2d::CCObject*, int) = imac 0x4cbbb0, m1 0x42a85c, ios 0x14ec68;
    void removeAllDelegates();
    void removeDelegate(cocos2d::CCTouchDelegate*) = imac 0x4cc130, m1 0x42ae48, ios 0x14f0d4;
    // int getTargetPrio() const;
    void setDispatchEvents(bool);
    void setPriority(int p1, cocos2d::CCTouchDelegate* p2) = imac 0x4cc3f0, m1 0x42b164, ios inline;
    void touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int) = imac 0x4cc540, m1 0x42b2d4, ios 0x14f2c0;
    void unregisterForcePrio(cocos2d::CCObject*) = imac 0x4cbc50, m1 0x42a910, ios 0x14ece4;

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

    virtual ~CCTouchHandler() = imac 0x4812f0, m1 0x3e740c, ios 0xc580;

    static cocos2d::CCTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int);

    // CCTouchHandler(cocos2d::CCTouchHandler const&);
    // CCTouchHandler();
    virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int) = imac 0x481290, m1 0x3e739c, ios 0xc524;

    cocos2d::CCTouchDelegate* getDelegate() = imac 0x481120, m1 0x3e7260, ios 0xc514;
    int getEnabledSelectors();
    int getPriority() = imac 0x4811a0, m1 0x3e72d4, ios inline;
    void setDelegate(cocos2d::CCTouchDelegate*);
    void setEnalbedSelectors(int);
    void setPriority(int prio) = imac 0x4811b0, m1 0x3e72dc, ios inline;

    cocos2d::CCTouchDelegate* m_pDelegate;
    int m_nPriority;
    int m_nEnabledSelectors;
}

[[link(win, android)]]
class cocos2d::CCTouchScriptHandlerEntry : cocos2d::CCScriptHandlerEntry {

    virtual ~CCTouchScriptHandlerEntry();

    static cocos2d::CCTouchScriptHandlerEntry* create(int, bool, int, bool);

    bool init(bool, int, bool);
}

[[link(win, android)]]
class cocos2d::CCTransitionCrossFade : cocos2d::CCTransitionScene {
    // CCTransitionCrossFade(cocos2d::CCTransitionCrossFade const&);
    CCTransitionCrossFade();
    virtual ~CCTransitionCrossFade();

    static cocos2d::CCTransitionCrossFade* create(float, cocos2d::CCScene*) = imac 0xd8db0, m1 0xbf65c;

    virtual void onEnter() = imac 0xd8e40, m1 0xbf700;
    virtual void onExit() = imac 0xd9180, m1 0xbfa38;
    virtual void draw() = imac 0xd8e30, m1 0xbf6fc;
}

[[link(win, android)]]
class cocos2d::CCTransitionFade : cocos2d::CCTransitionScene {
    // CCTransitionFade(cocos2d::CCTransitionFade const&);
    CCTransitionFade();
    virtual ~CCTransitionFade();

    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*) = imac 0xd89f0, m1 0xbf2c0, ios 0x1ce124;
    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::ccColor3B const&) = imac 0xd8950, m1 0xbf224, ios 0x1ce088;

    virtual void onEnter() = imac 0xd8ae0, m1 0xbf3ac, ios 0x1ce19c;
    virtual void onExit() = imac 0xd8c10, m1 0xbf4e8, ios 0x1ce2a0;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xd8ac0, m1 0xbf384, ios 0x1ce174;
    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::ccColor3B const&) = imac 0xd8a70, m1 0xbf340, ios 0x1ce130;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeBL : cocos2d::CCTransitionFadeTR {
    // CCTransitionFadeBL(cocos2d::CCTransitionFadeBL const&);
    CCTransitionFadeBL();
    virtual ~CCTransitionFadeBL();

    static cocos2d::CCTransitionFadeBL* create(float, cocos2d::CCScene*) = imac 0xd9eb0, m1 0xc0638;

    virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = imac 0xd9f40, m1 0xc06e0;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeDown : cocos2d::CCTransitionFadeTR {
    // CCTransitionFadeDown(cocos2d::CCTransitionFadeDown const&);
    CCTransitionFadeDown();
    virtual ~CCTransitionFadeDown();

    static cocos2d::CCTransitionFadeDown* create(float, cocos2d::CCScene*) = imac 0xda2b0, m1 0xc09c8;

    virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = imac 0xda340, m1 0xc0a70;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeTR : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionFadeTR(cocos2d::CCTransitionFadeTR const&);
    CCTransitionFadeTR();
    virtual ~CCTransitionFadeTR();

    static cocos2d::CCTransitionFadeTR* create(float, cocos2d::CCScene*) = imac 0xd9b80, m1 0xc035c;

    virtual void onEnter() = imac 0xd9c20, m1 0xc040c;
    virtual void sceneOrder() = imac 0xd9c10, m1 0xc0404;
    virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = imac 0xd9d20, m1 0xc0508;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xd9d40, m1 0xc0514;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeUp : cocos2d::CCTransitionFadeTR {
    // CCTransitionFadeUp(cocos2d::CCTransitionFadeUp const&);
    CCTransitionFadeUp();
    virtual ~CCTransitionFadeUp();

    static cocos2d::CCTransitionFadeUp* create(float, cocos2d::CCScene*) = imac 0xda0b0, m1 0xc0800;

    virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = imac 0xda140, m1 0xc08a8;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipAngular : cocos2d::CCTransitionSceneOriented {
    // CCTransitionFlipAngular(cocos2d::CCTransitionFlipAngular const&);
    CCTransitionFlipAngular();
    virtual ~CCTransitionFlipAngular();

    static cocos2d::CCTransitionFlipAngular* create(float, cocos2d::CCScene*) = imac 0xd7ab0, m1 0xbe4dc;
    static cocos2d::CCTransitionFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = imac 0xd7880, m1 0xbe2c8;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipX : cocos2d::CCTransitionSceneOriented {
    // CCTransitionFlipX(cocos2d::CCTransitionFlipX const&);
    CCTransitionFlipX();
    virtual ~CCTransitionFlipX();

    static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*) = imac 0xd72f0, m1 0xbddb8;
    static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = imac 0xd70d0, m1 0xbdbac;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipY : cocos2d::CCTransitionSceneOriented {
    // CCTransitionFlipY(cocos2d::CCTransitionFlipY const&);
    CCTransitionFlipY();
    virtual ~CCTransitionFlipY();

    static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*) = imac 0xd76d0, m1 0xbe148;
    static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = imac 0xd74a0, m1 0xbdf3c;
}

[[link(win, android)]]
class cocos2d::CCTransitionJumpZoom : cocos2d::CCTransitionScene {
    // CCTransitionJumpZoom(cocos2d::CCTransitionJumpZoom const&);
    CCTransitionJumpZoom();
    virtual ~CCTransitionJumpZoom();

    static cocos2d::CCTransitionJumpZoom* create(float, cocos2d::CCScene*) = imac 0xd5300, m1 0xbc000;

    virtual void onEnter() = imac 0xd5380, m1 0xbc0a0;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInB : cocos2d::CCTransitionMoveInL {
    // CCTransitionMoveInB(cocos2d::CCTransitionMoveInB const&);
    CCTransitionMoveInB();
    virtual ~CCTransitionMoveInB();

    static cocos2d::CCTransitionMoveInB* create(float, cocos2d::CCScene*) = imac 0xd5ee0, m1 0xbcb00;

    virtual void initScenes() = imac 0xd5f70, m1 0xbcba8;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInL : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionMoveInL(cocos2d::CCTransitionMoveInL const&);
    CCTransitionMoveInL();
    virtual ~CCTransitionMoveInL();

    static cocos2d::CCTransitionMoveInL* create(float, cocos2d::CCScene*) = imac 0xd56f0, m1 0xbc394;

    virtual void onEnter() = imac 0xd5780, m1 0xbc43c;
    virtual void initScenes() = imac 0xd58b0, m1 0xbc568;
    virtual cocos2d::CCActionInterval* action() = imac 0xd5850, m1 0xbc518;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xd5890, m1 0xbc558;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInR : cocos2d::CCTransitionMoveInL {
    // CCTransitionMoveInR(cocos2d::CCTransitionMoveInR const&);
    CCTransitionMoveInR();
    virtual ~CCTransitionMoveInR();

    static cocos2d::CCTransitionMoveInR* create(float, cocos2d::CCScene*) = imac 0xd5a60, m1 0xbc6d8;

    virtual void initScenes() = imac 0xd5af0, m1 0xbc780;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInT : cocos2d::CCTransitionMoveInL {
    // CCTransitionMoveInT(cocos2d::CCTransitionMoveInT const&);
    CCTransitionMoveInT();
    virtual ~CCTransitionMoveInT();

    static cocos2d::CCTransitionMoveInT* create(float, cocos2d::CCScene*) = imac 0xd5ca0, m1 0xbc8ec, ios 0x1cdf80;

    virtual void initScenes() = imac 0xd5d30, m1 0xbc994, ios 0x1ce018;
}

[[link(win, android)]]
class cocos2d::CCTransitionPageTurn : cocos2d::CCTransitionScene {
    CCTransitionPageTurn();
    virtual ~CCTransitionPageTurn();

    static cocos2d::CCTransitionPageTurn* create(float, cocos2d::CCScene*, bool);

    virtual bool initWithDuration(float, cocos2d::CCScene*, bool) = imac 0x3d9900, m1 0x358b94;
    virtual void onEnter() = imac 0x3d9940, m1 0x358bbc;
    virtual void sceneOrder() = imac 0x3d9920, m1 0x358bb0;

    cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgress : cocos2d::CCTransitionScene {
    CCTransitionProgress();

    static cocos2d::CCTransitionProgress* create(float, cocos2d::CCScene*);

    virtual void onEnter() = imac 0x28d470, m1 0x22df68;
    virtual void onExit() = imac 0x28d620, m1 0x22e118;
    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x28d690, m1 0x22e16c;
    virtual void setupTransition() = imac 0x28d660, m1 0x22e154;
    virtual void sceneOrder() = imac 0x28d650, m1 0x22e14c;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressHorizontal : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressHorizontal* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x28da20, m1 0x22e580;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressInOut : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressInOut* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x28ddc0, m1 0x22e948;
    virtual void sceneOrder() = imac 0x28dd80, m1 0x22e928;
    virtual void setupTransition() = imac 0x28dd90, m1 0x22e930;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressOutIn : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressOutIn* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x28df70, m1 0x22eb20;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCCW : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressRadialCCW* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x28d6a0, m1 0x22e174;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCW : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressRadialCW* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x28d8b0, m1 0x22e3e4;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressVertical : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressVertical* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x28dbd0, m1 0x22e754;
}

[[link(win, android)]]
class cocos2d::CCTransitionRotoZoom : cocos2d::CCTransitionScene {
    // CCTransitionRotoZoom(cocos2d::CCTransitionRotoZoom const&);
    CCTransitionRotoZoom();
    virtual ~CCTransitionRotoZoom();

    static cocos2d::CCTransitionRotoZoom* create(float, cocos2d::CCScene*) = imac 0xd4eb0, m1 0xbbbfc;

    virtual void onEnter() = imac 0xd5020, m1 0xbbd60;
}

[[link(win, android)]]
class cocos2d::CCTransitionScene : cocos2d::CCScene {
    // CCTransitionScene(cocos2d::CCTransitionScene const&);
    CCTransitionScene() = imac 0xd46e0, m1 0xbb454;
    virtual ~CCTransitionScene() = imac 0xd4720, m1 0xbb494, ios 0x1cda44;

    static cocos2d::CCTransitionScene* create(float, cocos2d::CCScene*);

    virtual void onEnter() = imac 0xd4ba0, m1 0xbb914, ios 0x1cdd88;
    virtual void onExit() = imac 0xd4bf0, m1 0xbb968, ios 0x1cdddc;
    virtual void cleanup() = imac 0xd4c50, m1 0xbb9bc, ios 0x1cde30;
    virtual void draw() = imac 0xd4960, m1 0xbb6e8, ios 0x1cdb5c;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xd4890, m1 0xbb5f8, ios 0x1cda9c;
    virtual void sceneOrder() = imac 0xd4950, m1 0xbb6dc, ios 0x1cdb50;

    void finish();
    void hideOutShowIn();
    void setNewScene(float);
}

[[link(win, android)]]
class cocos2d::CCTransitionSceneOriented : cocos2d::CCTransitionScene {
    CCTransitionSceneOriented();
    virtual ~CCTransitionSceneOriented();

    static cocos2d::CCTransitionSceneOriented* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::tOrientation) = imac 0xd4e40, m1 0xbbb8c;
}

[[link(win, android)]]
class cocos2d::CCTransitionShrinkGrow : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionShrinkGrow(cocos2d::CCTransitionShrinkGrow const&);
    CCTransitionShrinkGrow();
    virtual ~CCTransitionShrinkGrow();

    static cocos2d::CCTransitionShrinkGrow* create(float, cocos2d::CCScene*) = imac 0xd6d50, m1 0xbd860;

    virtual void onEnter() = imac 0xd6de0, m1 0xbd908;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xd6f60, m1 0xbda90;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInB : cocos2d::CCTransitionSlideInL {
    // CCTransitionSlideInB(cocos2d::CCTransitionSlideInB const&);
    CCTransitionSlideInB();
    virtual ~CCTransitionSlideInB();

    static cocos2d::CCTransitionSlideInB* create(float, cocos2d::CCScene*) = imac 0xd6a90, m1 0xbd5d4;

    virtual void sceneOrder() = imac 0xd6b20, m1 0xbd67c;
    virtual void initScenes() = imac 0xd6b30, m1 0xbd688;
    virtual cocos2d::CCActionInterval* action() = imac 0xd6ba0, m1 0xbd6ec;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInL : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionSlideInL(cocos2d::CCTransitionSlideInL const&);
    CCTransitionSlideInL();
    virtual ~CCTransitionSlideInL();

    static cocos2d::CCTransitionSlideInL* create(float, cocos2d::CCScene*) = imac 0xd6330, m1 0xbcf04;

    virtual void onEnter() = imac 0xd6120, m1 0xbcd18;
    virtual void sceneOrder() = imac 0xd6210, m1 0xbce20;
    virtual void initScenes() = imac 0xd6220, m1 0xbce28;
    virtual cocos2d::CCActionInterval* action() = imac 0xd6290, m1 0xbce8c;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xd62f0, m1 0xbceec;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInR : cocos2d::CCTransitionSlideInL {
    // CCTransitionSlideInR(cocos2d::CCTransitionSlideInR const&);
    CCTransitionSlideInR();
    virtual ~CCTransitionSlideInR();

    static cocos2d::CCTransitionSlideInR* create(float, cocos2d::CCScene*) = imac 0xd6510, m1 0xbd0c0;

    virtual void sceneOrder() = imac 0xd65a0, m1 0xbd168;
    virtual void initScenes() = imac 0xd65b0, m1 0xbd174;
    virtual cocos2d::CCActionInterval* action() = imac 0xd6610, m1 0xbd1d4;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInT : cocos2d::CCTransitionSlideInL {
    // CCTransitionSlideInT(cocos2d::CCTransitionSlideInT const&);
    CCTransitionSlideInT();
    virtual ~CCTransitionSlideInT();

    static cocos2d::CCTransitionSlideInT* create(float, cocos2d::CCScene*) = imac 0xd67d0, m1 0xbd34c;

    virtual void sceneOrder() = imac 0xd6860, m1 0xbd3f4;
    virtual void initScenes() = imac 0xd6870, m1 0xbd3fc;
    virtual cocos2d::CCActionInterval* action() = imac 0xd68d0, m1 0xbd45c;
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitCols : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionSplitCols(cocos2d::CCTransitionSplitCols const&);
    CCTransitionSplitCols();
    virtual ~CCTransitionSplitCols();

    static cocos2d::CCTransitionSplitCols* create(float, cocos2d::CCScene*) = imac 0xd9650, m1 0xbfe90;

    virtual void onEnter() = imac 0xd96e0, m1 0xbff38;
    virtual cocos2d::CCActionInterval* action() = imac 0xd97d0, m1 0xc004c;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xd97f0, m1 0xc0060;
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitRows : cocos2d::CCTransitionSplitCols {
    // CCTransitionSplitRows(cocos2d::CCTransitionSplitRows const&);
    CCTransitionSplitRows();
    virtual ~CCTransitionSplitRows();

    static cocos2d::CCTransitionSplitRows* create(float, cocos2d::CCScene*) = imac 0xd99a0, m1 0xc01a0;

    virtual cocos2d::CCActionInterval* action() = imac 0xd9980, m1 0xc018c;
}

[[link(win, android)]]
class cocos2d::CCTransitionTurnOffTiles : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionTurnOffTiles(cocos2d::CCTransitionTurnOffTiles const&);
    CCTransitionTurnOffTiles();
    virtual ~CCTransitionTurnOffTiles();

    static cocos2d::CCTransitionTurnOffTiles* create(float, cocos2d::CCScene*) = imac 0xd9340, m1 0xbfbbc;

    virtual void onEnter() = imac 0xd93e0, m1 0xbfc6c;
    virtual void sceneOrder() = imac 0xd93d0, m1 0xbfc64;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xd94e0, m1 0xbfd6c;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipAngular : cocos2d::CCTransitionSceneOriented {
    // CCTransitionZoomFlipAngular(cocos2d::CCTransitionZoomFlipAngular const&);
    CCTransitionZoomFlipAngular();
    virtual ~CCTransitionZoomFlipAngular();

    static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*) = imac 0xd87a0, m1 0xbf0a0;
    static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = imac 0xd84f0, m1 0xbee2c;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipX : cocos2d::CCTransitionSceneOriented {
    // CCTransitionZoomFlipX(cocos2d::CCTransitionZoomFlipX const&);
    CCTransitionZoomFlipX();
    virtual ~CCTransitionZoomFlipX();

    static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*) = imac 0xd7ef0, m1 0xbe8c4;
    static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = imac 0xd7c60, m1 0xbe660;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipY : cocos2d::CCTransitionSceneOriented {
    // CCTransitionZoomFlipY(cocos2d::CCTransitionZoomFlipY const&);
    CCTransitionZoomFlipY();
    virtual ~CCTransitionZoomFlipY();

    static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*) = imac 0xd8340, m1 0xbecac;
    static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = imac 0xd80a0, m1 0xbea48;
}

[[link(win, android)]]
class cocos2d::CCTurnOffTiles : cocos2d::CCTiledGrid3DAction {
    // CCTurnOffTiles(cocos2d::CCTurnOffTiles const&);
    // CCTurnOffTiles();
    virtual ~CCTurnOffTiles() = imac 0x7b6fa0, m1 0x6bcef0;

    static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&) = imac 0x7b6c60, m1 0x6bcbc0;
    static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&, unsigned int) = imac 0x7b6d50, m1 0x6bccac;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7b6e70, m1 0x6bcdd8;
    virtual void update(float) = imac 0x7b7230, m1 0x6bd1cc;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x7b7120, m1 0x6bd07c;
    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int) = imac 0x7b6e40, m1 0x6bcda8;

    void shuffle(unsigned int*, unsigned int) = imac 0x7b7060, m1 0x6bcfb0;
    void turnOffTile(cocos2d::CCPoint const&) = imac 0x7b70f0, m1 0x6bd050;
    void turnOnTile(cocos2d::CCPoint const&) = imac 0x7b70b0, m1 0x6bd010;
}

[[link(win, android)]]
class cocos2d::CCTwirl : cocos2d::CCGrid3DAction {
    static cocos2d::CCTwirl* create(float, cocos2d::CCSize const&, cocos2d::CCPoint, unsigned int, float) = imac 0x27f700, m1 0x221558;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27f8a0, m1 0x2216f4;
    virtual void update(float) = imac 0x27fa30, m1 0x221854;

    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint, unsigned int, float) = imac 0x27f830, m1 0x221688;
    void setPosition(cocos2d::CCPoint const&) = imac 0x27f890, m1 0x2216ec;
}

[[link(win, android)]]
class cocos2d::CCUserDefault {
    CCUserDefault();
    ~CCUserDefault();

    static bool createXMLFile();
    static gd::string const& getXMLFilePath();
    static void initXMLFilePath();
    static bool isXMLFileExist();
    static void purgeSharedUserDefault();
    static cocos2d::CCUserDefault* sharedUserDefault();

    void flush();
    bool getBoolForKey(char const*);
    bool getBoolForKey(char const*, bool);
    double getDoubleForKey(char const*);
    double getDoubleForKey(char const*, double);
    float getFloatForKey(char const*);
    float getFloatForKey(char const*, float);
    int getIntegerForKey(char const*);
    int getIntegerForKey(char const*, int);
    gd::string getStringForKey(char const*);
    gd::string getStringForKey(char const*, gd::string const&);
    void setBoolForKey(char const*, bool);
    void setDoubleForKey(char const*, double);
    void setFloatForKey(char const*, float);
    void setIntegerForKey(char const*, int);
    void setStringForKey(char const*, gd::string const&);
}

[[link(win, android)]]
class cocos2d::CCWaves : cocos2d::CCGrid3DAction {
    static cocos2d::CCWaves* create(float, cocos2d::CCSize const&, unsigned int, float, bool, bool) = imac 0x27f260, m1 0x221114;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27f3d0, m1 0x22127c;
    virtual void update(float) = imac 0x27f530, m1 0x2213c4;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float, bool, bool) = imac 0x27f370, m1 0x221220;
}

[[link(win, android)]]
class cocos2d::CCWaves3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCWaves3D* create(float, cocos2d::CCSize const&, unsigned int, float) = imac 0x27d150, m1 0x21f27c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27d290, m1 0x21f3c4;
    virtual void update(float) = imac 0x27d3d0, m1 0x21f4f0;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float) = imac 0x27d250, m1 0x21f380;
}

[[link(win, android)]]
class cocos2d::CCWavesTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCWavesTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float) = imac 0x7b7300, m1 0x6bd290;

    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float) = imac 0x7b7400, m1 0x6bd394;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7b7440, m1 0x6bd3d8;
    virtual void update(float) = imac 0x7b7560, m1 0x6bd4f0;
}

[[link(win, android)]]
class cocos2d::CCZone {
    CCZone(cocos2d::CCObject* object) = win inline, imac 0x10dd60, m1 0xe9bd4, ios 0x254170;
}

[[link(win, android)]]
class cocos2d::extension::CCArrayForObjectSorting : cocos2d::CCArray {
    unsigned int indexOfSortedObject(cocos2d::extension::CCSortableObject*) = imac 0x42a070, m1 0x39c9d8;
    void insertSortedObject(cocos2d::extension::CCSortableObject*) = imac 0x429f60, m1 0x39c8b8;
    cocos2d::extension::CCSortableObject* objectWithObjectID(unsigned int) = imac 0x42a4f0, m1 0x39cf50;
    void removeSortedObject(cocos2d::extension::CCSortableObject*) = imac 0x42a130, m1 0x39cac0;
    void setObjectID_ofSortedObject(unsigned int, cocos2d::extension::CCSortableObject*) = imac 0x42a290, m1 0x39cc68;
}

[[link(win, android)]]
class cocos2d::extension::CCControl : cocos2d::CCLayerRGBA {
    CCControl() = imac 0x3512a0, m1 0x2ddf3c, ios 0x1a580c;
    virtual ~CCControl() = imac 0x3515c0, m1 0x2de198, ios 0x1a593c;

    static cocos2d::extension::CCControl* create() = imac 0x351400, m1 0x2de004, ios inline;

    virtual bool init() = imac 0x3514f0, m1 0x2de0cc, ios 0x1a5870;
    virtual void onEnter() = imac 0x351960, m1 0x2de428, ios 0x1a5a34;
    virtual void onExit() = imac 0x351970, m1 0x2de42c, ios 0x1a5a38;
    virtual void registerWithTouchDispatcher() = imac 0x351910, m1 0x2de3d8, ios 0x1a59e4;
    virtual void setOpacityModifyRGB(bool) = imac 0x352440, m1 0x2dee7c, ios 0x1a5e78;
    virtual bool isOpacityModifyRGB() = imac 0x3525a0, m1 0x2defd4, ios 0x1a5f20;
    virtual void setEnabled(bool) = imac 0x352690, m1 0x2df0a4, ios 0x1a5ff0;
    virtual bool isEnabled() = imac 0x3526c0, m1 0x2df0c4, ios 0x1a6010;
    virtual void setSelected(bool) = imac 0x3526d0, m1 0x2df0cc, ios 0x1a6018;
    virtual bool isSelected() = imac 0x3526f0, m1 0x2df0dc, ios 0x1a6028;
    virtual void setHighlighted(bool) = imac 0x352700, m1 0x2df0e4, ios 0x1a6030;
    virtual bool isHighlighted() = imac 0x352720, m1 0x2df0f4, ios 0x1a6040;
    virtual void needsLayout() = imac 0x352680, m1 0x2df0a0, ios 0x1a5fec;
    virtual void sendActionsForControlEvents(unsigned int) = imac 0x351980, m1 0x2de430, ios 0x1a5a3c;
    virtual void addTargetWithActionForControlEvents(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, unsigned int) = imac 0x351c30, m1 0x2de6d8, ios 0x1a5c30;
    virtual void removeTargetWithActionForControlEvents(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, unsigned int) = imac 0x3520f0, m1 0x2deb4c, ios 0x1a5cf8;
    virtual cocos2d::CCPoint getTouchLocation(cocos2d::CCTouch*) = imac 0x3525c0, m1 0x2defe4, ios 0x1a5f30;
    virtual bool isTouchInside(cocos2d::CCTouch*) = imac 0x352610, m1 0x2df030, ios 0x1a5f7c;

    void addHandleOfControlEvent(int, cocos2d::extension::CCControlEvent) = imac 0x352790, m1 0x2df170, ios inline;
    void addTargetWithActionForControlEvent(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = imac 0x352080, m1 0x2deac4, ios 0x1a5ca8;
    cocos2d::CCArray* dispatchListforControlEvent(cocos2d::extension::CCControlEvent) = imac 0x351b90, m1 0x2de624, ios 0x1a5bd4;
    int getHandleOfControlEvent(cocos2d::extension::CCControlEvent) = imac 0x351be0, m1 0x2de68c, ios inline;
    bool hasVisibleParents() = imac 0x352730, m1 0x2df0fc, ios inline;
    void removeHandleOfControlEvent(cocos2d::extension::CCControlEvent) = imac 0x352860, m1 0x2df230, ios inline;
    void removeTargetWithActionForControlEvent(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = imac 0x3522a0, m1 0x2decb4, ios 0x1a5d70;
}

[[link(win, android)]]
class cocos2d::extension::CCControlButton : cocos2d::extension::CCControl {
    CCControlButton() = imac 0x353260, m1 0x2dfab8;
    virtual ~CCControlButton() = imac 0x353440, m1 0x2dfc08;

    static cocos2d::extension::CCControlButton* create() = imac 0x3554d0, m1 0x2e1ad0;
    static cocos2d::extension::CCControlButton* create(cocos2d::extension::CCScale9Sprite*) = imac 0x353dd0, m1 0x2e0440;
    static cocos2d::extension::CCControlButton* create(cocos2d::CCNode*, cocos2d::extension::CCScale9Sprite*) = imac 0x353a50, m1 0x2e0158;
    static cocos2d::extension::CCControlButton* create(gd::string, char const*, float) = imac 0x353bf0, m1 0x2e02a0;

    virtual void needsLayout() = imac 0x3549c0, m1 0x2e102c;
    virtual void setEnabled(bool) = imac 0x353f30, m1 0x2e053c;
    virtual void setSelected(bool) = imac 0x353f50, m1 0x2e0568;
    virtual void setHighlighted(bool) = imac 0x353f70, m1 0x2e0594;
    virtual cocos2d::CCSize getPreferredSize() = imac 0x354120, m1 0x2e0764;
    virtual void setPreferredSize(cocos2d::CCSize) = imac 0x354060, m1 0x2e06b0;
    virtual bool getZoomOnTouchDown() = imac 0x354050, m1 0x2e06a8;
    virtual void setZoomOnTouchDown(bool) = imac 0x354040, m1 0x2e06a0;
    virtual cocos2d::CCPoint getLabelAnchorPoint() = imac 0x354150, m1 0x2e0778;
    virtual void setLabelAnchorPoint(cocos2d::CCPoint) = imac 0x354170, m1 0x2e0784;
    virtual unsigned char getOpacity() = imac 0x355340, m1 0x2e1980;
    virtual void setOpacity(unsigned char) = imac 0x355280, m1 0x2e18d4;
    virtual cocos2d::ccColor3B const& getColor() = imac 0x355420, m1 0x2e1a3c;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x355360, m1 0x2e1990;
    virtual void setMargins(int, int) = imac 0x353f10, m1 0x2e0528;
    virtual bool init() = imac 0x3535c0, m1 0x2dfcec;
    virtual bool initWithLabelAndBackgroundSprite(cocos2d::CCNode*, cocos2d::extension::CCScale9Sprite*) = imac 0x353610, m1 0x2dfd3c;
    virtual bool initWithTitleAndFontNameAndFontSize(gd::string, char const*, float) = imac 0x353ba0, m1 0x2e0250;
    virtual bool initWithBackgroundSprite(cocos2d::extension::CCScale9Sprite*) = imac 0x353d80, m1 0x2e03f4;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x354ee0, m1 0x2e14f8;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x355080, m1 0x2e1698;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3551c0, m1 0x2e1808;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x355440, m1 0x2e1a4c;
    virtual cocos2d::CCString* getTitleForState(unsigned int) = imac 0x3541b0, m1 0x2e07cc;
    virtual void setTitleForState(cocos2d::CCString*, unsigned int) = imac 0x354240, m1 0x2e0874;
    virtual cocos2d::ccColor3B const getTitleColorForState(unsigned int) = imac 0x3542b0, m1 0x2e08ec;
    virtual void setTitleColorForState(cocos2d::ccColor3B, unsigned int) = imac 0x354310, m1 0x2e0948;
    virtual cocos2d::CCNode* getTitleLabelForState(unsigned int) = imac 0x3543d0, m1 0x2e0a10;
    virtual void setTitleLabelForState(cocos2d::CCNode*, unsigned int) = imac 0x354410, m1 0x2e0a50;
    virtual void setTitleTTFForState(char const*, unsigned int) = imac 0x3544e0, m1 0x2e0b38;
    virtual char const* getTitleTTFForState(unsigned int) = imac 0x354580, m1 0x2e0bf0;
    virtual void setTitleTTFSizeForState(float, unsigned int) = imac 0x3545f0, m1 0x2e0c58;
    virtual float getTitleTTFSizeForState(unsigned int) = imac 0x354670, m1 0x2e0ccc;
    virtual void setTitleBMFontForState(char const*, unsigned int) = imac 0x3546e0, m1 0x2e0d30;
    virtual char const* getTitleBMFontForState(unsigned int) = imac 0x354780, m1 0x2e0de4;
    virtual cocos2d::extension::CCScale9Sprite* getBackgroundSpriteForState(unsigned int) = imac 0x3547f0, m1 0x2e0e4c;
    virtual void setBackgroundSpriteForState(cocos2d::extension::CCScale9Sprite*, unsigned int) = imac 0x354830, m1 0x2e0e8c;
    virtual void setBackgroundSpriteFrameForState(cocos2d::CCSpriteFrame*, unsigned int) = imac 0x354990, m1 0x2e0ff0;

    bool doesAdjustBackgroundImage() = imac 0x354140, m1 0x2e0770;
    void setAdjustBackgroundImage(bool) = imac 0x353a30, m1 0x2e0148;
}

[[link(win, android)]]
class cocos2d::extension::CCControlColourPicker : cocos2d::extension::CCControl {
    CCControlColourPicker() = inline;
    virtual ~CCControlColourPicker() = inline;

    static cocos2d::extension::CCControlColourPicker* colourPicker() = imac 0x355d60, m1 0x2e2214, ios 0x1ae710;

    virtual bool init() = imac 0x3556e0, m1 0x2e1cac, ios 0x1ae284;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x355fe0, m1 0x2e23e8, ios 0x1ae860;
    virtual void setColorValue(cocos2d::ccColor3B const&) = imac 0x355e30, m1 0x2e22a8, ios 0x1ae7a4;

    void colourSliderValueChanged(cocos2d::CCObject*, unsigned int) = imac 0x355b30, m1 0x2e2064, ios 0x1ae5f8;
    cocos2d::ccColor3B const& getColorValue() const = inline;
    void hueSliderValueChanged(cocos2d::CCObject*, unsigned int) = imac 0x355a00, m1 0x2e1f80, ios 0x1ae518;
    void updateControlPicker() = imac 0x355f80, m1 0x2e23a0, ios inline;
    void updateHueAndControlPicker() = imac 0x355c10, m1 0x2e2120, ios 0x1ae6b0;
}

[[link(win, android)]]
class cocos2d::extension::CCControlHuePicker : cocos2d::extension::CCControl {
    CCControlHuePicker() = imac 0x356810, m1 0x2e2a6c, ios 0x1af6e8;
    virtual ~CCControlHuePicker() = imac 0x356970, m1 0x2e2b64, ios 0x1af764;

    static cocos2d::extension::CCControlHuePicker* create(cocos2d::CCNode*, cocos2d::CCPoint) = imac 0x356c60, m1 0x2e2d58, ios 0x1af814;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x357270, m1 0x2e32a0, ios 0x1afcd4;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x357370, m1 0x2e33a4, ios 0x1afd5c;
    virtual void setEnabled(bool) = imac 0x357080, m1 0x2e30d4, ios 0x1afb70;
    virtual bool initWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint) = imac 0x356d80, m1 0x2e2e38, ios 0x1af898;
    virtual void setHue(float) = imac 0x356f60, m1 0x2e2ff4, ios 0x1afa94;
    virtual void setHuePercentage(float) = imac 0x356f90, m1 0x2e3010, ios 0x1afab0;
    virtual void registerWithTouchDispatcher() = imac 0x356f20, m1 0x2e2fbc, ios 0x1afa5c;

    bool checkSliderPosition(cocos2d::CCPoint) = imac 0x357170, m1 0x2e31bc, ios 0x1afc54;
    void updateSliderPosition(cocos2d::CCPoint) = imac 0x3570d0, m1 0x2e3124, ios 0x1afbc0;
}

[[link(win, android)]]
class cocos2d::extension::CCControlPotentiometer : cocos2d::extension::CCControl {
    CCControlPotentiometer() = imac 0x35a5f0, m1 0x2e5d54;
    virtual ~CCControlPotentiometer() = imac 0x35a6a0, m1 0x2e5dd4;

    static cocos2d::extension::CCControlPotentiometer* create(char const*, char const*, char const*) = imac 0x35a9d0, m1 0x2e6014;

    virtual void setEnabled(bool) = imac 0x35ad10, m1 0x2e6338;
    virtual bool isTouchInside(cocos2d::CCTouch*) = imac 0x35aee0, m1 0x2e64c4;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x35b010, m1 0x2e65d0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x35b1d0, m1 0x2e67a0;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x35b430, m1 0x2e69d8;

    float angleInDegreesBetweenLineFromPoint_toPoint_toLineFromPoint_toPoint(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x35b520, m1 0x2e6ae0;
    float distanceBetweenPointAndPoint(cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x35afe0, m1 0x2e65b0;
    float getMaximumValue() = imac 0x35aed0, m1 0x2e64bc;
    float getMinimumValue() = imac 0x35ae10, m1 0x2e641c;
    float getValue() = imac 0x35ad60, m1 0x2e6388;
    bool initWithTrackSprite_ProgressTimer_ThumbSprite(cocos2d::CCSprite*, cocos2d::CCProgressTimer*, cocos2d::CCSprite*) = imac 0x35ab10, m1 0x2e6134;
    void potentiometerBegan(cocos2d::CCPoint) = imac 0x35b0c0, m1 0x2e6690;
    void potentiometerEnded(cocos2d::CCPoint) = imac 0x35b480, m1 0x2e6a38;
    void potentiometerMoved(cocos2d::CCPoint) = imac 0x35b220, m1 0x2e67ec;
    void setMaximumValue(float) = imac 0x35ae20, m1 0x2e6424;
    void setMinimumValue(float) = imac 0x35ad70, m1 0x2e6390;
    void setValue(float) = imac 0x35ac80, m1 0x2e62ac;
}

[[link(win, android)]]
class cocos2d::extension::CCControlSaturationBrightnessPicker : cocos2d::extension::CCControl {
    CCControlSaturationBrightnessPicker() = imac 0x368030, m1 0x2f2668, ios 0x1bdc70;
    virtual ~CCControlSaturationBrightnessPicker() = imac 0x3681b0, m1 0x2f2780, ios 0x1bdcfc;

    static cocos2d::extension::CCControlSaturationBrightnessPicker* create(cocos2d::CCNode*, cocos2d::CCPoint) = imac 0x368650, m1 0x2f2b1c, ios 0x1bdf14;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x368c60, m1 0x2f3008, ios 0x1be38c;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x368d60, m1 0x2f310c, ios 0x1be414;
    virtual void setEnabled(bool) = imac 0x368780, m1 0x2f2c0c, ios 0x1bdf98;
    virtual bool initWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint) = imac 0x3684d0, m1 0x2f29a0, ios 0x1bdd9c;
    virtual void updateWithHSV(cocos2d::extension::HSV) = imac 0x3687d0, m1 0x2f2c5c, ios 0x1bdfe8;
    virtual void updateDraggerWithHSV(cocos2d::extension::HSV) = imac 0x368870, m1 0x2f2cd0, ios 0x1be058;
    virtual void registerWithTouchDispatcher() = imac 0x368c20, m1 0x2f2fd0, ios 0x1be354;

    bool checkSliderPosition(cocos2d::CCPoint) = imac 0x368b10, m1 0x2f2eec, ios 0x1be270;
    void updateSliderPosition(cocos2d::CCPoint) = imac 0x368910, m1 0x2f2d58, ios 0x1be0dc;
}

[[link(win, android)]]
class cocos2d::extension::CCControlSlider : cocos2d::extension::CCControl {
    CCControlSlider() = imac 0x39f7e0, m1 0x324b38;
    virtual ~CCControlSlider() = imac 0x39f880, m1 0x324b90;

    static cocos2d::extension::CCControlSlider* create(char const*, char const*, char const*) = imac 0x39fb70, m1 0x324d90;
    static cocos2d::extension::CCControlSlider* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x39fc80, m1 0x324e60;

    virtual void setValue(float) = imac 0x3a0080, m1 0x325220;
    virtual void setMinimumValue(float) = imac 0x3a00d0, m1 0x325274;
    virtual void setMaximumValue(float) = imac 0x3a0120, m1 0x3252a4;
    virtual void setEnabled(bool) = imac 0x3a0030, m1 0x3251d0;
    virtual bool isTouchInside(cocos2d::CCTouch*) = imac 0x3a0170, m1 0x3252d4;
    virtual bool initWithSprites(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x39fd70, m1 0x324f14;
    virtual void needsLayout() = imac 0x3a0880, m1 0x3259b4;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3a02b0, m1 0x325424;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3a0500, m1 0x325654;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3a06b0, m1 0x3257e8;

    cocos2d::CCPoint locationFromTouch(cocos2d::CCTouch*) = imac 0x3a0220, m1 0x32538c;
    void sliderBegan(cocos2d::CCPoint) = imac 0x3a0430, m1 0x325594;
    void sliderEnded(cocos2d::CCPoint) = imac 0x3a0790, m1 0x3258d4;
    void sliderMoved(cocos2d::CCPoint) = imac 0x3a0610, m1 0x325758;
    float valueForLocation(cocos2d::CCPoint) = imac 0x3a09b0, m1 0x325aa8;
}

[[link(win, android)]]
class cocos2d::extension::CCControlStepper : cocos2d::extension::CCControl {
    CCControlStepper() = imac 0x3a3a30, m1 0x3284f8;
    virtual ~CCControlStepper() = imac 0x3a3ae0, m1 0x32856c;

    static cocos2d::extension::CCControlStepper* create(cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x3a4090, m1 0x328a40;

    virtual void setWraps(bool) = imac 0x3a4190, m1 0x328b34;
    virtual void setMinimumValue(double) = imac 0x3a4200, m1 0x328bc0;
    virtual void setMaximumValue(double) = imac 0x3a4230, m1 0x328bd4;
    virtual void setValue(double) = imac 0x3a4260, m1 0x328be8;
    virtual double getValue() = imac 0x3a4280, m1 0x328bf8;
    virtual void setStepValue(double) = imac 0x3a4290, m1 0x328c00;
    virtual void setValueWithSendingEvent(double, bool) = imac 0x3a42b0, m1 0x328c10;
    virtual bool isContinuous() = imac 0x3a42a0, m1 0x328c08;
    virtual void update(float) = imac 0x3a4410, m1 0x328d60;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3a4590, m1 0x328ed0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3a4740, m1 0x329078;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3a4930, m1 0x329264;

    bool initWithMinusSpriteAndPlusSprite(cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x3a3c30, m1 0x328630;
    void startAutorepeat() = imac 0x3a43c0, m1 0x328d24;
    void stopAutorepeat() = imac 0x3a43f0, m1 0x328d54;
    void updateLayoutUsingTouchLocation(cocos2d::CCPoint) = imac 0x3a44a0, m1 0x328de4;
}

[[link(win, android)]]
class cocos2d::extension::CCControlSwitch : cocos2d::extension::CCControl {
    CCControlSwitch() = imac 0x3a8340, m1 0x32c870;
    virtual ~CCControlSwitch() = imac 0x3a83d0, m1 0x32c8c4;

    static cocos2d::extension::CCControlSwitch* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x3a88c0, m1 0x32ccac;
    static cocos2d::extension::CCControlSwitch* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCLabelTTF*, cocos2d::CCLabelTTF*) = imac 0x3a89c0, m1 0x32cda4;

    virtual void setEnabled(bool) = imac 0x3a8c00, m1 0x32cfc0;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3a8c90, m1 0x32d038;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3a8d80, m1 0x32d104;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3a8e50, m1 0x32d1b4;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3a8f80, m1 0x32d2dc;

    bool initWithMaskSprite(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x3a86b0, m1 0x32cac0;
    bool initWithMaskSprite(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCLabelTTF*, cocos2d::CCLabelTTF*) = imac 0x3a86d0, m1 0x32cacc;
    cocos2d::CCPoint locationFromTouch(cocos2d::CCTouch*) = imac 0x3a8c40, m1 0x32cfec;
    void setOn(bool) = imac 0x3a8ad0, m1 0x32ce98;
    void setOn(bool, bool) = imac 0x3a8b40, m1 0x32cf08;
}

[[link(win, android)]]
class cocos2d::extension::CCControlUtils {
    static cocos2d::CCSprite* addSpriteToTargetWithPosAndAnchor(char const*, cocos2d::CCNode*, cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x3a9710, m1 0x32d8b8, ios 0x1d3e5c;
    static cocos2d::CCRect CCRectUnion(cocos2d::CCRect const&, cocos2d::CCRect const&) = imac 0x3a99c0, m1 0x32daf8, ios inline;
    static cocos2d::extension::HSV HSVfromRGB(cocos2d::extension::RGBA) = imac 0x3a9770, m1 0x32d930, ios 0x1d3ed4;
    static cocos2d::extension::RGBA RGBfromHSV(cocos2d::extension::HSV) = imac 0x3a9860, m1 0x32d9dc, ios 0x1d3f7c;
}

[[link(win, android)]]
class cocos2d::extension::CCEditBox : cocos2d::extension::CCControlButton, cocos2d::CCIMEDelegate {
    CCEditBox() = imac 0x4aa0e0, m1 0x40d318;
    virtual ~CCEditBox() = imac 0x4aa210, m1 0x40d3e0;

    static cocos2d::extension::CCEditBox* create(cocos2d::CCSize const&, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*) = imac 0x4aa4a0, m1 0x40d59c;

    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x4aaba0, m1 0x40dbd0;
    virtual void setVisible(bool) = imac 0x4aabe0, m1 0x40dc14;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x4aac20, m1 0x40dc58;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x4aac60, m1 0x40dc9c;
    virtual void visit() = imac 0x4aaca0, m1 0x40dce0;
    virtual void onEnter() = imac 0x4aacd0, m1 0x40dd1c;
    virtual void onExit() = imac 0x4aad00, m1 0x40dd58;
    virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4aad30, m1 0x40dd94;
    virtual void keyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4aae40, m1 0x40de70;
    virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4aae60, m1 0x40de78;
    virtual void keyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4aaee0, m1 0x40dec8;

    cocos2d::extension::CCEditBoxDelegate* getDelegate() = imac 0x4aa750, m1 0x40d80c;
    int getMaxLength() = imac 0x4aab40, m1 0x40db94;
    char const* getPlaceHolder() = imac 0x4aaab0, m1 0x40db40;
    char const* getText() = imac 0x4aa7b0, m1 0x40d860;
    bool initWithSizeAndBackgroundSprite(cocos2d::CCSize const&, cocos2d::extension::CCScale9Sprite*) = imac 0x4aa670, m1 0x40d724;
    void registerScriptEditBoxHandler(int) = imac 0x4aaf00, m1 0x40ded0;
    void setDelegate(cocos2d::extension::CCEditBoxDelegate*) = imac 0x4aa730, m1 0x40d7f8;
    void setFont(char const*, int) = imac 0x4aa7e0, m1 0x40d894;
    void setFontColor(cocos2d::ccColor3B const&) = imac 0x4aa8f0, m1 0x40d998;
    void setFontName(char const*) = imac 0x4aa840, m1 0x40d8f8;
    void setFontSize(int) = imac 0x4aa890, m1 0x40d94c;
    void setInputFlag(cocos2d::extension::EditBoxInputFlag) = imac 0x4aab50, m1 0x40db9c;
    void setInputMode(cocos2d::extension::EditBoxInputMode) = imac 0x4aaae0, m1 0x40db5c;
    void setMaxLength(int) = imac 0x4aab10, m1 0x40db78;
    void setPlaceHolder(char const*) = imac 0x4aaa60, m1 0x40daf4;
    void setPlaceholderFont(char const*, int) = imac 0x4aa920, m1 0x40d9c0;
    void setPlaceholderFontColor(cocos2d::ccColor3B const&) = imac 0x4aaa30, m1 0x40dacc;
    void setPlaceholderFontName(char const*) = imac 0x4aa980, m1 0x40da24;
    void setPlaceholderFontSize(int) = imac 0x4aa9d0, m1 0x40da7c;
    void setReturnType(cocos2d::extension::KeyboardReturnType) = imac 0x4aab80, m1 0x40dbb8;
    void setText(char const*) = imac 0x4aa760, m1 0x40d814;
    void touchDownAction(cocos2d::CCObject*, cocos2d::extension::CCControlEvent) = imac 0x4aa480, m1 0x40d58c;
    void unregisterScriptEditBoxHandler() = imac 0x4aa370, m1 0x40d4f4;
}

[[link(win, android)]]
class cocos2d::extension::CCHttpClient : cocos2d::CCObject {
    CCHttpClient() = imac 0x438580, m1 0x3aa308, ios 0x240cd4;
    virtual ~CCHttpClient() = imac 0x438750, m1 0x3aa4e8, ios 0x240e90;

    static void destroyInstance() = imac 0x4388d0, m1 0x3aa65c, ios inline;
    static cocos2d::extension::CCHttpClient* getInstance() = imac 0x438880, m1 0x3aa600, ios 0x240f2c;

    size_t availableThreadCount() = imac 0x4389c0, m1 0x3aa770, ios 0x241058;
    void dispatchResponseCallbacks(float) = imac 0x438650, m1 0x3aa3d8, ios 0x240d98;
    void send(cocos2d::extension::CCHttpRequest* request) = imac 0x438900, m1 0x3aa690, ios 0x240f7c;

    int _timeoutForConnect;
    int _timeoutForRead;
}

[[link(win, android)]]
class cocos2d::extension::CCHttpRequest : cocos2d::CCObject {
    int _requestType;
    gd::string _url;
    gd::vector<char> _requestData;
    gd::string _tag;
    cocos2d::CCObject* _pTarget;
    cocos2d::extension::SEL_HttpResponse _pSelector;
    void* _pUserData;
    gd::vector<gd::string> _headers;
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
    gd::vector<char> _responseData;
    gd::vector<char> _responseHeader;
    int _responseCode;
    gd::string _errorBuffer;
}

[[link(win, android)]]
class cocos2d::extension::CCInvocation : cocos2d::CCObject {
    CCInvocation(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = win inline, imac 0x3d7d50, m1 0x357300, ios inline;

    static cocos2d::extension::CCInvocation* create(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = imac 0x3d7c80, m1 0x35722c, ios 0x213e5c;

    void invoke(cocos2d::CCObject*) = imac 0x3d7da0, m1 0x357350, ios 0x213ee0;
}

[[link(win, android)]]
class cocos2d::extension::CCScale9Sprite : cocos2d::CCNodeRGBA {
    CCScale9Sprite() = imac 0x3f3b80, m1 0x36cb94, ios 0x214594;
    virtual ~CCScale9Sprite() = imac 0x3f3c70, m1 0x36cc48, ios 0x214644;

    static cocos2d::extension::CCScale9Sprite* create() = imac 0x3f5bc0, m1 0x36eb08, ios inline;
    static cocos2d::extension::CCScale9Sprite* create(char const* pszname) = imac 0x3f5710, m1 0x36e5ac, ios inline;
    static cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect) = imac 0x3f5540, m1 0x36e388, ios 0x215ba8;
    static cocos2d::extension::CCScale9Sprite* create(cocos2d::CCRect capInsets, char const* filename) = imac 0x3f5630, m1 0x36e4a8, ios inline;
    static cocos2d::extension::CCScale9Sprite* create(char const* filename, cocos2d::CCRect rect, cocos2d::CCRect capInsets) = imac 0x3f5440, m1 0x36e260, ios inline;
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3f58e0, m1 0x36e7bc, ios inline;
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = imac 0x3f5800, m1 0x36e6b8, ios inline;
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const* spriteFrameName) = imac 0x3f5aa0, m1 0x36e9b8, ios inline;
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const* spriteFrameName, cocos2d::CCRect capInsets) = imac 0x3f59c0, m1 0x36e8b4, ios inline;

    virtual bool init() = imac 0x3f3d90, m1 0x36cd10, ios 0x21470c;
    virtual void setContentSize(const cocos2d::CCSize& size) = imac 0x3f4ec0, m1 0x36dd10, ios 0x2155f8;
    virtual void visit() = imac 0x3f6200, m1 0x36f08c, ios 0x2162ec;
    virtual unsigned char getOpacity() = imac 0x3f6550, m1 0x36f3b8, ios 0x2164a8;
    virtual void setOpacity(unsigned char) = imac 0x3f63d0, m1 0x36f250, ios 0x2163f4;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x3f5fd0, m1 0x36eee0, ios 0x216140;
    virtual const cocos2d::ccColor3B& getColor() = imac 0x3f63b0, m1 0x36f240, ios 0x2163e4;
    virtual void setColor(const cocos2d::ccColor3B& color) = imac 0x3f6230, m1 0x36f0c0, ios 0x216324;
    virtual void updateDisplayedColor(const cocos2d::ccColor3B& parentColor) = imac 0x3f6040, m1 0x36ef4c, ios 0x2161ac;
    virtual void setOpacityModifyRGB(bool bValue) = imac 0x3f5e50, m1 0x36ed70, ios 0x216080;
    virtual bool isOpacityModifyRGB() = imac 0x3f5fb0, m1 0x36eed0, ios 0x216130;
    virtual cocos2d::CCSize getPreferredSize() = imac 0x3f5c50, m1 0x36ebbc, ios 0x215ecc;
    virtual void setPreferredSize(cocos2d::CCSize) = imac 0x3f5c20, m1 0x36eb88, ios 0x215e98;
    virtual cocos2d::CCRect getCapInsets() = imac 0x3f5d10, m1 0x36ec60, ios 0x215f70;
    virtual void setCapInsets(cocos2d::CCRect) = imac 0x3f5c70, m1 0x36ebc8, ios 0x215ed8;
    virtual float getInsetLeft() = imac 0x3f6140, m1 0x36f04c, ios 0x2162ac;
    virtual void setInsetLeft(float) = imac 0x3f6180, m1 0x36f06c, ios 0x2162cc;
    virtual float getInsetTop() = imac 0x3f6150, m1 0x36f054, ios 0x2162b4;
    virtual void setInsetTop(float) = imac 0x3f61a0, m1 0x36f074, ios 0x2162d4;
    virtual float getInsetRight() = imac 0x3f6160, m1 0x36f05c, ios 0x2162bc;
    virtual void setInsetRight(float) = imac 0x3f61c0, m1 0x36f07c, ios 0x2162dc;
    virtual float getInsetBottom() = imac 0x3f6170, m1 0x36f064, ios 0x2162c4;
    virtual void setInsetBottom(float) = imac 0x3f61e0, m1 0x36f084, ios 0x2162e4;
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = imac 0x3f3e50, m1 0x36cddc, ios 0x2147d8;
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, cocos2d::CCRect) = imac 0x3f3df0, m1 0x36cd70, ios 0x21476c;
    virtual bool initWithFile(const char*, cocos2d::CCRect, cocos2d::CCRect) = imac 0x3f53d0, m1 0x36e1e8, ios 0x215ad0;
    virtual bool initWithFile(const char*, cocos2d::CCRect) = imac 0x3f54e0, m1 0x36e328, ios 0x215b48;
    virtual bool initWithFile(cocos2d::CCRect, const char*) = imac 0x3f55d0, m1 0x36e43c, ios 0x215c48;
    virtual bool initWithFile(const char*) = imac 0x3f56c0, m1 0x36e55c, ios 0x215cb4;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = imac 0x3f5780, m1 0x36e634, ios 0x215d04;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3f5890, m1 0x36e76c, ios 0x215d88;
    virtual bool initWithSpriteFrameName(const char*, cocos2d::CCRect) = imac 0x3f5950, m1 0x36e844, ios 0x215dd8;
    virtual bool initWithSpriteFrameName(const char*) = imac 0x3f5a50, m1 0x36e968, ios 0x215e48;
    virtual bool updateWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = imac 0x3f3ef0, m1 0x36ce80, ios 0x21487c;
    virtual void setSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3f60b0, m1 0x36efb8, ios 0x216218;

    cocos2d::extension::CCScale9Sprite* resizableSpriteWithCapInsets(cocos2d::CCRect) = imac 0x3f5b10, m1 0x36ea40, ios inline;
    void setBlendAdditive(bool) = imac 0x3f6570, m1 0x36f3c8, ios 0x2164b8;
    void updateCapInset() = imac 0x3f5d30, m1 0x36ec6c, ios 0x215f7c;
    void updatePositions() = imac 0x3f4ee0, m1 0x36dd38, ios 0x215620;
}

[[link(win, android)]]
class cocos2d::extension::CCScrollView : cocos2d::CCLayer {
    CCScrollView() = imac 0x3f6e30, m1 0x36fcb0;
    virtual ~CCScrollView() = imac 0x3f6f90, m1 0x36fd9c;

    static cocos2d::extension::CCScrollView* create() = imac 0x3f74e0, m1 0x370258;
    static cocos2d::extension::CCScrollView* create(cocos2d::CCSize, cocos2d::CCNode*) = imac 0x3f72c0, m1 0x370048;

    virtual bool init() = imac 0x3f7570, m1 0x370308;
    virtual void registerWithTouchDispatcher() = imac 0x3f75b0, m1 0x370350;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3f8b50, m1 0x3717f4;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3f8dd0, m1 0x371a50;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3f91a0, m1 0x371d7c;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3f9260, m1 0x371e2c;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x3f8420, m1 0x3710e4;
    virtual cocos2d::CCSize const& getContentSize() const = imac 0x3f8400, m1 0x3710d4;
    virtual void visit() = imac 0x3f89e0, m1 0x371654;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x3f85f0, m1 0x371250;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x3f8680, m1 0x37130c;
    virtual void addChild(cocos2d::CCNode*) = imac 0x3f86c0, m1 0x371360;
    virtual void setTouchEnabled(bool) = imac 0x3f7800, m1 0x370570;

    void afterDraw() = imac 0x3f8980, m1 0x3715f8;
    void beforeDraw() = imac 0x3f8710, m1 0x3713c4;
    void deaccelerateScrolling(float) = imac 0x3f80a0, m1 0x370dbc;
    cocos2d::CCNode* getContainer() = imac 0x3f7e40, m1 0x370b6c;
    cocos2d::CCPoint getContentOffset() = imac 0x3f76d0, m1 0x370458;
    int getScriptHandler(int) = imac 0x3f9490, m1 0x37205c;
    cocos2d::CCRect getViewRect() = imac 0x3f8860, m1 0x3714e4;
    float getZoomScale() = imac 0x3f7700, m1 0x37048c;
    bool initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*) = imac 0x3f7350, m1 0x3700f4;
    bool isNodeVisible(cocos2d::CCNode*) = imac 0x3f7600, m1 0x370398;
    cocos2d::CCPoint maxContainerOffset() = imac 0x3f7b00, m1 0x370828;
    cocos2d::CCPoint minContainerOffset() = imac 0x3f7a40, m1 0x370798;
    void pause(cocos2d::CCObject*) = imac 0x3f7720, m1 0x37049c;
    void performedAnimatedScroll(float) = imac 0x3f7b60, m1 0x370884;
    void registerScriptHandler(int, int) = imac 0x3f9320, m1 0x371ef0;
    void relocateContainer(bool) = imac 0x3f7f00, m1 0x370c28;
    void resume(cocos2d::CCObject*) = imac 0x3f7790, m1 0x370504;
    void setContainer(cocos2d::CCNode*) = imac 0x3f7e50, m1 0x370b74;
    void setContentOffset(cocos2d::CCPoint, bool) = imac 0x3f7840, m1 0x3705b0;
    void setContentOffsetInDuration(cocos2d::CCPoint, float) = imac 0x3f79d0, m1 0x370720;
    void setViewSize(cocos2d::CCSize) = imac 0x3f7540, m1 0x3702d8;
    void setZoomScale(float) = imac 0x3f7ba0, m1 0x3708bc;
    void setZoomScale(float, bool) = imac 0x3f7d30, m1 0x370a2c;
    void setZoomScaleInDuration(float, float) = imac 0x3f7db0, m1 0x370acc;
    void stoppedAnimatedScroll(cocos2d::CCNode*) = imac 0x3f7b20, m1 0x370838;
    void unregisterScriptHandler(int) = imac 0x3f7180, m1 0x36ff50;
    void updateInset() = imac 0x3f8460, m1 0x371124;
}

[[link(win, android)]]
class cocos2d::extension::CCTableView : cocos2d::extension::CCScrollView, cocos2d::extension::CCScrollViewDelegate {
    CCTableView() = imac 0x42c6a0, m1 0x39f194;
    virtual ~CCTableView() = imac 0x42c750, m1 0x39f1f4;

    static cocos2d::extension::CCTableView* create(cocos2d::extension::CCTableViewDataSource*, cocos2d::CCSize) = imac 0x42c1b0, m1 0x39ed18;
    static cocos2d::extension::CCTableView* create(cocos2d::extension::CCTableViewDataSource*, cocos2d::CCSize, cocos2d::CCNode*) = imac 0x42c1e0, m1 0x39ed54;

    virtual void scrollViewDidScroll(cocos2d::extension::CCScrollView*) = imac 0x42d730, m1 0x3a019c;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x42db00, m1 0x3a04b8;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x42dc80, m1 0x3a0630;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x42da00, m1 0x3a03d8;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x42dd30, m1 0x3a06d8;

    int __indexFromOffset(cocos2d::CCPoint) = imac 0x42d690, m1 0x3a00f0;
    cocos2d::CCPoint __offsetFromIndex(unsigned int) = imac 0x42d4f0, m1 0x39ff38;
    void _addCellIfNecessary(cocos2d::extension::CCTableViewCell*) = imac 0x42cf20, m1 0x39f93c;
    unsigned int _indexFromOffset(cocos2d::CCPoint) = imac 0x42d570, m1 0x39ffbc;
    void _moveCellOutOfSight(cocos2d::extension::CCTableViewCell*) = imac 0x42cd70, m1 0x39f750;
    cocos2d::CCPoint _offsetFromIndex(unsigned int) = imac 0x42d420, m1 0x39fe50;
    void _setIndexForCell(unsigned int, cocos2d::extension::CCTableViewCell*) = imac 0x42ceb0, m1 0x39f8b4;
    void _updateCellPositions() = imac 0x42c4a0, m1 0x39ef8c;
    void _updateContentSize() = imac 0x42c5b0, m1 0x39f0a0;
    cocos2d::extension::CCTableViewCell* cellAtIndex(unsigned int) = imac 0x42cbe0, m1 0x39f5b4;
    cocos2d::extension::CCTableViewCell* dequeueCell() = imac 0x42d3c0, m1 0x39fde4;
    cocos2d::extension::CCTableViewVerticalFillOrder getVerticalFillOrder() = imac 0x42cbd0, m1 0x39f5ac;
    bool initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*) = imac 0x42c3b0, m1 0x39ee94;
    void insertCellAtIndex(unsigned int) = imac 0x42d010, m1 0x39fa40;
    void reloadData() = imac 0x42ca40, m1 0x39f420;
    void removeCellAtIndex(unsigned int) = imac 0x42d1b0, m1 0x39fbe0;
    void setVerticalFillOrder(cocos2d::extension::CCTableViewVerticalFillOrder) = imac 0x42ca00, m1 0x39f3d8;
    void unregisterAllScriptHandler() = imac 0x42c8b0, m1 0x39f300;
    void updateCellAtIndex(unsigned int) = imac 0x42cc50, m1 0x39f620;
}

[[link(win, android)]]
class cocos2d::extension::CCTableViewCell : cocos2d::CCNode, cocos2d::extension::CCSortableObject {
    virtual void setObjectID(unsigned int) = imac 0x437890, m1 0x3a97e4;
    virtual unsigned int getObjectID() = imac 0x4378b0, m1 0x3a97f4;

    unsigned int getIdx() = imac 0x4378d0, m1 0x3a9804;
    void reset() = imac 0x437880, m1 0x3a97d8;
    void setIdx(unsigned int) = imac 0x4378e0, m1 0x3a980c;
}

[[link(win, android)]]
class cocos2d::ZipUtils {
    static gd::string base64DecodeEnc(gd::string const&, gd::string) = m1 0x1b1a48, imac 0x205880, ios 0x23dd7c;
    static gd::string base64EncodeEnc(gd::string const&, gd::string) = imac 0x205ac0, m1 0x1b1cbc, ios 0x23dfa0;
    static gd::string base64URLDecode(gd::string const&) = imac 0x205d00, m1 0x1b1f2c, ios 0x23e200;
    static gd::string base64URLEncode(gd::string const&) = imac 0x205de0, m1 0x1b2038, ios 0x23e2f0;
    // static void ccDecodeEncodedPvr(unsigned int*, int);
    static int ccDeflateMemory(unsigned char* data, unsigned int size, unsigned char** out) = imac 0x2051c0, m1 0x1b136c, ios 0x23d7a8;
    static int ccInflateCCZFile(char const*, unsigned char**);
    static int ccInflateGZipFile(char const*, unsigned char**);
    // static int ccInflateMemory(unsigned char* data, unsigned int size, unsigned char** out) = imac 0x1f3660, m1 0x1a91b0;
    // static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int*, unsigned int) = imac 0x1f45f0, m1 0x1aa1b8;
    // static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int) = imac 0x1f4720, m1 0x1aa2e0;
    static void ccSetPvrEncryptionKey(unsigned int, unsigned int, unsigned int, unsigned int);
    static void ccSetPvrEncryptionKeyPart(int, unsigned int);
    static gd::string compressString(gd::string const& data, bool encrypt, int encryptionKey) = imac 0x204f50, m1 0x1b10ac, ios 0x23d554;
    static gd::string decompressString(gd::string const& data, bool encrypt, int encryptionKey) = imac 0x205600, m1 0x1b17c0, ios 0x23db3c;
    static gd::string decompressString2(unsigned char* data, bool encrypt, int size, int encryptionKey) = imac 0x2052e0, m1 0x1b14a0, ios 0x23d8b4;
    static gd::string encryptDecrypt(gd::string const& data, int encryptionKey);
    static gd::string encryptDecryptWKey(gd::string const&, gd::string) = inline;
    static unsigned char hexToChar(gd::string const&);
    static gd::string urlDecode(gd::string const&);
}

[[link(win, android)]]
class DS_Dictionary {
    DS_Dictionary() = imac 0x179900, m1 0x13f8f8, ios 0x160ef8;

    static void copyFile(char const*, char const*) = m1 0x1422d0, imac 0x17c880, ios 0x16126c;

    void addBoolValuesToMapForKey(gd::map<gd::string, bool>&, char const*, bool) = m1 0x1469f0, imac 0x1817a0, ios 0x162eec;
    void addBoolValuesToMapForKeySpecial(gd::map<gd::string, bool>&, char const*, bool) = m1 0x1466c8, imac 0x181440, ios 0x162c4c;
    void checkCompatibility() = m1 0x140980, imac 0x17aae0, ios 0x160ff8;
    gd::string cleanStringWhiteSpace(gd::string const&) = m1 0x13fab4, imac 0x179b10;
    cocos2d::CCObject* decodeObjectForKey(char const*, bool, int) = m1 0x147004, imac 0x181e60, ios 0x163298;
    gd::vector<gd::string> getAllKeys() = m1 0x142bc4, imac 0x17d370;
    cocos2d::CCArray* getArrayForKey(char const*, bool) = imac 0x180a90, m1 0x145dfc, ios 0x16270c;
    bool getBoolForKey(char const*) = m1 0x143204, imac 0x17da50, ios 0x1618f0;
    cocos2d::CCDictionary* getDictForKey(char const*, bool) = m1 0x146b94, imac 0x181970, ios 0x16300c;
    float getFloatForKey(char const*) = ios 0x1619c8, imac 0x17db50, m1 0x1432fc;
    unsigned int getIndexOfKey(char const*) = m1 0x142d20, imac 0x17d4e0;
    unsigned int getIndexOfKeyWithClosestAlphaNumericalMatch(char const*) = m1 0x142dd8, imac 0x17d5a0;
    int getIntegerForKey(char const*) = imac 0x17d910, m1 0x1430f8, ios 0x1617e4;
    gd::string getKey(unsigned int) = imac 0x17d250, m1 0x142aa8, ios 0x161690;
    unsigned int getNumKeys() = m1 0x142a3c, imac 0x17d1d0, ios 0x161624;
    cocos2d::CCObject* getObjectForKey(char const*) = m1 0x145f64, ios 0x162828, imac 0x180c10;
    gd::vector<cocos2d::CCRect> getRectArrayForKey(char const*) = m1 0x143c5c, imac 0x17e580;
    cocos2d::CCRect getRectForKey(char const*) = m1 0x1436d8, imac 0x17df90;
    gd::vector<gd::string> getStringArrayForKey(char const*) = m1 0x1438cc, imac 0x17e1a0;
    gd::string getStringForKey(char const*) = m1 0x14341c, imac 0x17dc90, ios 0x161ae8;
    gd::vector<cocos2d::CCPoint> getVec2ArrayForKey(char const*) = m1 0x143aec, imac 0x17e410;
    cocos2d::CCPoint getVec2ForKey(char const*) = m1 0x1435a4, imac 0x17de40;
    bool loadRootSubDictFromCompressedFile(char const*) = m1 0x140cec, imac 0x17ae90;
    bool loadRootSubDictFromFile(char const*) = m1 0x1409e0, imac 0x17ab30;
    bool loadRootSubDictFromString(gd::string const&) = m1 0x141010, imac 0x17b200, ios 0x161058;
    bool rectFromString(gd::string const&, cocos2d::CCRect&) = m1 0x140298, imac 0x17a390;
    void removeAllKeys() = m1 0x143054, imac 0x17d830;
    void removeKey(char const*) = m1 0x142f70, imac 0x17d740, ios 0x161720;
    void removeKey(unsigned int) = m1 0x142e94, imac 0x17d660;
    bool saveRootSubDictToCompressedFile(char const*) = m1 0x141b80, imac 0x17bfa0;
    bool saveRootSubDictToFile(char const*) = m1 0x1411e0, imac 0x17b420;
    gd::string saveRootSubDictToString() = imac 0x17c810, m1 0x142258, ios 0x1611f4;
    void setArrayForKey(char const*, cocos2d::CCArray*) = ios 0x162484, imac 0x180730, m1 0x145a8c;
    void setBoolForKey(char const*, bool) = m1 0x1442d8, imac 0x17ecf0, ios 0x161f88;
    void setBoolForKey(char const*, bool, bool) = m1 0x144380, imac 0x17eda0, ios 0x161f90;
    void setBoolMapForKey(char const*, gd::map<gd::string, bool>&) = m1 0x1464a0, imac 0x181200, ios 0x162b28;
    void setDictForKey(char const*, cocos2d::CCDictionary*) = imac 0x180fc0, m1 0x1462ac, ios 0x162a1c;
    void setFloatForKey(char const*, float) = imac 0x17ef20, m1 0x1444c0, ios 0x1620c4;
    void setFloatForKey(char const*, float, bool) = m1 0x1444c8, imac 0x17ef30, ios 0x1620cc;
    void setIntegerForKey(char const*, int) = imac 0x17ea10, m1 0x14406c, ios 0x161d54;
    void setIntegerForKey(char const*, int, bool) = m1 0x144074, imac 0x17ea20, ios 0x161d5c;
    void setObjectForKey(char const*, cocos2d::CCObject*) = m1 0x145bc8, imac 0x180880, ios 0x162558;
    void setRectArrayForKey(char const*, gd::vector<cocos2d::CCRect> const&) = m1 0x1456f4, imac 0x1802d0;
    void setRectArrayForKey(char const*, gd::vector<cocos2d::CCRect> const&, bool) = m1 0x1456fc, imac 0x1802e0;
    void setRectForKey(char const*, cocos2d::CCRect const&) = m1 0x144e18, imac 0x17f910;
    void setRectForKey(char const*, cocos2d::CCRect const&, bool) = m1 0x144e20, imac 0x17f920;
    void setStringArrayForKey(char const*, gd::vector<gd::string> const&) = m1 0x1451b4, imac 0x17fc70;
    void setStringArrayForKey(char const*, gd::vector<gd::string> const&, bool) = m1 0x1451bc, imac 0x17fc80;
    void setStringForKey(char const*, gd::string const&) = m1 0x144744, imac 0x17f220, ios 0x162304;
    void setStringForKey(char const*, gd::string const&, bool) = m1 0x14474c, imac 0x17f230, ios 0x16230c;
    void setSubDictForKey(char const*) = m1 0x143dcc, imac 0x17e6f0, ios inline;
    void setSubDictForKey(char const*, bool, bool) = m1 0x143e70, imac 0x17e7a0, ios 0x161c0c;
    void setVec2ArrayForKey(char const*, gd::vector<cocos2d::CCPoint> const&) = m1 0x1453ac, imac 0x17fec0;
    void setVec2ArrayForKey(char const*, gd::vector<cocos2d::CCPoint> const&, bool) = m1 0x1453b4, imac 0x17fed0;
    void setVec2ForKey(char const*, cocos2d::CCPoint const&) = m1 0x1448d0, imac 0x17f410;
    void setVec2ForKey(char const*, cocos2d::CCPoint const&, bool) = m1 0x1448d8, imac 0x17f420;
    void split(gd::string const&, char const*, gd::vector<gd::string>&) = m1 0x13fc24, imac 0x179ca0;
    bool splitWithForm(gd::string const&, gd::vector<gd::string>&) = m1 0x14002c, imac 0x17a150;
    void stepBackToRootSubDict() = m1 0x142910, imac 0x17d050;
    bool stepIntoSubDictWithKey(char const*) = m1 0x14274c, imac 0x17ce10, ios 0x161520;
    void stepOutOfSubDict() = imac 0x17d020, m1 0x1428f4, ios inline;
    bool vec2FromString(gd::string const&, cocos2d::CCPoint&) = m1 0x140824, imac 0x17a9b0;
}

[[link(win, android)]]
class ObjectDecoder : cocos2d::CCNode {
    // virtual ~ObjectDecoder();

    static ObjectDecoder* sharedDecoder() = imac 0x792320, m1 0x69aa80, ios 0x2359f0;

    virtual bool init() = imac 0x792390, m1 0x69aaf4, ios 0x235a58;

    cocos2d::CCObject* getDecodedObject(int, DS_Dictionary*) = imac 0x7923a0, m1 0x69aaf8, ios 0x235a5c;
}

[[link(win, android)]]
class pugi::xml_document : pugi::xml_node {
    xml_document() = imac 0x641250, m1 0x562d10, ios 0x3acc80;
    ~xml_document() = imac 0x641390, m1 0x562e60, ios 0x3acd64;
}

[[link(android)]]
class pugi::xml_node {
    xml_node() = win 0x724f0, m1 0x55ccd4, imac 0x63b3c0, ios 0x3ab440;
    ~xml_node() = inline;
}

