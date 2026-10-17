#import win <Geode/cocos/platform/win32/CCFileUtilsWin32.h>
#import android <Geode/cocos/platform/android/CCFileUtilsAndroid.h>
#import mac <Geode/cocos/platform/mac/CCFileUtilsMac.h>
#import ios <Geode/cocos/platform/ios/CCFileUtilsIOS.h>

[[link(win, android)]]
class CCContentManager : cocos2d::CCObject {
    static CCContentManager* sharedManager() = imac 0x163540, m1 0x12e1a0, ios 0x490dd0;

    cocos2d::CCDictionary* addDict(char const*, bool) = imac 0x1636b0, m1 0x12e304, ios 0x490e98;
    cocos2d::CCDictionary* addDictDS(char const*) = imac 0x163870, m1 0x12e4b4;
    void clearCache() = imac 0x163a70, m1 0x12e6a0, ios 0x204684;
    bool init() = imac 0x1635c0, m1 0x12e220, ios inline;
}

[[link(win, android)]]
class cocos2d {
    static cocos2d::CCAffineTransform __CCAffineTransformMake(float, float, float, float, float, float) = imac 0x225580, m1 0x1d2a44, ios 0x491830;
    static cocos2d::CCPoint __CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&) = imac 0x2255b0, m1 0x1d2a54, ios 0x491840;
    static cocos2d::CCSize __CCSizeApplyAffineTransform(cocos2d::CCSize const&, cocos2d::CCAffineTransform const&) = imac 0x225620, m1 0x1d2ab0, ios inline;
    static char* cc_utf16_to_utf8(unsigned short const*, long, long*, long*) = imac 0x73dfc0, m1 0x64b9ec;
    static std::vector<unsigned short> cc_utf16_vec_from_utf16_str(unsigned short const*) = imac 0x73dc30, m1 0x64b6c0, ios 0x24025c;
    static unsigned int cc_utf8_find_last_not_char(std::vector<unsigned short>, unsigned short) = imac 0x73d730, m1 0x64b2a8, ios 0x240078;
    static long cc_utf8_strlen(char const*, int) = imac 0x73daf0, m1 0x64b5e0;
    static unsigned short* cc_utf8_to_utf16(char const*, int*) = imac 0x73dde0, m1 0x64b830, ios 0x2403c0;
    static void cc_utf8_trim_ws(std::vector<unsigned short>*) = imac 0x73d870, m1 0x64b3e4, ios 0x24014c;
    static int cc_wcslen(unsigned short const*) = imac 0x73dac0, m1 0x64b5b4, ios 0x240230;
    static cocos2d::CCAffineTransform CCAffineTransformConcat(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&) = imac 0x2259e0, m1 0x1d2dbc, ios 0x491abc;
    static bool CCAffineTransformEqualToTransform(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&) = imac 0x225a50, m1 0x1d2e14, ios inline;
    static cocos2d::CCAffineTransform CCAffineTransformInvert(cocos2d::CCAffineTransform const&) = imac 0x225ab0, m1 0x1d2e80, ios 0x491b14;
    static cocos2d::CCAffineTransform CCAffineTransformMakeIdentity() = imac 0x225680, m1 0x1d2b00, ios 0x49189c;
    static cocos2d::CCAffineTransform CCAffineTransformRotate(cocos2d::CCAffineTransform const&, float) = imac 0x225990, m1 0x1d2d78, ios 0x491a78;
    static cocos2d::CCAffineTransform CCAffineTransformScale(cocos2d::CCAffineTransform const&, float, float) = imac 0x225970, m1 0x1d2d58, ios inline;
    static cocos2d::CCAffineTransform CCAffineTransformTranslate(cocos2d::CCAffineTransform const&, float, float) = imac 0x225930, m1 0x1d2d2c, ios 0x491a4c;
    static cocos2d::CCPoint ccCardinalSplineAt(cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, float, float) = imac 0x2be0d0, m1 0x25e1dc;
    static void ccDrawCardinalSpline(cocos2d::CCPointArray*, float, unsigned int) = imac 0x1ecbb0, m1 0x19ed4c;
    static void ccDrawCatmullRom(cocos2d::CCPointArray*, unsigned int) = imac 0x1ecb90, m1 0x19ed44;
    static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool) = imac 0x1ec160, m1 0x19e520, ios 0x2e761c;
    static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool, float, float) = imac 0x1ebd10, m1 0x19e1c0, ios 0x2e748c;
    static void ccDrawCircleSegment(cocos2d::CCPoint const&, float, float, float, unsigned int, bool, float, float) = imac 0x1ec180, m1 0x19e52c, ios 0x2e7628;
    static void ccDrawColor4B(unsigned char, unsigned char, unsigned char, unsigned char) = imac 0x1ed130, m1 0x19f1c4, ios 0x2e7910;
    static void ccDrawColor4F(float, float, float, float) = imac 0x1ed0d0, m1 0x19f180;
    static void ccDrawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int) = imac 0x1ece50, m1 0x19ef70;
    static void ccDrawFilledCircle(cocos2d::CCPoint const&, float, float, unsigned int) = imac 0x1ec5d0, m1 0x19e88c, ios 0x2e77b4;
    static void ccDrawFree() = imac 0x1eb4e0, m1 0x19d930, ios 0x2e7070;
    static void ccDrawInit() = imac 0x1eb460, m1 0x19d8ac, ios 0x118028;
    static void ccDrawLine(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x1eb840, m1 0x19dcac, ios 0x2e7160;
    static void ccDrawLines(cocos2d::CCPoint const*, unsigned int) = imac 0x1eb730, ios 0x2e70a4;
    static void ccDrawPoint(cocos2d::CCPoint const&) = imac 0x1eb510, m1 0x19d964;
    static void ccDrawPoints(cocos2d::CCPoint const*, unsigned int) = imac 0x1eb620;
    static void ccDrawPoly(cocos2d::CCPoint const*, unsigned int, bool) = imac 0x1ebc10, m1 0x19e0a8;
    static void ccDrawQuadBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int) = imac 0x1ec9a0, m1 0x19eb98;
    static void ccDrawRect(cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x1eb970, m1 0x19ddf4, ios 0x2e7240;
    static void ccDrawSolidPoly(cocos2d::CCPoint const*, unsigned int, cocos2d::ccColor4F) = imac 0x1ebb10, m1 0x19df90, ios 0x2e73dc;
    static void ccDrawSolidRect(cocos2d::CCPoint origin, cocos2d::CCPoint destination, cocos2d::ccColor4F color) = imac 0x1eba60, m1 0x19debc, ios inline;
    static void ccGLBindTexture2D(unsigned int) = imac 0x346780, m1 0x2d7014, ios 0x21fd00;
    static void ccGLBindTexture2DN(unsigned int, unsigned int) = imac 0x3467c0, m1 0x2d7058, ios 0x21fd0c;
    static void ccGLBindVAO(unsigned int) = imac 0x346880, m1 0x2d7140, ios 0x21fd98;
    static void ccGLBlendFunc(unsigned int, unsigned int) = imac 0x3466d0, m1 0x2d6f5c, ios 0x21fc88;
    static void ccGLBlendResetToCache() = imac 0x346730, m1 0x2d6fc0, ios inline;
    static void ccGLDeleteProgram(unsigned int) = imac 0x346690, m1 0x2d6f24, ios 0x21fc50;
    static void ccGLDeleteTexture(unsigned int) = imac 0x346800, m1 0x2d70b0, ios 0x21fd58;
    static void ccGLDeleteTextureN(unsigned int, unsigned int) = imac 0x346840, m1 0x2d70f0, ios inline;
    static void ccGLEnable(cocos2d::ccGLServerState) = imac 0x3468a0, m1 0x2d715c, ios 0x21fdb4;
    static void ccGLEnableVertexAttribs(unsigned int) = imac 0x3468b0, m1 0x2d7160, ios 0x21fdb8;
    static void ccGLInvalidateStateCache() = imac 0x346620, m1 0x2d6ed0;
    static void ccGLUseProgram(unsigned int) = imac 0x3466b0, m1 0x2d6f40, ios 0x21fc6c;
    // static void CCLog(char const*, ...);
    static void CCLuaLog(char const*) = imac 0x154e40, m1 0x1210ec;
    static void CCMessageBox(char const*, char const*) = imac 0x154e50, m1 0x1210f0;
    static float ccpAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x341890, m1 0x2d2d04, ios inline;
    static float ccpAngleSigned(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x341550, m1 0x2d2a44, ios inline;
    static cocos2d::CCPoint ccpClamp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x341420, m1 0x2d297c, ios 0x241d5c;
    static cocos2d::CCPoint ccpCompMult(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x341520, m1 0x2d2a2c, ios inline;
    static float ccpDistance(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x3412a0, m1 0x2d2864, ios 0x241c4c;
    static cocos2d::CCPoint ccpForAngle(float) = imac 0x341330, m1 0x2d28c0, ios 0x4e5b0;
    static cocos2d::CCPoint ccpFromSize(cocos2d::CCSize const& size) = imac 0x3414a0, m1 0x2d29c8, ios inline;
    static bool ccpFuzzyEqual(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float) = imac 0x341510, m1 0x2d2a28, ios inline;
    static cocos2d::CCPoint ccpIntersectPoint(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x341770, m1 0x2d2bfc, ios 0x241e78;
    static float ccpLength(cocos2d::CCPoint const&) = imac 0x341280, m1 0x2d2850, ios 0x241c38;
    static cocos2d::CCPoint ccpLerp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float) = imac 0x341380, m1 0x2d28f8, ios 0x241cd8;
    static bool ccpLineIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, float*, float*) = imac 0x341680, m1 0x2d2b28, ios 0x241dac;
    static cocos2d::CCPoint ccpNormalize(cocos2d::CCPoint const&) = imac 0x3412e0, m1 0x2d2894, ios 0x241c7c;
    static cocos2d::CCPoint CCPointFromString(char const*) = ios 0x23990c;
    static void ccPointSize(float) = imac 0x1ed100, m1 0x19f194;
    static void CCProfilingBeginTimingBlock(char const*) = imac 0x4e6cd0, m1 0x445604;
    static void CCProfilingEndTimingBlock(char const*) = imac 0x4e6e60, m1 0x445788;
    static void CCProfilingResetTimingBlock(char const*) = imac 0x4e7030, m1 0x44594c;
    static cocos2d::CCPoint ccpRotateByAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float) = imac 0x341560, m1 0x2d2a48, ios 0x241da8;
    static bool ccpSegmentIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x341580, m1 0x2d2a4c, ios inline;
    static float ccpToAngle(cocos2d::CCPoint const& point) = imac 0x341360, m1 0x2d28f0, ios inline;
    static cocos2d::CCRect CCRectApplyAffineTransform(cocos2d::CCRect const&, cocos2d::CCAffineTransform const&) = imac 0x2256a0, m1 0x1d2b14, ios 0x4918b0;
    static cocos2d::CCRect CCRectFromString(char const*) = imac 0x5927a0, m1 0x4e2738, ios 0x23926c;
    static void ccSetProjectionMatrixDirty() = imac 0x255390, m1 0x2d7274, ios 0x21fe80;
    static cocos2d::CCSize CCSizeFromString(char const*) = ios 0x2399e0;
    static bool ccVertexLineIntersect(float, float, float, float, float, float, float, float, float*) = imac 0x392860, m1 0x31c3f8, ios 0x47d514;
    static void ccVertexLineToPolygon(cocos2d::CCPoint*, float, cocos2d::ccVertex2F*, unsigned int, unsigned int) = imac 0x392380, m1 0x31c0a4, ios 0x47d230;
    static float clampf(float, float, float) = imac 0x3413f0, m1 0x2d295c, ios 0x241d3c;
    static char const* cocos2dVersion() = imac 0x340810, m1 0x2d1ff8, ios 0x84398;
    static cocos2d::CCBMFontConfiguration* FNTConfigLoadFile(char const*) = imac 0x6a4680, m1 0x5bf4a0, ios 0x393368;
    static void FNTConfigRemoveCache() = imac 0x6a4940, m1 0x5bf76c, ios 0x3934f8;
    static bool isspace_unicode(unsigned short) = imac 0x607940, m1 0x64b2e8, ios 0x2400b8;
}

[[link(win, android)]]
class cocos2d::CCAccelAmplitude : cocos2d::CCActionInterval {
    virtual ~CCAccelAmplitude() = imac 0x1edc50, m1 0x19fcc4;

    static cocos2d::CCAccelAmplitude* create(cocos2d::CCAction*, float);

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x1edd10, m1 0x19fd9c;
    virtual void update(float) = imac 0x1edd40, m1 0x19fdd0;
    virtual cocos2d::CCActionInterval* reverse();

    bool initWithAction(cocos2d::CCAction*, float) = imac 0x1edc10, m1 0x19fc80;
}

[[link(win, android)]]
class cocos2d::CCAccelDeccelAmplitude : cocos2d::CCActionInterval {
    virtual ~CCAccelDeccelAmplitude() = imac 0x1ed930, m1 0x19f9ac;

    static cocos2d::CCAccelDeccelAmplitude* create(cocos2d::CCAction*, float);

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x1ed9f0, m1 0x19fa64;
    virtual void update(float) = imac 0x1eda20, m1 0x19fa98;
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
    CCAction() = imac 0x6c5040, m1 0x5dd58c, ios 0x3007a8;
    virtual ~CCAction() = imac 0x6c50c0, m1 0x5dd5ec, ios 0x3007d8;

    static cocos2d::CCAction* create() = imac 0x6c5130, m1 0x5dd62c, ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x6c51b0, m1 0x5dd6bc, ios 0x300818;
    virtual void update(float) = imac 0x6c52b0, m1 0x5dd7a4, ios 0x3008e4;
    // virtual void setTag(int) = m1 0x1b6e5c, imac 0x205680;
    virtual bool isDone() = imac 0x6c5290, m1 0x5dd798, ios 0x3008d8;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x6c5270, m1 0x5dd788, ios 0x3008c8;
    virtual void stop() = imac 0x6c5280, m1 0x5dd790, ios 0x3008d0;
    virtual void step(float) = imac 0x6c52a0, m1 0x5dd7a0, ios 0x3008e0;

    char const* description() = imac 0x6c5190, m1 0x5dd690, ios inline;

    cocos2d::CCNode* m_pOriginalTarget;
    cocos2d::CCNode* m_pTarget;
    int m_nTag;
    float m_fSpeedMod;
}

[[link(win, android)]]
class cocos2d::CCActionCamera : cocos2d::CCActionInterval {
    // CCActionCamera(cocos2d::CCActionCamera const&);
    // CCActionCamera();

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3506b0, m1 0x2e02ec;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x350720, m1 0x2e0358;
}

[[link(win, android)]]
class cocos2d::CCActionEase : cocos2d::CCActionInterval {
    // CCActionEase(cocos2d::CCActionEase const&);
    // CCActionEase();
    virtual ~CCActionEase() = imac 0x515070, m1 0x46fe24, ios 0x307948;

    static cocos2d::CCActionEase* create(cocos2d::CCActionInterval*) = imac 0x514ea0, m1 0x46fc48, ios 0x307794;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x514f70, m1 0x46fd30, ios 0x30786c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x515130, m1 0x46fedc, ios 0x30799c;
    virtual void stop() = imac 0x515160, m1 0x46ff0c, ios 0x3079cc;
    virtual void update(float) = imac 0x515190, m1 0x46ff3c, ios 0x3079fc;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5151b0, m1 0x46ff4c, ios 0x307a0c;
    virtual cocos2d::CCActionInterval* getInnerAction() = imac 0x5151d0, m1 0x46ff6c, ios 0x307a2c;

    bool initWithAction(cocos2d::CCActionInterval* pAction) = imac 0x514f40, m1 0x46fcf0, ios 0x307824;
}

[[link(win, android)]]
class cocos2d::CCActionInstant : cocos2d::CCFiniteTimeAction {
    // CCActionInstant(cocos2d::CCActionInstant const&);
    CCActionInstant() = imac 0x88d770, m1 0x7819c4, ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x88d7d0, m1 0x781a0c, ios 0x240974;
    virtual void update(float) = imac 0x739d50, m1 0x781ae4, ios 0x240a34;
    virtual bool isDone() = imac 0x88d880, m1 0x781acc, ios 0x240a1c;
    virtual void step(float) = imac 0x88d890, m1 0x781ad4, ios 0x240a24;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x88d8c0, m1 0x781ae8, ios 0x240a38;
}

[[link(win, android)]]
class cocos2d::CCActionInterval : cocos2d::CCFiniteTimeAction {
    static cocos2d::CCActionInterval* create(float) = imac 0x39e1e0, m1 0x3269cc, ios inline;

    // CCActionInterval(cocos2d::CCActionInterval const&);
    // CCActionInterval();
    // ~CCActionInterval() = ios 0x264838;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x39e2c0, m1 0x326a7c, ios 0x21b45c;
    virtual bool isDone() = imac 0x39e3c0, m1 0x326b60, ios 0x21b534;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x39e480, m1 0x326bf4, ios 0x21b5bc;
    virtual void step(float) = imac 0x39e3e0, m1 0x326b70, ios 0x21b544;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x39e4a0, m1 0x326c20, ios 0x21b5e8;

    float getAmplitudeRate() = imac 0x39e470, m1 0x326bec, ios inline;
    bool initWithDuration(float d) = imac 0x39e280, m1 0x326a58, ios 0x21b438;
    // float getElapsed();
    // bool getM_bFirstTick() const;
    void setAmplitudeRate(float) = imac 0x39e460, m1 0x326be8, ios inline;

    float m_elapsed;
    bool m_bFirstTick;
}

[[link(win, android)]]
class cocos2d::CCActionManager : cocos2d::CCObject {
    CCActionManager() = imac 0x217ea0, m1 0x1c7388, ios 0x38e594;
    virtual ~CCActionManager() = imac 0x217ed0, m1 0x1c73b0, ios 0x38e5bc;

    virtual void update(float) = imac 0x218fa0, m1 0x1c85f4, ios 0x38f388;

    void actionAllocWithHashElement(cocos2d::_hashElement*) = imac 0x218110, m1 0x1c7600, ios 0x38e73c;
    void addAction(cocos2d::CCAction*, cocos2d::CCNode*, bool) = imac 0x2184a0, m1 0x1c7a18, ios 0x38ea2c;
    void deleteHashElement(cocos2d::_hashElement*) = imac 0x218010, m1 0x1c74d0, ios 0x38e620;
    cocos2d::CCAction* getActionByTag(unsigned int, cocos2d::CCObject*) = imac 0x218d90, m1 0x1c83b4, ios 0x38f25c;
    unsigned int numberOfRunningActionsInTarget(cocos2d::CCObject* target) = imac 0x218eb0, m1 0x1c84e8, ios inline;
    cocos2d::CCSet* pauseAllRunningActions() = imac 0x2183a0, m1 0x1c78fc, ios inline;
    void pauseTarget(cocos2d::CCObject*) = imac 0x2181e0, m1 0x1c7708, ios 0x38e838;
    void removeAction(cocos2d::CCAction*) = imac 0x218a50, m1 0x1c800c, ios 0x38efe8;
    void removeActionAtIndex(unsigned int, cocos2d::_hashElement*) = imac 0x218150, m1 0x1c7640, ios 0x38e77c;
    void removeActionByTag(unsigned int, cocos2d::CCObject*) = imac 0x218be0, m1 0x1c81c4, ios 0x38f11c;
    void removeAllActions() = imac 0x217f20, m1 0x1c73fc, ios inline;
    void removeAllActionsFromTarget(cocos2d::CCObject*) = imac 0x2188e0, m1 0x1c7e88, ios 0x38ee64;
    void resumeTarget(cocos2d::CCObject*) = imac 0x2182c0, m1 0x1c7804, ios 0x38e934;
    void resumeTargets(cocos2d::CCSet*) = imac 0x218410, m1 0x1c7984, ios inline;
}

[[link(win, android)]]
class cocos2d::CCActionTween {
    static cocos2d::CCActionTween* create(float, char const*, float, float) = imac 0x886860, m1 0x77b38c, ios 0x44d700;
    static cocos2d::CCActionTween* create(float, int, float, float) = imac 0x886760, m1 0x77b2a4, ios 0x44d6d4;

    virtual void update(float) = imac 0x886a10, m1 0x77b504, ios 0x44d80c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x8869c0, m1 0x77b4c8, ios 0x44d7e0;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x886a80, m1 0x77b558, ios 0x44d854;

    bool initWithDuration(float, char const*, float, float) = imac 0x886960, m1 0x77b46c, ios inline;
    // CCActionTween(cocos2d::CCActionTween const&);
    // CCActionTween();
    void updateTargetValue(float) = imac 0x8869f0, m1 0x77b4f4, ios inline;
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
    CCAnimate() = imac 0x3a5520, m1 0x32ceac, ios 0x21ea74;
    virtual ~CCAnimate() = imac 0x3a55a0, m1 0x32cf18, ios 0x21eae0;

    static cocos2d::CCAnimate* create(cocos2d::CCAnimation*) = imac 0x3a4ff0, m1 0x32ca68, ios 0x21e730;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a5400, m1 0x32cda4, ios 0x21e9bc;
    virtual void update(float) = imac 0x3a5700, m1 0x32d054, ios 0x21ec18;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a5640, m1 0x32cf9c, ios 0x21eb64;
    virtual void stop() = imac 0x3a56b0, m1 0x32d008, ios 0x21ebd0;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a5950, m1 0x32d268, ios 0x21ee24;

    bool initWithAnimation(cocos2d::CCAnimation*) = imac 0x3a5130, m1 0x32cb78, ios 0x21e788;

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
    CCAnimation() = imac 0x281270, m1 0x2266e4, ios inline;
    virtual ~CCAnimation() = imac 0x2812c0, m1 0x226718;

    static cocos2d::CCAnimation* create() = imac 0x280d80, m1 0x226230, ios inline;
    static cocos2d::CCAnimation* create(cocos2d::CCArray*, float, unsigned int) = imac 0x2810c0, m1 0x226534, ios 0x23741c;
    static cocos2d::CCAnimation* createWithSpriteFrames(cocos2d::CCArray*, float) = imac 0x280ec0, m1 0x22635c, ios 0x237278;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x281520, m1 0x22696c, ios 0x237648;
    virtual float getDuration() = imac 0x281510, m1 0x226960, ios 0x23763c;

    void addSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x281380, m1 0x2267d0, ios inline;
    void addSpriteFrameWithFileName(char const*) = imac 0x281460, m1 0x2268a0, ios inline;
    void addSpriteFrameWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = imac 0x2814e0, m1 0x226930, ios inline;
    bool init() = imac 0x280e70, m1 0x226300, ios inline;
    bool initWithAnimationFrames(cocos2d::CCArray*, float, unsigned int) = imac 0x2811d0, m1 0x22663c, ios 0x2374b4;
    bool initWithSpriteFrames(cocos2d::CCArray*, float) = imac 0x280f50, m1 0x2263e4, ios 0x1a6ec8;
}

[[link(win, android)]]
class cocos2d::CCAnimationCache : cocos2d::CCObject {
    CCAnimationCache() = imac 0x461060, m1 0x3cd758, ios inline;
    virtual ~CCAnimationCache() = imac 0x461090, m1 0x3cd77c, ios 0x26a438;

    static void purgeSharedAnimationCache() = imac 0x461030, m1 0x3cd72c, ios 0x26a40c;
    static cocos2d::CCAnimationCache* sharedAnimationCache() = imac 0x460f20, m1 0x3cd61c, ios 0x26a35c;

    void addAnimation(cocos2d::CCAnimation*, const char*) = imac 0x1e5870, ios 0x26a48c;
    void addAnimationsWithDictionary(cocos2d::CCDictionary*, const char*) = imac 0x461ad0, m1 0x3ce1d0, ios inline;
    void addAnimationsWithFile(const char*) = imac 0x461cf0, m1 0x3ce430, ios inline;
    cocos2d::CCAnimation* animationByName(const char*) = imac 0x461320, ios 0x26a4fc;
    bool init() = imac 0x460ff0, m1 0x3cd6e4, ios 0x26a3c4;
    void parseVersion1(cocos2d::CCDictionary*) = imac 0x461400, m1 0x3cdb34, ios inline;
    void parseVersion2(cocos2d::CCDictionary*) = imac 0x4616a0, m1 0x3cdd98, ios inline;
    void removeAnimationByName(const char*) = imac 0x461240, m1 0x3cd934, ios inline;
}

[[link(win, android)]]
class cocos2d::CCAnimationFrame : cocos2d::CCObject {
    CCAnimationFrame() = imac 0x280a60, m1 0x225f40, ios inline;
    virtual ~CCAnimationFrame() = imac 0x280b30, m1 0x226004, ios 0x23709c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x280c20, m1 0x2260e0, ios 0x2370fc;

    bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, float, cocos2d::CCDictionary*) = imac 0x280aa0, m1 0x225f74, ios inline;
}

[[link(win, android)]]
class cocos2d::CCApplication : cocos2d::CCApplicationProtocol {
    CCApplication() = imac 0x314590, m1 0x2a69a4, ios 0x23ee44;
    virtual ~CCApplication() = imac 0x3145c0, m1 0x2a69cc, ios 0x23ee70;

    static cocos2d::CCApplication* sharedApplication() = imac 0x3146c0, m1 0x2a6aa8, ios 0x23efbc;

    virtual int run() = imac 0x314630, m1 0x2a6a40, ios 0x23eed0;
    virtual void setAnimationInterval(double) = imac 0x314670, m1 0x2a6a74, ios 0x23ef90;
    virtual cocos2d::ccLanguageType getCurrentLanguage() = imac 0x3146d0, m1 0x2a6ab4, ios 0x23efd8;
    virtual cocos2d::TargetPlatform getTargetPlatform() = imac 0x3146b0, m1 0x2a6aa0, ios 0x1f85f4;
    virtual void openURL(char const*) = imac 0x3153d0, m1 0x2a7370, ios 0x23ef04;

    [[missing(android, ios)]]
    std::string const& getResourceRootPath() = imac 0x314cc0, m1 0x2a7088;
    [[missing(android, ios)]]
    std::string const& getStartupScriptFilename() = imac 0x3153c0, m1 0x2a7368;
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
    void setResourceRootPath(std::string const&) = imac 0x314900, m1 0x2a6cd8;
    [[missing(android, ios)]]
    void setStartupScriptFilename(std::string const&) = imac 0x314cd0, m1 0x2a7090;
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

    void addObjectNew(cocos2d::CCObject*) = imac 0x7fd230, m1 0x6fe010, ios inline;
    // void addObjectsFromArray(cocos2d::CCArray*);
    // unsigned int capacity() const;
    // bool containsObject(cocos2d::CCObject*) const;
    // unsigned int count() const;
    // void exchangeObject(cocos2d::CCObject*, cocos2d::CCObject*);
    // void exchangeObjectAtIndex(unsigned int, unsigned int);
    // void fastRemoveObject(cocos2d::CCObject*);
    // void fastRemoveObjectAtIndex(unsigned int) = imac 0x709f10, m1 0x629530;
    void fastRemoveObjectAtIndexChild(unsigned int) = imac 0x7fd2f0, m1 0x6fe070, ios inline;
    void fastRemoveObjectAtIndexNew(unsigned int) = imac 0x7fd2e0, m1 0x6fe068, ios inline;
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
    void recreateNewIndexes() = imac 0x7fd220, m1 0x6fe008, ios inline;
    // void reduceMemoryFootprint();
    // void removeAllObjects() = ios 0x249528;
    // void removeLastObject(bool);
    // void removeObject(cocos2d::CCObject*, bool);
    // void removeObjectAtIndex(unsigned int, bool);
    void removeObjectAtIndexChild(unsigned int, bool) = imac 0x7fd290, m1 0x6fe044, ios 0x2e5348;
    // void removeObjectsInArray(cocos2d::CCArray*);
    // void replaceObjectAtIndex(unsigned int, cocos2d::CCObject*, bool);
    // void reverseObjects();
    cocos2d::CCString* stringAtIndex(unsigned int) = imac 0x7fd0f0, m1 0x6fded4, ios 0x2e526c;

    // virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios 0x249634, imac 0x71ff10, m1 0x632d6c;
    // virtual void acceptVisitor(cocos2d::CCDataVisitor&) = ios 0x2496f8, imac 0x720010, m1 0x632e6c;
    cocos2d::ccArray* data;
}

[[link(win, android)]]
class cocos2d::CCAtlasNode : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    CCAtlasNode() = imac 0x3159b0;
    virtual ~CCAtlasNode();

    static cocos2d::CCAtlasNode* create(char const*, unsigned int, unsigned int, unsigned int) = imac 0x315bb0, m1 0x2a7a70;

    virtual cocos2d::CCTextureAtlas* getTextureAtlas() = imac 0x3164f0, m1 0x2a8388;
    virtual void setTextureAtlas(cocos2d::CCTextureAtlas*) = imac 0x3164b0, m1 0x2a834c;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x316370, m1 0x2a8230;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x316390, m1 0x2a8244;
    virtual unsigned int getQuadsToDraw() = imac 0x316500, m1 0x2a8390;
    virtual void setQuadsToDraw(unsigned int) = imac 0x316510, m1 0x2a8398;
    virtual void updateAtlasValues() = imac 0x315fb0, m1 0x2a7e60;
    virtual void draw() = imac 0x315fc0, m1 0x2a7e64;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x316480, m1 0x28533c;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x3163b0, m1 0x2a8258;
    virtual bool isOpacityModifyRGB() = imac 0x316340, m1 0x2a8218;
    virtual void setOpacityModifyRGB(bool) = imac 0x316290, m1 0x2a8150;
    virtual cocos2d::ccColor3B const& getColor() = imac 0x3160b0, m1 0x2a7f70;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x3160f0, m1 0x2a7fa4;
    virtual void setOpacity(unsigned char) = imac 0x316200, m1 0x2a80b8;

    void calculateMaxItems() = imac 0x315f20, m1 0x2a7dd8;
    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int, unsigned int, unsigned int) = imac 0x315d00, m1 0x2a7bc4;
    bool initWithTileFile(char const*, unsigned int, unsigned int, unsigned int) = imac 0x315ca0, m1 0x2a7b64;
    void setIgnoreContentScaleFactor(bool) = imac 0x316360, m1 0x2a8228;
    void updateBlendFunc() = imac 0x315eb0, m1 0x2a7d60;
    void updateOpacityModifyRGB() = imac 0x315ef0, m1 0x2a7da4;
}

[[link(win, android)]]
class cocos2d::CCAutoreleasePool : cocos2d::CCObject {
    CCAutoreleasePool() = imac 0x3e2ec0, m1 0x36114c, ios 0x243154;
    virtual ~CCAutoreleasePool() = imac 0x3e2f40, m1 0x3611d0, ios inline;

    void addObject(cocos2d::CCObject*) = imac 0x3e3000, m1 0x3612a8, ios inline;
    void clear() = imac 0x3e3080, m1 0x361330, ios 0x243258;
    void removeObject(cocos2d::CCObject*) = imac 0x3e3030, m1 0x3612dc, ios inline;
}

[[link(win, android)]]
class cocos2d::CCBezierBy : cocos2d::CCActionInterval {
    static cocos2d::CCBezierBy* create(float, cocos2d::ccBezierConfig const&) = imac 0x3a2630, m1 0x32a5b8, ios 0x21cf14;

    // CCBezierBy(cocos2d::CCBezierBy const&);
    // CCBezierBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a2830, m1 0x32a76c, ios 0x21d090;
    virtual void update(float) = imac 0x3a29b0, m1 0x32a8bc, ios 0x21d1a0;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a27e0, m1 0x32a718, ios 0x21d03c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a2b50, m1 0x32aa14, ios 0x21d2f8;

    bool initWithDuration(float, cocos2d::ccBezierConfig const&) = imac 0x3a2770, m1 0x32a6b8, ios 0x21cfdc;
}

[[link(win, android)]]
class cocos2d::CCBezierTo : cocos2d::CCBezierBy {
    static cocos2d::CCBezierTo* create(float, cocos2d::ccBezierConfig const&) = imac 0x3a2c20, m1 0x32aac8, ios 0x21d3ac;

    // CCBezierTo(cocos2d::CCBezierTo const&);
    // CCBezierTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a2d70, m1 0x32abd8, ios 0x21d48c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a2ea0, m1 0x32acd8, ios 0x21d554;

    bool initWithDuration(float, cocos2d::ccBezierConfig const&) = imac 0x3a2d00, m1 0x32ab78, ios 0x21d42c;
}

[[link(win, android)]]
class cocos2d::CCBlink : cocos2d::CCActionInterval {
    static cocos2d::CCBlink* create(float, unsigned int) = imac 0x3a3730, m1 0x32b41c, ios 0x21db48;

    // CCBlink(cocos2d::CCBlink const&);
    // CCBlink();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a3890, m1 0x32b554, ios 0x21dc58;
    virtual void update(float) = imac 0x3a39a0, m1 0x32b644, ios 0x21dd44;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a3850, m1 0x32b510, ios 0x21dc14;
    virtual void stop() = imac 0x3a3820, m1 0x32b4dc, ios 0x21dbe0;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a3a20, m1 0x32b6cc, ios 0x21ddcc;

    bool initWithDuration(float, unsigned int) = imac 0x3a37e0, m1 0x32b4b4, ios inline;
}

[[link(win, android)]]
class cocos2d::CCBMFontConfiguration : cocos2d::CCObject {
    // CCBMFontConfiguration(cocos2d::CCBMFontConfiguration const&);
    CCBMFontConfiguration() = imac 0x6a56b0, m1 0x5c0650, ios inline;
    virtual ~CCBMFontConfiguration() = imac 0x6a5700, m1 0x5c0688, ios 0x393fac;

    static cocos2d::CCBMFontConfiguration* create(char const*) = imac 0x6a48b0, m1 0x5bf6c4, ios 0x39345c;

    char const* description() = imac 0x6a5a60, m1 0x5c09c0, ios inline;
    bool initWithFNTfile(char const*) = imac 0x6a49d0, m1 0x5bf7dc, ios inline;
    void parseCharacterDefinition(std::string, cocos2d::_BMFontDef*) = imac 0x6a6610, m1 0x5c1500, ios 0x3948c4;
    void parseCommonArguments(std::string) = imac 0x6a5cb0, m1 0x5c0c04, ios 0x3943ac;
    std::set<unsigned int>* parseConfigFile(char const*) = imac 0x6a4a00, m1 0x5bf810, ios 0x393530;
    void parseImageFileName(std::string, char const*) = imac 0x6a63a0, m1 0x5c1288, ios 0x39477c;
    void parseInfoArguments(std::string) = imac 0xf1550, m1 0x5c0a1c, ios 0x39428c;
    void parseKerningEntry(std::string) = imac 0x6a7500, m1 0x5c21dc, ios 0x395044;
    void purgeFontDefDictionary() = imac 0x6a5790, m1 0x5c0728, ios 0x394034;
    void purgeKerningDictionary() = imac 0x6a58f0, m1 0x5c0870, ios 0x39415c;
}

[[link(win, android)]]
class cocos2d::CCCallFunc : cocos2d::CCActionInstant {
    // CCCallFunc(cocos2d::CCCallFunc const&);
    // CCCallFunc();
    virtual ~CCCallFunc() = imac 0x88e520, m1 0x782768, ios 0x240d60;

    static cocos2d::CCCallFunc* create(cocos2d::CCObject*, cocos2d::SEL_CallFunc) = imac 0x88e3d0, m1 0x782628, ios 0x240c7c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x88e620, m1 0x782880, ios 0x240dd4;
    virtual void update(float) = imac 0x88e720, m1 0x782984, ios 0x240ed4;
    virtual bool initWithTarget(cocos2d::CCObject*) = imac 0x88e4e0, m1 0x782728, ios 0x240d20;
    virtual void execute() = imac 0x88e730, m1 0x782990, ios 0x240ee0;
}

[[link(win, android)]]
class cocos2d::CCCallFuncN : cocos2d::CCCallFunc, cocos2d::TypeInfo {
    static cocos2d::CCCallFuncN* create(cocos2d::CCObject* pSelectorTarget, cocos2d::SEL_CallFuncN selector) = imac 0x88e7f0, m1 0x782a74, ios inline;

    virtual bool initWithTarget(cocos2d::CCObject* pSelectorTarget, cocos2d::SEL_CallFuncN selector) = imac 0x88e920, m1 0x782b84, ios inline;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* zone) = imac 0x88e970, m1 0x782bd8, ios inline;
    virtual void execute() = imac 0x88e790, m1 0x782a00, ios inline;
}

[[link(win, android)]]
class cocos2d::CCCallFuncND : cocos2d::CCCallFuncN {
    static cocos2d::CCCallFuncND* create(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*) = imac 0x88ea60, m1 0x782cb8, ios inline;

    // CCCallFuncND(cocos2d::CCCallFuncND const&);
    // CCCallFuncND();
    virtual bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*) = imac 0x88eb50, m1 0x782d80, ios inline;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x88ebc0, m1 0x782de4, ios inline;
    virtual void execute() = imac 0x88ece0, m1 0x782ee0, ios inline;
}

[[link(win, android)]]
class cocos2d::CCCallFuncO : cocos2d::CCCallFunc, cocos2d::TypeInfo {
    // cocos2d::CCObject* getObject();
    // void setObject(cocos2d::CCObject*);
    // CCCallFuncO(cocos2d::CCCallFuncO const&);
    CCCallFuncO() = imac 0x88ed80, m1 0x782f50, ios inline;
    virtual ~CCCallFuncO() = imac 0x88ede0, m1 0x782f88, ios 0x2411a8;

    static cocos2d::CCCallFuncO* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*) = imac 0x88eed0, m1 0x783054, ios 0x241238;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x88f020, m1 0x783180, ios 0x241080;
    virtual void execute() = imac 0x88ee90, m1 0x783020, ios 0x241170;
    virtual bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*) = imac 0x88efb0, m1 0x783110, ios 0x2412f8;
}

[[link(win, android)]]
class cocos2d::CCCamera : cocos2d::CCObject {
    // private CCCamera(cocos2d::CCCamera const&);
    CCCamera() = imac 0x592470, m1 0x4e24a8, ios 0x231440;
    virtual ~CCCamera() = imac 0x5924d0, m1 0x4e2518, ios inline;

    static float getZEye() = imac 0x592590, m1 0x4e25bc, ios inline;

    char const* description() = imac 0x592510, m1 0x4e2534, ios inline;
    void getCenterXYZ(float*, float*, float*) = imac 0x5926e0, m1 0x4e269c, ios inline;
    void getEyeXYZ(float*, float*, float*) = imac 0x5926b0, m1 0x4e2680, ios inline;
    void getUpXYZ(float*, float*, float*) = imac 0x592710, m1 0x4e26b8, ios inline;
    void init() = imac 0x592430, m1 0x4e2460, ios inline;
    void locate() = imac 0x5925a0, m1 0x4e25c4, ios 0x231514;
    void restore() = imac 0x592550, m1 0x4e2574, ios 0x2314cc;
    void setCenterXYZ(float, float, float) = imac 0x592670, m1 0x4e2658, ios inline;
    void setEyeXYZ(float, float, float) = imac 0x592650, m1 0x4e2644, ios inline;
    void setUpXYZ(float, float, float) = imac 0x592690, m1 0x4e266c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCCardinalSplineBy : cocos2d::CCCardinalSplineTo {
    CCCardinalSplineBy() = imac 0x2beac0, m1 0x25eadc;

    static cocos2d::CCCardinalSplineBy* create(float, cocos2d::CCPointArray*, float) = imac 0x2be9a0, m1 0x25e9b0;

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x2bef50, m1 0x25ef10;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x2bec10, m1 0x25ec4c;
    virtual void updatePosition(cocos2d::CCPoint&) = imac 0x2bebc0, m1 0x25ebf4;
}

[[link(win, android)]]
class cocos2d::CCCardinalSplineTo : cocos2d::CCActionInterval {
    CCCardinalSplineTo() = imac 0x2be2c0, m1 0x25e368;
    virtual ~CCCardinalSplineTo() = imac 0x2be380, m1 0x25e424;

    static cocos2d::CCCardinalSplineTo* create(float, cocos2d::CCPointArray*, float) = imac 0x2be1d0, m1 0x25e270;

    virtual cocos2d::CCCardinalSplineTo* copyWithZone(cocos2d::CCZone*) = imac 0x2be520, m1 0x25e5b8;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x2be4b0, m1 0x25e544;
    virtual void update(float) = imac 0x2be650, m1 0x25e6d4;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x2be970, m1 0x25e984;
    virtual void updatePosition(cocos2d::CCPoint&) = imac 0x2be940, m1 0x25e94c;

    bool initWithDuration(float, cocos2d::CCPointArray*, float) = imac 0x2be320, m1 0x25e3c4;
}

[[link(win, android)]]
class cocos2d::CCCatmullRomBy : cocos2d::CCCardinalSplineBy {
    static cocos2d::CCCatmullRomBy* create(float, cocos2d::CCPointArray*) = imac 0x2bf140, m1 0x25f114;

    bool initWithDuration(float, cocos2d::CCPointArray*) = imac 0x2bf290, m1 0x25f268;
}

[[link(win, android)]]
class cocos2d::CCCatmullRomTo : cocos2d::CCCardinalSplineTo {
    static cocos2d::CCCatmullRomTo* create(float, cocos2d::CCPointArray*) = imac 0x2befe0, m1 0x25efa0;

    bool initWithDuration(float, cocos2d::CCPointArray*) = imac 0x2bf0f0, m1 0x25f0bc;
}

[[link(win, android)]]
class cocos2d::CCClippingNode : cocos2d::CCNode {
    protected CCClippingNode() = imac 0x7fc020, m1 0x6fd060;
    virtual ~CCClippingNode() = m1 0x6fd0b8;

    static cocos2d::CCClippingNode* create() = imac 0x7fc170, m1 0x6fd170;
    static cocos2d::CCClippingNode* create(cocos2d::CCNode* stencil) = imac 0x7fc200, m1 0x6fd1f8;

    virtual bool init() = imac 0x7fc2b0, m1 0x6fd298;
    virtual bool init(cocos2d::CCNode* pStencil) = imac 0x7fc2d0, m1 0x6fd2a8;
    virtual void onEnter() = imac 0x7fc340, m1 0x6fd318;
    virtual void onEnterTransitionDidFinish() = imac 0x7fc370, m1 0x6fd344;
    virtual void onExit() = imac 0x7fc3d0, m1 0x6fd3a0;
    virtual void onExitTransitionDidStart() = imac 0x7fc3a0, m1 0x6fd370;
    virtual void visit() = imac 0x7fc400, m1 0x6fd3d0;

    float getAlphaThreshold() const = imac 0x7fc7b0, m1 0x6fd750;
    cocos2d::CCNode* getStencil() const = imac 0x7fc760, m1 0x6fd704;
    bool isInverted() const = imac 0x7fc7d0, m1 0x6fd760;
    void setAlphaThreshold(float fAlphaThreshold) = imac 0x7fc7c0, m1 0x6fd758;
    void setInverted(bool bInverted) = imac 0x7fc7e0, m1 0x6fd768;
    void setStencil(cocos2d::CCNode* pStencil) = imac 0x7fc770, m1 0x6fd70c;
}

[[link(win, android)]]
class cocos2d::CCComponent : cocos2d::CCObject {
    protected CCComponent() = imac 0x62eb0, m1 0x5c0b0;
    virtual ~CCComponent() = imac 0x62f10, m1 0x5c118;

    static cocos2d::CCComponent* create() = imac 0x63020, m1 0x5c210;

    virtual bool init() = imac 0x62fd0, m1 0x5c1f4;
    virtual void onEnter() = imac 0x62fe0, m1 0x5c1fc;
    virtual void onExit() = imac 0x62ff0, m1 0x5c200;
    virtual void update(float) = imac 0x63000, m1 0x5c204;
    virtual bool serialize(void*) = imac 0x63010, m1 0x5c208;
    virtual bool isEnabled() const = imac 0x630d0, m1 0x5c2ac;
    virtual void setEnabled(bool) = imac 0x630e0, m1 0x5c2b4;

    char const* getName() const = imac 0x63080, m1 0x5c278;
    cocos2d::CCNode* getOwner() const = imac 0x630b0, m1 0x5c29c;
    void setName(char const*) = imac 0x630a0, m1 0x5c294;
    void setOwner(cocos2d::CCNode*) = imac 0x630c0, m1 0x5c2a4;
}

[[link(win, android)]]
class cocos2d::CCComponentContainer {
    protected CCComponentContainer(cocos2d::CCNode*) = win inline, imac 0x2b1a30, m1 0x252b40, ios 0x1ebe54;
    virtual ~CCComponentContainer() = imac 0x2b1a50, m1 0x252b54, ios 0x1ebe68;

    virtual cocos2d::CCComponent* get(char const*) const = imac 0x2b1af0, m1 0x252c08, ios 0x1ebebc;
    virtual bool add(cocos2d::CCComponent*) = imac 0x2b1c10, m1 0x252d38, ios 0x1ebf5c;
    virtual bool remove(char const*) = imac 0x2b1e30, m1 0x252f4c, ios 0x1d7e00;
    virtual bool remove(cocos2d::CCComponent*) = imac 0x2b2100, m1 0x253218, ios 0x1ec340;
    virtual void removeAll() = imac 0x2b22a0, m1 0x2533ac, ios 0x1ec4c0;
    virtual void visit(float) = imac 0x2b2490, m1 0x25354c, ios 0x1ec630;

    void alloc() = imac 0x2b2470, m1 0x253528, ios inline;
    bool isEmpty() const = imac 0x2b24e0, m1 0x2535a0, ios 0x1ec684;
}

[[link(win, android)]]
class cocos2d::CCConfiguration : cocos2d::CCObject {
    CCConfiguration() = imac 0x519bf0, m1 0x474690, ios inline;
    // CCConfiguration(cocos2d::CCConfiguration const&);
    virtual ~CCConfiguration() = imac 0x519f10, m1 0x4749a0, ios 0x3c030c;

    static void purgeConfiguration() = imac 0x51a900, m1 0x47543c, ios 0x3c09dc;
    static cocos2d::CCConfiguration* sharedConfiguration() = imac 0x51a870, m1 0x4753bc, ios 0x3c0968;

    bool checkForGLExtension(std::string const&) const = imac 0x51a840, m1 0x475388, ios 0x3c0934;
    void dumpInfo() const = imac 0x519fd0, m1 0x474a4c, ios 0x3c035c;
    void gatherGPUInfo() = imac 0x51a050, m1 0x474aec, ios 0x3c03e4;
    bool getBool(char const*, bool) const = imac 0x51aad0, m1 0x4755c4, ios 0x3c0ac4;
    char const* getCString(char const*, char const*) const = imac 0x51a9b0, m1 0x4754a8, ios 0x3c0a28;
    int getMaxModelviewStackDepth() const = imac 0x51a940, m1 0x475470, ios inline;
    int getMaxTextureSize() const = imac 0x51a930, m1 0x475468, ios 0x3c0a08;
    int getMaxTextureUnits() const = imac 0x51a950, m1 0x475478, ios inline;
    double getNumber(char const*, double) const = imac 0x51ac10, m1 0x475704, ios 0x3c0b88;
    cocos2d::CCObject* getObject(char const*) const = imac 0x51ad70, ios inline;
    bool init() = imac 0x519c70, m1 0x4746f0, ios 0x3c0150;
    void loadConfigFile(char const*) = imac 0x51af40, m1 0x475a80, ios inline;
    void setObject(char const*, cocos2d::CCObject*) = imac 0x51ae50, ios inline;
    bool supportsBGRA8888() const = imac 0x51a980, m1 0x475490, ios 0x3c0a20;
    bool supportsDiscardFramebuffer() const = imac 0x51a990, m1 0x475498, ios inline;
    bool supportsNPOT() const = imac 0x51a960, m1 0x475480, ios 0x3c0a10;
    bool supportsPVRTC() const = imac 0x51a970, m1 0x475488, ios 0x3c0a18;
    bool supportsShareableVAO() const = imac 0x51a9a0, m1 0x4754a0, ios inline;
}

[[link(win, android)]]
class cocos2d::CCDataVisitor {
    virtual void visit(cocos2d::CCBool const*) = imac 0x4add70, m1 0x413250, ios inline;
    virtual void visit(cocos2d::CCInteger const*) = imac 0x4add80, m1 0x41325c, ios inline;
    virtual void visit(cocos2d::CCFloat const*) = imac 0x4add90, m1 0x413268, ios inline;
    virtual void visit(cocos2d::CCDouble const*) = imac 0x4adda0, m1 0x413274, ios inline;
    virtual void visit(cocos2d::CCString const*) = imac 0x4addb0, m1 0x413280, ios inline;
    virtual void visit(cocos2d::CCArray const*) = imac 0x4addc0, m1 0x41328c, ios inline;
    virtual void visit(cocos2d::CCDictionary const*) = imac 0x4addd0, m1 0x413298, ios inline;
    virtual void visit(cocos2d::CCSet const*) = imac 0x4adde0, m1 0x4132a4, ios inline;
}

[[link(win, android)]]
class cocos2d::CCDeccelAmplitude : cocos2d::CCActionInterval {
    virtual ~CCDeccelAmplitude() = imac 0x1edf60, m1 0x1a0004;

    static cocos2d::CCDeccelAmplitude* create(cocos2d::CCAction*, float);

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x1ee020, m1 0x1a00bc;
    virtual void update(float) = imac 0x1ee050, m1 0x1a00f0;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x1ee0b0, m1 0x1a0144;

    bool initWithAction(cocos2d::CCAction*, float);
}

[[link(win, android)]]
class cocos2d::CCDelayTime : cocos2d::CCActionInterval {
    static cocos2d::CCDelayTime* create(float) = imac 0x3a0280, m1 0x328680, ios 0x21c020;

    // CCDelayTime(cocos2d::CCDelayTime const&);
    // CCDelayTime();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a4a70, m1 0x32c574, ios 0x21e66c;
    virtual void update(float) = imac 0x3a4b40, m1 0x32c644, ios 0x21e724;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a4b50, m1 0x32c648, ios 0x21e728;
}

[[link(win, android)]]
class cocos2d::CCDevice {
    static int getDPI() = imac 0x701fc0, m1 0x613328;
}

[[link(win, android)]]
class cocos2d::CCDictElement {
    CCDictElement(char const*, cocos2d::CCObject*) = win inline, imac 0x2f7e20, m1 0x28c664, ios inline;
    CCDictElement(intptr_t, cocos2d::CCObject*) = win inline, imac 0x2f7ee0, m1 0x28c6e8, ios inline;
    ~CCDictElement() = imac 0x2f7f20, m1 0x28c704, ios inline;
}

[[link(win, android)]]
class cocos2d::CCDictionary : cocos2d::CCObject {
    // CCDictionary(cocos2d::CCDictionary const&);
    CCDictionary() = imac 0x2f7f70, m1 0x28c734, ios 0x4a23ac;
    virtual ~CCDictionary() = imac 0x2f7fa0, m1 0x28c75c, ios 0x4a23d4;

    static cocos2d::CCDictionary* create() = imac 0x2fa4e0, m1 0x28eb3c, ios 0x2371fc;
    static cocos2d::CCDictionary* createWithContentsOfFile(char const*) = imac 0x2fa670, m1 0x28ece8, ios 0x4a41ec;
    static cocos2d::CCDictionary* createWithContentsOfFileThreadSafe(char const*) = imac 0x2fa560, ios 0x4a4154;
    static cocos2d::CCDictionary* createWithDictionary(cocos2d::CCDictionary*) = imac 0x2fa540, m1 0x28eb98, ios 0x4a412c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x2fa1c0, m1 0x28e810, ios 0x4a3fb0;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x2fa650, m1 0x28ecd0, ios 0x4a41d4;

    cocos2d::CCArray* allKeys() = imac 0x2f81e0, m1 0x28c96c, ios 0x4a256c;
    cocos2d::CCArray* allKeysForObject(cocos2d::CCObject*) = imac 0x2f8370, m1 0x28cb04, ios inline;
    char const* charForKey(std::string const&) = imac 0x2f84b0, m1 0x28cc60, ios inline;
    unsigned int count() = imac 0x2f81c0, m1 0x28c950, ios 0x4a2550;
    std::string getFirstKey() = imac 0x2f8310, m1 0x28ca9c, ios 0x4a268c;
    cocos2d::CCObject* objectForKey(std::string const&) = imac 0x2f8550, m1 0x28cda0, ios 0x4a2794;
    cocos2d::CCObject* objectForKey(intptr_t) = imac 0x2f8920, ios 0x4a2aa0;
    cocos2d::CCObject* randomObject() = imac 0x2fa3d0, m1 0x28e9d8, ios inline;
    void removeAllObjects() = imac 0x2f7fd0, m1 0x28c790, ios 0x4a2408;
    void removeObjectForElememt(cocos2d::CCDictElement*) = imac 0x2f9e10, m1 0x28e474, ios 0x4a3cbc;
    void removeObjectForKey(std::string const&) = imac 0x2f99f0, m1 0x28e110, ios 0x4a39b4;
    void removeObjectForKey(intptr_t) = imac 0x2f9f40, ios 0x4a3dd8;
    void removeObjectsForKeys(cocos2d::CCArray*) = imac 0x2fa080, m1 0x28e6e8, ios 0x4a3f0c;
    void setObject(cocos2d::CCObject*, std::string const&) = imac 0x2f8ad0, m1 0x28d2f4, ios 0x4a2c68;
    void setObject(cocos2d::CCObject*, intptr_t) = imac 0x2f94d0, m1 0x28dc40, ios 0x4a350c;
    void setObjectUnSafe(cocos2d::CCObject*, std::string const&) = imac 0x2f8f00, m1 0x28d740, ios 0x4a302c;
    void setObjectUnSafe(cocos2d::CCObject*, intptr_t) = imac 0x2f9680, m1 0x28ddd0, ios 0x4a3690;
    cocos2d::CCString const* valueForKey(std::string const&) = imac 0x2f84d0, m1 0x28cd04, ios 0x4a2700;
    cocos2d::CCString const* valueForKey(intptr_t) = imac 0x2f8a50, m1 0x28d258, ios 0x4a2bd4;
    bool writeToFile(char const*) = imac 0x2fa690, m1 0x28ed10, ios inline;

    cocos2d::CCDictElement* m_pElements;
    int m_eDictType;
}

[[link(win, android)]]
class cocos2d::CCDirector : cocos2d::CCObject, cocos2d::TypeInfo {
    // CCDirector(cocos2d::CCDirector const&);
    CCDirector() = imac 0x476980;
    virtual ~CCDirector() = imac 0x476e10, m1 0x3e1790, ios 0x204b34;

    static cocos2d::CCDirector* sharedDirector() = imac 0x4768b0, m1 0x3e12a8, ios 0x47db8;

    virtual bool init() = imac 0x4769e0, m1 0x3e13cc, ios 0x2047c4;
    virtual cocos2d::CCScheduler* getScheduler() = imac 0x478f00, m1 0x3e341c, ios 0x205e78;
    virtual void setScheduler(cocos2d::CCScheduler*) = imac 0x478ec0, m1 0x3e3424, ios 0x205e30;
    virtual cocos2d::CCActionManager* getActionManager() = m1 0x3e346c, imac 0x478f00;
    virtual void setActionManager(cocos2d::CCActionManager*) = imac 0x478ec0, m1 0x3e3424, ios 0x205e30;
    virtual cocos2d::CCTouchDispatcher* getTouchDispatcher() = m1 0x3e34bc, imac 0x478f50, ios 0x205fac;
    virtual void setTouchDispatcher(cocos2d::CCTouchDispatcher*) = m1 0x3e3474, imac 0x478f10;
    virtual cocos2d::CCKeypadDispatcher* getKeypadDispatcher() = imac 0x4790d0, m1 0x3e362c, ios 0x206034;
    virtual void setKeypadDispatcher(cocos2d::CCKeypadDispatcher*) = imac 0x479090, m1 0x3e35f0, ios 0x205ff8;
    virtual cocos2d::CCKeyboardDispatcher* getKeyboardDispatcher() = imac 0x479030, m1 0x3e35a4, ios 0x205fac;
    virtual void setKeyboardDispatcher(cocos2d::CCKeyboardDispatcher*) = imac 0x478ff0, m1 0x3e3568, ios 0x205f70;
    virtual cocos2d::CCMouseDispatcher* getMouseDispatcher() = imac 0x479080, m1 0x3e35e8, ios 0x205ff0;
    virtual void setMouseDispatcher(cocos2d::CCMouseDispatcher*) = imac 0x479040, m1 0x3e35ac, ios 0x205fb4;
    virtual cocos2d::CCAccelerometer* getAccelerometer() = imac 0x479110, m1 0x3e366c, ios 0x206078;
    virtual void setAccelerometer(cocos2d::CCAccelerometer*) = imac 0x4790e0, m1 0x3e3634, ios 0x20603c;
    virtual float getDeltaTime() = imac 0x477ad0, m1 0x3e22b4, ios 0x2051f0;

    void applySmoothFix() = imac 0x477a30, m1 0x3e2230, ios inline;
    void calculateDeltaTime() = imac 0x4775d0, m1 0x3e1e14, ios inline;
    void calculateMPF() = imac 0x4779d0, m1 0x3e21bc, ios inline;
    void checkSceneReference() = imac 0x4787f0, m1 0x3e2e1c, ios inline;
    cocos2d::CCPoint convertToGL(cocos2d::CCPoint const&) = imac 0x478240, m1 0x315744, ios 0x2055c4;
    cocos2d::CCPoint convertToUI(cocos2d::CCPoint const&) = imac 0x478360, m1 0x3e2a10, ios inline;
    void createStatsLabel() = imac 0x477bc0, m1 0x3e2398, ios 0x2052a8;
    void drawScene() = imac 0x477240, m1 0x3e1ad8, ios 0x204e3c;
    void end() = imac 0x4788b0, m1 0x3e2ed8, ios 0x2059a4;
    // float getActualDeltaTime() const;
    // double getAnimationInterval();
    // float getContentScaleFactor();
    cocos2d::CCDirectorDelegate* getDelegate() const = imac 0x478ea0, m1 0x3e3414, ios inline;
    // bool getDontCallWillSwitch() const;
    void getFPSImageData(unsigned char**, unsigned int*) = imac 0x478d50, m1 0x3e3300, ios inline;
    // bool getIsTransitioning() const;
    // cocos2d::TextureQuality getLoadedTextureQuality() const;
    // cocos2d::CCScene* getNextScene();
    cocos2d::CCNode* getNotificationNode() = imac 0x478e50, m1 0x3e33c8, ios inline;
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
    cocos2d::CCPoint getVisibleOrigin() = imac 0x4784f0, m1 0x3e2b24, ios inline;
    cocos2d::CCSize getVisibleSize() = imac 0x4784b0, m1 0x3e2b00, ios inline;
    cocos2d::CCSize getWinSize() = imac 0x477cf0, m1 0x3e249c, ios 0x2053ac;
    cocos2d::CCSize getWinSizeInPixels() = imac 0x478470, m1 0x3e2ae4, ios 0x2056cc;
    float getZEye() = imac 0x4781b0, m1 0x3e28bc, ios inline;
    // bool isDisplayStats();
    // bool isNextDeltaTimeZero();
    // bool isPaused();
    // bool isSendCleanupToScene();
    int levelForSceneInStack(cocos2d::CCScene*) = imac 0x478ad0, m1 0x3e30d0, ios inline;
    void pause() = imac 0x478cc0, m1 0x3e3270, ios 0x205ccc;
    void popScene() = imac 0x478830, m1 0x3e2e58, ios 0x20592c;
    bool popSceneWithTransition(float, cocos2d::PopTransition) = imac 0x4788c0, m1 0x3e2ee4, ios 0x2059b0;
    void popToRootScene() = imac 0x4789a0, m1 0x3e2fb4, ios 0x205a80;
    void popToSceneInStack(cocos2d::CCScene*) = imac 0x478b20, m1 0x3e311c, ios 0x205b78;
    void popToSceneStackLevel(int) = imac 0x4789b0, m1 0x3e2fbc, ios 0x205a88;
    void purgeCachedData() = imac 0x4781d0, m1 0x3e28d4, ios 0x2055c0;
    void purgeDirector() = imac 0x478b80, m1 0x3e316c, ios 0x205bc8;
    bool pushScene(cocos2d::CCScene*) = imac 0x478620, m1 0x3e2c4c, ios 0x20576c;
    void removeStatsLabel() = imac 0x478d80, m1 0x3e3330, ios 0x205d5c;
    bool replaceScene(cocos2d::CCScene*) = imac 0x4786d0, m1 0x3e2cf8, ios 0x205818;
    void resetSmoothFixCounter() = imac 0x477ac0, m1 0x3e22a8, ios 0x2051e4;
    void reshapeProjection(cocos2d::CCSize const&) = imac 0x4781e0, m1 0x3e28d8, ios inline;
    void resume() = imac 0x478d00, m1 0x3e32b4, ios 0x205d10;
    void runWithScene(cocos2d::CCScene*) = imac 0x478580, m1 0x3e2ba0, ios 0x205740;
    int sceneCount() = imac 0x478ab0, m1 0x3e30c8, ios 0x205b70;
    // getScreenTop = ios 0x18260c, idk if i should add the function
    // getScreenBottom() = ios 0x182614
    // getScreenLeft() = ios 0x18261C
    // void setActualDeltaTime(float);
    void setAlphaBlending(bool) = imac 0x476fe0, m1 0x3e18ec, ios inline;
    void setContentScaleFactor(float) = imac 0x478130, m1 0x3e284c, ios 0x205558;
    void setDefaultValues() = imac 0x476cb0, m1 0x3e1640, ios 0x2049e4;
    void setDelegate(cocos2d::CCDirectorDelegate*) = imac 0x478eb0, m1 0x3e341c, ios inline;
    void setDeltaTime(float) = imac 0x477a20, m1 0x3e2228, ios 0x2051dc;
    void setDepthTest(bool) = imac 0x477000, m1 0x3e1900, ios 0x204c94;
    // void setDisplayStats(bool);
    // void setDontCallWillSwitch(bool);
    void setGLDefaultValues() = imac 0x476f90, m1 0x3e18a0, ios 0x204c48;
    void setNextDeltaTimeZero(bool) = imac 0x4781a0, m1 0x3e28b4, ios inline;
    void setNextScene() = imac 0x477700, m1 0x3e1f40, ios 0x204f70;
    // void setNotificationNode(cocos2d::CCNode*) = imac 0x4849e0, m1 0x3ea59c;
    void setOpenGLView(cocos2d::CCEGLView*) = imac 0x477ae0, m1 0x3e22bc, ios 0x2051f8;
    void setProjection(cocos2d::ccDirectorProjection) = imac 0x477040, m1 0x3e1930, ios 0x204cc4;
    void setupScreenScale(cocos2d::CCSize, cocos2d::CCSize, cocos2d::TextureQuality) = imac 0x477d10, m1 0x3e24a8, ios 0x2053b8;
    // void setSceneReference(cocos2d::CCScene*);
    // void setSmoothFix(bool);
    // void setSmoothFixCheck(bool);
    void setViewport() = imac 0x478150, m1 0x3e2860, ios 0x20556c;
    void showFPSLabel() = imac 0x4778e0, m1 0x3e2104, ios 0x205124;
    void showStats() = imac 0x477830, m1 0x3e2060, ios 0x205088;
    void toggleShowFPS(bool, std::string, cocos2d::CCPoint) = imac 0x477bd0, m1 0x3e239c, ios 0x2052ac;
    void updateContentScale(cocos2d::TextureQuality) = imac 0x477ff0, m1 0x3e2748, ios 0x2054c8;
    void updateScreenScale(cocos2d::CCSize) = imac 0x477f20, m1 0x3e2698;
    void willSwitchToScene(cocos2d::CCScene*) = imac 0x478530, m1 0x236660, ios 0x2056e8;
}

[[link(android)]]
class cocos2d::CCDisplayLinkDirector : cocos2d::CCDirector {
    virtual void setAnimationInterval(double) = imac 0x4791b0, m1 0x3e36f4, ios 0x206100;
    virtual void stopAnimation() = imac 0x4791a0, m1 0x3e36e8;
    virtual void startAnimation() = imac 0x479120;
    virtual void mainLoop() = imac 0x479160, m1 0x3e36b0, ios 0x2060bc;
}

[[link(win, android)]]
class cocos2d::CCDrawNode : cocos2d::CCNodeRGBA {
    // CCDrawNode(cocos2d::CCDrawNode const&);
    CCDrawNode();
    virtual ~CCDrawNode() = m1 0x5feef4, ios 0x455f0;

    static cocos2d::CCDrawNode* create() = m1 0x5ff03c, ios 0x45674;

    virtual bool init() = imac 0x6ebae0, m1 0x5ff16c, ios 0x4573c;
    virtual void draw() = imac 0x6ebcd0, m1 0x5ff330, ios 0x458d0;

    void clear() = imac 0x6edc50, m1 0x600d34, ios 0x46b90;
    void disableDrawArea() = imac 0x6ebe20, m1 0x5ff468;
    void drawArchLikeHalfCircle(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, unsigned int, cocos2d::_ccColor4F const&, float) = imac 0x6ec090, m1 0x5ff6bc, ios 0x45b14;
    bool drawCircle(cocos2d::CCPoint const&, float, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&, unsigned int) = imac 0x6edaa0, m1 0x600b94, ios 0x469fc;
    void drawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::ccColor4F const&, float) = imac 0x6ec750, m1 0x5ffc44, ios inline;
    void drawCubicBezierDashed(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::ccColor4F const&, float, unsigned int, unsigned int) = imac 0x6ec260, m1 0x5ff878, ios 0x45cc0;
    bool drawDot(cocos2d::CCPoint const& pos, float radius, cocos2d::ccColor4F const& color) = imac 0x6ebea0, m1 0x5ff4e0, ios inline;
    bool drawLines(cocos2d::CCPoint*, unsigned int, float, cocos2d::ccColor4F const&) = imac 0x6eda20, m1 0x600b0c, ios 0x46974;
    bool drawPolygon(cocos2d::CCPoint*, unsigned int, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&, cocos2d::BorderAlignment) = imac 0x6ed0d0, m1 0x6003a0, ios 0x46310;
    void drawPreciseCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::ccColor4F const&, float) = imac 0x6ec470, m1 0x5ffa4c, ios inline;
    bool drawRect(cocos2d::CCRect const&, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&, cocos2d::BorderAlignment) = imac 0x6ed860, m1 0x600940, ios 0x467ac;
    bool drawRect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&, cocos2d::BorderAlignment) = imac 0x6ed8f0, m1 0x6009d4, ios 0x46840;
    bool drawSegment(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::ccColor4F const&) = imac 0x6ed0b0, m1 0x600394, ios 0x46304;
    bool drawSegmentEx(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::ccColor4F const&, bool, bool) = imac 0x6ec9e0, m1 0x5ffe5c, ios 0x45e8c;
    void enableDrawArea(cocos2d::CCRect&) = imac 0x6ebdb0, m1 0x5ff408, ios 0x4593c;
    void ensureCapacity(unsigned int) = imac 0x64f60, m1 0x5dce4, ios 0x456e8;
    cocos2d::ccBlendFunc getBlendFunc() const = imac 0x6edc70, m1 0x600d44, ios 0x46ba0;
    bool is_circle_on_screen(cocos2d::CCRect const&, cocos2d::CCPoint const&, float) = imac 0x6ebe30, m1 0x5ff470, ios inline;
    bool is_segment_on_screen(cocos2d::CCRect const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x6ed000, m1 0x6002f4, ios 0x46268;
    void listenBackToForeground(cocos2d::CCObject*) = imac 0x6edc90, m1 0x600d58, ios inline;
    void render() = imac 0x6ebc40, m1 0x5ff2a4, ios 0x45844;
    void setBlendFunc(cocos2d::ccBlendFunc const&) = imac 0x6edc80, m1 0x600d4c, ios 0x46ba8;

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
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x472bfc, ios 0x308cd0;
    virtual void update(float) = imac 0x517fc0, m1 0x472ce4, ios 0x308d98;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBackInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackInOut* create(cocos2d::CCActionInterval* pAction) = ios inline;

    // CCEaseBackInOut(cocos2d::CCEaseBackInOut const&);
    // CCEaseBackInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x472fd0, ios inline;
    virtual void update(float time) = imac 0x5183b0, m1 0x4730b8, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x518440, m1 0x47314c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseBackOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackOut* create(cocos2d::CCActionInterval*);

    // CCEaseBackOut(cocos2d::CCEaseBackOut const&);
    // CCEaseBackOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x472de0, ios 0x308e74;
    virtual void update(float) = imac 0x5181b0, m1 0x472ec8, ios 0x308f3c;
    virtual cocos2d::CCActionInterval* reverse() = ios 0x308f74;
}

[[link(win, android)]]
class cocos2d::CCEaseBounce : cocos2d::CCActionEase {
    static cocos2d::CCEaseBounce* create(cocos2d::CCActionInterval* pAction) = ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline;
    virtual cocos2d::CCActionInterval* reverse() = ios inline;

    // CCEaseBounce(cocos2d::CCEaseBounce const&);
    // CCEaseBounce();
    float bounceTime(float) = imac 0x5174b0, m1 0x4720fc, ios 0x308834;
}

[[link(win, android)]]
class cocos2d::CCEaseBounceIn : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceIn* create(cocos2d::CCActionInterval*);

    // CCEaseBounceIn(cocos2d::CCEaseBounceIn const&);
    // CCEaseBounceIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x4722ac, ios 0x308974;
    virtual void update(float) = imac 0x517730, m1 0x472394, ios 0x308a3c;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBounceInOut : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceInOut* create(cocos2d::CCActionInterval* pAction) = ios inline;

    // CCEaseBounceInOut(cocos2d::CCEaseBounceInOut const&);
    // CCEaseBounceInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x472824, ios inline;
    virtual void update(float time) = imac 0x517c50, m1 0x47290c, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseBounceOut : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceOut* create(cocos2d::CCActionInterval*) = m1 0x4724c4, imac 0x517830;

    // CCEaseBounceOut(cocos2d::CCEaseBounceOut const&);
    // CCEaseBounceOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios 0x308b2c;
    virtual void update(float) = imac 0x5179d0, m1 0x472654, ios 0x308bf4;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseElastic : cocos2d::CCActionEase {
    static cocos2d::CCEaseElastic* create(cocos2d::CCActionInterval* pAction) = imac 0x516800, m1 0x471530, ios inline;
    static cocos2d::CCEaseElastic* create(cocos2d::CCActionInterval* pAction, float fPeriod) = ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x471654, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x516a40, m1 0x47174c, ios inline;

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
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios 0x308450;
    virtual void update(float) = imac 0x516c40, m1 0x471918, ios 0x30852c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x516ce0, m1 0x4719a8, ios 0x3085b8;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticInOut : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticInOut* create(cocos2d::CCActionInterval* pAction) = m1 0x471c64, imac 0x516fd0, ios inline;
    static cocos2d::CCEaseElasticInOut* create(cocos2d::CCActionInterval* pAction, float fPeriod) = m1 0x471c74, imac 0x516ff0, ios inline;

    // CCEaseElasticInOut(cocos2d::CCEaseElasticInOut const&);
    // CCEaseElasticInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline;
    virtual void update(float time) = imac 0x5171c0, m1 0x471e28, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticOut : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*) = imac 0x516dd0, m1 0x471a94, ios 0x308688;
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*, float) = imac 0x516d10, m1 0x4719d8, ios 0x3085e8;

    // CCEaseElasticOut(cocos2d::CCEaseElasticOut const&);
    // CCEaseElasticOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x471aa4, ios 0x308694;
    virtual void update(float) = imac 0x516f00, m1 0x471b9c, ios 0x308770;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x516fa0, m1 0x471c34, ios 0x308804;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialIn* create(cocos2d::CCActionInterval*) = m1 0x470900, imac 0x515bc0;

    // CCEaseExponentialIn(cocos2d::CCEaseExponentialIn const&);
    // CCEaseExponentialIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios 0x3080ac;
    virtual void update(float) = imac 0x515d60, m1 0x470a90, ios 0x308174;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialInOut* create(cocos2d::CCActionInterval* pAction) = ios inline;

    // CCEaseExponentialInOut(cocos2d::CCEaseExponentialInOut const&);
    // CCEaseExponentialInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x470de0, ios inline;
    virtual void update(float time) = imac 0x516180, m1 0x470ec8, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialOut* create(cocos2d::CCActionInterval*) = m1 0x470b24, imac 0x515dd0;

    // CCEaseExponentialOut(cocos2d::CCEaseExponentialOut const&);
    // CCEaseExponentialOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios 0x30827c;
    virtual void update(float) = imac 0x515f70, m1 0x470cb4, ios 0x308344;
    virtual cocos2d::CCActionInterval* reverse() = ios 0x308390;
}

[[link(win, android)]]
class cocos2d::CCEaseIn : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseIn* create(cocos2d::CCActionInterval*, float) = imac 0x5154f0, m1 0x470270;

    // CCEaseIn(cocos2d::CCEaseIn const&);
    // CCEaseIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios 0x307ad4;
    virtual void update(float) = imac 0x5156c0, m1 0x470424, ios 0x307bb0;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseInOut : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseInOut* create(cocos2d::CCActionInterval*, float) = imac 0x515950, m1 0x4706b0;

    // CCEaseInOut(cocos2d::CCEaseInOut const&);
    // CCEaseInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x47076c, ios 0x307ea4;
    virtual void update(float) = imac 0x515b20, m1 0x470864, ios 0x307f80;
    virtual cocos2d::CCActionInterval* reverse() = ios 0x307fec;
}

[[link(win, android)]]
class cocos2d::CCEaseOut : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseOut* create(cocos2d::CCActionInterval*, float);

    // CCEaseOut(cocos2d::CCEaseOut const&);
    // CCEaseOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios 0x307cb8;
    virtual void update(float) = imac 0x5158f0, m1 0x470640, ios 0x307d94;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseRateAction : cocos2d::CCActionEase {
    // CCEaseRateAction(cocos2d::CCEaseRateAction const&);
    // CCEaseRateAction();
    virtual ~CCEaseRateAction() = imac 0x515400, m1 0x470180, ios inline;

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
    virtual void update(float time) = imac 0x5163b0, m1 0x4710e4, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseSineInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineInOut* create(cocos2d::CCActionInterval* pAction) = ios inline;

    // CCEaseSineInOut(cocos2d::CCEaseSineInOut const&);
    // CCEaseSineInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline;
    virtual void update(float time) = imac 0x5167a0, m1 0x4714c4, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5167e0, m1 0x471510, ios inline;
}

[[link(win, android)]]
class cocos2d::CCEaseSineOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineOut* create(cocos2d::CCActionInterval* pAction) = ios inline;

    // CCEaseSineOut(cocos2d::CCEaseSineOut const&);
    // CCEaseSineOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline;
    virtual void update(float time) = imac 0x5165b0, m1 0x4712d8, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = ios inline;
}

[[link(win, android)]]
class cocos2d::CCEGLView {
    protected CCEGLView() = imac 0x501ca0, m1 0x45d9fc, ios 0x153440;
    protected virtual ~CCEGLView() = imac 0x501d00, m1 0x45da4c, ios inline;

    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithFullScreen(std::string const&, bool);
    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithFullScreen(std::string const&, bool, GLFWvidmode const&, GLFWmonitor*);
    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithRect(std::string const&, cocos2d::CCRect, float);
    static cocos2d::CCEGLView* sharedOpenGLView() = imac 0x501c30, m1 0x45d98c, ios 0x1535c4;

    virtual void end() = imac 0x501db0, m1 0x45dad0, ios 0x15352c;
    virtual void swapBuffers() = imac 0x501e20, m1 0x45db28, ios 0x153554;
    virtual bool isOpenGLReady() = imac 0x501d80, m1 0x45daa4, ios 0x1534d0;
    virtual void setIMEKeyboardState(bool) = imac 0x501f50, m1 0x45dbd8, ios 0x153570;
    [[missing(android, mac, ios)]]
    virtual void setFrameSize(float, float);
    [[missing(win, android)]]
    virtual bool setContentScaleFactor(float) = imac 0x501da0, m1 0x45dac8, ios 0x1534f4;
    [[missing(android, ios)]]
    virtual void setViewPortInPoints(float, float, float, float) = imac 0x501fa0, m1 0x45dc10;
    [[missing(android, ios)]]
    virtual void setScissorInPoints(float, float, float, float) = imac 0x502090, m1 0x45dcb8;
    [[missing(win, android, ios)]]
    virtual void setMultiTouchMask(bool) = imac 0x502180, m1 0x45dd60;

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
    void showCursor(bool state) = imac 0x502190, m1 0x45dd64;
    [[missing(android, mac, ios)]]
    void toggleFullScreen(bool, bool, bool);
    [[missing(android, mac, ios)]]
    void toggleLockCursor(bool);
}

[[link(win, android)]]
class cocos2d::CCEGLViewProtocol {
    CCEGLViewProtocol() = imac 0x510730, m1 0x46b958, ios 0x37f780;
    virtual ~CCEGLViewProtocol() = imac 0x510790, m1 0x46b9ac, ios 0x37f7d4;

    virtual cocos2d::CCSize const& getFrameSize() const = imac 0x510910, m1 0x46bad8, ios 0x37f900;
    virtual void setFrameSize(float, float) = imac 0x510920, m1 0x46bae0, ios 0x37f908;
    virtual cocos2d::CCSize getVisibleSize() const = imac 0x510960, m1 0x46bb24, ios 0x37f94c;
    virtual cocos2d::CCPoint getVisibleOrigin() const = imac 0x5109b0, m1 0x46bb54, ios 0x37f97c;
    virtual void setDesignResolutionSize(float, float, ResolutionPolicy) = imac 0x5107c0, m1 0x46b9b8, ios 0x37f7e0;
    virtual cocos2d::CCSize const& getDesignResolutionSize() const = imac 0x510900, m1 0x46bad0, ios 0x37f8f8;
    virtual void setTouchDelegate(cocos2d::EGLTouchDelegate*) = imac 0x510a20, m1 0x46bba0, ios 0x37f9c8;
    virtual void setViewPortInPoints(float, float, float, float) = imac 0x510a30, m1 0x46bba8, ios 0x37f9d0;
    virtual void setScissorInPoints(float, float, float, float) = imac 0x510a70, m1 0x46bbd4, ios 0x37f9fc;
    virtual bool isScissorEnabled() = imac 0x510ab0, m1 0x46bc00, ios 0x37fa28;
    virtual cocos2d::CCRect getScissorRect() = imac 0x510ad0, m1 0x46bc20, ios 0x37fa48;
    virtual void setViewName(char const*) = imac 0x510b70, m1 0x46bcb0, ios 0x37fad8;
    virtual void pollInputEvents() = imac 0x511370, m1 0x46c4b4, ios 0x380140;
    virtual void handleTouchesBegin(int, int*, float*, float*, double) = imac 0x510ba0, m1 0x46bcd4, ios 0x37faf4;
    virtual void handleTouchesMove(int, int*, float*, float*, double) = imac 0x510e80, m1 0x46bfa4, ios 0x37fd38;
    virtual void handleTouchesEnd(int, int*, float*, float*, double) = imac 0x5111b0, m1 0x46c2e4, ios 0x37ffd0;
    virtual void handleTouchesCancel(int, int*, float*, float*, double) = ios 0x38007c;

    float getScaleX() const = imac 0x511350, m1 0x46c4a4, ios 0x380130;
    float getScaleY() const = imac 0x511360, m1 0x46c4ac, ios 0x380138;
    void getSetOfTouchesEndOrCancel(cocos2d::CCSet&, int, int*, float*, float*, double) = imac 0x511020, m1 0x46c150, ios 0x37fe78;
    char const* getViewName() = imac 0x510b90, m1 0x46bccc, ios inline;
    cocos2d::CCRect const& getViewPortRect() const = imac 0x511340, m1 0x46c49c, ios 0x380128;
    void updateDesignResolutionSize() = imac 0x511380, m1 0x46c4b8, ios inline;
}

[[link(win, android)]]
class cocos2d::CCFadeIn : cocos2d::CCActionInterval {
    static cocos2d::CCFadeIn* create(float);

    // CCFadeIn(cocos2d::CCFadeIn const&);
    // CCFadeIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios 0x21de64;
    virtual void update(float) = imac 0x3a3c50, m1 0x32b8c0, ios 0x21df1c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a3cb0, m1 0x32b924, ios 0x21df80;
}

[[link(win, android)]]
class cocos2d::CCFadeOut : cocos2d::CCActionInterval {
    static cocos2d::CCFadeOut* create(float);

    // CCFadeOut(cocos2d::CCFadeOut const&);
    // CCFadeOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios 0x21e014;
    virtual void update(float) = imac 0x3a3ed0, m1 0x32bb0c, ios 0x21e0cc;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a3f40, m1 0x32bb78, ios 0x21e138;
}

[[link(win, android)]]
class cocos2d::CCFadeOutBLTiles : cocos2d::CCFadeOutTRTiles {
    static cocos2d::CCFadeOutBLTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = imac 0x899ea0, m1 0x78d520;
}

[[link(win, android)]]
class cocos2d::CCFadeOutDownTiles : cocos2d::CCFadeOutUpTiles {
    static cocos2d::CCFadeOutDownTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = imac 0x89a230, m1 0x78d8ac;
}

[[link(win, android)]]
class cocos2d::CCFadeOutTRTiles : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCFadeOutTRTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = imac 0x899a70, m1 0x78d114;
    virtual void transformTile(cocos2d::CCPoint const&, float) = imac 0x899b60, m1 0x78d208;
    virtual void update(float) = imac 0x899c40, m1 0x78d2c8;

    void turnOffTile(cocos2d::CCPoint const&) = imac 0x899b30, m1 0x78d1dc;
    void turnOnTile(cocos2d::CCPoint const&) = imac 0x899af0, m1 0x78d19c;
}

[[link(win, android)]]
class cocos2d::CCFadeOutUpTiles : cocos2d::CCFadeOutTRTiles {
    static cocos2d::CCFadeOutUpTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = imac 0x89a010, m1 0x78d694;
    virtual void transformTile(cocos2d::CCPoint const&, float) = imac 0x89a090, m1 0x78d714;
}

[[link(win, android)]]
class cocos2d::CCFadeTo : cocos2d::CCActionInterval {
    static cocos2d::CCFadeTo* create(float, unsigned char) = imac 0x3a3ff0, m1 0x32bc04, ios 0x21e140;

    // CCFadeTo(cocos2d::CCFadeTo const&);
    // CCFadeTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a40e0, m1 0x32bcc0, ios 0x21e1d4;
    virtual void update(float) = imac 0x3a4240, m1 0x32be10, ios 0x21e320;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a41e0, m1 0x32bdac, ios 0x21e2bc;

    bool initWithDuration(float, unsigned char) = imac 0x3a40a0, m1 0x32bc98, ios inline;
}

[[link(win, android)]]
class cocos2d::CCFileUtils : cocos2d::TypeInfo {
    protected CCFileUtils() = imac 0x428080, m1 0x39f1d0, ios 0x1cda50;
    virtual ~CCFileUtils() = imac 0x1e5a20, m1 0x39f20c, ios 0x1cda8c;

    static void purgeFileUtils() = imac 0x428050, m1 0x39f19c, ios 0x1cda1c;
    // CCFileUtils(cocos2d::CCFileUtils const&);
    static cocos2d::CCFileUtils* sharedFileUtils() = imac 0x6e3220, m1 0x5f7680, ios 0x2d0940;

    virtual void purgeCachedEntries() = imac 0x4282c0, m1 0x39f43c, ios 0x1cdba0;
    virtual unsigned char* getFileData(char const* pszFileName, char const* pszMode, unsigned long* pSize) = imac 0x4282f0, m1 0x39f46c, ios 0x1cdbd0;
    virtual unsigned char* getFileDataFromZip(char const* pszZipFilePath, char const* pszFileName, unsigned long* pSize) = imac 0x428430, m1 0x39f5d8, ios 0x1cdd20;
    virtual std::string fullPathForFilename(char const* pszFileName, bool skipSuffix) = imac 0x428da0, m1 0x39fe70, ios 0x1ce35c;
    virtual void removeFullPath(char const* path) = imac 0x429bb0, m1 0x3a0b7c, ios 0x1ce964;
    virtual void loadFilenameLookupDictionaryFromFile(char const* filename) = imac 0x42aec0, m1 0x3a1f2c, ios 0x1cf28c;
    virtual void setFilenameLookupDictionary(cocos2d::CCDictionary* pFilenameLookupDict) = imac 0x42ae50, m1 0x3a1ec4, ios 0x1cf224;
    virtual char const* fullPathFromRelativeFile(char const* pszFilename, char const* pszRelativeFile) = imac 0x429d10, m1 0x3a0dec, ios 0x1ce9f4;
    virtual void setSearchResolutionsOrder(std::vector<std::string> const& searchResolutionsOrder) = imac 0x429f70, m1 0x3a1058, ios 0x1ceb58;
    virtual void addSearchResolutionsOrder(char const* order) = imac 0x42a1b0, m1 0x3a1298, ios 0x1cece0;
    virtual std::vector<std::string> const& getSearchResolutionsOrder() = imac 0x42a290, m1 0x3a1390, ios 0x1ced44;
    virtual void setSearchPaths(std::vector<std::string> const& searchPaths) = imac 0x42a2b0, m1 0x3a13a0, ios 0x1ced54;
    virtual void addSearchPath(char const* path) = ios 0x1cef64;
    virtual void removeSearchPath(char const* path) = ios 0x1cf09c;
    virtual std::vector<std::string> const& getSearchPaths() = imac 0x42a2a0, m1 0x3a1398;
    virtual std::string getWritablePath() = inline;
    virtual std::string getWritablePath2() = imac 0x42b260, m1 0x3a2340, ios 0x1cf528;
    virtual bool isFileExist(std::string const& strFilePath) = inline;
    virtual bool isAbsolutePath(std::string const& strPath) = imac 0x42b1a0, m1 0x3a2278, ios 0x1cf46c;
    virtual void setPopupNotify(bool bNotify) = imac 0x42b1c0, ios 0x1cf48c;
    virtual bool isPopupNotify() = imac 0x42b1d0, m1 0x3a22a4, ios 0x1cf498;
    virtual bool init() = imac 0x4281f0, m1 0x39f35c, ios 0x1cdb24;
    virtual std::string getNewFilename(char const* pszFileName) = imac 0x428560, m1 0x39f6f8, ios 0x1cde3c;
    virtual bool shouldUseHD() = imac 0x4286e0, m1 0x39f870, ios 0x1cdee4;
    virtual std::string addSuffix(std::string, std::string) = imac 0x428710, m1 0x39f894, ios 0x1cdf08;
    virtual std::string getPathForFilename(std::string const& filename, std::string const& resolutionDirectory, std::string const& searchPath) = imac 0x428950, m1 0x39fa98, ios 0x1ce10c;
    virtual std::string getFullPathForDirectoryAndFilename(std::string const& strDirectory, std::string const& strFilename) = imac 0x42b030, m1 0x3a2110, ios 0x1cf3fc;
    virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(std::string const& filename) = imac 0x428020, m1 0x39f184, ios 0x1cda04;
    virtual bool writeToFile(cocos2d::CCDictionary* dict, std::string const& fullPath) = imac 0x428030, m1 0x39f18c, ios 0x1cda0c;
    virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(std::string const& filename) = imac 0x428040, ios 0x1cda14;

    void removeAllPaths() = imac 0x42ae00, m1 0x3a1e78, ios inline;

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
    virtual std::string getWritablePath() = ios 0x2d09c0;
    virtual bool isFileExist(std::string const& strFilePath) = ios 0x2d0a2c;
    virtual bool isAbsolutePath(std::string const& strPath) = ios 0x2d0d9c;
    virtual std::string getFullPathForDirectoryAndFilename(std::string const& strDirectory, std::string const& strFilename) = ios 0x2d0c50;
    virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(std::string const& filename) = ios 0x2d0dc8;
    virtual bool writeToFile(cocos2d::CCDictionary* dict, std::string const& fullPath) = ios 0x2d1424;
    virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(std::string const& filename) = ios 0xb67a4;
}

[[missing(win, android, ios)]]
class cocos2d::CCFileUtilsMac : cocos2d::CCFileUtils {
    virtual std::string getWritablePath() = imac 0x6e32b0, m1 0x5f770c;
    virtual bool isFileExist(std::string const& strFilePath) = imac 0x64b9d0, m1 0x5f77f0;
    virtual bool isAbsolutePath(std::string const& strPath) = imac 0x6e3a00, m1 0x5f7dc8;
    virtual std::string getFullPathForDirectoryAndFilename(std::string const& strDirectory, std::string const& strFilename) = imac 0x6e3720, m1 0x5f7b6c;
    virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(std::string const& filename) = imac 0x6e3a50, m1 0x5f7df4;
    virtual bool writeToFile(cocos2d::CCDictionary* dict, std::string const& fullPath) = imac 0x6e45b0, m1 0x5f86e4;
    virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(std::string const& filename) = imac 0x6e4800, m1 0xbca70;
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

    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x6c52c0, m1 0x5dd7a8, ios inline;

    float m_fDuration;
}

[[link(win, android)]]
class cocos2d::CCFlipX : cocos2d::CCActionInstant {
    static cocos2d::CCFlipX* create(bool);

    virtual void update(float);
    virtual cocos2d::CCFiniteTimeAction* reverse();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x88df90, m1 0x7821ec;

    bool initWithFlipX(bool);
}

[[link(win, android)]]
class cocos2d::CCFlipX3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCFlipX3D* create(float) = imac 0x269b50, m1 0x210d28;

    virtual bool initWithDuration(float) = imac 0x269c40, m1 0x210e20;
    virtual bool initWithSize(cocos2d::CCSize const&, float) = imac 0x269c90, m1 0x210e70;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x269de0, m1 0x210fa0;
}

[[link(win, android)]]
class cocos2d::CCFlipY : cocos2d::CCActionInstant {
    static cocos2d::CCFlipY* create(bool);

    virtual void update(float);
    virtual cocos2d::CCFiniteTimeAction* reverse();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x88e140, m1 0x7823a0;

    bool initWithFlipY(bool);
}

[[link(win, android)]]
class cocos2d::CCFlipY3D : cocos2d::CCFlipX3D {
    static cocos2d::CCFlipY3D* create(float) = imac 0x26a0a0, m1 0x211204;

    virtual void update(float) = imac 0x26a2b0, m1 0x21140c;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
}

[[link(win, android)]]
class cocos2d::CCFollow : cocos2d::CCAction {
    virtual ~CCFollow() = imac 0x6c57b0, m1 0x5ddc44;

    static cocos2d::CCFollow* create(cocos2d::CCNode*, cocos2d::CCRect const&) = imac 0x4d05c0, m1 0x5ddd20;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x6c5ac0, m1 0x5ddf34;
    virtual void step(float) = imac 0x6c5c70, m1 0x5de0e0;
    virtual bool isDone() = imac 0x6c5d50, m1 0x5de1b8;
    virtual void stop() = imac 0x6c5d70, m1 0x5de1dc;

    bool initWithTarget(cocos2d::CCNode*, cocos2d::CCRect const&) = imac 0x6c5970, m1 0x5ddde4;
}

[[link(win, android)]]
class cocos2d::CCGLProgram : cocos2d::CCObject {
    CCGLProgram() = imac 0x416e80, m1 0x38f080, ios 0x1b1bc4;
    // CCGLProgram(cocos2d::CCGLProgram const&);
    virtual ~CCGLProgram() = imac 0x416ed0, m1 0x38f0c0, ios 0x1b1c04;

    void addAttribute(char const*, unsigned int) = imac 0x4172f0, m1 0x38f4f0, ios 0x1b1eec;
    bool compileShader(unsigned int*, unsigned int, char const*) = imac 0x417130, m1 0x38f2f4, ios 0x1b1e14;
    char const* description() = imac 0x4172c0, m1 0x38f4bc, ios inline;
    char const* fragmentShaderLog() = ios inline;
    // unsigned int const getProgram();
    int getUniformLocationForName(char const*) = imac 0x417da0, m1 0x390028, ios inline;
    bool initWithVertexShaderByteArray(char const*, char const*) = imac 0x417090, m1 0x38f250, ios 0x1b1d70;
    bool initWithVertexShaderFilename(char const*, char const*) = imac 0x4171e0, m1 0x38f3c0, ios inline;
    bool link() = imac 0x417460, m1 0x38f68c, ios 0x1b2054;
    char const* logForOpenGLObject(unsigned int, cocos2d::GLInfoFunction, cocos2d::GLLogFunction) = imac 0x4174a0, m1 0x38f6d0, ios inline;
    char const* programLog() = ios inline;
    void reset() = imac 0x418750, m1 0x390a58, ios 0x1b2a18;
    void setUniformLocationWith1f(int, float) = imac 0x418080, m1 0x390360, ios 0x1b24e8;
    void setUniformLocationWith1i(int, int) = imac 0x417420, m1 0x38f638, ios 0x1b2000;
    void setUniformLocationWith2f(int, float, float) = imac 0x4180c0, m1 0x3903c0, ios 0x1b2548;
    void setUniformLocationWith2fv(int, float*, unsigned int) = imac 0x418290, m1 0x3905fc, ios inline;
    void setUniformLocationWith2i(int, int, int) = imac 0x417db0, m1 0x390030, ios inline;
    void setUniformLocationWith2iv(int, int*, unsigned int) = imac 0x417f90, m1 0x390260, ios inline;
    void setUniformLocationWith3f(int, float, float, float) = imac 0x418150, m1 0x39046c, ios 0x1b25f4;
    void setUniformLocationWith3fv(int, float*, unsigned int) = imac 0x4182e0, m1 0x390650, ios inline;
    void setUniformLocationWith3i(int, int, int, int) = imac 0x417e40, m1 0x3900dc, ios inline;
    void setUniformLocationWith3iv(int, int*, unsigned int) = imac 0x417fe0, m1 0x3902b4, ios inline;
    void setUniformLocationWith4f(int, float, float, float, float) = imac 0x4181f0, m1 0x390530, ios 0x1b26b8;
    void setUniformLocationWith4fv(int, float*, unsigned int) = imac 0x418380, m1 0x390704, ios 0x1b27e0;
    void setUniformLocationWith4i(int, int, int, int, int) = imac 0x417ee0, m1 0x390194, ios inline;
    void setUniformLocationWith4iv(int, int*, unsigned int) = imac 0x418030, m1 0x39030c, ios inline;
    void setUniformLocationWithMatrix3fv(int, float*, unsigned int) = imac 0x418330, m1 0x3906a8, ios 0x1b2784;
    void setUniformLocationWithMatrix4fv(int, float*, unsigned int) = imac 0x4183d0, m1 0x390758, ios 0x1b2834;
    void setUniformsForBuiltins() = imac 0x418420, m1 0x3907b0, ios 0x1b288c;
    bool updateUniformLocation(int, void*, unsigned int) = imac 0x417960, m1 0x38fbc8, ios 0x1b2098;
    void updateUniforms() = imac 0x417310, m1 0x38f504, ios 0x1b1f00;
    void use() = imac 0x417410, m1 0x38f630, ios 0x1b1ff8;
    char const* vertexShaderLog() = ios inline;
}

[[link(android)]]
class cocos2d::CCGrabber : cocos2d::CCObject {
    CCGrabber() = imac 0x6cf110, m1 0x5e6528, ios inline;
    virtual ~CCGrabber() = win inline, imac 0x6cf270, m1 0x5e6678, ios inline;

    void afterRender(cocos2d::CCTexture2D*) = imac 0x6cf230, m1 0x5e6648, ios inline;
    void beforeRender(cocos2d::CCTexture2D*) = imac 0x6cf1d0, m1 0x5e65f0, ios inline;
    void grab(cocos2d::CCTexture2D*) = imac 0x6cf160, m1 0x5e6580, ios inline;
}

[[link(win, android)]]
class cocos2d::CCGrid3D : cocos2d::CCGridBase {
    CCGrid3D();
    virtual ~CCGrid3D() = imac 0x4de840, m1 0x43e2d8;

    static cocos2d::CCGrid3D* create(cocos2d::CCSize const&) = imac 0x4de730, m1 0x43e1a4;
    static cocos2d::CCGrid3D* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = imac 0x4de610, m1 0x43e080;

    virtual void blit() = imac 0x4de930, m1 0x43e384;
    virtual void reuse() = imac 0x4df0d0, m1 0x43e8d8;
    virtual void calculateVertexPoints() = imac 0x4de9d0, m1 0x43e428;

    cocos2d::ccVertex3F originalVertex(cocos2d::CCPoint const&) = imac 0x4df040, m1 0x43e860;
    void setVertex(cocos2d::CCPoint const&, cocos2d::ccVertex3F const&) = imac 0x4df080, m1 0x43e894;
    cocos2d::ccVertex3F vertex(cocos2d::CCPoint const&) = imac 0x4df000, m1 0x43e82c;
}

[[link(win, android)]]
class cocos2d::CCGrid3DAction : cocos2d::CCGridAction {
    virtual cocos2d::CCGridBase* getGrid() = imac 0x1ed610, m1 0x19f664;

    cocos2d::ccVertex3F originalVertex(cocos2d::CCPoint const&) = imac 0x1ed650, m1 0x19f69c;
    void setVertex(cocos2d::CCPoint const&, cocos2d::ccVertex3F const&) = imac 0x1ed680, m1 0x19f6cc;
    cocos2d::ccVertex3F vertex(cocos2d::CCPoint const&) = imac 0x1ed620, m1 0x19f66c;
}

[[link(win, android)]]
class cocos2d::CCGridAction : cocos2d::CCActionInterval {
    static cocos2d::CCGridAction* create(float, cocos2d::CCSize const&) = imac 0x1ed320, m1 0x19f350;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x1ed500, m1 0x19f564;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x1ed420, m1 0x19f474;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x1ed4f0, m1 0x19f560;
    virtual bool initWithDuration(float, cocos2d::CCSize const&) = imac 0x1ed3f0, m1 0x19f430;
    virtual cocos2d::CCGridBase* getGrid() = imac 0x1ed4e0, m1 0x19f558;
}

[[link(win, android)]]
class cocos2d::CCGridBase : cocos2d::CCObject {
    virtual ~CCGridBase() = imac 0x4de320, m1 0x43ddd4;

    static cocos2d::CCGridBase* create(cocos2d::CCSize const&) = imac 0x4ddfe0, m1 0x43da8c;
    static cocos2d::CCGridBase* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = imac 0x4de190, m1 0x43dc44;

    virtual void blit() = imac 0x4de5e0, m1 0x43e074;
    virtual void reuse() = imac 0x4de5f0, m1 0x43e078;
    virtual void calculateVertexPoints() = imac 0x4de600, m1 0x43e07c;

    void afterDraw(cocos2d::CCNode*) = imac 0x4de520, m1 0x43dfa4;
    void beforeDraw() = imac 0x4de4f0, m1 0x43df70;
    bool initWithSize(cocos2d::CCSize const&) = imac 0x4de0a0, m1 0x43db50;
    bool initWithSize(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = imac 0x4de260, m1 0x43dd00;
    void set2DProjection() = imac 0x4de460, m1 0x43def4;
    void setActive(bool) = imac 0x4de410, m1 0x43deb0;
    void setTextureFlipped(bool) = imac 0x4de440, m1 0x43ded4;
}

[[link(win, android)]]
class cocos2d::CCHide : cocos2d::CCActionInstant {
    static cocos2d::CCHide* create() = ios 0x240abc;

    // CCHide(cocos2d::CCHide const&);
    // CCHide();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x88db10, m1 0x781d44, ios 0x240bd4;
    virtual void update(float) = imac 0x88daa0, m1 0x781cd8, ios 0x240bbc;
    virtual cocos2d::CCFiniteTimeAction* reverse() = ios 0x240bd0;
}

[[link(win, android)]]
class cocos2d::CCImage : cocos2d::CCObject {
    // int getBitsPerComponent() const;
    // unsigned char* getData();
    // int getDataLen();
    // unsigned short getHeight() const;
    // unsigned short getWidth() const;
    CCImage() = imac 0x47e830, m1 0x3e88f8, ios 0x2e424;
    virtual ~CCImage() = imac 0x47e870, m1 0x3e8924, ios 0x2e450;

    bool _initWithJpgData(void*, int);
    bool _initWithPngData(void*, int);
    bool _initWithRawData(void*, int, int, int, int, bool) = imac 0x47f1b0, m1 0x348188, ios inline;
    bool _initWithTiffData(void*, int);
    // bool _initWithWebpData(void*, int);
    bool _saveImageToJPG(char const*);
    bool _saveImageToPNG(char const*, bool);
    bool initWithImageData(void*, int, cocos2d::CCImage::EImageFormat, int, int, int, int) = imac 0x47eb40, m1 0x3e8d90, ios 0x2e5b8;
    bool initWithImageFile(char const*, cocos2d::CCImage::EImageFormat) = imac 0x47e930, m1 0x3e89e4, ios 0x2e4a4;
    bool initWithImageFileThreadSafe(char const*, cocos2d::CCImage::EImageFormat) = imac 0x47f110, m1 0x3e9188, ios 0x2e7c8;
    bool initWithString(char const*, int, int, cocos2d::CCImage::ETextAlign, char const*, int) = imac 0x47f230, m1 0x3e92bc, ios inline;
    [[missing(win, mac)]]
    bool initWithStringShadowStroke(char const*, int, int, cocos2d::CCImage::ETextAlign, char const*, int, float, float, float, bool, float, float, float, float, bool, float, float, float, float) = ios 0x2e874;
    // bool hasAlpha();
    // bool isPremultipliedAlpha();
    [[link(mac, ios)]]
    bool saveToFile(char const*, bool);
}

[[link(win, android)]]
class cocos2d::CCIMEDelegate {
    protected CCIMEDelegate() = imac 0x4b4850, m1 0x418e6c, ios 0x269a38;
    virtual ~CCIMEDelegate() = imac 0x4b4a50, m1 0x41907c, ios 0x269b78;

    virtual bool attachWithIME() = imac 0xbed80, m1 0x4191e4, ios 0x269c2c;
    virtual bool detachWithIME() = imac 0xbd480, m1 0x41941c, ios 0x269d30;
}

[[link(win, android)]]
class cocos2d::CCIMEDispatcher {
    CCIMEDispatcher() = imac 0x4b4f10, m1 0x419588, ios inline;
    ~CCIMEDispatcher() = imac 0x4b4f90, m1 0x4195f0, ios 0x269dd0;

    static cocos2d::CCIMEDispatcher* sharedDispatcher() = imac 0x4b4940, m1 0x418f68, ios 0x269a78;

    void addDelegate(cocos2d::CCIMEDelegate*) = imac 0x4b49e0, m1 0x419010, ios 0x269b10;
    bool attachDelegateWithIME(cocos2d::CCIMEDelegate*) = imac 0x4b4d10, m1 0x419340, ios 0x269c58;
    bool detachDelegateWithIME(cocos2d::CCIMEDelegate*) = imac 0x4b4eb0, m1 0x419510, ios 0x269d5c;
    void dispatchDeleteBackward() = imac 0x4b50c0, m1 0x419720, ios 0x269e3c;
    void dispatchDeleteForward() = imac 0x4b50e0, m1 0x419740, ios inline;
    void dispatchInsertText(char const*, int, cocos2d::enumKeyCodes) = imac 0x4b5090, m1 0x4196f4, ios 0x269e10;
    void dispatchKeyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4b5230, m1 0x4198e0, ios 0x269f70;
    void dispatchKeyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4b5190;
    void dispatchKeyboardWillHide() = imac 0x4b5280, m1 0x419944, ios inline;
    void dispatchKeyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4b51e0, m1 0x41987c, ios 0x269f14;
    void dispatchKeyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4b5140;
    char const* getContentText() = imac 0x4b5100, m1 0x419760, ios inline;
    bool hasDelegate() = imac 0x4b5070, m1 0x4196e0, ios inline;
    void removeDelegate(cocos2d::CCIMEDelegate*) = imac 0x4b4b40, m1 0x419174, ios 0x269bbc;
}

[[link(win, android)]]
class cocos2d::CCJumpBy : cocos2d::CCActionInterval {
    static cocos2d::CCJumpBy* create(float, cocos2d::CCPoint const&, float, unsigned int) = imac 0x3a1e40, m1 0x329ebc, ios inline;

    // CCJumpBy(cocos2d::CCJumpBy const&);
    // CCJumpBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x3a1fd0, m1 0x32a004, ios inline;
    virtual void update(float t) = imac 0x3a2190, m1 0x32a194, ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3a2140, m1 0x32a140, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a22c0, m1 0x32a290, ios inline;

    bool initWithDuration(float, cocos2d::CCPoint const&, float, unsigned int) = imac 0x3a1f60, m1 0x329fa8, ios inline;
}

[[link(win, android)]]
class cocos2d::CCJumpTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCJumpTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x89af90, m1 0x78e614;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);
}

[[link(win, android)]]
class cocos2d::CCJumpTo : cocos2d::CCActionInterval {
    static cocos2d::CCJumpTo* create(float, cocos2d::CCPoint const&, float, int) = imac 0x3a2320, m1 0x32a2e8, ios inline;

    // CCJumpTo(cocos2d::CCJumpTo const&);
    // CCJumpTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x3a2440, m1 0x32a3e0, ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3a25b0, m1 0x32a528, ios inline;
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

    static cocos2d::enumKeyCodes convertKeyCode(cocos2d::enumKeyCodes) = imac 0x1e6550;

    void addDelegate(cocos2d::CCKeyboardDelegate*) = imac 0x6ce610, m1 0x4ec290;
    bool dispatchKeyboardMSG(cocos2d::enumKeyCodes, bool, bool, double) = imac 0x1e5cd0, m1 0x1991f8;
    void forceAddDelegate(cocos2d::CCKeyboardDelegate*) = imac 0x6ce660, m1 0x4ec2ec;
    void forceRemoveDelegate(cocos2d::CCKeyboardDelegate*);
    char const* keyToString(cocos2d::enumKeyCodes) = imac 0x1e6a00, m1 0x199d40;
    void removeDelegate(cocos2d::CCKeyboardDelegate*);
    void updateModifierKeys(bool, bool, bool, bool) = imac 0x1e69c0, m1 0x0199d28;

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

    static cocos2d::CCKeyboardHandler* handlerWithDelegate(cocos2d::CCKeyboardDelegate*) = imac 0x42b7c0, m1 0x3a2878;

    virtual bool initWithDelegate(cocos2d::CCKeyboardDelegate*) = imac 0x42b770, m1 0x3a2824;

    cocos2d::CCKeyboardDelegate* getDelegate();
    void setDelegate(cocos2d::CCKeyboardDelegate*);
}

[[link(win, android)]]
class cocos2d::CCKeypadDispatcher : cocos2d::CCObject {
    // CCKeypadDispatcher(cocos2d::CCKeypadDispatcher const&);
    CCKeypadDispatcher();
    virtual ~CCKeypadDispatcher();

    void addDelegate(cocos2d::CCKeypadDelegate*) = imac 0x6ce610, m1 0x5e5a90, ios 0x24071c;
    bool dispatchKeypadMSG(cocos2d::ccKeypadMSGType) = imac 0x6ce690, m1 0x5e5b28, ios 0x2407a0;
    void forceAddDelegate(cocos2d::CCKeypadDelegate*) = imac 0x6ce660, m1 0x5e5aec, ios 0x240764;
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

    static cocos2d::CCKeypadHandler* handlerWithDelegate(cocos2d::CCKeypadDelegate*) = imac 0x3aa920, m1 0x331bc0, ios 0x53874;

    virtual bool initWithDelegate(cocos2d::CCKeypadDelegate*) = imac 0x3aa8d0, m1 0x331b6c, ios 0x5382c;

    cocos2d::CCKeypadDelegate* getDelegate();
    void setDelegate(cocos2d::CCKeypadDelegate*) = ios inline;
}

[[link(win, android)]]
class cocos2d::CCLabelAtlas : cocos2d::CCAtlasNode, cocos2d::CCLabelProtocol {
    static cocos2d::CCLabelAtlas* create(char const*, char const*) = imac 0x877c70, m1 0x76d804;
    static cocos2d::CCLabelAtlas* create(char const*, char const*, unsigned int, unsigned int, unsigned int) = imac 0x877a70, m1 0x76d5d4;

    virtual void updateAtlasValues() = imac 0x4898d0, m1 0x76dd88;
    virtual void setString(char const*) = imac 0x878500, m1 0x76dfd8;
    virtual char const* getString() = imac 0x8785f0, m1 0x76e0b0;

    bool initWithString(char const*, char const*) = imac 0x877d10, m1 0x76d898;
    bool initWithString(char const*, char const*, unsigned int, unsigned int, unsigned int) = imac 0x877b70, m1 0x76d6e8;
    bool initWithString(char const*, cocos2d::CCTexture2D*, unsigned int, unsigned int, unsigned int) = imac 0x877c00, m1 0x76d780;
}

[[link(win, android)]]
class cocos2d::CCLabelBMFont : cocos2d::CCSpriteBatchNode, cocos2d::CCLabelProtocol, cocos2d::CCRGBAProtocol {
    CCLabelBMFont() = imac 0x6a84e0, m1 0x5c3148, ios 0x395b04;
    virtual ~CCLabelBMFont() = imac 0x6a8610, m1 0x5c3224, ios 0x395bc8;

    static cocos2d::CCLabelBMFont* create() = imac 0x5dce50, m1 0x5c29f4, ios inline;
    static cocos2d::CCLabelBMFont* create(char const*, char const*) = imac 0x6a8070, m1 0x5c2cbc, ios 0x3956f8;
    static cocos2d::CCLabelBMFont* create(char const* str, char const* fntFile, float width) = imac 0x6a7fc0, m1 0x5c2bfc, ios inline;
    static cocos2d::CCLabelBMFont* create(char const* str, char const* fntFile, float width, cocos2d::CCTextAlignment alignment) = imac 0x6a7e70, m1 0x5c2a78, ios inline;
    static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = imac 0x6a7f20, m1 0x5c2b3c, ios 0x395638;
    static cocos2d::CCLabelBMFont* createBatched(char const*, char const*, cocos2d::CCArray*, int) = imac 0x6a83e0, m1 0x5c3030, ios 0x3959ec;
    static void purgeCachedData() = imac 0x6a7dc0, m1 0x5c29bc, ios 0x395634;

    virtual bool init() = imac 0x64090, m1 0x5c30f8, ios 0x395ab4;
    virtual void setScaleX(float) = imac 0x6aae40, m1 0x5c5480;
    virtual void setScaleY(float) = imac 0x6aae60, m1 0x5c54ac;
    virtual void setScale(float) = imac 0x6aae20, m1 0x5c5454, ios 0x397350;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x6a9c10, m1 0x5c4668, ios 0x396a38;
    virtual void setString(char const*) = imac 0x6a9140, m1 0x5c3c3c, ios 0x3963e4;
    virtual void setString(char const*, bool) = imac 0x6a9190, m1 0x5c3c60, ios 0x396408;
    virtual char const* getString() = imac 0x6a93c0, m1 0x5c3e88, ios 0x3965e8;
    virtual void setCString(char const*) = imac 0x6a9410, m1 0x5c3ec0, ios 0x396620;
    virtual void updateLabel() = imac 0x6a9c50, m1 0x2506f4, ios 0x396a8c;
    virtual void setAlignment(cocos2d::CCTextAlignment) = imac 0x6aadc0, m1 0x5c5424, ios 0x397320;
    virtual void setWidth(float) = imac 0x6aade0, m1 0x5c5434, ios 0x397330;
    virtual void setLineBreakWithoutSpace(bool) = imac 0x6aae00, m1 0x5c5444, ios 0x397340;
    virtual void setString(unsigned short*, bool) = imac 0x6a9210, m1 0x5c3ce8, ios 0x396490;
    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x5c3eec, ios 0x39664c;
    virtual cocos2d::ccColor3B const& getColor() = m1 0x5c3ecc, ios 0x39662c;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = m1 0x5c3edc, ios 0x39663c;
    virtual unsigned char getDisplayedOpacity() = m1 0x5c4090, ios 0x396730;
    virtual unsigned char getOpacity() = m1 0x5c4080, ios 0x396720;
    virtual void setOpacity(unsigned char) = m1 0x5c40a0, ios 0x396740;
    virtual void setOpacityModifyRGB(bool) = imac 0x6a9770, m1 0x5c420c, ios 0x3967dc;
    virtual bool isOpacityModifyRGB() = imac 0x6a98d0, m1 0x5c436c, ios 0x39688c;
    virtual bool isCascadeColorEnabled() = imac 0x6a9b90, m1 0x5c4628, ios 0x3969f8;
    virtual void setCascadeColorEnabled(bool) = imac 0x6a9bb0, m1 0x5c4638, ios 0x396a08;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = imac 0x6a99f0, m1 0x5c4494, ios 0x39692c;
    virtual bool isCascadeOpacityEnabled() = imac 0x6a9bd0, m1 0x5c4648, ios 0x396a18;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x6a9bf0, m1 0x5c4658, ios 0x396a28;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x6a98f0, m1 0x5c437c, ios 0x39689c;

    // void setIsBatched(bool);
    // void setTargetArray(cocos2d::CCArray*);
    void createFontChars() = imac 0x6a8840, m1 0x5c3410, ios 0x395d94;
    // cocos2d::CCBMFontConfiguration* getConfiguration() const;
    // int getExtraKerning() const;
    char const* getFntFile() = imac 0x6aaf60, m1 0x5c55ac, ios inline;
    // bool getIsBatched() const;
    float getLetterPosXLeft(cocos2d::CCSprite*, float, bool) = imac 0x6aac60, m1 0x5c52dc, ios 0x3971d8;
    float getLetterPosXRight(cocos2d::CCSprite*, float, bool) = imac 0x6aad10, m1 0x5c5380, ios 0x39727c;
    bool initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = imac 0x6a8120, m1 0x5c2d84, ios 0x395748;
    int kerningAmountForFirst(unsigned short, unsigned short) = imac 0x6a8720, m1 0x5c32f0, ios 0x395c7c;
    void limitLabelWidth(float, float, float) = imac 0x6aafa0, m1 0x5c55d0, ios 0x39749c;
    // cocos2d::CCArray* getTargetArray() const;
    // void setExtraKerning(int);
    void setFntFile(char const* filename) = imac 0x6aae80, m1 0x5c54d8, ios inline;

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
    CCLabelTTF() = imac 0x3a5f00, m1 0x32d7b8, ios 0x76910;
    virtual ~CCLabelTTF() = m1 0x32d938, ios 0x769d8;

    static cocos2d::CCLabelTTF* create() = imac 0x3a6280, m1 0x9ac30, ios inline;
    static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize) = imac 0x3a63a0, m1 0x32dbec, ios inline;
    static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment hAlignment) = imac 0x3a6520, m1 0x32dd48, ios inline;
    static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment hAlignment, cocos2d::CCVerticalTextAlignment vAlignment) = imac 0x3a63c0, m1 0x32dc00, ios inline;
    static cocos2d::CCLabelTTF* createWithFontDefinition(char const*, cocos2d::ccFontDefinition&) = imac 0x3a66a0, m1 0x32deb0, ios inline;

    virtual bool init() = imac 0x3a6880, m1 0x32e09c, ios 0x76b5c;
    virtual void setString(char const*) = imac 0x3a69b0, m1 0x32e198, ios 0x76b98;
    virtual char const* getString() = imac 0x3a6be0, m1 0x32e394, ios 0x76cf0;

    cocos2d::ccFontDefinition _prepareTextDefinition(bool) = imac 0x3a7120, m1 0x32e808, ios 0x76d28;
    void _updateWithTextDefinition(cocos2d::ccFontDefinition&, bool) = imac 0x3a68e0, m1 0x32e0e0, ios inline;
    char const* description() = imac 0x3a6c30, m1 0x32e3cc, ios inline;
    void disableShadow(bool) = imac 0x3a6f70, m1 0x32e668, ios inline;
    void disableStroke(bool) = imac 0x3a6f90, m1 0x32e670, ios inline;
    void enableShadow(cocos2d::CCSize const&, float, float, bool) = imac 0x3a6f60, m1 0x32e664, ios inline;
    void enableStroke(cocos2d::ccColor3B const&, float, bool) = imac 0x3a6f80, m1 0x32e66c, ios inline;
    // cocos2d::CCSize getDimensions();
    char const* getFontName() = imac 0x3a6e00, m1 0x32e520, ios inline;
    // float getFontSize();
    // cocos2d::CCTextAlignment getHorizontalAlignment();
    cocos2d::ccFontDefinition* getTextDefinition() = imac 0x3a6fd0, m1 0x32e688, ios inline;
    bool initWithString(char const* label, char const* fontName, float fontSize) = imac 0x3a68b0, m1 0x32e0c4, ios 0x76b84;
    bool initWithString(char const* label, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment alignment) = imac 0x3a68d0, m1 0x32e0d8, ios inline;
    bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment) = imac 0x10a1d0, m1 0x32dd50, ios 0x76a68;
    bool initWithStringAndTextDefinition(char const*, cocos2d::ccFontDefinition&) = imac 0x3a6810, m1 0x32e018, ios inline;
    // cocos2d::CCVerticalTextAlignment getVerticalAlignment();
    // void setDimensions(cocos2d::CCSize const&);
    void setFontFillColor(cocos2d::ccColor3B const&, bool) = imac 0x3a6fa0, m1 0x32e674, ios inline;
    void setFontName(char const*) = imac 0x3a6e20, m1 0x32e538, ios inline;
    // void setFontSize(float);
    // void setHorizontalAlignment(cocos2d::CCTextAlignment);
    void setTextDefinition(cocos2d::ccFontDefinition*) = imac 0x3a6fb0, m1 0x32e678, ios inline;
    bool updateTexture() = imac 0x3a6a00, m1 0x32e1e0, ios 0x76be0;

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
    CCLayer() = imac 0x4a8d50, m1 0x40efc4, ios 0x1c51bc;
    virtual ~CCLayer() = imac 0x4a8f10, m1 0x40f11c;

    static cocos2d::CCLayer* create() = imac 0x4a9310, m1 0x40f3e0, ios 0x1c537c;

    virtual bool init() = imac 0x4a92b0, m1 0x40f384, ios 0x1c5320;
    virtual void onEnter() = imac 0x4a9ba0, m1 0x40fc30, ios 0x1c5a14;
    virtual void onEnterTransitionDidFinish() = imac 0x4a9da0, m1 0x40fe54, ios 0x1c5bd0;
    virtual void onExit() = imac 0x4a9ca0, m1 0x40fd40, ios 0x1c5af4;
    virtual void registerWithTouchDispatcher() = imac 0x4a9440, m1 0x40f4f0, ios 0x1c53f0;
    virtual void registerScriptTouchHandler(int, bool, int, bool) = imac 0x4a94c0, m1 0x40f570, ios 0x1c5468;
    virtual void unregisterScriptTouchHandler() = imac 0x4a9520, m1 0x40f5d0, ios 0x1c54c8;
    virtual bool isTouchEnabled() = imac 0x4a95d0, m1 0x40f68c, ios 0x1c54f4;
    virtual void setTouchEnabled(bool) = imac 0x4a95e0, m1 0x40f694, ios 0x1c54fc;
    virtual void setTouchMode(cocos2d::ccTouchesMode) = imac 0x4a9640, m1 0x40f6f4, ios 0x1c5570;
    virtual int getTouchMode() = imac 0x4a96f0, m1 0x40f7b4, ios 0x1c5648;
    virtual void setTouchPriority(int) = imac 0x4a9690, m1 0x40f750, ios 0x1c55d8;
    virtual int getTouchPriority() = imac 0x4a96e0, m1 0x40f7ac, ios 0x1c5640;
    virtual bool isAccelerometerEnabled() = imac 0x4a9700, m1 0x40f7bc, ios 0x1c5650;
    virtual void setAccelerometerEnabled(bool) = imac 0x4a9710, m1 0x40f7c4, ios 0x1c5658;
    virtual void setAccelerometerInterval(double) = imac 0x4a9750, m1 0x40f800, ios 0x1c56c0;
    virtual bool isKeypadEnabled() = imac 0x4a9850, m1 0x40f8fc, ios 0x1c5794;
    virtual void setKeypadEnabled(bool) = imac 0x4a9860, m1 0x40f904, ios 0x1c579c;
    virtual bool isKeyboardEnabled() = imac 0x4a98d0, m1 0x40f97c, ios 0x1c5814;
    virtual void setKeyboardEnabled(bool) = imac 0x4a98e0, m1 0x40f984, ios 0x1c581c;
    virtual bool isMouseEnabled() = imac 0x4a9940, m1 0x40f9f0, ios 0x1c5888;
    virtual void setMouseEnabled(bool) = imac 0x4a9950, m1 0x40f9f8, ios 0x1c5890;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4a9de0, m1 0x40fe90, ios 0x1c5c14;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4a9e60, m1 0x40ff40;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4a9ee0, m1 0x40ffd0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x4a9f60, m1 0x410060;
    virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4a9fe0, m1 0x4100f0;
    virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4aa060, m1 0x410180;
    virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4aa0e0, m1 0x410210;
    virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4aa160, m1 0x4102a0, ios 0x1c6024;
    virtual void setPreviousPriority(int) = imac 0x2b90, m1 0x28e0, ios 0xa8d8;
    virtual int getPreviousPriority() = imac 0x2ba0, m1 0x28e8, ios 0xa8e0;
    virtual void didAccelerate(cocos2d::CCAcceleration*) = imac 0x4a9780, m1 0x40f838, ios 0x1c570c;
    virtual void keyBackClicked() = imac 0x4a9a00, m1 0x40faa0, ios 0x1c58fc;
    virtual void keyMenuClicked() = imac 0x4a9aa0, m1 0x40fb40, ios 0x1c5958;
    virtual void keyDown(cocos2d::enumKeyCodes, double) = imac 0x4a9b20, m1 0x40fbc0, ios 0x1c59d8;

    // cocos2d::CCScriptHandlerEntry* getScriptAccelerateHandlerEntry();
    // cocos2d::CCScriptHandlerEntry* getScriptKeypadHandlerEntry();
    // cocos2d::CCTouchScriptHandlerEntry* getScriptTouchHandlerEntry();
    int excuteScriptTouchHandler(int, cocos2d::CCSet*) = imac 0x4a9590, m1 0x40f644, ios inline;
    int excuteScriptTouchHandler(int, cocos2d::CCTouch*) = imac 0x4a9550, m1 0x40f5fc, ios inline;
    void registerScriptAccelerateHandler(int) = imac 0x4a9800, m1 0x40f8c0, ios inline;
    void registerScriptKeypadHandler(int) = imac 0x4a99b0, m1 0x40fa64, ios inline;
    void unregisterScriptAccelerateHandler() = imac 0x4a9010, m1 0x40f1c8, ios inline;
    void unregisterScriptKeypadHandler() = imac 0x4a8fe0, m1 0x40f19c, ios inline;

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
    CCLayerColor() = m1 0x410dc4, imac 0x4aafa0, ios 0x1c6558;
    virtual ~CCLayerColor() = m1 0x410fbc, imac 0x4ab280, ios 0x1c65bc;

    static cocos2d::CCLayerColor* create() = imac 0x4ab600, m1 0x4111ec, ios inline;
    static cocos2d::CCLayerColor* create(cocos2d::ccColor4B const&) = imac 0x4ab9b0, m1 0x4114e0, ios 0x1c66f4;
    static cocos2d::CCLayerColor* create(cocos2d::ccColor4B const&, float, float) = imac 0x4ab7e0, m1 0x411364, ios 0x1c6618;

    virtual bool init() = imac 0x4abb80, m1 0x41162c, ios 0x1c67b8;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x4abd70, m1 0x4117fc, ios 0x1c6968;
    virtual void draw() = imac 0x4abeb0, m1 0x41195c, ios 0x1c69d4;
    virtual bool initWithColor(cocos2d::ccColor4B const&, float, float) = imac 0x4abbd0, m1 0x411678, ios 0x1c6804;
    virtual bool initWithColor(cocos2d::ccColor4B const&) = imac 0x4abcc0, m1 0x411764, ios 0x1c68d0;
    virtual void updateColor() = imac 0x4abe60, m1 0x4118e0, ios 0x1c6980;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x4abf80, m1 0x411a28, ios 0x1c6aa0;
    virtual void setOpacity(unsigned char) = imac 0x3767d0, m1 0x411bdc, ios 0x1c6afc;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x4ab5e0, m1 0x1943fc, ios 0x1c6608;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x4ab5c0, m1 0x4111cc, ios 0x1c65f8;

    void addToVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x4abd30, m1 0x4117d0, ios 0x1c693c;
    void changeHeight(float) = imac 0x4abe20, m1 0x411898, ios inline;
    void changeWidth(float) = imac 0x4abde0, m1 0x411854, ios inline;
    void changeWidthAndHeight(float, float) = imac 0x4abda0, m1 0x411814, ios inline;
    void setVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x4abd10, m1 0x4117b4, ios 0x1c6920;

    std::array<cocos2d::ccVertex2F, 4> m_pSquareVertices;
    std::array<cocos2d::ccColor4F, 4> m_pSquareColors;
    cocos2d::ccBlendFunc m_tBlendFunc;
}

[[link(win, android)]]
class cocos2d::CCLayerGradient : cocos2d::CCLayerColor {
    static cocos2d::CCLayerGradient* create() = imac 0x4ac640, m1 0x412074, ios inline;
    static cocos2d::CCLayerGradient* create(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&) = imac 0x4ac230, m1 0x411d1c, ios 0x1c6b58;
    static cocos2d::CCLayerGradient* create(cocos2d::ccColor4B const& a1, cocos2d::ccColor4B const& a2, cocos2d::CCPoint const& a3) = imac 0x4ac430, m1 0x411ec4, ios inline;

    // CCLayerGradient(cocos2d::CCLayerGradient const&);
    // CCLayerGradient();
    virtual bool init() = imac 0x4ac830, m1 0x412200, ios 0x1c6c58;
    virtual void visit() = imac 0x4acd20, m1 0x412680, ios 0x1c70a0;
    virtual void updateColor() = imac 0x4ac970, m1 0x412330, ios 0x1c6d70;
    virtual bool initWithColor(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&) = imac 0x4ac860, m1 0x412238, ios 0x1c6c90;
    virtual bool initWithColor(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&, cocos2d::CCPoint const&) = imac 0x4ac8c0, m1 0x412298, ios 0x1c6cf0;
    virtual cocos2d::ccColor3B const& getStartColor() = imac 0x4acb60, m1 0x412550, ios 0x1c6f70;
    virtual void setStartColor(cocos2d::ccColor3B const&) = imac 0x4acb70, m1 0x412558, ios 0x1c6f78;
    virtual cocos2d::ccColor3B const& getEndColor() = imac 0x4acbc0, m1 0x412584, ios 0x1c6fa4;
    virtual void setEndColor(cocos2d::ccColor3B const&) = imac 0x4acb90, m1 0x412564, ios 0x1c6f84;
    virtual unsigned char getStartOpacity() = imac 0x4acbf0, m1 0x41259c, ios 0x1c6fbc;
    virtual void setStartOpacity(unsigned char) = imac 0x4acbd0, m1 0x41258c, ios 0x1c6fac;
    virtual unsigned char getEndOpacity() = imac 0x4acc20, m1 0x4125b4, ios 0x1c6fd4;
    virtual void setEndOpacity(unsigned char) = imac 0x4acc00, m1 0x4125a4, ios 0x1c6fc4;
    virtual cocos2d::CCPoint const& getVector() = imac 0x4acc60, m1 0x4125ec, ios 0x1c700c;
    virtual void setVector(cocos2d::CCPoint const&) = imac 0x4acc30, m1 0x4125bc, ios 0x1c6fdc;
    virtual void setCompressedInterpolation(bool) = imac 0x4acd00, m1 0x412670, ios 0x1c7090;
    virtual bool isCompressedInterpolation() = imac 0x4accf0, m1 0x412668, ios 0x1c7088;

    // bool getShouldPremultiply() const;
    // void setShouldPremultiply(bool);
    void setValues(cocos2d::ccColor3B const&, unsigned char, cocos2d::ccColor3B const&, unsigned char, cocos2d::CCPoint const&) = imac 0x4acc70, m1 0x4125f4, ios 0x1c7014;

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
    CCLayerMultiplex() = m1 0x412780;
    virtual ~CCLayerMultiplex() = imac 0x4acfc0;

    static cocos2d::CCLayerMultiplex* create() = imac 0x4ad4e0, m1 0x412ba0;
    static cocos2d::CCLayerMultiplex* create(cocos2d::CCLayer*, ...) = mac inline;
    static cocos2d::CCLayerMultiplex* createWithArray(cocos2d::CCArray*) = imac 0x4ad690, m1 0x412cf8;
    static cocos2d::CCLayerMultiplex* createWithLayer(cocos2d::CCLayer*) = imac 0x4ad4d0, m1 0x412b80;

    void addLayer(cocos2d::CCLayer*) = imac 0x4ad8e0, m1 0x412ee8;
    bool initWithArray(cocos2d::CCArray*) = imac 0x4ad820, m1 0x412e3c;
    bool initWithLayers(cocos2d::CCLayer*, va_list) = imac 0x4ad3b0, m1 0x412aa4;
    void switchTo(unsigned int) = imac 0x4ad900, m1 0x412ef0;
    void switchToAndReleaseMe(unsigned int) = imac 0x4ad970, m1 0x412f5c;
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA : cocos2d::CCLayer, cocos2d::CCRGBAProtocol {
    // static cocos2d::CCLayerRGBA* create();
    // CCLayerRGBA(cocos2d::CCLayerRGBA const&);
    CCLayerRGBA() = m1 0x410330, imac 0x4aa1e0, ios 0x111b64;
    virtual ~CCLayerRGBA() = m1 0x410500, imac 0x4aa480, ios 0x1c6104;

    virtual bool init() = imac 0x4aa7c0, m1 0x410710, ios 0x1c6140;
    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x410948, imac 0x4aaa00, ios 0x1c6278;
    virtual cocos2d::ccColor3B const& getColor() = m1 0x410928, imac 0x4aa9c0, ios 0x1c6258;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = m1 0x410938, imac 0x4aa9e0, ios 0x1c6268;
    virtual unsigned char getDisplayedOpacity() = m1 0x4107ac, imac 0x4aa860, ios 0x1c61ac;
    virtual unsigned char getOpacity() = m1 0x41079c, imac 0x4aa840, ios 0x1c619c;
    virtual void setOpacity(unsigned char) = m1 0x4107bc, imac 0x4aa880, ios 0x1c61bc;
    virtual bool isCascadeColorEnabled() = imac 0x4aaf60, m1 0x410da4, ios 0x1c6538;
    virtual void setCascadeColorEnabled(bool) = imac 0x4aaf80, m1 0x410db4, ios 0x1c6548;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = m1 0x410c74, imac 0x4aad00, ios 0x1c6414;
    virtual bool isCascadeOpacityEnabled() = imac 0x4aaf20, m1 0x410d84, ios 0x1c6518;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x4aaf40, m1 0x410d94, ios 0x1c6528;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x4aab80, m1 0x410adc, ios 0x1c634c;

    uint8_t _displayedOpacity;
    uint8_t _realOpacity;
    cocos2d::ccColor3B _displayedColor;
    cocos2d::ccColor3B _realColor;
    bool _cascadeOpacityEnabled;
    bool _cascadeColorEnabled;
}

[[link(win, android)]]
class cocos2d::CCLens3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCLens3D* create(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float) = imac 0x26a590, m1 0x211670;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x26a7c0, m1 0x21189c;
    virtual void update(float) = imac 0x26a960, m1 0x211a1c;

    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float) = imac 0x26a6e0, m1 0x2117bc;
    void setPosition(cocos2d::CCPoint const&) = imac 0x26a780, m1 0x211858;
}

[[link(android)]]
class cocos2d::CCLightning : cocos2d::CCNode, cocos2d::CCRGBAProtocol {
    CCLightning() = win 0x48130, imac 0x6ad160, m1 0x5c73dc, ios 0x3e3858;
    virtual ~CCLightning() = win inline, imac 0x6ad300, m1 0x5c752c, ios 0x3e3900;

    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint) = win inline, imac 0x6ad420, m1 0x5c7604, ios inline;
    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = win 0x48270, imac 0x6ad5e0, m1 0x5c7770, ios 0x3e395c;

    virtual void draw() = win 0x9999999, imac 0x6ad8d0, m1 0x5c7a20, ios 0x1fa82c;
    virtual bool isOpacityModifyRGB() = win 0x9999999, imac 0x6adbf0, m1 0x5c7c98, ios 0x3e3cd0;
    virtual void setOpacityModifyRGB(bool) = win 0x9999999, imac 0x6adc10, m1 0x5c7ca8, ios 0x3e3ce0;
    virtual unsigned char getOpacity() = win 0x9999999, imac 0x6adb20, m1 0x5c7c20, ios 0x3e3c58;
    virtual unsigned char getDisplayedOpacity() = win 0x9999999, imac 0x6adb40, m1 0x5c7c30, ios 0x3e3c68;
    virtual void setOpacity(unsigned char) = win 0x9999999, imac 0x6adb70, m1 0x5c7c4c, ios 0x3e3c84;
    virtual void updateDisplayedOpacity(unsigned char) = win 0x9999999, imac 0x6adc30, m1 0x5c7cb8, ios 0x3e3cf0;
    virtual bool isCascadeOpacityEnabled() = win 0x9999999, imac 0x6adc50, m1 0x5c7cc8, ios 0x3e3d00;
    virtual void setCascadeOpacityEnabled(bool) = win 0x9999999, imac 0x6adc70, m1 0x5c7cd8, ios 0x3e3d10;
    virtual cocos2d::ccColor3B const& getColor() = win 0x9999999, imac 0x6adb90, m1 0x5c7c5c, ios 0x3e3c94;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = win 0x9999999, imac 0x6adc90, m1 0x5c7ce8, ios 0x3e3d20;
    virtual void setColor(cocos2d::ccColor3B const&) = win 0x9999999, imac 0x6adbb0, m1 0x5c7c6c, ios 0x3e3ca4;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = win 0x9999999, imac 0x6adcb0, m1 0x5c7cf8, ios 0x3e3d30;
    virtual bool isCascadeColorEnabled() = win 0x9999999, imac 0x6adcf0, m1 0x5c7d20, ios 0x3e3d58;
    virtual void setCascadeColorEnabled(bool) = win 0x9999999, imac 0x6add10, m1 0x5c7d30, ios 0x3e3d68;

    bool initWithStrikePoint(cocos2d::CCPoint) = win inline, imac 0x6ad580, m1 0x5c771c, ios inline;
    bool initWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = win 0x48310, imac 0x6ad730, m1 0x5c7890, ios 0x3e39f4;
    void strike() = win 0x9999999, imac 0x6ad870, m1 0x5c79b4, ios 0x3e3ad4;
    void strikeFinished() = imac 0x6adb00, m1 0x5c7c04, ios 0x3e3c3c;
    void strikeRandom() = win inline, imac 0x6ada20, m1 0x5c7b1c, ios inline;
    void strikeWithSeed(uint64_t seed) = win inline, imac 0x6ada90, m1 0x5c7b94, ios inline;

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
    virtual void update(float) = imac 0x26b6f0, m1 0x212698;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);
}

[[link(win, android)]]
class cocos2d::CCMenu : cocos2d::CCLayerRGBA {
    static cocos2d::CCMenu* create() = imac 0x871700, m1 0x767ec0, ios 0x26e660;
    static cocos2d::CCMenu* create(cocos2d::CCMenuItem*, ...) = inline;
    static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*) = imac 0x871900, m1 0x768018, ios 0x26e70c;
    static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*) = imac 0x871b50, m1 0x768264, ios 0x26e94c;
    static cocos2d::CCMenu* createWithItems(cocos2d::CCMenuItem*, va_list) = imac 0x8717c0, m1 0x767f0c, ios 0x26e6ac;

    virtual bool init() = imac 0x871b60, m1 0x768284, ios 0x26e96c;
    virtual void addChild(cocos2d::CCNode*) = imac 0x871b70, m1 0x76828c, ios 0x26e974;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x871b80, m1 0x768290, ios 0x26e978;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x871b90, m1 0x768294, ios 0x26e97c;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x601e60, m1 0x7682e4, ios 0x26e9c8;
    virtual void onExit() = imac 0x871ba0, m1 0x768298, ios 0x26e980;
    virtual void registerWithTouchDispatcher() = imac 0x871dc0, m1 0x7684c4;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x871e10, m1 0x5ccb10;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x8720b0, m1 0x7687c8, ios 0x18814c;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x871fd0, m1 0x7686d8, ios 0x26ecd8;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x872050, m1 0x768760, ios 0x26ed60;

    // CCMenu(cocos2d::CCMenu const&);
    // CCMenu();
    void alignItemsHorizontally() = imac 0x872430;
    void alignItemsHorizontallyWithPadding(float) = imac 0x872450;
    void alignItemsInColumns(unsigned int, ...) = inline;
    void alignItemsInColumns(unsigned int, va_list) = imac 0x872740, m1 0x768d24, ios inline;
    void alignItemsInColumnsWithArray(cocos2d::CCArray*) = imac 0x872810, m1 0x768dd8, ios inline;
    void alignItemsInRows(unsigned int, ...) = inline;
    void alignItemsInRows(unsigned int, va_list) = imac 0x872e20, m1 0x769234, ios inline;
    void alignItemsInRowsWithArray(cocos2d::CCArray*) = imac 0x6d58e0, m1 0x5cbc20, ios inline;
    void alignItemsVertically() = imac 0x8721c0, ios inline;
    void alignItemsVerticallyWithPadding(float) = imac 0x8721e0;
    void giveMenuTouchPriority(int) = m1 0x346da0, ios 0x26e980;
    bool initWithArray(cocos2d::CCArray*) = imac 0x8719d0, m1 0x7680d0, ios 0x26e7b8;
    cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*) = imac 0x871f70, m1 0x76868c, ios 0x26ec8c;
    cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*, bool) = imac 0xd9570, m1 0x769820, ios 0x26f1f8;
    void setHandlerPriority(int) = imac 0x871d80, m1 0x76848c, ios inline;

    bool m_bEnabled;
    cocos2d::tCCMenuState m_eState;
    cocos2d::CCMenuItem* m_pSelectedItem;
}

[[link(win, android)]]
class cocos2d::CCMenuItem : cocos2d::CCNodeRGBA {
    virtual ~CCMenuItem() = m1 0x32ecb8, imac 0x3a76b0, ios 0x54de8;

    static cocos2d::CCMenuItem* create() = imac 0x3a74a0, m1 0x32eae4, ios inline;
    static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a7560, m1 0x32eb8c, ios inline;

    virtual void activate() = imac 0x3a7870, m1 0x32ee54, ios 0x54ec0;
    virtual void selected() = imac 0x3a77e0, m1 0x32edd0, ios 0x54e3c;
    virtual void unselected() = imac 0x3a77f0, m1 0x32eddc, ios 0x54e48;
    virtual void registerScriptTapHandler(int) = imac 0x3a7800, m1 0x32ede4, ios 0x54e50;
    virtual void unregisterScriptTapHandler() = imac 0x3a7830, m1 0x32ee14, ios 0x54e80;
    virtual bool isEnabled() = imac 0x3a78f0, m1 0x32eedc, ios 0x54f48;
    virtual void setEnabled(bool) = imac 0x3a78e0, m1 0x32eed4, ios 0x54f40;
    virtual bool isSelected() = imac 0x3a7950, m1 0x32ef00, ios 0x54f6c;

    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a7630, m1 0x32ec48, ios 0x54d78;
    // CCMenuItem(cocos2d::CCMenuItem const&);
    // CCMenuItem();
    cocos2d::CCRect rect() = imac 0x3a7900, m1 0x32eee4, ios 0x54f50;
    // int getScriptTapHandler();
    void setTarget(cocos2d::CCObject* rec, cocos2d::SEL_MenuHandler selector) = imac 0x3a7960, m1 0x32ef08, ios inline;

    bool m_bSelected;
    bool m_bEnabled;
    cocos2d::CCObject* m_pListener;
    cocos2d::SEL_MenuHandler m_pfnSelector;
    int m_nScriptTapHandler;
    float m_fSizeMult;
}

[[link(win, android)]]
class cocos2d::CCMenuItemAtlasFont : cocos2d::CCMenuItemLabel {
    static cocos2d::CCMenuItemAtlasFont* create(char const*, char const*, int, int, char) = imac 0x3a8180, m1 0x32f728;
    static cocos2d::CCMenuItemAtlasFont* create(char const*, char const*, int, int, char, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a8260, m1 0x32f7f0;

    bool initWithString(char const*, char const*, int, int, char, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a8350, m1 0x32f8d4;
}

[[link(win, android)]]
class cocos2d::CCMenuItemFont : cocos2d::CCMenuItemLabel {
    static cocos2d::CCMenuItemFont* create(char const*) = imac 0x3a8760, m1 0x32fcf0;
    static cocos2d::CCMenuItemFont* create(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a8560, m1 0x32fb04;
    static char const* fontName() = imac 0x3a8540, m1 0x32fae8;
    static unsigned int fontSize() = imac 0x3a84e0, m1 0x32fa64;
    static void setFontName(char const*) = imac 0x3a84f0, m1 0x32fa70;
    static void setFontSize(unsigned int) = imac 0x3a84d0, m1 0x32fa58;

    char const* fontNameObj() = imac 0x3a89b0, m1 0x32fef8;
    unsigned int fontSizeObj() = imac 0x3a8910, m1 0x32fe74;
    bool initWithString(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a8630, m1 0x32fbc0;
    void recreateLabel() = imac 0x3a8810, m1 0x32fd90;
    void setFontNameObj(char const*) = imac 0x3a8920, m1 0x32fe7c;
    void setFontSizeObj(unsigned int) = imac 0x3a8890, m1 0x32fe00;
}

[[link(win, android)]]
class cocos2d::CCMenuItemImage : cocos2d::CCMenuItemSprite {
    static cocos2d::CCMenuItemImage* create() = imac 0x3a90e0, m1 0x33060c, ios inline;
    static cocos2d::CCMenuItemImage* create(char const*, char const*) = imac 0x3a9430, m1 0x330980, ios inline;
    static cocos2d::CCMenuItemImage* create(char const*, char const*, char const*) = imac 0x3a9690, m1 0x330ba0, ios inline;
    static cocos2d::CCMenuItemImage* create(char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a95c0, m1 0x330ae8, ios inline;
    static cocos2d::CCMenuItemImage* create(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a94e0, m1 0x330a24, ios inline;

    virtual bool init() = imac 0x3a9220, m1 0x330748, ios 0x554d0;

    bool initWithNormalImage(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a92f0, m1 0x330830, ios 0x55500;
    void setDisabledSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3a97b0, m1 0x330cb0, ios inline;
    void setNormalSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3a9750, m1 0x330c48, ios inline;
    void setSelectedSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3a9780, m1 0x330c7c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCMenuItemLabel : cocos2d::CCMenuItem {
    ~CCMenuItemLabel();

    static cocos2d::CCMenuItemLabel* create(cocos2d::CCNode*) = imac 0x3a7c90, m1 0x32f214;
    static cocos2d::CCMenuItemLabel* create(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a7a50, m1 0x32efe0;

    virtual cocos2d::ccColor3B const& getDisabledColor() = imac 0x3a7980, m1 0x32ef14;
    virtual void setDisabledColor(cocos2d::ccColor3B const&) = imac 0x3a7990, m1 0x32ef1c;
    virtual cocos2d::CCNode* getLabel() = imac 0x3a79b0, m1 0x32ef30;
    virtual void setLabel(cocos2d::CCNode*) = imac 0x3a79c0, m1 0x32ef38;
    virtual void activate() = imac 0x3a7f60, m1 0x32f4c8;
    virtual void selected() = imac 0x3a7ff0, m1 0x32f56c;
    virtual void unselected() = imac 0x3a8080, m1 0x32f614;
    virtual void setEnabled(bool) = imac 0x3a80e0, m1 0x32f684;

    bool initWithLabel(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a7bb0, m1 0x32f124;
    void setString(char const*) = imac 0x3a7f00, m1 0x32f45c;
}

[[link(win, android)]]
class cocos2d::CCMenuItemSprite : cocos2d::CCMenuItem {
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*) = imac 0x3a8c10, m1 0x330148, ios inline;
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a8da0, m1 0x3302c4, ios inline;
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a8c30, m1 0x330158, ios inline;

    virtual void selected() = imac 0x3a8eb0, m1 0x3303f0, ios 0x552c0;
    virtual void unselected() = imac 0x3a8f50, m1 0x33047c, ios 0x5534c;
    virtual void setEnabled(bool) = imac 0x3a8fd0, m1 0x3304fc, ios 0x553cc;
    virtual cocos2d::CCNode* getNormalImage() = imac 0x3a89e0, m1 0x32ff14, ios 0x54f74;
    virtual void setNormalImage(cocos2d::CCNode*) = imac 0x3a89f0, m1 0x32ff1c, ios 0x54f7c;
    virtual cocos2d::CCNode* getSelectedImage() = imac 0x3a8ab0, m1 0x32ffe8, ios 0x55048;
    virtual void setSelectedImage(cocos2d::CCNode*) = imac 0x3a8ac0, m1 0x32fff0, ios 0x55050;
    virtual cocos2d::CCNode* getDisabledImage() = imac 0x3a8b60, m1 0x330098, ios 0x550f8;
    virtual void setDisabledImage(cocos2d::CCNode*) = imac 0x3a8b70, m1 0x3300a0, ios 0x55100;
    virtual void updateImagesVisibility() = imac 0x3a8ff0, m1 0x33051c, ios 0x553ec;

    bool initWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3a8dc0, m1 0x3302d8, ios 0x551a8;

    cocos2d::CCNode* m_pNormalImage;
    cocos2d::CCNode* m_pSelectedImage;
    cocos2d::CCNode* m_pDisabledImage;
}

[[link(win, android)]]
class cocos2d::CCMenuItemToggle : cocos2d::CCMenuItem {
    virtual ~CCMenuItemToggle() = m1 0x331354;

    static cocos2d::CCMenuItemToggle* create() = imac 0x3a9cb0, m1 0x33104c;
    static cocos2d::CCMenuItemToggle* create(cocos2d::CCMenuItem*) = imac 0x3a9ea0, m1 0x331224;
    static cocos2d::CCMenuItemToggle* createWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCArray*) = imac 0x3a9830, m1 0x330d28;
    static cocos2d::CCMenuItemToggle* createWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCMenuItem*, ...) = mac inline;

    virtual unsigned int getSelectedIndex() = imac 0x3aa2b0, m1 0x3315d4;
    virtual void setSelectedIndex(unsigned int) = imac 0x3aa1c0, m1 0x3314d8;
    virtual cocos2d::CCArray* getSubItems() = imac 0x3a9820, m1 0x330d20;
    virtual void setSubItems(cocos2d::CCArray*) = imac 0x3a97e0, m1 0x330ce4;
    virtual void activate() = imac 0x3aa320, m1 0x331638;
    virtual void selected() = imac 0x3aa2c0, m1 0x3315dc;
    virtual void unselected() = imac 0x3aa2f0, m1 0x33160c;
    virtual void setEnabled(bool) = imac 0x3aa3d0, m1 0x3316e8;

    void addSubItem(cocos2d::CCMenuItem*) = imac 0x3a9fe0, m1 0x33134c;
    bool initWithItem(cocos2d::CCMenuItem*) = imac 0x3a9dd0, m1 0x331158;
    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCMenuItem*, va_list) = imac 0x3a9bb0, m1 0x330f80;
    cocos2d::CCMenuItem* selectedItem() = imac 0x3aa470, m1 0x331778;
}

[[link(win, android)]]
class cocos2d::CCMotionStreak : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    // CCMotionStreak(cocos2d::CCMotionStreak const&);
    CCMotionStreak() = ios 0x2062f8;
    virtual ~CCMotionStreak() = imac 0x5a26e0, m1 0x4f16a8, ios 0x2063a4;

    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::ccColor3B const&, char const*) = imac 0x5a2800, m1 0x4f175c;
    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::ccColor3B const&, cocos2d::CCTexture2D*) = imac 0x5a29d0;

    virtual void update(float) = m1 0x4f1db8, ios 0x2068c4;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x29c090, m1 0x4f1bc0, ios 0x206794;
    virtual void draw() = imac 0x5a3780, m1 0x4f2674, ios 0x206e98;
    virtual unsigned char getOpacity() = imac 0x5a2ea0, m1 0x4f1d20, ios 0x20682c;
    virtual void setOpacity(unsigned char) = imac 0x5a2e80, m1 0x4f1d18, ios 0x206824;
    virtual void setOpacityModifyRGB(bool) = imac 0x5a2ec0, m1 0x4f1d30, ios 0x20683c;
    virtual bool isOpacityModifyRGB() = imac 0x5a2ee0, m1 0x4f1d38, ios 0x206844;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x5a2e40, m1 0x4f1cf8, ios 0x206804;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x5a2e60, m1 0x4f1d08, ios 0x206814;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x5a2d90, m1 0x4f1c58, ios 0x2067a4;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x5a2db0, m1 0x4f1c68, ios 0x2067b4;

    void enableRepeatMode(float) = imac 0x5a2f00, m1 0x4f1d48, ios 0x206854;
    bool initWithFade(float, float, float, cocos2d::ccColor3B const&, char const*) = imac 0x5a2960, m1 0x4f1888, ios 0x2064e8;
    bool initWithFade(float, float, float, cocos2d::ccColor3B const&, cocos2d::CCTexture2D*) = imac 0x5a2b20, m1 0x4f1a1c, ios 0x2065f0;
    // bool isFastMode();
    // bool isStartingPositionInitialized();
    void reset() = imac 0x5a3760, m1 0x4f2668, ios 0x206e8c;
    void resumeStroke() = imac 0x156210, m1 0x4f1dac, ios 0x2068b8;
    // bool getDontOpacityFade() const;
    // float getM_fMaxSeg() const;
    // void setDontOpacityFade(bool);
    // void setFastMode(bool);
    // void setM_fMaxSeg(float);
    // void setStartingPositionInitialized(bool);
    void setStroke(float) = imac 0x5a3750, m1 0x4f2660, ios 0x206e84;
    void stopStroke() = m1 0x4f1da4, ios 0x2068b0;
    void tintWithColor(cocos2d::ccColor3B) = imac 0x5a2d10, m1 0x4f1bd0, ios inline;
    void updateFade(float) = imac 0x5a2f50, m1 0x4f1d94, ios 0x2068a0;

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

    void addDelegate(cocos2d::CCMouseDelegate*) = imac 0x1e5c50, m1 0x4ec290;
    bool dispatchScrollMSG(float, float) = m1 0x4ec328, ios inline;
    void forceAddDelegate(cocos2d::CCMouseDelegate*) = imac 0x1e5ca0, m1 0x4ec2ec, ios inline;
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

    static cocos2d::CCMouseHandler* handlerWithDelegate(cocos2d::CCMouseDelegate*) = imac 0x271540, m1 0x217fd4, ios 0x8e338;

    virtual bool initWithDelegate(cocos2d::CCMouseDelegate*) = imac 0x2714f0, m1 0x217f80, ios 0x8e2f0;

    cocos2d::CCMouseDelegate* getDelegate();
    void setDelegate(cocos2d::CCMouseDelegate*) = ios inline;

    cocos2d::CCMouseDelegate* m_pDelegate;
}

[[link(win, android)]]
class cocos2d::CCMoveBy : cocos2d::CCActionInterval {
    static cocos2d::CCMoveBy* create(float, cocos2d::CCPoint const&) = imac 0x3a0ff0, m1 0x3292a4, ios 0x21c96c;

    // CCMoveBy(cocos2d::CCMoveBy const&);
    // CCMoveBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a1130, m1 0x3293b4, ios 0x21ca3c;
    virtual void update(float) = imac 0x3a1320, m1 0x329574, ios 0x21cbf0;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a1280, m1 0x3294dc, ios 0x21cb58;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a12d0, m1 0x329530, ios 0x21cbac;

    bool initWithDuration(float, cocos2d::CCPoint const&) = imac 0x3a10f0, m1 0x32937c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCMoveTo : cocos2d::CCMoveBy {
    static cocos2d::CCMoveTo* create(float, cocos2d::CCPoint const&) = imac 0x3a13f0, m1 0x329630, ios 0x21ccac;

    // CCMoveTo(cocos2d::CCMoveTo const&);
    // CCMoveTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a1540, m1 0x329750, ios 0x21cd8c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a16a0, m1 0x32988c, ios 0x21cebc;

    bool initWithDuration(float, cocos2d::CCPoint const&) = imac 0x3a1500, m1 0x329718, ios inline;
}

[[link(win, android)]]
class cocos2d::CCNode : cocos2d::CCObject {
    // CCNode(cocos2d::CCNode const&);
    CCNode() = imac 0x25e650, m1 0x206194, ios 0x2d5a28;
    virtual ~CCNode() = imac 0x25e800, m1 0x206320, ios 0x2d5b84;

    static cocos2d::CCNode* create() = imac 0x25f250, m1 0x206b88, ios 0x2d63bc;
    static void resetGlobalOrderOfArrival() = imac 0x25e640, m1 0x206184, ios 0x2d5a18;

    virtual void update(float) = imac 0x260790, m1 0x208038, ios 0x2d7368;
    virtual bool init() = imac 0x25e990, m1 0x206470, ios 0x2d5cb4;
    virtual void setZOrder(int) = imac 0x25ea20, m1 0x2064c0, ios 0x2d5d04;
    virtual void _setZOrder(int) = imac 0x25ea10, m1 0x2064b8, ios 0x2d5cfc;
    virtual int getZOrder() = imac 0x25ea00, m1 0x2064b0, ios 0x2d5cf4;
    virtual void setVertexZ(float) = imac 0x25ea70, m1 0x206518, ios 0x2d5d5c;
    virtual float getVertexZ() = imac 0x25ea60, m1 0x206510, ios 0x2d5d54;
    virtual void setScaleX(float) = imac 0x25eb90, m1 0x2065c8, ios 0x2d5e0c;
    virtual float getScaleX() = imac 0x25eb80, m1 0x2065c0, ios 0x2d5e04;
    virtual void setScaleY(float) = imac 0x25ebc0, m1 0x2065e4, ios 0x2d5e28;
    virtual float getScaleY() = imac 0x25ebb0, m1 0x2065dc, ios 0x2d5e20;
    virtual void setScale(float) = imac 0x25eb40, m1 0x206598, ios 0x2d5ddc;
    virtual float getScale() = imac 0x25eb30, m1 0x206590, ios 0x2d5dd4;
    virtual void setScale(float, float) = imac 0x25eb60, m1 0x2065ac, ios 0x2d5df0;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x25ebf0, m1 0x206600, ios 0x2d5e44;
    virtual cocos2d::CCPoint const& getPosition() = imac 0x25ebe0, m1 0x2065f8, ios 0x2d5e3c;
    virtual void setPosition(float, float) = imac 0x25ec30, m1 0x20662c, ios 0x2d5e70;
    virtual void getPosition(float*, float*) = imac 0x25ec10, m1 0x206618, ios 0x2d5e5c;
    virtual void setPositionX(float) = m1 0x20667c, imac 0x25ec90, ios 0x2d5ec0;
    virtual float getPositionX() = imac 0x25ec70, m1 0x20666c, ios 0x2d5eb0;
    virtual void setPositionY(float) = m1 0x2066c0, imac 0x25ecd0, ios 0x2d5f04;
    virtual float getPositionY() = imac 0x25ec80, m1 0x206674, ios 0x2d5eb8;
    virtual void offsetPosition(float, float) = m1 0x206708, imac 0x25ed10;
    virtual void applyScale(float) = m1 0x206754, imac 0x25ed50;
    virtual void setSkewX(float) = imac 0x25e9b0, m1 0x206480, ios 0x2d5cc4;
    virtual float getSkewX() = imac 0x25e9a0, m1 0x206478, ios 0x2d5cbc;
    virtual void setSkewY(float) = imac 0x25e9e0, m1 0x20649c, ios 0x2d5ce0;
    virtual float getSkewY() = imac 0x25e9d0, m1 0x206494, ios 0x2d5cd8;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x25ef30, m1 0x206908, ios 0x2d613c;
    virtual cocos2d::CCPoint const& getAnchorPoint() = imac 0x25ef20, m1 0x206900, ios 0x2d6134;
    virtual cocos2d::CCPoint const& getAnchorPointInPoints() = imac 0x25ef10, m1 0x2068f8, ios 0x2d612c;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x25eff0, m1 0x2069bc, ios 0x2d61f0;
    virtual cocos2d::CCSize const& getContentSize() const = imac 0x25efb0, m1 0x20697c, ios 0x2d61b0;
    virtual cocos2d::CCSize getScaledContentSize() = imac 0x25efc0, m1 0x206984, ios 0x2d61b8;
    virtual void setVisible(bool) = imac 0x25ef00, m1 0x2068f0, ios 0x2d6124;
    virtual bool isVisible() = imac 0x25eef0, m1 0x2068e8, ios 0x2d611c;
    virtual void setRotation(float) = imac 0x25ea90, m1 0x206528, ios 0x2d5d6c;
    virtual float getRotation() = imac 0x25ea80, m1 0x206520, ios 0x2d5d64;
    virtual void setRotationX(float) = imac 0x25eae0, m1 0x206560, ios 0x2d5da4;
    virtual float getRotationX() = imac 0x25ead0, m1 0x206558, ios 0x2d5d9c;
    virtual void setRotationY(float) = imac 0x25eb10, m1 0x20657c, ios 0x2d5dc0;
    virtual float getRotationY() = imac 0x25eb00, m1 0x206574, ios 0x2d5db8;
    virtual void setOrderOfArrival(unsigned int) = imac 0x25f110, m1 0x206a88, ios 0x2d62bc;
    virtual unsigned int getOrderOfArrival() = imac 0x25f100, m1 0x206a80, ios 0x2d62b4;
    virtual void setGLServerState(cocos2d::ccGLServerState) = imac 0x25f150, m1 0x206aa8, ios 0x2d62dc;
    virtual cocos2d::ccGLServerState getGLServerState() = imac 0x25f140, m1 0x206aa0, ios 0x2d62d4;
    virtual void ignoreAnchorPointForPosition(bool) = imac 0x25f0b0, m1 0x206a50, ios 0x2d6284;
    virtual bool isIgnoreAnchorPointForPosition() = imac 0x25f0a0, m1 0x206a48, ios 0x2d627c;
    virtual void addChild(cocos2d::CCNode*) = imac 0x25f5c0, m1 0x206ef8, ios 0x2d668c;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x25f5a0, m1 0x206ee8, ios 0x2d667c;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x25f450, m1 0x206d90, ios 0x2d6554;
    virtual cocos2d::CCNode* getChildByTag(int) = imac 0x25f3d0, m1 0x206d0c, ios 0x2d64e0;
    virtual cocos2d::CCArray* getChildren() = imac 0x25edd0, m1 0x2067e0, ios 0x2d6024;
    virtual unsigned int getChildrenCount() const = imac 0x25ee20, m1 0x206834, ios 0x2d6078;
    virtual void setParent(cocos2d::CCNode*) = imac 0x25f090, m1 0x206a40, ios 0x2d6274;
    virtual cocos2d::CCNode* getParent() = imac 0x25f080, m1 0x206a38, ios 0x2d626c;
    virtual void removeFromParent() = imac 0x25f5e0, m1 0x206f0c, ios 0x2d66a0;
    virtual void removeFromParentAndCleanup(bool) = imac 0x25f600, m1 0x206f1c, ios 0x2d66b0;
    virtual void removeMeAndCleanup() = imac 0x25f630, m1 0x206f3c, ios 0x2d66d0;
    virtual void removeChild(cocos2d::CCNode*) = imac 0x25f650, m1 0x206f4c, ios 0x2d66e0;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x25f670, m1 0x206f5c, ios 0x2d66f0;
    virtual void removeChildByTag(int) = imac 0x25f7c0, m1 0x2070d8, ios 0x2d67b0;
    virtual void removeChildByTag(int, bool) = imac 0x25f7e0, m1 0x2070e8, ios 0x2d67c0;
    virtual void removeAllChildren() = imac 0x25f820, m1 0x207138, ios 0x2d6810;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x25f840, m1 0x207148, ios 0x2d6820;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x25f950, m1 0x20727c, ios 0x2d6900;
    virtual void sortAllChildren() = imac 0x25faa0, m1 0x207398, ios 0xb2fe0;
    virtual cocos2d::CCGridBase* getGrid() = imac 0x25eea0, m1 0x2068a4, ios 0x2d60d8;
    virtual void setGrid(cocos2d::CCGridBase*) = imac 0x25eeb0, m1 0x2068ac, ios 0x2d60e0;
    virtual void* getUserData() = imac 0x25f0e0, m1 0x206a70, ios 0x2d62a4;
    virtual void setUserData(void*) = imac 0x25f0f0, m1 0x206a78, ios 0x2d62ac;
    virtual cocos2d::CCObject* getUserObject() = imac 0x25f130, m1 0x206a98, ios 0x2d62cc;
    virtual void setUserObject(cocos2d::CCObject*) = imac 0x25f160, m1 0x206ab0, ios 0x2d62e4;
    virtual cocos2d::CCGLProgram* getShaderProgram() = imac 0x25f120, m1 0x206a90, ios 0x2d62c4;
    virtual void setShaderProgram(cocos2d::CCGLProgram*) = imac 0x25f1a0, m1 0x206aec, ios 0x2d6320;
    virtual cocos2d::CCCamera* getCamera() = imac 0x25ee40, m1 0x206844, ios 0x2d6088;
    virtual bool isRunning() = imac 0x25f070, m1 0x206a30, ios 0x2d6264;
    virtual void registerScriptHandler(int) = imac 0x2603d0, m1 0x207d0c, ios 0x2d70e0;
    virtual void unregisterScriptHandler() = imac 0x260400, m1 0x207d3c, ios 0x2d7110;
    virtual void onEnter() = imac 0x2600b0, m1 0x2079d4, ios 0x2d6dfc;
    virtual void onEnterTransitionDidFinish() = imac 0x2601d0, m1 0x207b00, ios 0x2d6ef4;
    virtual void onExit() = imac 0x2602d0, m1 0x207c14, ios 0x2d7008;
    virtual void onExitTransitionDidStart() = imac 0x260240, m1 0x207b80, ios 0x2d6f74;
    virtual void cleanup() = imac 0x25f2b0, m1 0x206c08, ios 0x2d6430;
    virtual void draw() = imac 0x25fe70, m1 0x2077a8, ios 0x2d6be0;
    virtual void visit() = imac 0x8dd0, m1 0x2077ac, ios 0x2d6be4;
    virtual void setActionManager(cocos2d::CCActionManager*) = imac 0x260440, m1 0x207d7c, ios 0x2d7150;
    virtual cocos2d::CCActionManager* getActionManager() = imac 0x260490, m1 0x207dcc, ios 0x2d71a0;
    virtual void setScheduler(cocos2d::CCScheduler*) = imac 0x260550, m1 0x207e38, ios 0x2d71f8;
    virtual cocos2d::CCScheduler* getScheduler() = imac 0x2605a0, m1 0x207e88, ios 0x2d7248;
    virtual void updateTransform() = imac 0x2613b0, m1 0x208c48, ios 0x2d7d80;
    virtual cocos2d::CCAffineTransform const nodeToParentTransform() = imac 0x260800, m1 0x2080b8, ios 0x1f7bd0;
    virtual cocos2d::CCAffineTransform const nodeToParentTransformFast() = imac 0x260b10, m1 0x20837c, ios 0x2d7688;
    virtual cocos2d::CCAffineTransform const parentToNodeTransform() = imac 0x260f40, m1 0x2087f8, ios 0x2d7ac0;
    virtual cocos2d::CCAffineTransform nodeToWorldTransform() = imac 0x260fc0, m1 0x208870, ios 0x2d7b38;
    virtual cocos2d::CCAffineTransform nodeToWorldTransformFast() = imac 0x261050, m1 0x2088fc, ios 0x2d7bc4;
    virtual cocos2d::CCAffineTransform worldToNodeTransform() = imac 0x2610e0, m1 0x208988, ios 0x2d7c50;
    virtual bool addComponent(cocos2d::CCComponent*) = imac 0x261420, m1 0x208cb0, ios 0x2d7dd8;
    virtual bool removeComponent(char const*) = imac 0x261440, m1 0x208cc0, ios 0x2d7de8;
    virtual bool removeComponent(cocos2d::CCComponent*) = imac 0x261460, m1 0x208cd0, ios 0x2d7df8;
    virtual void removeAllComponents() = imac 0x261480, m1 0x208ce0, ios 0x2d7e08;
    virtual void updateTweenAction(float, char const*) = imac 0x261390, m1 0x208c40, ios 0x2d7d78;
    virtual void updateTweenActionInt(float, int) = imac 0x2613a0, m1 0x208c44, ios 0x2d7d7c;

    cocos2d::CCRect boundingBox() = imac 0x25f1e0, m1 0x206b28, ios 0x2d635c;
    void childrenAlloc() = imac 0x25f3a0, m1 0x206ce4, ios inline;
    cocos2d::CCPoint convertToNodeSpace(cocos2d::CCPoint const&) = imac 0x261120, m1 0x2089c8, ios 0x2d7c90;
    cocos2d::CCPoint convertToNodeSpaceAR(cocos2d::CCPoint const& worldPoint) = imac 0x2611a0, m1 0x208a58, ios inline;
    cocos2d::CCPoint convertTouchToNodeSpace(cocos2d::CCTouch*) = imac 0x2612c0, m1 0x208b74, ios 0x2d7d20;
    cocos2d::CCPoint convertTouchToNodeSpaceAR(cocos2d::CCTouch*) = imac 0x261320, m1 0x208bcc, ios inline;
    cocos2d::CCPoint convertToWindowSpace(cocos2d::CCPoint const&) = imac 0x261260, m1 0x208b1c, ios inline;
    cocos2d::CCPoint convertToWorldSpace(cocos2d::CCPoint const&) = imac 0x261160, m1 0x208a10, ios 0x2d7cd8;
    cocos2d::CCPoint convertToWorldSpaceAR(cocos2d::CCPoint const& point) = imac 0x261200, m1 0x208abc, ios inline;
    char const* description() = imac 0x25f380, m1 0x206cb8, ios inline;
    void detachChild(cocos2d::CCNode*, bool) = imac 0x25f720, m1 0x207028, ios 0x2d6700;
    cocos2d::CCAction* getActionByTag(int) = imac 0x260510, m1 0x207e20, ios 0x2d71ec;
    cocos2d::CCComponent* getComponent(char const*) const = imac 0x261400, m1 0x208ca0, ios inline;
    void insertChild(cocos2d::CCNode*, int) = imac 0x25f550, m1 0x206e90, ios 0x2d6624;
    unsigned int numberOfRunningActions() = imac 0x260530, m1 0x207e2c, ios inline;
    void pauseSchedulerAndActions() = imac 0x260390, m1 0x207ccc, ios 0x2d70a4;
    void qsortAllChildrenWithIndex() = imac 0x25fdc0, m1 0x2076e8, ios 0x2d6b20;
    void resumeSchedulerAndActions() = imac 0x260190, m1 0x207ac0, ios 0x2d6eb8;
    cocos2d::CCAction* runAction(cocos2d::CCAction*) = imac 0x2604a0, m1 0x207dd4, ios 0x2d71a8;
    void schedule(cocos2d::SEL_SCHEDULE) = imac 0x2606b0, m1 0x207f88, ios 0x2d72d4;
    void schedule(cocos2d::SEL_SCHEDULE, float) = imac 0x260710, m1 0x207fc8, ios 0x2d72f8;
    void schedule(cocos2d::SEL_SCHEDULE selector, float interval, unsigned int repeat, float delay) = imac 0x2606e0, m1 0x207fac, ios inline;
    void scheduleOnce(cocos2d::SEL_SCHEDULE selector, float delay) = imac 0x260740, m1 0x207fe8, ios inline;
    void scheduleUpdate() = imac 0x2605b0, m1 0x207e90, ios 0x2d7250;
    void scheduleUpdateWithPriority(int) = imac 0x2605d0, m1 0x207eac, ios 0x2d726c;
    void scheduleUpdateWithPriorityLua(int, int) = imac 0x2605f0, m1 0x207ec8, ios inline;
    // int getScriptHandler();
    // cocos2d::CCAffineTransform getTransformTemp();
    // bool getUseChildIndex();
    void setAdditionalTransform(cocos2d::CCAffineTransform const& additionalTransform) = imac 0x260f10, m1 0x2087d8, ios inline;
    void setUseChildIndex(bool) = imac 0x25f990, m1 0x2072d4, ios 0x2d6958;
    void sortAllChildrenNoIndex() = imac 0x25fcc0, m1 0x2075cc, ios 0x2d6a10;
    void sortAllChildrenWithIndex() = imac 0x25fc30, m1 0x207538, ios inline;
    void stopAction(cocos2d::CCAction* action) = imac 0x2604d0, m1 0x207e0c, ios inline;
    void stopActionByTag(int) = imac 0x2604f0, m1 0x207e14, ios 0x2d71e0;
    void stopAllActions() = imac 0x25f340, m1 0x206ca0, ios 0x2d64c8;
    void transform() = imac 0x25ffb0, m1 0x2078e8, ios 0x2d6d1c;
    void transformAncestors() = imac 0x260070, m1 0x20799c, ios 0x2d6dc4;
    void unschedule(cocos2d::SEL_SCHEDULE) = imac 0x260770, m1 0x20800c, ios 0x2d733c;
    void unscheduleAllSelectors() = imac 0x25f360, m1 0x206cac, ios 0x2d64d4;
    void unscheduleUpdate() = imac 0x260660, m1 0x207f3c, ios 0x2d7288;
    void updateChildIndexes() = imac 0x25ee00, m1 0x206818, ios 0x2d605c;

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
    CCNodeRGBA() = imac 0x2614a0, m1 0x208cf0, ios 0x2d7e18;
    virtual ~CCNodeRGBA() = imac 0x261540, m1 0x208d50, ios 0x2d7e48;

    static cocos2d::CCNodeRGBA* create() = imac 0x2615a0, m1 0x208d80, ios inline;

    virtual bool init() = imac 0x261580, m1 0x208d6c, ios 0x2d7e64;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x261980, m1 0x209148, ios 0x2d803c;
    virtual cocos2d::ccColor3B const& getColor() = m1 0x209128, imac 0x261940, ios 0x2d801c;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = m1 0x209138, imac 0x261960, ios 0x2d802c;
    virtual unsigned char getDisplayedOpacity() = imac 0x261630, m1 0x208df4, ios 0x2d7e88;
    virtual unsigned char getOpacity() = imac 0x261610, m1 0x208de4, ios 0x2d7e78;
    virtual void setOpacity(unsigned char) = imac 0x261650, m1 0x208e04, ios 0x2d7e98;
    virtual bool isCascadeColorEnabled() = imac 0x261d10, m1 0x2093ec, ios 0x2d8214;
    virtual void setCascadeColorEnabled(bool) = imac 0x261d30, m1 0x2093fc, ios 0x2d8224;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = m1 0x2092dc, imac 0x261af0, ios 0x2d8110;
    virtual bool isCascadeOpacityEnabled() = imac 0x261900, m1 0x209108, ios 0x2d7ffc;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x261920, m1 0x209118, ios 0x2d800c;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x261780, m1 0x208f70, ios 0x2d7f34;

    uint8_t _displayedOpacity;
    uint8_t _realOpacity;
    cocos2d::ccColor3B _displayedColor;
    cocos2d::ccColor3B _realColor;
    bool _cascadeColorEnabled;
    bool _cascadeOpacityEnabled;
}

[[link(win, android)]]
class cocos2d::CCNotificationCenter : cocos2d::CCObject {
    CCNotificationCenter() = imac 0x272970, m1 0x2191f0;
    virtual ~CCNotificationCenter() = imac 0x272a10, m1 0x2192a0;

    static void purgeNotificationCenter() = imac 0x272b60, m1 0x2193e4;
    static cocos2d::CCNotificationCenter* sharedNotificationCenter() = imac 0x272ad0, m1 0x21934c;

    void addObserver(cocos2d::CCObject*, cocos2d::SEL_CallFuncO, char const*, cocos2d::CCObject*) = imac 0x272c20, m1 0x2194d0;
    int getObserverHandlerByName(char const*) = imac 0x2731e0, m1 0x219ac0;
    bool observerExisted(cocos2d::CCObject*, char const*) = imac 0x272b90, m1 0x219410;
    void postNotification(char const*) = imac 0x2731d0, m1 0x219ab8;
    void postNotification(char const*, cocos2d::CCObject*) = imac 0x273030, m1 0x219930;
    void registerScriptObserver(cocos2d::CCObject*, int, char const*) = imac 0x272ea0, m1 0x21975c;
    int removeAllObservers(cocos2d::CCObject*) = imac 0x272df0, m1 0x2196b4;
    void removeObserver(cocos2d::CCObject*, char const*) = imac 0x272d30, m1 0x2195f4;
    void unregisterScriptObserver(cocos2d::CCObject*, char const*) = imac 0x272f90, m1 0x21987c;
}

[[link(win, android)]]
class cocos2d::CCNotificationObserver : cocos2d::CCObject {
    CCNotificationObserver(cocos2d::CCObject*, cocos2d::SEL_CallFuncO, char const*, cocos2d::CCObject*) = win inline, imac 0x273270, m1 0x219b60;
    virtual ~CCNotificationObserver() = imac 0x2733f0, m1 0x219ce0;

    virtual cocos2d::CCObject* getTarget() = imac 0x2734b0, m1 0x219da0;
    virtual cocos2d::SEL_CallFuncO getSelector() = imac 0x2734c0, m1 0x219da8;
    virtual char* getName() = imac 0x2734d0, m1 0x219db4;
    virtual cocos2d::CCObject* getObject() = imac 0x2734e0, m1 0x219dbc;
    virtual int getHandler() = imac 0x2734f0, m1 0x219dc4;
    virtual void setHandler(int) = imac 0x273500, m1 0x219dcc;

    void performSelector(cocos2d::CCObject*) = imac 0x273180, m1 0x219a78;
}

[[link(win, android)]]
class cocos2d::CCObject : cocos2d::CCCopying {
    // CCObject(cocos2d::CCObject const&);
    CCObject() = imac 0x47f9b0, m1 0x3e97d8, ios 0x8e3b8;
    virtual ~CCObject() = imac 0x47fa50, m1 0x3e9868, ios 0x8e400;

    static cocos2d::CCObject* createWithCoder(DS_Dictionary*) = imac 0x47fca0, m1 0x3e9ae4, ios 0x8e550;

    virtual int getTag() const = imac 0x47fc70, m1 0x3e9ad0, ios 0x8e53c;
    virtual bool isEqual(cocos2d::CCObject const*) = imac 0x47fc40, m1 0x3e9aac, ios 0x8e518;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x47fc50, m1 0x3e9ab8, ios 0x8e524;
    virtual void encodeWithCoder(DS_Dictionary*) = imac 0x47fc90, m1 0x3e9ae0, ios 0x8e54c;
    virtual bool canEncode() = imac 0x47fcb0, m1 0x3e9aec, ios 0x8e558;
    virtual void setTag(int) = imac 0x47fc80, m1 0x3e9ad8, ios 0x8e544;

    // cocos2d::CCObjectType getObjType() const;
    // void setObjType(cocos2d::CCObjectType);
    cocos2d::CCObject* autorelease() = imac 0x47fbf0, m1 0x3e9a68, ios 0x8e4ec;
    // cocos2d::CCObject* copy();
    bool isSingleReference() const = imac 0x47fc20, m1 0x3e9a94, ios inline;
    void release() = imac 0x47fbc0, m1 0x3e9a34, ios 0x8e4b8;
    void retain() = imac 0x47fbe0, m1 0x3e9a58, ios 0x8e4dc;

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
    static cocos2d::CCOrbitCamera* create(float, float, float, float, float, float, float) = imac 0x350730, m1 0x2e035c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x350920, m1 0x2e04d4;
    virtual void update(float) = imac 0x350d80, m1 0x2e0878;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x350a70, m1 0x2e05f4;

    bool initWithDuration(float, float, float, float, float, float, float) = imac 0x350870, m1 0x2e0458;
    // CCOrbitCamera(cocos2d::CCOrbitCamera const&);
    // CCOrbitCamera();
    void sphericalRadius(float*, float*, float*) = imac 0x350c40, m1 0x2e0774;
}

[[link(win, android)]]
class cocos2d::CCPageTurn3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCPageTurn3D* create(float, cocos2d::CCSize const&) = imac 0x2fc4d0, m1 0x2909a8;

    virtual void update(float) = imac 0x2fc5b0, m1 0x290a88;
}

[[link(win, android)]]
class cocos2d::CCParallaxNode : cocos2d::CCNode {
    CCParallaxNode() = imac 0x4a73c0, m1 0x40d7f0;
    virtual ~CCParallaxNode() = imac 0x4a74c0, m1 0x40d918;

    static cocos2d::CCParallaxNode* create() = imac 0x4a75b0, m1 0x40d9e8;

    virtual void addChild(cocos2d::CCNode*, unsigned int, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x4a7680, m1 0x40da98;
    virtual void addChild(cocos2d::CCNode*, unsigned int, int) = imac 0x4a7670, m1 0x40da94;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x4a7840, m1 0x40dc48;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x4a78c0, m1 0x40dcd8;
    virtual void visit() = imac 0x4a7980, m1 0x40dda0;

    cocos2d::CCPoint absolutePosition() = imac 0x4a78f0, m1 0x40dd08;
}

[[link(win, android)]]
class cocos2d::CCParticleBatchNode : cocos2d::CCNode, cocos2d::CCTextureProtocol {
    CCParticleBatchNode() = imac 0x3b1770, m1 0x3385a4;
    virtual ~CCParticleBatchNode() = imac 0x3b17f0, m1 0x3385f4;

    static cocos2d::CCParticleBatchNode* create(char const*, unsigned int) = imac 0x3b1a20, m1 0x33880c;
    static cocos2d::CCParticleBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x3b18e0, m1 0x3386c4;

    virtual void addChild(cocos2d::CCNode*) = imac 0x3b1b70, m1 0x33896c;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x3b1b80, m1 0x338970;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x3b1b90, m1 0x338974;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x3b23e0, m1 0x3392c0;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x3b1fd0, m1 0x338e34;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x3b2510, m1 0x339408;
    virtual void draw() = imac 0x3b25a0, m1 0x339494;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x3b2780, m1 0x339670;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x3b26e0, m1 0x3395b0;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x3b27b0, m1 0x339690;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x3b27d0, m1 0x3396a0;
    virtual void visit() = imac 0x3b1b00, m1 0x3388e8;

    unsigned int addChildHelper(cocos2d::CCParticleSystem*, int, int) = imac 0x3b1c90, m1 0x338aa0;
    void disableParticle(unsigned int) = imac 0x3b2650, m1 0x339528;
    void getCurrentIndex(unsigned int*, unsigned int*, cocos2d::CCNode*, int) = imac 0x3b2270, m1 0x339140;
    void increaseAtlasCapacityTo(unsigned int) = imac 0x3b2630, m1 0x339520;
    bool initWithFile(char const*, unsigned int) = imac 0x3b1ac0, m1 0x338898;
    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x3b1960, m1 0x338740;
    void insertChild(cocos2d::CCParticleSystem*, unsigned int) = imac 0x3b1dd0, m1 0x338bf4;
    void removeChildAtIndex(unsigned int, bool) = imac 0x3b24e0, m1 0x3393cc;
    unsigned int searchNewPositionInChildrenForZ(int) = imac 0x3b1f60, m1 0x338dac;
    void updateAllAtlasIndexes() = imac 0x3b2380, m1 0x339254;
    void updateBlendFunc() = imac 0x3b26a0, m1 0x339570;
}

[[link(win, android)]]
class cocos2d::CCParticleExplosion : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleExplosion* create() = ios inline;
    static cocos2d::CCParticleExplosion* createWithTotalParticles(unsigned int) = ios inline;

    // CCParticleExplosion(cocos2d::CCParticleExplosion const&);
    // CCParticleExplosion();
    // virtual bool init() = m1 0x3ec694, imac 0x486a30;
    virtual bool initWithTotalParticles(unsigned int) = imac 0x47a8e0, ios inline;
}

[[link(win, android)]]
class cocos2d::CCParticleFire : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFire* create() = ios inline;
    static cocos2d::CCParticleFire* createWithTotalParticles(unsigned int) = imac 0x479460, m1 0x3e4db8, ios inline;

    // CCParticleFire(cocos2d::CCParticleFire const&);
    // CCParticleFire();
    // virtual bool init() = m1 0x3ec634, imac 0x486970;
    virtual bool initWithTotalParticles(unsigned int) = imac 0x4794e0, ios inline;
}

[[link(win, android)]]
class cocos2d::CCParticleFireworks : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFireworks* create() = m1 0x3e3be8;
    static cocos2d::CCParticleFireworks* createWithTotalParticles(unsigned int) = imac 0x4797b0;

    virtual bool initWithTotalParticles(unsigned int) = imac 0x479830;
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
    static cocos2d::CCParticleMeteor* create() = m1 0x3e4724;
    static cocos2d::CCParticleMeteor* createWithTotalParticles(unsigned int) = imac 0x47a2a0;

    virtual bool initWithTotalParticles(unsigned int) = imac 0x47a320;
}

[[link(win, android)]]
class cocos2d::CCParticleRain : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleRain* create() = m1 0x3e5618, ios inline;
    static cocos2d::CCParticleRain* createWithTotalParticles(unsigned int) = imac 0x47b0f0, ios inline;

    // CCParticleRain(cocos2d::CCParticleRain const&);
    // CCParticleRain();
    // virtual bool init() = m1 0x3ec6a4, imac 0x486a50;
    virtual bool initWithTotalParticles(unsigned int) = imac 0x47b170, ios inline;
}

[[link(win, android)]]
class cocos2d::CCParticleSmoke : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSmoke* create();
    static cocos2d::CCParticleSmoke* createWithTotalParticles(unsigned int) = imac 0x47ab30;

    virtual bool initWithTotalParticles(unsigned int) = imac 0x47abb0;
}

[[link(win, android)]]
class cocos2d::CCParticleSnow : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSnow* create() = ios inline;
    static cocos2d::CCParticleSnow* createWithTotalParticles(unsigned int numberOfParticles) = imac 0x47ae00, ios inline;

    // CCParticleSnow(cocos2d::CCParticleSnow const&);
    // CCParticleSnow();
    // virtual bool init() = m1 0x3ec694, imac 0x486a30;
    virtual bool initWithTotalParticles(unsigned int numberOfParticles) = imac 0x47ae80, m1 0x10208, ios inline;
}

[[link(win, android)]]
class cocos2d::CCParticleSpiral : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSpiral* create() = m1 0x3e4a2c;
    static cocos2d::CCParticleSpiral* createWithTotalParticles(unsigned int) = imac 0x47a590;

    virtual bool initWithTotalParticles(unsigned int) = imac 0x47a610;
}

[[link(win, android)]]
class cocos2d::CCParticleSun : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSun* create() = m1 0x3e3e48;
    static cocos2d::CCParticleSun* createWithTotalParticles(unsigned int) = imac 0x479a20, m1 0x3e4db8;

    virtual bool initWithTotalParticles(unsigned int) = imac 0x479aa0, m1 0x3e4e4c;
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
    CCParticleSystem() = imac 0x8ac320, m1 0x79e6f8, ios 0x2247ac;
    virtual ~CCParticleSystem() = imac 0x8ae480, m1 0x7a05ac, ios 0x225d20;

    static cocos2d::CCParticleSystem* create(char const*) = imac 0x8ac4f0, m1 0x1a06d8, ios inline;
    static cocos2d::CCParticleSystem* createWithTotalParticles(unsigned int) = imac 0x8ac7c0, m1 0x79eb24, ios inline;

    virtual void update(float) = m1 0x7a162c, ios 0x226b6c;
    virtual bool init() = imac 0x8ac830, m1 0x79ebb0, ios 0x224a68;
    virtual void setScaleX(float) = imac 0x8b0fd0, m1 0x7a274c, ios 0x227b5c;
    virtual void setScaleY(float) = imac 0x8b0ff0, m1 0x7a2758, ios 0x227b68;
    virtual void setScale(float) = imac 0x8b0f90, m1 0x7a2734, ios 0x227b44;
    virtual void setVisible(bool) = imac 0x66e30, m1 0x7a2368, ios 0x227744;
    virtual void setRotation(float) = imac 0x8b0fb0, m1 0x7a2740, ios 0x227b50;
    virtual cocos2d::CCParticleBatchNode* getBatchNode() = imac 0x8b0eb0, m1 0x7a269c, ios 0x227a78;
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = imac 0x8b0ec0, m1 0x7a26a4, ios 0x227a80;
    virtual unsigned int getParticleCount() = imac 0x8b0ab0, m1 0x7a2474, ios 0x227850;
    virtual float getDuration() = imac 0x8b0ac0, m1 0x7a247c, ios 0x227858;
    virtual void setDuration(float) = imac 0x8b0ad0, m1 0x7a2484, ios 0x227860;
    virtual cocos2d::CCPoint const& getSourcePosition() = imac 0x8b0ae0, m1 0x7a248c, ios 0x227868;
    virtual void setSourcePosition(cocos2d::CCPoint const&) = imac 0x8b0af0, m1 0x7a2494, ios 0x227870;
    virtual cocos2d::CCPoint const& getPosVar() = imac 0x8b0b10, m1 0x7a249c, ios 0x227878;
    virtual void setPosVar(cocos2d::CCPoint const&) = imac 0x8b0b20, m1 0x7a24a4, ios 0x227880;
    virtual float getLife() = imac 0x8b0b40, m1 0x7a24ac, ios 0x227888;
    virtual void setLife(float) = imac 0x8b0b50, m1 0x7a24b4, ios 0x227890;
    virtual float getLifeVar() = imac 0x8b0b60, m1 0x7a24bc, ios 0x227898;
    virtual void setLifeVar(float) = imac 0x8b0b70, m1 0x7a24c4, ios 0x2278a0;
    virtual float getAngle() = imac 0x8b0b80, m1 0x7a24cc, ios 0x2278a8;
    virtual void setAngle(float) = imac 0x8b0b90, m1 0x7a24d4, ios 0x2278b0;
    virtual float getAngleVar() = imac 0x8b0ba0, m1 0x7a24dc, ios 0x2278b8;
    virtual void setAngleVar(float) = imac 0x8b0bb0, m1 0x7a24e4, ios 0x2278c0;
    virtual void updateEmissionRate() = imac 0x8ae420, m1 0x7a057c, ios 0x225cf0;
    virtual cocos2d::CCPoint const& getGravity() = imac 0x8b0990, m1 0x7a23e4, ios 0x2277c0;
    virtual void setGravity(cocos2d::CCPoint const&) = imac 0x8b0970, m1 0x7a23dc, ios 0x2277b8;
    virtual float getSpeed() = imac 0x8b09b0, m1 0x7a23f4, ios 0x2277d0;
    virtual void setSpeed(float) = imac 0x8b09a0, m1 0x7a23ec, ios 0x2277c8;
    virtual float getSpeedVar() = imac 0x8b09d0, m1 0x7a2404, ios 0x2277e0;
    virtual void setSpeedVar(float) = imac 0x8b09c0, m1 0x7a23fc, ios 0x2277d8;
    virtual float getTangentialAccel() = imac 0x8b08e0, m1 0x7a2394, ios 0x227770;
    virtual void setTangentialAccel(float) = imac 0x8b08d0, m1 0x7a238c, ios 0x227768;
    virtual float getTangentialAccelVar() = imac 0x8b0900, m1 0x7a23a4, ios 0x227780;
    virtual void setTangentialAccelVar(float) = imac 0x8b08f0, m1 0x7a239c, ios 0x227778;
    virtual float getRadialAccel() = imac 0x8b0920, m1 0x7a23b4, ios 0x227790;
    virtual void setRadialAccel(float) = imac 0x8b0910, m1 0x7a23ac, ios 0x227788;
    virtual float getRadialAccelVar() = imac 0x8b0940, m1 0x7a23c4, ios 0x2277a0;
    virtual void setRadialAccelVar(float) = imac 0x8b0930, m1 0x7a23bc, ios 0x227798;
    virtual bool getRotationIsDir() = imac 0x8b0960, m1 0x7a23d4, ios 0x2277b0;
    virtual void setRotationIsDir(bool) = imac 0x8b0950, m1 0x7a23cc, ios 0x2277a8;
    virtual float getStartRadius() = imac 0x8b09f0, m1 0x7a2414, ios 0x2277f0;
    virtual void setStartRadius(float) = imac 0x8b09e0, m1 0x7a240c, ios 0x2277e8;
    virtual float getStartRadiusVar() = imac 0x8b0a10, m1 0x7a2424, ios 0x227800;
    virtual void setStartRadiusVar(float) = imac 0x8b0a00, m1 0x7a241c, ios 0x2277f8;
    virtual float getEndRadius() = imac 0x8b0a30, m1 0x7a2434, ios 0x227810;
    virtual void setEndRadius(float) = imac 0x8b0a20, m1 0x7a242c, ios 0x227808;
    virtual float getEndRadiusVar() = imac 0x8b0a50, m1 0x7a2444, ios 0x227820;
    virtual void setEndRadiusVar(float) = imac 0x8b0a40, m1 0x7a243c, ios 0x227818;
    virtual float getRotatePerSecond() = imac 0x8b0a70, m1 0x7a2454, ios 0x227830;
    virtual void setRotatePerSecond(float) = imac 0x8b0a60, m1 0x7a244c, ios 0x227828;
    virtual float getRotatePerSecondVar() = imac 0x8b0a90, m1 0x7a2464, ios 0x227840;
    virtual void setRotatePerSecondVar(float) = imac 0x8b0a80, m1 0x7a245c, ios 0x227838;
    virtual bool isActive() = imac 0x8b0aa0, ios 0x227848;
    virtual bool isBlendAdditive() = imac 0x8b0880, ios 0x227720;
    virtual void setBlendAdditive(bool) = imac 0x8b0820, m1 0x7a22cc, ios 0x2276cc;
    virtual float getStartSize() = imac 0x8b0bc0, m1 0x7a24ec, ios 0x2278c8;
    virtual void setStartSize(float) = imac 0x8b0bd0, m1 0x7a24f4, ios 0x2278d0;
    virtual float getStartSizeVar() = imac 0x8b0be0, m1 0x7a24fc, ios 0x2278d8;
    virtual void setStartSizeVar(float) = imac 0x8b0bf0, m1 0x7a2504, ios 0x2278e0;
    virtual float getEndSize() = imac 0x8b0c00, m1 0x7a250c, ios 0x2278e8;
    virtual void setEndSize(float) = imac 0x8b0c10, m1 0x7a2514, ios 0x2278f0;
    virtual float getEndSizeVar() = imac 0x8b0c20, m1 0x7a247c, ios 0x227858;
    virtual void setEndSizeVar(float) = imac 0x8b0c30;
    virtual cocos2d::ccColor4F const& getStartColor() = imac 0x8b0c40;
    virtual void setStartColor(cocos2d::ccColor4F const&) = imac 0x8b0c50, m1 0x5de414;
    virtual cocos2d::ccColor4F const& getStartColorVar() = imac 0x8b0c60;
    virtual void setStartColorVar(cocos2d::ccColor4F const&) = imac 0x8b0c70;
    virtual cocos2d::ccColor4F const& getEndColor() = imac 0x8b0c80;
    virtual void setEndColor(cocos2d::ccColor4F const&) = imac 0x8b0c90;
    virtual cocos2d::ccColor4F const& getEndColorVar() = imac 0x8b0ca0, m1 0x5de40c;
    virtual void setEndColorVar(cocos2d::ccColor4F const&) = imac 0x8b0cb0, m1 0x5de414;
    virtual float getStartSpin() = imac 0x8b0cc0, m1 0x7a257c, ios 0x227958;
    virtual void setStartSpin(float) = imac 0x8b0cd0, m1 0x7a2584, ios 0x227960;
    virtual float getStartSpinVar() = imac 0x8b0ce0, m1 0x7a258c, ios 0x227968;
    virtual void setStartSpinVar(float) = imac 0x8b0cf0, m1 0x7a2594, ios 0x227970;
    virtual float getEndSpin() = imac 0x8b0d00, m1 0x7a259c, ios 0x227978;
    virtual void setEndSpin(float) = imac 0x8b0d10, m1 0x7a25a4, ios 0x227980;
    virtual float getEndSpinVar() = imac 0x8b0d20, m1 0x7a25ac, ios 0x227988;
    virtual void setEndSpinVar(float) = imac 0x8b0d30, m1 0x7a25b4, ios 0x227990;
    virtual float getEmissionRate() = imac 0x8b0d40, m1 0x7a25bc, ios 0x227998;
    virtual void setEmissionRate(float) = imac 0x8b0d50, m1 0x7a25c4, ios 0x2279a0;
    virtual unsigned int getTotalParticles() = imac 0x8b0d60, m1 0x7a25cc, ios 0x2279a8;
    virtual void setTotalParticles(unsigned int) = imac 0x8b0d70, m1 0x7a25d4, ios 0x2279b0;
    virtual bool getOpacityModifyRGB() = imac 0x8b0e30, m1 0x7a265c, ios 0x227a38;
    virtual void setOpacityModifyRGB(bool) = imac 0x8b0e40, m1 0x7a2664, ios 0x227a40;
    virtual cocos2d::tCCPositionType getPositionType() = imac 0x8b0e50, m1 0x7a266c, ios 0x227a48;
    virtual void setPositionType(cocos2d::tCCPositionType) = imac 0x8b0e60, m1 0x7a2674, ios 0x227a50;
    virtual bool isAutoRemoveOnFinish() = imac 0x8b0e70, m1 0x7a267c, ios 0x227a58;
    virtual void setAutoRemoveOnFinish(bool) = imac 0x8b0e80, m1 0x7a2684, ios 0x227a60;
    virtual int getEmitterMode() = imac 0x8b0e90, m1 0x7a268c, ios 0x227a68;
    virtual void setEmitterMode(int) = imac 0x8b0ea0, m1 0x7a2694, ios 0x227a70;
    virtual bool initWithTotalParticles(unsigned int, bool) = imac 0x8ae2b0, m1 0x7a044c, ios 0x225b88;
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&);
    virtual void postStep() = imac 0x8b06b0, m1 0x814ac, ios 0x2275e8;
    virtual void updateWithNoTime() = imac 0x8b0660, ios 0x2275c0;
    virtual void updateBlendFunc() = imac 0x8b0790, m1 0x7a224c, ios 0x227654;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x8b0da0, m1 0x7a25ec, ios 0x2279c8;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x8b0d80, m1 0x7a25dc, ios 0x2279b8;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x8b0800, m1 0x7a22bc, ios 0x1114b0;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x8b06c0, m1 0x7a217c, ios 0x2275ec;

    bool addParticle() = imac 0x8ae610, m1 0x7a0710, ios 0x225d9c;
    void calculateWorldSpace() = imac 0x8af690, m1 0x7a1468, ios 0x2269d0;
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
    int getParticleDrawCost() = m1 0x1eeeb8;
    // float getRespawn() const;
    // float getRespawnVar() const;
    // bool getStartRGBVarSync() const;
    // bool getStartRadiusEqualToEnd() const;
    // bool getStartSizeEqualToEnd() const;
    // bool getStartSpinEqualToEnd() const;
    float getTimeElapsed() = imac 0x8ae470, m1 0x7a05a4, ios 0x225d18;
    void initParticle(cocos2d::sCCParticle*) = imac 0x8ae680, m1 0x7a077c, ios 0x225df4;
    bool initWithDictionary(cocos2d::CCDictionary*, bool) = imac 0x8ae200, m1 0x7a03b8, ios inline;
    bool initWithDictionary(cocos2d::CCDictionary*, char const*, bool) = imac 0x8ac850, m1 0x79ebc4, ios 0x224a7c;
    bool initWithFile(char const*, bool) = imac 0x8ac550, m1 0xe5c04, ios 0x95cec;
    bool isFull() = imac 0x55d170, m1 0x7a0768, ios inline;
    void loadDefaults() = imac 0x8b1010, ios inline;
    void loadScaledDefaults(float) = imac 0x60d050;
    void resetSystem() = imac 0x8af720, m1 0x7a14d8, ios 0x226a40;
    void resumeSystem() = imac 0x8af710, m1 0x7a14cc, ios 0x226a34;
    void saveDefaults() = imac 0x8ae220, m1 0x7a03c8;
    void stopSystem() = imac 0x8af6e0, m1 0x7a14b8, ios 0x226a20;
    // void toggleUniformColorMode(bool);
    void updateVisible() = imac 0xd29b0, m1 0x7a1604, ios inline;

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
    CCParticleSystemQuad() = imac 0x6d8450, m1 0x5ee62c, ios 0x2ee404;
    virtual ~CCParticleSystemQuad() = imac 0x6d8550, m1 0x5ee714, ios 0x2ee478;

    static cocos2d::CCParticleSystemQuad* create() = imac 0x6d99e0, m1 0x5ef540, ios inline;
    static cocos2d::CCParticleSystemQuad* create(char const*, bool) = imac 0x6d8630, m1 0x5ee7ac, ios 0x2ee510;
    static cocos2d::CCParticleSystemQuad* createWithTotalParticles(unsigned int, bool) = imac 0x6d8710, m1 0x5ee894, ios 0x2ee594;

    virtual void draw() = imac 0x6d8ff0, ios 0x2eeb94;
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = imac 0x6d95c0, m1 0x5ef3c4, ios 0x2eee40;
    virtual void setTotalParticles(unsigned int) = imac 0x6d90c0, m1 0x5ef1b4, ios 0x2eec60;
    virtual bool initWithTotalParticles(unsigned int, bool) = imac 0x6d7ba0, m1 0x5ee2c4, ios 0x2ee118;
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&) = imac 0x6d8c80, m1 0x295f90, ios 0x2ee89c;
    virtual void postStep() = imac 0x5b3950, m1 0x5ef098, ios 0x2eeb48;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x6d8ad0, m1 0x5eebf8, ios 0x48860;

    bool allocMemory() = imac 0x6d7f00, m1 0x5ee3a8, ios 0x2ee190;
    void initIndices() = imac 0x6d7ff0, m1 0x5ee488, ios 0x2ee260;
    void initTexCoordsWithRect(cocos2d::CCRect const&) = imac 0x6d8800, m1 0x5ee984, ios 0x2ee620;
    void listenBackToForeground(cocos2d::CCObject*) = imac 0x6d95b0, m1 0x5ef3c0, ios inline;
    // unsigned char getOpacity();
    void setDisplayFrame(cocos2d::CCSpriteFrame*) = imac 0x6d8bf0, m1 0x5eed44, ios 0x2ee84c;
    // void setOpacity(unsigned char);
    void setTextureWithRect(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = imac 0x6d8a70, ios 0x2ee770;
    [[missing(mac, ios)]]
    void setupVBO();
    [[missing(win, android)]]
    void setupVBOandVAO() = imac 0x6d82e0, m1 0x5ee4f8, ios 0x2ee2d0;
    void updateTexCoords() = imac 0x6d8a50, m1 0x5eeb70, ios inline;

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
    static cocos2d::CCPlace* create(cocos2d::CCPoint const&) = imac 0x88e200, m1 0x782474;

    virtual void update(float) = imac 0x88e3b0, m1 0x782610;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x88e2c0, m1 0x782518;

    bool initWithPosition(cocos2d::CCPoint const&) = imac 0x88e2a0, m1 0x7824fc;
}

[[link(win, android)]]
class cocos2d::CCPointArray : cocos2d::CCObject {
    CCPointArray() = imac 0x2bd890, m1 0x25da8c;
    virtual ~CCPointArray() = imac 0x2bd700, m1 0x25d8e4;

    static cocos2d::CCPointArray* create(unsigned int) = imac 0x2bd3b0, m1 0x25d5e8;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x2bd480, m1 0x25d6ac;

    void addControlPoint(cocos2d::CCPoint) = imac 0x2bd8d0, m1 0x25dab8;
    unsigned int count() = imac 0x2bddc0, m1 0x25df40;
    cocos2d::CCPoint getControlPointAtIndex(unsigned int) = imac 0x2bdce0, m1 0x25de64;
    std::vector<cocos2d::CCPoint*> const* getControlPoints() = imac 0x2bd8c0, m1 0x25dab0;
    bool initWithCapacity(unsigned int) = imac 0x2bd450, m1 0x25d678;
    void insertControlPoint(cocos2d::CCPoint&, unsigned int) = imac 0x2bda10, m1 0x25dbc0;
    void removeControlPointAtIndex(unsigned int) = imac 0x2bdd60, m1 0x25ded8;
    void replaceControlPoint(cocos2d::CCPoint&, unsigned int) = imac 0x2bdd30, m1 0x25dea4;
    cocos2d::CCPointArray* reverse() = imac 0x2bdde0, m1 0x25df54;
    void reverseInline() = imac 0x2be050, m1 0x25e164;
    void setControlPoints(std::vector<cocos2d::CCPoint*>*) = imac 0x2bd680, m1 0x25d860;
}

[[link(win, android)]]
class cocos2d::CCPoolManager {
    CCPoolManager() = imac 0x3e3220, m1 0x3614d0, ios 0x24334c;
    ~CCPoolManager() = imac 0x3e3270, m1 0x361524, ios 0x2433a0;

    static void purgePoolManager() = imac 0x3e31d0, m1 0x36149c, ios 0x24331c;
    static cocos2d::CCPoolManager* sharedPoolManager() = imac 0x3e30f0, m1 0x3613a4, ios 0x2432cc;

    void addObject(cocos2d::CCObject*) = imac 0x3e35f0, m1 0x36189c, ios 0x243564;
    void finalize() = imac 0x3e3370, m1 0x36161c, ios 0x2433f4;
    cocos2d::CCAutoreleasePool* getCurReleasePool() = imac 0x3e3630, m1 0x3618e8, ios inline;
    void pop() = imac 0x3e34f0, m1 0x361794, ios 0x2434a8;
    void push() = imac 0x3e3440, m1 0x3616d8, ios 0x243454;
    void removeObject(cocos2d::CCObject*) = imac 0x3e35a0, m1 0x361848, ios 0x243510;
}

[[link(win, android)]]
class cocos2d::CCPrettyPrinter : cocos2d::CCDataVisitor {
    CCPrettyPrinter(int) = win inline, imac 0x4addf0, m1 0x4132b0, ios 0x2e94f4;

    virtual void clear() = imac 0x4adfa0, m1 0x4134a0, ios 0x2e95e8;
    virtual std::string getResult() = imac 0x4adfd0, m1 0x4134c4, ios 0x2e960c;
    virtual void visitObject(cocos2d::CCObject const*) = imac 0x4ae010, m1 0x4134ec, ios 0x2e9634;
    virtual void visit(cocos2d::CCBool const*) = imac 0x4ae090, m1 0x41356c, ios 0x2e96b4;
    virtual void visit(cocos2d::CCInteger const*) = imac 0x4ae120, m1 0x4135fc, ios 0x2e9744;
    virtual void visit(cocos2d::CCFloat const*) = imac 0x4ae1a0, m1 0x413680, ios 0x2e97c8;
    virtual void visit(cocos2d::CCDouble const*) = imac 0x4ae220, m1 0x413708, ios 0x2e9850;
    virtual void visit(cocos2d::CCString const*) = imac 0x4ae2a0, m1 0x41378c, ios 0x2e98d4;
    virtual void visit(cocos2d::CCArray const*) = imac 0x4ae2d0, m1 0x4137b8, ios 0x2e9900;
    virtual void visit(cocos2d::CCDictionary const*) = imac 0x4ae7e0, m1 0x413c04, ios 0x192640;
    virtual void visit(cocos2d::CCSet const*) = imac 0x4aec80, m1 0x413fd0, ios 0x2e9e54;

    void setIndentLevel(int) = imac 0x4ade90, m1 0x413368, ios 0x41f2c;
}

[[link(win, android)]]
class cocos2d::CCProfiler : cocos2d::CCObject {
    virtual ~CCProfiler() = imac 0x4e6a50, m1 0x445384;

    static cocos2d::CCProfiler* sharedProfiler() = imac 0x4e66b0, m1 0x444fec;

    cocos2d::CCProfilingTimer* createAndAddTimerWithName(char const*) = imac 0x4e67a0, m1 0x4450e0;
    void displayTimers() = imac 0x4e6b10, m1 0x44543c;
    bool init() = imac 0x4e6760, m1 0x445098;
    void releaseAllTimers() = imac 0x4e6a40, m1 0x44537c;
    void releaseTimer(char const*) = imac 0x4e6960;
}

[[link(android)]]
class cocos2d::CCProfilingTimer : cocos2d::CCObject {
    CCProfilingTimer() = win inline, imac 0x4e6b20, m1 0x445440;
    virtual ~CCProfilingTimer() = win inline, imac 0x4e6b70, m1 0x445480;

    char const* description() = win inline, imac 0x4e6c30, m1 0x44555c;
    bool initWithName(char const*) = win inline, imac 0xd8ab0, m1 0xbebd0;
    void reset() = win inline, imac 0x4e6ca0, m1 0x4455e0;
}

[[link(win, android)]]
class cocos2d::CCProgressFromTo : cocos2d::CCActionInterval {
    static cocos2d::CCProgressFromTo* create(float, float, float) = imac 0x425170, m1 0x39c678;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x425260, m1 0x39c74c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x425360, m1 0x39c834;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x425410, m1 0x39c8c8;
    virtual void update(float) = imac 0x425420, m1 0x39c8cc;

    bool initWithDuration(float, float, float) = imac 0x425220, m1 0x39c714;
}

[[link(win, android)]]
class cocos2d::CCProgressTimer : cocos2d::CCNodeRGBA {
    // CCProgressTimer(cocos2d::CCProgressTimer const&);
    CCProgressTimer() = imac 0x6d9b10, m1 0x5ef678, ios 0x47b7b8;
    virtual ~CCProgressTimer() = imac 0x6d9fd0, m1 0x5efa90, ios 0x47ba28;

    static cocos2d::CCProgressTimer* create(cocos2d::CCSprite*) = imac 0x6d9c50, m1 0x5ef780, ios 0x47b83c;

    virtual cocos2d::ccColor3B const& getColor() const = imac 0x6da320, m1 0x5efd6c, ios 0x47bb58;
    virtual unsigned char getOpacity() const = imac 0x6da420, m1 0x5efe5c, ios 0x47bbc8;
    virtual void draw() = imac 0x6dc200, m1 0x5f1438, ios 0x47c648;
    virtual cocos2d::CCPoint getMidpoint() = imac 0x6dc0e0, m1 0x3e249c, ios 0x2053ac;
    virtual void setMidpoint(cocos2d::CCPoint) = imac 0x6dc100, m1 0x5f135c, ios 0x47c574;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x6da1f0, m1 0x5efc44, ios 0x47bab0;
    virtual void setOpacity(unsigned char) = imac 0x6da340, m1 0x5efd7c, ios 0x47bb68;

    cocos2d::CCPoint boundaryTexCoord(char) = imac 0x6dc170, m1 0x5f13b8, ios 0x47c5d0;
    bool initWithSprite(cocos2d::CCSprite*) = imac 0x6d9d30, m1 0x5ef83c, ios 0x47b894;
    // cocos2d::CCPoint getBarChangeRate() const;
    // float getPercentage();
    // cocos2d::CCSprite* getSprite();
    // cocos2d::CCProgressTimerType getType();
    void setAnchorPoint(cocos2d::CCPoint) = imac 0x6d9f30, m1 0x5efa0c, ios inline;
    // void setBarChangeRate(cocos2d::CCPoint);
    void setPercentage(float) = imac 0x6d9ec0, m1 0x5ef9a0, ios 0x47b964;
    // void setReverseDirection(bool);
    void setReverseProgress(bool) = imac 0x6da1a0, m1 0x5efbfc, ios inline;
    void setSprite(cocos2d::CCSprite*) = imac 0x6d9f40, m1 0x5efa10, ios 0x47b9a8;
    void setType(cocos2d::CCProgressTimerType type) = imac 0x6da150, m1 0x5efbac, ios inline;
    // bool isReverseDirection();
    cocos2d::ccTex2F textureCoordFromAlphaPoint(cocos2d::CCPoint) = imac 0x6da440, m1 0x5efe6c, ios 0x47bbd8;
    void updateBar() = imac 0x6daf70, m1 0x5f070c, ios 0x1fbfac;
    void updateColor() = imac 0x6da270, m1 0x5efcb4, ios 0x47bae0;
    void updateProgress() = imac 0x6da120, m1 0x5efb90, ios 0x47ba94;
    void updateRadial() = imac 0x6da580, m1 0x5eff90, ios 0x47bcf4;
    cocos2d::ccVertex2F vertexFromAlphaPoint(cocos2d::CCPoint) = imac 0x6da4f0, m1 0x5eff0c, ios 0x47bc74;
}

[[link(win, android)]]
class cocos2d::CCProgressTo : cocos2d::CCActionInterval {
    static cocos2d::CCProgressTo* create(float, float) = imac 0x424f30, m1 0x39c474;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x425000, m1 0x39c538;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x425100, m1 0x39c620;
    virtual void update(float) = imac 0x425140, m1 0x39c660;

    bool initWithDuration(float, float) = imac 0x424fd0, m1 0x39c504;
}

[[link(win, android)]]
class cocos2d::CCRemoveSelf : cocos2d::CCActionInstant {
    static cocos2d::CCRemoveSelf* create(bool isNeedCleanUp) = imac 0x88dcf0, m1 0x781f58, ios inline;

    // CCRemoveSelf(cocos2d::CCRemoveSelf const&);
    // CCRemoveSelf();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x88dde0, m1 0x78203c, ios inline;
    virtual void update(float time) = imac 0x88dd60, m1 0x781fc4, ios inline;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x88dd80, m1 0x781fdc, ios inline;

    bool init(bool isNeedCleanUp) = imac 0x88dd50, m1 0x781fb8, ios inline;
}

[[link(win, android)]]
class cocos2d::CCRenderTexture : cocos2d::CCNode {
    // CCRenderTexture(cocos2d::CCRenderTexture const&);
    CCRenderTexture() = imac 0x6c5e30, m1 0x5de278, ios inline;
    virtual ~CCRenderTexture() = imac 0x6c5ef0, m1 0x5de310, ios 0x46487c;

    static cocos2d::CCRenderTexture* create(int, int) = imac 0x6c6610, m1 0x5de974, ios 0x464d68;
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat) = imac 0x65be30, m1 0x5de458, ios 0x464960;
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = imac 0x6c61a0, m1 0x5de538, ios inline;

    virtual void draw() = imac 0x6c6f00, m1 0x5df1bc, ios 0x46523c;
    virtual void visit() = imac 0x6c6e70, m1 0x5df124, ios 0x4651a4;
    virtual cocos2d::CCSprite* getSprite() = imac 0x6c5fe0, m1 0x5de3b0, ios 0x464914;
    virtual void setSprite(cocos2d::CCSprite*) = imac 0x6c5ff0, m1 0x5de3b8, ios 0x46491c;

    void begin() = imac 0x6c66f0, m1 0x5dea6c, ios 0x464e50;
    void beginWithClear(float, float, float, float) = imac 0x6c6920, m1 0x5dec60, ios 0x465020;
    void beginWithClear(float, float, float, float, float) = imac 0x6c6b60, m1 0x5dee48, ios inline;
    void beginWithClear(float, float, float, float, float, int) = imac 0x6c6c40, m1 0x5def18, ios inline;
    void beginWithClear(float, float, float, float, float, int, unsigned int) = imac 0x6c69c0, m1 0x5ded00, ios 0x465030;
    void clear(float, float, float, float) = imac 0x6c6ca0, m1 0x5def6c, ios inline;
    void clearDepth(float) = imac 0x6c6d90, m1 0x5df04c, ios inline;
    void clearStencil(int) = imac 0x6c6e30, m1 0x5df0dc, ios inline;
    void end() = imac 0x6c6c50, m1 0x5def20, ios 0x465158;
    cocos2d::ccColor4F const& getClearColor() const = imac 0x6c6050, m1 0x5de40c, ios inline;
    float getClearDepth() const = imac 0x6c6070, m1 0x5de424, ios inline;
    unsigned int getClearFlags() const = imac 0x6c6030, m1 0x5de3fc, ios inline;
    int getClearStencil() const = imac 0x6c6090, m1 0x5de434, ios inline;
    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat) = imac 0x6c6190, m1 0x5de530, ios inline;
    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = imac 0x6c6270, m1 0x5de620, ios 0x464a28;
    // void endToLua();
    bool isAutoDraw() const = imac 0x6c60b0, m1 0x5de448, ios inline;
    void listenToBackground(cocos2d::CCObject*) = imac 0x6c5fc0, m1 0x5de3a8, ios inline;
    void listenToForeground(cocos2d::CCObject*) = imac 0x6c5fd0, m1 0x5de3ac, ios inline;
    cocos2d::CCImage* newCCImage(bool flipImage) = imac 0x6c71b0, m1 0x5df3dc, ios inline;
    bool saveToFile(char const*) = inline;
    bool saveToFile(char const*, cocos2d::eImageFormat) = inline;
    void setAutoDraw(bool) = imac 0x6c60c0, ios inline;
    void setClearColor(cocos2d::ccColor4F const&) = imac 0x6c6060, m1 0x5de414, ios inline;
    void setClearDepth(float) = imac 0x6c6080, m1 0x5de42c, ios inline;
    void setClearFlags(unsigned int) = imac 0x6c6040, m1 0x5de404, ios inline;
    void setClearStencil(float) = imac 0x6c60a0, m1 0x5de43c, ios inline;
    void updateInternalScale(float, float) = imac 0x6c66d0, m1 0x5dea48, ios 0x464e2c;
}

[[link(win, android)]]
class cocos2d::CCRepeat : cocos2d::CCActionInterval {
    // cocos2d::CCFiniteTimeAction* getInnerAction();
    // void setInnerAction(cocos2d::CCFiniteTimeAction*);
    // CCRepeat(cocos2d::CCRepeat const&);
    // CCRepeat();
    virtual ~CCRepeat() = imac 0x39f3d0, m1 0x327944, ios inline;

    static cocos2d::CCRepeat* create(cocos2d::CCFiniteTimeAction* pAction, unsigned int times) = imac 0x39f0e0, m1 0x32766c, ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x39f270, m1 0x3277f4, ios inline;
    virtual void update(float dt) = imac 0x39f510, m1 0x327a84, ios inline;
    virtual bool isDone() = imac 0x39f630, m1 0x327bf8, ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x39f490, m1 0x3279fc, ios inline;
    virtual void stop() = imac 0x39f4e0, m1 0x327a54, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x39f640, m1 0x327c08, ios inline;

    bool initWithAction(cocos2d::CCFiniteTimeAction* pAction, unsigned int times) = imac 0x39f1e0, m1 0x32775c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCRepeatForever : cocos2d::CCActionInterval {
    // cocos2d::CCActionInterval* getInnerAction();
    // void setInnerAction(cocos2d::CCActionInterval*);
    // CCRepeatForever(cocos2d::CCRepeatForever const&);
    // CCRepeatForever();
    virtual ~CCRepeatForever() = imac 0x39f670, m1 0x327c38, ios 0x21bba4;

    static cocos2d::CCRepeatForever* create(cocos2d::CCActionInterval*) = imac 0x39f730, m1 0x327cf0, ios 0x21bbf8;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x39f7c0, m1 0x327d8c, ios 0x21bc64;
    virtual bool isDone() = imac 0x39f950, m1 0x327f34, ios 0x21be08;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x39f8a0, m1 0x327e5c, ios 0x21bd30;
    virtual void step(float) = imac 0x39f8e0, m1 0x327e9c, ios 0x21bd70;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x39f960, m1 0x327f3c, ios 0x21be10;

    bool initWithAction(cocos2d::CCActionInterval*) = imac 0x39f7a0, m1 0x327d5c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCReuseGrid : cocos2d::CCActionInstant {
    static cocos2d::CCReuseGrid* create(int) = imac 0x1ee230, m1 0x1a02d8;

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x1ee2b0, m1 0x1a0354;

    bool initWithTimes(int) = imac 0x1ee2a0, m1 0x1a0348;
}

[[link(win, android)]]
class cocos2d::CCReverseTime : cocos2d::CCActionInterval {
    CCReverseTime() = imac 0x3a4e40, m1 0x32c8e0;
    virtual ~CCReverseTime() = imac 0x3a4e70, m1 0x32c908;

    static cocos2d::CCReverseTime* create(cocos2d::CCFiniteTimeAction*) = imac 0x3a4c00, m1 0x32c6d4;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a4d20, m1 0x32c7dc;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a4f30, m1 0x32c9c0;
    virtual void stop() = imac 0x3a4f70, m1 0x32ca00;
    virtual void update(float) = imac 0x3a4fa0, m1 0x32ca30;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a4fd0, m1 0x32ca50;

    bool initWithAction(cocos2d::CCFiniteTimeAction*) = imac 0x3a4cc0, m1 0x32c780;
}

[[link(win, android)]]
class cocos2d::CCRipple3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCRipple3D* create(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float) = imac 0x26aba0, m1 0x211bec;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x26ad50, m1 0x211d88;
    virtual void update(float) = imac 0x26aed0, m1 0x211ed4;

    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float) = imac 0x26acd0, m1 0x211d14;
    void setPosition(cocos2d::CCPoint const&) = imac 0x26ad40, m1 0x211d80;
}

[[link(win, android)]]
class cocos2d::CCRotateBy : cocos2d::CCActionInterval {
    static cocos2d::CCRotateBy* create(float, float) = imac 0x3a0b40, m1 0x328e7c, ios 0x21c648;
    static cocos2d::CCRotateBy* create(float, float, float) = imac 0x3a0c40, m1 0x328f44, ios 0x21c6e4;

    // CCRotateBy(cocos2d::CCRotateBy const&);
    // CCRotateBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a0d40, m1 0x329018, ios 0x21c78c;
    virtual void update(float) = imac 0x3a0ea0, m1 0x329168, ios 0x21c8d8;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a0e50, m1 0x329110, ios 0x21c880;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a0f10, m1 0x3291f4, ios 0x21c954;

    bool initWithDuration(float, float) = imac 0x3a0c00, m1 0x328f18, ios inline;
    bool initWithDuration(float, float, float) = imac 0x3a0d00, m1 0x328fec, ios inline;
}

[[link(win, android)]]
class cocos2d::CCRotateTo : cocos2d::CCActionInterval {
    static cocos2d::CCRotateTo* create(float, float) = imac 0x3a0680, m1 0x328a84, ios 0x21c33c;
    static cocos2d::CCRotateTo* create(float fDuration, float fDeltaAngleX, float fDeltaAngleY) = imac 0x3a0780, m1 0x328b50, ios inline;

    // CCRotateTo(cocos2d::CCRotateTo const&);
    // CCRotateTo();
    virtual bool initWithDuration(float fDuration, float fDeltaAngleX, float fDeltaAngleY) = imac 0x3a0850, m1 0x328bfc, ios 0x21c3dc;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a0890, m1 0x328c28, ios 0x21c408;
    virtual void update(float) = imac 0x3a0ad0, m1 0x328df0, ios 0x21c5cc;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a0980, m1 0x328d10, ios 0x21c4ec;

    bool initWithDuration(float, float) = imac 0x3a0740, m1 0x328b24, ios inline;
}

[[link(win, android)]]
class cocos2d::CCSAXParser {
    CCSAXParser() = imac 0x155390, m1 0x1215b4;
    ~CCSAXParser() = imac 0x1553b0, m1 0x1215c0;

    static void endElement(void*, cocos2d::CC_XML_CHAR const*) = imac 0x1552f0, m1 0x121518;
    static void startElement(void*, cocos2d::CC_XML_CHAR const*, cocos2d::CC_XML_CHAR const**) = imac 0x1552a0, m1 0x1214bc;
    static void textHandler(void*, cocos2d::CC_XML_CHAR const*, int) = imac 0x155360, m1 0x121590;

    bool init(char const*) = imac 0x1553c0, m1 0x1215c4;
    bool parse(char const*) = imac 0x155470, m1 0x121670;
    bool parse(char const*, unsigned int) = imac 0x1553d0, m1 0x1215cc;
    void setDelegator(cocos2d::CCSAXDelegator*) = imac 0x155560, m1 0x121770;
}

[[link(win, android)]]
class cocos2d::CCScaleBy : cocos2d::CCScaleTo {
    static cocos2d::CCScaleBy* create(float duration, float s) = imac 0x3a3360, m1 0x32b0e0, ios inline;
    static cocos2d::CCScaleBy* create(float duration, float sx, float sy) = imac 0x3a3420, m1 0x32b178, ios inline;

    // CCScaleBy(cocos2d::CCScaleBy const&);
    // CCScaleBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3a3600, m1 0x32b30c, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a3660, m1 0x32b37c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCScaleTo : cocos2d::CCActionInterval {
    static cocos2d::CCScaleTo* create(float, float) = imac 0x3a2f70, m1 0x32ad8c, ios 0x21d5d0;
    static cocos2d::CCScaleTo* create(float, float, float) = imac 0x3a3070, m1 0x32ae4c, ios 0x21d668;

    // CCScaleTo(cocos2d::CCScaleTo const&);
    // CCScaleTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios 0x21d70c;
    virtual void update(float) = imac 0x3a3300, m1 0x32b074, ios 0x21d864;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a3290, m1 0x32b008, ios 0x21d7f8;

    bool initWithDuration(float duration, float s) = imac 0x3a3030, m1 0x32ae24, ios inline;
    bool initWithDuration(float duration, float sx, float sy) = imac 0x3a3140, m1 0x32aef0, ios inline;
}

[[link(win, android)]]
class cocos2d::CCScene : cocos2d::CCNode {
    // CCScene(cocos2d::CCScene const&);
    CCScene() = imac 0x27c0e0, m1 0x22186c, ios 0x2db11c;
    virtual ~CCScene() = imac 0x27c1c0, m1 0x221964, ios 0x2db198;

    static cocos2d::CCScene* create() = imac 0x27c250, m1 0x2219d8, ios 0x2db20c;

    virtual bool init() = imac 0x27c200, m1 0x221980, ios 0x2db1b4;

    int getHighestChildZ() = imac 0x27c310, m1 0x221ab8, ios 0x1241f8;
}

[[link(win, android)]]
class cocos2d::CCScheduler : cocos2d::CCObject {
    // float getTimeScale();
    // void setTimeScale(float);
    // CCScheduler(cocos2d::CCScheduler const&);
    CCScheduler() = imac 0x435e00, m1 0x3abf60, ios 0x23d1e8;
    virtual ~CCScheduler() = imac 0x435e50, m1 0x3abf9c, ios 0x23d224;

    virtual void update(float) = imac 0x437c90, m1 0x3ade30, ios 0x23eaf8;

    void appendIn(cocos2d::_listEntry**, cocos2d::CCObject*, bool) = imac 0x436930, m1 0x3acab4, ios 0x23dc94;
    bool isTargetPaused(cocos2d::CCObject*) = ios inline;
    cocos2d::CCSet* pauseAllTargets() = imac 0x437ac0, m1 0x3adc64, ios inline;
    cocos2d::CCSet* pauseAllTargetsWithMinPriority(int) = imac 0x437ad0, m1 0x3adc6c, ios inline;
    void pauseTarget(cocos2d::CCObject*);
    void priorityIn(cocos2d::_listEntry**, cocos2d::CCObject*, int, bool) = imac 0x4365b0, m1 0x3ac714, ios 0x23d910;
    void removeHashElement(cocos2d::_hashSelectorEntry*) = imac 0x435f50, m1 0x3ac074, ios 0x23d288;
    void removeUpdateFromHash(cocos2d::_listEntry*) = imac 0x436db0, m1 0x3acf3c, ios 0x23e0f8;
    void resumeTarget(cocos2d::CCObject*);
    void resumeTargets(cocos2d::CCSet*) = imac 0x437c00, m1 0x3add9c, ios inline;
    unsigned int scheduleScriptFunc(unsigned int, float, bool) = imac 0x437390, m1 0x3ad5b0, ios inline;
    void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, bool) = imac 0x436060, m1 0x3ac19c, ios 0x23d3b0;
    void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, unsigned int, float, bool) = imac 0x436080, m1 0x3ac1ac, ios 0x23d3c0;
    void scheduleUpdateForTarget(cocos2d::CCObject*, int, bool) = imac 0x436c60, m1 0x3ace00, ios 0x23dfc4;
    void unscheduleAll() = imac 0x9370, m1 0x3abfe0, ios 0x23d268;
    void unscheduleAllForTarget(cocos2d::CCObject*) = imac 0x437200, m1 0x3ad40c, ios 0x23e574;
    void unscheduleAllWithMinPriority(int) = imac 0x437110, m1 0x3ad320, ios 0x23e494;
    void unscheduleScriptEntry(unsigned int) = imac 0x4373e0, m1 0x3ad61c, ios inline;
    void unscheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*) = imac 0x435b90, m1 0x3abcd0, ios 0x23cfc8;
    void unscheduleUpdateForTarget(cocos2d::CCObject const*) = imac 0x436ff0, m1 0x3ad1f4, ios 0x23e368;
}

[[link(android)]]
class cocos2d::CCSchedulerScriptHandlerEntry : cocos2d::CCScriptHandlerEntry {
    virtual ~CCSchedulerScriptHandlerEntry() = win inline, imac 0x3068f0, m1 0x299cdc;

    static cocos2d::CCSchedulerScriptHandlerEntry* create(int, float, bool) = imac 0x306790, m1 0x299b78;

    bool init(float, bool) = win inline, imac 0x306870, m1 0x299c58;
}

[[link(win, android)]]
class cocos2d::CCScriptEngineManager {
    // cocos2d::CCScriptEngineProtocol* getScriptEngine();
    ~CCScriptEngineManager() = imac 0x306c10, m1 0x299ff4, ios inline;

    static void purgeSharedManager() = imac 0x306cd0, m1 0x29a0d8, ios inline;
    static cocos2d::CCScriptEngineManager* sharedManager() = imac 0x306610, m1 0x2999c8, ios 0x30f0c4;

    void removeScriptEngine() = imac 0x306c40, m1 0x29a030, ios inline;
    void setScriptEngine(cocos2d::CCScriptEngineProtocol* engine) = imac 0x306ca0, m1 0x29a0a0, ios inline;
}

[[link(win, android)]]
class cocos2d::CCScriptHandlerEntry : cocos2d::CCObject {
    virtual ~CCScriptHandlerEntry() = imac 0x3066a0, m1 0x299a78, ios 0x30f0f8;

    static cocos2d::CCScriptHandlerEntry* create(int) = imac 0x306640, m1 0x299a08, ios inline;
}

[[link(win, android)]]
class cocos2d::CCSequence : cocos2d::CCActionInterval {
    // CCSequence(cocos2d::CCSequence const&);
    // CCSequence();
    virtual ~CCSequence() = imac 0x39ed00, m1 0x3272a8, ios 0x21b91c;

    static cocos2d::CCSequence* create(cocos2d::CCArray*) = imac 0x39e960, m1 0x326f70, ios 0x21b78c;
    // static cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, ...) = imac 0x3a2600, m1 0x33d1fc, ios 0x18da90;
    static cocos2d::CCSequence* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x39e4b0, m1 0x326c28, ios 0x21b5f0;
    static cocos2d::CCSequence* createWithVariableList(cocos2d::CCFiniteTimeAction*, va_list) = imac 0x39e690, m1 0x326d70, ios 0x21b70c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x39ebb0, m1 0x32717c, ios 0x21b828;
    virtual void update(float) = imac 0x39ee70, m1 0x327410, ios 0x21ba04;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x39edf0, m1 0x327384, ios 0x21b97c;
    virtual void stop() = imac 0x39ee30, m1 0x3273cc, ios 0x21b9c4;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x39eff0, m1 0x32758c, ios 0x21bb5c;

    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x39e580, m1 0x326ce4, ios 0x21b680;
}

[[link(win, android)]]
class cocos2d::CCSet : cocos2d::CCObject {
    // CCSet(cocos2d::CCSet const&) = imac 0x79df40, m1 0x6b0448, ios 0x1af714;
    CCSet() = imac 0x896990, m1 0x78a1f0, ios 0x23f240;
    virtual ~CCSet() = imac 0x896af0, m1 0x78a368, ios 0x23f378;

    static cocos2d::CCSet* create() = imac 0x896c80, m1 0x78a4d4, ios inline;

    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x896c60, m1 0x78a4bc, ios 0x23f45c;

    void addObject(cocos2d::CCObject*) = imac 0x896da0, m1 0x78a5f8, ios 0x23f4cc;
    cocos2d::CCObject* anyObject() = imac 0x896f70, m1 0x78a7e8, ios inline;
    cocos2d::CCSetIterator begin() = imac 0x896f50, m1 0x78a7d0, ios 0x23f590;
    bool containsObject(cocos2d::CCObject*) = imac 0x896f00, m1 0x78a784, ios 0x23f544;
    cocos2d::CCSet* copy() = imac 0x896d10, m1 0x78a55c, ios 0x23f474;
    int count() = imac 0x896d90, m1 0x78a5ec, ios 0x23f4c0;
    cocos2d::CCSetIterator end() = imac 0x896f60, m1 0x78a7dc;
    cocos2d::CCSet* mutableCopy() = imac 0x896d50, m1 0x78a5a4, ios 0x23f4bc;
    void removeAllObjects() = imac 0x896bb0, m1 0x78a424, ios 0x23f3cc;
    void removeObject(cocos2d::CCObject*) = imac 0x896e50, m1 0x78a6b0, ios 0x1f7ee0;

    std::set<cocos2d::CCObject*> m_pSet;
}

[[link(win, android)]]
class cocos2d::CCShaderCache : cocos2d::CCObject {
    // CCShaderCache(cocos2d::CCShaderCache const&);
    CCShaderCache() = imac 0x1e4a00, m1 0x197e4c, ios inline;
    virtual ~CCShaderCache() = imac 0x1e4a30, m1 0x197e70, ios 0x1511ec;

    static void purgeSharedShaderCache() = imac 0x1e49d0, m1 0x197e20, ios 0x1511c0;
    static cocos2d::CCShaderCache* sharedShaderCache() = imac 0x1e48b0, m1 0x197d00, ios 0x151108;

    void addProgram(cocos2d::CCGLProgram*, char const*) = imac 0x307fb0, ios 0x151898;
    bool init() = imac 0x1e4980, m1 0x197dd0, ios 0x151170;
    void loadDefaultShader(cocos2d::CCGLProgram*, int) = imac 0x1e5230, m1 0x1986ac, ios 0x1515e8;
    void loadDefaultShaders() = imac 0x1e4af0, m1 0x197f1c, ios 0x15123c;
    cocos2d::CCGLProgram* programForKey(char const*) = imac 0x1e5790, m1 0x198c98, ios 0x15182c;
    void reloadDefaultShaders() = imac 0x1e5410, m1 0x1988f0, ios inline;
}

[[link(win, android)]]
class cocos2d::CCShaky3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCShaky3D* create(float, cocos2d::CCSize const&, int, bool);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x26b1c0, m1 0x21218c;
    virtual void update(float) = imac 0x26b2f0, m1 0x2122b0;

    bool initWithDuration(float, cocos2d::CCSize const&, int, bool) = imac 0x26b190, m1 0x212150;
}

[[link(win, android)]]
class cocos2d::CCShakyTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCShakyTiles3D* create(float, cocos2d::CCSize const&, int, bool);

    virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool) = imac 0x898730, m1 0x78bdcc;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x898880, m1 0x78bf20;
}

[[link(win, android)]]
class cocos2d::CCShatteredTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCShatteredTiles3D* create(float, cocos2d::CCSize const&, int, bool) = imac 0x898b10, m1 0x78c1e4;

    virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool) = imac 0x898c00, m1 0x78c2e4;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x898d60, m1 0x78c43c;
}

[[link(win, android)]]
class cocos2d::CCShow : cocos2d::CCActionInstant {
    static cocos2d::CCShow* create() = imac 0x88d8e0, m1 0x781afc, ios 0x240a4c;

    // CCShow(cocos2d::CCShow const&);
    // CCShow();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x88d9f0, m1 0x781c18, ios 0x240b14;
    virtual void update(float) = imac 0x88d930, m1 0x781b54, ios 0x240aa4;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x88d950, m1 0x781b68, ios 0x240ab8;
}

[[link(win, android)]]
class cocos2d::CCShuffleTiles : cocos2d::CCTiledGrid3DAction {
    virtual ~CCShuffleTiles() = imac 0x899240, m1 0x78c950;

    static cocos2d::CCShuffleTiles* create(float, cocos2d::CCSize const&, unsigned int) = imac 0x899000, m1 0x78c714;

    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int) = imac 0x8990f0, m1 0x78c80c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x8994e0, m1 0x78cbd0;
    virtual void update(float) = imac 0x899800, m1 0x78ced8;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x899120, m1 0x78c83c;

    cocos2d::CCSize getDelta(cocos2d::CCSize const&) = imac 0x899390, m1 0x78ca98;
    void placeTile(cocos2d::CCPoint const&, cocos2d::Tile*) = imac 0x899430, m1 0x4c0ff4;
    void shuffle(unsigned int*, unsigned int) = imac 0x899340, m1 0x78ca38;
}

[[link(win, android)]]
class cocos2d::CCSkewBy : cocos2d::CCSkewTo {
    static cocos2d::CCSkewBy* create(float t, float sx, float sy) = imac 0x3a1b20, m1 0x329c58, ios inline;

    // CCSkewBy(cocos2d::CCSkewBy const&);
    // CCSkewBy();
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3a1c50, m1 0x329d38, ios inline;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a1d60, m1 0x329e14, ios inline;
    virtual bool initWithDuration(float t, float deltaSkewX, float deltaSkewY) = imac 0x3a1c00, m1 0x329d0c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCSkewTo : cocos2d::CCActionInterval {
    CCSkewTo() = imac 0x3a17d0, m1 0x3299b4, ios inline;

    static cocos2d::CCSkewTo* create(float t, float sx, float sy) = imac 0x3a1720, m1 0x329918, ios inline;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x3a1850, m1 0x329a0c, ios inline;
    virtual void update(float t) = imac 0x3a1a80, m1 0x329bcc, ios inline;
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3a1930, m1 0x329ae4, ios inline;
    virtual bool initWithDuration(float t, float sx, float sy) = imac 0x3a1810, m1 0x3299e4, ios inline;
}

[[link(win, android)]]
class cocos2d::CCSpawn : cocos2d::CCActionInterval {
    // CCSpawn(cocos2d::CCSpawn const&);
    // CCSpawn();
    virtual ~CCSpawn() = imac 0x3a0420, m1 0x328800, ios 0x21c19c;

    static cocos2d::CCSpawn* create(cocos2d::CCArray* arrayOfActions) = imac 0x39fd70, m1 0x328204, ios inline;
    // static cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction*, ...) = m1 0x33e430, imac 0x3b9e30;
    static cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction* first, ...) = inline;
    static cocos2d::CCSpawn* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x39fce0, m1 0x328178, ios 0x21bed8;
    static cocos2d::CCSpawn* createWithVariableList(cocos2d::CCFiniteTimeAction*, va_list) = imac 0x39fa90, m1 0x327fe0, ios 0x21be58;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a0320, m1 0x32870c, ios 0x21c0ac;
    virtual void update(float) = imac 0x3a0580, m1 0x328970, ios 0x21c290;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a0510, m1 0x3288dc, ios 0x21c1fc;
    virtual void stop() = imac 0x3a0550, m1 0x328930, ios 0x21c250;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a05d0, m1 0x18da70, ios 0x21c2f4;

    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x39ff40, m1 0x3283e8, ios 0x21bf64;
}

[[link(win, android)]]
class cocos2d::CCSpeed : cocos2d::CCAction {
    // void setSpeed(float);
    // CCSpeed(cocos2d::CCSpeed const&);
    // CCSpeed();
    virtual ~CCSpeed() = imac 0x6c52d0, m1 0x5dd7b0;

    static cocos2d::CCSpeed* create(cocos2d::CCActionInterval*, float) = imac 0x6c53c0, m1 0x5dd88c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x6c54a0, m1 0x5dd95c;
    virtual bool isDone() = imac 0x6c56b0, m1 0x5ddb44;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x6c5640, m1 0x5ddae4;
    virtual void stop() = imac 0x6c5660, m1 0x5ddaf8;
    virtual void step(float) = imac 0x6c5690, m1 0x5ddb28;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x6c56c0, m1 0x5ddb54;

    bool initWithAction(cocos2d::CCActionInterval*, float) = imac 0x6c5460, m1 0x5dd91c;
    // cocos2d::CCActionInterval* getInnerAction();
    // float getSpeed();
    void setInnerAction(cocos2d::CCActionInterval*) = imac 0x6c5770, m1 0x5ddbf8;
}

[[link(win, android)]]
class cocos2d::CCSplitCols : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCSplitCols* create(float, unsigned int);

    virtual bool initWithDuration(float, unsigned int) = imac 0x89b5f0;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x89b7b0, m1 0x78edb4;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x89b770, m1 0x78ed74;
}

[[link(win, android)]]
class cocos2d::CCSplitRows : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCSplitRows* create(float, unsigned int);

    virtual bool initWithDuration(float, unsigned int) = imac 0x89b240;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x89b400, m1 0x78ea2c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x89b3c0, m1 0x78e9ec;
}

[[link(win, android)]]
class cocos2d::CCSprite : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    // void setTextureAtlas(cocos2d::CCTextureAtlas*);
    // void setTlVertexMod(float);
    // void setTrVertexMod(float);
    // void setUseVertexMod(bool);
    // CCSprite(cocos2d::CCSprite const&);
    CCSprite() = imac 0x273fb0, m1 0x21a830, ios 0x2d22e8;
    virtual ~CCSprite() = m1 0x21a8b8, imac 0x274110, ios 0x2d2370;

    static cocos2d::CCSprite* create() = imac 0x1b5ae0, m1 0x21a3b8, ios 0x156dc4;
    static cocos2d::CCSprite* create(char const*) = imac 0x2737f0, m1 0x21a0a8, ios 0x2d1dc0;
    static cocos2d::CCSprite* create(char const*, cocos2d::CCRect const&) = ios inline;
    static cocos2d::CCSprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x2739e0, m1 0x21a29c, ios 0x2d1e3c;
    static cocos2d::CCSprite* createWithSpriteFrameName(char const*) = imac 0x273ae0, m1 0x21a390, ios 0x2d1ebc;
    static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*) = imac 0x273560, m1 0x219e2c, ios 0x2d1cb4;
    static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = ios 0x2d1d34;

    virtual bool init() = imac 0x273c00, m1 0x21a4a0, ios 0x2d1f58;
    virtual void setVertexZ(float) = imac 0x2756d0, m1 0x21bcd8, ios 0x2d36bc;
    virtual void setScaleX(float) = imac 0x275570, m1 0x21bb48, ios 0x2d352c;
    virtual void setScaleY(float) = imac 0x2755e0, m1 0x21bbc8, ios 0x2d35ac;
    virtual void setScale(float) = imac 0x275650, m1 0x21bc48, ios 0x2d362c;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x2752c0, m1 0x21b86c, ios 0x2d3250;
    virtual void setSkewX(float) = imac 0x275490, m1 0x21ba60, ios 0x2d3444;
    virtual void setSkewY(float) = imac 0x275500, m1 0x21bad4, ios 0x2d34b8;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x275740, m1 0x21bd4c, ios 0x2d3730;
    virtual void setVisible(bool) = imac 0x2757c0, m1 0x21bdc4, ios 0x2d37a8;
    virtual void setRotation(float) = imac 0x275340, m1 0x21b904;
    virtual void setRotationX(float) = imac 0x2753b0, m1 0x21b978;
    virtual void setRotationY(float) = imac 0x275420, m1 0x21b9ec;
    virtual void ignoreAnchorPointForPosition(bool) = imac 0x2757b0, m1 0x21bdc0, ios 0x2d37a4;
    virtual void addChild(cocos2d::CCNode*) = imac 0x274e00, m1 0x21b398, ios 0x2d2d90;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x274e10, m1 0x21b39c, ios 0x2d2d94;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x274e20, m1 0x21b3a0, ios 0x2d2d98;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x274f60, m1 0x21b508, ios 0x25998;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x18dd0, m1 0x21b550, ios 0x2d2f48;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x274ee0, m1 0x21b474, ios 0x2d2e6c;
    virtual void sortAllChildren() = imac 0x275060, m1 0x21b604, ios 0x2d2ff4;
    virtual void draw() = imac 0x274ce0, m1 0x21b288, ios 0x2d2c84;
    virtual void updateTransform() = imac 0x2747d0, m1 0x21ae9c, ios 0x2d2898;
    virtual bool initWithTexture(cocos2d::CCTexture2D*) = imac 0x273dc0, m1 0x21a61c, ios 0x2d20d4;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = imac 0x273da0, m1 0x21a60c, ios 0x2d20c4;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = imac 0x273c20, m1 0x21a4b8, ios 0x2d1f70;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x273f20, m1 0x21a790, ios 0x2d2248;
    virtual bool initWithSpriteFrameName(char const*) = imac 0x273f70, m1 0x21a7f4, ios 0x2d22ac;
    virtual bool initWithFile(char const*) = imac 0x273e30, m1 0x21a698, ios 0x2d2150;
    virtual bool initWithFile(char const*, cocos2d::CCRect const&) = imac 0x273ec0, m1 0x21a72c, ios 0x2d21e4;
    virtual void setChildColor(cocos2d::ccColor3B const&) = imac 0x275dd0, m1 0x21c1bc, ios 0x2d3ad8;
    virtual void setChildOpacity(unsigned char) = imac 0x275ba0, m1 0x21c060, ios 0x2d39cc;
    virtual cocos2d::CCSpriteBatchNode* getBatchNode() = imac 0x2765a0, m1 0x21c5c4, ios 0x2d3ec8;
    virtual void setBatchNode(cocos2d::CCSpriteBatchNode*) = imac 0x2765b0, m1 0x21c5cc, ios 0x2d3ed0;
    virtual void refreshTextureRect() = imac 0x274170, m1 0x21a9a0, ios 0x2d23d4;
    virtual void setTextureRect(cocos2d::CCRect const&) = imac 0x274200, m1 0x21aa24, ios 0x2d2458;
    virtual void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&) = imac 0x274220, m1 0x21aa38, ios 0x2d246c;
    virtual void setVertexRect(cocos2d::CCRect const&) = imac 0x274580, m1 0x21acc8, ios 0x2d26d8;
    virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = imac 0x276290, m1 0x21c344, ios 0x2d3c58;
    virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = imac 0x276360, m1 0x21c418, ios 0x2d3d2c;
    virtual cocos2d::CCSpriteFrame* displayFrame() = imac 0x2763f0, m1 0x21c4bc, ios 0x2d3dc0;
    virtual void setDisplayFrameWithAnimationName(char const*, int) = imac 0x276310, m1 0x21c3c4, ios 0x2d3cd8;
    virtual void setTextureCoords(cocos2d::CCRect const&) = imac 0x2745a0, m1 0x21acd0, ios 0x2d26e0;
    virtual void updateBlendFunc() = imac 0x276620, m1 0x21c618, ios 0x2d3f1c;
    virtual void setReorderChildDirtyRecursively() = imac 0x2751e0, m1 0x21b788, ios 0x2d316c;
    virtual void setDirtyRecursively(bool) = imac 0x275240, m1 0x21b7f0, ios 0x2d31d4;
    virtual void setOpacity(unsigned char) = imac 0x2759f0, m1 0x21bf68, ios 0x2d394c;
    virtual void updateDisplayedOpacity(unsigned char) = m1 0x21c2f8, imac 0x276140, ios 0x2d3c0c;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x275c50, m1 0x21c108, ios 0x2d3a6c;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = m1 0x21c2ac, imac 0x275ff0, ios 0x2d3bc0;
    virtual void setOpacityModifyRGB(bool) = imac 0x275e80, m1 0x21c264, ios 0x2d3b78;
    virtual bool isOpacityModifyRGB() = imac 0x275fd0, m1 0x21c29c, ios 0x2d3bb0;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x276680, m1 0x21c674, ios 0x2d3f74;
    virtual cocos2d::CCTexture2D* getTexture() = m1 0x21c7b4, imac 0x2767f0, ios 0x1533cc;

    bool isFlipX() = imac 0x275870, m1 0x21be64, ios 0x2d3848;
    bool isFlipY() = imac 0x2758c0, m1 0x21be98, ios 0x2d387c;
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
    void setFlipX(bool) = imac 0x275830, m1 0x21be38, ios 0x2d381c;
    void setFlipY(bool) = imac 0x275880, m1 0x21be6c, ios 0x2d3850;
    // bool isTextureRectRotated();
    void updateColor() = imac 0x2758d0, m1 0x21bea0, ios 0x2d3884;

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
    CCSpriteBatchNode() = imac 0x1559b0, m1 0x121b58, ios 0x26d9e8;
    virtual ~CCSpriteBatchNode() = imac 0x155a00, m1 0x121b88, ios 0x26da18;

    static cocos2d::CCSpriteBatchNode* create(char const* fileImage, unsigned int capacity) = imac 0x155820, m1 0x1219d0, ios 0x26d8b8;
    static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x1555f0, m1 0x1217e0, ios 0x26d718;

    virtual bool init() = imac 0x155960, m1 0x121afc, ios 0x26d98c;
    virtual void addChild(cocos2d::CCNode*) = imac 0x155e10, m1 0x121f7c, ios 0x26dd38;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x155e20, m1 0x121f80, ios 0x26dd3c;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x155bd0, m1 0x121d2c, ios 0x26db30;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x155e90, m1 0x121ff8;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x156170, m1 0x12225c, ios 0x26df44;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x155e30, m1 0x121f84, ios 0x26dd40;
    virtual void sortAllChildren() = imac 0x156220, m1 0x1222fc, ios 0x26dfe4;
    virtual void draw() = imac 0x1569e0, m1 0x122888, ios 0x26e360;
    virtual void visit() = imac 0x155b30, m1 0x121c7c, ios 0x26da80;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x157250, m1 0x1230f4, ios 0x26e510;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x157270, m1 0x123104, ios 0x26e520;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x157290, m1 0x123114, ios 0x26e530;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x1572c0, m1 0x123134, ios 0x26e550;

    cocos2d::CCSpriteBatchNode* addSpriteWithoutQuad(cocos2d::CCSprite*, unsigned int, int) = imac 0x157590, m1 0x123418, ios inline;
    void appendChild(cocos2d::CCSprite*) = imac 0x155c40, m1 0x121db0, ios 0x26dbb4;
    unsigned int atlasIndexForChild(cocos2d::CCSprite*, int) = imac 0x156d70, m1 0x122c40, ios inline;
    int getAtlasCapacity() = imac 0x156b70, m1 0x122a28, ios 0x26e500;
    int getUsedAtlasCapacity() = imac 0x156b60, m1 0x122a1c, ios 0x26e4f4;
    unsigned int highestAtlasIndexInChild(cocos2d::CCSprite*) = imac 0x156cb0, m1 0x122b84, ios inline;
    void increaseAtlasCapacity() = imac 0x156ac0, m1 0x122960, ios 0x26e438;
    void increaseAtlasCapacity(unsigned int) = imac 0x156b20, m1 0x1229d0, ios 0x26e4a8;
    bool initWithFile(char const*, unsigned int) = imac 0x1558d0, m1 0x121a64, ios 0x26d93c;
    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x1556e0, m1 0x121894, ios 0x26d79c;
    void insertChild(cocos2d::CCSprite*, unsigned int) = imac 0x156f00, m1 0x122dfc, ios inline;
    void insertQuadFromSprite(cocos2d::CCSprite*, unsigned int) = imac 0x157370, m1 0x1231e0, ios inline;
    unsigned int lowestAtlasIndexInChild(cocos2d::CCSprite*) = imac 0x156d10, m1 0x122be0, ios inline;
    void manualSortAllChildren() = imac 0x156210, m1 0x1222f0, ios 0x26dfd8;
    unsigned int rebuildIndexInOrder(cocos2d::CCSprite*, unsigned int) = imac 0x156b90, m1 0x122a38, ios inline;
    void removeChildAtIndex(unsigned int, bool) = imac 0x156140, m1 0x122220, ios inline;
    void removeSpriteFromAtlas(cocos2d::CCSprite*) = imac 0x155ed0, m1 0x12203c, ios 0x26ddf8;
    void reorderBatch(bool) = imac 0x1569d0, m1 0x122880, ios 0x26e358;
    void swap(int, int) = imac 0x1568a0, m1 0x1227bc, ios 0x26e294;
    void updateAtlasIndex(cocos2d::CCSprite*, int*) = imac 0x156360, m1 0x122420, ios 0x26e0f0;
    void updateBlendFunc() = imac 0x155910, m1 0x121ab4, ios inline;
    void updateQuadFromSprite(cocos2d::CCSprite*, unsigned int) = imac 0x1574b0, m1 0x123318, ios inline;

    cocos2d::CCTextureAtlas* m_pobTextureAtlas;
    cocos2d::ccBlendFunc m_blendFunc;
    cocos2d::CCArray* m_pobDescendants;
    bool m_bManualSortChildren;
    bool m_bManualSortAllChildrenDirty;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrame : cocos2d::CCObject {
    // CCSpriteFrame(cocos2d::CCSpriteFrame const&);
    virtual ~CCSpriteFrame() = ios 0x2e926c;

    static cocos2d::CCSpriteFrame* create(char const* filename, cocos2d::CCRect const& rect) = ios inline;
    static cocos2d::CCSpriteFrame* create(char const* filename, cocos2d::CCRect const& rect, bool rotated, cocos2d::CCPoint const& offset, cocos2d::CCSize const& size) = ios inline;
    static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D* pobTexture, cocos2d::CCRect const& rect) = m1 0x2d3aec, imac 0x342930, ios inline;
    static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = ios 0x2e8eac;

    // bool isRotated();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x203950, m1 0x2d42d0, ios 0x1e20b0;

    cocos2d::CCPoint const& getOffset() = imac 0x343660, m1 0x2d4568, ios 0x2e9418;
    cocos2d::CCPoint const& getOffsetInPixels() = imac 0x343700, m1 0x2d45dc, ios 0x2e9420;
    // cocos2d::CCSize const& getOriginalSize();
    // cocos2d::CCSize const& getOriginalSizeInPixels();
    // cocos2d::CCRect const& getRect();
    // cocos2d::CCRect const& getRectInPixels();
    cocos2d::CCTexture2D* getTexture() = imac 0x3437a0, m1 0x2d4650, ios 0x2e9428;
    bool initWithTexture(cocos2d::CCTexture2D* pobTexture, cocos2d::CCRect const& rect) = imac 0x342a50, m1 0x2d3bd8, ios inline;
    bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x342c80, m1 0x2d3da4, ios 0x2e8fb0;
    bool initWithTextureFilename(char const* filename, cocos2d::CCRect const& rect) = imac 0x342840, m1 0x2d3a2c, ios inline;
    bool initWithTextureFilename(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x342fb0, m1 0x2d4010, ios 0x2e9110;
    void setOffset(cocos2d::CCPoint const&) = imac 0x343670, m1 0x2d4570, ios inline;
    void setOffsetInPixels(cocos2d::CCPoint const&) = imac 0x343710, m1 0x2d45e4, ios inline;
    // void setOriginalSize(cocos2d::CCSize const&);
    // void setOriginalSizeInPixels(cocos2d::CCSize const&);
    void setRect(cocos2d::CCRect const&) = imac 0x3434a0, m1 0x2d442c, ios inline;
    void setRectInPixels(cocos2d::CCRect const&) = imac 0x343580, m1 0x2d44c8, ios inline;
    // void setRotated(bool);
    void setTexture(cocos2d::CCTexture2D*) = imac 0x343460, m1 0x2d43e8, ios 0x2e93d4;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrameCache : cocos2d::CCObject {
    // CCSpriteFrameCache();
    // CCSpriteFrameCache(cocos2d::CCSpriteFrameCache const&);
    virtual ~CCSpriteFrameCache() = imac 0x306ef0, m1 0x29a30c, ios 0x46065c;

    static void purgeSharedSpriteFrameCache() = imac 0x306ec0, m1 0x29a2e0, ios 0x460630;
    static cocos2d::CCSpriteFrameCache* sharedSpriteFrameCache() = imac 0x306d60, m1 0x29a174, ios 0x46054c;

    void addSpriteFrame(cocos2d::CCSpriteFrame* pobFrame, char const* pszFrameName) = imac 0x307fb0, m1 0x29b420, ios inline;
    void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*) = imac 0x307050, m1 0x29a448, ios 0x4606dc;
    void addSpriteFramesWithFile(char const*) = imac 0x307c50, m1 0x29af8c, ios 0x460f90;
    void addSpriteFramesWithFile(char const* plist, char const* textureFilename) = imac 0x307be0, m1 0x29af1c, ios inline;
    void addSpriteFramesWithFile(char const* plist, cocos2d::CCTexture2D* texture) = imac 0x307ba0, m1 0x29aed4, ios inline;
    bool init() = imac 0x306e40, m1 0x29a254, ios 0x4605b4;
    void removeSpriteFrameByName(char const* name) = imac 0x308190, m1 0x29b604, ios inline;
    void removeSpriteFrames() = imac 0x3080a0, m1 0x29b520, ios inline;
    void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*) = imac 0x308670, m1 0x29bb98, ios 0x461304;
    void removeSpriteFramesFromFile(char const*) = imac 0x3084a0, m1 0x29b8cc, ios 0x4611f4;
    void removeSpriteFramesFromTexture(cocos2d::CCTexture2D*) = imac 0x3088a0, m1 0x29bdd0, ios inline;
    void removeUnusedSpriteFrames() = imac 0x3080e0, m1 0x29b56c, ios inline;
    cocos2d::CCSpriteFrame* spriteFrameByName(char const*) = imac 0x308ba0, m1 0x29c0b8, ios 0x461428;
}

[[link(win, android)]]
class cocos2d::CCStandardTouchHandler : cocos2d::CCTouchHandler {
    static cocos2d::CCStandardTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int) = imac 0x4758c0, m1 0x3e039c, ios 0xc63c;

    virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int) = imac 0x475860, m1 0x3e032c, ios 0xc624;
}

[[link(win, android)]]
class cocos2d::CCStopGrid : cocos2d::CCActionInstant {
    static cocos2d::CCStopGrid* create() = imac 0x1ee1c0, m1 0x1a0270;

    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x1ee180, m1 0x1a0220;
}

[[link(win, android)]]
class cocos2d::CCString : cocos2d::CCObject {
    [[since("5.0.0-beta.4")]]
    CCString() = inline;

    static cocos2d::CCString* createWithContentsOfFile(char const*) = imac 0x88caa0, m1 0x780fb0, ios 0x304328;
    static cocos2d::CCString* createWithData(unsigned char const*, unsigned long) = imac 0x615a40, m1 0x780d70, ios 0x3041ec;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x88c590, m1 0x780b2c, ios 0x3040ac;
    virtual bool isEqual(cocos2d::CCObject const*) = imac 0x88c690, m1 0x780c2c, ios 0x304104;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x88cb00, m1 0x78101c, ios 0x304390;

    bool boolValue() const = imac 0x88c510, m1 0x780a9c, ios 0x304034;
    int compare(char const*) const = imac 0x88c570, m1 0x780b10, ios inline;
    double doubleValue() const = imac 0x88c4e0, m1 0x780a70, ios 0x304008;
    float floatValue() const = imac 0x88c4b0, m1 0x780a30, ios 0x303fc8;
    // static cocos2d::CCString* createWithFormat(char const*, ...) = ios 0x2680c0, m1 0x6a8cd0;
    char const* getCString() const = imac 0x88c140, m1 0x780728, ios 0x303e80;
    int intValue() const = imac 0x88c430, m1 0x7809c0, ios 0x303f84;
    unsigned int length() const = imac 0x88c460, m1 0x7809ec, ios 0x303fb0;
    unsigned int uintValue() const = imac 0x88c480, m1 0x780a04, ios inline;

    std::string m_sString;
}

[[link(win, android)]]
class cocos2d::CCTargetedAction : cocos2d::CCActionInterval {
    CCTargetedAction() = imac 0x3a5a30, m1 0x32d340;
    virtual ~CCTargetedAction() = imac 0x3a5a60, m1 0x32d368;

    static cocos2d::CCTargetedAction* create(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*) = imac 0x3a5b50, m1 0x32d444;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a5c70, m1 0x32d554;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a5d90, m1 0x32d658;
    virtual void stop() = imac 0x3a5dc0, m1 0x32d690;
    virtual void update(float) = imac 0x3a5dd0, m1 0x32d6a0;

    bool initWithTarget(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*) = imac 0x3a5c00, m1 0x32d4e8;
}

[[link(win, android)]]
class cocos2d::CCTargetedTouchHandler : cocos2d::CCTouchHandler {
    virtual ~CCTargetedTouchHandler() = imac 0x475b20, m1 0x3e05d0, ios 0xc7bc;

    static cocos2d::CCTargetedTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x4759a0, m1 0x3e045c, ios 0xc6d0;

    cocos2d::CCSet* getClaimedTouches() = imac 0x475990, m1 0x3e0454, ios 0xc6c8;
    bool initWithDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x475a90, m1 0x3e053c, ios 0xc760;
    // CCTargetedTouchHandler(cocos2d::CCTargetedTouchHandler const&);
    // CCTargetedTouchHandler();
    bool isSwallowsTouches() = imac 0x475970, m1 0x3e0444, ios 0xc6c0;
    void setSwallowsTouches(bool) = imac 0x475980, m1 0x3e044c, ios inline;

    bool m_bSwallowsTouches;
    cocos2d::CCSet* m_pClaimedTouches;
}

[[link(win, android)]]
class cocos2d::CCTextFieldTTF : cocos2d::CCLabelTTF, cocos2d::CCIMEDelegate {
    CCTextFieldTTF() = imac 0x2681e0, m1 0x20f4d4, ios 0x260fe4;
    virtual ~CCTextFieldTTF() = imac 0x268300, m1 0x20f5a4, ios 0x2610a4;

    static cocos2d::CCTextFieldTTF* textFieldWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize) = imac 0x268660, m1 0x20f87c, ios 0x261178;
    static cocos2d::CCTextFieldTTF* textFieldWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize) = imac 0x268450, m1 0x20f678, ios inline;

    // void setDelegate(cocos2d::CCTextFieldDelegate* var);
    virtual void draw() = imac 0x269180, m1 0x2103f8, ios 0x261984;
    virtual const cocos2d::ccColor3B& getColorSpaceHolder() = imac 0x269220, m1 0x2104b4, ios 0x261a40;
    virtual void setColorSpaceHolder(const cocos2d::ccColor3B& color) = imac 0x269230, m1 0x2104bc, ios 0x261a48;
    virtual const char* getPlaceHolder() = imac 0x269690, m1 0x2108a4, ios 0x261d0c;
    virtual void setPlaceHolder(const char* text) = imac 0x269530, m1 0x210758, ios 0x261c44;
    virtual void setSecureTextEntry(bool value) = imac 0x2696b0, m1 0x2108bc, ios 0x261d24;
    virtual bool isSecureTextEntry() = imac 0x2696f0, m1 0x210908, ios 0x261d70;
    virtual void setString(const char* text) = imac 0x269250, m1 0x2104d0, ios 0x261a5c;
    virtual const char* getString() = imac 0x2694f0, m1 0x210728, ios 0x261c14;
    virtual bool attachWithIME() = imac 0x268830, m1 0x20fa64, ios 0x261228;
    virtual bool detachWithIME() = imac 0x2688b0, m1 0x20faf0, ios 0x261278;
    virtual bool canAttachWithIME() = imac 0x268930, m1 0x20fb7c, ios 0x2612c8;
    virtual bool canDetachWithIME() = imac 0x268980, m1 0x20fbe8, ios 0x261334;
    virtual void insertText(const char* text, int len, cocos2d::enumKeyCodes keyCode) = m1 0x20fc54;
    virtual void deleteBackward() = m1 0x210090;
    virtual void deleteForward() = imac 0x268d70, m1 0x210030, ios 0x2616d4;
    virtual const char* getContentText() = imac 0x269140, m1 0x2103c8, ios 0x261954;

    bool initWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize) = imac 0x2686f0, m1 0x20f940, ios inline;
    bool initWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize) = imac 0x268500, m1 0x20f740, ios inline;

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
    CCTexture2D() = imac 0x46c3b0, m1 0x3d7c10, ios 0x1a9590;
    // CCTexture2D(cocos2d::CCTexture2D const&);
    virtual ~CCTexture2D() = imac 0x46c470, m1 0x3d7cd8, ios 0x1a95f8;

    static cocos2d::CCTexture2DPixelFormat defaultAlphaPixelFormat() = imac 0x46dab0, m1 0x3d9254, ios 0x1aa270;
    static void PVRImagesHavePremultipliedAlpha(bool) = imac 0x46d8e0;
    static void setDefaultAlphaPixelFormat(cocos2d::CCTexture2DPixelFormat) = imac 0x46daa0, m1 0x3d9248, ios 0x1aa264;

    virtual cocos2d::CCTexture2DPixelFormat getPixelFormat() = imac 0x46c560, m1 0x3d7db4, ios 0x1a9658;
    virtual unsigned int getPixelsWide() = imac 0x46c570, m1 0x3d7dbc, ios 0x1a9660;
    virtual unsigned int getPixelsHigh() = imac 0x46c580, m1 0x3d7dc4, ios 0x1a9668;
    virtual unsigned int getName() = imac 0x46c590, m1 0x3d7dcc, ios 0x1a9670;
    virtual float getMaxS() = imac 0x46c620, m1 0x3d7e34, ios 0x1a96d8;
    virtual void setMaxS(float) = imac 0x46c630, m1 0x3d7e3c, ios 0x1a96e0;
    virtual float getMaxT() = imac 0x46c640, m1 0x3d7e44, ios 0x1a96e8;
    virtual void setMaxT(float) = imac 0x46c650, m1 0x3d7e4c, ios 0x1a96f0;
    virtual cocos2d::CCSize getContentSize() = imac 0x46c5a0, m1 0x3d7dd4, ios 0x1a9678;
    virtual cocos2d::CCGLProgram* getShaderProgram() = imac 0x46c660, m1 0x3d7e54, ios 0x1a96f8;
    virtual void setShaderProgram(cocos2d::CCGLProgram*) = imac 0x46c670, m1 0x3d7e5c, ios 0x1a9700;

    unsigned int bitsPerPixelForFormat() = imac 0x46dac0, m1 0x3d9260, ios inline;
    unsigned int bitsPerPixelForFormat(cocos2d::CCTexture2DPixelFormat) = imac 0x46ca10, m1 0x3d81bc, ios 0x1a9a20;
    char const* description() = imac 0x46ca30, m1 0x3d81dc, ios inline;
    void drawAtPoint(cocos2d::CCPoint const&) = imac 0x46d530, m1 0x3d8ce0, ios inline;
    void drawInRect(cocos2d::CCRect const&) = imac 0x46d640, m1 0x3d8df8, ios inline;
    void generateMipmap() = imac 0x46d8f0, m1 0x3d9094, ios inline;
    cocos2d::CCSize const& getContentSizeInPixels() = imac 0x46c610, m1 0x3d7e2c, ios 0x1a96d0;
    bool hasMipmaps() = imac 0x46d930, m1 0x3d90e4, ios inline;
    bool hasPremultipliedAlpha() = imac 0x46c700, m1 0x3d7ed4, ios 0x1a973c;
    bool initPremultipliedATextureWithImage(cocos2d::CCImage*, unsigned int, unsigned int) = imac 0x46cad0, m1 0x3d829c, ios 0x1a9ab0;
    bool initWithData(void const*, cocos2d::CCTexture2DPixelFormat, unsigned int, unsigned int, cocos2d::CCSize const&) = imac 0x46c710, m1 0x3d7edc, ios 0x1a9744;
    bool initWithETCFile(char const*) = imac 0x46d810, m1 0x3d8fc0, ios 0x1aa058;
    bool initWithImage(cocos2d::CCImage*) = imac 0x46ca70, m1 0x3d8220, ios 0x1a9a40;
    bool initWithPVRFile(char const*) = imac 0x46d730, m1 0x3d8eec, ios 0x1a9f84;
    bool initWithString(char const*, cocos2d::ccFontDefinition*) = imac 0x46d520, m1 0x3d8cd8, ios 0x1a9d70;
    bool initWithString(char const*, char const*, float) = imac 0x46d380, m1 0x3d8b1c, ios inline;
    bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment) = imac 0x46d3e0, m1 0x3d8b8c, ios inline;
    void* keepData(void*, unsigned int) = imac 0x46c6f0, m1 0x3d7ecc, ios inline;
    void releaseData(void*) = imac 0x46c6e0, m1 0x3d7ec4, ios inline;
    void releaseGLTexture() = imac 0x46c6b0, m1 0x3d7e98, ios inline;
    void setAliasTexParameters() = imac 0x46d9d0, m1 0x3d9184, ios 0x1aa1c4;
    void setAntiAliasTexParameters() = imac 0x46da20, m1 0x3d91d4, ios 0x1aa214;
    void setTexParameters(cocos2d::ccTexParams*) = imac 0x46d940, m1 0x3d90ec, ios 0x1aa12c;
    char const* stringForFormat() = imac 0x46da70, m1 0x3d9224, ios inline;
}

[[link(win, android)]]
class cocos2d::CCTextureAtlas : cocos2d::CCObject {
    // void setDirty(bool);
    // CCTextureAtlas(cocos2d::CCTextureAtlas const&);
    CCTextureAtlas() = imac 0x4a5980, m1 0x40c8f4, ios 0x305870;
    virtual ~CCTextureAtlas() = imac 0x4a59c0, m1 0x40c924, ios 0x3058a0;

    static cocos2d::CCTextureAtlas* create(char const*, unsigned int) = imac 0x4a5b10, m1 0x40ca24, ios inline;
    static cocos2d::CCTextureAtlas* createWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x4a5c10, m1 0x40cb44, ios inline;

    virtual unsigned int getTotalQuads() = imac 0x4a5a80, m1 0x40c9b8, ios 0x305934;
    virtual unsigned int getCapacity() = imac 0x4a5a90, m1 0x40c9c0, ios 0x30593c;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x4a5aa0, m1 0x40c9c8, ios 0x305944;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x4a5ab0, m1 0x40c9d0, ios 0x30594c;
    virtual cocos2d::ccV3F_C4B_T2F_Quad* getQuads() = imac 0x4a5af0, m1 0x40ca0c, ios 0x305988;
    virtual void setQuads(cocos2d::ccV3F_C4B_T2F_Quad*) = imac 0x4a5b00, m1 0x40ca1c, ios 0x305998;

    char const* description() = imac 0x4a6530, m1 0x40cf24, ios inline;
    void drawNumberOfQuads(unsigned int) = imac 0x4a7350, m1 0x40d784, ios inline;
    void drawNumberOfQuads(unsigned int, unsigned int) = imac 0x4a7270, m1 0x40d69c, ios 0x305f58;
    void drawQuads() = imac 0x4a7260, m1 0x40d690, ios 0x305f4c;
    void fillWithEmptyQuadsFromIndex(unsigned int, unsigned int) = imac 0x4a70f0, m1 0x40d64c, ios inline;
    void increaseTotalQuadsWith(unsigned int) = imac 0x4a6f80, m1 0x40d530, ios inline;
    bool initWithFile(char const*, unsigned int) = imac 0x4a5bc0, m1 0x40cae8, ios inline;
    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x4a5cb0, m1 0x40cbf4, ios 0x3059a0;
    void insertQuad(cocos2d::ccV3F_C4B_T2F_Quad*, unsigned int) = imac 0x4a6640, m1 0x40d01c, ios 0x305cec;
    void insertQuadFromIndex(unsigned int, unsigned int) = imac 0x4a68d0, m1 0x40d184, ios inline;
    void insertQuads(cocos2d::ccV3F_C4B_T2F_Quad*, unsigned int, unsigned int) = imac 0x4a66f0, m1 0x2a6924, ios inline;
    // bool isDirty();
    void listenBackToForeground(cocos2d::CCObject*) = imac 0x4a6510, m1 0x40cefc, ios inline;
    void mapBuffers() = imac 0x4a6550, m1 0x40cf50, ios 0x305c20;
    void moveQuadsFromIndex(unsigned int, unsigned int) = imac 0x4a70b0, m1 0x40d62c, ios inline;
    void moveQuadsFromIndex(unsigned int, unsigned int, unsigned int) = imac 0x4a6fa0, m1 0x40d550, ios inline;
    void removeAllQuads() = imac 0x4a6a70, m1 0x40d2d8, ios 0x305de8;
    void removeQuadAtIndex(unsigned int) = imac 0x4a69c0, m1 0x40d228, ios 0x305d8c;
    void removeQuadsAtIndex(unsigned int, unsigned int) = imac 0x4a6a20, m1 0x40d284, ios inline;
    bool resizeCapacity(unsigned int) = imac 0x4a6a80, m1 0x40d2e0, ios 0x305df0;
    void setupIndices() = imac 0x4a60f0, m1 0x40cd78, ios 0x305a9c;
    [[missing(mac, ios)]]
    void setupVBO();
    [[missing(win, android)]]
    void setupVBOandVAO() = imac 0x4a63e0, m1 0x40cde8, ios 0x305b0c;
    void updateQuad(cocos2d::ccV3F_C4B_T2F_Quad*, unsigned int) = imac 0x4a65e0, m1 0x40cfd8, ios 0x305ca8;
}

[[link(win, android)]]
class cocos2d::CCTextureCache : cocos2d::CCObject {
    // CCTextureCache(cocos2d::CCTextureCache const&);
    CCTextureCache() = imac 0x6bda80, m1 0x5d6820, ios 0x13b034;
    virtual ~CCTextureCache() = imac 0x6bdb80, m1 0x5d6920, ios 0x13b0a8;

    static void purgeSharedTextureCache() = imac 0x6bdc80, m1 0x5d6a14, ios 0x13b114;
    static void reloadAllTextures() = imac 0x6c01d0, ios inline;
    static cocos2d::CCTextureCache* sharedTextureCache() = imac 0x6bd9d0, m1 0x5d6764, ios 0x13afe4;

    cocos2d::CCTexture2D* addETCImage(char const*);
    cocos2d::CCTexture2D* addImage(char const*, bool) = imac 0x793c0, m1 0x5d792c, ios 0x13bbcc;
    void addImageAsync(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler, int, cocos2d::CCTexture2DPixelFormat) = imac 0x6bde90, m1 0x5d6c00, ios 0x13b174;
    void addImageAsyncCallBack(float) = imac 0x6be9a0, m1 0x59e384, ios 0x13b9b4;
    cocos2d::CCTexture2D* addPVRImage(char const*);
    cocos2d::CCTexture2D* addUIImage(cocos2d::CCImage*, char const*) = imac 0x6bfaa0, m1 0x5d87bc, ios 0x13c580;
    char const* description() = imac 0x6bdcb0, m1 0x5d6a40, ios inline;
    void dumpCachedTextureInfo() = imac 0x6c01e0, m1 0x5d8f64, ios inline;
    void prepareAsyncLoading() = imac 0x6bde50, m1 0x5d6bcc, ios 0x13b140;
    bool reloadTexture(char const*) = imac 0x6bfd30, m1 0x5d8a50, ios inline;
    void removeAllTextures() = imac 0x6bfe50, ios inline;
    void removeTexture(cocos2d::CCTexture2D*) = imac 0x6bfff0, m1 0x5d8d3c, ios inline;
    void removeTextureForKey(char const*) = imac 0x617e90, m1 0x5d8d74, ios 0x13c710;
    void removeUnusedTextures() = imac 0x6bfe60, m1 0x5d8bac, ios inline;
    cocos2d::CCDictionary* snapshotTextures() = imac 0x6bdce0, m1 0x5d6a70, ios inline;
    cocos2d::CCTexture2D* textureForKey(char const*) = m1 0x5d8e04, imac 0x6bfaa0;
}

[[link(win, android)]]
class cocos2d::CCTextureETC : cocos2d::CCObject {
    CCTextureETC() = imac 0x1ed200, m1 0x19f280, ios 0x227c70;
    virtual ~CCTextureETC() = imac 0x1ed230, m1 0x19f2a8, ios inline;

    unsigned int getHeight() const = imac 0x1ed2a0, m1 0x2904, ios 0x227cc8;
    unsigned int getName() const = imac 0x1ed280, m1 0x19f2cc, ios 0x227cb8;
    unsigned int getWidth() const = imac 0x1ed290, m1 0x28fc, ios 0x227cc0;
    bool initWithFile(char const*) = imac 0x1ed270, m1 0x19f2c4;
    bool loadTexture(char const*) = imac 0x1ed2b0, m1 0x19f2e4, ios inline;
}

[[link(android)]]
class cocos2d::CCTexturePVR : cocos2d::CCObject {
    CCTexturePVR() = win 0x142a50, imac 0x2715f0, m1 0x218088, ios 0x412b64;
    virtual ~CCTexturePVR() = win inline, imac 0x271620, m1 0x2180b4, ios 0x412b90;

    static cocos2d::CCTexturePVR* create(char const*) = win inline, imac 0x2722d0, m1 0x218bd0, ios inline;

    bool createGLTexture() = win 0x142af0, imac 0x271c60, m1 0x2185fc, ios 0x412fcc;
    bool initWithContentsOfFile(char const*) = win 0x9999999, imac 0x271fa0, m1 0x2188bc, ios 0x41319c;
    bool unpackPVRv2Data(unsigned char*, unsigned int) = win 0x9999999, imac 0x271710, m1 0x218184, ios 0x412bec;
    bool unpackPVRv3Data(unsigned char*, unsigned int) = win 0x143350, imac 0x271980, m1 0x2183a4, ios 0x412dfc;
}

[[link(win, android)]]
class cocos2d::CCThread {
    ~CCThread() = imac 0x3c5d00, m1 0x34a140, ios 0x3eb928;

    void createAutoreleasePool() = imac 0x3c5d20, m1 0x34a16c, ios 0x1f7b74;
}

[[link(win, android)]]
class cocos2d::CCTiledGrid3D : cocos2d::CCGridBase {
    CCTiledGrid3D();
    virtual ~CCTiledGrid3D() = imac 0x4df200, m1 0x43ea08;

    static cocos2d::CCTiledGrid3D* create(cocos2d::CCSize const&) = imac 0x4df3b0, m1 0x43eb70;
    static cocos2d::CCTiledGrid3D* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = imac 0x4df2f0, m1 0x43eab4;

    virtual void blit() = imac 0x4df460, m1 0x43ec3c;
    virtual void reuse() = imac 0x4dfb20, m1 0x43eff0;
    virtual void calculateVertexPoints() = imac 0x4df500, m1 0x43ece0;

    cocos2d::ccQuad3 originalTile(cocos2d::CCPoint const&) = imac 0x4dfa80, m1 0x43ef78;
    void setTile(cocos2d::CCPoint const&, cocos2d::ccQuad3 const&) = imac 0x4dfa30, m1 0x43ef3c;
    cocos2d::ccQuad3 tile(cocos2d::CCPoint const&) = imac 0x4dfad0, m1 0x43efb4;
}

[[link(win, android)]]
class cocos2d::CCTiledGrid3DAction : cocos2d::CCGridAction {
    static cocos2d::CCTiledGrid3DAction* create(float, cocos2d::CCSize const&) = imac 0x1ed750, m1 0x19f7b4;

    virtual cocos2d::CCGridBase* getGrid() = imac 0x1ed6b0, m1 0x19f704;

    cocos2d::ccQuad3 originalTile(cocos2d::CCPoint const&) = imac 0x1ed6f0, m1 0x19f744;
    void setTile(cocos2d::CCPoint const&, cocos2d::ccQuad3 const&) = imac 0x1ed720, m1 0x19f77c;
    cocos2d::ccQuad3 tile(cocos2d::CCPoint const&) = imac 0x1ed6c0, m1 0x19f70c;
}

[[link(win, android)]]
class cocos2d::CCTileMapAtlas : cocos2d::CCAtlasNode {
    CCTileMapAtlas() = imac 0x2110f0, m1 0x1c05d0;
    virtual ~CCTileMapAtlas() = imac 0x211140, m1 0x1c0608;

    static cocos2d::CCTileMapAtlas* create(char const*, char const*, int, int) = imac 0x210c70, m1 0x1c0024;

    virtual cocos2d::sImageTGA* getTGAInfo() = imac 0x2119c0, m1 0x21c7bc;
    virtual void setTGAInfo(cocos2d::sImageTGA*) = imac 0x2119b0, m1 0x1c0d4c;
    virtual void updateAtlasValues() = imac 0x211780, m1 0x1c0b10;

    void calculateItemsToRender() = imac 0x211000, m1 0x1c0488;
    bool initWithTileFile(char const*, char const*, int, int) = imac 0x210d80, m1 0x1c0130;
    void loadTGAfile(char const*) = imac 0x210f80, m1 0x1c03e0;
    void releaseMap() = imac 0x211290, m1 0x1c0714;
    void setTile(cocos2d::ccColor3B const&, cocos2d::CCPoint const&) = imac 0x2112e0, m1 0x1c0750;
    cocos2d::ccColor3B tileAt(cocos2d::CCPoint const&) = imac 0x211740, m1 0x1c0ad8;
    void updateAtlasValueAt(cocos2d::CCPoint const&, cocos2d::ccColor3B const&, unsigned int) = imac 0x211450, m1 0x1c08c0;
}

[[link(win, android)]]
class cocos2d::CCTime {
    static int gettimeofdayCocos2d(cocos2d::cc_timeval*, void*) = imac 0x30c4d0, m1 0x29f3c0, ios 0x26a5cc;
    static double timersubCocos2d(cocos2d::cc_timeval*, cocos2d::cc_timeval*) = imac 0x30c4f0, m1 0x29f3e0, ios 0x26a5ec;
}

[[link(win, android)]]
class cocos2d::CCTimer : cocos2d::CCObject {
    CCTimer() = imac 0x435730, m1 0x3ab860, ios inline;

    static cocos2d::CCTimer* timerWithScriptHandler(int, float) = imac 0x435900, m1 0x3aba18, ios inline;
    static cocos2d::CCTimer* timerWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE) = imac 0x435780, m1 0x3ab8a0, ios inline;
    static cocos2d::CCTimer* timerWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE, float) = imac 0x435850, m1 0x3ab970, ios inline;

    virtual void update(float) = imac 0x4359e0, m1 0x3abae4, ios 0x23cde4;

    float getInterval() const = imac 0x435d80, m1 0x3abf08, ios inline;
    cocos2d::SEL_SCHEDULE getSelector() const = imac 0x435da0, m1 0x3abf18, ios inline;
    bool initWithScriptHandler(int, float) = imac 0x435990, m1 0x3abaa0, ios inline;
    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE) = imac 0x4359b0, m1 0x3abab8, ios inline;
    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE, float, unsigned int, float) = imac 0x435810, m1 0x3ab938, ios inline;
    void setInterval(float) = imac 0x435d90, m1 0x3abf10, ios inline;
}

[[link(win, android)]]
class cocos2d::CCTintBy : cocos2d::CCActionInterval {
    static cocos2d::CCTintBy* create(float, short, short, short) = imac 0x3a4630, m1 0x32c190;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a4740, m1 0x32c270;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a4860, m1 0x32c370;
    virtual void update(float) = imac 0x3a48d0, m1 0x32c3e8;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a49a0, m1 0x32c4b8;

    bool initWithDuration(float, short, short, short) = imac 0x3a4700, m1 0x32c240;
}

[[link(win, android)]]
class cocos2d::CCTintTo : cocos2d::CCActionInterval {
    static cocos2d::CCTintTo* create(float, unsigned char, unsigned char, unsigned char) = imac 0x3a42c0, m1 0x32be90, ios 0x21e3a0;

    // CCTintTo(cocos2d::CCTintTo const&);
    // CCTintTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a43e0, m1 0x32bf6c, ios 0x21e44c;
    virtual void update(float) = imac 0x3a4550, m1 0x32c0cc, ios 0x21e5a8;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a44f0, m1 0x32c060, ios 0x21e53c;

    bool initWithDuration(float, unsigned char, unsigned char, unsigned char) = imac 0x3a4390, m1 0x32bf3c, ios inline;
}

[[link(win, android)]]
class cocos2d::CCTMXLayer : cocos2d::CCSpriteBatchNode {
    CCTMXLayer() = imac 0x243d00, m1 0x1ee2d0;
    virtual ~CCTMXLayer() = imac 0x243d90, m1 0x1ee350;

    static cocos2d::CCTMXLayer* create(cocos2d::CCTMXTilesetInfo*, cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*) = imac 0x2437f0, m1 0x1ede60;

    virtual cocos2d::CCTMXTilesetInfo* getTileSet() = imac 0x243e80, m1 0x1ee404;
    virtual void setTileSet(cocos2d::CCTMXTilesetInfo*) = imac 0x243e90, m1 0x1ee40c;
    virtual cocos2d::CCDictionary* getProperties() = imac 0x2457e0, m1 0x1efab8;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x2457f0, m1 0x1efac0;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x245610, m1 0x1ef970;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x245620, m1 0x1ef974;

    cocos2d::CCSprite* appendTileForGID(unsigned int, cocos2d::CCPoint const&) = imac 0x244380, m1 0x1ee85c;
    unsigned int atlasIndexForExistantZ(unsigned int) = imac 0x244e80, m1 0x1ef280;
    unsigned int atlasIndexForNewZ(int) = imac 0x245120, m1 0x1ef4cc;
    cocos2d::CCPoint calculateLayerOffset(cocos2d::CCPoint const&) = imac 0x243c20, m1 0x1ee1fc;
    bool initWithTilesetInfo(cocos2d::CCTMXTilesetInfo*, cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*) = imac 0x243970, m1 0x1edfbc;
    cocos2d::CCSprite* insertTileForGID(unsigned int, cocos2d::CCPoint const&) = imac 0x244f10, m1 0x1ef304;
    void parseInternalProperties() = imac 0x244270, m1 0x1ee734;
    cocos2d::CCPoint positionAt(cocos2d::CCPoint const&) = imac 0x244890, m1 0x1eed40;
    cocos2d::CCPoint positionForHexAt(cocos2d::CCPoint const&) = imac 0x245760, m1 0x1efa60;
    cocos2d::CCPoint positionForIsoAt(cocos2d::CCPoint const&) = imac 0x2456e0, m1 0x1efa0c;
    cocos2d::CCPoint positionForOrthoAt(cocos2d::CCPoint const&) = imac 0x245690, m1 0x1ef9e0;
    cocos2d::CCString* propertyNamed(char const*) = imac 0x244500;
    void releaseMap() = imac 0x243ed0, m1 0x1ee448;
    void removeTileAt(cocos2d::CCPoint const&) = imac 0x2454d0, m1 0x1ef844;
    cocos2d::CCSprite* reusedTileWithRect(cocos2d::CCRect) = imac 0x244ae0, m1 0x1eef28;
    void setTileGID(unsigned int, cocos2d::CCPoint const&) = imac 0x2452b0, m1 0x1ef644;
    void setTileGID(unsigned int, cocos2d::CCPoint const&, cocos2d::ccTMXTileFlags) = imac 0x2452c0, m1 0x1ef64c;
    void setupTiles() = imac 0x243f20, m1 0x1ee484;
    void setupTileSprite(cocos2d::CCSprite*, cocos2d::CCPoint, unsigned int) = imac 0x2445e0, m1 0x1eea90;
    cocos2d::CCSprite* tileAt(cocos2d::CCPoint const&) = imac 0x244ba0, m1 0x1eeff4;
    unsigned int tileGIDAt(cocos2d::CCPoint const&) = imac 0x244e50, m1 0x1ef260;
    unsigned int tileGIDAt(cocos2d::CCPoint const&, cocos2d::ccTMXTileFlags*) = imac 0x244ed0, m1 0x1ef2d8;
    cocos2d::CCSprite* updateTileForGID(unsigned int, cocos2d::CCPoint const&) = imac 0x245160, m1 0x1ef508;
    int vertexZForPos(cocos2d::CCPoint const&) = imac 0x244a60, m1 0x1eeeb8;
}

[[link(win, android)]]
class cocos2d::CCTMXLayerInfo : cocos2d::CCObject {
    CCTMXLayerInfo() = imac 0x1e5960, m1 0x42afc8;
    virtual ~CCTMXLayerInfo() = imac 0x4c8420, m1 0x42b080;

    virtual cocos2d::CCDictionary* getProperties() = imac 0x4c8570, m1 0x42b1f0;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x4c8580, m1 0x42b1f8;
}

[[link(win, android)]]
class cocos2d::CCTMXMapInfo : cocos2d::CCObject, cocos2d::CCSAXDelegator {
    CCTMXMapInfo() = imac 0x4c8e50, m1 0x42bacc;
    virtual ~CCTMXMapInfo() = imac 0x4c8ef0, m1 0x42bb5c;

    static cocos2d::CCTMXMapInfo* formatWithTMXFile(char const*) = imac 0x4c8830, m1 0x42b4e0;
    static cocos2d::CCTMXMapInfo* formatWithXML(char const*, char const*) = imac 0x4c8a40, m1 0x42b6d0;

    virtual cocos2d::CCArray* getLayers() = imac 0x4c9000;
    virtual void setLayers(cocos2d::CCArray*) = imac 0x4c9010;
    virtual cocos2d::CCArray* getTilesets() = imac 0x4c9050;
    virtual void setTilesets(cocos2d::CCArray*) = imac 0x4c9060;
    virtual cocos2d::CCArray* getObjectGroups() = imac 0x4c90a0, m1 0x42bcc0;
    virtual void setObjectGroups(cocos2d::CCArray*) = imac 0x4c90b0, m1 0x42bcc8;
    virtual cocos2d::CCDictionary* getProperties() = imac 0x4c90f0, m1 0x42bd04;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x4c9100, m1 0x42bd0c;
    virtual void startElement(void*, char const*, char const**) = imac 0x4c9190, m1 0x42bd8c;
    virtual void endElement(void*, char const*) = imac 0x4cc330, m1 0x42e6e0;
    virtual void textHandler(void*, char const*, int) = imac 0x4cc770, m1 0x42eb58;

    cocos2d::CCDictionary* getTileProperties() = imac 0x4c9140, m1 0x42bd48;
    bool initWithTMXFile(char const*) = imac 0x4c8a00, m1 0x42b688;
    bool initWithXML(char const*, char const*) = imac 0x4c8b50, m1 0x42b7e0;
    void internalInit(char const*, char const*) = imac 0x4c8b80, m1 0x42b810;
    bool parseXMLFile(char const*) = imac 0x4c8d70, m1 0x42b9e0;
    bool parseXMLString(char const*) = imac 0x4c8cc0, m1 0x42b930;
    void setTileProperties(cocos2d::CCDictionary*) = imac 0x4c9150, m1 0x42bd50;
}

[[link(win, android)]]
class cocos2d::CCTMXObjectGroup : cocos2d::CCObject {
    CCTMXObjectGroup() = imac 0x495240, m1 0x3fd6dc;
    virtual ~CCTMXObjectGroup() = imac 0x495300, m1 0x3fd790;

    virtual cocos2d::CCDictionary* getProperties() = imac 0x495640, m1 0x3fdb20;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x495650, m1 0x3fdb28;
    virtual cocos2d::CCArray* getObjects() = imac 0x495690, m1 0x3fdb64;
    virtual void setObjects(cocos2d::CCArray*) = imac 0x4956a0, m1 0x3fdb6c;

    cocos2d::CCDictionary* objectNamed(char const*) = imac 0x495420, m1 0x3fd8d0;
    cocos2d::CCString* propertyNamed(char const*) = imac 0x495560;
}

[[link(win, android)]]
class cocos2d::CCTMXTiledMap : cocos2d::CCNode {
    CCTMXTiledMap() = imac 0x5192c0, m1 0x473e14;
    virtual ~CCTMXTiledMap() = imac 0x519330;

    static cocos2d::CCTMXTiledMap* create(char const*) = imac 0x518dd0, m1 0x473934;
    static cocos2d::CCTMXTiledMap* createWithXML(char const*, char const*) = imac 0x518fa0, m1 0x473b0c;

    virtual cocos2d::CCArray* getObjectGroups() = imac 0x519460, m1 0x473f80;
    virtual void setObjectGroups(cocos2d::CCArray*) = imac 0x519470, m1 0x473f88;
    virtual cocos2d::CCDictionary* getProperties() = imac 0x5194b0, m1 0x473fc4;
    virtual void setProperties(cocos2d::CCDictionary*) = imac 0x5194c0, m1 0x473fcc;

    void buildWithMapInfo(cocos2d::CCTMXMapInfo*) = imac 0x5190f0, m1 0x473c64;
    bool initWithTMXFile(char const*) = imac 0x518f40, m1 0x473aa0;
    bool initWithXML(char const*, char const*) = imac 0x519090, m1 0x473bf4;
    cocos2d::CCTMXLayer* layerNamed(char const*) = imac 0x519760, m1 0x474244;
    cocos2d::CCTMXObjectGroup* objectGroupNamed(char const*) = imac 0x519830, m1 0x4742f8;
    cocos2d::CCTMXLayer* parseLayer(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*) = imac 0x519500, m1 0x474008;
    cocos2d::CCDictionary* propertiesForGID(int) = imac 0x519b70, m1 0x474620;
    cocos2d::CCString* propertyNamed(char const*) = imac 0x519a90;
    cocos2d::CCTMXTilesetInfo* tilesetForLayer(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*) = imac 0x519640, m1 0x474134;
}

[[link(win, android)]]
class cocos2d::CCTMXTilesetInfo : cocos2d::CCObject {
    CCTMXTilesetInfo() = imac 0x4c85c0, m1 0x42b234;
    virtual ~CCTMXTilesetInfo() = imac 0x4c86a0;

    cocos2d::CCRect rectForGID(unsigned int) = imac 0x4c8770, m1 0x42b440;
}

[[link(win, android)]]
class cocos2d::CCToggleVisibility : cocos2d::CCActionInstant {
    static cocos2d::CCToggleVisibility* create() = imac 0x88dbc0, m1 0x781e04;

    virtual void update(float) = imac 0x88dc10, m1 0x781e5c;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x88dc40, m1 0x781e98;
}

[[link(win, android)]]
class cocos2d::CCTouch : cocos2d::CCObject {
    cocos2d::CCPoint getDelta() const = imac 0x1e880, m1 0x1a4b8, ios inline;
    cocos2d::CCPoint getLocation() const = imac 0x1e7f0, m1 0x1a434, ios 0x398d78;
    cocos2d::CCPoint getLocationInView() const = imac 0x1e790, m1 0x1a410, ios 0x398d6c;
    cocos2d::CCPoint getPreviousLocation() const = imac 0x1e820, m1 0x1a460, ios inline;
    cocos2d::CCPoint getPreviousLocationInView() const = imac 0x1e7b0, m1 0x1a41c, ios inline;
    cocos2d::CCPoint getStartLocation() const = imac 0x1e850, m1 0x1a48c, ios inline;
    cocos2d::CCPoint getStartLocationInView() const = imac 0x1e7d0, m1 0x1a428, ios inline;

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
    virtual ~CCTouchDispatcher() = imac 0x4c6c90;

    virtual void touchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x42aec8, ios 0x1cc77c;
    virtual void touchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4c8240, m1 0x42aec8, ios 0x1cc77c;
    virtual void touchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4c8280, m1 0x42aefc, ios 0x1cc7b0;
    virtual void touchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4c82c0, m1 0x42af30, ios 0x1cc7e4;

    void addPrioTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool);
    void addStandardDelegate(cocos2d::CCTouchDelegate*, int) = imac 0x4c74d0, m1 0x42a168, ios 0x1cbf38;
    void addTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x4c7230, m1 0x429e88;
    void decrementForcePrio(int) = imac 0x4c6dd0, m1 0x4299e4, ios inline;
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCTouchDelegate*) = imac 0x4c7860, m1 0x42a548, ios 0x1cc1e4;
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCArray*, cocos2d::CCTouchDelegate*) = imac 0x4c77a0, m1 0x42a45c, ios 0x487c4;
    void forceAddHandler(cocos2d::CCTouchHandler*, cocos2d::CCArray*) = imac 0x4c7400, m1 0x42a094, ios 0x1cbe64;
    void forceRemoveAllDelegates() = imac 0x4c7800, m1 0x42a4e0, ios inline;
    void forceRemoveDelegate(cocos2d::CCTouchDelegate*) = imac 0x4c75f0, m1 0x42a29c, ios 0x1cbfcc;
    void incrementForcePrio(int) = imac 0x4c6db0, m1 0x4299c8, ios inline;
    bool init() = imac 0x4c6bd0, m1 0x429864, ios 0x1cb878;
    bool isDispatchEvents() = imac 0x4c6bb0, m1 0x429854, ios inline;
    bool isUsingForcePrio() = imac 0x4c7180, ios 0x1cbca0;
    void rearrangeHandlers(cocos2d::CCArray* handlers) = imac 0x4c7920, m1 0x42a624, ios inline;
    void registerForcePrio(cocos2d::CCObject*, int, int) = m1 0xe0880, imac 0x4c6df0;
    void removeAllDelegates() = imac 0x4c7830, m1 0x42a508, ios 0x1cc1a0;
    void removeDelegate(cocos2d::CCTouchDelegate*) = imac 0x4c76e0, m1 0x42a390, ios 0x1cc0b8;
    // int getTargetPrio() const;
    void setDispatchEvents(bool) = imac 0x4c6bc0, m1 0x42985c, ios 0x1cb870;
    void setPriority(int p1, cocos2d::CCTouchDelegate* p2) = imac 0x4c79a0, m1 0x42a6ac, ios inline;
    void touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int) = imac 0x4c7af0, m1 0x42a81c, ios 0x1cc2a4;
    void unregisterForcePrio(cocos2d::CCObject*) = imac 0x4c6f60, m1 0x429b98;

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
    virtual ~CCTouchHandler() = ios 0xc5b8;

    static cocos2d::CCTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int) = imac 0x475630, m1 0x3e010c, ios inline;

    // CCTouchHandler(cocos2d::CCTouchHandler const&);
    // CCTouchHandler();
    virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int) = imac 0x4756e0, m1 0x3e01b4, ios 0xc55c;

    cocos2d::CCTouchDelegate* getDelegate() = imac 0x475570, m1 0x3e0078, ios 0xc54c;
    int getEnabledSelectors() = imac 0x475610, m1 0x3e00fc, ios inline;
    int getPriority() = imac 0x4755f0, m1 0x3e00ec, ios 0xc554;
    void setDelegate(cocos2d::CCTouchDelegate*) = imac 0x475580, m1 0x3e0080, ios inline;
    void setEnalbedSelectors(int) = imac 0x475620, m1 0x3e0104, ios inline;
    void setPriority(int prio) = imac 0x475600, m1 0x3e00f4, ios inline;

    cocos2d::CCTouchDelegate* m_pDelegate;
    int m_nPriority;
    int m_nEnabledSelectors;
}

[[link(win, android)]]
class cocos2d::CCTouchScriptHandlerEntry : cocos2d::CCScriptHandlerEntry {
    virtual ~CCTouchScriptHandlerEntry() = imac 0x306af0, m1 0x299ed0, ios 0x30f1fc;

    static cocos2d::CCTouchScriptHandlerEntry* create(int, bool, int, bool) = imac 0x306a40, m1 0x299e24, ios 0x30f164;

    bool init(bool, int, bool) = imac 0x306ad0, m1 0x299ebc, ios inline;
}

[[link(win, android)]]
class cocos2d::CCTransitionCrossFade : cocos2d::CCTransitionScene {
    // CCTransitionCrossFade(cocos2d::CCTransitionCrossFade const&);
    CCTransitionCrossFade();
    virtual ~CCTransitionCrossFade();

    static cocos2d::CCTransitionCrossFade* create(float, cocos2d::CCScene*) = imac 0xa7890, m1 0x96a50;

    virtual void onEnter() = imac 0xa7920, m1 0x96af4;
    virtual void onExit() = imac 0xa7c60, m1 0x96e2c;
    virtual void draw() = imac 0xa7910, m1 0x96af0;
}

[[link(win, android)]]
class cocos2d::CCTransitionFade : cocos2d::CCTransitionScene {
    // CCTransitionFade(cocos2d::CCTransitionFade const&);
    CCTransitionFade() = ios inline;
    virtual ~CCTransitionFade() = imac 0xa7340, ios inline;

    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*) = imac 0xa74d0, m1 0x966b4, ios 0x264298;
    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::ccColor3B const&) = imac 0xa7430, m1 0x96618, ios 0x2641fc;

    virtual void onEnter() = imac 0xa75c0, m1 0x967a0, ios 0x264310;
    virtual void onExit() = imac 0xa76f0, m1 0x968dc, ios 0x264414;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xa75a0, m1 0x96778, ios 0x2642e8;
    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::ccColor3B const&) = imac 0xa7550, m1 0x96734, ios 0x2642a4;
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

    static cocos2d::CCTransitionFadeDown* create(float, cocos2d::CCScene*) = imac 0xa8d90, m1 0x97dbc;

    virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = imac 0xa8e20, m1 0x97e64;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeTR : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionFadeTR(cocos2d::CCTransitionFadeTR const&);
    CCTransitionFadeTR();
    virtual ~CCTransitionFadeTR();

    static cocos2d::CCTransitionFadeTR* create(float, cocos2d::CCScene*) = m1 0x97750;

    virtual void onEnter() = imac 0xa8700, m1 0x97800;
    virtual void sceneOrder() = imac 0xa86f0, m1 0x977f8;
    virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = imac 0xa8800, m1 0x978fc;
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

    virtual void onEnter() = m1 0x956bc;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipX : cocos2d::CCTransitionSceneOriented {
    // CCTransitionFlipX(cocos2d::CCTransitionFlipX const&);
    CCTransitionFlipX();
    virtual ~CCTransitionFlipX();

    static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = imac 0xa5bb0, m1 0x94fa0;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipY : cocos2d::CCTransitionSceneOriented {
    // CCTransitionFlipY(cocos2d::CCTransitionFlipY const&);
    CCTransitionFlipY();
    virtual ~CCTransitionFlipY();

    static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = m1 0x95330;
}

[[link(win, android)]]
class cocos2d::CCTransitionJumpZoom : cocos2d::CCTransitionScene {
    // CCTransitionJumpZoom(cocos2d::CCTransitionJumpZoom const&);
    CCTransitionJumpZoom();
    virtual ~CCTransitionJumpZoom();

    static cocos2d::CCTransitionJumpZoom* create(float, cocos2d::CCScene*) = imac 0xa3de0, m1 0x933f4;

    virtual void onEnter() = imac 0xa3e60, m1 0x93494;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInB : cocos2d::CCTransitionMoveInL {
    // CCTransitionMoveInB(cocos2d::CCTransitionMoveInB const&);
    CCTransitionMoveInB();
    virtual ~CCTransitionMoveInB();

    static cocos2d::CCTransitionMoveInB* create(float, cocos2d::CCScene*) = imac 0xa49c0, m1 0x93ef4;

    virtual void initScenes() = imac 0xa4a50, m1 0x93f9c;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInL : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionMoveInL(cocos2d::CCTransitionMoveInL const&);
    CCTransitionMoveInL() = ios inline;
    virtual ~CCTransitionMoveInL() = ios inline;

    static cocos2d::CCTransitionMoveInL* create(float, cocos2d::CCScene*) = imac 0xa41d0, m1 0x93788, ios inline;

    virtual void onEnter() = imac 0xa4260, m1 0x93830;
    virtual void initScenes() = imac 0xa4390, m1 0x9395c, ios inline;
    virtual cocos2d::CCActionInterval* action() = imac 0xa4330, m1 0x9390c, ios 0x26408c;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xa4370, m1 0x9394c, ios 0x2640cc;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInR : cocos2d::CCTransitionMoveInL {
    // CCTransitionMoveInR(cocos2d::CCTransitionMoveInR const&);
    CCTransitionMoveInR();
    virtual ~CCTransitionMoveInR();

    static cocos2d::CCTransitionMoveInR* create(float, cocos2d::CCScene*) = imac 0xa4540, m1 0x93acc;

    virtual void initScenes() = imac 0xa45d0, m1 0x93b74;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInT : cocos2d::CCTransitionMoveInL {
    // CCTransitionMoveInT(cocos2d::CCTransitionMoveInT const&);
    CCTransitionMoveInT() = ios inline;
    virtual ~CCTransitionMoveInT() = ios inline;

    static cocos2d::CCTransitionMoveInT* create(float, cocos2d::CCScene*) = imac 0xa4780, m1 0x93ce0, ios 0x2640f4;

    virtual void initScenes() = imac 0xa4810, m1 0x93d88, ios 0x26418c;
}

[[link(win, android)]]
class cocos2d::CCTransitionPageTurn : cocos2d::CCTransitionScene {
    CCTransitionPageTurn() = imac 0x3c5d40, m1 0x34a198;
    virtual ~CCTransitionPageTurn() = imac 0x3c5d80, m1 0x34a1d8;

    static cocos2d::CCTransitionPageTurn* create(float, cocos2d::CCScene*, bool) = imac 0x3c5dc0, m1 0x34a1f4;

    virtual bool initWithDuration(float, cocos2d::CCScene*, bool) = imac 0x3c5e40, m1 0x34a278;
    virtual void onEnter() = imac 0x3c5e80, m1 0x34a2a0;
    virtual void sceneOrder() = imac 0x3c5e60, m1 0x34a294;

    cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = imac 0x3c5fc0, m1 0x34a3b4;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgress : cocos2d::CCTransitionScene {
    CCTransitionProgress() = imac 0x278940, m1 0x21e564;

    static cocos2d::CCTransitionProgress* create(float, cocos2d::CCScene*) = imac 0x2789a0, m1 0x21e5ac;

    virtual void onEnter() = imac 0x278a30, m1 0x21e650;
    virtual void onExit() = imac 0x278be0, m1 0x21e800;
    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x278c50, m1 0x21e854;
    virtual void setupTransition() = imac 0x278c20, m1 0x21e83c;
    virtual void sceneOrder() = imac 0x278c10, m1 0x21e834;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressHorizontal : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressHorizontal* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x278fe0;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressInOut : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressInOut* create(float, cocos2d::CCScene*) = imac 0x2792a0, m1 0x21ef38;

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x279380, m1 0x21f030;
    virtual void sceneOrder() = imac 0x279340, m1 0x21f010;
    virtual void setupTransition() = imac 0x279350, m1 0x21f018;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressOutIn : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressOutIn* create(float, cocos2d::CCScene*) = m1 0x21f130;

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x279530, m1 0x21f208;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCCW : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressRadialCCW* create(float, cocos2d::CCScene*) = imac 0x278d30, m1 0x21e91c;

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = m1 0x21e85c;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCW : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressRadialCW* create(float, cocos2d::CCScene*) = imac 0x278dd0;

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = m1 0x21eacc;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressVertical : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressVertical* create(float, cocos2d::CCScene*) = imac 0x2790f0;

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = imac 0x279190;
}

[[link(win, android)]]
class cocos2d::CCTransitionRotoZoom : cocos2d::CCTransitionScene {
    // CCTransitionRotoZoom(cocos2d::CCTransitionRotoZoom const&);
    CCTransitionRotoZoom() = imac 0xa3950, m1 0x92fb0;
    virtual ~CCTransitionRotoZoom() = m1 0x93090;

    static cocos2d::CCTransitionRotoZoom* create(float, cocos2d::CCScene*) = imac 0xa3990, m1 0x92ff0;

    virtual void onEnter() = imac 0xa3b00, m1 0x93154;
}

[[link(win, android)]]
class cocos2d::CCTransitionScene : cocos2d::CCScene {
    // CCTransitionScene(cocos2d::CCTransitionScene const&);
    CCTransitionScene() = m1 0x92848, imac 0xa31c0, ios inline;
    virtual ~CCTransitionScene() = m1 0x92888, imac 0xa3200, ios 0x263bb8;

    static cocos2d::CCTransitionScene* create(float, cocos2d::CCScene*) = imac 0xa32f0, m1 0x9294c, ios inline;

    virtual void onEnter() = imac 0xa3680, m1 0x92d08, ios 0x263efc;
    virtual void onExit() = imac 0xa36d0, m1 0x92d5c, ios 0x263f50;
    virtual void cleanup() = imac 0xa3730, m1 0x92db0, ios 0x263fa4;
    virtual void draw() = imac 0xa3440, m1 0x92adc, ios 0x263cd0;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xa3370, m1 0x929ec, ios 0x263c10;
    virtual void sceneOrder() = imac 0xa3430, m1 0x92ad0, ios 0x263cc4;

    void finish() = imac 0xa3490, m1 0x92b30, ios 0x263d24;
    void hideOutShowIn() = imac 0xa3630, m1 0x92cbc, ios 0x263eb0;
    void setNewScene(float) = imac 0xa35c0, m1 0x92c5c, ios 0x263e50;
}

[[link(win, android)]]
class cocos2d::CCTransitionSceneOriented : cocos2d::CCTransitionScene {
    CCTransitionSceneOriented();
    virtual ~CCTransitionSceneOriented() = imac 0xa37b0;

    static cocos2d::CCTransitionSceneOriented* create(float, cocos2d::CCScene*, cocos2d::tOrientation) = imac 0xa38a0, m1 0x92ef8;

    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::tOrientation) = imac 0xa3920, m1 0x92f80;
}

[[link(win, android)]]
class cocos2d::CCTransitionShrinkGrow : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionShrinkGrow(cocos2d::CCTransitionShrinkGrow const&);
    CCTransitionShrinkGrow();
    virtual ~CCTransitionShrinkGrow();

    static cocos2d::CCTransitionShrinkGrow* create(float, cocos2d::CCScene*) = imac 0xa5830;

    virtual void onEnter() = imac 0xa58c0, m1 0x94cfc;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xa5a40, m1 0x94e84;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInB : cocos2d::CCTransitionSlideInL {
    // CCTransitionSlideInB(cocos2d::CCTransitionSlideInB const&);
    CCTransitionSlideInB();
    virtual ~CCTransitionSlideInB();

    static cocos2d::CCTransitionSlideInB* create(float, cocos2d::CCScene*) = imac 0xa5570, m1 0x949c8;

    virtual void sceneOrder() = imac 0xa5600, m1 0x94a70;
    virtual void initScenes() = imac 0xa5610, m1 0x94a7c;
    virtual cocos2d::CCActionInterval* action() = imac 0xa5680, m1 0x94ae0;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInL : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionSlideInL(cocos2d::CCTransitionSlideInL const&);
    CCTransitionSlideInL();
    virtual ~CCTransitionSlideInL() = m1 0x94048;

    static cocos2d::CCTransitionSlideInL* create(float, cocos2d::CCScene*);

    virtual void onEnter() = imac 0xa4c00, m1 0x9410c;
    virtual void sceneOrder() = imac 0xa4cf0, m1 0x94214;
    virtual void initScenes() = imac 0xa4d00, m1 0x9421c;
    virtual cocos2d::CCActionInterval* action() = imac 0xa4d70, m1 0x94280;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xa4dd0, m1 0x942e0;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInR : cocos2d::CCTransitionSlideInL {
    // CCTransitionSlideInR(cocos2d::CCTransitionSlideInR const&);
    CCTransitionSlideInR();
    virtual ~CCTransitionSlideInR();

    static cocos2d::CCTransitionSlideInR* create(float, cocos2d::CCScene*) = imac 0xa4ff0, m1 0x944b4;

    virtual void sceneOrder() = imac 0xa5080, m1 0x9455c;
    virtual void initScenes() = imac 0xa5090, m1 0x94568;
    virtual cocos2d::CCActionInterval* action() = imac 0xa50f0, m1 0x945c8;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInT : cocos2d::CCTransitionSlideInL {
    // CCTransitionSlideInT(cocos2d::CCTransitionSlideInT const&);
    CCTransitionSlideInT();
    virtual ~CCTransitionSlideInT();

    static cocos2d::CCTransitionSlideInT* create(float, cocos2d::CCScene*) = imac 0xa52b0, m1 0x94740;

    virtual void sceneOrder() = imac 0xa5340, m1 0x947e8;
    virtual void initScenes() = imac 0xa5350, m1 0x947f0;
    virtual cocos2d::CCActionInterval* action() = imac 0xa53b0, m1 0x94850;
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitCols : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionSplitCols(cocos2d::CCTransitionSplitCols const&);
    CCTransitionSplitCols();
    virtual ~CCTransitionSplitCols();

    static cocos2d::CCTransitionSplitCols* create(float, cocos2d::CCScene*) = imac 0xa8130;

    virtual void onEnter() = imac 0xa81c0, m1 0x9732c;
    virtual cocos2d::CCActionInterval* action() = imac 0xa82b0, m1 0x97440;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = imac 0xa82d0, m1 0x97454;
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitRows : cocos2d::CCTransitionSplitCols {
    // CCTransitionSplitRows(cocos2d::CCTransitionSplitRows const&);
    CCTransitionSplitRows();
    virtual ~CCTransitionSplitRows() = imac 0xa8370, m1 0x974bc;

    static cocos2d::CCTransitionSplitRows* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCActionInterval* action() = imac 0xa8460, m1 0x97580;
}

[[link(win, android)]]
class cocos2d::CCTransitionTurnOffTiles : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionTurnOffTiles(cocos2d::CCTransitionTurnOffTiles const&);
    CCTransitionTurnOffTiles();
    virtual ~CCTransitionTurnOffTiles();

    static cocos2d::CCTransitionTurnOffTiles* create(float, cocos2d::CCScene*) = m1 0x96fb0;

    virtual void onEnter() = imac 0xa7ec0, m1 0x97060;
    virtual void sceneOrder() = imac 0xa7eb0, m1 0x97058;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipAngular : cocos2d::CCTransitionSceneOriented {
    // CCTransitionZoomFlipAngular(cocos2d::CCTransitionZoomFlipAngular const&);
    CCTransitionZoomFlipAngular();
    virtual ~CCTransitionZoomFlipAngular();

    static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = m1 0x96220;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipX : cocos2d::CCTransitionSceneOriented {
    // CCTransitionZoomFlipX(cocos2d::CCTransitionZoomFlipX const&);
    CCTransitionZoomFlipX();
    virtual ~CCTransitionZoomFlipX();

    static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = imac 0xa6740, m1 0x95a54;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipY : cocos2d::CCTransitionSceneOriented {
    // CCTransitionZoomFlipY(cocos2d::CCTransitionZoomFlipY const&);
    CCTransitionZoomFlipY();
    virtual ~CCTransitionZoomFlipY();

    static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = m1 0x95e3c;
}

[[link(win, android)]]
class cocos2d::CCTurnOffTiles : cocos2d::CCTiledGrid3DAction {
    // CCTurnOffTiles(cocos2d::CCTurnOffTiles const&);
    // CCTurnOffTiles();
    virtual ~CCTurnOffTiles() = imac 0x89a5f0, m1 0x78dc68;

    static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&) = imac 0x89a2b0, m1 0x78d938;
    static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&, unsigned int) = imac 0x89a3a0, m1 0x78da24;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x89a4c0, m1 0x78db50;
    virtual void update(float) = imac 0x89a880, m1 0x78df44;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x89a770, m1 0x78ddf4;
    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int) = imac 0x89a490, m1 0x78db20;

    void shuffle(unsigned int*, unsigned int) = imac 0x89a6b0, m1 0x78dd28;
    void turnOffTile(cocos2d::CCPoint const&) = imac 0x89a740, m1 0x78ddc8;
    void turnOnTile(cocos2d::CCPoint const&) = imac 0x89a700, m1 0x78dd88;
}

[[link(win, android)]]
class cocos2d::CCTwirl : cocos2d::CCGrid3DAction {
    static cocos2d::CCTwirl* create(float, cocos2d::CCSize const&, cocos2d::CCPoint, unsigned int, float) = imac 0x26bd10, m1 0x212c50;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x26beb0, m1 0x212dec;
    virtual void update(float) = imac 0x26c040, m1 0x212f4c;

    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint, unsigned int, float) = imac 0x26be40, m1 0x212d80;
    void setPosition(cocos2d::CCPoint const&) = imac 0x26bea0, m1 0x212de4;
}

[[link(win, android)]]
class cocos2d::CCUserDefault {
    CCUserDefault() = imac 0x6adde0, m1 0x5c7dec;
    ~CCUserDefault() = imac 0x6add90, m1 0x5c7da4;

    static bool createXMLFile() = imac 0x6aeff0, m1 0x5c8db0;
    static std::string const& getXMLFilePath() = imac 0x6af000, m1 0x5c8db8;
    static void initXMLFilePath() = imac 0x6aef10, m1 0x5c8cd8;
    static bool isXMLFileExist() = imac 0x6aefa0, m1 0x5c8d5c;
    static void purgeSharedUserDefault() = imac 0x6ade20, m1 0x5c7e04, ios 0x47c850;
    static cocos2d::CCUserDefault* sharedUserDefault() = imac 0x6aee50, m1 0x5c8c20;

    void flush() = imac 0x6ae260, m1 0x5c8254;
    bool getBoolForKey(char const*) = imac 0x6ade40, m1 0x5c7e10;
    bool getBoolForKey(char const*, bool) = imac 0x6ade50, m1 0x5c7e18;
    double getDoubleForKey(char const*) = imac 0x6ae7b0, m1 0x427e80;
    double getDoubleForKey(char const*, double) = imac 0x6ae7c0, m1 0x427e88;
    float getFloatForKey(char const*) = imac 0x6ae520, m1 0x5c8530;
    float getFloatForKey(char const*, float) = imac 0x6ae530, m1 0x5c8538;
    int getIntegerForKey(char const*) = imac 0x6ae2a0, m1 0x5c8360;
    int getIntegerForKey(char const*, int) = imac 0x6ae2b0, m1 0x5c8368;
    std::string getStringForKey(char const*) = imac 0x6aea40, m1 0x5c88f8;
    std::string getStringForKey(char const*, std::string const&) = imac 0x6aea70, m1 0x5c8920;
    void setBoolForKey(char const*, bool) = imac 0x6ae180, m1 0x5c81c8;
    void setDoubleForKey(char const*, double) = imac 0x6ae950, m1 0x5c8864;
    void setFloatForKey(char const*, float) = imac 0x41e230, m1 0x5c8680;
    void setIntegerForKey(char const*, int) = imac 0x6ae440, m1 0x5c84a4;
    void setStringForKey(char const*, std::string const&) = imac 0x6aed60, m1 0x5c8b8c;
}

[[link(win, android)]]
class cocos2d::CCWaves : cocos2d::CCGrid3DAction {
    static cocos2d::CCWaves* create(float, cocos2d::CCSize const&, unsigned int, float, bool, bool) = imac 0x26b870, m1 0x21280c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x26b9e0, m1 0x212974;
    virtual void update(float) = imac 0x26bb40, m1 0x212abc;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float, bool, bool) = imac 0x26b980, m1 0x212918;
}

[[link(win, android)]]
class cocos2d::CCWaves3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCWaves3D* create(float, cocos2d::CCSize const&, unsigned int, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x2699e0, m1 0x210be8;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);
}

[[link(win, android)]]
class cocos2d::CCWavesTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCWavesTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float);

    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float) = imac 0x89aa50, m1 0x78e10c;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x89aa90, m1 0x78e150;
    virtual void update(float) = imac 0x89abb0, m1 0x78e268;
}

[[link(win, android)]]
class cocos2d::CCZone {
    CCZone(cocos2d::CCObject* object) = win inline, imac 0xe9aa0, m1 0xcb738, ios 0x2eefac;
}

[[link(win, android)]]
class cocos2d::extension::CCArrayForObjectSorting : cocos2d::CCArray {
    unsigned int indexOfSortedObject(cocos2d::extension::CCSortableObject*) = imac 0x4167d0, m1 0x38e8e0;
    void insertSortedObject(cocos2d::extension::CCSortableObject*) = imac 0x4166c0, m1 0x38e7c0;
    cocos2d::extension::CCSortableObject* objectWithObjectID(unsigned int) = imac 0x416c50, m1 0x38ee58;
    void removeSortedObject(cocos2d::extension::CCSortableObject*) = imac 0x416890, m1 0x38e9c8;
    void setObjectID_ofSortedObject(unsigned int, cocos2d::extension::CCSortableObject*) = imac 0x4169f0, m1 0x38eb70;
}

[[link(win, android)]]
class cocos2d::extension::CCControl : cocos2d::CCLayerRGBA {
    CCControl() = imac 0x33c440;
    virtual ~CCControl() = imac 0x33c760;

    static cocos2d::extension::CCControl* create() = imac 0x33c5a0, m1 0x2ce3c0, ios inline;

    virtual bool init() = imac 0x33c690, m1 0x2ce488, ios 0x238a30;
    virtual void onEnter() = imac 0x33cb00, m1 0x2ce7e4, ios 0x238bf4;
    virtual void onExit() = imac 0x33cb10, m1 0x2ce7e8, ios 0x238bf8;
    virtual void registerWithTouchDispatcher() = imac 0x33cab0, m1 0x2ce794, ios 0x238ba4;
    virtual void setOpacityModifyRGB(bool) = imac 0x33d5e0, m1 0x2cf238, ios 0x239038;
    virtual bool isOpacityModifyRGB() = imac 0x33d740, m1 0x2cf390, ios 0x2390e0;
    virtual void setEnabled(bool) = imac 0x33d830, m1 0x2cf460, ios 0x2391b0;
    virtual bool isEnabled() = imac 0x33d860, m1 0x2cf480, ios 0x2391d0;
    virtual void setSelected(bool) = imac 0x33d870, m1 0x2cf488, ios 0x2391d8;
    virtual bool isSelected() = imac 0x33d890, m1 0x2cf498, ios 0x2391e8;
    virtual void setHighlighted(bool) = imac 0x33d8a0, m1 0x2cf4a0, ios 0x2391f0;
    virtual bool isHighlighted() = imac 0x33d8c0, m1 0x2cf4b0;
    virtual void needsLayout() = imac 0x33d820, m1 0x2cf45c, ios 0x2391ac;
    virtual void sendActionsForControlEvents(unsigned int) = imac 0x33cb20, m1 0x2ce7ec, ios 0x238bfc;
    virtual void addTargetWithActionForControlEvents(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, unsigned int) = imac 0x33cdd0, m1 0x2cea94, ios 0x238df0;
    virtual void removeTargetWithActionForControlEvents(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, unsigned int) = imac 0x33d290, m1 0x2cef08, ios 0x238eb8;
    virtual cocos2d::CCPoint getTouchLocation(cocos2d::CCTouch*) = imac 0x33d760, m1 0x2cf3a0, ios 0x2390f0;
    virtual bool isTouchInside(cocos2d::CCTouch*) = imac 0x33d7b0, m1 0x2cf3ec, ios 0x23913c;

    void addHandleOfControlEvent(int, cocos2d::extension::CCControlEvent) = imac 0x33d930, m1 0x2cf52c, ios inline;
    void addTargetWithActionForControlEvent(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = imac 0x33d220, m1 0x2cee80, ios 0x238e68;
    cocos2d::CCArray* dispatchListforControlEvent(cocos2d::extension::CCControlEvent) = imac 0x33cd30, m1 0x2ce9e0, ios 0x238d94;
    int getHandleOfControlEvent(cocos2d::extension::CCControlEvent) = imac 0x33cd80, m1 0x2cea48, ios inline;
    bool hasVisibleParents() = imac 0x33d8d0, m1 0x2cf4b8, ios inline;
    void removeHandleOfControlEvent(cocos2d::extension::CCControlEvent) = imac 0x33da00, m1 0x2cf5ec, ios inline;
    void removeTargetWithActionForControlEvent(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = imac 0x33d440, m1 0x2cf070, ios 0x238f30;
}

[[link(win, android)]]
class cocos2d::extension::CCControlButton : cocos2d::extension::CCControl {
    CCControlButton() = imac 0x33e400, m1 0x2cfe74;
    virtual ~CCControlButton() = imac 0x33e5e0, m1 0x24261c;

    static cocos2d::extension::CCControlButton* create() = imac 0x340670, m1 0x2d1e8c;
    static cocos2d::extension::CCControlButton* create(cocos2d::extension::CCScale9Sprite*) = imac 0x33ef70, m1 0x2d07fc;
    static cocos2d::extension::CCControlButton* create(cocos2d::CCNode*, cocos2d::extension::CCScale9Sprite*) = imac 0x33ebf0, m1 0x2d0514;
    static cocos2d::extension::CCControlButton* create(std::string, char const*, float) = imac 0x33ed90, m1 0x2d065c;

    virtual void needsLayout() = imac 0x33fb60, m1 0x2d13e8;
    virtual void setEnabled(bool) = imac 0x33f0d0, m1 0x2d08f8;
    virtual void setSelected(bool) = imac 0x33f0f0, m1 0x2d0924;
    virtual void setHighlighted(bool) = imac 0x33f110, m1 0x2d0950;
    virtual cocos2d::CCSize getPreferredSize() = imac 0x33f2c0, m1 0x2d0b20;
    virtual void setPreferredSize(cocos2d::CCSize) = imac 0x33f200, m1 0x2d0a6c;
    virtual bool getZoomOnTouchDown() = imac 0x33f1f0, m1 0x2d0a64;
    virtual void setZoomOnTouchDown(bool) = imac 0x33f1e0, m1 0x2d0a5c;
    virtual cocos2d::CCPoint getLabelAnchorPoint() = imac 0x33f2f0, m1 0x2d0b34;
    virtual void setLabelAnchorPoint(cocos2d::CCPoint) = imac 0x33f310, m1 0x2d0b40;
    virtual unsigned char getOpacity() = imac 0x3404e0, m1 0x2d1d3c;
    virtual void setOpacity(unsigned char) = imac 0x340420, m1 0x2d1c90;
    virtual cocos2d::ccColor3B const& getColor() = imac 0x3405c0, m1 0x2d1df8;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x340500, m1 0x2d1d4c;
    virtual void setMargins(int, int) = imac 0x33f0b0, m1 0x2d08e4;
    virtual bool init() = imac 0x33e760, m1 0x2d00a8;
    virtual bool initWithLabelAndBackgroundSprite(cocos2d::CCNode*, cocos2d::extension::CCScale9Sprite*) = imac 0x33e7b0, m1 0x2d00f8;
    virtual bool initWithTitleAndFontNameAndFontSize(std::string, char const*, float) = imac 0x33ed40, m1 0x2d060c;
    virtual bool initWithBackgroundSprite(cocos2d::extension::CCScale9Sprite*) = imac 0x33ef20, m1 0x2d07b0;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x6bf00, m1 0x6514c;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x340220, m1 0x2d1a54;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x340360, m1 0x2d1bc4;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3405e0, m1 0x2d1e08;
    virtual cocos2d::CCString* getTitleForState(unsigned int) = imac 0x33f350, m1 0x2d0b88;
    virtual void setTitleForState(cocos2d::CCString*, unsigned int) = imac 0x33f3e0, m1 0x2d0c30;
    virtual cocos2d::ccColor3B const getTitleColorForState(unsigned int) = imac 0x33f450, m1 0x2d0ca8;
    virtual void setTitleColorForState(cocos2d::ccColor3B, unsigned int) = imac 0x33f4b0, m1 0x2d0d04;
    virtual cocos2d::CCNode* getTitleLabelForState(unsigned int) = imac 0x33f570, m1 0x2d0dcc;
    virtual void setTitleLabelForState(cocos2d::CCNode*, unsigned int) = imac 0x33f5b0, m1 0x2d0e0c;
    virtual void setTitleTTFForState(char const*, unsigned int) = imac 0x33f680, m1 0x2d0ef4;
    virtual char const* getTitleTTFForState(unsigned int) = imac 0x33f720, m1 0x2d0fac;
    virtual void setTitleTTFSizeForState(float, unsigned int) = imac 0x33f790, m1 0x2d1014;
    virtual float getTitleTTFSizeForState(unsigned int) = imac 0x33f810, m1 0x2d1088;
    virtual void setTitleBMFontForState(char const*, unsigned int) = imac 0x33f880, m1 0x2d10ec;
    virtual char const* getTitleBMFontForState(unsigned int) = imac 0x33f920, m1 0x2d11a0;
    virtual cocos2d::extension::CCScale9Sprite* getBackgroundSpriteForState(unsigned int) = imac 0x33f990, m1 0x2d1208;
    virtual void setBackgroundSpriteForState(cocos2d::extension::CCScale9Sprite*, unsigned int) = imac 0x33f9d0, m1 0x2d1248;
    virtual void setBackgroundSpriteFrameForState(cocos2d::CCSpriteFrame*, unsigned int) = imac 0x33fb30, m1 0x2d13ac;

    bool doesAdjustBackgroundImage() = imac 0x33f2e0, m1 0x2d0b2c;
    void setAdjustBackgroundImage(bool) = imac 0x33ebd0, m1 0x2d0504;
}

[[link(win, android)]]
class cocos2d::extension::CCControlColourPicker : cocos2d::extension::CCControl {
    CCControlColourPicker() = inline;
    virtual ~CCControlColourPicker() = inline;

    static cocos2d::extension::CCControlColourPicker* colourPicker() = imac 0x340f00, m1 0x2d25d0, ios 0x241a3c;

    virtual bool init() = imac 0x340880, m1 0x2d2068, ios 0x2415b0;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x341180, m1 0x2d27a4, ios 0x241b8c;
    virtual void setColorValue(cocos2d::ccColor3B const&) = imac 0x340fd0, m1 0x1fd6ec, ios 0x232df4;

    void colourSliderValueChanged(cocos2d::CCObject*, unsigned int) = imac 0x340cd0, m1 0x2d2420, ios 0x241924;
    cocos2d::ccColor3B const& getColorValue() const = inline;
    void hueSliderValueChanged(cocos2d::CCObject*, unsigned int) = imac 0x340ba0, m1 0x2d233c, ios 0x241844;
    void updateControlPicker() = imac 0x341120, m1 0x2d275c, ios inline;
    void updateHueAndControlPicker() = imac 0x340db0, m1 0x2d24dc, ios 0x2419dc;
}

[[link(win, android)]]
class cocos2d::extension::CCControlHuePicker : cocos2d::extension::CCControl {
    CCControlHuePicker() = imac 0x3419b0, ios 0x242a24;
    virtual ~CCControlHuePicker() = imac 0x341b10;

    static cocos2d::extension::CCControlHuePicker* create(cocos2d::CCNode*, cocos2d::CCPoint) = imac 0x341e00, m1 0x2d3114, ios 0x242b50;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x342510, m1 0x2d3760, ios 0x243098;
    virtual void setEnabled(bool) = imac 0x342220, m1 0x2d3490, ios 0x242eac;
    virtual bool initWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint) = imac 0x341f20, m1 0x2d31f4, ios 0x242bd4;
    virtual void setHue(float) = imac 0x342100, m1 0x2d33b0, ios 0x242dd0;
    virtual void setHuePercentage(float) = imac 0x342130, m1 0x2d33cc, ios 0x242dec;
    virtual void registerWithTouchDispatcher() = imac 0x3420c0, m1 0x2d3378, ios 0x242d98;

    bool checkSliderPosition(cocos2d::CCPoint) = imac 0x342310, m1 0x2d3578, ios 0x242f90;
    void updateSliderPosition(cocos2d::CCPoint) = imac 0x342270, m1 0x2d34e0, ios 0x242efc;
}

[[link(win, android)]]
class cocos2d::extension::CCControlPotentiometer : cocos2d::extension::CCControl {
    CCControlPotentiometer() = imac 0x345610;
    virtual ~CCControlPotentiometer() = imac 0x3456c0;

    static cocos2d::extension::CCControlPotentiometer* create(char const*, char const*, char const*) = imac 0x3459f0, m1 0x2d631c;

    virtual void setEnabled(bool) = imac 0x345d30, m1 0x2d6640;
    virtual bool isTouchInside(cocos2d::CCTouch*) = imac 0x345f00, m1 0x2d67cc;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x346030, m1 0x2d68d8;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3461f0, m1 0x2d6aa8;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x346450, m1 0x2d6ce0;

    float angleInDegreesBetweenLineFromPoint_toPoint_toLineFromPoint_toPoint(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x346540, m1 0x2d6de8;
    float distanceBetweenPointAndPoint(cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x346000, m1 0x2d68b8;
    float getMaximumValue() = imac 0x345ef0, m1 0x2d67c4;
    float getMinimumValue() = imac 0x345e30, m1 0x2d6724;
    float getValue() = imac 0x345d80, m1 0x2d6690;
    bool initWithTrackSprite_ProgressTimer_ThumbSprite(cocos2d::CCSprite*, cocos2d::CCProgressTimer*, cocos2d::CCSprite*) = imac 0x345b30, m1 0x2d643c;
    void potentiometerBegan(cocos2d::CCPoint) = imac 0x3460e0, m1 0x2d6998;
    void potentiometerEnded(cocos2d::CCPoint) = imac 0x3464a0, m1 0x2d6d40;
    void potentiometerMoved(cocos2d::CCPoint) = imac 0x346240, m1 0x2d6af4;
    void setMaximumValue(float) = imac 0x345e40, m1 0x2d672c;
    void setMinimumValue(float) = imac 0x345d90, m1 0x2d6698;
    void setValue(float) = imac 0x345ca0, m1 0x2d65b4;
}

[[link(win, android)]]
class cocos2d::extension::CCControlSaturationBrightnessPicker : cocos2d::extension::CCControl {
    CCControlSaturationBrightnessPicker() = imac 0x350ed0, ios 0x251948;
    virtual ~CCControlSaturationBrightnessPicker() = imac 0x351050, ios 0x2519d4;

    static cocos2d::extension::CCControlSaturationBrightnessPicker* create(cocos2d::CCNode*, cocos2d::CCPoint) = imac 0x3514f0, m1 0x2e0e2c, ios 0x251bec;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x351c00, m1 0x2e141c, ios 0x2520ec;
    virtual void setEnabled(bool) = imac 0x351620, m1 0x2e0f1c, ios 0x251c70;
    virtual bool initWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint) = imac 0x351370, m1 0x2e0cb0, ios 0x251a74;
    virtual void updateWithHSV(cocos2d::extension::HSV) = imac 0x351670, m1 0x2e0f6c, ios 0x251cc0;
    virtual void updateDraggerWithHSV(cocos2d::extension::HSV) = imac 0x351710, m1 0x2e0fe0, ios 0x251d30;
    virtual void registerWithTouchDispatcher() = imac 0x351ac0, m1 0x2e12e0, ios 0x25202c;

    bool checkSliderPosition(cocos2d::CCPoint) = imac 0x3519b0, m1 0x2e11fc, ios 0x251f48;
    void updateSliderPosition(cocos2d::CCPoint) = imac 0x3517b0, m1 0x2e1068, ios 0x251db4;
}

[[link(win, android)]]
class cocos2d::extension::CCControlSlider : cocos2d::extension::CCControl {
    CCControlSlider() = imac 0x388d00;
    virtual ~CCControlSlider() = imac 0x388da0;

    static cocos2d::extension::CCControlSlider* create(char const*, char const*, char const*) = imac 0x389090, m1 0x313aa0;
    static cocos2d::extension::CCControlSlider* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x1daaa0, m1 0x313b70;

    virtual void setValue(float) = imac 0x3895a0, m1 0x313f30;
    virtual void setMinimumValue(float) = imac 0x3895f0, m1 0x313f84;
    virtual void setMaximumValue(float) = imac 0x389640, m1 0x313fb4;
    virtual void setEnabled(bool) = imac 0x389550, m1 0x313ee0;
    virtual bool isTouchInside(cocos2d::CCTouch*) = imac 0x389690, m1 0x313fe4;
    virtual bool initWithSprites(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x389290, m1 0x313c24;
    virtual void needsLayout() = imac 0x6a4c0, m1 0x3146c4;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3897d0, m1 0x314134;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x389a20, m1 0x314364;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x389bd0, m1 0x3144f8;

    cocos2d::CCPoint locationFromTouch(cocos2d::CCTouch*) = imac 0x389740, m1 0x31409c;
    void sliderBegan(cocos2d::CCPoint) = imac 0x389950, m1 0x10398;
    void sliderEnded(cocos2d::CCPoint) = imac 0x389cb0, m1 0x3145e4;
    void sliderMoved(cocos2d::CCPoint) = imac 0x389b30, m1 0x314468;
    float valueForLocation(cocos2d::CCPoint) = imac 0x389ed0, m1 0x3147b8;
}

[[link(win, android)]]
class cocos2d::extension::CCControlStepper : cocos2d::extension::CCControl {
    CCControlStepper() = imac 0x38cad0;
    virtual ~CCControlStepper() = imac 0x38cb80, m1 0x1c0dc0;

    static cocos2d::extension::CCControlStepper* create(cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x38d130, m1 0x317508;

    virtual void setWraps(bool) = imac 0x38d230, m1 0x3175fc;
    virtual void setMinimumValue(double) = imac 0x38d2a0, m1 0x317688;
    virtual void setMaximumValue(double) = imac 0x38d2d0, m1 0x31769c;
    virtual void setValue(double) = imac 0x38d300, m1 0x3176b0;
    virtual double getValue() = imac 0x38d320, m1 0x3176c0;
    virtual void setStepValue(double) = imac 0x38d330, m1 0x3176c8;
    virtual void setValueWithSendingEvent(double, bool) = imac 0x38d350, m1 0x3176d8;
    virtual bool isContinuous() = imac 0x38d340, m1 0x3176d0;
    virtual void update(float) = imac 0x38d4b0, m1 0x317828;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x38d630, m1 0x317998;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x38d7e0, m1 0x317b40;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x38d9d0, m1 0x317d2c;

    bool initWithMinusSpriteAndPlusSprite(cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x38ccd0, m1 0x3170f8;
    void startAutorepeat() = imac 0x38d460, m1 0x3177ec;
    void stopAutorepeat() = imac 0x38d490, m1 0x31781c;
    void updateLayoutUsingTouchLocation(cocos2d::CCPoint) = imac 0x38d540, m1 0x3178ac;
}

[[link(win, android)]]
class cocos2d::extension::CCControlSwitch : cocos2d::extension::CCControl {
    CCControlSwitch() = imac 0x3915b0;
    virtual ~CCControlSwitch() = m1 0x31b500;

    static cocos2d::extension::CCControlSwitch* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x391b30, m1 0x31b8e8;
    static cocos2d::extension::CCControlSwitch* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCLabelTTF*, cocos2d::CCLabelTTF*) = imac 0x391c30, m1 0x31b9e0;

    virtual void setEnabled(bool) = imac 0x2ee870, m1 0x31bbfc;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x391f00, m1 0x31bc74;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x391ff0, m1 0x31bd40;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);

    bool initWithMaskSprite(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x391920, m1 0x31b6fc;
    bool initWithMaskSprite(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCLabelTTF*, cocos2d::CCLabelTTF*) = imac 0x391940, m1 0x31b708;
    cocos2d::CCPoint locationFromTouch(cocos2d::CCTouch*) = imac 0x391eb0, m1 0x31bc28;
    void setOn(bool) = imac 0x391d40, m1 0x31bad4;
    void setOn(bool, bool) = imac 0x391db0, m1 0x31bb44;
}

[[link(win, android)]]
class cocos2d::extension::CCControlUtils {
    static cocos2d::CCSprite* addSpriteToTargetWithPosAndAnchor(char const*, cocos2d::CCNode*, cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x392980, m1 0x31c4f4, ios 0x26a07c;
    static cocos2d::CCRect CCRectUnion(cocos2d::CCRect const&, cocos2d::CCRect const&) = imac 0x392c30, m1 0x31c734, ios inline;
    static cocos2d::extension::HSV HSVfromRGB(cocos2d::extension::RGBA) = imac 0x3929e0, ios 0x26a0f4;
    static cocos2d::extension::RGBA RGBfromHSV(cocos2d::extension::HSV) = imac 0x392ad0, m1 0x31c618, ios 0x26a19c;
}

[[link(win, android)]]
class cocos2d::extension::CCEditBox : cocos2d::extension::CCControlButton, cocos2d::CCIMEDelegate {
    CCEditBox();
    virtual ~CCEditBox() = imac 0x4a2ba0, m1 0x8274c8;

    static cocos2d::extension::CCEditBox* create(cocos2d::CCSize const&, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*) = imac 0x4a2e30, m1 0x40a200;

    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x4a3530, m1 0x40a834;
    virtual void setVisible(bool) = imac 0x4a3570, m1 0x40a878;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x4a35b0, m1 0x40a8bc;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x4a35f0, m1 0x40a900;
    virtual void visit() = imac 0x4a3630, m1 0x40a944;
    virtual void onEnter() = imac 0x4a3660, m1 0x40a980;
    virtual void onExit() = imac 0x4a3690, m1 0x40a9bc;
    virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4a36c0, m1 0x40a9f8;
    virtual void keyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4a37d0, m1 0x40aad4;
    virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4a37f0, m1 0x40aadc;
    virtual void keyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4a3870, m1 0x40ab2c;

    cocos2d::extension::CCEditBoxDelegate* getDelegate() = imac 0x4a30e0, m1 0x40a470;
    int getMaxLength() = imac 0x4a34d0, m1 0x40a7f8;
    char const* getPlaceHolder() = imac 0x4a3440, m1 0x40a7a4;
    char const* getText() = imac 0x4a3140, m1 0x40a4c4;
    bool initWithSizeAndBackgroundSprite(cocos2d::CCSize const&, cocos2d::extension::CCScale9Sprite*) = imac 0x4a3000, m1 0x40a388;
    void registerScriptEditBoxHandler(int) = imac 0x4a3890, m1 0x40ab34;
    void setDelegate(cocos2d::extension::CCEditBoxDelegate*) = imac 0x4a30c0, m1 0x40a45c;
    void setFont(char const*, int) = imac 0x4a3170, m1 0x40a4f8;
    void setFontColor(cocos2d::ccColor3B const&) = imac 0x4a3280, m1 0x40a5fc;
    void setFontName(char const*) = imac 0x4a31d0, m1 0x40a55c;
    void setFontSize(int) = imac 0x4a3220, m1 0x40a5b0;
    void setInputFlag(cocos2d::extension::EditBoxInputFlag) = imac 0x4a34e0, m1 0x40a800;
    void setInputMode(cocos2d::extension::EditBoxInputMode) = imac 0x4a3470, m1 0x40a7c0;
    void setMaxLength(int) = imac 0x4a34a0, m1 0x40a7dc;
    void setPlaceHolder(char const*) = imac 0x4a33f0, m1 0x40a758;
    void setPlaceholderFont(char const*, int) = imac 0x4a32b0, m1 0x40a624;
    void setPlaceholderFontColor(cocos2d::ccColor3B const&) = imac 0x4a33c0, m1 0x40a730;
    void setPlaceholderFontName(char const*) = imac 0x4a3310, m1 0x40a688;
    void setPlaceholderFontSize(int) = imac 0x4a3360, m1 0x40a6e0;
    void setReturnType(cocos2d::extension::KeyboardReturnType) = imac 0x4a3510, m1 0x40a81c;
    void setText(char const*) = imac 0x4a30f0, m1 0x40a478;
    void touchDownAction(cocos2d::CCObject*, cocos2d::extension::CCControlEvent) = imac 0x4a2e10, m1 0x40a1f0;
    void unregisterScriptEditBoxHandler() = imac 0x4a2d00, m1 0x40a158;
}

[[link(win, android)]]
class cocos2d::extension::CCHttpClient : cocos2d::CCObject {
    CCHttpClient() = imac 0x425b10, m1 0x39cee4, ios 0x2dba38;
    virtual ~CCHttpClient() = imac 0x425cf0, m1 0x39d0c0, ios 0x2dbbec;

    static void destroyInstance() = imac 0x425e70, m1 0x39d234, ios inline;
    static cocos2d::extension::CCHttpClient* getInstance() = imac 0x425e20, m1 0x39d1d8, ios 0x2dbc88;

    size_t availableThreadCount() = imac 0x425f60, m1 0x39d348, ios 0x2dbdb4;
    void dispatchResponseCallbacks(float);
    void send(cocos2d::extension::CCHttpRequest* request) = imac 0x425ea0, m1 0x39d268, ios 0x2dbcd8;

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
    CCInvocation(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = win inline, imac 0x3c4630, m1 0x348d90, ios inline;

    static cocos2d::extension::CCInvocation* create(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = imac 0x3c4560, m1 0x348cbc, ios 0x2ae828;

    void invoke(cocos2d::CCObject*) = imac 0x3c4680, m1 0x348de0, ios 0x2ae8ac;
}

[[link(win, android)]]
class cocos2d::extension::CCScale9Sprite : cocos2d::CCNodeRGBA {
    CCScale9Sprite() = imac 0x3e03b0, m1 0x35e808, ios 0x2aef60;
    virtual ~CCScale9Sprite() = imac 0x3e04a0, m1 0x35e8bc, ios 0x2af010;

    static cocos2d::extension::CCScale9Sprite* create() = imac 0x3e23f0, m1 0x36077c, ios inline;
    static cocos2d::extension::CCScale9Sprite* create(char const* pszname) = imac 0x3e1f40, m1 0x360220, ios inline;
    static cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect) = imac 0x3e1d70, m1 0x35fffc, ios 0x2b0574;
    static cocos2d::extension::CCScale9Sprite* create(cocos2d::CCRect capInsets, char const* filename) = imac 0x3e1e60, m1 0x36011c, ios inline;
    static cocos2d::extension::CCScale9Sprite* create(char const* filename, cocos2d::CCRect rect, cocos2d::CCRect capInsets) = imac 0x3e1c70, m1 0x35fed4, ios inline;
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3e2110, m1 0x360430, ios inline;
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = ios inline;
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const* spriteFrameName) = imac 0x3e22d0, m1 0x36062c, ios inline;
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const* spriteFrameName, cocos2d::CCRect capInsets) = ios inline;

    virtual bool init() = imac 0x3e05c0, m1 0x35e984, ios 0x2af0d8;
    virtual void setContentSize(const cocos2d::CCSize& size) = imac 0x3e16f0, m1 0x35f984, ios 0x2affc4;
    virtual void visit() = imac 0x3e2a30, m1 0x360d00, ios 0x2b0d34;
    virtual unsigned char getOpacity() = imac 0x3e2d80, m1 0x36102c, ios 0x2b0ef0;
    virtual void setOpacity(unsigned char) = imac 0x3e2c00, m1 0x360ec4, ios 0x2b0e3c;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x3e2800, m1 0x360b54, ios 0x2b0b88;
    virtual const cocos2d::ccColor3B& getColor() = imac 0x3e2be0, m1 0x360eb4, ios 0x2b0e2c;
    virtual void setColor(const cocos2d::ccColor3B& color) = imac 0x3e2a60, m1 0x360d34, ios 0x2b0d6c;
    virtual void updateDisplayedColor(const cocos2d::ccColor3B& parentColor) = imac 0x3e2870, m1 0x360bc0, ios 0x2b0bf4;
    virtual void setOpacityModifyRGB(bool bValue) = imac 0x3e2680, m1 0x3609e4, ios 0x2b0ac8;
    virtual bool isOpacityModifyRGB() = imac 0x3e27e0, m1 0x360b44, ios 0x2b0b78;
    virtual cocos2d::CCSize getPreferredSize() = imac 0x3e2480, m1 0x360830, ios 0x2b0914;
    virtual void setPreferredSize(cocos2d::CCSize) = imac 0x3e2450, m1 0x3607fc, ios 0x2b08e0;
    virtual cocos2d::CCRect getCapInsets() = imac 0x3e2540, m1 0x3608d4, ios 0x2b09b8;
    virtual void setCapInsets(cocos2d::CCRect) = imac 0x3e24a0, m1 0x36083c, ios 0x15a1b8;
    virtual float getInsetLeft() = imac 0x3e2970, m1 0x360cc0, ios 0x2b0cf4;
    virtual void setInsetLeft(float) = imac 0x3e29b0, m1 0x360ce0, ios 0x2b0d14;
    virtual float getInsetTop() = imac 0x3e2980, m1 0x360cc8, ios 0x2b0cfc;
    virtual void setInsetTop(float) = imac 0x3e29d0, m1 0x360ce8, ios 0x2b0d1c;
    virtual float getInsetRight() = imac 0x3e2990, m1 0x360cd0, ios 0x2b0d04;
    virtual void setInsetRight(float) = imac 0x3e29f0, m1 0x360cf0, ios 0x2b0d24;
    virtual float getInsetBottom() = imac 0x3e29a0, m1 0x360cd8, ios 0x2b0d0c;
    virtual void setInsetBottom(float) = imac 0x3e2a10, m1 0x360cf8, ios 0x2b0d2c;
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = imac 0x3e0680, m1 0x35ea50, ios 0x2af1a4;
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, cocos2d::CCRect) = imac 0x3e0620, m1 0x35e9e4, ios 0x2af138;
    virtual bool initWithFile(const char*, cocos2d::CCRect, cocos2d::CCRect) = imac 0x3e1c00, m1 0x35fe5c, ios 0xbf754;
    virtual bool initWithFile(const char*, cocos2d::CCRect) = imac 0x3e1d10, m1 0x35ff9c;
    virtual bool initWithFile(cocos2d::CCRect, const char*) = imac 0x3e1e00, m1 0x3600b0, ios 0x2b0614;
    virtual bool initWithFile(const char*) = imac 0x3e1ef0, m1 0x3601d0, ios 0x2b07d0;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = imac 0x3e1fb0, m1 0x3602a8, ios 0x2b074c;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3e20c0, m1 0x3603e0, ios 0x2b07d0;
    virtual bool initWithSpriteFrameName(const char*, cocos2d::CCRect) = imac 0x3e2180, m1 0x3604b8, ios 0x2b0820;
    virtual bool initWithSpriteFrameName(const char*) = imac 0x3e2280, m1 0x3605dc, ios 0x2b0680;
    virtual bool updateWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = imac 0x3e0720, m1 0x35eaf4, ios 0x2af248;
    virtual void setSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3e28e0, m1 0x360c2c, ios 0x2b0c60;

    cocos2d::extension::CCScale9Sprite* resizableSpriteWithCapInsets(cocos2d::CCRect) = imac 0x3e2340, m1 0x3606b4, ios inline;
    void setBlendAdditive(bool) = imac 0x3e2da0, m1 0x36103c, ios 0x2b0f00;
    void updateCapInset() = imac 0x3e2560, m1 0x3608e0, ios 0x2b09c4;
    void updatePositions() = imac 0x3e1710, m1 0x35f9ac, ios 0x2affec;
}

[[link(win, android)]]
class cocos2d::extension::CCScrollView : cocos2d::CCLayer {
    CCScrollView() = imac 0x3e3660, m1 0x361924;
    virtual ~CCScrollView() = imac 0x3e37c0, m1 0x361a10;

    static cocos2d::extension::CCScrollView* create() = imac 0x3e3d10, m1 0x361ecc;
    static cocos2d::extension::CCScrollView* create(cocos2d::CCSize, cocos2d::CCNode*) = imac 0x3e3af0, m1 0x361cbc;

    virtual bool init() = imac 0x3e3da0, m1 0x361f7c;
    virtual void registerWithTouchDispatcher() = imac 0x3e3de0, m1 0x361fc4;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3e5380, m1 0x363468;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3e5600, m1 0x62af8;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3e59d0, m1 0x3639f0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3e5a90, m1 0x363aa0;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x3e4c50, m1 0x362d58;
    virtual cocos2d::CCSize const& getContentSize() const = imac 0x3e4c30, m1 0x362d48;
    virtual void visit() = imac 0x3e5210, m1 0x3632c8;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x36910, m1 0x362ec4;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x3e4eb0, m1 0x362f80;
    virtual void addChild(cocos2d::CCNode*) = imac 0x3e4ef0, m1 0x362fd4;
    virtual void setTouchEnabled(bool) = imac 0x3e4030, m1 0x3621e4;

    void afterDraw() = imac 0x3e51b0, m1 0x36326c;
    void beforeDraw() = imac 0x3e4f40, m1 0x363038;
    void deaccelerateScrolling(float) = imac 0x3e48d0, m1 0x362a30;
    cocos2d::CCNode* getContainer() = imac 0x3e4670, m1 0x3627e0;
    cocos2d::CCPoint getContentOffset() = imac 0x3e3f00, m1 0x3620cc;
    int getScriptHandler(int) = imac 0x3e5cc0, m1 0x363cd0;
    cocos2d::CCRect getViewRect() = imac 0x3e5090, m1 0x363158;
    float getZoomScale() = imac 0x3e3f30, m1 0x362100;
    bool initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*) = imac 0x3e3b80, m1 0x361d68;
    bool isNodeVisible(cocos2d::CCNode*) = imac 0x3e3e30, m1 0x36200c;
    cocos2d::CCPoint maxContainerOffset() = imac 0x3e4330;
    cocos2d::CCPoint minContainerOffset() = imac 0x3e4270, m1 0x36240c;
    void pause(cocos2d::CCObject*) = imac 0x3e3f50, m1 0x362110;
    void performedAnimatedScroll(float) = imac 0x3e4390, m1 0x3624f8;
    void registerScriptHandler(int, int) = imac 0x3e5b50, m1 0x363b64;
    void relocateContainer(bool) = imac 0x3e4730, m1 0x36289c;
    void resume(cocos2d::CCObject*) = imac 0x3e3fc0, m1 0x362178;
    void setContainer(cocos2d::CCNode*) = imac 0x3e4680, m1 0x3627e8;
    void setContentOffset(cocos2d::CCPoint, bool) = imac 0x3e4070, m1 0x362224;
    void setContentOffsetInDuration(cocos2d::CCPoint, float) = imac 0x3e4200, m1 0x362394;
    void setViewSize(cocos2d::CCSize) = imac 0x3e3d70, m1 0x361f4c;
    void setZoomScale(float) = imac 0x3e43d0, m1 0x362530;
    void setZoomScale(float, bool) = imac 0x3e4560, m1 0x3626a0;
    void setZoomScaleInDuration(float, float) = imac 0x3e45e0, m1 0x362740;
    void stoppedAnimatedScroll(cocos2d::CCNode*) = imac 0x3e4350, m1 0x3624ac;
    void unregisterScriptHandler(int) = imac 0x3e39b0, m1 0x361bc4;
    void updateInset() = imac 0x3e4c90;
}

[[link(win, android)]]
class cocos2d::extension::CCTableView : cocos2d::extension::CCScrollView, cocos2d::extension::CCScrollViewDelegate {
    CCTableView() = imac 0x418e00, m1 0x39109c;
    virtual ~CCTableView() = imac 0x418eb0, m1 0x1ebd88;

    static cocos2d::extension::CCTableView* create(cocos2d::extension::CCTableViewDataSource*, cocos2d::CCSize) = imac 0x418910, m1 0x390c20;
    static cocos2d::extension::CCTableView* create(cocos2d::extension::CCTableViewDataSource*, cocos2d::CCSize, cocos2d::CCNode*) = imac 0x418940, m1 0x390c5c;

    virtual void scrollViewDidScroll(cocos2d::extension::CCScrollView*) = imac 0x419e90, m1 0x3920a4;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x41a260, m1 0x3923c0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x41a3e0, m1 0x392538;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x41a160, m1 0x3922e0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x41a490, m1 0x3925e0;

    int __indexFromOffset(cocos2d::CCPoint) = imac 0x419df0, m1 0x391ff8;
    cocos2d::CCPoint __offsetFromIndex(unsigned int) = imac 0x119710, m1 0x391e40;
    void _addCellIfNecessary(cocos2d::extension::CCTableViewCell*) = imac 0x419680, m1 0x391844;
    unsigned int _indexFromOffset(cocos2d::CCPoint) = imac 0x419cd0, m1 0x391ec4;
    void _moveCellOutOfSight(cocos2d::extension::CCTableViewCell*) = imac 0x4194d0, m1 0x391658;
    cocos2d::CCPoint _offsetFromIndex(unsigned int) = imac 0x419b80, m1 0x391d58;
    void _setIndexForCell(unsigned int, cocos2d::extension::CCTableViewCell*) = imac 0x419610, m1 0x3917bc;
    void _updateCellPositions() = imac 0x418c00, m1 0x390e94;
    void _updateContentSize() = imac 0x418d10, m1 0x390fa8;
    cocos2d::extension::CCTableViewCell* cellAtIndex(unsigned int) = imac 0x419340, m1 0x3914bc;
    cocos2d::extension::CCTableViewCell* dequeueCell() = imac 0x419b20, m1 0x391cec;
    cocos2d::extension::CCTableViewVerticalFillOrder getVerticalFillOrder() = imac 0x419330, m1 0x3914b4;
    bool initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*) = imac 0x418b10, m1 0x390d9c;
    void insertCellAtIndex(unsigned int) = imac 0x419770, m1 0x391948;
    void reloadData() = imac 0x4191a0, m1 0x391328;
    void removeCellAtIndex(unsigned int) = imac 0x419910, m1 0x391ae8;
    void setVerticalFillOrder(cocos2d::extension::CCTableViewVerticalFillOrder) = imac 0x419160, m1 0x3912e0;
    void unregisterAllScriptHandler() = imac 0x419010, m1 0x391208;
    void updateCellAtIndex(unsigned int) = imac 0x4193b0, m1 0x391528;
}

[[link(win, android)]]
class cocos2d::extension::CCTableViewCell : cocos2d::CCNode, cocos2d::extension::CCSortableObject {
    virtual void setObjectID(unsigned int) = imac 0x424e20, m1 0x39c3c0;
    virtual unsigned int getObjectID() = imac 0x424e40, m1 0x39c3d0;

    unsigned int getIdx() = imac 0x424e60, m1 0x39c3e0;
    void reset() = imac 0x424e10, m1 0x39c3b4;
    void setIdx(unsigned int) = imac 0x424e70, m1 0x39c3e8;
}

[[link(win, android)]]
class cocos2d::ZipUtils {
    static std::string base64DecodeEnc(std::string const&, std::string) = imac 0x1e8bd0, m1 0x19afb0, ios 0x2d8ad0;
    static std::string base64EncodeEnc(std::string const&, std::string) = imac 0x1e8e10, m1 0x19b224, ios 0x1d5d9c;
    static std::string base64URLDecode(std::string const&) = imac 0x1e9050, ios 0x2d8f54;
    static std::string base64URLEncode(std::string const&) = imac 0x1e9130, ios 0x2d9044;
    // static void ccDecodeEncodedPvr(unsigned int*, int);
    static int ccDeflateMemory(unsigned char* data, unsigned int size, unsigned char** out);
    // static int ccInflateCCZFile(char const*, unsigned char**);
    // static int ccInflateGZipFile(char const*, unsigned char**);
    // static int ccInflateMemory(unsigned char* data, unsigned int size, unsigned char** out) = imac 0x1f3660, m1 0x1a91b0;
    // static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int*, unsigned int) = imac 0x1f45f0, m1 0x1aa1b8;
    // static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int) = imac 0x1f4720, m1 0x1aa2e0;
    // static void ccSetPvrEncryptionKey(unsigned int, unsigned int, unsigned int, unsigned int);
    // static void ccSetPvrEncryptionKeyPart(int, unsigned int);
    static std::string compressString(std::string const& data, bool encrypt, int encryptionKey);
    static std::string decompressString(std::string const& data, bool encrypt, int encryptionKey) = imac 0x1e8950, m1 0x19ad28, ios 0x2d8890;
    static std::string decompressString2(unsigned char* data, bool encrypt, int size, int encryptionKey) = imac 0x1e8630, m1 0x19aa08, ios 0xcbe0;
    static std::string encryptDecrypt(std::string const& data, int encryptionKey) = inline;
    static std::string encryptDecryptWKey(std::string const&, std::string) = inline;
    static unsigned char hexToChar(std::string const&) = imac 0x1e95a0, m1 0x19ba18, ios 0x2d939c;
    static std::string urlDecode(std::string const&) = imac 0x1e9210, m1 0x19b6ac, ios 0x2d9134;
}

[[link(win, android)]]
class DS_Dictionary {
    DS_Dictionary() = imac 0x158c00, m1 0x12489c, ios 0x1e8038;

    static void copyFile(char const*, char const*) = imac 0x15bbc0, m1 0x1272b0, ios 0x1e83ac;

    void addBoolValuesToMapForKey(std::map<std::string, bool>&, char const*, bool) = imac 0x160ae0, m1 0x12b9d0, ios 0x99680;
    void addBoolValuesToMapForKeySpecial(std::map<std::string, bool>&, char const*, bool) = imac 0x160780, m1 0x12b6a8;
    void checkCompatibility() = imac 0x159de0, m1 0x125924, ios 0x1e8138;
    std::string cleanStringWhiteSpace(std::string const&) = imac 0x158e10, m1 0x124a58;
    cocos2d::CCObject* decodeObjectForKey(char const*, bool, int) = imac 0x1611a0, m1 0x12bfe4, ios 0x1ea510;
    std::vector<std::string> getAllKeys() = imac 0x15c6b0, m1 0x127ba4;
    cocos2d::CCArray* getArrayForKey(char const*, bool) = imac 0x15fdd0, m1 0x12addc, ios 0x1e9984;
    bool getBoolForKey(char const*) = imac 0x15cd90, m1 0x1281e4, ios 0x1e8b18;
    cocos2d::CCDictionary* getDictForKey(char const*, bool) = imac 0x160cb0, m1 0x12bb74, ios 0x1ea284;
    float getFloatForKey(char const*) = imac 0x15ce90, m1 0x60f2c, ios 0x1e8bf0;
    unsigned int getIndexOfKey(char const*) = imac 0x15c820, m1 0x127d00;
    unsigned int getIndexOfKeyWithClosestAlphaNumericalMatch(char const*) = imac 0x15c8e0, m1 0x127db8;
    int getIntegerForKey(char const*) = imac 0x15cc50, m1 0x1280d8, ios 0x1e8a0c;
    std::string getKey(unsigned int) = imac 0x15c590, m1 0x127a88, ios 0x1e87ec;
    unsigned int getNumKeys() = imac 0x15c510, m1 0x127a1c, ios 0x1e8780;
    cocos2d::CCObject* getObjectForKey(char const*) = imac 0x15ff50, m1 0x12af44, ios 0x1e9aa0;
    std::vector<cocos2d::CCRect> getRectArrayForKey(char const*) = m1 0x128c3c;
    cocos2d::CCRect getRectForKey(char const*) = m1 0x1286b8;
    std::vector<std::string> getStringArrayForKey(char const*) = imac 0x15d4e0, m1 0x1288ac;
    std::string getStringForKey(char const*) = m1 0x1283fc, ios 0x1e8d10;
    std::vector<cocos2d::CCPoint> getVec2ArrayForKey(char const*) = m1 0x128acc;
    cocos2d::CCPoint getVec2ForKey(char const*) = m1 0x128584;
    bool loadRootSubDictFromCompressedFile(char const*, bool) = imac 0x159e30;
    bool loadRootSubDictFromFile(char const*) = imac 0x159e30, m1 0x125984;
    bool loadRootSubDictFromString(std::string const&) = imac 0x15a520, m1 0x125fc4, ios 0x1dbf58;
    bool rectFromString(std::string const&, cocos2d::CCRect&) = imac 0x159690, m1 0x12523c;
    void removeAllKeys() = imac 0x15cb70, m1 0x128034;
    void removeKey(char const*) = imac 0x15ca80, m1 0x127f50, ios 0x1e8948;
    void removeKey(unsigned int) = imac 0x15c9a0, m1 0x127e74;
    bool saveRootSubDictToCompressedFile(char const*, bool) = m1 0x50a3e4;
    bool saveRootSubDictToFile(char const*) = imac 0x15a740, m1 0x126194;
    std::string saveRootSubDictToString() = imac 0x15bb50, m1 0x127238, ios 0x1e8334;
    void setArrayForKey(char const*, cocos2d::CCArray*) = imac 0x15fa70, m1 0x12aa6c, ios 0x1e96fc;
    void setBoolForKey(char const*, bool) = imac 0x15e030, m1 0x1292b8, ios 0x1e9200;
    void setBoolForKey(char const*, bool, bool) = imac 0x15e0e0, m1 0x129360, ios 0x1e9208;
    void setBoolMapForKey(char const*, std::map<std::string, bool>&) = imac 0x160540, m1 0x12b480, ios 0x1e9da0;
    void setDictForKey(char const*, cocos2d::CCDictionary*) = imac 0x160300, m1 0x12b28c, ios 0x1e9c94;
    void setFloatForKey(char const*, float) = imac 0x15e260, m1 0x1294a0, ios 0x1e933c;
    void setFloatForKey(char const*, float, bool) = imac 0x15e270, m1 0x1294a8, ios 0x1e9344;
    void setIntegerForKey(char const*, int) = imac 0x15dd50, m1 0x12904c, ios 0x1e8fcc;
    void setIntegerForKey(char const*, int, bool) = imac 0x15dd60, m1 0x129054, ios 0x1e8fd4;
    void setObjectForKey(char const*, cocos2d::CCObject*) = imac 0x15fbc0, m1 0x12aba8, ios 0x1e97d0;
    void setRectArrayForKey(char const*, std::vector<cocos2d::CCRect> const&) = m1 0x12a6d4;
    void setRectArrayForKey(char const*, std::vector<cocos2d::CCRect> const&, bool) = m1 0x12a6dc;
    void setRectForKey(char const*, cocos2d::CCRect const&) = imac 0x15ec50, m1 0x129df8;
    void setRectForKey(char const*, cocos2d::CCRect const&, bool) = imac 0x15ec60, m1 0x129e00;
    void setStringArrayForKey(char const*, std::vector<std::string> const&) = imac 0x15efb0, m1 0x12a194;
    void setStringArrayForKey(char const*, std::vector<std::string> const&, bool) = imac 0x15efc0, m1 0x12a19c;
    void setStringForKey(char const*, std::string const&) = imac 0x15e560, m1 0x129724, ios 0x1e957c;
    void setStringForKey(char const*, std::string const&, bool) = imac 0x15e570, m1 0x12972c, ios 0x1d4554;
    void setSubDictForKey(char const*) = imac 0x15da30, m1 0x128dac, ios inline;
    void setSubDictForKey(char const*, bool, bool) = imac 0x15dae0, m1 0x128e50, ios 0x1e8e84;
    void setVec2ArrayForKey(char const*, std::vector<cocos2d::CCPoint> const&) = m1 0x12a38c;
    void setVec2ArrayForKey(char const*, std::vector<cocos2d::CCPoint> const&, bool) = m1 0x12a394;
    void setVec2ForKey(char const*, cocos2d::CCPoint const&) = imac 0x15e750, m1 0x1298b0;
    void setVec2ForKey(char const*, cocos2d::CCPoint const&, bool) = imac 0x15e760, m1 0x1298b8;
    void split(std::string const&, char const*, std::vector<std::string>&) = imac 0x158fa0, m1 0x124bc8;
    bool splitWithForm(std::string const&, std::vector<std::string>&) = imac 0x159450, m1 0x124fd0;
    void stepBackToRootSubDict() = imac 0x15c390, m1 0x1278f0;
    bool stepIntoSubDictWithKey(char const*) = imac 0x15c150, m1 0x12772c, ios 0x1e8660;
    void stepOutOfSubDict() = imac 0x15c360, m1 0x1278d4, ios inline;
    bool vec2FromString(std::string const&, cocos2d::CCPoint&) = imac 0x159cb0, m1 0x1257c8;
}

[[link(win, android)]]
class ObjectDecoder : cocos2d::CCNode {
    // virtual ~ObjectDecoder();

    static ObjectDecoder* sharedDecoder() = imac 0x870de0, m1 0x76741c, ios 0x2d0124;

    virtual bool init() = imac 0x870e50, m1 0x767490, ios 0x2d018c;

    cocos2d::CCObject* getDecodedObject(int objectType, DS_Dictionary* data) = imac 0x870e60, m1 0x767494, ios 0x2d0190;
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
    xml_document() = imac 0x71bfb0, m1 0x62b918, ios 0x4515fc;
    ~xml_document() = imac 0x71c0f0, m1 0x62ba68, ios 0x4516e0;
}

[[link(android)]]
class pugi::xml_node {
    xml_node() = imac 0x716120, m1 0x6258dc, ios 0x44fdbc;
    ~xml_node() = inline;
}

