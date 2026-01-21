#import ios <Geode/cocos/particle_nodes/firePngData.h>

[[link(win, android)]]
class CCContentManager : cocos2d::CCObject {
    static CCContentManager* sharedManager() = m1 0x148d94;

    cocos2d::CCDictionary* addDict(char const*, bool) = imac 0x183f40, m1 0x148ef8;
    cocos2d::CCDictionary* addDictDS(char const*);
    void clearCache() = m1 0x149294;
    bool init() = m1 0x148e14, ios inline;
}

[[link(win, android)]]
class cocos2d {
    static cocos2d::CCAffineTransform __CCAffineTransformMake(float, float, float, float, float, float);
    static cocos2d::CCPoint __CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&);
    static cocos2d::CCSize __CCSizeApplyAffineTransform(cocos2d::CCSize const&, cocos2d::CCAffineTransform const&) = ios inline;
    static char* cc_utf16_to_utf8(unsigned short const*, long, long*, long*);
    static gd::vector<unsigned short> cc_utf16_vec_from_utf16_str(unsigned short const*);
    static unsigned int cc_utf8_find_last_not_char(gd::vector<unsigned short>, unsigned short);
    static long cc_utf8_strlen(char const*, int);
    static unsigned short* cc_utf8_to_utf16(char const*, int*);
    static void cc_utf8_trim_ws(gd::vector<unsigned short>*);
    static int cc_wcslen(unsigned short const*);
    static cocos2d::CCAffineTransform CCAffineTransformConcat(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&);
    static bool CCAffineTransformEqualToTransform(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&) = ios inline;
    static cocos2d::CCAffineTransform CCAffineTransformInvert(cocos2d::CCAffineTransform const&);
    static cocos2d::CCAffineTransform CCAffineTransformMakeIdentity();
    static cocos2d::CCAffineTransform CCAffineTransformRotate(cocos2d::CCAffineTransform const&, float);
    static cocos2d::CCAffineTransform CCAffineTransformScale(cocos2d::CCAffineTransform const&, float, float) = ios inline;
    static cocos2d::CCAffineTransform CCAffineTransformTranslate(cocos2d::CCAffineTransform const&, float, float);
    static cocos2d::CCPoint ccCardinalSplineAt(cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, float, float);
    static void ccDrawCardinalSpline(cocos2d::CCPointArray*, float, unsigned int);
    static void ccDrawCatmullRom(cocos2d::CCPointArray*, unsigned int);
    static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool);
    static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool, float, float);
    static void ccDrawCircleSegment(cocos2d::CCPoint const&, float, float, float, unsigned int, bool, float, float);
    static void ccDrawColor4B(unsigned char, unsigned char, unsigned char, unsigned char) = m1 0x1b57f4, imac 0x209960;
    static void ccDrawColor4F(float, float, float, float);
    static void ccDrawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
    static void ccDrawFilledCircle(cocos2d::CCPoint const&, float, float, unsigned int);
    static void ccDrawFree();
    static void ccDrawInit();
    static void ccDrawLine(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = m1 0x1b42dc, imac 0x208070;
    static void ccDrawLines(cocos2d::CCPoint const*, unsigned int);
    static void ccDrawPoint(cocos2d::CCPoint const&);
    static void ccDrawPoints(cocos2d::CCPoint const*, unsigned int);
    static void ccDrawPoly(cocos2d::CCPoint const*, unsigned int, bool);
    static void ccDrawQuadBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
    static void ccDrawRect(cocos2d::CCPoint, cocos2d::CCPoint);
    static void ccDrawSolidPoly(cocos2d::CCPoint const*, unsigned int, cocos2d::ccColor4F) = m1 0x1b45c0, imac 0x208340;
    static void ccDrawSolidRect(cocos2d::CCPoint origin, cocos2d::CCPoint destination, cocos2d::ccColor4F color) = m1 0x1b44ec, imac 0x208290, ios inline;
    static void ccGLBindTexture2D(unsigned int) = m1 0x2e6878;
    static void ccGLBindTexture2DN(unsigned int, unsigned int);
    static void ccGLBindVAO(unsigned int);
    static void ccGLBlendFunc(unsigned int, unsigned int) = m1 0x2e67c0, imac 0x35b210;
    static void ccGLBlendResetToCache() = ios inline;
    static void ccGLDeleteProgram(unsigned int);
    static void ccGLDeleteTexture(unsigned int);
    static void ccGLDeleteTextureN(unsigned int, unsigned int) = ios inline;
    static void ccGLEnable(cocos2d::ccGLServerState);
    static void ccGLEnableVertexAttribs(unsigned int) = m1 0x2e69c4;
    static void ccGLInvalidateStateCache();
    static void ccGLUseProgram(unsigned int);
    static void CCLog(char const*);
    static void CCLuaLog(char const*);
    static void CCMessageBox(char const*, char const*);
    static float ccpAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpAngleSigned(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static cocos2d::CCPoint ccpClamp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static cocos2d::CCPoint ccpCompMult(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpDistance(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static cocos2d::CCPoint ccpForAngle(float);
    static cocos2d::CCPoint ccpFromSize(cocos2d::CCSize const& size) = ios inline;
    static bool ccpFuzzyEqual(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
    static cocos2d::CCPoint ccpIntersectPoint(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpLength(cocos2d::CCPoint const&);
    static cocos2d::CCPoint ccpLerp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
    static bool ccpLineIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, float*, float*);
    static cocos2d::CCPoint ccpNormalize(cocos2d::CCPoint const&);
    static cocos2d::CCPoint CCPointFromString(char const*);
    static void ccPointSize(float);
    static void CCProfilingBeginTimingBlock(char const*);
    static void CCProfilingEndTimingBlock(char const*);
    static void CCProfilingResetTimingBlock(char const*);
    static cocos2d::CCPoint ccpRotateByAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
    static bool ccpSegmentIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpToAngle(cocos2d::CCPoint const& point) = ios inline;
    static cocos2d::CCRect CCRectApplyAffineTransform(cocos2d::CCRect const&, cocos2d::CCAffineTransform const&);
    static cocos2d::CCRect CCRectFromString(char const*);
    static void ccSetProjectionMatrixDirty();
    static cocos2d::CCSize CCSizeFromString(char const*);
    static bool ccVertexLineIntersect(float, float, float, float, float, float, float, float, float*);
    static void ccVertexLineToPolygon(cocos2d::CCPoint*, float, cocos2d::ccVertex2F*, unsigned int, unsigned int);
    static float clampf(float, float, float);
    static char const* cocos2dVersion();
    static cocos2d::CCBMFontConfiguration* FNTConfigLoadFile(char const*) = m1 0x500648, imac 0x5d46a0;
    static void FNTConfigRemoveCache();
    static bool isspace_unicode(unsigned short);
    // static cocos2d::CCPoint ccpCompOp(cocos2d::CCPoint const&, float (float)*);
}

[[link(win, android)]]
class cocos2d::CCAccelAmplitude : cocos2d::CCActionInterval {

    virtual ~CCAccelAmplitude();

    static cocos2d::CCAccelAmplitude* create(cocos2d::CCAction*, float);

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x20a540, m1 0x1b63cc;
    virtual void update(float) = imac 0x20a570, m1 0x1b6400;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x20a5c0, m1 0x1b644c;

    bool initWithAction(cocos2d::CCAction*, float);
}

[[link(win, android)]]
class cocos2d::CCAccelDeccelAmplitude : cocos2d::CCActionInterval {

    virtual ~CCAccelDeccelAmplitude() = m1 0x1b5fdc;

    static cocos2d::CCAccelDeccelAmplitude* create(cocos2d::CCAction*, float);

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x20a220, m1 0x1b6094;
    virtual void update(float) = imac 0x20a250, m1 0x1b60c8;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x20a2b0, m1 0x1b610c;

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
    CCAction() = imac 0x5f3c20, m1 0x51d154;
    virtual ~CCAction() = imac 0x5f3ca0, m1 0x51d1b4;

    static cocos2d::CCAction* create() = imac 0x5f3d10, m1 0x51d1f4, ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5f3d90, m1 0x51d284;
    virtual void update(float) = imac 0x5f3e90, m1 0x51d36c;
    //virtual void setTag(int) = m1 0x1b6e5c, imac 0x205680;
    virtual bool isDone() = imac 0x5f3e70, m1 0x51d360;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x5f3e50, m1 0x51d350;
    virtual void stop() = imac 0x5f3e60, m1 0x51d358;
    virtual void step(float) = imac 0x5f3e80, m1 0x51d368;

    char const* description() = m1 0x51d258, ios inline;

    cocos2d::CCNode* m_pOriginalTarget;
    cocos2d::CCNode* m_pTarget;
    int m_nTag;
    float m_fSpeedMod;
}

[[link(win, android)]]
class cocos2d::CCActionCamera : cocos2d::CCActionInterval {
    // CCActionCamera(cocos2d::CCActionCamera const&);
    // CCActionCamera();

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x367370, m1 0x2f1b48;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3673e0, m1 0x2f1bb4;
}

[[link(win, android)]]
class cocos2d::CCActionEase : cocos2d::CCActionInterval {
    // CCActionEase(cocos2d::CCActionEase const&);
    // CCActionEase();
    virtual ~CCActionEase() = m1 0x46a944;

    static cocos2d::CCActionEase* create(cocos2d::CCActionInterval*);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x513e00, m1 0x46a850;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x513fc0, m1 0x46a9fc;
    virtual void stop() = imac 0x513ff0, m1 0x46aa2c;
    virtual void update(float) = imac 0x514020, m1 0x46aa5c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x514040, m1 0x46aa6c;
    virtual cocos2d::CCActionInterval* getInnerAction() = imac 0x514060, m1 0x46aa8c;

    bool initWithAction(cocos2d::CCActionInterval* pAction);
}

[[link(win, android)]]
class cocos2d::CCActionInstant : cocos2d::CCFiniteTimeAction {
    // CCActionInstant(cocos2d::CCActionInstant const&);
    CCActionInstant() = m1 0x6b25c0, imac 0x7abdc0, ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7abe20, m1 0x6b2608;
    virtual void update(float) = imac 0x7abf00, m1 0x6b26e0;
    virtual bool isDone() = imac 0x7abed0, m1 0x6b26c8;
    virtual void step(float) = imac 0x7abee0, m1 0x6b26d0;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x7abf10, m1 0x6b26e4;
}

[[link(win, android)]]
class cocos2d::CCActionInterval : cocos2d::CCFiniteTimeAction {
    static cocos2d::CCActionInterval* create(float) = m1 0x337d18, ios inline;

    // CCActionInterval(cocos2d::CCActionInterval const&);
    // CCActionInterval();
    // ~CCActionInterval() = ios 0x264838;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b4fa0, m1 0x337dc8;
    virtual bool isDone() = imac 0x3b50a0, m1 0x337eac;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b5160, m1 0x337f40;
    virtual void step(float) = imac 0x3b50c0, m1 0x337ebc;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b5180, m1 0x337f6c;

    float getAmplitudeRate() = imac 0x3b5150, m1 0x337f38, ios inline;
    bool initWithDuration(float d) = imac 0x3b4f60, m1 0x337da4;
    // float getElapsed();
    // bool getM_bFirstTick() const;
    void setAmplitudeRate(float) = imac 0x3b5140, m1 0x337f34, ios inline;

    float m_elapsed;
    bool m_bFirstTick;
}

[[link(win, android)]]
class cocos2d::CCActionManager : cocos2d::CCObject {
    CCActionManager() = m1 0x1dcd78;
    virtual ~CCActionManager() = m1 0x1dcda0;

    virtual void update(float) = imac 0x2343e0, m1 0x1ddfe4;

    void actionAllocWithHashElement(cocos2d::_hashElement*);
    void addAction(cocos2d::CCAction*, cocos2d::CCNode*, bool) = imac 0x2338e0, m1 0x1dd408;
    void deleteHashElement(cocos2d::_hashElement*) = m1 0x1dcec0;
    cocos2d::CCAction* getActionByTag(unsigned int, cocos2d::CCObject*) = imac 0x2341d0, m1 0x1ddda4;
    unsigned int numberOfRunningActionsInTarget(cocos2d::CCObject* target) = imac 0x2342f0, m1 0x1dded8, ios inline;
    cocos2d::CCSet* pauseAllRunningActions() = m1 0x1dd2ec, ios inline;
    void pauseTarget(cocos2d::CCObject*) = imac 0x233620, m1 0x1dd0f8;
    void removeAction(cocos2d::CCAction*) = m1 0x4227d4;
    void removeActionAtIndex(unsigned int, cocos2d::_hashElement*) = imac 0x233590, m1 0x1dd030;
    void removeActionByTag(unsigned int, cocos2d::CCObject*) = imac 0x234020, m1 0x1ddbb4;
    void removeAllActions() = imac 0x233360, m1 0x1dcdec, ios inline;
    void removeAllActionsFromTarget(cocos2d::CCObject*) = imac 0x233d20;
    void resumeTarget(cocos2d::CCObject*) = imac 0x233700, m1 0x1dd1f4;
    void resumeTargets(cocos2d::CCSet*) = m1 0x1dd374, ios inline;
}

[[link(win, android)]]
class cocos2d::CCActionTween {
    static cocos2d::CCActionTween* create(float, char const*, float, float) = imac 0x7a4eb0, m1 0x6abf88;
    static cocos2d::CCActionTween* create(float, int, float, float) = imac 0x7a4db0, m1 0x6abea0;

    virtual void update(float) = imac 0x7a5060, m1 0x6ac100;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x7a5010, m1 0x6ac0c4;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x7a50d0, m1 0x6ac154;

    bool initWithDuration(float, char const*, float, float) = imac 0x27e250, m1 0x6ac068, ios inline;
    // CCActionTween(cocos2d::CCActionTween const&);
    // CCActionTween();
    void updateTargetValue(float) = imac 0x7a5040, m1 0x6ac0f0, ios inline;
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
    CCAnimate() = m1 0x33e1f8;
    virtual ~CCAnimate() = m1 0x33e264;

    static cocos2d::CCAnimate* create(cocos2d::CCAnimation*) = imac 0x3bbcd0, m1 0x33ddb4;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3bc0e0, m1 0x33e0f0;
    virtual void update(float) = imac 0x3bc3e0, m1 0x33e3a0;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3bc320, m1 0x33e2e8;
    virtual void stop() = imac 0x3bc390, m1 0x33e354;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3bc630, m1 0x33e5b4;

    bool initWithAnimation(cocos2d::CCAnimation*) = m1 0x33dec4;

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

    static cocos2d::CCAnimation* create() = m1 0x2365d8;
    static cocos2d::CCAnimation* create(cocos2d::CCArray*, float, unsigned int) = imac 0x296670, m1 0x2368dc;
    static cocos2d::CCAnimation* createWithSpriteFrames(cocos2d::CCArray*, float) = imac 0x296470, m1 0x236704;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x296ad0, m1 0x236d14;
    virtual float getDuration() = imac 0x296ac0, m1 0x236d08;

    void addSpriteFrame(cocos2d::CCSpriteFrame*);
    void addSpriteFrameWithFileName(char const*);
    void addSpriteFrameWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
    bool init() = imac 0x296420, m1 0x2366a8;
    bool initWithAnimationFrames(cocos2d::CCArray*, float, unsigned int) = imac 0x296780, m1 0x2369e4;
    bool initWithSpriteFrames(cocos2d::CCArray*, float) = imac 0x296500, m1 0x23678c;
}

[[link(win, android)]]
class cocos2d::CCAnimationCache : cocos2d::CCObject {
    [[since("4.2.1")]]
    CCAnimationCache() = m1 0x3d48c4, ios inline;
    [[since("4.2.1")]]
    virtual ~CCAnimationCache() = m1 0x3d48e8;

    static void purgeSharedAnimationCache() = m1 0x3d4898;
    static cocos2d::CCAnimationCache* sharedAnimationCache() = imac 0x46cae0, m1 0x3d4788;

    void addAnimation(cocos2d::CCAnimation*, const char*);
    void addAnimationsWithDictionary(cocos2d::CCDictionary*, const char*) = imac 0x46d690, m1 0x3d533c;
    void addAnimationsWithFile(const char*) = m1 0x3d559c;
    cocos2d::CCAnimation* animationByName(const char*);
    bool init() = m1 0x3d4850;
    void parseVersion1(cocos2d::CCDictionary*) = m1 0x3d4ca0;
    void parseVersion2(cocos2d::CCDictionary*) = m1 0x3d4f04;
    void removeAnimationByName(const char*) = m1 0x3d4aa0, ios inline;
}

[[link(win, android)]]
class cocos2d::CCAnimationFrame : cocos2d::CCObject {
    CCAnimationFrame();
    virtual ~CCAnimationFrame();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x2961d0, m1 0x236488;

    bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, float, cocos2d::CCDictionary*);
}

[[link(win, android)]]
class cocos2d::CCApplication : cocos2d::CCApplicationProtocol {
    CCApplication();
    virtual ~CCApplication() = imac 0x328f80, m1 0x2b617c;

    static cocos2d::CCApplication* sharedApplication() = imac 0x329080, m1 0x2b6258;

    virtual int run();
    virtual void setAnimationInterval(double) = imac 0x329030, m1 0x2b6224;
    virtual cocos2d::ccLanguageType getCurrentLanguage() = imac 0x329090, m1 0x2b6264;
    virtual cocos2d::TargetPlatform getTargetPlatform() = imac 0x329070, m1 0x2b6250;
    virtual void openURL(char const*) = imac 0x329d90, m1 0x2b6b20;

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
    void addObjectNew(cocos2d::CCObject*) = m1 0x632b38, ios inline;
    // void addObjectsFromArray(cocos2d::CCArray*);
    unsigned int capacity() const;
    // bool containsObject(cocos2d::CCObject*) const;
    // unsigned int count() const;
    void exchangeObject(cocos2d::CCObject*, cocos2d::CCObject*);
    void exchangeObjectAtIndex(unsigned int, unsigned int);
    // void fastRemoveObject(cocos2d::CCObject*);
    // void fastRemoveObjectAtIndex(unsigned int) = imac 0x709f10, m1 0x629530;
    void fastRemoveObjectAtIndexChild(unsigned int) = m1 0x632b98, ios inline;
    void fastRemoveObjectAtIndexNew(unsigned int) = m1 0x632b90, ios inline;
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
    void recreateNewIndexes() = m1 0x632b30, ios inline;
    void reduceMemoryFootprint();
    // void removeAllObjects() = ios 0x249528;
    // void removeLastObject(bool);
    void removeObject(cocos2d::CCObject*, bool);
    // void removeObjectAtIndex(unsigned int, bool);
    void removeObjectAtIndexChild(unsigned int, bool) = imac 0x71f730, m1 0x632b6c;
    void removeObjectsInArray(cocos2d::CCArray*);
    void replaceObjectAtIndex(unsigned int, cocos2d::CCObject*, bool);
    void reverseObjects();
    cocos2d::CCString* stringAtIndex(unsigned int) = imac 0x71fb00, m1 0x6329fc;

    // virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios 0x249634, imac 0x71ff10, m1 0x632d6c;
    // virtual void acceptVisitor(cocos2d::CCDataVisitor&) = ios 0x2496f8, imac 0x720010, m1 0x632e6c;
    cocos2d::ccArray* data;
}

[[link(win, android)]]
class cocos2d::CCAtlasNode : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    CCAtlasNode() = m1 0x2b70a8;
    virtual ~CCAtlasNode() = m1 0x2b7138;

    static cocos2d::CCAtlasNode* create(char const*, unsigned int, unsigned int, unsigned int) = imac 0x32a570, m1 0x2b7220;

    virtual cocos2d::CCTextureAtlas* getTextureAtlas() = imac 0x32aeb0, m1 0x2b7b38;
    virtual void setTextureAtlas(cocos2d::CCTextureAtlas*) = imac 0x32ae70, m1 0x2b7afc;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x32ad30, m1 0x2b79e0;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x32ad50, m1 0x2b79f4;
    virtual unsigned int getQuadsToDraw() = imac 0x32aec0, m1 0x2b7b40;
    virtual void setQuadsToDraw(unsigned int) = imac 0x32aed0, m1 0x2b7b48;
    virtual void updateAtlasValues() = imac 0x32a970, m1 0x2b7610;
    virtual void draw() = imac 0x32a980, m1 0x2b7614;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x32ae40, m1 0x2b7adc;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x32ad70, m1 0x2b7a08;
    virtual bool isOpacityModifyRGB() = imac 0x32ad00, m1 0x2b79c8;
    virtual void setOpacityModifyRGB(bool) = imac 0x32ac50, m1 0x2b7900;
    virtual cocos2d::ccColor3B const& getColor() = imac 0x32aa70, m1 0x2b7720;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x32aab0, m1 0x2b7754;
    virtual void setOpacity(unsigned char) = imac 0x32abc0, m1 0x2b7868;

    void calculateMaxItems() = imac 0x32a8e0, m1 0x2b7588;
    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int, unsigned int, unsigned int) = imac 0x32a6c0, m1 0x2b7374;
    bool initWithTileFile(char const*, unsigned int, unsigned int, unsigned int) = imac 0x32a660, m1 0x2b7314;
    void setIgnoreContentScaleFactor(bool) = imac 0x32ad20, m1 0x2b79d8;
    void updateBlendFunc() = m1 0x2b7510;
    void updateOpacityModifyRGB() = m1 0x2b7554;
}

[[link(win, android)]]
class cocos2d::CCAutoreleasePool : cocos2d::CCObject {
    CCAutoreleasePool();
    virtual ~CCAutoreleasePool() = ios inline;

    void addObject(cocos2d::CCObject*) = m1 0x36f198, ios inline;
    void clear() = m1 0x36f220;
    void removeObject(cocos2d::CCObject*) = ios inline;
}

[[link(win, android)]]
class cocos2d::CCBezierBy : cocos2d::CCActionInterval {
    static cocos2d::CCBezierBy* create(float, cocos2d::ccBezierConfig const&) = imac 0x3b9310;

    // CCBezierBy(cocos2d::CCBezierBy const&);
    // CCBezierBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b9510, m1 0x33bab8;
    virtual void update(float) = imac 0x3b9690, m1 0x33bc08;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b94c0, m1 0x33ba64;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b9830, m1 0x33bd60;

    bool initWithDuration(float, cocos2d::ccBezierConfig const&) = imac 0x3b9450, m1 0x33ba04;
}

[[link(win, android)]]
class cocos2d::CCBezierTo : cocos2d::CCBezierBy {
    static cocos2d::CCBezierTo* create(float, cocos2d::ccBezierConfig const&) = imac 0x3b9900, m1 0x33be14;

    // CCBezierTo(cocos2d::CCBezierTo const&);
    // CCBezierTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b9a50, m1 0x33bf24;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b9b80, m1 0x33c024;

    bool initWithDuration(float, cocos2d::ccBezierConfig const&) = imac 0x3b99e0, m1 0x33bec4;
}

[[link(win, android)]]
class cocos2d::CCBlink : cocos2d::CCActionInterval {
    static cocos2d::CCBlink* create(float, unsigned int) = imac 0x3ba410, m1 0x33c768;

    // CCBlink(cocos2d::CCBlink const&);
    // CCBlink();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3ba570, m1 0x33c8a0;
    virtual void update(float) = imac 0x3ba680, m1 0x33c990;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3ba530, m1 0x33c85c;
    virtual void stop() = imac 0x3ba500, m1 0x33c828;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3ba700, m1 0x33ca18;

    bool initWithDuration(float, unsigned int) = imac 0x3ba4c0, m1 0x33c800, ios inline;
}

[[link(win, android)]]
class cocos2d::CCBMFontConfiguration : cocos2d::CCObject {
    // CCBMFontConfiguration(cocos2d::CCBMFontConfiguration const&);
    CCBMFontConfiguration() = m1 0x5017f8, ios inline;
    virtual ~CCBMFontConfiguration() = imac 0x5d5720, m1 0x501830;

    static cocos2d::CCBMFontConfiguration* create(char const*) = imac 0x5d48d0, m1 0x50086c;

    char const* description() = ios inline;
    bool initWithFNTfile(char const*) = imac 0x5d49f0, m1 0x500984, ios inline;
    void parseCharacterDefinition(gd::string, cocos2d::_BMFontDef*);
    void parseCommonArguments(gd::string) = imac 0x5d5cd0;
    gd::set<unsigned int>* parseConfigFile(char const*);
    void parseImageFileName(gd::string, char const*) = m1 0x502430;
    void parseInfoArguments(gd::string) = imac 0x5d5ae0;
    void parseKerningEntry(gd::string);
    void purgeFontDefDictionary();
    void purgeKerningDictionary();
}

[[link(win, android)]]
class cocos2d::CCCallFunc : cocos2d::CCActionInstant {
    // CCCallFunc(cocos2d::CCCallFunc const&);
    // CCCallFunc();
    [[since("4.2.1")]]
    virtual ~CCCallFunc() = m1 0x6b3364;

    static cocos2d::CCCallFunc* create(cocos2d::CCObject*, cocos2d::SEL_CallFunc) = imac 0x7aca20, m1 0x6b3224;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7acc70, m1 0x6b347c;
    virtual void update(float) = imac 0x7acd70, m1 0x6b3580;
    virtual bool initWithTarget(cocos2d::CCObject*) = imac 0x7acb30, m1 0x6b3324;
    virtual void execute() = imac 0x7acd80, m1 0x6b358c;
}

[[link(win, android)]]
class cocos2d::CCCallFuncN : cocos2d::CCCallFunc, cocos2d::TypeInfo {
    static cocos2d::CCCallFuncN* create(cocos2d::CCObject* pSelectorTarget, cocos2d::SEL_CallFuncN selector) = imac 0x7ace40, m1 0x6b3670, ios inline;

    virtual bool initWithTarget(cocos2d::CCObject* pSelectorTarget, cocos2d::SEL_CallFuncN selector) = imac 0x7acf70, m1 0x6b3780, ios inline;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* zone) = imac 0x7acfc0, m1 0x6b37d4, ios inline;
    virtual void execute() = imac 0x7acde0, m1 0x6b35fc, ios inline;
}

[[link(win, android)]]
class cocos2d::CCCallFuncND : cocos2d::CCCallFuncN {
    static cocos2d::CCCallFuncND* create(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*) = imac 0x6528f0, m1 0x51422c, ios inline;

    // CCCallFuncND(cocos2d::CCCallFuncND const&);
    // CCCallFuncND();
    virtual bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*) = imac 0x7ad1a0, m1 0x6b397c, ios inline;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7ad210, m1 0x6b39e0, ios inline;
    virtual void execute() = imac 0x7ad330, m1 0x6b3adc, ios inline;
}

[[link(win, android)]]
class cocos2d::CCCallFuncO : cocos2d::CCCallFunc, cocos2d::TypeInfo {
    // cocos2d::CCObject* getObject();
    // void setObject(cocos2d::CCObject*);
    // CCCallFuncO(cocos2d::CCCallFuncO const&);
    CCCallFuncO() = m1 0x6b3b4c, ios inline;
    virtual ~CCCallFuncO() = m1 0x6b3b84;

    static cocos2d::CCCallFuncO* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*) = imac 0x7ad520, m1 0x6b3c50;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7ad670, m1 0x6b3d7c;
    virtual void execute() = imac 0x7ad4e0, m1 0x6b3c1c;
    virtual bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*) = imac 0x7ad600, m1 0x6b3d0c;
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
    CCCardinalSplineBy();

    static cocos2d::CCCardinalSplineBy* create(float, cocos2d::CCPointArray*, float);

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x2d2130, m1 0x26d2c0;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x2d1df0, m1 0x26cffc;
    virtual void updatePosition(cocos2d::CCPoint&) = imac 0x2d1da0, m1 0x26cfa4;
}

[[link(win, android)]]
class cocos2d::CCCardinalSplineTo : cocos2d::CCActionInterval {
    CCCardinalSplineTo();
    virtual ~CCCardinalSplineTo() = m1 0x26c7d4;

    static cocos2d::CCCardinalSplineTo* create(float, cocos2d::CCPointArray*, float) = imac 0x2d13b0, m1 0x26c620;

    virtual cocos2d::CCCardinalSplineTo* copyWithZone(cocos2d::CCZone*) = imac 0x2d1700, m1 0x26c968;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x2d1690, m1 0x26c8f4;
    virtual void update(float) = imac 0x2d1830, m1 0x26ca84;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x2d1b50, m1 0x26cd34;
    virtual void updatePosition(cocos2d::CCPoint&) = imac 0x2d1b20, m1 0x26ccfc;

    bool initWithDuration(float, cocos2d::CCPointArray*, float) = imac 0x2d1500, m1 0x26c774;
}

[[link(win, android)]]
class cocos2d::CCCatmullRomBy : cocos2d::CCCardinalSplineBy {
    static cocos2d::CCCatmullRomBy* create(float, cocos2d::CCPointArray*) = m1 0x26d4c4;

    bool initWithDuration(float, cocos2d::CCPointArray*);
}

[[link(win, android)]]
class cocos2d::CCCatmullRomTo : cocos2d::CCCardinalSplineTo {
    static cocos2d::CCCatmullRomTo* create(float, cocos2d::CCPointArray*) = imac 0x2d21c0, m1 0x26d350;

    bool initWithDuration(float, cocos2d::CCPointArray*);
}

[[link(win, android)]]
class cocos2d::CCClippingNode : cocos2d::CCNode {
    CCClippingNode() = m1 0x631b88;
    virtual ~CCClippingNode() = m1 0x631be0;

    static cocos2d::CCClippingNode* create() = imac 0x71eb80, m1 0x631c98;
    static cocos2d::CCClippingNode* create(cocos2d::CCNode* stencil) = m1 0x631d20;

    virtual bool init() = imac 0x71ecc0, m1 0x631dc0;
    virtual bool init(cocos2d::CCNode* pStencil) = imac 0x71ece0, m1 0x631dd0;
    virtual void onEnter() = imac 0x71ed50, m1 0x631e40;
    virtual void onEnterTransitionDidFinish() = imac 0x71ed80, m1 0x631e6c;
    virtual void onExit() = imac 0x71ede0, m1 0x631ec8;
    virtual void onExitTransitionDidStart() = imac 0x71edb0, m1 0x631e98;
    virtual void visit() = imac 0x71ee10, m1 0x631ef8;

    float getAlphaThreshold() const;
    cocos2d::CCNode* getStencil() const = m1 0x63222c;
    bool isInverted() const;
    void setAlphaThreshold(float fAlphaThreshold) = imac 0x71f1d0, m1 0x632280;
    void setInverted(bool bInverted) = imac 0x71f1f0, m1 0x632290;
    void setStencil(cocos2d::CCNode* pStencil) = m1 0x632234;
}

[[link(win, android)]]
class cocos2d::CCComponent : cocos2d::CCObject {
    CCComponent();
    virtual ~CCComponent();

    static cocos2d::CCComponent* create();

    virtual bool init() = imac 0x9bd70, m1 0x8caa4;
    virtual void onEnter() = imac 0x9bd80, m1 0x8caac;
    virtual void onExit() = imac 0x9bd90, m1 0x8cab0;
    virtual void update(float) = imac 0x9bda0, m1 0x8cab4;
    virtual bool serialize(void*) = imac 0x9bdb0, m1 0x8cab8;
    virtual bool isEnabled() const = imac 0x9be70, m1 0x8cb5c;
    virtual void setEnabled(bool) = imac 0x9be80, m1 0x8cb64;

    char const* getName() const;
    cocos2d::CCNode* getOwner() const;
    void setName(char const*);
    void setOwner(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCComponentContainer {
    CCComponentContainer(cocos2d::CCNode*) = win inline;
    virtual ~CCComponentContainer();

    virtual cocos2d::CCComponent* get(char const*) const = imac 0x2c4bb0, m1 0x260ec8;
    virtual bool add(cocos2d::CCComponent*) = imac 0x2c4cd0, m1 0x260ff8;
    virtual bool remove(char const*) = imac 0x2c4ef0, m1 0x26120c;
    virtual bool remove(cocos2d::CCComponent*) = imac 0x2c51c0, m1 0x2614d8;
    virtual void removeAll() = imac 0x2c5360, m1 0x26166c;
    virtual void visit(float) = imac 0x2c5550, m1 0x26180c;

    void alloc();
    bool isEmpty() const;
}

[[link(win, android)]]
class cocos2d::CCConfiguration : cocos2d::CCObject {
    CCConfiguration();
    // CCConfiguration(cocos2d::CCConfiguration const&);
    virtual ~CCConfiguration();

    static void purgeConfiguration();
    static cocos2d::CCConfiguration* sharedConfiguration() = imac 0x519700, m1 0x46fed4;

    bool checkForGLExtension(gd::string const&) const;
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
    virtual void visit(cocos2d::CCBool const*) = imac 0x4b4b40, m1 0x415e1c, ios inline;
    virtual void visit(cocos2d::CCInteger const*) = imac 0x4b4b50, m1 0x415e28, ios inline;
    virtual void visit(cocos2d::CCFloat const*) = imac 0x4b4b60, m1 0x415e34, ios inline;
    virtual void visit(cocos2d::CCDouble const*) = imac 0x4b4b70, m1 0x415e40, ios inline;
    virtual void visit(cocos2d::CCString const*) = imac 0x4b4b80, m1 0x415e4c, ios inline;
    virtual void visit(cocos2d::CCArray const*) = imac 0x4b4b90, m1 0x415e58, ios inline;
    virtual void visit(cocos2d::CCDictionary const*) = imac 0x4b4ba0, m1 0x415e64, ios inline;
    virtual void visit(cocos2d::CCSet const*) = imac 0x4b4bb0, m1 0x415e70, ios inline;
}

[[link(win, android)]]
class cocos2d::CCDeccelAmplitude : cocos2d::CCActionInterval {

    virtual ~CCDeccelAmplitude() = m1 0x1b6634;

    static cocos2d::CCDeccelAmplitude* create(cocos2d::CCAction*, float);

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x20a850, m1 0x1b66ec;
    virtual void update(float) = imac 0x20a880, m1 0x1b6720;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x20a8e0, m1 0x1b6774;

    bool initWithAction(cocos2d::CCAction*, float);
}

[[link(win, android)]]
class cocos2d::CCDelayTime : cocos2d::CCActionInterval {
    static cocos2d::CCDelayTime* create(float) = m1 0x3399cc, imac 0x3b6f60;

    // CCDelayTime(cocos2d::CCDelayTime const&);
    // CCDelayTime();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3bb750, m1 0x33d8c0;
    virtual void update(float) = imac 0x3bb820, m1 0x33d990;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3bb830, m1 0x33d994;
}

[[link(win, android)]]
class cocos2d::CCDevice {
    static int getDPI();
}

[[link(win, android)]]
class cocos2d::CCDictElement {
    CCDictElement(char const*, cocos2d::CCObject*) = win inline, m1 0x29c964, ios inline;
    CCDictElement(intptr_t, cocos2d::CCObject*) = win inline, imac 0x30d4e0, m1 0x29c9e8, ios inline;
    ~CCDictElement() = m1 0x29ca04, ios inline;
}

[[link(win, android)]]
class cocos2d::CCDictionary : cocos2d::CCObject {
    // CCDictionary(cocos2d::CCDictionary const&);
    CCDictionary() = m1 0x29ca34;
    virtual ~CCDictionary() = imac 0x30d5a0, m1 0x29ca5c;

    static cocos2d::CCDictionary* create() = m1 0x29ee3c;
    static cocos2d::CCDictionary* createWithContentsOfFile(char const*) = imac 0x30fc70, m1 0x29efe8;
    static cocos2d::CCDictionary* createWithContentsOfFileThreadSafe(char const*);
    static cocos2d::CCDictionary* createWithDictionary(cocos2d::CCDictionary*) = m1 0x29ee98;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x30f7c0, m1 0x29eb10;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x30fc50, m1 0x29efd0;

    cocos2d::CCArray* allKeys() = imac 0x30d7e0, m1 0x29cc6c;
    cocos2d::CCArray* allKeysForObject(cocos2d::CCObject*) = imac 0x30d970, m1 0x29ce04, ios inline;
    char const* charForKey(gd::string const&) = imac 0x30dab0, ios inline;
    unsigned int count() = m1 0x29cc50;
    gd::string getFirstKey() = imac 0x30d910, m1 0x29cd9c;
    cocos2d::CCObject* objectForKey(gd::string const&) = m1 0x29d0a0, imac 0x30db50;
    cocos2d::CCObject* objectForKey(intptr_t) = imac 0x30df20, m1 0x29d41c;
    cocos2d::CCObject* randomObject() = imac 0x30f9d0, m1 0x27f264, ios inline;
    void removeAllObjects();
    void removeObjectForElememt(cocos2d::CCDictElement*);
    void removeObjectForKey(gd::string const&);
    void removeObjectForKey(intptr_t) = imac 0x30f540, m1 0x29e8a8;
    void removeObjectsForKeys(cocos2d::CCArray*) = m1 0x240e1c;
    void setObject(cocos2d::CCObject*, gd::string const&) = imac 0x30e0d0, m1 0x29d5f4;
    void setObject(cocos2d::CCObject*, intptr_t);
    void setObjectUnSafe(cocos2d::CCObject*, gd::string const&) = imac 0x30e500, m1 0x29da40;
    void setObjectUnSafe(cocos2d::CCObject*, intptr_t) = imac 0x30ec80, m1 0x29e0d0;
    cocos2d::CCString const* valueForKey(gd::string const&) = imac 0x30dad0;
    cocos2d::CCString const* valueForKey(intptr_t) = imac 0x30e050;
    bool writeToFile(char const*) = imac 0x16ada0, m1 0x29f010, ios inline;

    cocos2d::CCDictElement* m_pElements;
    int m_eDictType;
}

[[link(win, android)]]
class cocos2d::CCDirector : cocos2d::CCObject, cocos2d::TypeInfo {
    // CCDirector(cocos2d::CCDirector const&);
    CCDirector() = m1 0x3e806c, imac 0x481fd0;
    virtual ~CCDirector() = m1 0x3e8480, imac 0x482450;

    static cocos2d::CCDirector* sharedDirector() = imac 0x481f00, m1 0x3e7fac;

    virtual bool init() = imac 0x482030, m1 0x3e80d0;
    virtual cocos2d::CCScheduler* getScheduler() = imac 0x484520, m1 0x3ea154;
    virtual void setScheduler(cocos2d::CCScheduler*) = imac 0x4844e0, m1 0x3ea10c;
    virtual cocos2d::CCActionManager* getActionManager() = imac 0x484570, m1 0x3ea1a4;
    virtual void setActionManager(cocos2d::CCActionManager*) = imac 0x484530, m1 0x3ea15c;
    virtual cocos2d::CCTouchDispatcher* getTouchDispatcher() = imac 0x4845c0, m1 0x3ea1f4;
    virtual void setTouchDispatcher(cocos2d::CCTouchDispatcher*) = imac 0x484580, m1 0x3ea1ac;
    virtual cocos2d::CCKeypadDispatcher* getKeypadDispatcher() = imac 0x4846b0, m1 0x3ea2c0;
    virtual void setKeypadDispatcher(cocos2d::CCKeypadDispatcher*) = imac 0x484670, m1 0x3ea284;
    virtual cocos2d::CCKeyboardDispatcher* getKeyboardDispatcher() = imac 0x484610, m1 0x3ea238;
    virtual void setKeyboardDispatcher(cocos2d::CCKeyboardDispatcher*) = imac 0x4845d0, m1 0x3ea1fc;
    virtual cocos2d::CCMouseDispatcher* getMouseDispatcher() = imac 0x484660, m1 0x3ea27c;
    virtual void setMouseDispatcher(cocos2d::CCMouseDispatcher*) = imac 0x484620, m1 0x3ea240;
    virtual cocos2d::CCAccelerometer* getAccelerometer() = imac 0x4846f0, m1 0x3ea300;
    virtual void setAccelerometer(cocos2d::CCAccelerometer*) = imac 0x4846c0, m1 0x3ea2c8;
    virtual float getDeltaTime() = imac 0x4830f0, m1 0x3e8f9c;

    void applySmoothFix();
    void calculateDeltaTime() = m1 0x3e8b00;
    void calculateMPF() = m1 0x3e8ea4;
    void checkSceneReference();
    cocos2d::CCPoint convertToGL(cocos2d::CCPoint const&) = imac 0x483860, m1 0x3e961c;
    cocos2d::CCPoint convertToUI(cocos2d::CCPoint const&) = imac 0x483980, m1 0x3e96f8, ios inline;
    void createStatsLabel();
    void drawScene() = m1 0x3e87c8;
    void end() = imac 0x483ed0, m1 0x3e9bc0;
    // float getActualDeltaTime() const;
    // double getAnimationInterval();
    float getContentScaleFactor(); // ios 0x179bdc
    cocos2d::CCDirectorDelegate* getDelegate() const;
    // bool getDontCallWillSwitch() const;
    void getFPSImageData(unsigned char**, unsigned int*);
    // bool getIsTransitioning() const;
    // cocos2d::TextureQuality getLoadedTextureQuality() const;
    // cocos2d::CCScene* getNextScene();
    cocos2d::CCNode* getNotificationNode() = m1 0x3ea0b0;
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
    cocos2d::CCPoint getVisibleOrigin() = m1 0x3e980c, ios inline;
    cocos2d::CCSize getVisibleSize() = m1 0x3e97e8, ios inline;
    cocos2d::CCSize getWinSize() = imac 0x483310, m1 0x3e9184;
    cocos2d::CCSize getWinSizeInPixels() = imac 0x483a90, m1 0x10fe04;
    float getZEye();
    // bool isDisplayStats();
    // bool isNextDeltaTimeZero();
    // bool isPaused();
    // bool isSendCleanupToScene();
    int levelForSceneInStack(cocos2d::CCScene*);
    void pause() = m1 0x3e9f58, imac 0x4842e0;
    void popScene() = imac 0x483e50, m1 0x3e9b40;
    bool popSceneWithTransition(float, cocos2d::PopTransition) = m1 0x3e9bcc, imac 0x483ee0;
    void popToRootScene() = imac 0x483fc0, m1 0x3e9c9c;
    void popToSceneInStack(cocos2d::CCScene*) = imac 0x484140, m1 0x3e9e04;
    void popToSceneStackLevel(int) = imac 0x483fd0, m1 0x3e9ca4;
    void purgeCachedData();
    void purgeDirector() = imac 0x4841a0, m1 0x3e9e54;
    bool pushScene(cocos2d::CCScene*);
    void removeStatsLabel() = imac 0x4843a0, m1 0x3ea018;
    bool replaceScene(cocos2d::CCScene*) = imac 0x483cf0, m1 0x3e99e0;
    void resetSmoothFixCounter() = imac 0x4830e0, m1 0x3e8f90;
    void reshapeProjection(cocos2d::CCSize const&);
    void resume();
    void runWithScene(cocos2d::CCScene*) = imac 0x483ba0;
    int sceneCount() = m1 0x3e9db0;
    //getScreenTop = ios 0x18260c, idk if i should add the function
    //getScreenBottom() = ios 0x182614
    //getScreenLeft() = ios 0x18261C
    // void setActualDeltaTime(float);
    void setAlphaBlending(bool);
    void setContentScaleFactor(float);
    void setDefaultValues() = m1 0x3e8330;
    void setDelegate(cocos2d::CCDirectorDelegate*);
    void setDeltaTime(float);
    void setDepthTest(bool) = imac 0x482640, m1 0x3e85f0;
    // void setDisplayStats(bool);
    // void setDontCallWillSwitch(bool);
    void setGLDefaultValues() = imac 0x4825d0, m1 0x3e8590;
    void setNextDeltaTimeZero(bool);
    void setNextScene() = imac 0x482d30, m1 0x3e8c2c;
    void setNotificationNode(cocos2d::CCNode*) = m1 0x3ea0b8;
    void setOpenGLView(cocos2d::CCEGLView*);
    void setProjection(cocos2d::ccDirectorProjection) = imac 0x482680;
    void setupScreenScale(cocos2d::CCSize, cocos2d::CCSize, cocos2d::TextureQuality);
    // void setSceneReference(cocos2d::CCScene*);
    // void setSmoothFix(bool);
    // void setSmoothFixCheck(bool);
    void setViewport() = imac 0x43f1d0;
    void showFPSLabel();
    void showStats() = m1 0x3e8d4c;
    void toggleShowFPS(bool, gd::string, cocos2d::CCPoint) = imac 0x4831f0, m1 0x3e9084;
    void updateContentScale(cocos2d::TextureQuality) = m1 0x3e9430;
    void updateScreenScale(cocos2d::CCSize);
    void willSwitchToScene(cocos2d::CCScene*);
}

[[link(android)]]
class cocos2d::CCDisplayLinkDirector : cocos2d::CCDirector {
    virtual void setAnimationInterval(double) = imac 0x484790, m1 0x3ea388;
    virtual void stopAnimation() = imac 0x484780, m1 0x3ea37c;
    virtual void startAnimation() = imac 0x484700, m1 0x3ea308;
    virtual void mainLoop() = win 0xbd340, imac 0x484740, m1 0x3ea344;
}

[[link(win, android)]]
class cocos2d::CCDrawNode : cocos2d::CCNodeRGBA {
    // CCDrawNode(cocos2d::CCDrawNode const&);
    CCDrawNode();
    virtual ~CCDrawNode() = m1 0x535f08;

    static cocos2d::CCDrawNode* create() = m1 0x536050;

    virtual bool init() = imac 0x610940, m1 0x536180;
    virtual void draw() = imac 0x610b30, m1 0x536344;

    void clear() = imac 0x612ab0, m1 0x537d48;
    void disableDrawArea() = imac 0x610c80, m1 0x53647c;
    bool drawCircle(cocos2d::CCPoint const&, float, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&, unsigned int) = m1 0x537ba8;
    void drawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::ccColor4F const&) = ios inline;
    bool drawDot(cocos2d::CCPoint const& pos, float radius, cocos2d::ccColor4F const& color) = ios inline;
    bool drawLines(cocos2d::CCPoint*, unsigned int, float, cocos2d::ccColor4F const&) = imac 0x612880, m1 0x537b20;
    bool drawPolygon(cocos2d::CCPoint*, unsigned int, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&, cocos2d::BorderAlignment);
    void drawPreciseCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::ccColor4F const&) = ios inline;
    bool drawRect(cocos2d::CCRect const&, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&, cocos2d::BorderAlignment);
    bool drawRect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&, cocos2d::BorderAlignment);
    bool drawSegment(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::ccColor4F const&);
    void enableDrawArea(cocos2d::CCRect&) = imac 0x610c10, m1 0x53641c;
    void ensureCapacity(unsigned int);
    cocos2d::ccBlendFunc getBlendFunc() const = imac 0x612ad0, m1 0x537d58;
    [[since("4.10.1")]]
    bool is_circle_on_screen(cocos2d::CCRect const&, cocos2d::CCPoint const&, float) = imac 0x610c90, m1 0x536484, ios inline;
    [[since("4.10.1")]]
    bool is_segment_on_screen(cocos2d::CCRect const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x611e60, m1 0x537308;
    void listenBackToForeground(cocos2d::CCObject*) = imac 0x612af0, m1 0x537d6c, ios inline;
    void render();
    void setBlendFunc(cocos2d::ccBlendFunc const&) = imac 0x612ae0, m1 0x537d60;

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
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x516d50, m1 0x46d71c;
    virtual void update(float) = imac 0x516e50, m1 0x46d804;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x516e80, m1 0x46d838;
}

[[link(win, android)]]
class cocos2d::CCEaseBackInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackInOut* create(cocos2d::CCActionInterval* pAction) = ios inline;

    // CCEaseBackInOut(cocos2d::CCEaseBackInOut const&);
    // CCEaseBackInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x517140, m1 0x46daf0, ios inline;
    virtual void update(float time) = imac 0x517240, m1 0x46dbd8, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5172d0, m1 0x46dc6c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseBackOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackOut* create(cocos2d::CCActionInterval*);

    // CCEaseBackOut(cocos2d::CCEaseBackOut const&);
    // CCEaseBackOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x516f40, m1 0x46d900;
    virtual void update(float) = imac 0x517040, m1 0x46d9e8;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x517080, m1 0x46da28;
}

[[link(win, android)]]
class cocos2d::CCEaseBounce : cocos2d::CCActionEase {
    static cocos2d::CCEaseBounce* create(cocos2d::CCActionInterval* pAction) = ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x516240, m1 0x46cb34, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x516400, m1 0x46cd04, ios inline;

    // CCEaseBounce(cocos2d::CCEaseBounce const&);
    // CCEaseBounce();
    float bounceTime(float) = imac 0x516340, m1 0x46cc1c;
}

[[link(win, android)]]
class cocos2d::CCEaseBounceIn : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceIn* create(cocos2d::CCActionInterval*);

    // CCEaseBounceIn(cocos2d::CCEaseBounceIn const&);
    // CCEaseBounceIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5164c0, m1 0x46cdcc;
    virtual void update(float) = imac 0x5165c0, m1 0x46ceb4;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5166a0, m1 0x46cfc4;
}

[[link(win, android)]]
class cocos2d::CCEaseBounceInOut : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceInOut* create(cocos2d::CCActionInterval* pAction) = ios inline;

    // CCEaseBounceInOut(cocos2d::CCEaseBounceInOut const&);
    // CCEaseBounceInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x5169e0, m1 0x46d344, ios inline;
    virtual void update(float time) = imac 0x516ae0, m1 0x46d42c, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x516c90, m1 0x46d654, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseBounceOut : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceOut* create(cocos2d::CCActionInterval*);

    // CCEaseBounceOut(cocos2d::CCEaseBounceOut const&);
    // CCEaseBounceOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x516760, m1 0x46d08c;
    virtual void update(float) = imac 0x516860, m1 0x46d174;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x516920, m1 0x46d27c;
}

[[link(win, android)]]
class cocos2d::CCEaseElastic : cocos2d::CCActionEase {
    static cocos2d::CCEaseElastic* create(cocos2d::CCActionInterval* pAction) = m1 0x46c050, ios inline;
    static cocos2d::CCEaseElastic* create(cocos2d::CCActionInterval* pAction, float fPeriod) = ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x5157c0, m1 0x46c174, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5158d0, m1 0x46c26c, ios inline;

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
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5159c0, m1 0x46c340;
    virtual void update(float) = imac 0x515ad0, m1 0x46c438;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x515b70, m1 0x46c4c8;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticInOut : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticInOut* create(cocos2d::CCActionInterval* pAction) = m1 0x46c784, imac 0x515e60, ios inline;
    static cocos2d::CCEaseElasticInOut* create(cocos2d::CCActionInterval* pAction, float fPeriod) = m1 0x46c794, imac 0x515e80, ios inline;

    // CCEaseElasticInOut(cocos2d::CCEaseElasticInOut const&);
    // CCEaseElasticInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x515f40, m1 0x46c850, ios inline;
    virtual void update(float time) = imac 0x516050, m1 0x46c948, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x516170, m1 0x46ca5c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticOut : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*) = imac 0x515c60, m1 0x46c5b4;
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*, float) = m1 0x46c4f8;

    // CCEaseElasticOut(cocos2d::CCEaseElasticOut const&);
    // CCEaseElasticOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x515c80, m1 0x46c5c4;
    virtual void update(float) = imac 0x515d90, m1 0x46c6bc;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x515e30, m1 0x46c754;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialIn* create(cocos2d::CCActionInterval*);

    // CCEaseExponentialIn(cocos2d::CCEaseExponentialIn const&);
    // CCEaseExponentialIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x514af0, m1 0x46b4c8;
    virtual void update(float) = imac 0x514bf0, m1 0x46b5b0;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x514c40, m1 0x46b624;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialInOut* create(cocos2d::CCActionInterval* pAction) = ios inline;

    // CCEaseExponentialInOut(cocos2d::CCEaseExponentialInOut const&);
    // CCEaseExponentialInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x514f10, m1 0x46b900, ios inline;
    virtual void update(float time) = imac 0x515010, m1 0x46b9e8, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x515080, m1 0x46ba54, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialOut* create(cocos2d::CCActionInterval*);

    // CCEaseExponentialOut(cocos2d::CCEaseExponentialOut const&);
    // CCEaseExponentialOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x514d00, m1 0x46b6ec;
    virtual void update(float) = imac 0x514e00, m1 0x46b7d4;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x514e50, m1 0x46b838;
}

[[link(win, android)]]
class cocos2d::CCEaseIn : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseIn* create(cocos2d::CCActionInterval*, float) = m1 0x46ad90, imac 0x514380;

    // CCEaseIn(cocos2d::CCEaseIn const&);
    // CCEaseIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x514440, m1 0x46ae4c;
    virtual void update(float) = imac 0x514550, m1 0x46af44;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x514580, m1 0x46af74;
}

[[link(win, android)]]
class cocos2d::CCEaseInOut : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseInOut* create(cocos2d::CCActionInterval*, float) = m1 0x46b1d0, imac 0x5147e0;

    // CCEaseInOut(cocos2d::CCEaseInOut const&);
    // CCEaseInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5148a0, m1 0x46b28c;
    virtual void update(float) = imac 0x5149b0, m1 0x46b384;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x514a20, m1 0x46b3f0;
}

[[link(win, android)]]
class cocos2d::CCEaseOut : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseOut* create(cocos2d::CCActionInterval*, float);

    // CCEaseOut(cocos2d::CCEaseOut const&);
    // CCEaseOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x514670, m1 0x46b068;
    virtual void update(float) = imac 0x514780, m1 0x46b160;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5147b0, m1 0x46b198;
}

[[link(win, android)]]
class cocos2d::CCEaseRateAction : cocos2d::CCActionEase {
    // CCEaseRateAction(cocos2d::CCEaseRateAction const&);
    // CCEaseRateAction();
    [[since("4.2.1")]]
    virtual ~CCEaseRateAction() = m1 0x46aca0, ios inline;

    static cocos2d::CCEaseRateAction* create(cocos2d::CCActionInterval* pAction, float fRate) = ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x514180, m1 0x46aba8, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x514350, m1 0x46ad58, ios inline;

    bool initWithAction(cocos2d::CCActionInterval* pAction, float fRate) = ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseSineIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineIn* create(cocos2d::CCActionInterval* pAction) = ios inline;

    // CCEaseSineIn(cocos2d::CCEaseSineIn const&);
    // CCEaseSineIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x515140, m1 0x46bb1c, ios inline;
    virtual void update(float time) = imac 0x515240, m1 0x46bc04, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x515280, m1 0x46bc48, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseSineInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineInOut* create(cocos2d::CCActionInterval* pAction) = ios inline;

    // CCEaseSineInOut(cocos2d::CCEaseSineInOut const&);
    // CCEaseSineInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x515530, m1 0x46befc, ios inline;
    virtual void update(float time) = imac 0x515630, m1 0x46bfe4, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x515670, m1 0x46c030, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseSineOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineOut* create(cocos2d::CCActionInterval* pAction) = ios inline;

    // CCEaseSineOut(cocos2d::CCEaseSineOut const&);
    // CCEaseSineOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x515340, m1 0x46bd10, ios inline;
    virtual void update(float time) = imac 0x515440, m1 0x46bdf8, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x515470, m1 0x46be34, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEGLView {
    CCEGLView() = m1 0x45ad60;
    virtual ~CCEGLView() = m1 0x45adb0, ios inline;

    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithFullScreen(gd::string const&, bool);
    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithFullScreen(gd::string const&, bool, GLFWvidmode const&, GLFWmonitor*);
    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithRect(gd::string const&, cocos2d::CCRect, float);
    static cocos2d::CCEGLView* sharedOpenGLView() = m1 0x45acf0;

    virtual void end() = imac 0x503110, m1 0x45ae34;
    virtual void swapBuffers() = imac 0x503180, m1 0x45ae8c;
    virtual bool isOpenGLReady() = imac 0x5030e0, m1 0x45ae08;
    virtual void setIMEKeyboardState(bool) = imac 0x503200, m1 0x45aec4;
    [[missing(android, mac, ios)]]
    virtual void setFrameSize(float, float);
    [[missing(win, android)]]
    virtual bool setContentScaleFactor(float) = imac 0x503100, m1 0x45ae2c;
    [[missing(android, ios)]]
    virtual void setViewPortInPoints(float, float, float, float) = m1 0x45aefc;
    [[missing(android, ios)]]
    virtual void setScissorInPoints(float, float, float, float) = m1 0x45afa4;
    [[missing(win, android, ios)]]
    virtual void setMultiTouchMask(bool) = imac 0x503430;

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
    void onGLFWKeyCallback(GLFWwindow* window, int key, int scancode, int action, int mods);
    [[missing(android, mac, ios)]]
    void onGLFWMouseCallBack(GLFWwindow* window, int button, int action, int mods);
    [[missing(android, mac, ios)]]
    void onGLFWMouseMoveCallBack(GLFWwindow* window, double x, double y);
    [[missing(android, mac, ios)]]
    void onGLFWMouseScrollCallback(GLFWwindow* window, double xOffset, double yOffset);
    [[missing(android, mac, ios)]]
    void onGLFWWindowIconifyFunCallback(GLFWwindow* window, int iconified);
    [[missing(android, mac, ios)]]
    void onGLFWWindowPosCallback(GLFWwindow* window, int x, int y);
    [[missing(android, mac, ios)]]
    void onGLFWWindowSizeFunCallback(GLFWwindow* window, int width, int height);
    [[missing(android, mac, ios)]]
    void pollEvents();
    [[missing(android, mac, ios)]]
    void setupWindow(cocos2d::CCRect);
    [[missing(android, mac, ios)]]
    void toggleFullScreen(bool, bool, bool);
}

[[link(win, android)]]
class cocos2d::CCEGLViewProtocol {
    CCEGLViewProtocol() = imac 0x50f560, m1 0x46649c;
    virtual ~CCEGLViewProtocol() = imac 0x50f5c0, m1 0x4664f0;

    virtual cocos2d::CCSize const& getFrameSize() const = imac 0x50f740, m1 0x46661c;
    virtual void setFrameSize(float, float) = imac 0x50f750, m1 0x466624;
    virtual cocos2d::CCSize getVisibleSize() const = imac 0x50f790, m1 0x466668;
    virtual cocos2d::CCPoint getVisibleOrigin() const = imac 0x50f7e0, m1 0x466698;
    virtual void setDesignResolutionSize(float, float, ResolutionPolicy) = imac 0x50f5f0, m1 0x4664fc;
    virtual cocos2d::CCSize const& getDesignResolutionSize() const = imac 0x50f730, m1 0x466614;
    virtual void setTouchDelegate(cocos2d::EGLTouchDelegate*) = imac 0x50f850, m1 0x4666e4;
    virtual void setViewPortInPoints(float, float, float, float) = imac 0x50f860, m1 0x4666ec;
    virtual void setScissorInPoints(float, float, float, float) = imac 0x50f8a0, m1 0x466718;
    virtual bool isScissorEnabled() = imac 0x50f8e0, m1 0x466744;
    virtual cocos2d::CCRect getScissorRect() = imac 0x50f900, m1 0x466764;
    virtual void setViewName(char const*) = imac 0x50f9a0, m1 0x4667f4;
    virtual void pollInputEvents() = imac 0x510130, m1 0x466f98;
    virtual void handleTouchesBegin(int, int*, float*, float*, double) = imac 0x50f9d0, m1 0x466818;
    virtual void handleTouchesMove(int, int*, float*, float*, double) = imac 0x50fcb0, m1 0x466ae8;
    virtual void handleTouchesEnd(int, int*, float*, float*, double) = imac 0x50ffe0, m1 0x466e28;
    virtual void handleTouchesCancel(int, int*, float*, float*, double) = imac 0x510070, m1 0x466ed4;

    float getScaleX() const;
    float getScaleY() const;
    void getSetOfTouchesEndOrCancel(cocos2d::CCSet&, int, int*, float*, float*);
    char const* getViewName();
    cocos2d::CCRect const& getViewPortRect() const = imac 0x510100, m1 0x466f80, ios inline;
    void updateDesignResolutionSize();
}

[[link(win, android)]]
class cocos2d::CCFadeIn : cocos2d::CCActionInterval {
    static cocos2d::CCFadeIn* create(float);

    // CCFadeIn(cocos2d::CCFadeIn const&);
    // CCFadeIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3ba860, m1 0x33cb3c;
    virtual void update(float) = imac 0x3ba930, m1 0x33cc0c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3ba990, m1 0x33cc70;
}

[[link(win, android)]]
class cocos2d::CCFadeOut : cocos2d::CCActionInterval {
    static cocos2d::CCFadeOut* create(float);

    // CCFadeOut(cocos2d::CCFadeOut const&);
    // CCFadeOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3baae0, m1 0x33cd88;
    virtual void update(float) = imac 0x3babb0, m1 0x33ce58;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3bac20, m1 0x33cec4;
}

[[link(win, android)]]
class cocos2d::CCFadeOutBLTiles : cocos2d::CCFadeOutTRTiles {
    static cocos2d::CCFadeOutBLTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = imac 0x7b6270, m1 0x6bc254;
}

[[link(win, android)]]
class cocos2d::CCFadeOutDownTiles : cocos2d::CCFadeOutUpTiles {
    static cocos2d::CCFadeOutDownTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = imac 0x7b6600, m1 0x6bc5e0;
}

[[link(win, android)]]
class cocos2d::CCFadeOutTRTiles : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCFadeOutTRTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = imac 0x7b5e40, m1 0x6bbe48;
    virtual void transformTile(cocos2d::CCPoint const&, float) = imac 0x7b5f30, m1 0x6bbf3c;
    virtual void update(float) = imac 0x7b6010, m1 0x6bbffc;

    void turnOffTile(cocos2d::CCPoint const&) = m1 0x6bbf10;
    void turnOnTile(cocos2d::CCPoint const&) = m1 0x6bbed0;
}

[[link(win, android)]]
class cocos2d::CCFadeOutUpTiles : cocos2d::CCFadeOutTRTiles {
    static cocos2d::CCFadeOutUpTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = imac 0x7b63e0, m1 0x6bc3c8;
    virtual void transformTile(cocos2d::CCPoint const&, float) = imac 0x7b6460, m1 0x6bc448;
}

[[link(win, android)]]
class cocos2d::CCFadeTo : cocos2d::CCActionInterval {
    static cocos2d::CCFadeTo* create(float, unsigned char) = imac 0x3bacd0, m1 0x33cf50;

    // CCFadeTo(cocos2d::CCFadeTo const&);
    // CCFadeTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3badc0, m1 0x33d00c;
    virtual void update(float) = imac 0x3baf20, m1 0x33d15c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3baec0, m1 0x33d0f8;

    bool initWithDuration(float, unsigned char) = imac 0x3bad80, m1 0x33cfe4, ios inline;
}

[[link(win, android)]]
class cocos2d::CCFileUtils : cocos2d::TypeInfo {
    CCFileUtils();
    // CCFileUtils(cocos2d::CCFileUtils const&);
    virtual ~CCFileUtils();

    static void purgeFileUtils();
    static cocos2d::CCFileUtils* sharedFileUtils() = imac 0x60b330, m1 0x531600;

    virtual void addSearchPath(char const*) = imac 0x43ccc0, m1 0x3ae780;
    virtual void addSearchResolutionsOrder(char const*) = imac 0x43c720, m1 0x3ae260;
    virtual gd::string addSuffix(gd::string, gd::string) = imac 0x43ac40, m1 0x3ac804;
    virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(gd::string const&) = imac 0x43a570, m1 0x3ac104;
    virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(gd::string const&) = imac 0x43a550, m1 0x3ac0f4;
    virtual gd::string fullPathForFilename(char const*, bool) = imac 0x43b2d0, m1 0x3acde0;
    virtual char const* fullPathFromRelativeFile(char const*, char const*) = imac 0x43c280, m1 0x3addb4;
    virtual unsigned char* getFileData(char const*, char const*, unsigned long*) = imac 0x43a820, m1 0x3ac3dc;
    virtual unsigned char* getFileDataFromZip(char const*, char const*, unsigned long*) = imac 0x43a960, m1 0x3ac548;
    virtual gd::string getFullPathForDirectoryAndFilename(gd::string const&, gd::string const&) = imac 0x43d5a0, m1 0x3af0d8;
    virtual gd::string getNewFilename(char const*) = imac 0x43aa90, m1 0x3ac668;
    virtual gd::string getPathForFilename(gd::string const&, gd::string const&, gd::string const&) = imac 0x43ae80, m1 0x3aca08;
    virtual gd::vector<gd::string> const& getSearchPaths() = imac 0x43c810, m1 0x3ae360;
    virtual gd::vector<gd::string> const& getSearchResolutionsOrder() = imac 0x43c800, m1 0x3ae358;
    virtual gd::string getWritablePath2() = imac 0x43d7d0, m1 0x3af308;
    virtual bool init() = imac 0x43a720, m1 0x3ac2cc;
    virtual bool isAbsolutePath(gd::string const&) = imac 0x43d710, m1 0x3af240;
    virtual bool isPopupNotify() = imac 0x43d740, m1 0x3af26c;
    virtual void loadFilenameLookupDictionaryFromFile(char const*) = imac 0x43d430, m1 0x3aeef4;
    virtual void purgeCachedEntries() = imac 0x43a7f0, m1 0x3ac3ac;
    virtual void removeFullPath(char const*) = imac 0x43c120, m1 0x3adb44;
    virtual void removeSearchPath(char const*) = imac 0x43cfd0, m1 0x3aea98;
    virtual void setFilenameLookupDictionary(cocos2d::CCDictionary*) = imac 0x43d3c0, m1 0x3aee8c;
    virtual void setPopupNotify(bool) = imac 0x43d730, m1 0x3af260;
    virtual void setSearchPaths(gd::vector<gd::string> const&) = imac 0x43c820, m1 0x3ae368;
    virtual void setSearchResolutionsOrder(gd::vector<gd::string> const&) = imac 0x43c4e0, m1 0x3ae020;
    virtual bool shouldUseHD() = imac 0x43ac10, m1 0x3ac7e0;
    virtual bool writeToFile(cocos2d::CCDictionary*, gd::string const&) = imac 0x43a560, m1 0x3ac0fc;

    void removeAllPaths();
}

[[link(win, android)]]
class cocos2d::CCFiniteTimeAction : cocos2d::CCAction {
    // CCFiniteTimeAction(cocos2d::CCFiniteTimeAction const&);
    // CCFiniteTimeAction();

    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x5f3ea0, m1 0x51d370, ios inline;

    float m_fDuration;
}

[[link(win, android)]]
class cocos2d::CCFlipX : cocos2d::CCActionInstant {
    static cocos2d::CCFlipX* create(bool);

    virtual void update(float) = imac 0x7ac560, m1 0x6b2d74;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x7ac580, m1 0x6b2d84;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7ac5e0, m1 0x6b2de8;

    bool initWithFlipX(bool);
}

[[link(win, android)]]
class cocos2d::CCFlipX3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCFlipX3D* create(float) = m1 0x21f1b8;

    virtual bool initWithDuration(float) = imac 0x27d1c0, m1 0x21f2b0;
    virtual bool initWithSize(cocos2d::CCSize const&, float) = imac 0x27d210, m1 0x21f300;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27d240, m1 0x21f320;
    virtual void update(float) = imac 0x27d360, m1 0x21f430;
}

[[link(win, android)]]
class cocos2d::CCFlipY : cocos2d::CCActionInstant {
    static cocos2d::CCFlipY* create(bool);

    virtual void update(float) = imac 0x7ac710, m1 0x6b2f28;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x7ac730, m1 0x6b2f38;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7ac790, m1 0x6b2f9c;

    bool initWithFlipY(bool);
}

[[link(win, android)]]
class cocos2d::CCFlipY3D : cocos2d::CCFlipX3D {
    static cocos2d::CCFlipY3D* create(float) = m1 0x21f694;

    virtual void update(float) = imac 0x27d830, m1 0x21f89c;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27d710, m1 0x21f78c;
}

[[link(win, android)]]
class cocos2d::CCFollow : cocos2d::CCAction {

    virtual ~CCFollow() = m1 0x51d80c;

    static cocos2d::CCFollow* create(cocos2d::CCNode*, cocos2d::CCRect const&) = imac 0x5f4480, m1 0x51d8e8;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5f46a0, m1 0x51dafc;
    virtual void step(float) = imac 0x5f4850, m1 0x51dca8;
    virtual bool isDone() = imac 0x5f4930, m1 0x51dd80;
    virtual void stop() = imac 0x5f4950, m1 0x51dda4;

    bool initWithTarget(cocos2d::CCNode*, cocos2d::CCRect const&) = imac 0x5f4550, m1 0x51d9ac;
}

[[link(win, android)]]
class cocos2d::CCGLProgram : cocos2d::CCObject {
    CCGLProgram() = m1 0x39cc94;
    // CCGLProgram(cocos2d::CCGLProgram const&);
    virtual ~CCGLProgram() = m1 0x39ccd4;

    void addAttribute(char const*, unsigned int) = imac 0x42a630, m1 0x39d104;
    bool compileShader(unsigned int*, unsigned int, char const*) = imac 0x42a470, m1 0x39cf08;
    char const* description() = imac 0x42a600, m1 0x39d0d0, ios inline;
    char const* fragmentShaderLog() = ios inline;
    // unsigned int const getProgram();
    int getUniformLocationForName(char const*) = m1 0x39dc3c, ios inline;
    bool initWithVertexShaderByteArray(char const*, char const*) = imac 0x42a3d0, m1 0x39ce64;
    bool initWithVertexShaderFilename(char const*, char const*) = m1 0x39cfd4, ios inline;
    bool link() = m1 0x39d2a0;
    char const* logForOpenGLObject(unsigned int, GLInfoFunction, GLLogFunction) = imac 0x42a7e0, m1 0x39d2e4, ios inline;
    char const* programLog() = ios inline;
    void reset();
    void setUniformLocationWith1f(int, float) = imac 0x42b3c0, m1 0x39df74;
    void setUniformLocationWith1i(int, int) = imac 0x42a760, m1 0x39d24c;
    void setUniformLocationWith2f(int, float, float) = imac 0x42b400, m1 0x39dfd4;
    void setUniformLocationWith2fv(int, float*, unsigned int) = m1 0x39e210, ios inline;
    void setUniformLocationWith2i(int, int, int) = imac 0x42b0f0, m1 0x39dc44, ios inline;
    void setUniformLocationWith2iv(int, int*, unsigned int) = m1 0x39de74, ios inline;
    void setUniformLocationWith3f(int, float, float, float) = imac 0x42b490, m1 0x39e080;
    void setUniformLocationWith3fv(int, float*, unsigned int) = m1 0x39e264, ios inline;
    void setUniformLocationWith3i(int, int, int, int) = imac 0x42b180, m1 0x39dcf0, ios inline;
    void setUniformLocationWith3iv(int, int*, unsigned int) = m1 0x39dec8, ios inline;
    void setUniformLocationWith4f(int, float, float, float, float) = imac 0x42b530, m1 0x39e144;
    void setUniformLocationWith4fv(int, float*, unsigned int) = m1 0x39e318;
    void setUniformLocationWith4i(int, int, int, int, int) = imac 0x23b440, m1 0x39dda8, ios inline;
    void setUniformLocationWith4iv(int, int*, unsigned int) = m1 0x39df20, ios inline;
    void setUniformLocationWithMatrix3fv(int, float*, unsigned int) = imac 0x42b670, m1 0x39e2bc;
    void setUniformLocationWithMatrix4fv(int, float*, unsigned int) = imac 0x42b710, m1 0x39e36c;
    void setUniformsForBuiltins() = imac 0x42b760, m1 0x39e3c4;
    bool updateUniformLocation(int, void*, unsigned int) = imac 0x42aca0, m1 0x39d7dc;
    void updateUniforms() = imac 0x42a650, m1 0x39d118;
    void use() = m1 0x39d244;
    char const* vertexShaderLog() = ios inline;
}

[[link(win, android)]]
class cocos2d::CCGrabber : cocos2d::CCObject {
    [[since("4.10.1")]]
    CCGrabber() = m1 0x5227a0, ios inline;
    [[since("4.10.1")]]
    virtual ~CCGrabber() = m1 0x5228f0, ios inline;

    void afterRender(cocos2d::CCTexture2D*) = imac 0x5f9d60, m1 0x5228c0, ios inline;
    void beforeRender(cocos2d::CCTexture2D*) = imac 0x5f9d00, m1 0x522868, ios inline;
    void grab(cocos2d::CCTexture2D*) = imac 0x5f9c90, m1 0x5227f8, ios inline;
}

[[link(win, android)]]
class cocos2d::CCGrid3D : cocos2d::CCGridBase {
    CCGrid3D();
    virtual ~CCGrid3D() = m1 0x43edd8;

    static cocos2d::CCGrid3D* create(cocos2d::CCSize const&) = m1 0x43eca4;
    static cocos2d::CCGrid3D* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = m1 0x43eb80;

    virtual void blit() = imac 0x4e38a0, m1 0x43ee84;
    virtual void reuse() = imac 0x4e4040, m1 0x43f3d8;
    virtual void calculateVertexPoints() = imac 0x4e3940, m1 0x43ef28;

    cocos2d::ccVertex3F originalVertex(cocos2d::CCPoint const&) = imac 0x4e3fb0, m1 0x43f360;
    void setVertex(cocos2d::CCPoint const&, cocos2d::ccVertex3F const&) = imac 0x4e3ff0, m1 0x43f394;
    cocos2d::ccVertex3F vertex(cocos2d::CCPoint const&) = imac 0x4e3f70, m1 0x43f32c;
}

[[link(win, android)]]
class cocos2d::CCGrid3DAction : cocos2d::CCGridAction {
    virtual cocos2d::CCGridBase* getGrid() = imac 0x209e40, m1 0x1b5c94;

    cocos2d::ccVertex3F originalVertex(cocos2d::CCPoint const&) = m1 0x1b5ccc;
    void setVertex(cocos2d::CCPoint const&, cocos2d::ccVertex3F const&) = m1 0x1b5cfc;
    cocos2d::ccVertex3F vertex(cocos2d::CCPoint const&) = m1 0x1b5c9c;
}

[[link(win, android)]]
class cocos2d::CCGridAction : cocos2d::CCActionInterval {
    static cocos2d::CCGridAction* create(float, cocos2d::CCSize const&) = m1 0x1b5980;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x209d30, m1 0x1b5b94;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x209c50, m1 0x1b5aa4;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x209d20, m1 0x1b5b90;
    virtual bool initWithDuration(float, cocos2d::CCSize const&) = imac 0x209c20, m1 0x1b5a60;
    virtual cocos2d::CCGridBase* getGrid() = imac 0x209d10, m1 0x1b5b88;
}

[[link(win, android)]]
class cocos2d::CCGridBase : cocos2d::CCObject {

    virtual ~CCGridBase();

    static cocos2d::CCGridBase* create(cocos2d::CCSize const&) = imac 0x4e2f50, m1 0x43e58c;
    static cocos2d::CCGridBase* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = imac 0x4e3100, m1 0x43e744;

    virtual void blit() = imac 0x4e3550, m1 0x43eb74;
    virtual void reuse() = imac 0x4e3560, m1 0x43eb78;
    virtual void calculateVertexPoints() = imac 0x4e3570, m1 0x43eb7c;

    void afterDraw(cocos2d::CCNode*) = imac 0x4e3490, m1 0x43eaa4;
    void beforeDraw() = imac 0x4e3460, m1 0x43ea70;
    bool initWithSize(cocos2d::CCSize const&) = imac 0x4e3010, m1 0x43e650;
    bool initWithSize(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = imac 0x4e31d0, m1 0x43e800;
    void set2DProjection() = imac 0x4e33d0, m1 0x43e9f4;
    void setActive(bool);
    void setTextureFlipped(bool) = imac 0x4e33b0, m1 0x43e9d4;
}

[[link(win, android)]]
class cocos2d::CCHide : cocos2d::CCActionInstant {
    static cocos2d::CCHide* create();

    // CCHide(cocos2d::CCHide const&);
    // CCHide();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7ac160, m1 0x6b2940;
    virtual void update(float) = imac 0x7ac0f0, m1 0x6b28d4;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x7ac110, m1 0x6b28e8;
}

[[link(win, android)]]
class cocos2d::CCImage : cocos2d::CCObject {
    // int getBitsPerComponent() const;
    // unsigned char* getData();
    // int getDataLen();
    // unsigned short getHeight() const;
    // unsigned short getWidth() const;
    CCImage() = m1 0x3eeaa0, imac 0x4891c0;
    virtual ~CCImage() = m1 0x3eeacc, imac 0x489200;

    bool _initWithJpgData(void*, int);
    bool _initWithPngData(void*, int);
    bool _initWithRawData(void*, int, int, int, int, bool);
    bool _initWithTiffData(void*, int);
    // bool _initWithWebpData(void*, int);
    bool _saveImageToJPG(char const*);
    bool _saveImageToPNG(char const*, bool);
    bool initWithImageData(void*, int, cocos2d::CCImage::EImageFormat, int, int, int, int) = m1 0x3eef38, imac 0x4894d0;
    bool initWithImageFile(char const*, cocos2d::CCImage::EImageFormat) = imac 0x4892c0, m1 0x3eeb8c;
    bool initWithImageFileThreadSafe(char const*, cocos2d::CCImage::EImageFormat) = imac 0x11ece0;
    bool initWithString(char const*, int, int, cocos2d::CCImage::ETextAlign, char const*, int);
    // bool hasAlpha();
    // bool isPremultipliedAlpha();
    bool saveToFile(char const*, bool);
}

[[link(win, android)]]
class cocos2d::CCIMEDelegate {
    CCIMEDelegate() = imac 0x4bb6c0, m1 0x41b960;
    virtual ~CCIMEDelegate() = imac 0x4bb8c0, m1 0x41bb70;

    virtual bool attachWithIME() = imac 0x4bba40, m1 0x41bcd8;
    virtual bool detachWithIME() = imac 0x4bbc30, m1 0x41bf10;
}

[[link(win, android)]]
class cocos2d::CCIMEDispatcher {
    CCIMEDispatcher();
    ~CCIMEDispatcher();

    static cocos2d::CCIMEDispatcher* sharedDispatcher() = imac 0x4bb7b0, m1 0x41ba5c;

    void addDelegate(cocos2d::CCIMEDelegate*);
    bool attachDelegateWithIME(cocos2d::CCIMEDelegate*);
    bool detachDelegateWithIME(cocos2d::CCIMEDelegate*);
    void dispatchDeleteBackward() = imac 0x4bbf30, m1 0x41c214;
    void dispatchDeleteForward();
    void dispatchInsertText(char const*, int, cocos2d::enumKeyCodes) = imac 0x4bbf00, m1 0x41c1e8;
    void dispatchKeyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&);
    void dispatchKeyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&);
    void dispatchKeyboardWillHide();
    void dispatchKeyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
    void dispatchKeyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
    char const* getContentText();
    bool hasDelegate() = imac 0x4bbee0, m1 0x41c1d4;
    void removeDelegate(cocos2d::CCIMEDelegate*);
}

[[link(win, android)]]
class cocos2d::CCJumpBy : cocos2d::CCActionInterval {
    static cocos2d::CCJumpBy* create(float, cocos2d::CCPoint const&, float, unsigned int) = ios inline;

    // CCJumpBy(cocos2d::CCJumpBy const&);
    // CCJumpBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x3b8cb0, m1 0x33b350, ios inline;
    virtual void update(float t) = imac 0x3b8e70, m1 0x33b4e0, ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3b8e20, m1 0x33b48c, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b8fa0, m1 0x33b5dc, ios inline;

    bool initWithDuration(float, cocos2d::CCPoint const&, float, unsigned int) = imac 0x3b8c40, m1 0x33b2f4, ios inline;
}

[[link(win, android)]]
class cocos2d::CCJumpTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCJumpTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7b7220, m1 0x6bd21c;
    virtual void update(float) = imac 0x7b7360, m1 0x6bd348;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);
}

[[link(win, android)]]
class cocos2d::CCJumpTo : cocos2d::CCActionInterval {
    static cocos2d::CCJumpTo* create(float, cocos2d::CCPoint const&, float, int) = ios inline;

    // CCJumpTo(cocos2d::CCJumpTo const&);
    // CCJumpTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x3b9120, m1 0x33b72c, ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3b9290, m1 0x33b874, ios inline;
}

[[link(win, android)]]
class cocos2d::CCKeyboardDispatcher : cocos2d::CCObject {
    // bool getAltKeyPressed() const;
    // bool getBlockRepeat() const;
    // bool getCommandKeyPressed() const;
    // bool getControlKeyPressed() const;
    // bool getShiftKeyPressed() const;
    // void setBlockRepeat(bool);
    // CCKeyboardDispatcher(cocos2d::CCKeyboardDispatcher const&);
    CCKeyboardDispatcher() = m1 0x1afd3c;
    virtual ~CCKeyboardDispatcher();

    static cocos2d::enumKeyCodes convertKeyCode(cocos2d::enumKeyCodes) = m1 0x1b03a4;

    void addDelegate(cocos2d::CCKeyboardDelegate*); // ios 0x239960
    bool dispatchKeyboardMSG(cocos2d::enumKeyCodes, bool, bool, double) = imac 0x203180, m1 0x1b00a8;
    void forceAddDelegate(cocos2d::CCKeyboardDelegate*); // ios 0x2399a8
    void forceRemoveDelegate(cocos2d::CCKeyboardDelegate*); // ios 0x2398cc
    char const* keyToString(cocos2d::enumKeyCodes) = imac 0x203490, m1 0x1b03d8;
    void removeDelegate(cocos2d::CCKeyboardDelegate*); // ios 0x239884
    void updateModifierKeys(bool, bool, bool, bool) = imac 0x203460, m1 0x1b03c0;

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

[[link(win, android)]]
class cocos2d::CCKeyboardHandler : cocos2d::CCObject {

    virtual ~CCKeyboardHandler();

    static cocos2d::CCKeyboardHandler* handlerWithDelegate(cocos2d::CCKeyboardDelegate*) = m1 0x3af840;

    virtual bool initWithDelegate(cocos2d::CCKeyboardDelegate*) = imac 0x43dce0, m1 0x3af7ec;

    cocos2d::CCKeyboardDelegate* getDelegate();
    void setDelegate(cocos2d::CCKeyboardDelegate*) = ios inline;
}

[[link(win, android)]]
class cocos2d::CCKeypadDispatcher : cocos2d::CCObject {
    // CCKeypadDispatcher(cocos2d::CCKeypadDispatcher const&);
    CCKeypadDispatcher();
    virtual ~CCKeypadDispatcher();

    void addDelegate(cocos2d::CCKeypadDelegate*);
    bool dispatchKeypadMSG(cocos2d::ccKeypadMSGType);
    void forceAddDelegate(cocos2d::CCKeypadDelegate*) = m1 0x521d9c;
    void forceRemoveDelegate(cocos2d::CCKeypadDelegate*);
    void removeDelegate(cocos2d::CCKeypadDelegate*);

    cocos2d::CCArray* m_pDelegates;
    bool m_bLocked;
    bool m_bToAdd;
    bool m_bToRemove;
    cocos2d::ccCArray* m_pHandlersToAdd;
    cocos2d::ccCArray* m_pHandlersToRemove;
}

[[link(win, android)]]
class cocos2d::CCKeypadHandler : cocos2d::CCObject {

    virtual ~CCKeypadHandler();

    static cocos2d::CCKeypadHandler* handlerWithDelegate(cocos2d::CCKeypadDelegate*) = m1 0x342f0c;

    virtual bool initWithDelegate(cocos2d::CCKeypadDelegate*) = imac 0x3c15b0, m1 0x342eb8;

    cocos2d::CCKeypadDelegate* getDelegate();
    void setDelegate(cocos2d::CCKeypadDelegate*) = ios inline;
}

[[link(win, android)]]
class cocos2d::CCLabelAtlas : cocos2d::CCAtlasNode, cocos2d::CCLabelProtocol {
    static cocos2d::CCLabelAtlas* create(char const*, char const*) = imac 0x798da0, m1 0x6a09ec;
    static cocos2d::CCLabelAtlas* create(char const*, char const*, unsigned int, unsigned int, unsigned int) = imac 0x798ba0, m1 0x6a07bc;

    virtual void updateAtlasValues() = imac 0x799360, m1 0x6a0f70;
    virtual void setString(char const*) = imac 0x799630, m1 0x6a11c0;
    virtual char const* getString() = imac 0x799720, m1 0x6a1298;

    bool initWithString(char const*, char const*) = imac 0x176c30, m1 0x6a0a80;
    bool initWithString(char const*, char const*, unsigned int, unsigned int, unsigned int) = m1 0x6a08d0;
    bool initWithString(char const*, cocos2d::CCTexture2D*, unsigned int, unsigned int, unsigned int) = imac 0x798d30, m1 0x6a0968;
}

[[link(win, android)]]
class cocos2d::CCLabelBMFont : cocos2d::CCSpriteBatchNode, cocos2d::CCLabelProtocol, cocos2d::CCRGBAProtocol {
    CCLabelBMFont() = imac 0x5d8500, m1 0x5042f0;
    virtual ~CCLabelBMFont() = imac 0x5d8630, m1 0x5043cc;

    static cocos2d::CCLabelBMFont* create() = m1 0x503b9c, ios inline;
    static cocos2d::CCLabelBMFont* create(char const*, char const*) = imac 0x5d8090, m1 0x503e64;
    static cocos2d::CCLabelBMFont* create(char const* str, char const* fntFile, float width) = imac 0x5d7fe0, m1 0x503da4, ios inline;
    static cocos2d::CCLabelBMFont* create(char const* str, char const* fntFile, float width, cocos2d::CCTextAlignment alignment) = imac 0x5d7e90, m1 0x503c20, ios inline;
    static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = imac 0x5d7f40, m1 0x503ce4;
    static cocos2d::CCLabelBMFont* createBatched(char const*, char const*, cocos2d::CCArray*, int) = imac 0x5d8400, m1 0x5041d8;
    static void purgeCachedData() = m1 0x503b64;

    virtual bool init() = imac 0x5d84b0, m1 0x5042a0;
    virtual void setScaleX(float) = imac 0x5dae60, m1 0x506624;
    virtual void setScaleY(float) = imac 0x5dae80, m1 0x506650;
    virtual void setScale(float) = imac 0x5dae40, m1 0x5065f8;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x5d9c30, m1 0x50580c;
    virtual void setString(char const*) = imac 0x5d9160, m1 0x504de0;
    virtual void setString(char const*, bool) = imac 0x5d91b0, m1 0x504e04;
    virtual char const* getString() = imac 0x5d93e0, m1 0x50502c;
    virtual void setCString(char const*) = imac 0x5d9430, m1 0x505064;
    virtual void updateLabel() = imac 0x5d9c70, m1 0x505860;
    virtual void setAlignment(cocos2d::CCTextAlignment) = imac 0x5dade0, m1 0x5065c8;
    virtual void setWidth(float) = imac 0x5dae00, m1 0x5065d8;
    virtual void setLineBreakWithoutSpace(bool) = imac 0x5dae20, m1 0x5065e8;
    virtual void setString(unsigned short*, bool) = imac 0x5d9230, m1 0x504e8c;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x5d9490, m1 0x505090;
    virtual cocos2d::ccColor3B const& getColor() = imac 0x5d9450, m1 0x505070;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = imac 0x5d9470, m1 0x505080;
    virtual unsigned char getDisplayedOpacity() = imac 0x5d9630, m1 0x505234;
    virtual unsigned char getOpacity() = imac 0x5d9610, m1 0x505224;
    virtual void setOpacity(unsigned char) = imac 0x5d9650, m1 0x505244;
    virtual void setOpacityModifyRGB(bool) = imac 0x5d9790, m1 0x5053b0;
    virtual bool isOpacityModifyRGB() = imac 0x5d98f0, m1 0x505510;
    virtual bool isCascadeColorEnabled() = imac 0x5d9bb0, m1 0x5057cc;
    virtual void setCascadeColorEnabled(bool) = imac 0x5d9bd0, m1 0x5057dc;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = imac 0x5d9a10, m1 0x505638;
    virtual bool isCascadeOpacityEnabled() = imac 0x5d9bf0, m1 0x5057ec;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x5d9c10, m1 0x5057fc;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x5d9910, m1 0x505520;

    // void setIsBatched(bool);
    // void setTargetArray(cocos2d::CCArray*);
    void createFontChars() = imac 0x5d8860;
    cocos2d::CCBMFontConfiguration* getConfiguration() const;
    // int getExtraKerning() const;
    char const* getFntFile() = imac 0x5daf80, m1 0x506750, ios inline;
    // bool getIsBatched() const;
    float getLetterPosXLeft(cocos2d::CCSprite*, float, bool) = imac 0x5dac80, m1 0x506480;
    float getLetterPosXRight(cocos2d::CCSprite*, float, bool) = m1 0x506524;
    bool initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = m1 0x503f2c;
    int kerningAmountForFirst(unsigned short, unsigned short) = imac 0x5d8740, m1 0x504498;
    void limitLabelWidth(float, float, float) = imac 0x5dafc0, m1 0x506774;
    // cocos2d::CCArray* getTargetArray() const;
    // void setExtraKerning(int);
    void setFntFile(char const* filename) = imac 0x5daea0, m1 0x50667c, ios inline;

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
    CCLabelTTF();
    virtual ~CCLabelTTF() = m1 0x33ec84;

    static cocos2d::CCLabelTTF* create() = m1 0x33ee24, ios inline;
    static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize) = imac 0x3bd080, m1 0x33ef38, ios inline;
    static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment hAlignment) = imac 0x3bd200, m1 0x33f094, ios inline;
    static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment hAlignment, cocos2d::CCVerticalTextAlignment vAlignment) = imac 0x3bd0a0, m1 0x33ef4c, ios inline;
    static cocos2d::CCLabelTTF* createWithFontDefinition(char const*, cocos2d::ccFontDefinition&) = imac 0x3bd380, m1 0x33f1fc, ios inline;

    virtual bool init() = imac 0x3bd560, m1 0x33f3e8;
    virtual void setString(char const*) = imac 0x3bd690, m1 0x33f4e4;
    virtual char const* getString() = imac 0x3bd8c0, m1 0x33f6e0;

    cocos2d::ccFontDefinition _prepareTextDefinition(bool) = imac 0x3bde00, ios inline;
    void _updateWithTextDefinition(cocos2d::ccFontDefinition&, bool) = imac 0x3bd5c0, m1 0x33f42c, ios inline;
    char const* description() = ios inline;
    void disableShadow(bool) = imac 0x3bdc50, m1 0x33f9b4, ios inline;
    void disableStroke(bool) = imac 0x3bdc70, m1 0x33f9bc, ios inline;
    void enableShadow(cocos2d::CCSize const&, float, float, bool) = imac 0x3bdc40, m1 0x33f9b0, ios inline;
    void enableStroke(cocos2d::ccColor3B const&, float, bool) = imac 0x3bdc60, m1 0x33f9b8, ios inline;
    // cocos2d::CCSize getDimensions();
    char const* getFontName() = imac 0x3bdae0, m1 0x33f86c, ios inline;
    // float getFontSize();
    // cocos2d::CCTextAlignment getHorizontalAlignment();
    cocos2d::ccFontDefinition* getTextDefinition() = imac 0x3bdcb0, ios inline;
    bool initWithString(char const* label, char const* fontName, float fontSize) = imac 0x3bd590, m1 0x33f410;
    bool initWithString(char const* label, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment alignment) = imac 0x3bd5b0, m1 0x33f424, ios inline;
    bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment);
    bool initWithStringAndTextDefinition(char const*, cocos2d::ccFontDefinition&) = ios inline;
    // cocos2d::CCVerticalTextAlignment getVerticalAlignment();
    // void setDimensions(cocos2d::CCSize const&);
    void setFontFillColor(cocos2d::ccColor3B const&, bool) = imac 0x3bdc80, m1 0x1ca014, ios inline;
    void setFontName(char const*) = m1 0x33f884, ios inline;
    // void setFontSize(float);
    // void setHorizontalAlignment(cocos2d::CCTextAlignment);
    void setTextDefinition(cocos2d::ccFontDefinition*) = imac 0x3bdc90, ios inline;
    bool updateTexture() = imac 0x3bd6e0, m1 0x33f52c;
}

[[link(win, android)]]
class cocos2d::CCLayer : cocos2d::CCNode, cocos2d::CCTouchDelegate, cocos2d::CCAccelerometerDelegate, cocos2d::CCKeypadDelegate, cocos2d::CCKeyboardDelegate, cocos2d::CCMouseDelegate {
    // CCLayer(cocos2d::CCLayer const&);
    CCLayer() = imac 0x4afb20, m1 0x411b90;
    virtual ~CCLayer() = imac 0x4afce0, m1 0x411ce8;

    static cocos2d::CCLayer* create() = imac 0x4b00e0, m1 0x411fac;

    virtual bool init() = imac 0x4b0080, m1 0x411f50;
    virtual void onEnter() = imac 0x4b0970, m1 0x4127fc;
    virtual void onEnterTransitionDidFinish() = imac 0x4b0b70, m1 0x412a20;
    virtual void onExit() = imac 0x4b0a70, m1 0x41290c;
    virtual void registerWithTouchDispatcher() = imac 0x4b0210, m1 0x4120bc;
    virtual void registerScriptTouchHandler(int, bool, int, bool) = imac 0x4b0290, m1 0x41213c;
    virtual void unregisterScriptTouchHandler() = imac 0x4b02f0, m1 0x41219c;
    virtual bool isTouchEnabled() = imac 0x4b03a0, m1 0x412258;
    virtual void setTouchEnabled(bool) = imac 0x4b03b0, m1 0x412260;
    virtual void setTouchMode(cocos2d::ccTouchesMode) = imac 0x4b0410, m1 0x4122c0;
    virtual int getTouchMode() = imac 0x4b04c0, m1 0x412380;
    virtual void setTouchPriority(int) = imac 0x4b0460, m1 0x41231c;
    virtual int getTouchPriority() = imac 0x4b04b0, m1 0x412378;
    virtual bool isAccelerometerEnabled() = imac 0x4b04d0, m1 0x412388;
    virtual void setAccelerometerEnabled(bool) = imac 0x4b04e0, m1 0x412390;
    virtual void setAccelerometerInterval(double) = imac 0x4b0520, m1 0x4123cc;
    virtual bool isKeypadEnabled() = imac 0x4b0620, m1 0x4124c8;
    virtual void setKeypadEnabled(bool) = imac 0x4b0630, m1 0x4124d0;
    virtual bool isKeyboardEnabled() = imac 0x4b06a0, m1 0x412548;
    virtual void setKeyboardEnabled(bool) = imac 0x4b06b0, m1 0x412550;
    virtual bool isMouseEnabled() = imac 0x4b0710, m1 0x4125bc;
    virtual void setMouseEnabled(bool) = imac 0x4b0720, m1 0x4125c4;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4b0bb0, m1 0x412a5c;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4b0c30, m1 0x412b0c;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4b0cb0, m1 0x412b9c;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4b0d30, m1 0x412c2c;
    virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b0db0, m1 0x412cbc;
    virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b0e30, m1 0x412d4c;
    virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b0eb0, m1 0x412ddc;
    virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b0f30, m1 0x412e6c;
    virtual void setPreviousPriority(int) = imac 0x6b00, m1 0x600c;
    virtual int getPreviousPriority() = imac 0x6b10, m1 0x6014;
    virtual void didAccelerate(cocos2d::CCAcceleration*) = imac 0x4b0550, m1 0x412404;
    virtual void keyBackClicked() = imac 0x4b07d0, m1 0x41266c;
    virtual void keyMenuClicked() = imac 0x4b0870, m1 0x41270c;
    virtual void keyDown(cocos2d::enumKeyCodes, double) = imac 0x4b08f0, m1 0x41278c;

    // cocos2d::CCScriptHandlerEntry* getScriptAccelerateHandlerEntry();
    // cocos2d::CCScriptHandlerEntry* getScriptKeypadHandlerEntry();
    // cocos2d::CCTouchScriptHandlerEntry* getScriptTouchHandlerEntry();
    int excuteScriptTouchHandler(int, cocos2d::CCSet*);
    int excuteScriptTouchHandler(int, cocos2d::CCTouch*);
    void registerScriptAccelerateHandler(int);
    void registerScriptKeypadHandler(int);
    void unregisterScriptAccelerateHandler();
    void unregisterScriptKeypadHandler() = m1 0x411d68;

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
    CCLayerColor() = imac 0x4b1d70, m1 0x413990;
    virtual ~CCLayerColor() = imac 0x4b2050, m1 0x413b88;

    static cocos2d::CCLayerColor* create() = imac 0x4b23d0, m1 0x413db8, ios inline;
    static cocos2d::CCLayerColor* create(cocos2d::ccColor4B const&) = imac 0x4b2780, m1 0x4140ac;
    static cocos2d::CCLayerColor* create(cocos2d::ccColor4B const&, float, float) = m1 0x413f30, imac 0x4b25b0;

    virtual bool init() = imac 0x4b2950, m1 0x4141f8;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x4b2b40, m1 0x4143c8;
    virtual void draw() = imac 0x4b2c80, m1 0x414528;
    virtual bool initWithColor(cocos2d::ccColor4B const&, float, float) = imac 0x4b29a0, m1 0x414244;
    virtual bool initWithColor(cocos2d::ccColor4B const&) = imac 0x4b2a90, m1 0x414330;
    virtual void updateColor() = imac 0x4b2c30, m1 0x4144ac;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x4b2d50, m1 0x4145f4;
    virtual void setOpacity(unsigned char) = imac 0x4b2ed0, m1 0x4147a8;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x4b23b0, m1 0x413da8;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x4b2390, m1 0x413d98;

    void addToVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);
    void changeHeight(float);
    void changeWidth(float);
    void changeWidthAndHeight(float, float);
    void setVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);

    std::array<cocos2d::ccVertex2F, 4> m_pSquareVertices;
    std::array<cocos2d::ccColor4F, 4> m_pSquareColors;
    cocos2d::ccBlendFunc m_tBlendFunc;
}

[[link(win, android)]]
class cocos2d::CCLayerGradient : cocos2d::CCLayerColor {
    static cocos2d::CCLayerGradient* create() = m1 0x414c40, imac 0x4b3410, ios inline;
    static cocos2d::CCLayerGradient* create(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&) = m1 0x4148e8, imac 0x4b3000;
    static cocos2d::CCLayerGradient* create(cocos2d::ccColor4B const& a1, cocos2d::ccColor4B const& a2, cocos2d::CCPoint const& a3) = m1 0x414a90, imac 0x4b3200, ios inline;

    // CCLayerGradient(cocos2d::CCLayerGradient const&);
    // CCLayerGradient();
    virtual bool init() = imac 0x4b3600, m1 0x414dcc;
    [[since("4.10.1")]]
    virtual void visit() = imac 0x4b3af0, m1 0x41524c;
    virtual void updateColor() = imac 0x4b3740, m1 0x414efc;
    virtual bool initWithColor(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&) = imac 0x4b3630, m1 0x414e04;
    virtual bool initWithColor(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&, cocos2d::CCPoint const&) = imac 0x4b3690, m1 0x414e64;
    virtual cocos2d::ccColor3B const& getStartColor() = imac 0x4b3930, m1 0x41511c;
    virtual void setStartColor(cocos2d::ccColor3B const&) = imac 0x4b3940, m1 0x415124;
    virtual cocos2d::ccColor3B const& getEndColor() = imac 0x4b3990, m1 0x415150;
    virtual void setEndColor(cocos2d::ccColor3B const&) = imac 0x4b3960, m1 0x415130;
    virtual unsigned char getStartOpacity() = imac 0x4b39c0, m1 0x415168;
    virtual void setStartOpacity(unsigned char) = imac 0x4b39a0, m1 0x415158;
    virtual unsigned char getEndOpacity() = imac 0x4b39f0, m1 0x415180;
    virtual void setEndOpacity(unsigned char) = imac 0x4b39d0, m1 0x415170;
    virtual cocos2d::CCPoint const& getVector() = imac 0x4b3a30, m1 0x4151b8;
    virtual void setVector(cocos2d::CCPoint const&) = imac 0x4b3a00, m1 0x415188;
    virtual void setCompressedInterpolation(bool) = imac 0x4b3ad0, m1 0x41523c;
    virtual bool isCompressedInterpolation() = imac 0x4b3ac0, m1 0x415234;

    // bool getShouldPremultiply() const;
    // void setShouldPremultiply(bool);
    void setValues(cocos2d::ccColor3B const&, unsigned char, cocos2d::ccColor3B const&, unsigned char, cocos2d::CCPoint const&);

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
    CCLayerMultiplex();
    virtual ~CCLayerMultiplex();

    static cocos2d::CCLayerMultiplex* create();
    static cocos2d::CCLayerMultiplex* create(cocos2d::CCLayer*);
    static cocos2d::CCLayerMultiplex* createWithArray(cocos2d::CCArray*);
    static cocos2d::CCLayerMultiplex* createWithLayer(cocos2d::CCLayer*);

    void addLayer(cocos2d::CCLayer*);
    bool initWithArray(cocos2d::CCArray*);
    bool initWithLayers(cocos2d::CCLayer*, va_list);
    void switchTo(unsigned int);
    void switchToAndReleaseMe(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA : cocos2d::CCLayer, cocos2d::CCRGBAProtocol {
    // static cocos2d::CCLayerRGBA* create();
    // CCLayerRGBA(cocos2d::CCLayerRGBA const&);
    CCLayerRGBA() = imac 0x4b0fb0, m1 0x412efc;
    virtual ~CCLayerRGBA() = imac 0x4b1250, m1 0x4130cc;

    virtual bool init() = imac 0x4b1590, m1 0x4132dc;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x4b17d0, m1 0x413514;
    virtual cocos2d::ccColor3B const& getColor() = imac 0x4b1790, m1 0x4134f4;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = imac 0x4b17b0, m1 0x413504;
    virtual unsigned char getDisplayedOpacity() = imac 0x4b1630, m1 0x413378;
    virtual unsigned char getOpacity() = imac 0x4b1610, m1 0x413368;
    virtual void setOpacity(unsigned char) = imac 0x4b1650, m1 0x413388;
    virtual bool isCascadeColorEnabled() = imac 0x4b1d30, m1 0x413970;
    virtual void setCascadeColorEnabled(bool) = imac 0x4b1d50, m1 0x413980;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = imac 0x4b1ad0, m1 0x413840;
    virtual bool isCascadeOpacityEnabled() = imac 0x4b1cf0, m1 0x413950;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x4b1d10, m1 0x413960;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x4b1950, m1 0x4136a8;

    uint8_t _displayedOpacity;
    uint8_t _realOpacity;
    cocos2d::ccColor3B _displayedColor;
    cocos2d::ccColor3B _realColor;
    bool _cascadeOpacityEnabled;
    bool _cascadeColorEnabled;
}

[[link(win, android)]]
class cocos2d::CCLens3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCLens3D* create(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float) = imac 0x27db10, m1 0x21fb00;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27dd40, m1 0x21fd2c;
    virtual void update(float) = imac 0x27dee0, m1 0x21feac;

    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float) = imac 0x27dc60;
    void setPosition(cocos2d::CCPoint const&);
}

[[link(android)]]
class cocos2d::CCLightning : cocos2d::CCNode, cocos2d::CCRGBAProtocol {
    CCLightning() = win 0x44490;
    virtual ~CCLightning() = win inline;

    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint) = win inline, imac 0x5dd440, m1 0x5087a8, ios inline;
    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = win 0x445d0, imac 0x5dd600, m1 0x508914;

    virtual void draw() = win 0x44790, imac 0x5dd8f0, m1 0x508bc4;
    virtual bool isOpacityModifyRGB() = win 0x449f0, imac 0x5ddc10, m1 0x508e3c;
    virtual void setOpacityModifyRGB(bool) = win 0x44a00, imac 0x5ddc30, m1 0x508e4c;
    virtual unsigned char getOpacity() = win 0x449a0, imac 0x5ddb40, m1 0x508dc4;
    virtual unsigned char getDisplayedOpacity() = win 0x449b0, imac 0x5ddb60, m1 0x508dd4;
    virtual void setOpacity(unsigned char) = win 0x449c0, imac 0x5ddb90, m1 0x508df0;
    virtual void updateDisplayedOpacity(unsigned char) = win 0x44a10, imac 0x5ddc50, m1 0x508e5c;
    virtual bool isCascadeOpacityEnabled() = win 0x44a20, imac 0x5ddc70, m1 0x508e6c;
    virtual void setCascadeOpacityEnabled(bool) = win 0x44a30, imac 0x5ddc90, m1 0x508e7c;
    virtual cocos2d::ccColor3B const& getColor() = win 0x449d0, imac 0x5ddbb0, m1 0x508e00;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = win 0x44a40, imac 0x5ddcb0, m1 0x508e8c;
    virtual void setColor(cocos2d::ccColor3B const&) = win 0x449e0, imac 0x5ddbd0, m1 0x508e10;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = win 0x44a50, imac 0x5ddcd0, m1 0x508e9c;
    virtual bool isCascadeColorEnabled() = win 0x44a60, imac 0x5ddd10, m1 0x508ec4;
    virtual void setCascadeColorEnabled(bool) = win 0x44a70, imac 0x5ddd30, m1 0x508ed4;

    bool initWithStrikePoint(cocos2d::CCPoint) = win inline, m1 0x5088c0, ios inline;
    bool initWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = win 0x44670, imac 0x5dd750, m1 0x508a34;
    void strike() = win 0x44910, m1 0x508b58;
    void strikeFinished() = win 0x44980, m1 0x412278;
    void strikeRandom() = win inline, m1 0x508cc0, ios inline;
    void strikeWithSeed(uint64_t seed) = win inline, imac 0x5ddab0, m1 0x508d38, ios inline;

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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27eb30, m1 0x2209fc;
    virtual void update(float) = imac 0x27ec70, m1 0x220b28;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);
}

[[link(win, android)]]
class cocos2d::CCMenu : cocos2d::CCLayerRGBA {
    // static cocos2d::CCMenu* create(cocos2d::CCMenuItem*, ...) = ios 0x1d8d28, m1 0x6a6d58, imac 0x79e7b0;

    static cocos2d::CCMenu* create() = imac 0x7926a0, m1 0x69affc;
    static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*) = imac 0x7928a0, m1 0x69b154;
    static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*) = imac 0x792af0, m1 0x69b3a0;

    virtual bool init() = imac 0x792b00, m1 0x69b3c0;
    virtual void addChild(cocos2d::CCNode*) = imac 0x792b10, m1 0x69b3c8;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x792b20, m1 0x69b3cc;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x792b30, m1 0x69b3d0;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x792ba0, m1 0x69b420;
    virtual void onExit() = imac 0x792b40, m1 0x69b3d4;
    virtual void registerWithTouchDispatcher() = imac 0x792ca0, m1 0x69b550;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x792cf0, m1 0x69b5a0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x792fa0, m1 0x69b878;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x792ec0, m1 0x69b788;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x792f40, m1 0x69b810;

    // CCMenu(cocos2d::CCMenu const&);
    // CCMenu();
    void alignItemsHorizontally();
    void alignItemsHorizontallyWithPadding(float);
    // void alignItemsInColumns(unsigned int, ...);
    // void alignItemsInColumns(unsigned int, char*);
    void alignItemsInColumnsWithArray(cocos2d::CCArray*);
    // void alignItemsInRows(unsigned int, ...);
    // void alignItemsInRows(unsigned int, char*);
    void alignItemsInRowsWithArray(cocos2d::CCArray*);
    void alignItemsVertically();
    void alignItemsVerticallyWithPadding(float);
    // static cocos2d::CCMenu* createWithItems(cocos2d::CCMenuItem*, char*);
    bool initWithArray(cocos2d::CCArray*) = imac 0x792970, m1 0x69b20c;
    cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*) = imac 0x792dc0, m1 0x69b670;
    cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*, bool) = imac 0x794470, m1 0x69c8d0;
    void setHandlerPriority(int);

    bool m_bEnabled;
    cocos2d::tCCMenuState m_eState;
    cocos2d::CCMenuItem* m_pSelectedItem;
}

[[link(win, android)]]
class cocos2d::CCMenuItem : cocos2d::CCNodeRGBA {

    virtual ~CCMenuItem() = imac 0x3be390, m1 0x340004;

    static cocos2d::CCMenuItem* create() = imac 0x3be180, m1 0x33fe30;
    static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3be240, m1 0x33fed8;

    virtual void activate() = imac 0x3be550, m1 0x3401a0;
    virtual void selected() = imac 0x3be4c0, m1 0x34011c;
    virtual void unselected() = imac 0x3be4d0, m1 0x340128;
    virtual void registerScriptTapHandler(int) = imac 0x3be4e0, m1 0x340130;
    virtual void unregisterScriptTapHandler() = imac 0x3be510, m1 0x340160;
    virtual bool isEnabled() = imac 0x3be5d0, m1 0x340228;
    virtual void setEnabled(bool) = imac 0x3be5c0, m1 0x340220;
    virtual bool isSelected() = imac 0x3be630, m1 0x34024c;

    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3be310, m1 0x33ff94;
    // CCMenuItem(cocos2d::CCMenuItem const&);
    // CCMenuItem();
    cocos2d::CCRect rect() = imac 0x3be5e0, m1 0x340230;
    // int getScriptTapHandler();
    void setTarget(cocos2d::CCObject* rec, cocos2d::SEL_MenuHandler selector) = imac 0x3be640, m1 0x340254, ios inline;

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
    static cocos2d::CCMenuItemImage* create() = imac 0x3bfdc0, m1 0x341958, ios inline;
    static cocos2d::CCMenuItemImage* create(char const*, char const*) = imac 0x3c0110, m1 0x341ccc, ios inline;
    static cocos2d::CCMenuItemImage* create(char const*, char const*, char const*) = imac 0x3c0370, m1 0x341eec, ios inline;
    static cocos2d::CCMenuItemImage* create(char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3c02a0, m1 0x341e34, ios inline;
    static cocos2d::CCMenuItemImage* create(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3c01c0, m1 0x341d70, ios inline;

    virtual bool init() = imac 0x3bff00, m1 0x341a94;

    bool initWithNormalImage(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3bffd0, m1 0x341b7c;
    void setDisabledSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x341ffc, ios inline;
    void setNormalSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x341f94, ios inline;
    void setSelectedSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x341fc8, ios inline;
}

[[link(win, android)]]
class cocos2d::CCMenuItemLabel : cocos2d::CCMenuItem {

    [[since("until 4.10.1")]]
    ~CCMenuItemLabel() = imac inline, m1 inline;

    static cocos2d::CCMenuItemLabel* create(cocos2d::CCNode*);
    static cocos2d::CCMenuItemLabel* create(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

    virtual cocos2d::ccColor3B const& getDisabledColor() = imac 0x3be660, m1 0x340260;
    virtual void setDisabledColor(cocos2d::ccColor3B const&) = imac 0x3be670, m1 0x340268;
    virtual cocos2d::CCNode* getLabel() = imac 0x3be690, m1 0x34027c;
    virtual void setLabel(cocos2d::CCNode*) = imac 0x3be6a0, m1 0x340284;
    virtual void activate() = imac 0x3bec40, m1 0x340814;
    virtual void selected() = imac 0x3becd0, m1 0x3408b8;
    virtual void unselected() = imac 0x3bed60, m1 0x340960;
    virtual void setEnabled(bool) = imac 0x3bedc0, m1 0x3409d0;

    bool initWithLabel(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
    void setString(char const*);
}

[[link(win, android)]]
class cocos2d::CCMenuItemSprite : cocos2d::CCMenuItem {
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*) = imac 0x3bf8f0, m1 0x341494, ios inline;
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3bfa80, m1 0x341610, ios inline;
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3bf910, m1 0x3414a4, ios inline;

    virtual void selected() = imac 0x3bfb90, m1 0x34173c;
    virtual void unselected() = imac 0x3bfc30, m1 0x3417c8;
    virtual void setEnabled(bool) = imac 0x3bfcb0, m1 0x341848;
    virtual cocos2d::CCNode* getNormalImage() = imac 0x3bf6c0, m1 0x341260;
    virtual void setNormalImage(cocos2d::CCNode*) = imac 0x3bf6d0, m1 0x341268;
    virtual cocos2d::CCNode* getSelectedImage() = imac 0x3bf790, m1 0x341334;
    virtual void setSelectedImage(cocos2d::CCNode*) = imac 0x3bf7a0, m1 0x34133c;
    virtual cocos2d::CCNode* getDisabledImage() = imac 0x3bf840, m1 0x3413e4;
    virtual void setDisabledImage(cocos2d::CCNode*) = imac 0x3bf850, m1 0x3413ec;
    virtual void updateImagesVisibility() = imac 0x3bfcd0, m1 0x341868;

    bool initWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3bfaa0, m1 0x341624;

    cocos2d::CCNode* m_pNormalImage;
    cocos2d::CCNode* m_pSelectedImage;
    cocos2d::CCNode* m_pDisabledImage;
}

[[link(win, android)]]
class cocos2d::CCMenuItemToggle : cocos2d::CCMenuItem {

    virtual ~CCMenuItemToggle() = m1 0x3426a0;

    static cocos2d::CCMenuItemToggle* create();
    static cocos2d::CCMenuItemToggle* create(cocos2d::CCMenuItem*);
    static cocos2d::CCMenuItemToggle* createWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCArray*);
    static cocos2d::CCMenuItemToggle* createWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCMenuItem*);

    virtual unsigned int getSelectedIndex() = imac 0x3c0f90, m1 0x342920;
    virtual void setSelectedIndex(unsigned int) = imac 0x3c0ea0, m1 0x342824;
    virtual cocos2d::CCArray* getSubItems() = imac 0x3c0500, m1 0x34206c;
    virtual void setSubItems(cocos2d::CCArray*) = imac 0x3c04c0, m1 0x342030;
    virtual void activate() = imac 0x3c1000, m1 0x342984;
    virtual void selected() = imac 0x3c0fa0, m1 0x342928;
    virtual void unselected() = imac 0x3c0fd0, m1 0x342958;
    virtual void setEnabled(bool) = imac 0x3c10b0, m1 0x342a34;

    void addSubItem(cocos2d::CCMenuItem*);
    bool initWithItem(cocos2d::CCMenuItem*);
    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCMenuItem*, va_list);
    cocos2d::CCMenuItem* selectedItem();
}

[[link(win, android)]]
class cocos2d::CCMotionStreak : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    // CCMotionStreak(cocos2d::CCMotionStreak const&);
    CCMotionStreak();
    virtual ~CCMotionStreak() = m1 0x4c3870;

    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::ccColor3B const&, char const*) = imac 0x575d70, m1 0x4c3924;
    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::ccColor3B const&, cocos2d::CCTexture2D*) = imac 0x575f30, m1 0x4c3ab8;

    virtual void update(float) = imac 0x5764e0, m1 0x4c3f60;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x576240, m1 0x4c3d68;
    virtual void draw() = imac 0x576b90, m1 0x4c471c;
    virtual unsigned char getOpacity() = imac 0x5763f0, m1 0x4c3ec8;
    virtual void setOpacity(unsigned char) = imac 0x5763d0, m1 0x4c3ec0;
    virtual void setOpacityModifyRGB(bool) = imac 0x576410, m1 0x4c3ed8;
    virtual bool isOpacityModifyRGB() = imac 0x576430, m1 0x4c3ee0;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x576390, m1 0x4c3ea0;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x5763b0, m1 0x4c3eb0;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x5762e0, m1 0x4c3e00;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x576300, m1 0x4c3e10;

    void enableRepeatMode(float) = imac 0x576450, m1 0x4c3ef0;
    bool initWithFade(float, float, float, cocos2d::ccColor3B const&, char const*) = imac 0x575ec0, m1 0x4c3a40;
    bool initWithFade(float, float, float, cocos2d::ccColor3B const&, cocos2d::CCTexture2D*) = imac 0x576070, m1 0x4c3bc4;
    // bool isFastMode();
    // bool isStartingPositionInitialized();
    void reset() = imac 0x576b70;
    void resumeStroke() = m1 0x4c3f54;
    // bool getDontOpacityFade() const;
    // float getM_fMaxSeg() const;
    // void setDontOpacityFade(bool);
    // void setFastMode(bool);
    // void setM_fMaxSeg(float);
    // void setStartingPositionInitialized(bool);
    void setStroke(float) = imac 0x576b60, m1 0x4c4708;
    void stopStroke() = imac 0x5764c0, m1 0x4c3f4c;
    void tintWithColor(cocos2d::ccColor3B) = imac 0x576260, m1 0x4c3d78, ios inline;
    void updateFade(float) = imac 0x5764a0, m1 0x4c3f3c;

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

    void addDelegate(cocos2d::CCMouseDelegate*);
    bool dispatchScrollMSG(float, float) = imac 0x5708f0, m1 0x4be760;
    void forceAddDelegate(cocos2d::CCMouseDelegate*) = m1 0x1b006c, ios inline;
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

    static cocos2d::CCMouseHandler* handlerWithDelegate(cocos2d::CCMouseDelegate*) = m1 0x2260dc;

    virtual bool initWithDelegate(cocos2d::CCMouseDelegate*) = imac 0x284580, m1 0x226088;

    cocos2d::CCMouseDelegate* getDelegate();
    void setDelegate(cocos2d::CCMouseDelegate*) = ios inline;

    cocos2d::CCMouseDelegate* m_pDelegate;
}

[[link(win, android)]]
class cocos2d::CCMoveBy : cocos2d::CCActionInterval {
    static cocos2d::CCMoveBy* create(float, cocos2d::CCPoint const&) = imac 0x3b7cd0;

    // CCMoveBy(cocos2d::CCMoveBy const&);
    // CCMoveBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b7e10, m1 0x33a700;
    virtual void update(float) = imac 0x3b8000, m1 0x33a8c0;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b7f60, m1 0x33a828;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b7fb0, m1 0x33a87c;

    bool initWithDuration(float, cocos2d::CCPoint const&) = imac 0x3b7dd0, ios inline;
}

[[link(win, android)]]
class cocos2d::CCMoveTo : cocos2d::CCMoveBy {
    static cocos2d::CCMoveTo* create(float, cocos2d::CCPoint const&) = imac 0x3b80d0, m1 0x33a97c;

    // CCMoveTo(cocos2d::CCMoveTo const&);
    // CCMoveTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b8220, m1 0x33aa9c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b8380, m1 0x33abd8;

    bool initWithDuration(float, cocos2d::CCPoint const&) = imac 0x3b81e0, ios inline;
}

[[link(win, android)]]
class cocos2d::CCNode : cocos2d::CCObject {
    // CCNode(cocos2d::CCNode const&);
    CCNode() = imac 0x271db0, m1 0x21481c;
    virtual ~CCNode() = imac 0x271f60, m1 0x2149a8;

    static cocos2d::CCNode* create() = m1 0x215138, imac 0x2728f0;
    static void resetGlobalOrderOfArrival() = imac 0x271da0, m1 0x21480c;

    virtual void update(float) = imac 0x273e30, m1 0x2165e8;
    virtual bool init() = imac 0x2720f0, m1 0x214af8;
    virtual void setZOrder(int) = imac 0x272180, m1 0x214b48;
    virtual void _setZOrder(int) = imac 0x272170, m1 0x214b40;
    virtual int getZOrder() = imac 0x272160, m1 0x214b38;
    virtual void setVertexZ(float) = imac 0x2721d0, m1 0x214ba0;
    virtual float getVertexZ() = imac 0x2721c0, m1 0x214b98;
    virtual void setScaleX(float) = imac 0x2722f0, m1 0x214c50;
    virtual float getScaleX() = imac 0x2722e0, m1 0x214c48;
    virtual void setScaleY(float) = imac 0x272320, m1 0x214c6c;
    virtual float getScaleY() = imac 0x272310, m1 0x214c64;
    virtual void setScale(float) = imac 0x2722a0, m1 0x214c20;
    virtual float getScale() = imac 0x272290, m1 0x214c18;
    virtual void setScale(float, float) = imac 0x2722c0, m1 0x214c34;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x272350, m1 0x214c88;
    virtual cocos2d::CCPoint const& getPosition() = imac 0x272340, m1 0x214c80;
    virtual void setPosition(float, float) = imac 0x272390, m1 0x214cb4;
    virtual void getPosition(float*, float*) = imac 0x272370, m1 0x214ca0;
    virtual void setPositionX(float) = imac 0x2723f0, m1 0x214d04;
    virtual float getPositionX() = imac 0x2723d0, m1 0x214cf4;
    virtual void setPositionY(float) = imac 0x272430, m1 0x214d48;
    virtual float getPositionY() = imac 0x2723e0, m1 0x214cfc;
    virtual void setSkewX(float) = imac 0x272110, m1 0x214b08;
    virtual float getSkewX() = imac 0x272100, m1 0x214b00;
    virtual void setSkewY(float) = imac 0x272140, m1 0x214b24;
    virtual float getSkewY() = imac 0x272130, m1 0x214b1c;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x2725d0, m1 0x214eb8;
    virtual cocos2d::CCPoint const& getAnchorPoint() = imac 0x2725c0, m1 0x214eb0;
    virtual cocos2d::CCPoint const& getAnchorPointInPoints() = imac 0x2725b0, m1 0x214ea8;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x272690, m1 0x214f6c;
    virtual cocos2d::CCSize const& getContentSize() const = imac 0x272650, m1 0x214f2c;
    virtual cocos2d::CCSize getScaledContentSize() = imac 0x272660, m1 0x214f34;
    virtual void setVisible(bool) = imac 0x2725a0, m1 0x214ea0;
    virtual bool isVisible() = imac 0x272590, m1 0x214e98;
    virtual void setRotation(float) = imac 0x2721f0, m1 0x214bb0;
    virtual float getRotation() = imac 0x2721e0, m1 0x214ba8;
    virtual void setRotationX(float) = imac 0x272240, m1 0x214be8;
    virtual float getRotationX() = imac 0x272230, m1 0x214be0;
    virtual void setRotationY(float) = imac 0x272270, m1 0x214c04;
    virtual float getRotationY() = imac 0x272260, m1 0x214bfc;
    virtual void setOrderOfArrival(unsigned int) = imac 0x2727b0, m1 0x215038;
    virtual unsigned int getOrderOfArrival() = imac 0x2727a0, m1 0x215030;
    virtual void setGLServerState(cocos2d::ccGLServerState) = imac 0x2727f0, m1 0x215058;
    virtual cocos2d::ccGLServerState getGLServerState() = imac 0x2727e0, m1 0x215050;
    virtual void ignoreAnchorPointForPosition(bool) = imac 0x272750, m1 0x215000;
    virtual bool isIgnoreAnchorPointForPosition() = imac 0x272740, m1 0x214ff8;
    virtual void addChild(cocos2d::CCNode*) = imac 0x272c60, m1 0x2154a8;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x272c40, m1 0x215498;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x272af0, m1 0x215340;
    virtual cocos2d::CCNode* getChildByTag(int) = imac 0x272a70, m1 0x2152bc;
    virtual cocos2d::CCArray* getChildren() = imac 0x272470, m1 0x214d90;
    virtual unsigned int getChildrenCount() const = imac 0x2724c0, m1 0x214de4;
    virtual void setParent(cocos2d::CCNode*) = imac 0x272730, m1 0x214ff0;
    virtual cocos2d::CCNode* getParent() = imac 0x272720, m1 0x214fe8;
    virtual void removeFromParent() = imac 0x272c80, m1 0x2154bc;
    virtual void removeFromParentAndCleanup(bool) = imac 0x272ca0, m1 0x2154cc;
    virtual void removeMeAndCleanup() = imac 0x272cd0, m1 0x2154ec;
    virtual void removeChild(cocos2d::CCNode*) = imac 0x272cf0, m1 0x2154fc;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x272d10, m1 0x21550c;
    virtual void removeChildByTag(int) = imac 0x272e60, m1 0x215688;
    virtual void removeChildByTag(int, bool) = imac 0x272e80, m1 0x215698;
    virtual void removeAllChildren() = imac 0x272ec0, m1 0x2156e8;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x272ee0, m1 0x2156f8;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x272ff0, m1 0x21582c;
    virtual void sortAllChildren() = imac 0x273140, m1 0x215948;
    virtual cocos2d::CCGridBase* getGrid() = imac 0x272540, m1 0x214e54;
    virtual void setGrid(cocos2d::CCGridBase*) = imac 0x272550, m1 0x214e5c;
    virtual void* getUserData() = imac 0x272780, m1 0x215020;
    virtual void setUserData(void*) = imac 0x272790, m1 0x215028;
    virtual cocos2d::CCObject* getUserObject() = imac 0x2727d0, m1 0x215048;
    virtual void setUserObject(cocos2d::CCObject*) = imac 0x272800, m1 0x215060;
    virtual cocos2d::CCGLProgram* getShaderProgram() = imac 0x2727c0, m1 0x215040;
    virtual void setShaderProgram(cocos2d::CCGLProgram*) = imac 0x272840, m1 0x21509c;
    virtual cocos2d::CCCamera* getCamera() = imac 0x2724e0, m1 0x214df4;
    virtual bool isRunning() = imac 0x272710, m1 0x214fe0;
    virtual void registerScriptHandler(int) = imac 0x273a70, m1 0x2162bc;
    virtual void unregisterScriptHandler() = imac 0x273aa0, m1 0x2162ec;
    virtual void onEnter() = imac 0x273750, m1 0x215f84;
    virtual void onEnterTransitionDidFinish() = imac 0x273870, m1 0x2160b0;
    virtual void onExit() = imac 0x273970, m1 0x2161c4;
    virtual void onExitTransitionDidStart() = imac 0x2738e0, m1 0x216130;
    virtual void cleanup() = imac 0x272950, m1 0x2151b8;
    virtual void draw() = imac 0x273510, m1 0x215d58;
    virtual void visit() = imac 0x273520, m1 0x215d5c;
    virtual void setActionManager(cocos2d::CCActionManager*) = imac 0x273ae0, m1 0x21632c;
    virtual cocos2d::CCActionManager* getActionManager() = imac 0x273b30, m1 0x21637c;
    virtual void setScheduler(cocos2d::CCScheduler*) = imac 0x273bf0, m1 0x2163e8;
    virtual cocos2d::CCScheduler* getScheduler() = imac 0x273c40, m1 0x216438;
    virtual void updateTransform() = imac 0x274a50, m1 0x2171f8;
    virtual cocos2d::CCAffineTransform const nodeToParentTransform() = imac 0x273ea0, m1 0x216668;
    virtual cocos2d::CCAffineTransform const nodeToParentTransformFast() = imac 0x2741b0, m1 0x21692c;
    virtual cocos2d::CCAffineTransform const parentToNodeTransform() = imac 0x2745e0, m1 0x216da8;
    virtual cocos2d::CCAffineTransform nodeToWorldTransform() = imac 0x274660, m1 0x216e20;
    virtual cocos2d::CCAffineTransform nodeToWorldTransformFast() = imac 0x2746f0, m1 0x216eac;
    virtual cocos2d::CCAffineTransform worldToNodeTransform() = imac 0x274780, m1 0x216f38;
    virtual bool addComponent(cocos2d::CCComponent*) = imac 0x274ac0, m1 0x217260;
    virtual bool removeComponent(char const*) = imac 0x274ae0, m1 0x217270;
    virtual bool removeComponent(cocos2d::CCComponent*) = imac 0x274b00, m1 0x217280;
    virtual void removeAllComponents() = imac 0x274b20, m1 0x217290;
    virtual void updateTweenAction(float, char const*) = imac 0x274a30, m1 0x2171f0;
    virtual void updateTweenActionInt(float, int) = imac 0x274a40, m1 0x2171f4;

    cocos2d::CCRect boundingBox() = imac 0x272880, m1 0x2150d8;
    void childrenAlloc() = imac 0x272a40, m1 0x215294, ios inline;
    cocos2d::CCPoint convertToNodeSpace(cocos2d::CCPoint const&) = m1 0x216f78, imac 0x2747c0;
    cocos2d::CCPoint convertToNodeSpaceAR(cocos2d::CCPoint const& worldPoint) = imac 0x274840, m1 0x217008, ios inline;
    cocos2d::CCPoint convertTouchToNodeSpace(cocos2d::CCTouch*) = m1 0x217124;
    cocos2d::CCPoint convertTouchToNodeSpaceAR(cocos2d::CCTouch*) = imac 0x2749c0, m1 0x21717c, ios inline;
    cocos2d::CCPoint convertToWindowSpace(cocos2d::CCPoint const&) = imac 0x274900, m1 0x2170cc, ios inline;
    cocos2d::CCPoint convertToWorldSpace(cocos2d::CCPoint const&) = m1 0x216fc0, imac 0x274800;
    cocos2d::CCPoint convertToWorldSpaceAR(cocos2d::CCPoint const& point) = imac 0x2748a0, m1 0x21706c, ios inline;
    char const* description() = m1 0x215268, ios inline;
    void detachChild(cocos2d::CCNode*, bool) = imac 0x6cdc0;
    cocos2d::CCAction* getActionByTag(int) = m1 0x2163d0;
    cocos2d::CCComponent* getComponent(char const*) const = imac 0x274aa0, m1 0x217250, ios inline;
    void insertChild(cocos2d::CCNode*, int) = m1 0x215440;
    unsigned int numberOfRunningActions() = m1 0x2163dc, ios inline;
    void pauseSchedulerAndActions();
    void qsortAllChildrenWithIndex();
    void resumeSchedulerAndActions();
    cocos2d::CCAction* runAction(cocos2d::CCAction*) = imac 0x273b40, m1 0x216384;
    void schedule(cocos2d::SEL_SCHEDULE) = m1 0x216538, imac 0x273d50;
    void schedule(cocos2d::SEL_SCHEDULE, float) = m1 0x216578, imac 0x273db0;
    void schedule(cocos2d::SEL_SCHEDULE selector, float interval, unsigned int repeat, float delay) = imac 0x273d80, m1 0x21655c, ios inline;
    void scheduleOnce(cocos2d::SEL_SCHEDULE selector, float delay) = imac 0x273de0, m1 0x216598, ios inline;
    void scheduleUpdate() = m1 0x216440, imac 0x273c50;
    void scheduleUpdateWithPriority(int) = imac 0x273c70, m1 0x21645c;
    void scheduleUpdateWithPriorityLua(int, int) = imac 0x273c90, m1 0x216478, ios inline;
    // int getScriptHandler();
    // cocos2d::CCAffineTransform getTransformTemp();
    // bool getUseChildIndex();
    void setAdditionalTransform(cocos2d::CCAffineTransform const& additionalTransform) = imac 0x2745b0, m1 0x216d88, ios inline;
    void setUseChildIndex(bool);
    void sortAllChildrenNoIndex() = imac 0x273360, m1 0x215b7c;
    void sortAllChildrenWithIndex() = ios inline;
    void stopAction(cocos2d::CCAction* action) = m1 0x2163bc, ios inline;
    void stopActionByTag(int) = m1 0x2163c4, imac 0x273bb0;
    void stopAllActions() = m1 0x215250, imac 0x2729e0;
    void transform() = imac 0x273650, m1 0x215e98;
    void transformAncestors() = imac 0x273710, m1 0x215f4c;
    void unschedule(cocos2d::SEL_SCHEDULE) = m1 0x2165bc;
    void unscheduleAllSelectors() = m1 0x21525c;
    void unscheduleUpdate() = imac 0x273d00, m1 0x2164ec;
    void updateChildIndexes();

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
    CCNodeRGBA() = imac 0x274b40, m1 0x2172a0;
    virtual ~CCNodeRGBA() = imac 0x274be0, m1 0x217300;

    static cocos2d::CCNodeRGBA* create() = m1 0x217330, ios inline;

    virtual bool init() = imac 0x274c20, m1 0x21731c;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x275020, m1 0x2176f8;
    virtual cocos2d::ccColor3B const& getColor() = imac 0x274fe0, m1 0x2176d8;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = imac 0x275000, m1 0x2176e8;
    virtual unsigned char getDisplayedOpacity() = imac 0x274cd0, m1 0x2173a4;
    virtual unsigned char getOpacity() = imac 0x274cb0, m1 0x217394;
    virtual void setOpacity(unsigned char) = imac 0x274cf0, m1 0x2173b4;
    virtual bool isCascadeColorEnabled() = imac 0x2753b0, m1 0x21799c;
    virtual void setCascadeColorEnabled(bool) = imac 0x2753d0, m1 0x2179ac;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = imac 0x275190, m1 0x21788c;
    virtual bool isCascadeOpacityEnabled() = imac 0x274fa0, m1 0x2176b8;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x274fc0, m1 0x2176c8;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x274e20, m1 0x217520;

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

    virtual cocos2d::CCObject* getTarget() = imac 0x287b90, m1 0x2292f8;
    virtual cocos2d::SEL_CallFuncO getSelector() = imac 0x287ba0, m1 0x229300;
    virtual char* getName() = imac 0x287bb0, m1 0x22930c;
    virtual cocos2d::CCObject* getObject() = imac 0x287bc0, m1 0x229314;
    virtual int getHandler() = imac 0x287bd0, m1 0x22931c;
    virtual void setHandler(int) = imac 0x287be0, m1 0x229324;

    void performSelector(cocos2d::CCObject*);
}

[[link(win, android)]]
class cocos2d::CCObject : cocos2d::CCCopying {
    // CCObject(cocos2d::CCObject const&);
    CCObject() = imac 0x48a340, m1 0x3ef980;
    virtual ~CCObject() = imac 0x48a3e0, m1 0x3efa10;

    static cocos2d::CCObject* createWithCoder(DS_Dictionary*) = imac 0x48a630, m1 0x3efc8c;

    virtual int getTag() const = imac 0x48a600, m1 0x3efc78;
    virtual bool isEqual(cocos2d::CCObject const*) = imac 0x48a5d0, m1 0x3efc54;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x48a5e0, m1 0x3efc60;
    virtual void encodeWithCoder(DS_Dictionary*) = imac 0x48a620, m1 0x3efc88;
    virtual bool canEncode() = imac 0x48a640, m1 0x3efc94;
    virtual void setTag(int) = imac 0x48a610, m1 0x3efc80;

    // cocos2d::CCObjectType getObjType() const;
    // void setObjType(cocos2d::CCObjectType);
    cocos2d::CCObject* autorelease() = m1 0x3efc10, imac 0x48a580;
    cocos2d::CCObject* copy();
    bool isSingleReference() const = imac 0x48a5b0, m1 0x3efc3c, ios inline;
    void release() = m1 0x3efbdc, imac 0x48a550;
    void retain() = imac 0x48a570, m1 0x3efc00;
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
    static cocos2d::CCOrbitCamera* create(float, float, float, float, float, float, float) = imac 0x3673f0, m1 0x2f1bb8;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3675e0, m1 0x2f1d30;
    virtual void update(float) = imac 0x367a40, m1 0x2f20d4;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x367730, m1 0x2f1e50;

    bool initWithDuration(float, float, float, float, float, float, float) = imac 0x367530, m1 0x2f1cb4;
    // CCOrbitCamera(cocos2d::CCOrbitCamera const&);
    // CCOrbitCamera();
    void sphericalRadius(float*, float*, float*) = imac 0x367900, m1 0x2f1fd0;
}

[[link(win, android)]]
class cocos2d::CCPageTurn3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCPageTurn3D* create(float, cocos2d::CCSize const&) = m1 0x2a0c10;

    virtual void update(float) = imac 0x311ab0, m1 0x2a0cf0;
}

[[link(win, android)]]
class cocos2d::CCParallaxNode : cocos2d::CCNode {
    CCParallaxNode();
    virtual ~CCParallaxNode();

    static cocos2d::CCParallaxNode* create();

    virtual void addChild(cocos2d::CCNode*, unsigned int, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x4ae450, m1 0x410664;
    virtual void addChild(cocos2d::CCNode*, unsigned int, int) = imac 0x4ae440, m1 0x410660;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x4ae610, m1 0x410814;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x4ae690, m1 0x4108a4;
    virtual void visit() = imac 0x4ae750, m1 0x41096c;

    cocos2d::CCPoint absolutePosition();
}

[[link(win, android)]]
class cocos2d::CCParticleBatchNode : cocos2d::CCNode, cocos2d::CCTextureProtocol {
    CCParticleBatchNode();
    virtual ~CCParticleBatchNode();

    static cocos2d::CCParticleBatchNode* create(char const*, unsigned int);
    static cocos2d::CCParticleBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int);

    virtual void addChild(cocos2d::CCNode*) = imac 0x3c8780, m1 0x349c28;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x3c8790, m1 0x349c2c;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x3c87a0, m1 0x349c30;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x3c8ff0, m1 0x34a57c;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x3c8be0, m1 0x34a0f0;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x3c9120, m1 0x34a6c4;
    virtual void draw() = imac 0x3c91b0, m1 0x34a750;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x3c9390, m1 0x34a92c;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x3c92f0, m1 0x34a86c;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x3c93c0, m1 0x34a94c;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x3c93e0, m1 0x34a95c;
    virtual void visit() = imac 0x3c8710, m1 0x349ba4;

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
    static cocos2d::CCParticleExplosion* create() = ios inline;
    static cocos2d::CCParticleExplosion* createWithTotalParticles(unsigned int) = ios inline;

    // CCParticleExplosion(cocos2d::CCParticleExplosion const&);
    // CCParticleExplosion();
    // virtual bool init() = m1 0x3ec694, imac 0x486a30;
    virtual bool initWithTotalParticles(unsigned int) = imac 0x485ed0, m1 0x3ebb24, ios inline;
}

[[link(win, android)]]
class cocos2d::CCParticleFire : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFire* create() = ios inline;
    static cocos2d::CCParticleFire* createWithTotalParticles(unsigned int) = ios inline;

    // CCParticleFire(cocos2d::CCParticleFire const&);
    // CCParticleFire();
    // virtual bool init() = m1 0x3ec634, imac 0x486970;
    virtual bool initWithTotalParticles(unsigned int) = imac 0x484ad0, m1 0x3ea64c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCParticleFireworks : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFireworks* create();
    static cocos2d::CCParticleFireworks* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = imac 0x484e20, m1 0x3ea9ac;
}

[[link(win, android)]]
class cocos2d::CCParticleFlower : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFlower* create();
    static cocos2d::CCParticleFlower* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = imac 0x485620, m1 0x3eb1f8;
}

[[link(win, android)]]
class cocos2d::CCParticleGalaxy : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleGalaxy* create();
    static cocos2d::CCParticleGalaxy* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = imac 0x485340, m1 0x3eaee8;
}

[[link(win, android)]]
class cocos2d::CCParticleMeteor : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleMeteor* create();
    static cocos2d::CCParticleMeteor* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = imac 0x485910, m1 0x3eb508;
}

[[link(win, android)]]
class cocos2d::CCParticleRain : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleRain* create() = m1 0x3ec304, ios inline;
    static cocos2d::CCParticleRain* createWithTotalParticles(unsigned int) = ios inline;

    // CCParticleRain(cocos2d::CCParticleRain const&);
    // CCParticleRain();
    // virtual bool init() = m1 0x3ec6a4, imac 0x486a50;
    virtual bool initWithTotalParticles(unsigned int) = imac 0x486760, m1 0x3ec428, ios inline;
}

[[link(win, android)]]
class cocos2d::CCParticleSmoke : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSmoke* create();
    static cocos2d::CCParticleSmoke* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = imac 0x4861a0, m1 0x3ebe28;
}

[[link(win, android)]]
class cocos2d::CCParticleSnow : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSnow* create() = ios inline;
    static cocos2d::CCParticleSnow* createWithTotalParticles(unsigned int numberOfParticles) = m1 0x3ec08c, ios inline;

    // CCParticleSnow(cocos2d::CCParticleSnow const&);
    // CCParticleSnow();
    // virtual bool init() = m1 0x3ec694, imac 0x486a30;
    virtual bool initWithTotalParticles(unsigned int numberOfParticles) = imac 0x486470, m1 0x3ec120, ios inline;
}

[[link(win, android)]]
class cocos2d::CCParticleSpiral : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSpiral* create();
    static cocos2d::CCParticleSpiral* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = imac 0x485c00, m1 0x3eb820;
}

[[link(win, android)]]
class cocos2d::CCParticleSun : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSun* create();
    static cocos2d::CCParticleSun* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = imac 0x485090, m1 0x3eac14;
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
    CCParticleSystem() = m1 0x6cb4b4;
    virtual ~CCParticleSystem() = m1 0x6cd370;

    static cocos2d::CCParticleSystem* create(char const*) = imac 0x7c65e0, m1 0x6cb600;
    static cocos2d::CCParticleSystem* createWithTotalParticles(unsigned int);

    virtual void update(float) = imac 0x7c99b0, m1 0x6ce3ec;
    virtual bool init() = imac 0x7c6920, m1 0x6cb974;
    virtual void setScaleX(float) = imac 0x7cb180, m1 0x6cf574;
    virtual void setScaleY(float) = imac 0x7cb1a0, m1 0x6cf580;
    virtual void setScale(float) = imac 0x7cb140, m1 0x6cf55c;
    virtual void setVisible(bool) = imac 0x7caa50, m1 0x6cf180;
    virtual void setRotation(float) = imac 0x7cb160, m1 0x6cf568;
    virtual cocos2d::CCParticleBatchNode* getBatchNode() = imac 0x7cb060, m1 0x6cf4c4;
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = imac 0x7cb070, m1 0x6cf4cc;
    virtual unsigned int getParticleCount() = imac 0x7cac60, m1 0x6cf28c;
    virtual float getDuration() = imac 0x7cac70, m1 0x6cf294;
    virtual void setDuration(float) = imac 0x7cac80, m1 0x6cf29c;
    virtual cocos2d::CCPoint const& getSourcePosition() = imac 0x7cac90, m1 0x6cf2a4;
    virtual void setSourcePosition(cocos2d::CCPoint const&) = imac 0x7caca0, m1 0x6cf2ac;
    virtual cocos2d::CCPoint const& getPosVar() = imac 0x7cacc0, m1 0x6cf2b4;
    virtual void setPosVar(cocos2d::CCPoint const&) = imac 0x7cacd0, m1 0x6cf2bc;
    virtual float getLife() = imac 0x7cacf0, m1 0x6cf2c4;
    virtual void setLife(float) = imac 0x7cad00, m1 0x6cf2cc;
    virtual float getLifeVar() = imac 0x7cad10, m1 0x6cf2d4;
    virtual void setLifeVar(float) = imac 0x7cad20, m1 0x6cf2dc;
    virtual float getAngle() = imac 0x7cad30, m1 0x6cf2e4;
    virtual void setAngle(float) = imac 0x7cad40, m1 0x6cf2ec;
    virtual float getAngleVar() = imac 0x7cad50, m1 0x6cf2f4;
    virtual void setAngleVar(float) = imac 0x7cad60, m1 0x6cf2fc;
    virtual void updateEmissionRate() = imac 0x7c8510, m1 0x6cd340;
    virtual cocos2d::CCPoint const& getGravity() = imac 0x7cab40, m1 0x6cf1fc;
    virtual void setGravity(cocos2d::CCPoint const&) = imac 0x7cab20, m1 0x6cf1f4;
    virtual float getSpeed() = imac 0x7cab60, m1 0x6cf20c;
    virtual void setSpeed(float) = imac 0x7cab50, m1 0x6cf204;
    virtual float getSpeedVar() = imac 0x7cab80, m1 0x6cf21c;
    virtual void setSpeedVar(float) = imac 0x7cab70, m1 0x6cf214;
    virtual float getTangentialAccel() = imac 0x7caa90, m1 0x6cf1ac;
    virtual void setTangentialAccel(float) = imac 0x7caa80, m1 0x6cf1a4;
    virtual float getTangentialAccelVar() = imac 0x7caab0, m1 0x6cf1bc;
    virtual void setTangentialAccelVar(float) = imac 0x7caaa0, m1 0x6cf1b4;
    virtual float getRadialAccel() = imac 0x7caad0, m1 0x6cf1cc;
    virtual void setRadialAccel(float) = imac 0x7caac0, m1 0x6cf1c4;
    virtual float getRadialAccelVar() = imac 0x7caaf0, m1 0x6cf1dc;
    virtual void setRadialAccelVar(float) = imac 0x7caae0, m1 0x6cf1d4;
    virtual bool getRotationIsDir() = imac 0x7cab10, m1 0x6cf1ec;
    virtual void setRotationIsDir(bool) = imac 0x7cab00, m1 0x6cf1e4;
    virtual float getStartRadius() = imac 0x7caba0, m1 0x6cf22c;
    virtual void setStartRadius(float) = imac 0x7cab90, m1 0x6cf224;
    virtual float getStartRadiusVar() = imac 0x7cabc0, m1 0x6cf23c;
    virtual void setStartRadiusVar(float) = imac 0x7cabb0, m1 0x6cf234;
    virtual float getEndRadius() = imac 0x7cabe0, m1 0x6cf24c;
    virtual void setEndRadius(float) = imac 0x7cabd0, m1 0x6cf244;
    virtual float getEndRadiusVar() = imac 0x7cac00, m1 0x6cf25c;
    virtual void setEndRadiusVar(float) = imac 0x7cabf0, m1 0x6cf254;
    virtual float getRotatePerSecond() = imac 0x7cac20, m1 0x6cf26c;
    virtual void setRotatePerSecond(float) = imac 0x7cac10, m1 0x6cf264;
    virtual float getRotatePerSecondVar() = imac 0x7cac40, m1 0x6cf27c;
    virtual void setRotatePerSecondVar(float) = imac 0x7cac30, m1 0x6cf274;
    virtual bool isActive() = imac 0x7cac50, m1 0x6cf284;
    virtual bool isBlendAdditive() = imac 0x7caa30, m1 0x6cf15c;
    virtual void setBlendAdditive(bool) = imac 0x7ca9d0, m1 0x6cf0e4;
    virtual float getStartSize() = imac 0x7cad70, m1 0x6cf304;
    virtual void setStartSize(float) = imac 0x7cad80, m1 0x6cf30c;
    virtual float getStartSizeVar() = imac 0x7cad90, m1 0x6cf314;
    virtual void setStartSizeVar(float) = imac 0x7cada0, m1 0x6cf31c;
    virtual float getEndSize() = imac 0x7cadb0, m1 0x6cf324;
    virtual void setEndSize(float) = imac 0x7cadc0, m1 0x6cf32c;
    virtual float getEndSizeVar() = imac 0x7cadd0, m1 0x6cf334;
    virtual void setEndSizeVar(float) = imac 0x7cade0, m1 0x6cf33c;
    virtual cocos2d::ccColor4F const& getStartColor() = imac 0x7cadf0, m1 0x6cf344;
    virtual void setStartColor(cocos2d::ccColor4F const&) = imac 0x7cae00, m1 0x6cf34c;
    virtual cocos2d::ccColor4F const& getStartColorVar() = imac 0x7cae10, m1 0x6cf35c;
    virtual void setStartColorVar(cocos2d::ccColor4F const&) = imac 0x7cae20, m1 0x6cf364;
    virtual cocos2d::ccColor4F const& getEndColor() = imac 0x7cae30, m1 0x6cf374;
    virtual void setEndColor(cocos2d::ccColor4F const&) = imac 0x7cae40, m1 0x6cf37c;
    virtual cocos2d::ccColor4F const& getEndColorVar() = imac 0x7cae50, m1 0x6cf38c;
    virtual void setEndColorVar(cocos2d::ccColor4F const&) = imac 0x7cae60, m1 0x6cf394;
    virtual float getStartSpin() = imac 0x7cae70, m1 0x6cf3a4;
    virtual void setStartSpin(float) = imac 0x7cae80, m1 0x6cf3ac;
    virtual float getStartSpinVar() = imac 0x7cae90, m1 0x6cf3b4;
    virtual void setStartSpinVar(float) = imac 0x7caea0, m1 0x6cf3bc;
    virtual float getEndSpin() = imac 0x7caeb0, m1 0x6cf3c4;
    virtual void setEndSpin(float) = imac 0x7caec0, m1 0x6cf3cc;
    virtual float getEndSpinVar() = imac 0x7caed0, m1 0x6cf3d4;
    virtual void setEndSpinVar(float) = imac 0x7caee0, m1 0x6cf3dc;
    virtual float getEmissionRate() = imac 0x7caef0, m1 0x6cf3e4;
    virtual void setEmissionRate(float) = imac 0x7caf00, m1 0x6cf3ec;
    virtual unsigned int getTotalParticles() = imac 0x7caf10, m1 0x6cf3f4;
    virtual void setTotalParticles(unsigned int) = imac 0x7caf20, m1 0x6cf3fc;
    virtual bool getOpacityModifyRGB() = imac 0x7cafe0, m1 0x6cf484;
    virtual void setOpacityModifyRGB(bool) = imac 0x7caff0, m1 0x6cf48c;
    virtual cocos2d::tCCPositionType getPositionType() = imac 0x7cb000, m1 0x6cf494;
    virtual void setPositionType(cocos2d::tCCPositionType) = imac 0x7cb010, m1 0x6cf49c;
    virtual bool isAutoRemoveOnFinish() = imac 0x7cb020, m1 0x6cf4a4;
    virtual void setAutoRemoveOnFinish(bool) = imac 0x7cb030, m1 0x6cf4ac;
    virtual int getEmitterMode() = imac 0x7cb040, m1 0x6cf4b4;
    virtual void setEmitterMode(int) = imac 0x7cb050, m1 0x6cf4bc;
    virtual bool initWithTotalParticles(unsigned int, bool) = imac 0x7c83a0, m1 0x6cd210;
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&) = imac 0x7ca720, m1 0x6cef0c;
    virtual void postStep() = imac 0x7ca860, m1 0x6cef90;
    virtual void updateWithNoTime() = imac 0x7ca700, m1 0x6ceefc;
    virtual void updateBlendFunc() = imac 0x7ca940, m1 0x6cf064;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x7caf50, m1 0x6cf414;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x7caf30, m1 0x6cf404;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x7ca9b0, m1 0x6cf0d4;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x7ca870, m1 0x6cef94;

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
    // float getRespawn() const;
    // float getRespawnVar() const;
    // bool getStartRGBVarSync() const;
    // bool getStartRadiusEqualToEnd() const;
    // bool getStartSizeEqualToEnd() const;
    // bool getStartSpinEqualToEnd() const;
    float getTimeElapsed();
    void initParticle(cocos2d::sCCParticle*) = imac 0x7c8770, m1 0x6cd540;
    bool initWithDictionary(cocos2d::CCDictionary*, bool) = imac 0x7c82f0, m1 0x6cd17c, ios inline;
    bool initWithDictionary(cocos2d::CCDictionary*, char const*, bool) = imac 0x7c6940, m1 0x6cb988;
    bool initWithFile(char const*, bool) = m1 0x6cb684;
    bool isFull();
    void loadDefaults();
    void loadScaledDefaults(float) = imac 0x7cb250, m1 0x6cf608;
    void resetSystem() = imac 0x7c9810, m1 0x6ce29c;
    void resumeSystem() = imac 0x7c9800, m1 0x6ce290;
    void saveDefaults();
    void stopSystem() = imac 0x7c97d0, m1 0x6ce27c;
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
    CCParticleSystemQuad();
    virtual ~CCParticleSystemQuad() = imac 0x6024a0, m1 0x529e80;

    static cocos2d::CCParticleSystemQuad* create() = ios inline;
    static cocos2d::CCParticleSystemQuad* create(char const*, bool) = imac 0x602580, m1 0x529f18;
    static cocos2d::CCParticleSystemQuad* createWithTotalParticles(unsigned int, bool) = imac 0x602660;

    virtual void draw() = imac 0x602f40, m1 0x52a850;
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = imac 0x603510, m1 0x52ab28;
    virtual void setTotalParticles(unsigned int) = imac 0x603010, m1 0x52a918;
    virtual bool initWithTotalParticles(unsigned int, bool) = imac 0x601af0, m1 0x529a30;
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&) = imac 0x602bd0, m1 0x52a548;
    virtual void postStep() = imac 0x602ef0, m1 0x52a804;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x602a20, m1 0x52a364;

    bool allocMemory() = imac 0x601e50, m1 0x529b14;
    void initIndices();
    void initTexCoordsWithRect(cocos2d::CCRect const&) = imac 0x602750, m1 0x52a0f0;
    void listenBackToForeground(cocos2d::CCObject*);
    // unsigned char getOpacity();
    void setDisplayFrame(cocos2d::CCSpriteFrame*) = imac 0x602b40, m1 0x52a4b0;
    // void setOpacity(unsigned char);
    void setTextureWithRect(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
    [[missing(mac, ios)]]
    void setupVBO();
    [[missing(win, android)]]
    void setupVBOandVAO() = imac 0x602230;
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
    static cocos2d::CCPlace* create(cocos2d::CCPoint const&) = imac 0x7ac850, m1 0x6b3070;

    virtual void update(float) = imac 0x7aca00, m1 0x6b320c;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7ac910, m1 0x6b3114;

    bool initWithPosition(cocos2d::CCPoint const&) = imac 0x7ac8f0, m1 0x6b30f8;
}

[[link(win, android)]]
class cocos2d::CCPointArray : cocos2d::CCObject {
    CCPointArray() = m1 0x26be3c;
    virtual ~CCPointArray() = m1 0x26bc94;

    static cocos2d::CCPointArray* create(unsigned int) = m1 0x26b998;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x2d0660, m1 0x26ba5c;

    void addControlPoint(cocos2d::CCPoint) = m1 0x26be68;
    unsigned int count() = imac 0x2d0fa0, m1 0x26c2f0;
    cocos2d::CCPoint getControlPointAtIndex(unsigned int);
    gd::vector<cocos2d::CCPoint*> const* getControlPoints() = imac 0x2d0aa0, m1 0x26be60;
    bool initWithCapacity(unsigned int) = imac 0x2d0630, m1 0x26ba28;
    void insertControlPoint(cocos2d::CCPoint&, unsigned int) = imac 0x2d0bf0, m1 0x26bf70;
    void removeControlPointAtIndex(unsigned int) = imac 0x2d0f40, m1 0x26c288;
    void replaceControlPoint(cocos2d::CCPoint&, unsigned int);
    cocos2d::CCPointArray* reverse();
    void reverseInline() = m1 0x26c514;
    void setControlPoints(gd::vector<cocos2d::CCPoint*>*) = imac 0x2d0860, m1 0x26bc10;
}

[[link(win, android)]]
class cocos2d::CCPoolManager {
    CCPoolManager() = m1 0x36f3c0;
    ~CCPoolManager() = imac 0x3f65a0, m1 0x36f414;

    static void purgePoolManager() = imac 0x3f6500, m1 0x36f38c;
    static cocos2d::CCPoolManager* sharedPoolManager() = imac 0x3f6420, m1 0x36f294;

    void addObject(cocos2d::CCObject*) = imac 0x3f6920, m1 0x29e778;
    void finalize() = imac 0x3f66a0, m1 0x36f50c;
    cocos2d::CCAutoreleasePool* getCurReleasePool() = m1 0x36f7d8, ios inline;
    void pop();
    void push() = m1 0x36f5c8;
    void removeObject(cocos2d::CCObject*);
}

[[link(win, android)]]
class cocos2d::CCPrettyPrinter : cocos2d::CCDataVisitor {
    [[since("4.10.1")]]
    CCPrettyPrinter(int) = win inline, imac 0x4b4bc0, m1 0x415e7c;

    virtual void clear() = imac 0x4b4d70, m1 0x41606c;
    virtual gd::string getResult() = imac 0x4b4da0, m1 0x416090;
    virtual void visitObject(cocos2d::CCObject const*) = imac 0x4b4de0, m1 0x4160b8;
    virtual void visit(cocos2d::CCBool const*) = imac 0x4b4e60, m1 0x416138;
    virtual void visit(cocos2d::CCInteger const*) = imac 0x4b4ef0, m1 0x4161c8;
    virtual void visit(cocos2d::CCFloat const*) = imac 0x4b4f70, m1 0x41624c;
    virtual void visit(cocos2d::CCDouble const*) = imac 0x4b4ff0, m1 0x4162d4;
    virtual void visit(cocos2d::CCString const*) = imac 0x4b5070, m1 0x416358;
    virtual void visit(cocos2d::CCArray const*) = imac 0x4b50a0, m1 0x416384;
    virtual void visit(cocos2d::CCDictionary const*) = imac 0x4b55b0, m1 0x4167d0;
    virtual void visit(cocos2d::CCSet const*) = imac 0x4b5a50, m1 0x416b9c;

    void setIndentLevel(int) = imac 0x4b4c60, m1 0x415f34;
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
    static cocos2d::CCProgressFromTo* create(float, float, float) = imac 0x437680, m1 0x3a95b8;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x437770, m1 0x3a968c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x437870, m1 0x3a9774;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x437920, m1 0x3a9808;
    virtual void update(float) = imac 0x437930, m1 0x3a980c;

    bool initWithDuration(float, float, float) = imac 0x437730, m1 0x3a9654;
}

[[link(win, android)]]
class cocos2d::CCProgressTimer : cocos2d::CCNodeRGBA {
    // CCProgressTimer(cocos2d::CCProgressTimer const&);
    CCProgressTimer() = m1 0x52addc;
    virtual ~CCProgressTimer() = m1 0x52b1f4;

    static cocos2d::CCProgressTimer* create(cocos2d::CCSprite*) = imac 0x603ba0, m1 0x52aee4;

    virtual cocos2d::ccColor3B const& getColor() const = imac 0x604270, m1 0x52b4d0;
    virtual unsigned char getOpacity() const = imac 0x604370, m1 0x52b5c0;
    virtual void draw() = imac 0x606150, m1 0x52cb9c;
    virtual cocos2d::CCPoint getMidpoint() = imac 0x606030, m1 0x52cab4;
    virtual void setMidpoint(cocos2d::CCPoint) = imac 0x606050, m1 0x52cac0;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x604140, m1 0x52b3a8;
    virtual void setOpacity(unsigned char) = imac 0x604290, m1 0x52b4e0;

    cocos2d::CCPoint boundaryTexCoord(char) = imac 0x6060c0;
    bool initWithSprite(cocos2d::CCSprite*);
    // cocos2d::CCPoint getBarChangeRate() const;
    // float getPercentage();
    // cocos2d::CCSprite* getSprite();
    // cocos2d::CCProgressTimerType getType();
    void setAnchorPoint(cocos2d::CCPoint);
    // void setBarChangeRate(cocos2d::CCPoint);
    void setPercentage(float) = imac 0x603e10, m1 0x52b104;
    // void setReverseDirection(bool);
    void setReverseProgress(bool);
    void setSprite(cocos2d::CCSprite*) = imac 0x603e90, m1 0x52b174;
    void setType(cocos2d::CCProgressTimerType type) = ios inline;
    // bool isReverseDirection();
    cocos2d::ccTex2F textureCoordFromAlphaPoint(cocos2d::CCPoint);
    void updateBar();
    void updateColor();
    void updateProgress() = imac 0x604070, m1 0x52b2f4;
    void updateRadial();
    cocos2d::ccVertex2F vertexFromAlphaPoint(cocos2d::CCPoint);
}

[[link(win, android)]]
class cocos2d::CCProgressTo : cocos2d::CCActionInterval {
    static cocos2d::CCProgressTo* create(float, float) = imac 0x437440, m1 0x3a93b4;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x437510, m1 0x3a9478;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x437610, m1 0x3a9560;
    virtual void update(float) = imac 0x437650, m1 0x3a95a0;

    bool initWithDuration(float, float) = imac 0x4374e0, m1 0x3a9444;
}

[[link(win, android)]]
class cocos2d::CCRemoveSelf : cocos2d::CCActionInstant {
    static cocos2d::CCRemoveSelf* create(bool isNeedCleanUp) = m1 0x6b2b54, imac 0x7ac340, ios inline;

    // CCRemoveSelf(cocos2d::CCRemoveSelf const&);
    // CCRemoveSelf();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x7ac430, m1 0x6b2c38, ios inline;
    virtual void update(float time) = imac 0x7ac3b0, m1 0x6b2bc0, ios inline;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x7ac3d0, m1 0x6b2bd8, ios inline;

    bool init(bool isNeedCleanUp) = imac 0x7ac3a0, m1 0x6b2bb4, ios inline;
}

[[link(win, android)]]
class cocos2d::CCRenderTexture : cocos2d::CCNode {
    // CCRenderTexture(cocos2d::CCRenderTexture const&);
    [[since("4.0.1")]]
    CCRenderTexture() = m1 0x51de40, ios inline;
    [[since("4.0.1")]]
    virtual ~CCRenderTexture() = m1 0x51ded8;

    static cocos2d::CCRenderTexture* create(int, int) = imac 0x5f51f0, m1 0x51e53c;
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat) = imac 0x5f4cb0, m1 0x51e020;
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = imac 0x5f4d80, m1 0x51e100, ios inline;

    virtual void draw() = imac 0x5f5ae0, m1 0x51ed84;
    virtual void visit() = imac 0x5f5a50, m1 0x51ecec;
    virtual cocos2d::CCSprite* getSprite() = imac 0x5f4bc0, m1 0x51df78;
    virtual void setSprite(cocos2d::CCSprite*) = imac 0x5f4bd0, m1 0x51df80;

    void begin() = imac 0x5f52d0, m1 0x51e634;
    void beginWithClear(float, float, float, float) = imac 0x5f5500, m1 0x51e828;
    void beginWithClear(float, float, float, float, float) = imac 0x5f5740, m1 0x51ea10, ios inline;
    void beginWithClear(float, float, float, float, float, int) = imac 0x5f5820, m1 0x4f1d14, ios inline;
    void beginWithClear(float, float, float, float, float, int, unsigned int) = imac 0x5f55a0, m1 0x51e8c8;
    void clear(float, float, float, float);
    void clearDepth(float);
    void clearStencil(int);
    void end() = m1 0x51eae8;
    cocos2d::ccColor4F const& getClearColor() const;
    float getClearDepth() const;
    unsigned int getClearFlags() const;
    int getClearStencil() const;
    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat) = imac 0x5f4d70, m1 0x51e0f8, ios inline;
    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = m1 0x51e1e8;
    // void endToLua();
    bool isAutoDraw() const;
    void listenToBackground(cocos2d::CCObject*);
    void listenToForeground(cocos2d::CCObject*);
    cocos2d::CCImage* newCCImage(bool flipImage) = imac 0x5f5d90, m1 0x51efa4, ios inline;
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
    [[since("4.2.1")]]
    virtual ~CCRepeat() = m1 0x338c90, ios inline;

    static cocos2d::CCRepeat* create(cocos2d::CCFiniteTimeAction* pAction, unsigned int times) = imac 0x3b5dc0, m1 0x3389b8, ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x3b5f50, m1 0x338b40, ios inline;
    virtual void update(float dt) = imac 0x3b61f0, m1 0x338dd0, ios inline;
    virtual bool isDone() = imac 0x3b6310, m1 0x338f44, ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3b6170, m1 0x338d48, ios inline;
    virtual void stop() = imac 0x3b61c0, m1 0x338da0, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b6320, m1 0x338f54, ios inline;

    bool initWithAction(cocos2d::CCFiniteTimeAction* pAction, unsigned int times) = imac 0x3b5ec0, m1 0x338aa8, ios inline;
}

[[link(win, android)]]
class cocos2d::CCRepeatForever : cocos2d::CCActionInterval {
    // cocos2d::CCActionInterval* getInnerAction();
    // void setInnerAction(cocos2d::CCActionInterval*);
    // CCRepeatForever(cocos2d::CCRepeatForever const&);
    // CCRepeatForever();
    [[since("4.2.1")]]
    virtual ~CCRepeatForever() = m1 0x338f84, imac 0x3b6350;

    static cocos2d::CCRepeatForever* create(cocos2d::CCActionInterval*) = m1 0x33903c, imac 0x3b6410;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b64a0, m1 0x3390d8;
    virtual bool isDone() = imac 0x3b6630, m1 0x339280;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b6580, m1 0x3391a8;
    virtual void step(float) = imac 0x3b65c0, m1 0x3391e8;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b6640, m1 0x339288;

    bool initWithAction(cocos2d::CCActionInterval*) = m1 0x3390a8, ios inline;
}

[[link(win, android)]]
class cocos2d::CCReuseGrid : cocos2d::CCActionInstant {
    static cocos2d::CCReuseGrid* create(int) = m1 0x1b6908;

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x20aae0, m1 0x1b6984;

    bool initWithTimes(int) = imac 0x20aad0, m1 0x1b6978;
}

[[link(win, android)]]
class cocos2d::CCReverseTime : cocos2d::CCActionInterval {
    CCReverseTime() = m1 0x33dc2c;
    virtual ~CCReverseTime() = m1 0x33dc54;

    static cocos2d::CCReverseTime* create(cocos2d::CCFiniteTimeAction*) = m1 0x33da20;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3bba00, m1 0x33db28;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3bbc10, m1 0x33dd0c;
    virtual void stop() = imac 0x3bbc50, m1 0x33dd4c;
    virtual void update(float) = imac 0x3bbc80, m1 0x33dd7c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3bbcb0, m1 0x33dd9c;

    bool initWithAction(cocos2d::CCFiniteTimeAction*) = imac 0x3bb9a0, m1 0x33dacc;
}

[[link(win, android)]]
class cocos2d::CCRipple3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCRipple3D* create(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float) = imac 0x27e120, m1 0x22007c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27e2d0, m1 0x220218;
    virtual void update(float) = imac 0x27e450, m1 0x220364;

    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float) = m1 0x2201a4;
    void setPosition(cocos2d::CCPoint const&) = m1 0x220210;
}

[[link(win, android)]]
class cocos2d::CCRotateBy : cocos2d::CCActionInterval {
    static cocos2d::CCRotateBy* create(float, float) = imac 0x3b7820, m1 0x33a1c8;
    static cocos2d::CCRotateBy* create(float, float, float) = imac 0x3b7920, m1 0x33a290;

    // CCRotateBy(cocos2d::CCRotateBy const&);
    // CCRotateBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b7a20, m1 0x33a364;
    virtual void update(float) = imac 0x3b7b80, m1 0x33a4b4;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b7b30, m1 0x33a45c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b7bf0, m1 0x33a540;

    bool initWithDuration(float, float) = imac 0x3b78e0, m1 0x33a264, ios inline;
    bool initWithDuration(float, float, float) = ios inline;
}

[[link(win, android)]]
class cocos2d::CCRotateTo : cocos2d::CCActionInterval {
    static cocos2d::CCRotateTo* create(float, float) = imac 0x3b7360, m1 0x339dd0;
    static cocos2d::CCRotateTo* create(float fDuration, float fDeltaAngleX, float fDeltaAngleY) = imac 0x3b7460, m1 0x339e9c, ios inline;

    // CCRotateTo(cocos2d::CCRotateTo const&);
    // CCRotateTo();
    virtual bool initWithDuration(float fDuration, float fDeltaAngleX, float fDeltaAngleY) = imac 0x3b7530, m1 0x339f48;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b7570, m1 0x339f74;
    virtual void update(float) = imac 0x3b77b0, m1 0x33a13c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b7660, m1 0x33a05c;

    bool initWithDuration(float, float) = imac 0x3b7420, m1 0x339e70, ios inline;
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
    static cocos2d::CCScaleBy* create(float duration, float s) = m1 0x33c42c, ios inline;
    static cocos2d::CCScaleBy* create(float duration, float sx, float sy) = m1 0x33c4c4, ios inline;

    // CCScaleBy(cocos2d::CCScaleBy const&);
    // CCScaleBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x3ba1d0, m1 0x33c568, ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3ba2e0, m1 0x33c658, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3ba340, m1 0x33c6c8, ios inline;
}

[[link(win, android)]]
class cocos2d::CCScaleTo : cocos2d::CCActionInterval {
    static cocos2d::CCScaleTo* create(float, float) = m1 0x33c0d8, imac 0x3b9c50;
    static cocos2d::CCScaleTo* create(float, float, float) = m1 0x33c198, imac 0x3b9d50;

    // CCScaleTo(cocos2d::CCScaleTo const&);
    // CCScaleTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b9e60, m1 0x33c264;
    virtual void update(float) = imac 0x3b9fe0, m1 0x33c3c0;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b9f70, m1 0x33c354;

    bool initWithDuration(float duration, float s) = imac 0x3b9d10, m1 0x33c170, ios inline;
    bool initWithDuration(float duration, float sx, float sy) = ios inline;
}

[[link(win, android)]]
class cocos2d::CCScene : cocos2d::CCNode {
    // CCScene(cocos2d::CCScene const&);
    CCScene() = imac 0x290890, m1 0x230dec;
    virtual ~CCScene() = imac 0x290970, m1 0x230ee4;

    static cocos2d::CCScene* create() = imac 0x290a00, m1 0x230f58;

    virtual bool init() = imac 0x2909b0, m1 0x230f00;

    int getHighestChildZ() = imac 0x290ac0, m1 0x231038;
}

[[link(win, android)]]
class cocos2d::CCScheduler : cocos2d::CCObject {
    // float getTimeScale();
    // void setTimeScale(float);
    // CCScheduler(cocos2d::CCScheduler const&);
    CCScheduler();
    virtual ~CCScheduler();

    virtual void update(float) = imac 0x443850, m1 0x3b4f9c;

    void appendIn(cocos2d::_listEntry**, cocos2d::CCObject*, bool);
    bool isTargetPaused(cocos2d::CCObject*);
    cocos2d::CCSet* pauseAllTargets();
    cocos2d::CCSet* pauseAllTargetsWithMinPriority(int);
    void pauseTarget(cocos2d::CCObject*);
    void priorityIn(cocos2d::_listEntry**, cocos2d::CCObject*, int, bool);
    void removeHashElement(cocos2d::_hashSelectorEntry*);
    void removeUpdateFromHash(cocos2d::_listEntry*);
    void resumeTarget(cocos2d::CCObject*);
    void resumeTargets(cocos2d::CCSet*);
    unsigned int scheduleScriptFunc(unsigned int, float, bool);
    void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, bool) = imac 0x441c20, m1 0x3b3308;
    void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, unsigned int, float, bool) = m1 0x3b3318;
    void scheduleUpdateForTarget(cocos2d::CCObject*, int, bool) = imac 0x442820, m1 0x3b3f6c;
    void unscheduleAll() = m1 0x3b314c, imac 0x441a60;
    void unscheduleAllForTarget(cocos2d::CCObject*) = imac 0x442dc0, m1 0x3b4578;
    void unscheduleAllWithMinPriority(int);
    void unscheduleScriptEntry(unsigned int);
    void unscheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*) = imac 0x441750, m1 0x3b2e3c;
    void unscheduleUpdateForTarget(cocos2d::CCObject const*);
}

[[link(win, android)]]
class cocos2d::CCSchedulerScriptHandlerEntry : cocos2d::CCScriptHandlerEntry {

    [[since("4.10.1")]]
    virtual ~CCSchedulerScriptHandlerEntry();

    static cocos2d::CCSchedulerScriptHandlerEntry* create(int, float, bool);

    bool init(float, bool);
}

[[link(win, android)]]
class cocos2d::CCScriptEngineManager {
    // cocos2d::CCScriptEngineProtocol* getScriptEngine();
    ~CCScriptEngineManager();

    static void purgeSharedManager();
    static cocos2d::CCScriptEngineManager* sharedManager() = m1 0x2a9544;

    void removeScriptEngine();
    void setScriptEngine(cocos2d::CCScriptEngineProtocol* engine) = imac 0x31bac0, m1 0x2a9c1c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCScriptHandlerEntry : cocos2d::CCObject {

    [[since("4.10.1")]]
    virtual ~CCScriptHandlerEntry();

    static cocos2d::CCScriptHandlerEntry* create(int);
}

[[link(win, android)]]
class cocos2d::CCSequence : cocos2d::CCActionInterval {
    // CCSequence(cocos2d::CCSequence const&);
    // CCSequence();
    virtual ~CCSequence() = m1 0x3385f4;

    static cocos2d::CCSequence* create(cocos2d::CCArray*) = m1 0x3382bc;
    // static cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, ...) = imac 0x3a2600, m1 0x33d1fc, ios 0x18da90;
    static cocos2d::CCSequence* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3b5190, m1 0x337f74;
    static cocos2d::CCSequence* createWithVariableList(cocos2d::CCFiniteTimeAction*, va_list) = imac 0x3b5370, m1 0x3380bc;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b5890, m1 0x3384c8;
    virtual void update(float) = imac 0x3b5b50, m1 0x33875c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b5ad0, m1 0x3386d0;
    virtual void stop() = imac 0x3b5b10, m1 0x338718;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b5cd0, m1 0x3388d8;

    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3b5260, m1 0x338030;
}

[[link(win, android)]]
class cocos2d::CCSet : cocos2d::CCObject {
    //CCSet(cocos2d::CCSet const&) = imac 0x79df40, m1 0x6b0448, ios 0x1af714;
    CCSet() = m1 0x6b8f9c;
    virtual ~CCSet() = imac 0x7b2f80, m1 0x6b9114;

    static cocos2d::CCSet* create() = m1 0x6b9280, ios inline;

    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x7b30f0, m1 0x6b9268;

    void addObject(cocos2d::CCObject*) = imac 0x7b3230, m1 0x6b93a4;
    cocos2d::CCObject* anyObject() = m1 0x6b9594, ios inline;
    cocos2d::CCSetIterator begin() = imac 0x7b33e0, m1 0x6b957c;
    bool containsObject(cocos2d::CCObject*) = imac 0x7b3390, m1 0x6b9530;
    cocos2d::CCSet* copy() = m1 0x6b9308;
    int count() = imac 0x7b3220, m1 0x6b9398;
    cocos2d::CCSetIterator end() = imac 0x7b33f0, m1 0x6b9588;
    cocos2d::CCSet* mutableCopy() = m1 0x6b9350;
    void removeAllObjects() = imac 0x7b3040, m1 0x6b91d0;
    void removeObject(cocos2d::CCObject*);

    gd::set<cocos2d::CCObject*> m_pSet;
}

[[link(win, android)]]
class cocos2d::CCShaderCache : cocos2d::CCObject {
    // CCShaderCache(cocos2d::CCShaderCache const&);
    CCShaderCache();
    virtual ~CCShaderCache();

    static void purgeSharedShaderCache() = m1 0x1aec48;
    static cocos2d::CCShaderCache* sharedShaderCache() = imac 0x201cf0, m1 0x1aeb28;

    void addProgram(cocos2d::CCGLProgram*, char const*);
    bool init() = m1 0x1aebf8;
    void loadDefaultShader(cocos2d::CCGLProgram*, int) = m1 0x585ec0;
    void loadDefaultShaders() = imac 0x201f30, m1 0x1aed44;
    cocos2d::CCGLProgram* programForKey(char const*) = m1 0x1afac0;
    void reloadDefaultShaders() = imac 0x202850, m1 0x1af718, ios inline;
}

[[link(win, android)]]
class cocos2d::CCShaky3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCShaky3D* create(float, cocos2d::CCSize const&, int, bool);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27e740, m1 0x22061c;
    virtual void update(float) = imac 0x27e870, m1 0x220740;

    bool initWithDuration(float, cocos2d::CCSize const&, int, bool);
}

[[link(win, android)]]
class cocos2d::CCShakyTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCShakyTiles3D* create(float, cocos2d::CCSize const&, int, bool);

    virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool) = imac 0x7b4b00, m1 0x6bab00;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7b4b30, m1 0x6bab3c;
    virtual void update(float) = imac 0x7b4c50, m1 0x6bac54;
}

[[link(win, android)]]
class cocos2d::CCShatteredTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCShatteredTiles3D* create(float, cocos2d::CCSize const&, int, bool) = m1 0x6baf18;

    virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool) = imac 0x7b4fd0, m1 0x6bb018;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7b5010, m1 0x6bb058;
    virtual void update(float) = imac 0x7b5130, m1 0x6bb170;
}

[[link(win, android)]]
class cocos2d::CCShow : cocos2d::CCActionInstant {
    static cocos2d::CCShow* create() = m1 0x6b26f8;

    // CCShow(cocos2d::CCShow const&);
    // CCShow();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7ac040, m1 0x6b2814;
    virtual void update(float) = imac 0x7abf80, m1 0x6b2750;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x7abfa0, m1 0x6b2764;
}

[[link(win, android)]]
class cocos2d::CCShuffleTiles : cocos2d::CCTiledGrid3DAction {

    virtual ~CCShuffleTiles() = m1 0x6bb684;

    static cocos2d::CCShuffleTiles* create(float, cocos2d::CCSize const&, unsigned int) = imac 0x7b53d0, m1 0x6bb448;

    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int) = imac 0x7b54c0, m1 0x6bb540;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x7b58b0, m1 0x6bb904;
    virtual void update(float) = imac 0x7b5bd0, m1 0x6bbc0c;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7b54f0, m1 0x6bb570;

    cocos2d::CCSize getDelta(cocos2d::CCSize const&) = imac 0x7b5760, m1 0x6bb7cc;
    void placeTile(cocos2d::CCPoint const&, cocos2d::Tile*) = imac 0x7b5800, m1 0x6bb858;
    void shuffle(unsigned int*, unsigned int);
}

[[link(win, android)]]
class cocos2d::CCSkewBy : cocos2d::CCSkewTo {
    static cocos2d::CCSkewBy* create(float t, float sx, float sy) = m1 0x33afa4, ios inline;

    // CCSkewBy(cocos2d::CCSkewBy const&);
    // CCSkewBy();
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3b8930, m1 0x33b084, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b8a40, m1 0x33b160, ios inline;
    virtual bool initWithDuration(float t, float deltaSkewX, float deltaSkewY) = imac 0x3b88e0, m1 0x33b058, ios inline;
}

[[link(win, android)]]
class cocos2d::CCSkewTo : cocos2d::CCActionInterval {
    [[since("4.2.1")]]
    CCSkewTo() = m1 0x33ad00, ios inline;

    static cocos2d::CCSkewTo* create(float t, float sx, float sy) = m1 0x33ac64, ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x3b8530, m1 0x33ad58, ios inline;
    virtual void update(float t) = imac 0x3b8760, m1 0x33af18, ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3b8610, m1 0x33ae30, ios inline;
    virtual bool initWithDuration(float t, float sx, float sy) = imac 0x3b84f0, m1 0x33ad30, ios inline;
}

[[link(win, android)]]
class cocos2d::CCSpawn : cocos2d::CCActionInterval {
    // CCSpawn(cocos2d::CCSpawn const&);
    // CCSpawn();
    virtual ~CCSpawn() = m1 0x339b4c, imac 0x3b7100;

    static cocos2d::CCSpawn* create(cocos2d::CCArray* arrayOfActions) = m1 0x339550, imac 0x3b6a50, ios inline;
    // static cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction*, ...) = m1 0x33e430, imac 0x3b9e30;
    static cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction* first, ...) = win inline, imac inline, m1 inline, ios inline;
    static cocos2d::CCSpawn* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = m1 0x3394c4, imac 0x3b69c0;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b7000, m1 0x339a58;
    virtual void update(float) = imac 0x3b7260, m1 0x339cbc;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b71f0, m1 0x339c28;
    virtual void stop() = imac 0x3b7230, m1 0x339c7c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b72b0, m1 0x339d20;

    // static cocos2d::CCSpawn* createWithVariableList(cocos2d::CCFiniteTimeAction*, char*);
    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3b6c20, m1 0x339734;
}

[[link(win, android)]]
class cocos2d::CCSpeed : cocos2d::CCAction {
    // void setSpeed(float);
    // CCSpeed(cocos2d::CCSpeed const&);
    // CCSpeed();
    virtual ~CCSpeed() = m1 0x51d378;

    static cocos2d::CCSpeed* create(cocos2d::CCActionInterval*, float) = imac 0x5f3fa0, m1 0x51d454;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5f4080, m1 0x51d524;
    virtual bool isDone() = imac 0x5f4290, m1 0x51d70c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x5f4220, m1 0x51d6ac;
    virtual void stop() = imac 0x5f4240, m1 0x51d6c0;
    virtual void step(float) = imac 0x5f4270, m1 0x51d6f0;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5f42a0, m1 0x51d71c;

    bool initWithAction(cocos2d::CCActionInterval*, float) = imac 0x5f4040, m1 0x51d4e4;
    // cocos2d::CCActionInterval* getInnerAction();
    // float getSpeed();
    void setInnerAction(cocos2d::CCActionInterval*) = imac 0x5f4350, m1 0x51d7c0;
}

[[link(win, android)]]
class cocos2d::CCSplitCols : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCSplitCols* create(float, unsigned int);

    virtual bool initWithDuration(float, unsigned int) = imac 0x7b79c0, m1 0x6bd938;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7b7a10, m1 0x6bd98c;
    virtual void update(float) = imac 0x7b7b80, m1 0x6bdae8;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x7b7b40, m1 0x6bdaa8;
}

[[link(win, android)]]
class cocos2d::CCSplitRows : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCSplitRows* create(float, unsigned int);

    virtual bool initWithDuration(float, unsigned int) = imac 0x7b7610, m1 0x6bd5b0;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7b7660, m1 0x6bd604;
    virtual void update(float) = imac 0x7b77d0, m1 0x6bd760;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x7b7790, m1 0x6bd720;
}

[[link(win, android)]]
class cocos2d::CCSprite : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    // void setTextureAtlas(cocos2d::CCTextureAtlas*);
    // void setTlVertexMod(float);
    // void setTrVertexMod(float);
    // void setUseVertexMod(bool);
    // CCSprite(cocos2d::CCSprite const&);
    CCSprite() = imac 0x288690, m1 0x229d88;
    virtual ~CCSprite() = imac 0x288730, m1 0x229e10;

    static cocos2d::CCSprite* create() = m1 0x229910, imac 0x2881f0;
    static cocos2d::CCSprite* create(char const*) = m1 0x229600, imac 0x287ed0;
    static cocos2d::CCSprite* create(char const*, cocos2d::CCRect const&) = m1 0x2296f0, imac 0x287fc0;
    static cocos2d::CCSprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x2297f4, imac 0x2880c0;
    static cocos2d::CCSprite* createWithSpriteFrameName(char const*) = m1 0x2298e8, imac 0x2881c0;
    static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*) = m1 0x229384, imac 0x287c40;
    static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = m1 0x2294fc, imac 0x287dd0;

    virtual bool init() = imac 0x2882e0, m1 0x2299f8;
    virtual void setVertexZ(float) = imac 0x289db0, m1 0x22b230;
    virtual void setScaleX(float) = imac 0x289c50, m1 0x22b0a0;
    virtual void setScaleY(float) = imac 0x289cc0, m1 0x22b120;
    virtual void setScale(float) = imac 0x289d30, m1 0x22b1a0;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x2899a0, m1 0x22adc4;
    virtual void setSkewX(float) = imac 0x289b70, m1 0x22afb8;
    virtual void setSkewY(float) = imac 0x289be0, m1 0x22b02c;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x289e20, m1 0x22b2a4;
    virtual void setVisible(bool) = imac 0x289ea0, m1 0x22b31c;
    virtual void setRotation(float) = imac 0x289a20, m1 0x22ae5c;
    virtual void setRotationX(float) = imac 0x289a90, m1 0x22aed0;
    virtual void setRotationY(float) = imac 0x289b00, m1 0x22af44;
    virtual void ignoreAnchorPointForPosition(bool) = imac 0x289e90, m1 0x22b318;
    virtual void addChild(cocos2d::CCNode*) = imac 0x2894e0, m1 0x22a8f0;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x2894f0, m1 0x22a8f4;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x289500, m1 0x22a8f8;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x289640, m1 0x22aa60;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x289680, m1 0x22aaa8;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x2895c0, m1 0x22a9cc;
    virtual void sortAllChildren() = imac 0x289740, m1 0x22ab5c;
    virtual void draw() = imac 0x2893c0, m1 0x22a7e0;
    virtual void updateTransform() = imac 0x288eb0, m1 0x22a3f4;
    virtual bool initWithTexture(cocos2d::CCTexture2D*) = imac 0x2884a0, m1 0x229b74;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = imac 0x288480, m1 0x229b64;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = imac 0x288300, m1 0x229a10;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x288600, m1 0x229ce8;
    virtual bool initWithSpriteFrameName(char const*) = imac 0x288650, m1 0x229d4c;
    virtual bool initWithFile(char const*) = imac 0x288510, m1 0x229bf0;
    virtual bool initWithFile(char const*, cocos2d::CCRect const&) = imac 0x2885a0, m1 0x229c84;
    virtual void setChildColor(cocos2d::ccColor3B const&) = imac 0x28a4b0, m1 0x22b714;
    virtual void setChildOpacity(unsigned char) = imac 0x28a280, m1 0x22b5b8;
    virtual cocos2d::CCSpriteBatchNode* getBatchNode() = imac 0x28ac80, m1 0x22bb1c;
    virtual void setBatchNode(cocos2d::CCSpriteBatchNode*) = imac 0x28ac90, m1 0x22bb24;
    virtual void refreshTextureRect() = imac 0x288850, m1 0x229ef8;
    virtual void setTextureRect(cocos2d::CCRect const&) = imac 0x2888e0, m1 0x229f7c;
    virtual void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&) = imac 0x288900, m1 0x229f90;
    virtual void setVertexRect(cocos2d::CCRect const&) = imac 0x288c60, m1 0x22a220;
    virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = imac 0x28a970, m1 0x22b89c;
    virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = imac 0x28aa40, m1 0x22b970;
    virtual cocos2d::CCSpriteFrame* displayFrame() = imac 0x28aad0, m1 0x22ba14;
    virtual void setDisplayFrameWithAnimationName(char const*, int) = imac 0x28a9f0, m1 0x22b91c;
    virtual void setTextureCoords(cocos2d::CCRect const&) = imac 0x288c80, m1 0x22a228;
    virtual void updateBlendFunc() = imac 0x28ad00, m1 0x22bb70;
    virtual void setReorderChildDirtyRecursively() = imac 0x2898c0, m1 0x22ace0;
    virtual void setDirtyRecursively(bool) = imac 0x289920, m1 0x22ad48;
    virtual void setOpacity(unsigned char) = imac 0x28a0d0, m1 0x22b4c0;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x28a820, m1 0x22b850;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x28a330, m1 0x22b660;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = imac 0x28a6d0, m1 0x22b804;
    virtual void setOpacityModifyRGB(bool) = imac 0x28a560, m1 0x22b7bc;
    virtual bool isOpacityModifyRGB() = imac 0x28a6b0, m1 0x22b7f4;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x28ad60, m1 0x22bbcc;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x28aed0, m1 0x22bd0c;

    bool isFlipX() = imac 0x289f50, m1 0x22b3bc;
    bool isFlipY() = imac 0x289fa0;
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
    void setFlipX(bool) = imac 0x289f10, m1 0x22b390;
    void setFlipY(bool) = imac 0x289f60, m1 0x22b3c4;
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
    CCSpriteBatchNode() = imac 0x176280, m1 0x13c788;
    virtual ~CCSpriteBatchNode() = imac 0x1762d0, m1 0x13c7b8;

    static cocos2d::CCSpriteBatchNode* create(char const* fileImage, unsigned int capacity) = m1 0x13c600;
    static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int) = m1 0x13c410;

    virtual bool init() = imac 0x176230, m1 0x13c72c;
    virtual void addChild(cocos2d::CCNode*) = imac 0x1766e0, m1 0x13cbac;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x1766f0, m1 0x13cbb0;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x1764a0, m1 0x13c95c;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x176760, m1 0x13cc28;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x176a40, m1 0x13ce8c;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x176700, m1 0x13cbb4;
    virtual void sortAllChildren() = imac 0x176af0, m1 0x13cf2c;
    virtual void draw() = imac 0x1772b0, m1 0x13d4b8;
    virtual void visit() = imac 0x176400, m1 0x13c8ac;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x177b20, m1 0x13dd24;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x177b40, m1 0x13dd34;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x177b60, m1 0x13dd44;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x177b90, m1 0x13dd64;

    cocos2d::CCSpriteBatchNode* addSpriteWithoutQuad(cocos2d::CCSprite*, unsigned int, int);
    void appendChild(cocos2d::CCSprite*);
    unsigned int atlasIndexForChild(cocos2d::CCSprite*, int);
    int getAtlasCapacity();
    int getUsedAtlasCapacity();
    unsigned int highestAtlasIndexInChild(cocos2d::CCSprite*);
    void increaseAtlasCapacity();
    void increaseAtlasCapacity(unsigned int);
    bool initWithFile(char const*, unsigned int);
    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x175fb0, m1 0x13c4c4;
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
    [[since("4.2.1")]]
    virtual ~CCSpriteFrame();

    static cocos2d::CCSpriteFrame* create(char const* filename, cocos2d::CCRect const& rect) = ios inline;
    static cocos2d::CCSpriteFrame* create(char const* filename, cocos2d::CCRect const& rect, bool rotated, cocos2d::CCPoint const& offset, cocos2d::CCSize const& size) = ios inline;
    static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D* pobTexture, cocos2d::CCRect const& rect) = ios inline;
    static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);

    // bool isRotated();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x357cc0, m1 0x2e3a80;

    cocos2d::CCPoint const& getOffset() = imac 0x358020, m1 0x2e3d18;
    cocos2d::CCPoint const& getOffsetInPixels() = imac 0x3580c0, m1 0x2e3d8c;
    // cocos2d::CCSize const& getOriginalSize();
    // cocos2d::CCSize const& getOriginalSizeInPixels();
    // cocos2d::CCRect const& getRect();
    // cocos2d::CCRect const& getRectInPixels();
    cocos2d::CCTexture2D* getTexture() = imac 0x358160, m1 0x2e3e00;
    bool initWithTexture(cocos2d::CCTexture2D* pobTexture, cocos2d::CCRect const& rect) = ios inline;
    bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x357640, m1 0x2e3554;
    bool initWithTextureFilename(char const* filename, cocos2d::CCRect const& rect) = ios inline;
    bool initWithTextureFilename(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x357970, m1 0x2e37c0;
    void setOffset(cocos2d::CCPoint const&) = imac 0x358030, m1 0x2e3d20, ios inline;
    void setOffsetInPixels(cocos2d::CCPoint const&) = imac 0x3580d0, m1 0x2e3d94, ios inline;
    // void setOriginalSize(cocos2d::CCSize const&);
    // void setOriginalSizeInPixels(cocos2d::CCSize const&);
    void setRect(cocos2d::CCRect const&) = imac 0x357e60, m1 0x2e3bdc, ios inline;
    void setRectInPixels(cocos2d::CCRect const&) = imac 0x357f40, m1 0x2e3c78, ios inline;
    // void setRotated(bool);
    void setTexture(cocos2d::CCTexture2D*) = imac 0x357e20, m1 0x2e3b98;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrameCache : cocos2d::CCObject {
    // CCSpriteFrameCache();
    // CCSpriteFrameCache(cocos2d::CCSpriteFrameCache const&);
    virtual ~CCSpriteFrameCache();

    static void purgeSharedSpriteFrameCache();
    static cocos2d::CCSpriteFrameCache* sharedSpriteFrameCache() = imac 0x31bb80, m1 0x2a9cf0;

    void addSpriteFrame(cocos2d::CCSpriteFrame* pobFrame, char const* pszFrameName) = ios inline;
    void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*) = imac 0x31be70, m1 0x2a9fc4;
    void addSpriteFramesWithFile(char const*) = m1 0x2aab08, imac 0x31ca70;
    void addSpriteFramesWithFile(char const* plist, char const* textureFilename) = m1 0x2aaa98, ios inline;
    void addSpriteFramesWithFile(char const* plist, cocos2d::CCTexture2D* texture) = m1 0x2aaa50, ios inline;
    bool init();
    void removeSpriteFrameByName(char const* name) = m1 0x2ab180, ios inline;
    void removeSpriteFrames() = m1 0x2ab09c;
    void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*) = m1 0x2ab714;
    void removeSpriteFramesFromFile(char const*) = m1 0x2ab448;
    void removeSpriteFramesFromTexture(cocos2d::CCTexture2D*) = m1 0x2ab94c;
    void removeUnusedSpriteFrames();
    cocos2d::CCSpriteFrame* spriteFrameByName(char const*) = imac 0x31d9c0, m1 0x2abc34;
}

[[link(win, android)]]
class cocos2d::CCStandardTouchHandler : cocos2d::CCTouchHandler {

    virtual ~CCStandardTouchHandler();

    static cocos2d::CCStandardTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int);

    virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int) = imac 0x480eb0, m1 0x3e7030;
}

[[link(win, android)]]
class cocos2d::CCStopGrid : cocos2d::CCActionInstant {
    static cocos2d::CCStopGrid* create() = m1 0x1b68a0;

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x20a9b0, m1 0x1b6850;
}

[[link(win, android)]]
class cocos2d::CCString : cocos2d::CCObject {
    static cocos2d::CCString* createWithContentsOfFile(char const*) = m1 0x6b1bac;
    static cocos2d::CCString* createWithData(unsigned char const*, unsigned long) = imac 0x7aae20, m1 0x6b196c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7aabe0, m1 0x6b1728;
    virtual bool isEqual(cocos2d::CCObject const*) = imac 0x7aace0, m1 0x6b1828;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x7ab150, m1 0x6b1c18;

    bool boolValue() const;
    int compare(char const*) const = imac 0x7aabc0, m1 0x6b170c, ios inline;
    double doubleValue() const;
    float floatValue() const;
    // static cocos2d::CCString* createWithFormat(char const*, ...) = ios 0x2680c0, m1 0x6a8cd0;
    char const* getCString() const = imac 0x7aa790, m1 0x6b1324;
    int intValue() const = m1 0x6b15bc;
    unsigned int length() const = imac 0x7aaab0, m1 0x6b15e8;
    unsigned int uintValue() const = ios inline;

    gd::string m_sString;
}

[[link(win, android)]]
class cocos2d::CCTargetedAction : cocos2d::CCActionInterval {
    CCTargetedAction() = m1 0x33e68c;
    virtual ~CCTargetedAction() = m1 0x1bf894;

    static cocos2d::CCTargetedAction* create(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*) = m1 0x33e790;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3bc950, m1 0x33e8a0;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3bca70, m1 0x33e9a4;
    virtual void stop() = imac 0x3bcaa0, m1 0x33e9dc;
    virtual void update(float) = imac 0x3bcab0, m1 0x33e9ec;

    bool initWithTarget(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*) = imac 0x3bc8e0, m1 0x33e834;
}

[[link(win, android)]]
class cocos2d::CCTargetedTouchHandler : cocos2d::CCTouchHandler {

    virtual ~CCTargetedTouchHandler() = m1 0x3e72d4;

    static cocos2d::CCTargetedTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int, bool);

    cocos2d::CCSet* getClaimedTouches() = imac 0x480fe0, m1 0x3e7158;
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
    CCTextFieldTTF();
    virtual ~CCTextFieldTTF() = imac 0x27b940;

    static cocos2d::CCTextFieldTTF* textFieldWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize) = imac 0x27bca0, m1 0x21dde4;
    static cocos2d::CCTextFieldTTF* textFieldWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize) = imac 0x27ba90, m1 0x21dbe0, ios inline;

    // void setDelegate(cocos2d::CCTextFieldDelegate* var);
    virtual void draw() = imac 0x27c6f0, m1 0x21e86c;
    virtual const cocos2d::ccColor3B& getColorSpaceHolder() = imac 0x27c790, m1 0x21e928;
    virtual void setColorSpaceHolder(const cocos2d::ccColor3B& color) = imac 0x27c7a0, m1 0x21e930;
    virtual const char* getPlaceHolder() = imac 0x27cc10, m1 0x21ed34;
    virtual void setPlaceHolder(const char* text) = imac 0x27cab0, m1 0x21ebe8;
    virtual void setSecureTextEntry(bool value) = imac 0x27cc30, m1 0x21ed4c;
    virtual bool isSecureTextEntry() = imac 0x27cc70, m1 0x21ed98;
    virtual void setString(const char* text) = imac 0x27c7c0, m1 0x21e944;
    virtual const char* getString() = imac 0x27ca70, m1 0x21ebb8;
    virtual bool attachWithIME() = imac 0x27be70, m1 0x21dfcc;
    virtual bool detachWithIME() = imac 0x27bef0, m1 0x21e058;
    virtual bool canAttachWithIME() = imac 0x27bf70, m1 0x21e0e4;
    virtual bool canDetachWithIME() = imac 0x27bfc0, m1 0x21e150;
    virtual void insertText(const char* text, int len, cocos2d::enumKeyCodes keyCode) = imac 0x27c010, m1 0x21e1bc;
    virtual void deleteBackward() = imac 0x27c350, m1 0x21e534;
    [[since("4.10.1")]]
    virtual void deleteForward() = imac 0x27c2f0, m1 0x21e4d4;
    virtual const char* getContentText() = imac 0x27c6b0, m1 0x21e83c;

    bool initWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize) = ios inline;
    bool initWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize) = ios inline;
}

[[link(win, android)]]
class cocos2d::CCTexture2D : cocos2d::CCObject {
    CCTexture2D() = imac 0x477a60, m1 0x3de97c;
    // CCTexture2D(cocos2d::CCTexture2D const&);
    virtual ~CCTexture2D() = imac 0x477ac0, m1 0x3de9e0;

    static cocos2d::CCTexture2DPixelFormat defaultAlphaPixelFormat();
    static void PVRImagesHavePremultipliedAlpha(bool) = imac 0x478f30;
    static void setDefaultAlphaPixelFormat(cocos2d::CCTexture2DPixelFormat) = m1 0x3dff50;

    virtual cocos2d::CCTexture2DPixelFormat getPixelFormat() = imac 0x477bb0, m1 0x3deabc;
    virtual unsigned int getPixelsWide() = imac 0x477bc0, m1 0x3deac4;
    virtual unsigned int getPixelsHigh() = imac 0x477bd0, m1 0x3deacc;
    virtual unsigned int getName() = imac 0x477be0, m1 0x3dead4;
    virtual float getMaxS() = imac 0x477c70, m1 0x3deb3c;
    virtual void setMaxS(float) = imac 0x477c80, m1 0x3deb44;
    virtual float getMaxT() = imac 0x477c90, m1 0x3deb4c;
    virtual void setMaxT(float) = imac 0x477ca0, m1 0x3deb54;
    virtual cocos2d::CCSize getContentSize() = imac 0x477bf0, m1 0x3deadc;
    virtual cocos2d::CCGLProgram* getShaderProgram() = imac 0x477cb0, m1 0x3deb5c;
    virtual void setShaderProgram(cocos2d::CCGLProgram*) = imac 0x477cc0, m1 0x3deb64;

    unsigned int bitsPerPixelForFormat() = m1 0x3dff68, ios inline;
    unsigned int bitsPerPixelForFormat(cocos2d::CCTexture2DPixelFormat) = m1 0x3deec4, ios inline;
    char const* description() = imac 0x478080, m1 0x3deee4;
    void drawAtPoint(cocos2d::CCPoint const&) = imac 0x478b80, m1 0x3df9e8;
    void drawInRect(cocos2d::CCRect const&) = imac 0x478c90, m1 0x3dfb00;
    void generateMipmap() = imac 0x478f40, m1 0x3dfd9c;
    cocos2d::CCSize const& getContentSizeInPixels() = imac 0x477c60, m1 0x3deb34;
    bool hasMipmaps();
    bool hasPremultipliedAlpha();
    bool initPremultipliedATextureWithImage(cocos2d::CCImage*, unsigned int, unsigned int) = imac 0x17e370, m1 0x3defa4;
    bool initWithData(void const*, cocos2d::CCTexture2DPixelFormat, unsigned int, unsigned int, cocos2d::CCSize const&) = m1 0x3debe4;
    bool initWithETCFile(char const*) = imac 0x478e60, m1 0x3dfcc8;
    bool initWithImage(cocos2d::CCImage*) = m1 0x3def28, imac 0x4780c0;
    bool initWithPVRFile(char const*) = imac 0x478d80, m1 0x3dfbf4;
    bool initWithString(char const*, cocos2d::ccFontDefinition*);
    bool initWithString(char const*, char const*, float) = imac 0x4789d0, m1 0x3df824;
    bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment) = imac 0x478a30, m1 0x3df894;
    void* keepData(void*, unsigned int);
    void releaseData(void*);
    void releaseGLTexture() = imac 0x477d00, m1 0x3deba0;
    void setAliasTexParameters();
    void setAntiAliasTexParameters();
    void setTexParameters(cocos2d::ccTexParams*) = imac 0x478f90, m1 0x3dfdf4;
    char const* stringForFormat() = m1 0x3dff2c;
}

[[link(win, android)]]
class cocos2d::CCTextureAtlas : cocos2d::CCObject {
    // void setDirty(bool);
    // CCTextureAtlas(cocos2d::CCTextureAtlas const&);
    CCTextureAtlas() = m1 0x40f4c0;
    virtual ~CCTextureAtlas() = m1 0x40f4f0;

    static cocos2d::CCTextureAtlas* create(char const*, unsigned int);
    static cocos2d::CCTextureAtlas* createWithTexture(cocos2d::CCTexture2D*, unsigned int);

    virtual unsigned int getTotalQuads() = imac 0x4ac850, m1 0x40f584;
    virtual unsigned int getCapacity() = imac 0x4ac860, m1 0x40f58c;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x4ac870, m1 0x40f594;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x4ac880, m1 0x40f59c;
    virtual cocos2d::ccV3F_C4B_T2F_Quad* getQuads() = imac 0x4ac8c0, m1 0x40f5d8;
    virtual void setQuads(cocos2d::ccV3F_C4B_T2F_Quad*) = imac 0x4ac8d0, m1 0x40f5e8;

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
    static cocos2d::CCTextureCache* sharedTextureCache() = imac 0x5ec270, m1 0x516194;

    cocos2d::CCTexture2D* addETCImage(char const*);
    cocos2d::CCTexture2D* addImage(char const*, bool) = imac 0x36c8a0, m1 0x51735c;
    void addImageAsync(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler, int, cocos2d::CCTexture2DPixelFormat) = m1 0x516630;
    void addImageAsyncCallBack(float);
    cocos2d::CCTexture2D* addPVRImage(char const*);
    cocos2d::CCTexture2D* addUIImage(cocos2d::CCImage*, char const*) = m1 0x5181ec;
    char const* description() = m1 0x516470;
    void dumpCachedTextureInfo();
    void prepareAsyncLoading();
    bool reloadTexture(char const*);
    void removeAllTextures();
    void removeTexture(cocos2d::CCTexture2D*);
    void removeTextureForKey(char const*) = imac 0x5ee8c0, m1 0x38a680;
    void removeUnusedTextures();
    cocos2d::CCDictionary* snapshotTextures();
    cocos2d::CCTexture2D* textureForKey(char const*) = imac 0x5ee940, m1 0x518834;
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
    CCTiledGrid3D();
    virtual ~CCTiledGrid3D() = m1 0x43f508;

    static cocos2d::CCTiledGrid3D* create(cocos2d::CCSize const&) = m1 0x43f670;
    static cocos2d::CCTiledGrid3D* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = m1 0x43f5b4;

    virtual void blit() = imac 0x4e43d0, m1 0x43f73c;
    virtual void reuse() = imac 0x4e4a90, m1 0x43faf0;
    virtual void calculateVertexPoints() = imac 0x4e4470, m1 0x43f7e0;

    cocos2d::ccQuad3 originalTile(cocos2d::CCPoint const&) = imac 0x4e49f0, m1 0x43fa78;
    void setTile(cocos2d::CCPoint const&, cocos2d::ccQuad3 const&) = imac 0x4e49a0, m1 0x43fa3c;
    cocos2d::ccQuad3 tile(cocos2d::CCPoint const&);
}

[[link(win, android)]]
class cocos2d::CCTiledGrid3DAction : cocos2d::CCGridAction {
    static cocos2d::CCTiledGrid3DAction* create(float, cocos2d::CCSize const&) = imac 0x209f80;

    virtual cocos2d::CCGridBase* getGrid() = imac 0x209ee0, m1 0x1b5d34;

    cocos2d::ccQuad3 originalTile(cocos2d::CCPoint const&) = m1 0x1b5d74;
    void setTile(cocos2d::CCPoint const&, cocos2d::ccQuad3 const&);
    cocos2d::ccQuad3 tile(cocos2d::CCPoint const&) = m1 0x1b5d3c;
}

[[link(win, android)]]
class cocos2d::CCTileMapAtlas : cocos2d::CCAtlasNode {
    CCTileMapAtlas() = m1 0x1d5e48;
    virtual ~CCTileMapAtlas() = m1 0x1d6358;

    static cocos2d::CCTileMapAtlas* create(char const*, char const*, int, int);

    virtual cocos2d::sImageTGA* getTGAInfo() = imac 0x22d210, m1 0x1d6aa4;
    virtual void setTGAInfo(cocos2d::sImageTGA*) = imac 0x22d200, m1 0x1d6a9c;
    virtual void updateAtlasValues() = imac 0x22cfd0, m1 0x1d6860;

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

    virtual void update(float) = imac 0x4415a0, m1 0x3b2c50;

    float getInterval() const;
    cocos2d::SEL_SCHEDULE getSelector() const;
    bool initWithScriptHandler(int, float);
    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE);
    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE, float, unsigned int, float);
    void setInterval(float);
}

[[link(win, android)]]
class cocos2d::CCTintBy : cocos2d::CCActionInterval {
    static cocos2d::CCTintBy* create(float, short, short, short) = imac 0x3bb310, m1 0x33d4dc;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3bb420, m1 0x33d5bc;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3bb540, m1 0x33d6bc;
    virtual void update(float) = imac 0x3bb5b0, m1 0x33d734;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3bb680, m1 0x33d804;

    bool initWithDuration(float, short, short, short) = imac 0x3bb3e0;
}

[[link(win, android)]]
class cocos2d::CCTintTo : cocos2d::CCActionInterval {
    static cocos2d::CCTintTo* create(float, unsigned char, unsigned char, unsigned char) = imac 0x3bafa0, m1 0x33d1dc;

    // CCTintTo(cocos2d::CCTintTo const&);
    // CCTintTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3bb0c0, m1 0x33d2b8;
    virtual void update(float) = imac 0x3bb230, m1 0x33d418;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3bb1d0, m1 0x33d3ac;

    bool initWithDuration(float, unsigned char, unsigned char, unsigned char) = imac 0x3bb070, m1 0x33d288, ios inline;
}

[[link(win, android)]]
class cocos2d::CCTMXLayer : cocos2d::CCSpriteBatchNode {
    CCTMXLayer();
    virtual ~CCTMXLayer() = m1 0x1febec;

    static cocos2d::CCTMXLayer* create(cocos2d::CCTMXTilesetInfo*, cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);

    virtual cocos2d::CCTMXTilesetInfo* getTileSet() = imac 0x259b70, m1 0x1feca0;
    virtual void setTileSet(cocos2d::CCTMXTilesetInfo*) = imac 0x259b80, m1 0x1feca8;
    virtual cocos2d::CCDictionary* getProperties() = imac 0x25b4d0, m1 0x200354;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x25b4e0, m1 0x20035c;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x25b300, m1 0x20020c;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x25b310, m1 0x200210;

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
    CCTMXLayerInfo() = m1 0x42b498;
    virtual ~CCTMXLayerInfo();

    virtual cocos2d::CCDictionary* getProperties() = imac 0x4cc960, m1 0x42b6c0;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x4cc970, m1 0x42b6c8;
}

[[link(win, android)]]
class cocos2d::CCTMXMapInfo : cocos2d::CCObject, cocos2d::CCSAXDelegator {
    CCTMXMapInfo();
    virtual ~CCTMXMapInfo() = m1 0x42c02c;

    static cocos2d::CCTMXMapInfo* formatWithTMXFile(char const*);
    static cocos2d::CCTMXMapInfo* formatWithXML(char const*, char const*);

    virtual cocos2d::CCArray* getLayers() = imac 0x4cd3f0, m1 0x42c108;
    virtual void setLayers(cocos2d::CCArray*) = imac 0x4cd400, m1 0x42c110;
    virtual cocos2d::CCArray* getTilesets() = imac 0x4cd440, m1 0x42c14c;
    virtual void setTilesets(cocos2d::CCArray*) = imac 0x4cd450, m1 0x42c154;
    virtual cocos2d::CCArray* getObjectGroups() = imac 0x4cd490, m1 0x42c190;
    virtual void setObjectGroups(cocos2d::CCArray*) = imac 0x4cd4a0, m1 0x42c198;
    virtual cocos2d::CCDictionary* getProperties() = imac 0x4cd4e0, m1 0x42c1d4;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x4cd4f0, m1 0x42c1dc;
    virtual void startElement(void*, char const*, char const**) = imac 0x4cd580, m1 0x42c25c;
    virtual void endElement(void*, char const*) = imac 0x4d0720, m1 0x42ebb0;
    virtual void textHandler(void*, char const*, int) = imac 0x4d0b60, m1 0x42f028;

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
    CCTMXObjectGroup() = m1 0x4004f4;
    virtual ~CCTMXObjectGroup() = m1 0x4005a8;

    virtual cocos2d::CCDictionary* getProperties() = imac 0x49c620, m1 0x400938;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x49c630, m1 0x400940;
    virtual cocos2d::CCArray* getObjects() = imac 0x49c670, m1 0x40097c;
    virtual void setObjects(cocos2d::CCArray*) = imac 0x49c680, m1 0x400984;

    cocos2d::CCDictionary* objectNamed(char const*);
    cocos2d::CCString* propertyNamed(char const*);
}

[[link(win, android)]]
class cocos2d::CCTMXTiledMap : cocos2d::CCNode {
    CCTMXTiledMap();
    virtual ~CCTMXTiledMap() = m1 0x46e998;

    static cocos2d::CCTMXTiledMap* create(char const*);
    static cocos2d::CCTMXTiledMap* createWithXML(char const*, char const*);

    virtual cocos2d::CCArray* getObjectGroups() = imac 0x5182f0, m1 0x46ea98;
    virtual void setObjectGroups(cocos2d::CCArray*) = imac 0x518300, m1 0x46eaa0;
    virtual cocos2d::CCDictionary* getProperties() = imac 0x518340, m1 0x46eadc;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x518350, m1 0x46eae4;

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
    static cocos2d::CCToggleVisibility* create() = m1 0x6b2a00;

    virtual void update(float) = imac 0x7ac260, m1 0x6b2a58;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7ac290, m1 0x6b2a94;
}

[[link(win, android)]]
class cocos2d::CCTouch : cocos2d::CCObject {
    cocos2d::CCPoint getDelta() const = m1 0x4ce04, ios inline;
    cocos2d::CCPoint getLocation() const = m1 0x4cd80, imac 0x59650;
    cocos2d::CCPoint getLocationInView() const = imac 0x595f0, m1 0x4cd5c;
    cocos2d::CCPoint getPreviousLocation() const = m1 0x4cdac, ios inline;
    cocos2d::CCPoint getPreviousLocationInView() const;
    cocos2d::CCPoint getStartLocation() const = m1 0x4cdd8, ios inline;
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

    virtual void setPreviousPriority(int) ;
    virtual int getPreviousPriority() ;
}

[[link(win, android)]]
class cocos2d::CCTouchDispatcher : cocos2d::CCObject, cocos2d::EGLTouchDelegate {
    // CCTouchDispatcher(cocos2d::CCTouchDispatcher const&);
    // CCTouchDispatcher();
    virtual ~CCTouchDispatcher();

    virtual void touchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4cc5f0, m1 0x42b364;
    virtual void touchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4cc630, m1 0x42b398;
    virtual void touchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4cc670, m1 0x42b3cc;
    virtual void touchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4cc6b0, m1 0x42b400;

    void addPrioTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x4cb700, m1 0x42a460;
    void addStandardDelegate(cocos2d::CCTouchDelegate*, int);
    void addTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x4cb720, m1 0x42a478;
    void decrementForcePrio(int);
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCTouchDelegate*) = imac 0x4cbd00, m1 0x42aadc;
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCArray*, cocos2d::CCTouchDelegate*);
    void forceAddHandler(cocos2d::CCTouchHandler*, cocos2d::CCArray*);
    void forceRemoveAllDelegates();
    void forceRemoveDelegate(cocos2d::CCTouchDelegate*) = imac 0x4cba90, m1 0x42a830;
    void incrementForcePrio(int);
    bool init() = imac 0x4cb450, m1 0x42a1cc;
    bool isDispatchEvents();
    bool isUsingForcePrio() = imac 0x4cb6f0, m1 0x42a450;
    void rearrangeHandlers(cocos2d::CCArray* handlers) = imac 0x4cbdc0, m1 0x42abb8, ios inline;
    void registerForcePrio(cocos2d::CCObject*, int) = imac 0x4cb600, m1 0x42a338;
    void removeAllDelegates();
    void removeDelegate(cocos2d::CCTouchDelegate*);
    // int getTargetPrio() const;
    void setDispatchEvents(bool);
    void setPriority(int p1, cocos2d::CCTouchDelegate* p2) = imac 0x4cbe40, m1 0x42ac40, ios inline;
    void touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int) = imac 0x4cbf90, m1 0x42adb0;
    void unregisterForcePrio(cocos2d::CCObject*) = imac 0x4cb6a0, m1 0x42a3ec;

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

    static cocos2d::CCTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int);

    // CCTouchHandler(cocos2d::CCTouchHandler const&);
    // CCTouchHandler();
    virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int) = imac 0x480d30, m1 0x3e6eb8;

    cocos2d::CCTouchDelegate* getDelegate() = imac 0x480bc0, m1 0x3e6d7c;
    int getEnabledSelectors();
    int getPriority() = imac 0x480c40, m1 0x3e6df0, ios inline;
    void setDelegate(cocos2d::CCTouchDelegate*);
    void setEnalbedSelectors(int);
    void setPriority(int prio) = imac 0x480c50, m1 0x3e6df8, ios inline;

    cocos2d::CCTouchDelegate* m_pDelegate;
    int m_nPriority;
    int m_nEnabledSelectors;
}

[[link(win, android)]]
class cocos2d::CCTouchScriptHandlerEntry : cocos2d::CCScriptHandlerEntry {

    [[since("4.10.1")]]
    virtual ~CCTouchScriptHandlerEntry();

    static cocos2d::CCTouchScriptHandlerEntry* create(int, bool, int, bool);

    bool init(bool, int, bool);
}

[[link(win, android)]]
class cocos2d::CCTransitionCrossFade : cocos2d::CCTransitionScene {
    // CCTransitionCrossFade(cocos2d::CCTransitionCrossFade const&);
    CCTransitionCrossFade();
    virtual ~CCTransitionCrossFade();

    static cocos2d::CCTransitionCrossFade* create(float, cocos2d::CCScene*) = m1 0xbf664;

    virtual void onEnter() = imac 0xd8e40, m1 0xbf708;
    virtual void onExit() = imac 0xd9180, m1 0xbfa40;
    virtual void draw() = imac 0xd8e30, m1 0xbf704;
}

[[link(win, android)]]
class cocos2d::CCTransitionFade : cocos2d::CCTransitionScene {
    // CCTransitionFade(cocos2d::CCTransitionFade const&);
    CCTransitionFade();
    virtual ~CCTransitionFade();

    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*) = m1 0xbf2c8, imac 0xd89f0;
    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::ccColor3B const&) = imac 0xd8950, m1 0xbf22c;

    virtual void onEnter() = imac 0xd8ae0, m1 0xbf3b4;
    virtual void onExit() = imac 0xd8c10, m1 0xbf4f0;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xd8ac0, m1 0xbf38c;
    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::ccColor3B const&) = imac 0xd8a70, m1 0xbf348;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeBL : cocos2d::CCTransitionFadeTR {
    // CCTransitionFadeBL(cocos2d::CCTransitionFadeBL const&);
    CCTransitionFadeBL();
    virtual ~CCTransitionFadeBL();

    static cocos2d::CCTransitionFadeBL* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = imac 0xd9f40, m1 0xc06e8;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeDown : cocos2d::CCTransitionFadeTR {
    // CCTransitionFadeDown(cocos2d::CCTransitionFadeDown const&);
    CCTransitionFadeDown();
    virtual ~CCTransitionFadeDown();

    static cocos2d::CCTransitionFadeDown* create(float, cocos2d::CCScene*) = m1 0xc09d0;

    virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = imac 0xda340, m1 0xc0a78;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeTR : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionFadeTR(cocos2d::CCTransitionFadeTR const&);
    CCTransitionFadeTR();
    virtual ~CCTransitionFadeTR();

    static cocos2d::CCTransitionFadeTR* create(float, cocos2d::CCScene*) = m1 0xc0364;

    virtual void onEnter() = imac 0xd9c20, m1 0xc0414;
    virtual void sceneOrder() = imac 0xd9c10, m1 0xc040c;
    virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = imac 0xd9d20, m1 0xc0510;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xd9d40, m1 0xc051c;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeUp : cocos2d::CCTransitionFadeTR {
    // CCTransitionFadeUp(cocos2d::CCTransitionFadeUp const&);
    CCTransitionFadeUp();
    virtual ~CCTransitionFadeUp();

    static cocos2d::CCTransitionFadeUp* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = imac 0xda140, m1 0xc08b0;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipAngular : cocos2d::CCTransitionSceneOriented {
    // CCTransitionFlipAngular(cocos2d::CCTransitionFlipAngular const&);
    CCTransitionFlipAngular();
    virtual ~CCTransitionFlipAngular();

    static cocos2d::CCTransitionFlipAngular* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = imac 0xd7880, m1 0xbe2d0;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipX : cocos2d::CCTransitionSceneOriented {
    // CCTransitionFlipX(cocos2d::CCTransitionFlipX const&);
    CCTransitionFlipX();
    virtual ~CCTransitionFlipX();

    static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = imac 0xd70d0, m1 0xbdbb4;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipY : cocos2d::CCTransitionSceneOriented {
    // CCTransitionFlipY(cocos2d::CCTransitionFlipY const&);
    CCTransitionFlipY();
    virtual ~CCTransitionFlipY();

    static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = imac 0xd74a0, m1 0xbdf44;
}

[[link(win, android)]]
class cocos2d::CCTransitionJumpZoom : cocos2d::CCTransitionScene {
    // CCTransitionJumpZoom(cocos2d::CCTransitionJumpZoom const&);
    CCTransitionJumpZoom();
    virtual ~CCTransitionJumpZoom();

    static cocos2d::CCTransitionJumpZoom* create(float, cocos2d::CCScene*) = m1 0xbc008;

    virtual void onEnter() = imac 0xd5380, m1 0xbc0a8;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInB : cocos2d::CCTransitionMoveInL {
    // CCTransitionMoveInB(cocos2d::CCTransitionMoveInB const&);
    CCTransitionMoveInB();
    virtual ~CCTransitionMoveInB();

    static cocos2d::CCTransitionMoveInB* create(float, cocos2d::CCScene*) = m1 0xbcb08;

    virtual void initScenes() = imac 0xd5f70, m1 0xbcbb0;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInL : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionMoveInL(cocos2d::CCTransitionMoveInL const&);
    CCTransitionMoveInL();
    virtual ~CCTransitionMoveInL();

    static cocos2d::CCTransitionMoveInL* create(float, cocos2d::CCScene*) = m1 0xbc39c;

    virtual void onEnter() = imac 0xd5780, m1 0xbc444;
    virtual void initScenes() = imac 0xd58b0, m1 0xbc570;
    virtual cocos2d::CCActionInterval* action() = imac 0xd5850, m1 0xbc520;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xd5890, m1 0xbc560;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInR : cocos2d::CCTransitionMoveInL {
    // CCTransitionMoveInR(cocos2d::CCTransitionMoveInR const&);
    CCTransitionMoveInR();
    virtual ~CCTransitionMoveInR();

    static cocos2d::CCTransitionMoveInR* create(float, cocos2d::CCScene*) = m1 0xbc6e0;

    virtual void initScenes() = imac 0xd5af0, m1 0xbc788;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInT : cocos2d::CCTransitionMoveInL {
    // CCTransitionMoveInT(cocos2d::CCTransitionMoveInT const&);
    CCTransitionMoveInT();
    virtual ~CCTransitionMoveInT();

    static cocos2d::CCTransitionMoveInT* create(float, cocos2d::CCScene*) = m1 0xbc8f4;

    virtual void initScenes() = imac 0xd5d30, m1 0xbc99c;
}

[[link(win, android)]]
class cocos2d::CCTransitionPageTurn : cocos2d::CCTransitionScene {
    CCTransitionPageTurn();
    virtual ~CCTransitionPageTurn();

    static cocos2d::CCTransitionPageTurn* create(float, cocos2d::CCScene*, bool);

    virtual bool initWithDuration(float, cocos2d::CCScene*, bool) = imac 0x3d9460, m1 0x3586f8;
    virtual void onEnter() = imac 0x3d94a0, m1 0x358720;
    virtual void sceneOrder() = imac 0x3d9480, m1 0x358714;

    cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgress : cocos2d::CCTransitionScene {
    CCTransitionProgress();

    static cocos2d::CCTransitionProgress* create(float, cocos2d::CCScene*);

    virtual void onEnter() = imac 0x28d000, m1 0x22daf0;
    virtual void onExit() = imac 0x28d1b0, m1 0x22dca0;
    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x28d220, m1 0x22dcf4;
    virtual void setupTransition() = imac 0x28d1f0, m1 0x22dcdc;
    virtual void sceneOrder() = imac 0x28d1e0, m1 0x22dcd4;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressHorizontal : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressHorizontal* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x28d5b0, m1 0x22e108;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressInOut : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressInOut* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x28d950, m1 0x22e4d0;
    virtual void sceneOrder() = imac 0x28d910, m1 0x22e4b0;
    virtual void setupTransition() = imac 0x28d920, m1 0x22e4b8;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressOutIn : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressOutIn* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x28db00, m1 0x22e6a8;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCCW : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressRadialCCW* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x28d230, m1 0x22dcfc;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCW : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressRadialCW* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x28d440, m1 0x22df6c;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressVertical : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressVertical* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x28d760, m1 0x22e2dc;
}

[[link(win, android)]]
class cocos2d::CCTransitionRotoZoom : cocos2d::CCTransitionScene {
    // CCTransitionRotoZoom(cocos2d::CCTransitionRotoZoom const&);
    CCTransitionRotoZoom();
    virtual ~CCTransitionRotoZoom();

    static cocos2d::CCTransitionRotoZoom* create(float, cocos2d::CCScene*) = m1 0xbbc04;

    virtual void onEnter() = imac 0xd5020, m1 0xbbd68;
}

[[link(win, android)]]
class cocos2d::CCTransitionScene : cocos2d::CCScene {
    // CCTransitionScene(cocos2d::CCTransitionScene const&);
    CCTransitionScene() = imac 0xd46e0, m1 0xbb45c;
    virtual ~CCTransitionScene() = imac 0xd9890, m1 0xbb49c;

    static cocos2d::CCTransitionScene* create(float, cocos2d::CCScene*);

    virtual void onEnter() = imac 0xd4ba0, m1 0xbb91c;
    virtual void onExit() = imac 0xd4bf0, m1 0xbb970;
    virtual void cleanup() = imac 0xd4c50, m1 0xbb9c4;
    virtual void draw() = imac 0xd4960, m1 0xbb6f0;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xd4890, m1 0xbb600;
    virtual void sceneOrder() = imac 0xd4950, m1 0xbb6e4;

    void finish();
    void hideOutShowIn();
    void setNewScene(float);
}

[[link(win, android)]]
class cocos2d::CCTransitionSceneOriented : cocos2d::CCTransitionScene {
    CCTransitionSceneOriented();
    virtual ~CCTransitionSceneOriented();

    static cocos2d::CCTransitionSceneOriented* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::tOrientation) = imac 0xd4e40, m1 0xbbb94;
}

[[link(win, android)]]
class cocos2d::CCTransitionShrinkGrow : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionShrinkGrow(cocos2d::CCTransitionShrinkGrow const&);
    CCTransitionShrinkGrow();
    virtual ~CCTransitionShrinkGrow();

    static cocos2d::CCTransitionShrinkGrow* create(float, cocos2d::CCScene*);

    virtual void onEnter() = imac 0xd6de0, m1 0xbd910;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xd6f60, m1 0xbda98;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInB : cocos2d::CCTransitionSlideInL {
    // CCTransitionSlideInB(cocos2d::CCTransitionSlideInB const&);
    CCTransitionSlideInB();
    virtual ~CCTransitionSlideInB();

    static cocos2d::CCTransitionSlideInB* create(float, cocos2d::CCScene*) = m1 0xbd5dc;

    virtual void sceneOrder() = imac 0xd6b20, m1 0xbd684;
    virtual void initScenes() = imac 0xd6b30, m1 0xbd690;
    virtual cocos2d::CCActionInterval* action() = imac 0xd6ba0, m1 0xbd6f4;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInL : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionSlideInL(cocos2d::CCTransitionSlideInL const&);
    CCTransitionSlideInL();
    virtual ~CCTransitionSlideInL();

    static cocos2d::CCTransitionSlideInL* create(float, cocos2d::CCScene*);

    virtual void onEnter() = imac 0xd6120, m1 0xbcd20;
    virtual void sceneOrder() = imac 0xd6210, m1 0xbce28;
    virtual void initScenes() = imac 0xd6220, m1 0xbce30;
    virtual cocos2d::CCActionInterval* action() = imac 0xd6290, m1 0xbce94;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xd62f0, m1 0xbcef4;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInR : cocos2d::CCTransitionSlideInL {
    // CCTransitionSlideInR(cocos2d::CCTransitionSlideInR const&);
    CCTransitionSlideInR();
    virtual ~CCTransitionSlideInR();

    static cocos2d::CCTransitionSlideInR* create(float, cocos2d::CCScene*) = m1 0xbd0c8;

    virtual void sceneOrder() = imac 0xd65a0, m1 0xbd170;
    virtual void initScenes() = imac 0xd65b0, m1 0xbd17c;
    virtual cocos2d::CCActionInterval* action() = imac 0xd6610, m1 0xbd1dc;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInT : cocos2d::CCTransitionSlideInL {
    // CCTransitionSlideInT(cocos2d::CCTransitionSlideInT const&);
    CCTransitionSlideInT();
    virtual ~CCTransitionSlideInT();

    static cocos2d::CCTransitionSlideInT* create(float, cocos2d::CCScene*) = m1 0xbd354;

    virtual void sceneOrder() = imac 0xd6860, m1 0xbd3fc;
    virtual void initScenes() = imac 0xd6870, m1 0xbd404;
    virtual cocos2d::CCActionInterval* action() = imac 0xd68d0, m1 0xbd464;
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitCols : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionSplitCols(cocos2d::CCTransitionSplitCols const&);
    CCTransitionSplitCols();
    virtual ~CCTransitionSplitCols();

    static cocos2d::CCTransitionSplitCols* create(float, cocos2d::CCScene*);

    virtual void onEnter() = imac 0xd96e0, m1 0xbff40;
    virtual cocos2d::CCActionInterval* action() = imac 0xd97d0, m1 0xc0054;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xd97f0, m1 0xc0068;
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitRows : cocos2d::CCTransitionSplitCols {
    // CCTransitionSplitRows(cocos2d::CCTransitionSplitRows const&);
    CCTransitionSplitRows();
    virtual ~CCTransitionSplitRows();

    static cocos2d::CCTransitionSplitRows* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCActionInterval* action() = imac 0xd9980, m1 0xc0194;
}

[[link(win, android)]]
class cocos2d::CCTransitionTurnOffTiles : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionTurnOffTiles(cocos2d::CCTransitionTurnOffTiles const&);
    CCTransitionTurnOffTiles();
    virtual ~CCTransitionTurnOffTiles();

    static cocos2d::CCTransitionTurnOffTiles* create(float, cocos2d::CCScene*) = m1 0xbfbc4;

    virtual void onEnter() = imac 0xd93e0, m1 0xbfc74;
    virtual void sceneOrder() = imac 0xd93d0, m1 0xbfc6c;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xd94e0, m1 0xbfd74;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipAngular : cocos2d::CCTransitionSceneOriented {
    // CCTransitionZoomFlipAngular(cocos2d::CCTransitionZoomFlipAngular const&);
    CCTransitionZoomFlipAngular();
    virtual ~CCTransitionZoomFlipAngular();

    static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = imac 0xd84f0, m1 0xbee34;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipX : cocos2d::CCTransitionSceneOriented {
    // CCTransitionZoomFlipX(cocos2d::CCTransitionZoomFlipX const&);
    CCTransitionZoomFlipX();
    virtual ~CCTransitionZoomFlipX();

    static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = imac 0xd7c60, m1 0xbe668;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipY : cocos2d::CCTransitionSceneOriented {
    // CCTransitionZoomFlipY(cocos2d::CCTransitionZoomFlipY const&);
    CCTransitionZoomFlipY();
    virtual ~CCTransitionZoomFlipY();

    static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = imac 0xd80a0, m1 0xbea50;
}

[[link(win, android)]]
class cocos2d::CCTurnOffTiles : cocos2d::CCTiledGrid3DAction {
    // CCTurnOffTiles(cocos2d::CCTurnOffTiles const&);
    // CCTurnOffTiles();
    virtual ~CCTurnOffTiles();

    static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&) = imac 0x7b6680, m1 0x33a5f0;
    static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&, unsigned int) = imac 0x7b6770, m1 0x6bc758;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7b6890, m1 0x6bc884;
    virtual void update(float) = imac 0x7b6c50, m1 0x6bcc78;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x7b6b40, m1 0x6bcb28;
    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int) = imac 0x7b6860, m1 0x6bc854;

    void shuffle(unsigned int*, unsigned int);
    void turnOffTile(cocos2d::CCPoint const&) = m1 0x6bcafc;
    void turnOnTile(cocos2d::CCPoint const&) = m1 0x6bcabc;
}

[[link(win, android)]]
class cocos2d::CCTwirl : cocos2d::CCGrid3DAction {
    static cocos2d::CCTwirl* create(float, cocos2d::CCSize const&, cocos2d::CCPoint, unsigned int, float) = imac 0x27f290, m1 0x2210e0;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27f430, m1 0x22127c;
    virtual void update(float) = imac 0x27f5c0, m1 0x2213dc;

    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint, unsigned int, float) = m1 0x221210;
    void setPosition(cocos2d::CCPoint const&);
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
    static cocos2d::CCWaves* create(float, cocos2d::CCSize const&, unsigned int, float, bool, bool) = imac 0x27edf0, m1 0x220c9c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27ef60, m1 0x220e04;
    virtual void update(float) = imac 0x27f0c0, m1 0x220f4c;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float, bool, bool) = imac 0x27ef00, m1 0x220da8;
}

[[link(win, android)]]
class cocos2d::CCWaves3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCWaves3D* create(float, cocos2d::CCSize const&, unsigned int, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27ce20, m1 0x21ef4c;
    virtual void update(float) = imac 0x27cf60, m1 0x21f078;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);
}

[[link(win, android)]]
class cocos2d::CCWavesTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCWavesTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float);

    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float) = imac 0x7b6e20, m1 0x6bce40;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7b6e60, m1 0x6bce84;
    virtual void update(float) = imac 0x7b6f80, m1 0x6bcf9c;
}

[[link(win, android)]]
class cocos2d::CCZone {
    CCZone(cocos2d::CCObject* object) = win inline, imac 0x10db60, m1 0xe9a54;
}

[[link(win, android)]]
class cocos2d::extension::CCArrayForObjectSorting : cocos2d::CCArray {
    unsigned int indexOfSortedObject(cocos2d::extension::CCSortableObject*) = m1 0x39c4f4;
    void insertSortedObject(cocos2d::extension::CCSortableObject*) = m1 0x39c3d4;
    cocos2d::extension::CCSortableObject* objectWithObjectID(unsigned int) = m1 0x39ca6c;
    void removeSortedObject(cocos2d::extension::CCSortableObject*) = m1 0x2262a0;
    void setObjectID_ofSortedObject(unsigned int, cocos2d::extension::CCSortableObject*) = imac 0x18bf90, m1 0x39c784;
}

[[link(win, android)]]
class cocos2d::extension::CCControl : cocos2d::CCLayerRGBA {
    CCControl() = m1 0x2ddaa8;
    virtual ~CCControl();

    static cocos2d::extension::CCControl* create() = m1 0x2ddb70, ios inline;

    virtual bool init() = imac 0x351050, m1 0x2ddc38;
    virtual void onEnter() = imac 0x3514c0, m1 0x2ddf94;
    virtual void onExit() = imac 0x3514d0, m1 0x2ddf98;
    virtual void registerWithTouchDispatcher() = imac 0x351470, m1 0x2ddf44;
    virtual void setOpacityModifyRGB(bool) = imac 0x351fa0, m1 0x2de9e8;
    virtual bool isOpacityModifyRGB() = imac 0x352100, m1 0x2deb40;
    virtual void setEnabled(bool) = imac 0x3521f0, m1 0x2dec10;
    virtual bool isEnabled() = imac 0x352220, m1 0x2dec30;
    virtual void setSelected(bool) = imac 0x352230, m1 0x2dec38;
    virtual bool isSelected() = imac 0x352250, m1 0x2dec48;
    virtual void setHighlighted(bool) = imac 0x352260, m1 0x2dec50;
    virtual bool isHighlighted() = imac 0x352280, m1 0x2dec60;
    virtual void needsLayout() = imac 0x3521e0, m1 0x2dec0c;
    virtual void sendActionsForControlEvents(unsigned int) = imac 0x3514e0, m1 0x2ddf9c;
    virtual void addTargetWithActionForControlEvents(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, unsigned int) = imac 0x351790, m1 0x2de244;
    virtual void removeTargetWithActionForControlEvents(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, unsigned int) = imac 0x351c50, m1 0x2de6b8;
    virtual cocos2d::CCPoint getTouchLocation(cocos2d::CCTouch*) = imac 0x352120, m1 0x2deb50;
    virtual bool isTouchInside(cocos2d::CCTouch*) = imac 0x352170, m1 0x2deb9c;

    void addHandleOfControlEvent(int, cocos2d::extension::CCControlEvent) = imac 0x3522f0, m1 0x2decdc, ios inline;
    void addTargetWithActionForControlEvent(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = imac 0x351be0, m1 0x2de630;
    cocos2d::CCArray* dispatchListforControlEvent(cocos2d::extension::CCControlEvent) = imac 0x3516f0;
    int getHandleOfControlEvent(cocos2d::extension::CCControlEvent) = ios inline;
    bool hasVisibleParents() = imac 0x352290, m1 0x2dec68, ios inline;
    void removeHandleOfControlEvent(cocos2d::extension::CCControlEvent) = m1 0x2ded9c, ios inline;
    void removeTargetWithActionForControlEvent(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = imac 0x351e00, m1 0x2de820;
}

[[link(win, android)]]
class cocos2d::extension::CCControlButton : cocos2d::extension::CCControl {
    CCControlButton();
    virtual ~CCControlButton() = m1 0x2df774;

    static cocos2d::extension::CCControlButton* create() = m1 0x2e163c;
    static cocos2d::extension::CCControlButton* create(cocos2d::extension::CCScale9Sprite*) = imac 0x353930, m1 0x2dffac;
    static cocos2d::extension::CCControlButton* create(cocos2d::CCNode*, cocos2d::extension::CCScale9Sprite*) = m1 0x2dfcc4;
    static cocos2d::extension::CCControlButton* create(gd::string, char const*, float) = imac 0x353750, m1 0x2dfe0c;

    virtual void needsLayout() = imac 0x354520, m1 0x2e0b98;
    virtual void setEnabled(bool) = imac 0x353a90, m1 0x2e00a8;
    virtual void setSelected(bool) = imac 0x353ab0, m1 0x2e00d4;
    virtual void setHighlighted(bool) = imac 0x353ad0, m1 0x2e0100;
    virtual cocos2d::CCSize getPreferredSize() = imac 0x353c80, m1 0x2e02d0;
    virtual void setPreferredSize(cocos2d::CCSize) = imac 0x353bc0, m1 0x2e021c;
    virtual bool getZoomOnTouchDown() = imac 0x353bb0, m1 0x2e0214;
    virtual void setZoomOnTouchDown(bool) = imac 0x353ba0, m1 0x2e020c;
    virtual cocos2d::CCPoint getLabelAnchorPoint() = imac 0x353cb0, m1 0x2e02e4;
    virtual void setLabelAnchorPoint(cocos2d::CCPoint) = imac 0x353cd0, m1 0x2e02f0;
    virtual unsigned char getOpacity() = imac 0x354ea0, m1 0x2e14ec;
    virtual void setOpacity(unsigned char) = imac 0x354de0, m1 0x2e1440;
    virtual cocos2d::ccColor3B const& getColor() = imac 0x354f80, m1 0x2e15a8;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x354ec0, m1 0x2e14fc;
    virtual void setMargins(int, int) = imac 0x353a70, m1 0x2e0094;
    virtual bool init() = imac 0x353120, m1 0x2df858;
    virtual bool initWithLabelAndBackgroundSprite(cocos2d::CCNode*, cocos2d::extension::CCScale9Sprite*) = imac 0x353170, m1 0x2df8a8;
    virtual bool initWithTitleAndFontNameAndFontSize(gd::string, char const*, float) = imac 0x353700, m1 0x2dfdbc;
    virtual bool initWithBackgroundSprite(cocos2d::extension::CCScale9Sprite*) = imac 0x3538e0, m1 0x2dff60;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x354a40, m1 0x2e1064;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x354be0, m1 0x2e1204;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x354d20, m1 0x2e1374;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x354fa0, m1 0x2e15b8;
    virtual cocos2d::CCString* getTitleForState(unsigned int) = imac 0x353d10, m1 0x2e0338;
    virtual void setTitleForState(cocos2d::CCString*, unsigned int) = imac 0x353da0, m1 0x2e03e0;
    virtual cocos2d::ccColor3B const getTitleColorForState(unsigned int) = imac 0x353e10, m1 0x2e0458;
    virtual void setTitleColorForState(cocos2d::ccColor3B, unsigned int) = imac 0x353e70, m1 0x2e04b4;
    virtual cocos2d::CCNode* getTitleLabelForState(unsigned int) = imac 0x353f30, m1 0x2e057c;
    virtual void setTitleLabelForState(cocos2d::CCNode*, unsigned int) = imac 0x353f70, m1 0x2e05bc;
    virtual void setTitleTTFForState(char const*, unsigned int) = imac 0x354040, m1 0x2e06a4;
    virtual char const* getTitleTTFForState(unsigned int) = imac 0x3540e0, m1 0x2e075c;
    virtual void setTitleTTFSizeForState(float, unsigned int) = imac 0x354150, m1 0x2e07c4;
    virtual float getTitleTTFSizeForState(unsigned int) = imac 0x3541d0, m1 0x2e0838;
    virtual void setTitleBMFontForState(char const*, unsigned int) = imac 0x354240, m1 0x2e089c;
    virtual char const* getTitleBMFontForState(unsigned int) = imac 0x3542e0, m1 0x2e0950;
    virtual cocos2d::extension::CCScale9Sprite* getBackgroundSpriteForState(unsigned int) = imac 0x354350, m1 0x2e09b8;
    virtual void setBackgroundSpriteForState(cocos2d::extension::CCScale9Sprite*, unsigned int) = imac 0x354390, m1 0x2e09f8;
    virtual void setBackgroundSpriteFrameForState(cocos2d::CCSpriteFrame*, unsigned int) = imac 0x3544f0, m1 0x2e0b5c;

    bool doesAdjustBackgroundImage() = imac 0x353ca0, m1 0x2e02dc;
    void setAdjustBackgroundImage(bool) = imac 0x353590, m1 0x2dfcb4;
}

[[link(win, android)]]
class cocos2d::extension::CCControlColourPicker : cocos2d::extension::CCControl {
    CCControlColourPicker() = win inline, imac inline, m1 inline, ios inline;
    virtual ~CCControlColourPicker() = win inline, imac inline, m1 inline, ios inline;

    static cocos2d::extension::CCControlColourPicker* colourPicker() = m1 0x2e1d80, imac 0x3558c0;

    virtual bool init() = imac 0x355240, m1 0x2e1818;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x355b40, m1 0x2e1f54;
    virtual void setColorValue(cocos2d::ccColor3B const&) = imac 0x355990, m1 0x2e1e14;

    void colourSliderValueChanged(cocos2d::CCObject*, unsigned int) = imac 0x355690, m1 0x2e1bd0;
    cocos2d::ccColor3B const& getColorValue() const = win inline, imac inline, m1 inline, ios inline;
    void hueSliderValueChanged(cocos2d::CCObject*, unsigned int) = imac 0x355560, m1 0x2e1aec;
    void updateControlPicker() = imac 0x355ae0, m1 0x2e1f0c, ios inline;
    void updateHueAndControlPicker() = imac 0x355770, m1 0x2e1c8c;
}

[[link(win, android)]]
class cocos2d::extension::CCControlHuePicker : cocos2d::extension::CCControl {
    [[since("4.2.1")]]
    CCControlHuePicker();
    [[since("4.2.1")]]
    virtual ~CCControlHuePicker() = m1 0x2e26d0;

    static cocos2d::extension::CCControlHuePicker* create(cocos2d::CCNode*, cocos2d::CCPoint) = imac 0x3567c0, m1 0x2e28c4;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x356dd0, m1 0x2e2e0c;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x356ed0, m1 0x2e2f10;
    virtual void setEnabled(bool) = imac 0x356be0, m1 0x2e2c40;
    virtual bool initWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint) = imac 0x3568e0, m1 0x2e29a4;
    virtual void setHue(float) = imac 0x356ac0, m1 0x2e2b60;
    virtual void setHuePercentage(float) = imac 0x356af0, m1 0x2e2b7c;
    [[since("4.10.1")]]
    virtual void registerWithTouchDispatcher() = imac 0x356a80, m1 0x2e2b28;

    bool checkSliderPosition(cocos2d::CCPoint) = imac 0x356cd0;
    void updateSliderPosition(cocos2d::CCPoint) = imac 0x356c30, m1 0x2e2c90;
}

[[link(win, android)]]
class cocos2d::extension::CCControlPotentiometer : cocos2d::extension::CCControl {
    CCControlPotentiometer();
    virtual ~CCControlPotentiometer() = m1 0x2e5940;

    static cocos2d::extension::CCControlPotentiometer* create(char const*, char const*, char const*) = imac 0x35a530, m1 0x2e5b80;

    virtual void setEnabled(bool) = imac 0x35a870, m1 0x2e5ea4;
    virtual bool isTouchInside(cocos2d::CCTouch*) = imac 0x35aa40, m1 0x2e6030;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x35ab70, m1 0x2e613c;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x35ad30, m1 0x2e630c;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x35af90, m1 0x2e6544;

    float angleInDegreesBetweenLineFromPoint_toPoint_toLineFromPoint_toPoint(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x35b080, m1 0x2e664c;
    float distanceBetweenPointAndPoint(cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x35ab40, m1 0x2e611c;
    float getMaximumValue() = imac 0x35aa30;
    float getMinimumValue() = imac 0x35a970, m1 0x2e5f88;
    float getValue() = imac 0x35a8c0, m1 0x2e5ef4;
    bool initWithTrackSprite_ProgressTimer_ThumbSprite(cocos2d::CCSprite*, cocos2d::CCProgressTimer*, cocos2d::CCSprite*);
    void potentiometerBegan(cocos2d::CCPoint) = imac 0x35ac20, m1 0x2e61fc;
    void potentiometerEnded(cocos2d::CCPoint) = imac 0x35afe0, m1 0x2e65a4;
    void potentiometerMoved(cocos2d::CCPoint) = m1 0x3ad84;
    void setMaximumValue(float) = imac 0x35a980, m1 0x2e5f90;
    void setMinimumValue(float) = imac 0x35a8d0, m1 0x2e5efc;
    void setValue(float) = imac 0x35a7e0, m1 0x2e5e18;
}

[[link(win, android)]]
class cocos2d::extension::CCControlSaturationBrightnessPicker : cocos2d::extension::CCControl {
    [[since("4.2.1")]]
    CCControlSaturationBrightnessPicker();
    [[since("4.2.1")]]
    virtual ~CCControlSaturationBrightnessPicker() = m1 0x2f22ec;

    static cocos2d::extension::CCControlSaturationBrightnessPicker* create(cocos2d::CCNode*, cocos2d::CCPoint) = imac 0x3681b0, m1 0x2f2688;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3687c0, m1 0x2f2b74;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3688c0, m1 0x2f2c78;
    virtual void setEnabled(bool) = imac 0x3682e0, m1 0x2f2778;
    virtual bool initWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint) = imac 0x368030, m1 0x2f250c;
    virtual void updateWithHSV(cocos2d::extension::HSV) = imac 0x368330, m1 0x2f27c8;
    virtual void updateDraggerWithHSV(cocos2d::extension::HSV) = imac 0x3683d0, m1 0x2f283c;
    [[since("4.10.1")]]
    virtual void registerWithTouchDispatcher() = imac 0x368780, m1 0x2f2b3c;

    bool checkSliderPosition(cocos2d::CCPoint) = imac 0x368670;
    void updateSliderPosition(cocos2d::CCPoint) = imac 0x368470, m1 0x2f28c4;
}

[[link(win, android)]]
class cocos2d::extension::CCControlSlider : cocos2d::extension::CCControl {
    CCControlSlider() = m1 0x32469c;
    virtual ~CCControlSlider() = m1 0x3246f4;

    static cocos2d::extension::CCControlSlider* create(char const*, char const*, char const*) = m1 0x3248f4;
    static cocos2d::extension::CCControlSlider* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x39f7e0, m1 0x3249c4;

    virtual void setValue(float) = imac 0x39fbe0, m1 0x324d84;
    virtual void setMinimumValue(float) = imac 0x39fc30, m1 0x324dd8;
    virtual void setMaximumValue(float) = imac 0x39fc80, m1 0x324e08;
    virtual void setEnabled(bool) = imac 0x39fb90, m1 0x324d34;
    virtual bool isTouchInside(cocos2d::CCTouch*) = imac 0x39fcd0, m1 0x324e38;
    virtual bool initWithSprites(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x39f8d0, m1 0x324a78;
    virtual void needsLayout() = imac 0x3a03e0, m1 0x325518;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x39fe10, m1 0x324f88;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3a0060, m1 0x3251b8;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3a0210, m1 0x32534c;

    cocos2d::CCPoint locationFromTouch(cocos2d::CCTouch*) = imac 0x39fd80, m1 0x324ef0;
    void sliderBegan(cocos2d::CCPoint) = imac 0x39ff90, m1 0x3250f8;
    void sliderEnded(cocos2d::CCPoint) = imac 0x3a02f0, m1 0x325438;
    void sliderMoved(cocos2d::CCPoint) = m1 0x3252bc;
    float valueForLocation(cocos2d::CCPoint) = imac 0x3a0510, m1 0x32560c;
}

[[link(win, android)]]
class cocos2d::extension::CCControlStepper : cocos2d::extension::CCControl {
    CCControlStepper() = m1 0x32805c;
    virtual ~CCControlStepper() = m1 0x3280d0;

    static cocos2d::extension::CCControlStepper* create(cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x3a3bf0, m1 0x3285a4;

    virtual void setWraps(bool) = imac 0x3a3cf0, m1 0x328698;
    virtual void setMinimumValue(double) = imac 0x3a3d60, m1 0x328724;
    virtual void setMaximumValue(double) = imac 0x3a3d90, m1 0x328738;
    virtual void setValue(double) = imac 0x3a3dc0, m1 0x32874c;
    virtual double getValue() = imac 0x3a3de0, m1 0x32875c;
    virtual void setStepValue(double) = imac 0x3a3df0, m1 0x328764;
    virtual void setValueWithSendingEvent(double, bool) = imac 0x3a3e10, m1 0x328774;
    virtual bool isContinuous() = imac 0x3a3e00, m1 0x32876c;
    virtual void update(float) = imac 0x3a3f70, m1 0x3288c4;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3a40f0, m1 0x328a34;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3a42a0, m1 0x328bdc;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3a4490, m1 0x328dc8;

    bool initWithMinusSpriteAndPlusSprite(cocos2d::CCSprite*, cocos2d::CCSprite*) = m1 0x328194;
    void startAutorepeat() = imac 0x3a3f20, m1 0x328888;
    void stopAutorepeat() = imac 0x3a3f50, m1 0x3288b8;
    void updateLayoutUsingTouchLocation(cocos2d::CCPoint) = imac 0x3a4000, m1 0x328948;
}

[[link(win, android)]]
class cocos2d::extension::CCControlSwitch : cocos2d::extension::CCControl {
    CCControlSwitch() = m1 0x32c3d4;
    virtual ~CCControlSwitch() = m1 0x32c428;

    static cocos2d::extension::CCControlSwitch* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x3a8420, m1 0x32c810;
    static cocos2d::extension::CCControlSwitch* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCLabelTTF*, cocos2d::CCLabelTTF*) = imac 0x3a8520, m1 0x32c908;

    virtual void setEnabled(bool) = imac 0x3a8760, m1 0x32cb24;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3a87f0, m1 0x32cb9c;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3a88e0, m1 0x32cc68;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3a89b0, m1 0x32cd18;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3a8ae0, m1 0x32ce40;

    bool initWithMaskSprite(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x3a8210, m1 0x32c624;
    bool initWithMaskSprite(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCLabelTTF*, cocos2d::CCLabelTTF*);
    cocos2d::CCPoint locationFromTouch(cocos2d::CCTouch*) = m1 0x32cb50;
    void setOn(bool) = imac 0x3a8630, m1 0x32c9fc;
    void setOn(bool, bool) = imac 0x3a86a0, m1 0x32ca6c;
}

[[link(win, android)]]
class cocos2d::extension::CCControlUtils {
    static cocos2d::CCSprite* addSpriteToTargetWithPosAndAnchor(char const*, cocos2d::CCNode*, cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x3a9270, m1 0x32d41c;
    static cocos2d::CCRect CCRectUnion(cocos2d::CCRect const&, cocos2d::CCRect const&) = m1 0x32d65c, ios inline;
    static cocos2d::extension::HSV HSVfromRGB(cocos2d::extension::RGBA) = imac 0x3a92d0, m1 0x32d494;
    static cocos2d::extension::RGBA RGBfromHSV(cocos2d::extension::HSV) = imac 0x3a93c0, m1 0x32d540;
}

[[link(win, android)]]
class cocos2d::extension::CCEditBox : cocos2d::extension::CCControlButton, cocos2d::CCIMEDelegate {
    CCEditBox() = m1 0x40ce34;
    virtual ~CCEditBox() = imac 0x4a9cb0, m1 0x40cefc;

    static cocos2d::extension::CCEditBox* create(cocos2d::CCSize const&, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*) = imac 0x4a9f40, m1 0x40d0b8;

    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x4aa640, m1 0x40d6ec;
    virtual void setVisible(bool) = imac 0x4aa680, m1 0x40d730;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x4aa6c0, m1 0x40d774;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x4aa700, m1 0x40d7b8;
    virtual void visit() = imac 0x4aa740, m1 0x40d7fc;
    virtual void onEnter() = imac 0x4aa770, m1 0x40d838;
    virtual void onExit() = imac 0x4aa7a0, m1 0x40d874;
    virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4aa7d0, m1 0x40d8b0;
    virtual void keyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4aa8e0, m1 0x40d98c;
    virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4aa900, m1 0x40d994;
    virtual void keyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4aa980, m1 0x40d9e4;

    cocos2d::extension::CCEditBoxDelegate* getDelegate() = imac 0x4aa1f0, m1 0x40d328;
    int getMaxLength() = imac 0x4aa5e0, m1 0x40d6b0;
    char const* getPlaceHolder() = imac 0x4aa550, m1 0x40d65c;
    char const* getText();
    bool initWithSizeAndBackgroundSprite(cocos2d::CCSize const&, cocos2d::extension::CCScale9Sprite*);
    void registerScriptEditBoxHandler(int) = imac 0x4aa9a0, m1 0x40d9ec;
    void setDelegate(cocos2d::extension::CCEditBoxDelegate*) = m1 0x40d314;
    void setFont(char const*, int);
    void setFontColor(cocos2d::ccColor3B const&) = imac 0x4aa390, m1 0x40d4b4;
    void setFontName(char const*) = imac 0x4aa2e0, m1 0x40d414;
    void setFontSize(int) = imac 0x4aa330, m1 0x40d468;
    void setInputFlag(cocos2d::extension::EditBoxInputFlag) = imac 0x4aa5f0, m1 0x40d6b8;
    void setInputMode(cocos2d::extension::EditBoxInputMode) = imac 0x4aa580, m1 0x40d678;
    void setMaxLength(int) = imac 0x4aa5b0, m1 0x40d694;
    void setPlaceHolder(char const*) = m1 0x40d610;
    void setPlaceholderFont(char const*, int);
    void setPlaceholderFontColor(cocos2d::ccColor3B const&) = imac 0x4aa4d0, m1 0x40d5e8;
    void setPlaceholderFontName(char const*) = imac 0x4aa420, m1 0x40d540;
    void setPlaceholderFontSize(int) = imac 0x4aa470, m1 0x40d598;
    void setReturnType(cocos2d::extension::KeyboardReturnType) = imac 0x4aa620, m1 0x40d6d4;
    void setText(char const*);
    void touchDownAction(cocos2d::CCObject*, cocos2d::extension::CCControlEvent) = imac 0x4a9f20, m1 0x40d0a8;
    void unregisterScriptEditBoxHandler();
}

[[link(win, android)]]
class cocos2d::extension::CCHttpClient : cocos2d::CCObject {
    CCHttpClient();
    virtual ~CCHttpClient();

    static void destroyInstance() = ios inline;
    static cocos2d::extension::CCHttpClient* getInstance();

    void dispatchResponseCallbacks(float);
    bool lazyInitThreadSemphore();
    void send(cocos2d::extension::CCHttpRequest* request);

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
    [[since("4.10.1")]]
    CCInvocation(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = win inline, imac 0x3d78b0, m1 0x356e64, ios inline;

    static cocos2d::extension::CCInvocation* create(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = imac 0x3d77e0, m1 0x356d90;

    void invoke(cocos2d::CCObject*) = imac 0x3d7900, m1 0x356eb4;
}

[[link(win, android)]]
class cocos2d::extension::CCScale9Sprite : cocos2d::CCNodeRGBA {
    CCScale9Sprite() = m1 0x36c6f8, imac 0x3f36e0;
    virtual ~CCScale9Sprite() = m1 0x36c7ac, imac 0x3f37d0;

    static cocos2d::extension::CCScale9Sprite* create() = m1 0x36e66c, imac 0x3f5720, ios inline;
    static cocos2d::extension::CCScale9Sprite* create(char const* pszname) = m1 0x36e110, imac 0x3f5270, ios inline;
    static cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect) = m1 0x36deec, imac 0x3f50a0;
    static cocos2d::extension::CCScale9Sprite* create(cocos2d::CCRect capInsets, char const* filename) = imac 0x3f5190, m1 0x36e00c, ios inline;
    static cocos2d::extension::CCScale9Sprite* create(char const* filename, cocos2d::CCRect rect, cocos2d::CCRect capInsets) = imac 0x3f4fa0, m1 0x36ddc4, ios inline;
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x36e320, imac 0x3f5440, ios inline;
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = m1 0x36e21c, imac 0x3f5360, ios inline;
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const* spriteFrameName) = m1 0x36e51c, imac 0x3f5600, ios inline;
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const* spriteFrameName, cocos2d::CCRect capInsets) = m1 0x36e418, imac 0x3f5520, ios inline;

    virtual bool init() = imac 0x3f38f0, m1 0x36c874;
    virtual void setContentSize(const cocos2d::CCSize& size) = imac 0x3f4a20, m1 0x36d874;
    virtual void visit() = imac 0x3f5d60, m1 0x36ebf0;
    virtual unsigned char getOpacity() = imac 0x3f60b0, m1 0x36ef1c;
    virtual void setOpacity(unsigned char) = imac 0x3f5f30, m1 0x36edb4;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x3f5b30, m1 0x36ea44;
    virtual const cocos2d::ccColor3B& getColor() = imac 0x3f5f10, m1 0x36eda4;
    virtual void setColor(const cocos2d::ccColor3B& color) = imac 0x3f5d90, m1 0x36ec24;
    virtual void updateDisplayedColor(const cocos2d::ccColor3B& parentColor) = imac 0x3f5ba0, m1 0x36eab0;
    virtual void setOpacityModifyRGB(bool bValue) = imac 0x3f59b0, m1 0x36e8d4;
    virtual bool isOpacityModifyRGB() = imac 0x3f5b10, m1 0x36ea34;
    virtual cocos2d::CCSize getPreferredSize() = imac 0x3f57b0, m1 0x36e720;
    virtual void setPreferredSize(cocos2d::CCSize) = imac 0x3f5780, m1 0x36e6ec;
    virtual cocos2d::CCRect getCapInsets() = imac 0x3f5870, m1 0x36e7c4;
    virtual void setCapInsets(cocos2d::CCRect) = imac 0x3f57d0, m1 0x36e72c;
    virtual float getInsetLeft() = imac 0x3f5ca0, m1 0x36ebb0;
    virtual void setInsetLeft(float) = imac 0x3f5ce0, m1 0x36ebd0;
    virtual float getInsetTop() = imac 0x3f5cb0, m1 0x36ebb8;
    virtual void setInsetTop(float) = imac 0x3f5d00, m1 0x36ebd8;
    virtual float getInsetRight() = imac 0x3f5cc0, m1 0x36ebc0;
    virtual void setInsetRight(float) = imac 0x3f5d20, m1 0x36ebe0;
    virtual float getInsetBottom() = imac 0x3f5cd0, m1 0x36ebc8;
    virtual void setInsetBottom(float) = imac 0x3f5d40, m1 0x36ebe8;
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = imac 0x3f39b0, m1 0x36c940;
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, cocos2d::CCRect) = imac 0x3f3950, m1 0x36c8d4;
    virtual bool initWithFile(const char*, cocos2d::CCRect, cocos2d::CCRect) = imac 0x3f4f30, m1 0x36dd4c;
    virtual bool initWithFile(const char*, cocos2d::CCRect) = imac 0x3f5040, m1 0x36de8c;
    virtual bool initWithFile(cocos2d::CCRect, const char*) = imac 0x3f5130, m1 0x36dfa0;
    virtual bool initWithFile(const char*) = imac 0x3f5220, m1 0x36e0c0;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = imac 0x3f52e0, m1 0x36e198;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3f53f0, m1 0x36e2d0;
    virtual bool initWithSpriteFrameName(const char*, cocos2d::CCRect) = imac 0x3f54b0, m1 0x36e3a8;
    virtual bool initWithSpriteFrameName(const char*) = imac 0x3f55b0, m1 0x36e4cc;
    virtual bool updateWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = imac 0x3f3a50, m1 0x36c9e4;
    virtual void setSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3f5c10, m1 0x36eb1c;

    cocos2d::extension::CCScale9Sprite* resizableSpriteWithCapInsets(cocos2d::CCRect) = imac 0x3f5670, m1 0x36e5a4, ios inline;
    [[since("4.10.1")]]
    void setBlendAdditive(bool) = imac 0x3f60d0, m1 0x36ef2c;
    void updateCapInset();
    void updatePositions();
}

[[link(win, android)]]
class cocos2d::extension::CCScrollView : cocos2d::CCLayer {
    CCScrollView() = m1 0x36f814;
    virtual ~CCScrollView() = imac 0x3f6af0, m1 0x36f900;

    static cocos2d::extension::CCScrollView* create() = m1 0x36fdbc;
    static cocos2d::extension::CCScrollView* create(cocos2d::CCSize, cocos2d::CCNode*) = imac 0x3f6e20, m1 0x36fbac;

    virtual bool init() = imac 0x3f70d0, m1 0x36fe6c;
    virtual void registerWithTouchDispatcher() = imac 0x3f7110, m1 0x36feb4;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3f86b0, m1 0x371358;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3f8930, m1 0x3715b4;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3f8d00, m1 0x3718e0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3f8dc0, m1 0x371990;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x3f7f80, m1 0x370c48;
    virtual cocos2d::CCSize const& getContentSize() const = imac 0x3f7f60, m1 0x370c38;
    virtual void visit() = imac 0x3f8540, m1 0x3711b8;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x3f8150, m1 0x370db4;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x3f81e0, m1 0x370e70;
    virtual void addChild(cocos2d::CCNode*) = imac 0x3f8220, m1 0x370ec4;
    virtual void setTouchEnabled(bool) = imac 0x3f7360, m1 0x3700d4;

    void afterDraw();
    void beforeDraw();
    void deaccelerateScrolling(float);
    cocos2d::CCNode* getContainer() = imac 0x3f79a0;
    cocos2d::CCPoint getContentOffset() = imac 0x3f7230, m1 0x36ffbc;
    int getScriptHandler(int);
    cocos2d::CCRect getViewRect() = imac 0x3f83c0, m1 0x371048;
    float getZoomScale() = imac 0x3f7260, m1 0x36fff0;
    bool initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*);
    bool isNodeVisible(cocos2d::CCNode*) = m1 0x36fefc;
    cocos2d::CCPoint maxContainerOffset() = imac 0x3f7660, m1 0x37038c;
    cocos2d::CCPoint minContainerOffset() = imac 0x3f75a0, m1 0x3702fc;
    void pause(cocos2d::CCObject*) = m1 0x370000;
    void performedAnimatedScroll(float) = m1 0x6cf120;
    void registerScriptHandler(int, int) = m1 0x371a54;
    void relocateContainer(bool) = imac 0x3f7a60;
    void resume(cocos2d::CCObject*) = imac 0x3f72f0, m1 0x370068;
    void setContainer(cocos2d::CCNode*) = m1 0x20a1f4;
    void setContentOffset(cocos2d::CCPoint, bool) = m1 0x5778d0;
    void setContentOffsetInDuration(cocos2d::CCPoint, float) = imac 0x3f7530, m1 0x370284;
    void setViewSize(cocos2d::CCSize) = imac 0x3f70a0, m1 0x36fe3c;
    void setZoomScale(float) = imac 0x3f7700, m1 0x370420;
    void setZoomScale(float, bool);
    void setZoomScaleInDuration(float, float);
    void stoppedAnimatedScroll(cocos2d::CCNode*) = m1 0x37039c;
    void unregisterScriptHandler(int) = m1 0x36fab4;
    void updateInset() = m1 0x173ca8;
}

[[link(win, android)]]
class cocos2d::extension::CCTableView : cocos2d::extension::CCScrollView, cocos2d::extension::CCScrollViewDelegate {
    CCTableView() = m1 0x39ecb0;
    virtual ~CCTableView() = imac 0x42c1f0, m1 0x39ed10;

    static cocos2d::extension::CCTableView* create(cocos2d::extension::CCTableViewDataSource*, cocos2d::CCSize) = m1 0x39e834;
    static cocos2d::extension::CCTableView* create(cocos2d::extension::CCTableViewDataSource*, cocos2d::CCSize, cocos2d::CCNode*) = imac 0x42bc80, m1 0x39e870;

    virtual void scrollViewDidScroll(cocos2d::extension::CCScrollView*) = imac 0x42d1d0, m1 0x39fcb8;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x42d5a0, m1 0x39ffd4;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x42d720, m1 0x3a014c;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x42d4a0, m1 0x39fef4;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x42d7d0, m1 0x3a01f4;

    int __indexFromOffset(cocos2d::CCPoint) = imac 0x42d130, m1 0x39fc0c;
    cocos2d::CCPoint __offsetFromIndex(unsigned int) = m1 0x39fa54;
    void _addCellIfNecessary(cocos2d::extension::CCTableViewCell*) = imac 0x23aaa0, m1 0x39f458;
    unsigned int _indexFromOffset(cocos2d::CCPoint);
    void _moveCellOutOfSight(cocos2d::extension::CCTableViewCell*) = imac 0x42c810, m1 0x39f26c;
    cocos2d::CCPoint _offsetFromIndex(unsigned int) = m1 0x39f96c;
    void _setIndexForCell(unsigned int, cocos2d::extension::CCTableViewCell*) = imac 0x42c950, m1 0x39f3d0;
    void _updateCellPositions() = imac 0x42bf40, m1 0x39eaa8;
    void _updateContentSize() = imac 0x42c050, m1 0x39ebbc;
    cocos2d::extension::CCTableViewCell* cellAtIndex(unsigned int) = imac 0x42c680, m1 0x39f0d0;
    cocos2d::extension::CCTableViewCell* dequeueCell();
    cocos2d::extension::CCTableViewVerticalFillOrder getVerticalFillOrder() = imac 0x42c670, m1 0x39f0c8;
    bool initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*) = imac 0x42be50, m1 0x39e9b0;
    void insertCellAtIndex(unsigned int) = imac 0x42cab0, m1 0x39f55c;
    void reloadData() = imac 0x42c4e0, m1 0x39ef3c;
    void removeCellAtIndex(unsigned int) = imac 0x42cc50, m1 0x39f6fc;
    void setVerticalFillOrder(cocos2d::extension::CCTableViewVerticalFillOrder) = imac 0x42c4a0, m1 0x39eef4;
    void unregisterAllScriptHandler() = m1 0x39ee1c;
    void updateCellAtIndex(unsigned int) = m1 0x83ef0;
}

[[link(win, android)]]
class cocos2d::extension::CCTableViewCell : cocos2d::CCNode, cocos2d::extension::CCSortableObject {
    virtual void setObjectID(unsigned int) = imac 0x437330, m1 0x3a9300;
    virtual unsigned int getObjectID() = imac 0x437350, m1 0x3a9310;

    unsigned int getIdx() = imac 0x437370, m1 0x3a9320;
    void reset() = imac 0x437320, m1 0x3a92f4;
    void setIdx(unsigned int) = imac 0x437380, m1 0x3a9328;
}

[[link(win, android)]]
class cocos2d::ZipUtils {
    static gd::string base64DecodeEnc(gd::string const&, gd::string);
    static gd::string base64EncodeEnc(gd::string const&, gd::string) = imac 0x205690, m1 0x3a10;
    static gd::string base64URLDecode(gd::string const&);
    static gd::string base64URLEncode(gd::string const&);
    // static void ccDecodeEncodedPvr(unsigned int*, int);
    static int ccDeflateMemory(unsigned char* data, unsigned int size, unsigned char** out) = imac 0x204d90, m1 0x1b0f40;
    static int ccInflateCCZFile(char const*, unsigned char**);
    static int ccInflateGZipFile(char const*, unsigned char**);
    // static int ccInflateMemory(unsigned char* data, unsigned int size, unsigned char** out) = imac 0x1f3660, m1 0x1a91b0;
    // static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int*, unsigned int) = imac 0x1f45f0, m1 0x1aa1b8;
    // static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int) = imac 0x1f4720, m1 0x1aa2e0;
    static void ccSetPvrEncryptionKey(unsigned int, unsigned int, unsigned int, unsigned int);
    static void ccSetPvrEncryptionKeyPart(int, unsigned int);
    static gd::string compressString(gd::string const& data, bool encrypt, int encryptionKey) = imac 0x204b20, m1 0x1b0c80;
    static gd::string decompressString(gd::string const& data, bool encrypt, int encryptionKey);
    static gd::string decompressString2(unsigned char* data, bool encrypt, int size, int encryptionKey) = m1 0x1b1074;
    static gd::string encryptDecrypt(gd::string const& data, int encryptionKey);
    static gd::string encryptDecryptWKey(gd::string const&, gd::string) = win inline, imac inline, m1 inline, ios inline;
    static unsigned char hexToChar(gd::string const&);
    static gd::string urlDecode(gd::string const&);
}

[[link(win, android)]]
class DS_Dictionary {
    DS_Dictionary() = m1 0x13f4cc;

    static void copyFile(char const*, char const*);

    void addBoolValuesToMapForKey(gd::map<gd::string, bool>&, char const*, bool) = m1 0x1465c4;
    void addBoolValuesToMapForKeySpecial(gd::map<gd::string, bool>&, char const*, bool) = m1 0x14629c;
    void checkCompatibility();
    gd::string cleanStringWhiteSpace(gd::string const&);
    cocos2d::CCObject* decodeObjectForKey(char const*, bool, int);
    gd::vector<gd::string> getAllKeys();
    cocos2d::CCArray* getArrayForKey(char const*, bool) = imac 0x180660, m1 0x1459d0;
    bool getBoolForKey(char const*) = m1 0x142dd8;
    cocos2d::CCDictionary* getDictForKey(char const*, bool) = m1 0x146768;
    float getFloatForKey(char const*) = imac 0x17d720, m1 0x142ed0;
    unsigned int getIndexOfKey(char const*);
    unsigned int getIndexOfKeyWithClosestAlphaNumericalMatch(char const*);
    int getIntegerForKey(char const*) = imac 0x17d4e0, m1 0x142ccc;
    gd::string getKey(unsigned int) = imac 0x17ce20, m1 0x14267c;
    unsigned int getNumKeys();
    cocos2d::CCObject* getObjectForKey(char const*) = m1 0x145b38;
    gd::vector<cocos2d::CCRect> getRectArrayForKey(char const*);
    cocos2d::CCRect getRectForKey(char const*);
    gd::vector<gd::string> getStringArrayForKey(char const*);
    gd::string getStringForKey(char const*) = m1 0x142ff0;
    gd::vector<cocos2d::CCPoint> getVec2ArrayForKey(char const*);
    cocos2d::CCPoint getVec2ForKey(char const*);
    bool loadRootSubDictFromCompressedFile(char const*);
    bool loadRootSubDictFromFile(char const*);
    bool loadRootSubDictFromString(gd::string const&) = m1 0x140be4;
    bool rectFromString(gd::string const&, cocos2d::CCRect&);
    void removeAllKeys();
    void removeKey(char const*);
    void removeKey(unsigned int);
    bool saveRootSubDictToCompressedFile(char const*);
    bool saveRootSubDictToFile(char const*);
    gd::string saveRootSubDictToString() = imac 0x17c3e0, m1 0x141e2c;
    void setArrayForKey(char const*, cocos2d::CCArray*) = imac 0x180300, m1 0x144334;
    void setBoolForKey(char const*, bool) = m1 0x11d154;
    void setBoolForKey(char const*, bool, bool);
    void setBoolMapForKey(char const*, gd::map<gd::string, bool>&) = imac 0x180dd0, m1 0xaf6fc;
    void setDictForKey(char const*, cocos2d::CCDictionary*) = imac 0x180b90, m1 0x145e80;
    void setFloatForKey(char const*, float) = imac 0x17eaf0, m1 0x144094;
    void setFloatForKey(char const*, float, bool);
    void setIntegerForKey(char const*, int) = imac 0x17e5e0, m1 0x143c40;
    void setIntegerForKey(char const*, int, bool);
    void setObjectForKey(char const*, cocos2d::CCObject*);
    void setRectArrayForKey(char const*, gd::vector<cocos2d::CCRect> const&);
    void setRectArrayForKey(char const*, gd::vector<cocos2d::CCRect> const&, bool);
    void setRectForKey(char const*, cocos2d::CCRect const&);
    void setRectForKey(char const*, cocos2d::CCRect const&, bool);
    void setStringArrayForKey(char const*, gd::vector<gd::string> const&);
    void setStringArrayForKey(char const*, gd::vector<gd::string> const&, bool);
    void setStringForKey(char const*, gd::string const&) = imac 0x17edf0;
    void setStringForKey(char const*, gd::string const&, bool);
    void setSubDictForKey(char const*) = m1 0x1439a0, ios inline;
    void setSubDictForKey(char const*, bool, bool) = m1 0x38b8c;
    void setVec2ArrayForKey(char const*, gd::vector<cocos2d::CCPoint> const&);
    void setVec2ArrayForKey(char const*, gd::vector<cocos2d::CCPoint> const&, bool);
    void setVec2ForKey(char const*, cocos2d::CCPoint const&);
    void setVec2ForKey(char const*, cocos2d::CCPoint const&, bool);
    void split(gd::string const&, char const*, gd::vector<gd::string>&);
    bool splitWithForm(gd::string const&, gd::vector<gd::string>&);
    void stepBackToRootSubDict();
    bool stepIntoSubDictWithKey(char const*) = imac 0x17c9e0;
    void stepOutOfSubDict() = imac 0x17cbf0, m1 0x1424c8, ios inline;
    bool vec2FromString(gd::string const&, cocos2d::CCPoint&);
}

[[link(win, android)]]
class ObjectDecoder : cocos2d::CCNode {
    // virtual ~ObjectDecoder();

    static ObjectDecoder* sharedDecoder() = m1 0x69a558;

    virtual bool init() = imac 0x791df0, m1 0x69a5cc;

    cocos2d::CCObject* getDecodedObject(int, DS_Dictionary*) = imac 0x791e00, m1 0x69a5d0;
}

[[link(win, android)]]
class pugi::xml_document : pugi::xml_node {
    xml_document();
    ~xml_document() = m1 0x562938;
}

[[link(android)]]
class pugi::xml_node {
    // i'm not bothering
    xml_node() = win inline, imac inline, m1 inline, ios inline;
}

