#import ios <Geode/cocos/particle_nodes/firePngData.h>

[[link(win, android)]]
class CCContentManager : cocos2d::CCObject {
    static CCContentManager* sharedManager() = m1 0x148d94;

    cocos2d::CCDictionary* addDict(char const*, bool) = imac 0x183f40, m1 0x148ef8;
    cocos2d::CCDictionary* addDictDS(char const*);
    void clearCache() = m1 0x149294;
    bool init() = m1 0x148e14, ios inline {
        m_pDictCache = cocos2d::CCDictionary::create();
        m_pDictCache->retain();
        return true;
    }
}

[[link(win, android)]]
class cocos2d {
    static cocos2d::CCAffineTransform __CCAffineTransformMake(float, float, float, float, float, float);
    static cocos2d::CCPoint __CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&);
    static cocos2d::CCSize __CCSizeApplyAffineTransform(cocos2d::CCSize const& p0, cocos2d::CCAffineTransform const& p1) = ios inline {
        return { p1.a * p0.width + p1.c * p0.height, p1.b * p0.width + p1.d * p0.height };
    }
    static char* cc_utf16_to_utf8(unsigned short const*, long, long*, long*);
    static gd::vector<unsigned short> cc_utf16_vec_from_utf16_str(unsigned short const*);
    static unsigned int cc_utf8_find_last_not_char(gd::vector<unsigned short>, unsigned short);
    static long cc_utf8_strlen(char const*, int);
    static unsigned short* cc_utf8_to_utf16(char const*, int*);
    static void cc_utf8_trim_ws(gd::vector<unsigned short>*);
    static int cc_wcslen(unsigned short const*);
    static cocos2d::CCAffineTransform CCAffineTransformConcat(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&);
    static bool CCAffineTransformEqualToTransform(cocos2d::CCAffineTransform const& p0, cocos2d::CCAffineTransform const& p1) = ios inline {
        return p0.a == p1.a && p0.b == p1.b && p0.c == p1.c && p0.d == p1.d && p0.tx == p1.tx && p0.ty == p1.ty;
    }
    static cocos2d::CCAffineTransform CCAffineTransformInvert(cocos2d::CCAffineTransform const&);
    static cocos2d::CCAffineTransform CCAffineTransformMakeIdentity();
    static cocos2d::CCAffineTransform CCAffineTransformRotate(cocos2d::CCAffineTransform const&, float);
    static cocos2d::CCAffineTransform CCAffineTransformScale(cocos2d::CCAffineTransform const& p0, float p1, float p2) = ios inline {
        return CCAffineTransformMake(p0.a * p1, p0.b * p1, p0.c * p2, p0.d * p2, p0.tx, p0.ty);
    }
    static cocos2d::CCAffineTransform CCAffineTransformTranslate(cocos2d::CCAffineTransform const&, float, float);
    static cocos2d::CCPoint ccCardinalSplineAt(cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, float, float);
    static void ccDrawCardinalSpline(cocos2d::CCPointArray*, float, unsigned int);
    static void ccDrawCatmullRom(cocos2d::CCPointArray*, unsigned int);
    static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool);
    static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool, float, float);
    static void ccDrawCircleSegment(cocos2d::CCPoint const&, float, float, float, unsigned int, bool, float, float);
    static void ccDrawColor4B(unsigned char, unsigned char, unsigned char, unsigned char);
    static void ccDrawColor4F(float, float, float, float);
    static void ccDrawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
    static void ccDrawFilledCircle(cocos2d::CCPoint const&, float, float, unsigned int);
    static void ccDrawFree();
    static void ccDrawInit();
    static void ccDrawLine(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static void ccDrawLines(cocos2d::CCPoint const*, unsigned int);
    static void ccDrawPoint(cocos2d::CCPoint const&);
    static void ccDrawPoints(cocos2d::CCPoint const*, unsigned int);
    static void ccDrawPoly(cocos2d::CCPoint const*, unsigned int, bool);
    static void ccDrawQuadBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
    static void ccDrawRect(cocos2d::CCPoint, cocos2d::CCPoint);
    static void ccDrawSolidPoly(cocos2d::CCPoint const*, unsigned int, cocos2d::ccColor4F);
    static void ccDrawSolidRect(cocos2d::CCPoint origin, cocos2d::CCPoint destination, cocos2d::ccColor4F color) = ios inline {
    	CCPoint vertices[] = {
    		origin,
    		CCPoint{destination.x, origin.y},
    		destination,
    		CCPoint{origin.x, destination.y}
    	};

    	ccDrawSolidPoly(vertices, 4, color);
    }
    static void ccGLBindTexture2D(unsigned int);
    static void ccGLBindTexture2DN(unsigned int, unsigned int);
    static void ccGLBindVAO(unsigned int);
    static void ccGLBlendFunc(unsigned int, unsigned int);
    static void ccGLBlendResetToCache() = ios inline {
        glBlendEquation(GL_FUNC_ADD);
        auto sfactor = *reinterpret_cast<GLenum*>(geode::base::get() + 0x83f124);
        auto dfactor = *reinterpret_cast<GLenum*>(geode::base::get() + 0x83f128);
        if (sfactor == GL_ONE && dfactor == GL_ZERO) {
            glDisable(GL_BLEND);
        }
        else {
            glEnable(GL_BLEND);
            glBlendFunc(sfactor, dfactor);
        }
    }
    static void ccGLDeleteProgram(unsigned int);
    static void ccGLDeleteTexture(unsigned int);
    static void ccGLDeleteTextureN(unsigned int p0, unsigned int p1) = ios inline {
        auto currentTexture = reinterpret_cast<GLuint*>(geode::base::get() + 0x83f0e4 + p0 * 4);
        if (*currentTexture == p1) *currentTexture = -1;
        glDeleteTextures(1, &p1);
    }
    static void ccGLEnable(cocos2d::ccGLServerState);
    static void ccGLEnableVertexAttribs(unsigned int);
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
    static cocos2d::CCPoint ccpFromSize(cocos2d::CCSize const& size) = ios inline {
        return size;
    }
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
    static float ccpToAngle(cocos2d::CCPoint const& point) = ios inline {
        return point.getAngle();
    }
    static cocos2d::CCRect CCRectApplyAffineTransform(cocos2d::CCRect const&, cocos2d::CCAffineTransform const&);
    static cocos2d::CCRect CCRectFromString(char const*);
    static void ccSetProjectionMatrixDirty();
    static cocos2d::CCSize CCSizeFromString(char const*);
    static bool ccVertexLineIntersect(float, float, float, float, float, float, float, float, float*);
    static void ccVertexLineToPolygon(cocos2d::CCPoint*, float, cocos2d::ccVertex2F*, unsigned int, unsigned int);
    static float clampf(float, float, float);
    static char const* cocos2dVersion();
    static cocos2d::CCBMFontConfiguration* FNTConfigLoadFile(char const*);
    static void FNTConfigRemoveCache();
    static bool isspace_unicode(unsigned short);
    // static cocos2d::CCPoint ccpCompOp(cocos2d::CCPoint const&, float (float)*);
}

[[link(win, android)]]
class cocos2d::CCAccelAmplitude : cocos2d::CCActionInterval {

    virtual ~CCAccelAmplitude();

    static cocos2d::CCAccelAmplitude* create(cocos2d::CCAction*, float);

    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x1b63cc;
    virtual void update(float) = imac 0x20a570, m1 0x1b6400;
    virtual cocos2d::CCActionInterval* reverse();

    bool initWithAction(cocos2d::CCAction*, float);
}

[[link(win, android)]]
class cocos2d::CCAccelDeccelAmplitude : cocos2d::CCActionInterval {

    virtual ~CCAccelDeccelAmplitude() = m1 0x1b5fdc;

    static cocos2d::CCAccelDeccelAmplitude* create(cocos2d::CCAction*, float);

    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x1b6094;
    virtual void update(float) = imac 0x20a250, m1 0x1b60c8;
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
    CCAction() = m1 0x51d154;
    virtual ~CCAction() = m1 0x51d1b4;

    static cocos2d::CCAction* create() = imac 0x5f3d10, m1 0x51d1f4, ios inline {
        auto ret = new CCAction();
        ret->autorelease();
        return ret;
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5f3d90, m1 0x51d284;
    virtual void update(float) = imac 0x5f3e90, m1 0x51d36c;
    //virtual void setTag(int) = m1 0x1b6e5c, imac 0x205680;
    virtual bool isDone() = imac 0x5f3e70, m1 0x51d360;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x5f3e50, m1 0x51d350;
    virtual void stop() = imac 0x5f3e60, m1 0x51d358;
    virtual void step(float) = imac 0x5f3e80, m1 0x51d368;

    char const* description() = m1 0x51d258, ios inline {
        return CCString::createWithFormat("<CCAction | Tag = %d>", m_nTag)->getCString();
    }

    cocos2d::CCNode* m_pOriginalTarget;
    cocos2d::CCNode* m_pTarget;
    int m_nTag;
    float m_fSpeedMod;
}

[[link(win, android)]]
class cocos2d::CCActionCamera : cocos2d::CCActionInterval {
    // CCActionCamera(cocos2d::CCActionCamera const&);
    // CCActionCamera();

    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x2f1b48;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x2f1bb4;
}

[[link(win, android)]]
class cocos2d::CCActionEase : cocos2d::CCActionInterval {
    // CCActionEase(cocos2d::CCActionEase const&);
    // CCActionEase();
    virtual ~CCActionEase() = m1 0x46a944;

    static cocos2d::CCActionEase* create(cocos2d::CCActionInterval*);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x46a9fc;
    virtual void stop() = m1 0x46aa2c;
    virtual void update(float) = imac 0x514020, m1 0x46aa5c;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x46aa6c;
    virtual cocos2d::CCActionInterval* getInnerAction() = imac 0x514060, m1 0x46aa8c;

    bool initWithAction(cocos2d::CCActionInterval* pAction);
}

[[link(win, android)]]
class cocos2d::CCActionInstant : cocos2d::CCFiniteTimeAction {
    // CCActionInstant(cocos2d::CCActionInstant const&);
    CCActionInstant() = m1 0x6b25c0, ios inline {}

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = m1 0x6b26e0;
    virtual bool isDone() = imac 0x7abed0, m1 0x6b26c8;
    virtual void step(float) = imac 0x7abee0, m1 0x6b26d0;
    virtual cocos2d::CCFiniteTimeAction* reverse() = m1 0x6b26e4;
}

[[link(win, android)]]
class cocos2d::CCActionInterval : cocos2d::CCFiniteTimeAction {
    static cocos2d::CCActionInterval* create(float p0) = m1 0x337d18, ios inline {
        auto ret = new CCActionInterval();
        ret->initWithDuration(p0);
        ret->autorelease();
        return ret;
    }

    // CCActionInterval(cocos2d::CCActionInterval const&);
    // CCActionInterval();
    // ~CCActionInterval() = ios 0x264838;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x337dc8;
    virtual bool isDone() = imac 0x3b50a0;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x337f40;
    virtual void step(float);
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b5180, m1 0x337f6c;

    float getAmplitudeRate() = imac 0x3b5150, m1 0x337f38, ios inline {
        return 0.f;
    }
    bool initWithDuration(float d) = imac 0x3b4f60, m1 0x337da4;
    // float getElapsed();
    // bool getM_bFirstTick() const;
    void setAmplitudeRate(float) = imac 0x3b5140, m1 0x337f34, ios inline {}

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
    unsigned int numberOfRunningActionsInTarget(cocos2d::CCObject* target) = imac 0x2342f0, m1 0x1dded8, ios inline {
        struct tHashElement {
            ccArray* actions;
            CCObject* target;
            unsigned int actionIndex;
            CCAction* currentAction;
            bool currentActionSalvaged;
            bool paused;
            UT_hash_handle hh;
        };

        tHashElement* element = nullptr;
        HASH_FIND_INT(reinterpret_cast<tHashElement*>(m_pTargets), &target, element);
        return element && element->actions ? element->actions->num : 0;
    }
    cocos2d::CCSet* pauseAllRunningActions() = m1 0x1dd2ec, ios inline {
        struct tHashElement {
            ccArray* actions;
            CCObject* target;
            unsigned int actionIndex;
            CCAction* currentAction;
            bool currentActionSalvaged;
            bool paused;
            UT_hash_handle hh;
        };

        auto targets = new CCSet();
        targets->autorelease();
        for (auto element = reinterpret_cast<tHashElement*>(m_pTargets); element != nullptr; element = static_cast<tHashElement*>(element->hh.next)) {
            if (!element->paused) {
                element->paused = true;
                targets->addObject(element->target);
            }
        }
        return targets;
    }
    void pauseTarget(cocos2d::CCObject*) = imac 0x233620, m1 0x1dd0f8;
    void removeAction(cocos2d::CCAction*) = m1 0x4227d4;
    void removeActionAtIndex(unsigned int, cocos2d::_hashElement*) = imac 0x233590, m1 0x1dd030;
    void removeActionByTag(unsigned int, cocos2d::CCObject*) = imac 0x234020, m1 0x1ddbb4;
    void removeAllActions() = imac 0x233360, m1 0x1dcdec, ios inline {
        struct tHashElement {
            ccArray* actions;
            CCObject* target;
            unsigned int actionIndex;
            CCAction* currentAction;
            bool currentActionSalvaged;
            bool paused;
            UT_hash_handle hh;
        };

        for (auto element = reinterpret_cast<tHashElement*>(m_pTargets); element != nullptr; element = static_cast<tHashElement*>(element->hh.next)) {
            this->removeAllActionsFromTarget(element->target);
        }
    }
    void removeAllActionsFromTarget(cocos2d::CCObject*) = imac 0x233d20;
    void resumeTarget(cocos2d::CCObject*) = imac 0x233700, m1 0x1dd1f4;
    void resumeTargets(cocos2d::CCSet* p0) = m1 0x1dd374, ios inline {
        for (auto it = p0->begin(); it != p0->end(); ++it) {
            this->resumeTarget(*it);
        }
    }
}

[[link(win, android)]]
class cocos2d::CCActionTween {
    static cocos2d::CCActionTween* create(float, char const*, float, float) = imac 0x7a4eb0, m1 0x6abf88;
    static cocos2d::CCActionTween* create(float, int, float, float) = imac 0x7a4db0, m1 0x6abea0;

    virtual void update(float) = imac 0x7a5060, m1 0x6ac100;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x6ac0c4;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x7a50d0, m1 0x6ac154;

    bool initWithDuration(float p0, char const* p1, float p2, float p3) = imac 0x27e250, m1 0x6ac068, ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_strKey = p1;
        // m_nIntTag = 0;
        m_fFrom = p2;
        m_fTo = p3;
        return true;
    }
    // CCActionTween(cocos2d::CCActionTween const&);
    // CCActionTween();
    void updateTargetValue(float p0) = imac 0x7a5040, m1 0x6ac0f0, ios inline {
        m_fTo = p0;
        m_fDelta = p0 - m_fFrom;
    }
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33e2e8;
    virtual void stop();
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27e740, m1 0x236d14;
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
    CCAnimationCache() = m1 0x3d48c4, ios inline {
        m_pAnimations = nullptr;
    }
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
    void removeAnimationByName(const char* p0) = m1 0x3d4aa0, ios inline {
        if (p0) m_pAnimations->removeObjectForKey(p0);
    }
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
    void addObjectNew(cocos2d::CCObject* p0) = m1 0x632b38, ios inline {
        ccArrayEnsureExtraCapacity(data, 1);
        p0->retain();
        data->arr[data->num] = p0;
        p0->m_uIndexInArray = data->num;
        data->num++;
    }
    // void addObjectsFromArray(cocos2d::CCArray*);
    unsigned int capacity() const;
    // bool containsObject(cocos2d::CCObject*) const;
    // unsigned int count() const;
    void exchangeObject(cocos2d::CCObject*, cocos2d::CCObject*);
    void exchangeObjectAtIndex(unsigned int, unsigned int);
    // void fastRemoveObject(cocos2d::CCObject*);
    // void fastRemoveObjectAtIndex(unsigned int) = imac 0x709f10, m1 0x629530;
    void fastRemoveObjectAtIndexChild(unsigned int p0) = m1 0x632b98, ios inline {
        auto last = --data->num;
        data->arr[last]->m_uUnknown = p0;
        CC_SAFE_RELEASE(data->arr[p0]);
        data->arr[p0] = data->arr[last];
    }
    void fastRemoveObjectAtIndexNew(unsigned int p0) = m1 0x632b90, ios inline {
        auto last = --data->num;
        data->arr[last]->m_uIndexInArray = p0;
        CC_SAFE_RELEASE(data->arr[p0]);
        data->arr[p0] = data->arr[last];
    }
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
    void recreateNewIndexes() = m1 0x632b30, ios inline {
        for (int i = 0; i < data->num; i++) {
            data->arr[i]->m_uIndexInArray = i;
        }
    }
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

    // virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios 0x249634, imac 0x70a140, m1 0x62971c;
    // virtual void acceptVisitor(cocos2d::CCDataVisitor&) = ios 0x2496f8, imac 0x70a240, m1 0x62981c;
    cocos2d::ccArray* data;
}

[[link(win, android)]]
class cocos2d::CCAtlasNode : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    CCAtlasNode() = m1 0x2b70a8;
    virtual ~CCAtlasNode() = m1 0x2b7138;

    static cocos2d::CCAtlasNode* create(char const*, unsigned int, unsigned int, unsigned int) = imac 0x32a570, m1 0x2b7220;

    virtual cocos2d::CCTextureAtlas* getTextureAtlas() = imac 0x32aeb0, m1 0x2b7b38;
    virtual void setTextureAtlas(cocos2d::CCTextureAtlas*) = m1 0x2b7afc;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x32ad30, m1 0x2b79e0;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x32ad50, m1 0x2b79f4;
    virtual unsigned int getQuadsToDraw() = imac 0x32aec0, m1 0x2b7b40;
    virtual void setQuadsToDraw(unsigned int) = imac 0x32aed0, m1 0x2b7b48;
    virtual void updateAtlasValues() = imac 0x32a970, m1 0x2b7610;
    virtual void draw() = imac 0x32a980, m1 0x2b7614;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x32ae40, m1 0x2b7adc;
    virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x2b7a08;
    virtual bool isOpacityModifyRGB() = imac 0x32ad00, m1 0x2b79c8;
    virtual void setOpacityModifyRGB(bool) = imac 0x32ac50, m1 0x2b7900;
    virtual cocos2d::ccColor3B const& getColor();
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x32aab0;
    virtual void setOpacity(unsigned char);

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
    virtual ~CCAutoreleasePool() = ios inline {
        CC_SAFE_DELETE(m_pManagedObjectArray);
    }

    void addObject(cocos2d::CCObject* p0) = m1 0x36f198, ios inline {
        m_pManagedObjectArray->addObject(p0);
        p0->m_uAutoReleaseCount++;
        p0->release();
    }
    void clear() = m1 0x36f220;
    void removeObject(cocos2d::CCObject* p0) = ios inline {
        for (int i = 0; i < p0->m_uAutoReleaseCount; i++) {
            m_pManagedObjectArray->removeObject(p0, false);
        }
    }
}

[[link(win, android)]]
class cocos2d::CCBezierBy : cocos2d::CCActionInterval {
    static cocos2d::CCBezierBy* create(float, cocos2d::ccBezierConfig const&) = imac 0x3b9310;

    // CCBezierBy(cocos2d::CCBezierBy const&);
    // CCBezierBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x3b9690;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33ba64;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x2b4940;

    bool initWithDuration(float, cocos2d::ccBezierConfig const&) = imac 0x3b9450, m1 0x33ba04;
}

[[link(win, android)]]
class cocos2d::CCBezierTo : cocos2d::CCBezierBy {
    static cocos2d::CCBezierTo* create(float, cocos2d::ccBezierConfig const&) = imac 0x3b9900, m1 0x33be14;

    // CCBezierTo(cocos2d::CCBezierTo const&);
    // CCBezierTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*);

    bool initWithDuration(float, cocos2d::ccBezierConfig const&) = imac 0x3b99e0, m1 0x33bec4;
}

[[link(win, android)]]
class cocos2d::CCBlink : cocos2d::CCActionInterval {
    static cocos2d::CCBlink* create(float, unsigned int) = imac 0x3ba410, m1 0x33c768;

    // CCBlink(cocos2d::CCBlink const&);
    // CCBlink();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x3ba680, m1 0x33c990;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33c85c;
    virtual void stop() = imac 0x3ba500, m1 0x33c828;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3ba700, m1 0x33ca18;

    bool initWithDuration(float p0, unsigned int p1) = imac 0x3ba4c0, m1 0x33c800, ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_nTimes = p1;
        return true;
    }
}

[[link(win, android)]]
class cocos2d::CCBMFontConfiguration : cocos2d::CCObject {
    // CCBMFontConfiguration(cocos2d::CCBMFontConfiguration const&);
    CCBMFontConfiguration() = m1 0x5017f8, ios inline {
        m_pFontDefDictionary = nullptr;
        m_nCommonHeight = 0;
        m_pKerningDictionary = nullptr;
        m_pCharacterSet = nullptr;
    }
    virtual ~CCBMFontConfiguration() = imac 0x5d5720, m1 0x501830;

    static cocos2d::CCBMFontConfiguration* create(char const*) = imac 0x5d48d0, m1 0x50086c;

    char const* description() = ios inline {
        return CCString::createWithFormat(
            "<CCBMFontConfiguration = " CC_FORMAT_PRINTF_SIZE_T " | Glphys:%d Kernings:%d | Image = %s>",
            (size_t)this,
            HASH_COUNT(m_pFontDefDictionary),
            HASH_COUNT(m_pKerningDictionary),
            m_sAtlasName.c_str()
        )->getCString();
    }
    bool initWithFNTfile(char const* p0) = imac 0x5d49f0, m1 0x500984, ios inline {
        m_pKerningDictionary = nullptr;
        m_pFontDefDictionary = nullptr;
        m_pCharacterSet = this->parseConfigFile(p0);
        return m_pCharacterSet != nullptr;
    }
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x7acd70, m1 0x6b3580;
    virtual bool initWithTarget(cocos2d::CCObject*) = m1 0x6b3324;
    virtual void execute() = imac 0x7acd80, m1 0x6b358c;
}

[[link(win, android)]]
class cocos2d::CCCallFuncN : cocos2d::CCCallFunc, cocos2d::TypeInfo {
    static cocos2d::CCCallFuncN* create(cocos2d::CCObject* pSelectorTarget, cocos2d::SEL_CallFuncN selector) = imac 0x7ace40, m1 0x6b3670, ios inline {
	CCCallFuncN *pRet = new CCCallFuncN();

        if (pRet && pRet->initWithTarget(pSelectorTarget, selector))
        {
            pRet->autorelease();
            return pRet;
        }

        CC_SAFE_DELETE(pRet);
        return NULL;
    }

    virtual bool initWithTarget(cocos2d::CCObject* pSelectorTarget, cocos2d::SEL_CallFuncN selector) = imac 0x7acf70, m1 0x6b3780, ios inline {
        if (CCCallFunc::initWithTarget(pSelectorTarget)) {
            m_pCallFuncN = selector;
            return true;
        }

        return false;
    }
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* zone) = imac 0x7acfc0, m1 0x6b37d4, ios inline {
        cocos2d::CCZone* pNewZone = NULL;
        CCCallFuncN* pRet = NULL;

        if (zone && zone->m_pCopyObject) {
            //in case of being called at sub class
            pRet = (CCCallFuncN*) (zone->m_pCopyObject);
        } else {
            pRet = new CCCallFuncN();
            zone = pNewZone = new CCZone(pRet);
        }

        CCCallFunc::copyWithZone(zone);
        pRet->initWithTarget(m_pSelectorTarget, m_pCallFuncN);
        CC_SAFE_DELETE(pNewZone);
        return pRet;
    }
    virtual void execute() = imac 0x7acde0, m1 0x6b35fc, ios inline {
        if (m_pCallFuncN) {
            (m_pSelectorTarget->*m_pCallFuncN)(m_pTarget);
        }
        // if (m_nScriptHandler) {
        //     CCScriptEngineManager::sharedManager()->getScriptEngine()->executeCallFuncActionEvent(this, m_pTarget);
        // }
    }
}

[[link(win, android)]]
class cocos2d::CCCallFuncND : cocos2d::CCCallFuncN {
    static cocos2d::CCCallFuncND* create(cocos2d::CCObject* p0, cocos2d::SEL_CallFuncND p1, void* p2) = imac 0x6528f0, m1 0x51422c, ios inline {
        auto ret = new CCCallFuncND();
        if (ret->initWithTarget(p0, p1, p2)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    // CCCallFuncND(cocos2d::CCCallFuncND const&);
    // CCCallFuncND();
    virtual bool initWithTarget(cocos2d::CCObject* p0, cocos2d::SEL_CallFuncND p1, void* p2) = imac 0x64eb90, m1 0x6b397c, ios inline {
        if (!CCCallFunc::initWithTarget(p0)) return false;
        m_pData = p2;
        m_pCallFuncND = p1;
        return true;
    }
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* p0) = imac 0x3b7e10, m1 0x33aa9c, ios inline {
        cocos2d::CCZone* zone = nullptr;
        cocos2d::CCCallFuncND* ret = nullptr;
        if (p0 && p0->m_pCopyObject) {
            ret = static_cast<cocos2d::CCCallFuncND*>(p0->m_pCopyObject);
        } else {
            ret = new cocos2d::CCCallFuncND();
            zone = p0 = new cocos2d::CCZone(ret);
        }
        CCCallFunc::copyWithZone(p0);
        ret->initWithTarget(m_pSelectorTarget, m_pCallFuncND, m_pData);
        CC_SAFE_DELETE(zone);
        return ret;
    }
    virtual void execute() = imac 0x7ad330, m1 0x6b3adc, ios inline {
        if (m_pCallFuncND) {
            (m_pSelectorTarget->*m_pCallFuncND)(m_pTarget, m_pData);
        }
    }
}

[[link(win, android)]]
class cocos2d::CCCallFuncO : cocos2d::CCCallFunc, cocos2d::TypeInfo {
    // cocos2d::CCObject* getObject();
    // void setObject(cocos2d::CCObject*);
    // CCCallFuncO(cocos2d::CCCallFuncO const&);
    CCCallFuncO() = m1 0x6b3b4c, ios inline {
        m_pObject = nullptr;
    }
    virtual ~CCCallFuncO() = m1 0x6b3b84;

    static cocos2d::CCCallFuncO* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*) = imac 0x7ad520, m1 0x6b3c50;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x7ad670, m1 0x6b3d7c;
    virtual void execute() = imac 0x7ad4e0, m1 0x6b3c1c;
    virtual bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*) = imac 0x7ad600, m1 0x2de6b8;
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

    virtual void startWithTarget(cocos2d::CCNode*);
    virtual cocos2d::CCActionInterval* reverse() = imac 0x2d1df0, m1 0x26cffc;
    virtual void updatePosition(cocos2d::CCPoint&) = imac 0x2d1da0, m1 0x26cfa4;
}

[[link(win, android)]]
class cocos2d::CCCardinalSplineTo : cocos2d::CCActionInterval {
    CCCardinalSplineTo();
    virtual ~CCCardinalSplineTo() = m1 0x26c7d4;

    static cocos2d::CCCardinalSplineTo* create(float, cocos2d::CCPointArray*, float) = imac 0x2d13b0, m1 0x26c620;

    virtual cocos2d::CCCardinalSplineTo* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void update(float) = imac 0x2d1830, m1 0x26ca84;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x26cd34;
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
    virtual bool init(cocos2d::CCNode* pStencil) = m1 0x631dd0;
    virtual void onEnter() = m1 0x631e40;
    virtual void onEnterTransitionDidFinish() = m1 0x631e6c;
    virtual void onExit() = m1 0x631ec8;
    virtual void onExitTransitionDidStart() = m1 0x631e98;
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
    virtual void setEnabled(bool) = m1 0x8cb64;

    char const* getName() const;
    cocos2d::CCNode* getOwner() const;
    void setName(char const*);
    void setOwner(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCComponentContainer {
    CCComponentContainer(cocos2d::CCNode* p0) = win inline {
        m_pComponents = nullptr;
        m_pOwner = p0;
    }
    virtual ~CCComponentContainer();

    virtual cocos2d::CCComponent* get(char const*) const = m1 0x260ec8;
    virtual bool add(cocos2d::CCComponent*) = m1 0x260ff8;
    virtual bool remove(char const*);
    virtual bool remove(cocos2d::CCComponent*);
    virtual void removeAll();
    virtual void visit(float);

    void alloc();
    bool isEmpty() const;
}

[[link(win, android)]]
class cocos2d::CCConfiguration : cocos2d::CCObject {
    CCConfiguration();
    // CCConfiguration(cocos2d::CCConfiguration const&);
    virtual ~CCConfiguration();

    static void purgeConfiguration();
    static cocos2d::CCConfiguration* sharedConfiguration() = imac 0x519700, m1 0x45acf0;

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
    virtual void visit(cocos2d::CCBool const* p0) = imac 0x4b4b40, m1 0x415e1c, ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCInteger const* p0) = imac 0x4b4b50, m1 0x415e28, ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCFloat const* p0) = imac 0x4b4b60, m1 0x415e34, ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCDouble const* p0) = imac 0x4b4b70, m1 0x415e40, ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCString const* p0) = imac 0x4b4b80, m1 0x415e4c, ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCArray const* p0) = imac 0x4b4b90, m1 0x415e58, ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCDictionary const* p0) = imac 0x4b4ba0, m1 0x415e64, ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCSet const* p0) = imac 0x4b4bb0, m1 0x415e70, ios inline {
        return visitObject(p0);
    }
}

[[link(win, android)]]
class cocos2d::CCDeccelAmplitude : cocos2d::CCActionInterval {

    virtual ~CCDeccelAmplitude() = m1 0x1b6634;

    static cocos2d::CCDeccelAmplitude* create(cocos2d::CCAction*, float);

    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x1b66ec;
    virtual void update(float) = imac 0x20a880, m1 0x1b6720;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x1b6774;

    bool initWithAction(cocos2d::CCAction*, float);
}

[[link(win, android)]]
class cocos2d::CCDelayTime : cocos2d::CCActionInterval {
    static cocos2d::CCDelayTime* create(float);

    // CCDelayTime(cocos2d::CCDelayTime const&);
    // CCDelayTime();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x3bb820, m1 0x33d990;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x33d994;
}

[[link(win, android)]]
class cocos2d::CCDevice {
    static int getDPI();
}

[[link(win, android)]]
class cocos2d::CCDictElement {
    CCDictElement(char const* p0, cocos2d::CCObject* p1) = win inline, m1 0x29c964, ios inline {
        m_iKey = 0;
        auto pStart = p0;
        int len = strlen(p0);
        if (len > MAX_KEY_LEN) pStart = p0 + len - MAX_KEY_LEN;
        strncpy(m_szKey, pStart, std::min(len, MAX_KEY_LEN));
        m_pObject = p1;
        memset(&hh, 0, sizeof(hh));
    }
    CCDictElement(intptr_t p0, cocos2d::CCObject* p1) = win inline, imac 0x30d4e0, m1 0x29c9e8, ios inline {
        m_szKey[0] = '\0';
        m_iKey = p0;
        m_pObject = p1;
        memset(&hh, 0, sizeof(hh));
    }
    ~CCDictElement() = m1 0x29ca04, ios inline {}
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x30f7c0;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x30fc50, m1 0x29efd0;

    cocos2d::CCArray* allKeys() = imac 0x30d7e0, m1 0x29cc6c;
    cocos2d::CCArray* allKeysForObject(cocos2d::CCObject* p0) = imac 0x30d970, m1 0x29ce04, ios inline {
        auto keyCount = this->count();
        if (keyCount <= 0) return nullptr;
        auto arr = CCArray::createWithCapacity(keyCount);
        CCDictElement* element;
        CCDictElement* temp;
        if (m_eDictType == kCCDictStr) {
            HASH_ITER(hh, m_pElements, element, temp) {
                if (element->getObject() == p0) {
                    auto key = new CCString(element->getStrKey());
                    arr->addObject(key);
                    key->release();
                }
            }
        }
        else if (m_eDictType == kCCDictInt) {
            HASH_ITER(hh, m_pElements, element, temp) {
                if (element->getObject() == p0) {
                    auto key = new CCInteger(element->getIntKey());
                    arr->addObject(key);
                    key->release();
                }
            }
        }
        return arr;
    }
    char const* charForKey(gd::string const& p0) = imac 0x30dab0, ios inline {
        return this->valueForKey(p0)->getCString();
    }
    unsigned int count() = m1 0x29cc50;
    gd::string getFirstKey() = imac 0x30d910, m1 0x29cd9c;
    cocos2d::CCObject* objectForKey(gd::string const&);
    cocos2d::CCObject* objectForKey(intptr_t) = imac 0x30df20, m1 0x29d41c;
    cocos2d::CCObject* randomObject() = imac 0x30f9d0, m1 0x27f264, ios inline {
        if (m_eDictType == kCCDictUnknown) return nullptr;
        auto key = this->allKeys()->randomObject();
        if (m_eDictType == kCCDictInt) return this->objectForKey(static_cast<CCInteger*>(key)->getValue());
        else if (m_eDictType == kCCDictStr) return this->objectForKey(static_cast<CCString*>(key)->getCString());
        else return nullptr;
    }
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
    bool writeToFile(char const* p0) = imac 0x16ada0, m1 0x29f010, ios inline {
        return CCFileUtils::sharedFileUtils()->writeToFile(this, p0);
    }

    cocos2d::CCDictElement* m_pElements;
    int m_eDictType;
}

[[link(win, android)]]
class cocos2d::CCDirector : cocos2d::CCObject, cocos2d::TypeInfo {
    // CCDirector(cocos2d::CCDirector const&);
    CCDirector() = m1 0x3e806c;
    virtual ~CCDirector() = m1 0x3e8480;

    static cocos2d::CCDirector* sharedDirector() = imac 0x481f00, m1 0x3e7fac;

    virtual bool init() = imac 0x482030, m1 0x3e80d0;
    virtual cocos2d::CCScheduler* getScheduler() = m1 0x3ea154;
    virtual void setScheduler(cocos2d::CCScheduler*) = m1 0x3ea10c;
    virtual cocos2d::CCActionManager* getActionManager() = m1 0x3ea1a4;
    virtual void setActionManager(cocos2d::CCActionManager*) = m1 0x3ea15c;
    virtual cocos2d::CCTouchDispatcher* getTouchDispatcher() = m1 0x3ea1f4;
    virtual void setTouchDispatcher(cocos2d::CCTouchDispatcher*) = m1 0x3ea1ac;
    virtual cocos2d::CCKeypadDispatcher* getKeypadDispatcher() = imac 0x4846b0, m1 0x3ea2c0;
    virtual void setKeypadDispatcher(cocos2d::CCKeypadDispatcher*) = m1 0x3ea284;
    virtual cocos2d::CCKeyboardDispatcher* getKeyboardDispatcher() = m1 0x3ea238;
    virtual void setKeyboardDispatcher(cocos2d::CCKeyboardDispatcher*) = m1 0x3ea1fc;
    virtual cocos2d::CCMouseDispatcher* getMouseDispatcher() = m1 0x3ea27c;
    virtual void setMouseDispatcher(cocos2d::CCMouseDispatcher*) = m1 0x3ea240;
    virtual cocos2d::CCAccelerometer* getAccelerometer() = imac 0x4846f0, m1 0x3ea300;
    virtual void setAccelerometer(cocos2d::CCAccelerometer*) = imac 0x4846c0, m1 0x3ea2c8;
    virtual float getDeltaTime();

    void applySmoothFix();
    void calculateDeltaTime() = m1 0x3e8b00;
    void calculateMPF() = m1 0x3e8ea4;
    void checkSceneReference();
    cocos2d::CCPoint convertToGL(cocos2d::CCPoint const&) = imac 0x483860, m1 0x3e961c;
    cocos2d::CCPoint convertToUI(cocos2d::CCPoint const& p0) = imac 0x483980, m1 0x3e96f8, ios inline {
        kmMat4 projection;
        kmGLGetMatrix(KM_GL_PROJECTION, &projection);
        kmMat4 modelView;
        kmGLGetMatrix(KM_GL_MODELVIEW, &modelView);
        kmMat4 transform;
        kmMat4Multiply(&transform, &projection, &modelView);
        kmVec3 clipCoord;
        kmVec3 glCoord = { p0.x, p0.y, 0.0f };
        kmVec3TransformCoord(&clipCoord, &glCoord, &transform);
        auto glSize = m_pobOpenGLView->getDesignResolutionSize();
        return {
            glSize.width * (clipCoord.x * 0.5f + 0.5f),
            glSize.height * (-clipCoord.y * 0.5f + 0.5f)
        };
    }
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
    cocos2d::CCPoint getVisibleOrigin() = m1 0x3e980c, ios inline {
        return m_pobOpenGLView ? m_pobOpenGLView->getVisibleOrigin() : cocos2d::CCPoint { 0.f, 0.f };
    }
    cocos2d::CCSize getVisibleSize() = m1 0x3e97e8, ios inline {
        return m_pobOpenGLView ? m_pobOpenGLView->getVisibleSize() : cocos2d::CCSize { 0.f, 0.f };
    }
    cocos2d::CCSize getWinSize() = imac 0x483310, m1 0x3e9184;
    cocos2d::CCSize getWinSizeInPixels() = imac 0x483a90, m1 0x10fe04;
    float getZEye();
    // bool isDisplayStats();
    // bool isNextDeltaTimeZero();
    // bool isPaused();
    // bool isSendCleanupToScene();
    int levelForSceneInStack(cocos2d::CCScene*);
    void pause();
    void popScene() = imac 0x483e50, m1 0x3e9b40;
    bool popSceneWithTransition(float, cocos2d::PopTransition) = m1 0x3e9bcc;
    void popToRootScene() = imac 0x483fc0, m1 0x3e9c9c;
    void popToSceneInStack(cocos2d::CCScene*) = imac 0x484140, m1 0x3e9e04;
    void popToSceneStackLevel(int) = m1 0x3e9ca4;
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
    virtual void setAnimationInterval(double) = imac 0x484790;
    virtual void stopAnimation() = imac 0x484780;
    virtual void startAnimation() = m1 0x3ea308;
    virtual void mainLoop() = win 0xbd340;
}

[[link(win, android)]]
class cocos2d::CCDrawNode : cocos2d::CCNodeRGBA {
    // CCDrawNode(cocos2d::CCDrawNode const&);
    CCDrawNode();
    virtual ~CCDrawNode() = m1 0x535f08;

    static cocos2d::CCDrawNode* create() = m1 0x536050;

    virtual bool init() = imac 0x610940, m1 0x536180;
    virtual void draw() = m1 0x536344;

    void clear() = imac 0x612ab0, m1 0x537d48;
    void disableDrawArea() = imac 0x610c80, m1 0x53647c;
    bool drawCircle(cocos2d::CCPoint const&, float, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&, unsigned int) = m1 0x537ba8;
    void drawCubicBezier(cocos2d::CCPoint const& p0, cocos2d::CCPoint const& p1, cocos2d::CCPoint const& p2, cocos2d::CCPoint const& p3, unsigned int p4, cocos2d::ccColor4F const& p5) = ios inline {
        auto vertices = new CCPoint[p4 + 1];
        if (p4 != 0) {
            auto factor = 0.f;
            for (int i = 0; i <= p4; i++) {
                auto& vertex = vertices[i];
                auto result = 1.f - factor;
                auto num1 = powf(result, 2.f) * 3.f * factor;
                auto num2 = result * 3.f * factor * factor;
                auto num3 = factor * factor * factor;
                vertex.x = p0.x * powf(result, 3.f) + p1.x * num1 + p2.x * num2 + p3.x * num3;
                vertex.y = p0.y * powf(result, 3.f) + p1.y * num1 + p2.y * num2 + p3.y * num3;
            }
        }
        vertices[p4] = p3;
        this->drawPolygon(vertices, p4 + 1, { 0.f, 0.f, 0.f, 0.f }, 2.f, p5);
        delete[] vertices;
    }
    bool drawDot(cocos2d::CCPoint const& pos, float radius, cocos2d::ccColor4F const& color) = ios inline {
        if (m_bUseArea && pos.x + radius < m_fMinAreaX || pos.x - radius > m_fMaxAreaX || pos.y + radius < m_fMinAreaY || pos.y - radius > m_fMaxAreaY) return false;

        unsigned int vertex_count = 2*3;
        cocos2d::CCDrawNode::ensureCapacity(vertex_count);

        cocos2d::ccV2F_C4B_T2F a = {{pos.x - radius, pos.y - radius}, cocos2d::ccc4BFromccc4F(color), {-1.0, -1.0} };
        cocos2d::ccV2F_C4B_T2F b = {{pos.x - radius, pos.y + radius}, cocos2d::ccc4BFromccc4F(color), {-1.0,  1.0} };
        cocos2d::ccV2F_C4B_T2F c = {{pos.x + radius, pos.y + radius}, cocos2d::ccc4BFromccc4F(color), { 1.0,  1.0} };
        cocos2d::ccV2F_C4B_T2F d = {{pos.x + radius, pos.y - radius}, cocos2d::ccc4BFromccc4F(color), { 1.0, -1.0} };

        cocos2d::ccV2F_C4B_T2F_Triangle *triangles = (cocos2d::ccV2F_C4B_T2F_Triangle *)(m_pBuffer + m_nBufferCount);
        cocos2d::ccV2F_C4B_T2F_Triangle triangle0 = {a, b, c};
        cocos2d::ccV2F_C4B_T2F_Triangle triangle1 = {a, c, d};
        triangles[0] = triangle0;
        triangles[1] = triangle1;

        m_nBufferCount += vertex_count;

        m_bDirty = true;
        return true;
    }
    bool drawLines(cocos2d::CCPoint*, unsigned int, float, cocos2d::ccColor4F const&) = imac 0x612880, m1 0x537b20;
    bool drawPolygon(cocos2d::CCPoint*, unsigned int, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&);
    void drawPreciseCubicBezier(cocos2d::CCPoint const& p0, cocos2d::CCPoint const& p1, cocos2d::CCPoint const& p2, cocos2d::CCPoint const& p3, unsigned int p4, cocos2d::ccColor4F const& p5) = ios inline {
        auto d01 = ccpDistance(p0, p1);
        auto d12 = ccpDistance(p1, p2);
        auto d23 = ccpDistance(p3, p2);
        auto l = d01 + d12 + d23;
        auto t1 = d01 / l;
        auto t2 = (d01 + d12) / l;
        auto u2 = 1.f - t2;
        auto u1 = 1.f - t1;
        auto a1 = u1 * t1 * u1 * 3.f;
        auto b1 = u1 * t1 * t1 * 3.f;
        auto a2 = u2 * t2 * u2 * 3.f;
        auto b2 = u2 * t2 * t2 * 3.f;
        auto rx = p1.x - powf(u1, 3.f) * p0.x - powf(t1, 3.f) * p3.x;
        auto ry = p1.y - powf(u1, 3.f) * p0.y - powf(t1, 3.f) * p3.y;
        auto ratio = a1 / a2;
        auto denom = b1 - (b2 * a1) / a2;
        auto x = (rx - (p2.x - powf(u2, 3.f) * p0.x - powf(t2, 3.f) * p3.x) * ratio) / denom;
        auto y = (ry - (p2.y - powf(t1, 3.f) * p0.y - powf(t2, 3.f) * p3.y) * ratio) / denom;
        this->drawCubicBezier(p0, { (rx - x * b1) / a1, (ry - y * b1) / a1 }, { x, y }, p3, p4, p5);
    }
    bool drawRect(cocos2d::CCRect const&, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&);
    bool drawRect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&);
    bool drawSegment(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::ccColor4F const&);
    void enableDrawArea(cocos2d::CCRect&) = imac 0x610c10, m1 0x53641c;
    void ensureCapacity(unsigned int);
    cocos2d::ccBlendFunc getBlendFunc() const = imac 0x612ad0, m1 0x537d58;
    [[since("4.10.1")]]
    bool is_circle_on_screen(cocos2d::CCRect const&, cocos2d::CCPoint const&, float) = imac 0x610c90, m1 0x536484, ios inline {
        return p1.x + p2 >= m_fMinAreaX && p1.x - p2 <= m_fMaxAreaX && p1.y + p2 >= m_fMinAreaY && p1.y - p2 <= m_fMaxAreaY;
    }
    [[since("4.10.1")]]
    bool is_segment_on_screen(cocos2d::CCRect const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x611e60, m1 0x537308;
    void listenBackToForeground(cocos2d::CCObject*) = imac 0x612af0, m1 0x537d6c, ios inline {
        this->init();
    }
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
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46d71c;
    virtual void update(float) = imac 0x516e50, m1 0x46d804;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBackInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackInOut* create(cocos2d::CCActionInterval* pAction) = ios inline {
        CCEaseBackInOut *pRet = new CCEaseBackInOut();
        if (pRet)
        {
            if (pRet->initWithAction(pAction))
            {
                pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet;
    }

    // CCEaseBackInOut(cocos2d::CCEaseBackInOut const&);
    // CCEaseBackInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x46daf0, ios inline {
        CCZone* pNewZone = NULL;
        CCEaseBackInOut* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCEaseBackInOut*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseBackInOut();
            pNewZone = new CCZone(pCopy);
        }

        pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));
    
        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float time) = imac 0x517240, m1 0x46dbd8, ios inline {
        float overshoot = 1.70158f * 1.525f;

        time = time * 2;
        if (time < 1)
        {
            m_pInner->update((time * time * ((overshoot + 1) * time - overshoot)) / 2);
        }
        else
        {
            time = time - 2;
            m_pInner->update((time * time * ((overshoot + 1) * time + overshoot)) / 2 + 1);
        }
    }
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5172d0, m1 0x46dc6c, ios inline {
        return CCEaseBackInOut::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEaseBackOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackOut* create(cocos2d::CCActionInterval*);

    // CCEaseBackOut(cocos2d::CCEaseBackOut const&);
    // CCEaseBackOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46d900;
    virtual void update(float) = imac 0x517040, m1 0x46d9e8;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBounce : cocos2d::CCActionEase {
    static cocos2d::CCEaseBounce* create(cocos2d::CCActionInterval* pAction) = ios inline {
        CCEaseBounce *pRet = new CCEaseBounce();
        if (pRet)
        {
            if (pRet->initWithAction(pAction))
            {
                pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet; 
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
        CCZone* pNewZone = NULL;
        CCEaseBounce* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCEaseBounce*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseBounce();
            pNewZone = new CCZone(pCopy);
        }

        pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));
        
        CC_SAFE_DELETE(pNewZone);
        return pCopy; 
    }
    virtual cocos2d::CCActionInterval* reverse() = imac 0x516400, ios inline {
        return CCEaseBounce::create(m_pInner->reverse());
    }

    // CCEaseBounce(cocos2d::CCEaseBounce const&);
    // CCEaseBounce();
    float bounceTime(float) = imac 0x516340, m1 0x46cc1c;
}

[[link(win, android)]]
class cocos2d::CCEaseBounceIn : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceIn* create(cocos2d::CCActionInterval*);

    // CCEaseBounceIn(cocos2d::CCEaseBounceIn const&);
    // CCEaseBounceIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46cdcc;
    virtual void update(float) = imac 0x5165c0, m1 0x46ceb4;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBounceInOut : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceInOut* create(cocos2d::CCActionInterval* pAction) = ios inline {
        CCEaseBounceInOut *pRet = new CCEaseBounceInOut();
        if (pRet)
        {
            if (pRet->initWithAction(pAction))
            {
                pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet;
    }

    // CCEaseBounceInOut(cocos2d::CCEaseBounceInOut const&);
    // CCEaseBounceInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x46d344, ios inline {
        CCZone* pNewZone = NULL;
        CCEaseBounceInOut* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCEaseBounceInOut*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseBounceInOut();
            pNewZone = new CCZone(pCopy);
        }

        pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));
    
        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float time) = imac 0x516ae0, m1 0x437558, ios inline {
        float newT = 0;
        if (time < 0.5f)
        {
            time = time * 2;
            newT = (1 - bounceTime(1 - time)) * 0.5f;
        }
        else
        {
            newT = bounceTime(time * 2 - 1) * 0.5f + 0.5f;
        }

        m_pInner->update(newT);
    }
    virtual cocos2d::CCActionInterval* reverse() = imac 0x516c90, ios inline {
        return CCEaseBounceInOut::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEaseBounceOut : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceOut* create(cocos2d::CCActionInterval*);

    // CCEaseBounceOut(cocos2d::CCEaseBounceOut const&);
    // CCEaseBounceOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x516860, m1 0x46d174;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x516920;
}

[[link(win, android)]]
class cocos2d::CCEaseElastic : cocos2d::CCActionEase {
    static cocos2d::CCEaseElastic* create(cocos2d::CCActionInterval* pAction) = m1 0x46c050, ios inline {
        return cocos2d::CCEaseElastic::create(pAction, 0.3f);
    }
    static cocos2d::CCEaseElastic* create(cocos2d::CCActionInterval* pAction, float fPeriod) = ios inline {
        CCEaseElastic *pRet = new CCEaseElastic();
        if (pRet)
        {
            if (pRet->initWithAction(pAction, fPeriod))
            {
                pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet; 
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x46c174, ios inline {
        CCZone* pNewZone = NULL;
        CCEaseElastic* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCEaseElastic*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseElastic();
            pNewZone = new CCZone(pCopy);
        }

        pCopy->initWithAction((cocos2d::CCActionInterval *)(m_pInner->copy()->autorelease()), m_fPeriod);

        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5158d0, m1 0x46c26c, ios inline {
        return nullptr;
    }

    // CCEaseElastic(cocos2d::CCEaseElastic const&);
    // CCEaseElastic();
    bool initWithAction(cocos2d::CCActionInterval* pAction, float fPeriod) = ios inline {
        if (CCActionEase::initWithAction(pAction))
        {
            m_fPeriod = fPeriod;
            return true;
        }

        return false;
    }
}

[[link(win, android)]]
class cocos2d::CCEaseElasticIn : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval* pAction) = ios inline {
        return cocos2d::CCEaseElasticIn::create(pAction, 0.3f);
    }
    static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval*, float);

    // CCEaseElasticIn(cocos2d::CCEaseElasticIn const&);
    // CCEaseElasticIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x515ad0, m1 0x46c438;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x515b70, m1 0x46c4c8;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticInOut : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticInOut* create(cocos2d::CCActionInterval* pAction) = ios inline {
        return CCEaseElasticInOut::create(pAction, 0.3f);
    }
    static cocos2d::CCEaseElasticInOut* create(cocos2d::CCActionInterval* pAction, float fPeriod) = ios inline {
        CCEaseElasticInOut *pRet = new CCEaseElasticInOut();
        if (pRet)
        {
            if (pRet->initWithAction(pAction, fPeriod))
            {
                    pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet; 
    }

    // CCEaseElasticInOut(cocos2d::CCEaseElasticInOut const&);
    // CCEaseElasticInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
        CCZone* pNewZone = NULL;
        CCEaseElasticInOut* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCEaseElasticInOut*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseElasticInOut();
            pNewZone = new CCZone(pCopy);
        }

        pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()), m_fPeriod);

        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float time) = imac 0x516050, m1 0x46c948, ios inline {
        float newT = 0;
        if (time == 0 || time == 1)
        {
            newT = time;
        }
        else
        {
            time = time * 2;
            if (! m_fPeriod)
            {
                m_fPeriod = 0.3f * 1.5f;
            }

            float s = m_fPeriod / 4;

            time = time - 1;
            if (time < 0)
            {
                newT = -0.5f * powf(2, 10 * time) * sinf((time -s) * (M_PI * 2) / m_fPeriod);
            }
            else
            {
                newT = powf(2, -10 * time) * sinf((time - s) * (M_PI * 2) / m_fPeriod) * 0.5f + 1;
            }
        }

        m_pInner->update(newT);
    }
    virtual cocos2d::CCActionInterval* reverse() = imac 0x516170, ios inline {
        return CCEaseElasticInOut::create(m_pInner->reverse(), m_fPeriod);
    }
}

[[link(win, android)]]
class cocos2d::CCEaseElasticOut : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*) = imac 0x515c60, m1 0x46c5b4;
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*, float) = m1 0x46c4f8;

    // CCEaseElasticOut(cocos2d::CCEaseElasticOut const&);
    // CCEaseElasticOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46c5c4;
    virtual void update(float) = imac 0x515d90;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x515e30, m1 0x46c754;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialIn* create(cocos2d::CCActionInterval*);

    // CCEaseExponentialIn(cocos2d::CCEaseExponentialIn const&);
    // CCEaseExponentialIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x514bf0, m1 0x46b5b0;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialInOut* create(cocos2d::CCActionInterval* pAction) = ios inline {
        CCEaseExponentialInOut *pRet = new CCEaseExponentialInOut();
        if (pRet)
        {
            if (pRet->initWithAction(pAction))
            {
                pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet; 
    }

    // CCEaseExponentialInOut(cocos2d::CCEaseExponentialInOut const&);
    // CCEaseExponentialInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x46b900, ios inline {
        CCZone* pNewZone = NULL;
        CCEaseExponentialInOut* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCEaseExponentialInOut*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseExponentialInOut();
            pNewZone = new CCZone(pCopy);
        }

        pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));

        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float time) = imac 0x515010, m1 0x46b9e8, ios inline {
        time /= 0.5f;
        if (time < 1)
        {
            time = 0.5f * powf(2, 10 * (time - 1));
        }
        else
        {
            time = 0.5f * (-powf(2, -10 * (time - 1)) + 2);
        }

        m_pInner->update(time);
    }
    virtual cocos2d::CCActionInterval* reverse() = imac 0x515080, ios inline {
        return CCEaseExponentialInOut::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialOut* create(cocos2d::CCActionInterval*);

    // CCEaseExponentialOut(cocos2d::CCEaseExponentialOut const&);
    // CCEaseExponentialOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x514e00, m1 0x46b7d4;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x514e50;
}

[[link(win, android)]]
class cocos2d::CCEaseIn : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseIn* create(cocos2d::CCActionInterval*, float);

    // CCEaseIn(cocos2d::CCEaseIn const&);
    // CCEaseIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x514550, m1 0x46af44;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseInOut : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseInOut* create(cocos2d::CCActionInterval*, float);

    // CCEaseInOut(cocos2d::CCEaseInOut const&);
    // CCEaseInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46b28c;
    virtual void update(float) = imac 0x5149b0, m1 0x46b384;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x514a20;
}

[[link(win, android)]]
class cocos2d::CCEaseOut : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseOut* create(cocos2d::CCActionInterval*, float);

    // CCEaseOut(cocos2d::CCEaseOut const&);
    // CCEaseOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x514780, m1 0x46b160;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseRateAction : cocos2d::CCActionEase {
    // CCEaseRateAction(cocos2d::CCEaseRateAction const&);
    // CCEaseRateAction();
    [[since("4.2.1")]]
    virtual ~CCEaseRateAction() = m1 0x46aca0, ios inline {}

    static cocos2d::CCEaseRateAction* create(cocos2d::CCActionInterval* pAction, float fRate) = ios inline {
        CCEaseRateAction *pRet = new CCEaseRateAction();
        if (pRet)
        {
            if (pRet->initWithAction(pAction, fRate))
            {
                pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet;
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
        CCZone* pNewZone = NULL;
        CCEaseRateAction* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCEaseRateAction*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseRateAction();
            pNewZone = new CCZone(pCopy);
        }

        pCopy->initWithAction((CCActionInterval*)(m_pInner->copy()->autorelease()), m_fRate);

        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual cocos2d::CCActionInterval* reverse() = imac 0x514350, ios inline {
        return CCEaseRateAction::create(m_pInner->reverse(), 1 / m_fRate);
    }

    bool initWithAction(cocos2d::CCActionInterval* pAction, float fRate) = ios inline {
        if (CCActionEase::initWithAction(pAction))
        {
            m_fRate = fRate;
            return true;
        }

        return false;
    }
}

[[link(win, android)]]
class cocos2d::CCEaseSineIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineIn* create(cocos2d::CCActionInterval* pAction) = ios inline {
        CCEaseSineIn *pRet = new CCEaseSineIn();
        if (pRet)
        {
            if (pRet->initWithAction(pAction))
            {
                pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet; 
    }

    // CCEaseSineIn(cocos2d::CCEaseSineIn const&);
    // CCEaseSineIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
        CCZone* pNewZone = NULL;
        CCEaseSineIn* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject)
        {
            //in case of being called at sub class
            pCopy = (CCEaseSineIn*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseSineIn();
            pNewZone = new CCZone(pCopy);
        }
        pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));
        
        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float time) = m1 0x46bc04, ios inline {
        m_pInner->update(-1 * cosf(time * (float)M_PI_2) + 1);
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline {
        return CCEaseSineOut::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEaseSineInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineInOut* create(cocos2d::CCActionInterval* pAction) = ios inline {
         CCEaseSineInOut *pRet = new CCEaseSineInOut();
        if (pRet)
        {
            if (pRet->initWithAction(pAction))
            {
                pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet; 
    }

    // CCEaseSineInOut(cocos2d::CCEaseSineInOut const&);
    // CCEaseSineInOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
        CCZone* pNewZone = NULL;
        CCEaseSineInOut* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject)
        {
            //in case of being called at sub class
            pCopy = (CCEaseSineInOut*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseSineInOut();
            pNewZone = new CCZone(pCopy);
        }

        pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));
        
        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float time) = m1 0x46bfe4, ios inline {
        m_pInner->update(-0.5f * (cosf((float)M_PI * time) - 1));
    }
    virtual cocos2d::CCActionInterval* reverse() = imac 0x515670, m1 0x46c030, ios inline {
        return CCEaseSineInOut::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEaseSineOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineOut* create(cocos2d::CCActionInterval* pAction) = ios inline {
        CCEaseSineOut *pRet = new CCEaseSineOut();
        if (pRet)
        {
            if (pRet->initWithAction(pAction))
            {
                pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet; 
    }

    // CCEaseSineOut(cocos2d::CCEaseSineOut const&);
    // CCEaseSineOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
        CCZone* pNewZone = NULL;
        CCEaseSineOut* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCEaseSineOut*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseSineOut();
            pNewZone = new CCZone(pCopy);
        }

        pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));
    
        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float time) = m1 0x46bdf8, ios inline {
        m_pInner->update(sinf(time * (float)M_PI_2));
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline {
        return CCEaseSineIn::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEGLView {
    CCEGLView() = m1 0x45ad60;
    virtual ~CCEGLView() = m1 0x45adb0, ios inline {}

    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithFullScreen(gd::string const&, bool);
    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithFullScreen(gd::string const&, bool, GLFWvidmode const&, GLFWmonitor*);
    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithRect(gd::string const&, cocos2d::CCRect, float);
    static cocos2d::CCEGLView* sharedOpenGLView();

    virtual void end() = imac 0x503110, m1 0x45ae34;
    virtual void swapBuffers() = imac 0x5031c0, m1 0x45aea8;
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
    virtual void setFrameSize(float, float) = m1 0x466624;
    virtual cocos2d::CCSize getVisibleSize() const = imac 0x50f790, m1 0x466668;
    virtual cocos2d::CCPoint getVisibleOrigin() const = imac 0x50f7e0, m1 0x466698;
    virtual void setDesignResolutionSize(float, float, ResolutionPolicy) = imac 0x50f5f0, m1 0x321074;
    virtual cocos2d::CCSize const& getDesignResolutionSize() const = imac 0x50f730, m1 0x466614;
    virtual void setTouchDelegate(cocos2d::EGLTouchDelegate*) = imac 0x50f850, m1 0x4666e4;
    virtual void setViewPortInPoints(float, float, float, float) = m1 0x4666ec;
    virtual void setScissorInPoints(float, float, float, float) = m1 0x466718;
    virtual bool isScissorEnabled() = m1 0x466744;
    virtual cocos2d::CCRect getScissorRect() = imac 0x50f900, m1 0x466764;
    virtual void setViewName(char const*) = m1 0x4667f4;
    virtual void pollInputEvents();
    virtual void handleTouchesBegin(int, int*, float*, float*);
    virtual void handleTouchesMove(int, int*, float*, float*);
    virtual void handleTouchesEnd(int, int*, float*, float*);
    virtual void handleTouchesCancel(int, int*, float*, float*);

    float getScaleX() const;
    float getScaleY() const;
    void getSetOfTouchesEndOrCancel(cocos2d::CCSet&, int, int*, float*, float*);
    char const* getViewName();
    cocos2d::CCRect const& getViewPortRect() const = imac 0x510100, m1 0x466f80, ios inline {
        return m_obViewPortRect;
    }
    void updateDesignResolutionSize();
}

[[link(win, android)]]
class cocos2d::CCFadeIn : cocos2d::CCActionInterval {
    static cocos2d::CCFadeIn* create(float);

    // CCFadeIn(cocos2d::CCFadeIn const&);
    // CCFadeIn();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x3ba930, m1 0x33cc0c;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x33cc70;
}

[[link(win, android)]]
class cocos2d::CCFadeOut : cocos2d::CCActionInterval {
    static cocos2d::CCFadeOut* create(float);

    // CCFadeOut(cocos2d::CCFadeOut const&);
    // CCFadeOut();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x3babb0, m1 0x33ce58;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x33cec4;
}

[[link(win, android)]]
class cocos2d::CCFadeOutBLTiles : cocos2d::CCFadeOutTRTiles {
    static cocos2d::CCFadeOutBLTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = m1 0x6bc254;
}

[[link(win, android)]]
class cocos2d::CCFadeOutDownTiles : cocos2d::CCFadeOutUpTiles {
    static cocos2d::CCFadeOutDownTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = m1 0x6bc5e0;
}

[[link(win, android)]]
class cocos2d::CCFadeOutTRTiles : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCFadeOutTRTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = m1 0x6bbe48;
    virtual void transformTile(cocos2d::CCPoint const&, float);
    virtual void update(float) = imac 0x7b6010;

    void turnOffTile(cocos2d::CCPoint const&) = m1 0x6bbf10;
    void turnOnTile(cocos2d::CCPoint const&) = m1 0x6bbed0;
}

[[link(win, android)]]
class cocos2d::CCFadeOutUpTiles : cocos2d::CCFadeOutTRTiles {
    static cocos2d::CCFadeOutUpTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = m1 0x6bc3c8;
    virtual void transformTile(cocos2d::CCPoint const&, float);
}

[[link(win, android)]]
class cocos2d::CCFadeTo : cocos2d::CCActionInterval {
    static cocos2d::CCFadeTo* create(float, unsigned char) = imac 0x3bacd0, m1 0x33cf50;

    // CCFadeTo(cocos2d::CCFadeTo const&);
    // CCFadeTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x3baf20, m1 0x33d15c;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33d0f8;

    bool initWithDuration(float p0, unsigned char p1) = imac 0x3bad80, m1 0x33cfe4, ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_toOpacity = p1;
        return true;
    }
}

[[link(win, android)]]
class cocos2d::CCFileUtils : cocos2d::TypeInfo {
    CCFileUtils();
    // CCFileUtils(cocos2d::CCFileUtils const&);
    virtual ~CCFileUtils();

    static void purgeFileUtils();
    static cocos2d::CCFileUtils* sharedFileUtils() = imac 0x60b330, m1 0x531600;

    virtual void addSearchPath(char const*);
    virtual void addSearchResolutionsOrder(char const*) = imac 0x43c720, m1 0x3ae260;
    virtual gd::string addSuffix(gd::string, gd::string) = m1 0x3ac804;
    virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(gd::string const&) = m1 0x3ac104;
    virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(gd::string const&) = m1 0x3ac0f4;
    virtual gd::string fullPathForFilename(char const*, bool) = imac 0x43b2d0;
    virtual char const* fullPathFromRelativeFile(char const*, char const*) = m1 0x3addb4;
    virtual unsigned char* getFileData(char const*, char const*, unsigned long*) = imac 0x43a820, m1 0x3ac3dc;
    virtual unsigned char* getFileDataFromZip(char const*, char const*, unsigned long*) = imac 0x39af10, m1 0x3ac548;
    virtual gd::string getFullPathForDirectoryAndFilename(gd::string const&, gd::string const&) = m1 0x2df0bc;
    virtual gd::string getNewFilename(char const*) = m1 0x3ac668;
    virtual gd::string getPathForFilename(gd::string const&, gd::string const&, gd::string const&) = m1 0x3aca08;
    virtual gd::vector<gd::string> const& getSearchPaths() = m1 0x3ae360;
    virtual gd::vector<gd::string> const& getSearchResolutionsOrder() = imac 0x43c800, m1 0x3ae358;
    virtual gd::string getWritablePath2() = imac 0x43d7d0, m1 0x3af308;
    virtual bool init() = imac 0x43a720;
    virtual bool isAbsolutePath(gd::string const&) = imac 0x43d710;
    virtual bool isPopupNotify() = imac 0x43d740, m1 0x3af26c;
    virtual void loadFilenameLookupDictionaryFromFile(char const*) = imac 0x43d430, m1 0x3aeef4;
    virtual void purgeCachedEntries() = imac 0x43a7f0;
    virtual void removeFullPath(char const*);
    virtual void removeSearchPath(char const*);
    virtual void setFilenameLookupDictionary(cocos2d::CCDictionary*) = imac 0x43d3c0, m1 0x3aee8c;
    virtual void setPopupNotify(bool) = imac 0x43d730, m1 0x1b2c34;
    virtual void setSearchPaths(gd::vector<gd::string> const&) = m1 0x3ae368;
    virtual void setSearchResolutionsOrder(gd::vector<gd::string> const&) = imac 0x43c4e0;
    virtual bool shouldUseHD() = m1 0x3ac7e0;
    virtual bool writeToFile(cocos2d::CCDictionary*, gd::string const&) = m1 0x3ac0fc;

    void removeAllPaths();
}

[[link(win, android)]]
class cocos2d::CCFiniteTimeAction : cocos2d::CCAction {
    // CCFiniteTimeAction(cocos2d::CCFiniteTimeAction const&);
    // CCFiniteTimeAction();

    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x5f3ea0, m1 0x51d370, ios inline {
        return nullptr;
    }

    float m_fDuration;
}

[[link(win, android)]]
class cocos2d::CCFlipX : cocos2d::CCActionInstant {
    static cocos2d::CCFlipX* create(bool);

    virtual void update(float);
    virtual cocos2d::CCFiniteTimeAction* reverse();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);

    bool initWithFlipX(bool);
}

[[link(win, android)]]
class cocos2d::CCFlipX3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCFlipX3D* create(float) = m1 0x21f1b8;

    virtual bool initWithDuration(float) = imac 0x27d1c0, m1 0x21f2b0;
    virtual bool initWithSize(cocos2d::CCSize const&, float) = imac 0x27d210, m1 0x21f300;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = m1 0x21f430;
}

[[link(win, android)]]
class cocos2d::CCFlipY : cocos2d::CCActionInstant {
    static cocos2d::CCFlipY* create(bool);

    virtual void update(float);
    virtual cocos2d::CCFiniteTimeAction* reverse();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);

    bool initWithFlipY(bool);
}

[[link(win, android)]]
class cocos2d::CCFlipY3D : cocos2d::CCFlipX3D {
    static cocos2d::CCFlipY3D* create(float) = m1 0x21f694;

    virtual void update(float) = m1 0x21f89c;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
}

[[link(win, android)]]
class cocos2d::CCFollow : cocos2d::CCAction {

    virtual ~CCFollow() = m1 0x51d80c;

    static cocos2d::CCFollow* create(cocos2d::CCNode*, cocos2d::CCRect const&) = imac 0x5f4480, m1 0x51d8e8;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x22061c;
    virtual void step(float);
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
    char const* description() = imac 0x42a600, m1 0x39d0d0, ios inline {
        return CCString::createWithFormat("<CCGLProgram = " CC_FORMAT_PRINTF_SIZE_T " | Program = %i, VertexShader = %i, FragmentShader = %i>",
            (size_t)this, m_uProgram, m_uVertShader, m_uFragShader)->getCString();
    }
    char const* fragmentShaderLog() = ios inline {
        return this->logForOpenGLObject(m_uFragShader, (GLInfoFunction)&glGetShaderiv, (GLLogFunction)&glGetShaderInfoLog);
    }
    // unsigned int const getProgram();
    int getUniformLocationForName(char const* p0) = m1 0x39dc3c, ios inline {
        return glGetUniformLocation(m_uProgram, p0);
    }
    bool initWithVertexShaderByteArray(char const*, char const*) = imac 0x42a3d0, m1 0x39ce64;
    bool initWithVertexShaderFilename(char const* p0, char const* p1) = m1 0x39cfd4, ios inline {
        return this->initWithVertexShaderByteArray(
            CCString::createWithContentsOfFile(CCFileUtils::sharedFileUtils()->fullPathForFilename(p0, false).c_str())->getCString(),
            CCString::createWithContentsOfFile(CCFileUtils::sharedFileUtils()->fullPathForFilename(p1, false).c_str())->getCString()
        );
    }
    bool link() = m1 0x39d2a0;
    char const* logForOpenGLObject(unsigned int p0, GLInfoFunction p1, GLLogFunction p2) = imac 0x42a7e0, m1 0x39d2e4, ios inline {
        GLint logLength = 0;
        p1(p0, GL_INFO_LOG_LENGTH, &logLength);
        if (logLength < 1) return nullptr;
        auto logBytes = (char*)malloc(logLength);
        GLint charsWritten = 0;
        p2(p0, logLength, &charsWritten, logBytes);
        auto log = CCString::create(logBytes);
        free(logBytes);
        return log->getCString();
    }
    char const* programLog() = ios inline {
        return this->logForOpenGLObject(m_uProgram, (GLInfoFunction)&glGetProgramiv, (GLLogFunction)&glGetProgramInfoLog);
    }
    void reset();
    void setUniformLocationWith1f(int, float) = imac 0x42b3c0, m1 0x39df74;
    void setUniformLocationWith1i(int, int) = imac 0x42a760, m1 0x39d24c;
    void setUniformLocationWith2f(int, float, float) = imac 0x42b400, m1 0x39dfd4;
    void setUniformLocationWith2fv(int p0, float* p1, unsigned int p2) = m1 0x39e210, ios inline {
        if (this->updateUniformLocation(p0, p1, p2 * 8)) glUniform2fv(p0, p2, p1);
    }
    void setUniformLocationWith2i(int p0, int p1, int p2) = imac 0x42b0f0, m1 0x39dc44, ios inline {
        GLint ints[2] = { p1, p2 };
        if (this->updateUniformLocation(p0, ints, 8)) glUniform2i(p0, p1, p2);
    }
    void setUniformLocationWith2iv(int p0, int* p1, unsigned int p2) = m1 0x39de74, ios inline {
        if (this->updateUniformLocation(p0, p1, p2 * 8)) glUniform2iv(p0, p2, p1);
    }
    void setUniformLocationWith3f(int, float, float, float) = imac 0x42b490, m1 0x39e080;
    void setUniformLocationWith3fv(int p0, float* p1, unsigned int p2) = m1 0x39e264, ios inline {
        if (this->updateUniformLocation(p0, p1, p2 * 12)) glUniform3fv(p0, p2, p1);
    }
    void setUniformLocationWith3i(int p0, int p1, int p2, int p3) = imac 0x42b180, m1 0x39dcf0, ios inline {
        GLint ints[3] = { p1, p2, p3 };
        if (this->updateUniformLocation(p0, ints, 12)) glUniform3i(p0, p1, p2, p3);
    }
    void setUniformLocationWith3iv(int p0, int* p1, unsigned int p2) = m1 0x39dec8, ios inline {
        if (this->updateUniformLocation(p0, p1, p2 * 12)) glUniform3iv(p0, p2, p1);
    }
    void setUniformLocationWith4f(int, float, float, float, float) = imac 0x42b530, m1 0x39e144;
    void setUniformLocationWith4fv(int, float*, unsigned int) = m1 0x39e318;
    void setUniformLocationWith4i(int p0, int p1, int p2, int p3, int p4) = imac 0x23b440, m1 0x39dda8, ios inline {
        GLint ints[4] = { p1, p2, p3, p4 };
        if (this->updateUniformLocation(p0, ints, 16)) glUniform4i(p0, p1, p2, p3, p4);
    }
    void setUniformLocationWith4iv(int p0, int* p1, unsigned int p2) = m1 0x39df20, ios inline {
        if (this->updateUniformLocation(p0, p1, p2 * 16)) glUniform4iv(p0, p2, p1);
    }
    void setUniformLocationWithMatrix3fv(int, float*, unsigned int) = imac 0x42b670, m1 0x39e2bc;
    void setUniformLocationWithMatrix4fv(int, float*, unsigned int) = imac 0x42b710, m1 0x39e36c;
    void setUniformsForBuiltins() = imac 0x42b760, m1 0x39e3c4;
    bool updateUniformLocation(int, void*, unsigned int) = imac 0x42aca0, m1 0x39d7dc;
    void updateUniforms() = imac 0x42a650, m1 0x39d118;
    void use() = m1 0x39d244;
    char const* vertexShaderLog() = ios inline {
        return this->logForOpenGLObject(m_uVertShader, (GLInfoFunction)&glGetShaderiv, (GLLogFunction)&glGetShaderInfoLog);
    }
}

[[link(win, android)]]
class cocos2d::CCGrabber : cocos2d::CCObject {
    [[since("4.10.1")]]
    CCGrabber() = m1 0x5227a0, ios inline {
        memset(m_oldClearColor, 0, sizeof(m_oldClearColor));
        glGenFramebuffers(1, &m_FBO);
    }
    [[since("4.10.1")]]
    virtual ~CCGrabber() = m1 0x5228f0, ios inline {
        glDeleteFramebuffers(1, &m_FBO);
    }

    void afterRender(cocos2d::CCTexture2D*) = imac 0x5f9d60, m1 0x5228c0, ios inline {
        glBindFramebuffer(GL_FRAMEBUFFER, m_oldFBO);
        glClearColor(m_oldClearColor[0], m_oldClearColor[1], m_oldClearColor[2], m_oldClearColor[3]);
    }
    void beforeRender(cocos2d::CCTexture2D*) = imac 0x5f9d00, m1 0x522868, ios inline {
        glGetIntegerv(GL_FRAMEBUFFER_BINDING, &m_oldFBO);
        glBindFramebuffer(GL_FRAMEBUFFER, m_FBO);
        glGetFloatv(GL_COLOR_CLEAR_VALUE, m_oldClearColor);
        glClearColor(0, 0, 0, 0);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    }
    void grab(cocos2d::CCTexture2D* p0) = imac 0x5f9c90, m1 0x5227f8, ios inline {
        glGetIntegerv(GL_FRAMEBUFFER_BINDING, &m_oldFBO);
        glBindFramebuffer(GL_FRAMEBUFFER, m_FBO);
        glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, p0->getName(), 0);
        glCheckFramebufferStatus(GL_FRAMEBUFFER);
        glBindFramebuffer(GL_FRAMEBUFFER, m_oldFBO);
    }
}

[[link(win, android)]]
class cocos2d::CCGrid3D : cocos2d::CCGridBase {
    CCGrid3D();
    virtual ~CCGrid3D() = m1 0x43edd8;

    static cocos2d::CCGrid3D* create(cocos2d::CCSize const&) = m1 0x43eca4;
    static cocos2d::CCGrid3D* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = m1 0x43eb80;

    virtual void blit() = imac 0x4e38a0, m1 0x43ee84;
    virtual void reuse();
    virtual void calculateVertexPoints() = imac 0x4e3940;

    cocos2d::ccVertex3F originalVertex(cocos2d::CCPoint const&) = imac 0x4e3fb0, m1 0x43f360;
    void setVertex(cocos2d::CCPoint const&, cocos2d::ccVertex3F const&) = imac 0x4e3ff0, m1 0x43f394;
    cocos2d::ccVertex3F vertex(cocos2d::CCPoint const&) = imac 0x4e3f70, m1 0x43f32c;
}

[[link(win, android)]]
class cocos2d::CCGrid3DAction : cocos2d::CCGridAction {
    virtual cocos2d::CCGridBase* getGrid() = m1 0x1b5c94;

    cocos2d::ccVertex3F originalVertex(cocos2d::CCPoint const&) = m1 0x1b5ccc;
    void setVertex(cocos2d::CCPoint const&, cocos2d::ccVertex3F const&) = m1 0x1b5cfc;
    cocos2d::ccVertex3F vertex(cocos2d::CCPoint const&) = m1 0x1b5c9c;
}

[[link(win, android)]]
class cocos2d::CCGridAction : cocos2d::CCActionInterval {
    static cocos2d::CCGridAction* create(float, cocos2d::CCSize const&) = m1 0x1b5980;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x1b5aa4;
    virtual cocos2d::CCActionInterval* reverse();
    virtual bool initWithDuration(float, cocos2d::CCSize const&);
    virtual cocos2d::CCGridBase* getGrid() = m1 0x1b5b88;
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
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x7ac0f0, m1 0x6b28d4;
    virtual cocos2d::CCFiniteTimeAction* reverse();
}

[[link(win, android)]]
class cocos2d::CCImage : cocos2d::CCObject {
    // int getBitsPerComponent() const;
    // unsigned char* getData();
    // int getDataLen();
    // unsigned short getHeight() const;
    // unsigned short getWidth() const;
    CCImage();
    virtual ~CCImage();

    bool _initWithJpgData(void*, int);
    bool _initWithPngData(void*, int);
    bool _initWithRawData(void*, int, int, int, int, bool);
    bool _initWithTiffData(void*, int);
    // bool _initWithWebpData(void*, int);
    bool _saveImageToJPG(char const*);
    bool _saveImageToPNG(char const*, bool);
    bool initWithImageData(void*, int, cocos2d::CCImage::EImageFormat, int, int, int, int) = m1 0x3eef38;
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
    void dispatchDeleteBackward() = imac 0x4bbf30;
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
    static cocos2d::CCJumpBy* create(float p0, cocos2d::CCPoint const& p1, float p2, unsigned int p3) = ios inline {
        auto ret = new CCJumpBy();
        ret->initWithDuration(p0, p1, p2, p3);
        ret->autorelease();
        return ret;
    }

    // CCJumpBy(cocos2d::CCJumpBy const&);
    // CCJumpBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
        CCZone* pNewZone = nullptr;
        CCJumpBy* pCopy = nullptr;
        if (pZone && pZone->m_pCopyObject) {
            pCopy = (CCJumpBy*)(pZone->m_pCopyObject);
        }
        else {
            pCopy = new CCJumpBy();
            pZone = pNewZone = new CCZone(pCopy);
        }

        CCActionInterval::copyWithZone(pZone);

        pCopy->initWithDuration(m_fDuration, m_delta, m_height, m_nJumps);

        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float t) = ios inline {
        if (m_pTarget) {
            float frac = fmodf(t * m_nJumps, 1.f);
            float y = m_height * 4.f * frac * (1.f - frac);
            y += m_delta.y * t;

            float x = m_delta.x * t;
            CCPoint currentPos = m_pTarget->getPosition();

            CCPoint diff = currentPos - m_previousPos;
            m_startPosition = diff + m_startPosition;

            CCPoint newPos = m_startPosition + CCPoint { x, y };
            m_pTarget->setPosition(newPos);

            m_previousPos = newPos;
        }
    }
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = ios inline {
        CCActionInterval::startWithTarget(pTarget);
        m_previousPos = m_startPosition = pTarget->getPosition();
    }
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b8fa0, m1 0x33b5dc, ios inline {
        return CCJumpBy::create(m_fDuration, -m_delta, m_height, m_nJumps);
    }

    bool initWithDuration(float p0, cocos2d::CCPoint const& p1, float p2, unsigned int p3) = imac 0x3b8c40, m1 0x33b2f4, ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_delta = p1;
        m_height = p2;
        m_nJumps = p3;
        return true;
    }
}

[[link(win, android)]]
class cocos2d::CCJumpTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCJumpTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = m1 0x6bd348;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);
}

[[link(win, android)]]
class cocos2d::CCJumpTo : cocos2d::CCActionInterval {
    static cocos2d::CCJumpTo* create(float p0, cocos2d::CCPoint const& p1, float p2, int p3) = ios inline {
        auto ret = new CCJumpTo();
        ret->initWithDuration(p0, p1, p2, p3);
        ret->autorelease();
        return ret;
    }

    // CCJumpTo(cocos2d::CCJumpTo const&);
    // CCJumpTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
        CCZone* pNewZone = nullptr;
        CCJumpTo* pCopy = nullptr;
        if (pZone && pZone->m_pCopyObject) {
            pCopy = (CCJumpTo*)(pZone->m_pCopyObject);
        }
        else {
            pCopy = new CCJumpTo();
            pZone = pNewZone = new CCZone(pCopy);
        }

        CCJumpBy::copyWithZone(pZone);

        pCopy->initWithDuration(m_fDuration, m_delta, m_height, m_nJumps);

        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = m1 0x33abd8, ios inline {
        CCJumpBy::startWithTarget(pTarget);
        m_delta = m_delta - m_startPosition;
    }
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
    bool dispatchKeyboardMSG(cocos2d::enumKeyCodes, bool, bool);
    void forceAddDelegate(cocos2d::CCKeyboardDelegate*); // ios 0x2399a8
    void forceRemoveDelegate(cocos2d::CCKeyboardDelegate*); // ios 0x2398cc
    char const* keyToString(cocos2d::enumKeyCodes) = m1 0x1b03d8;
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

    virtual bool initWithDelegate(cocos2d::CCKeyboardDelegate*) = m1 0x3af7ec;

    cocos2d::CCKeyboardDelegate* getDelegate();
    void setDelegate(cocos2d::CCKeyboardDelegate* p0) = ios inline {
        if (auto delegate = geode::cast::typeinfo_cast<cocos2d::CCObject*>(p0)) delegate->retain();
        if (auto delegate = geode::cast::typeinfo_cast<cocos2d::CCObject*>(m_pDelegate)) delegate->release();
        m_pDelegate = p0;
    }
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

    virtual bool initWithDelegate(cocos2d::CCKeypadDelegate*) = m1 0x342eb8;

    cocos2d::CCKeypadDelegate* getDelegate();
    void setDelegate(cocos2d::CCKeypadDelegate* p0) = ios inline {
        if (auto delegate = geode::cast::typeinfo_cast<cocos2d::CCObject*>(p0)) delegate->retain();
        if (auto delegate = geode::cast::typeinfo_cast<cocos2d::CCObject*>(m_pDelegate)) delegate->release();
        m_pDelegate = p0;
    }
}

[[link(win, android)]]
class cocos2d::CCLabelAtlas : cocos2d::CCAtlasNode, cocos2d::CCLabelProtocol {
    static cocos2d::CCLabelAtlas* create(char const*, char const*) = imac 0x798da0, m1 0x6a09ec;
    static cocos2d::CCLabelAtlas* create(char const*, char const*, unsigned int, unsigned int, unsigned int) = imac 0x798ba0, m1 0x6a07bc;

    virtual void updateAtlasValues() = m1 0x6a0f70;
    virtual void setString(char const*) = imac 0x799630, m1 0x6a11c0;
    virtual char const* getString() = imac 0x799720;

    bool initWithString(char const*, char const*) = imac 0x176c30, m1 0x6a0a80;
    bool initWithString(char const*, char const*, unsigned int, unsigned int, unsigned int) = m1 0x6a08d0;
    bool initWithString(char const*, cocos2d::CCTexture2D*, unsigned int, unsigned int, unsigned int) = imac 0x798d30, m1 0x6a0968;
}

[[link(win, android)]]
class cocos2d::CCLabelBMFont : cocos2d::CCSpriteBatchNode, cocos2d::CCLabelProtocol, cocos2d::CCRGBAProtocol {
    CCLabelBMFont() = m1 0x5042f0;
    virtual ~CCLabelBMFont() = m1 0x5043cc;

    static cocos2d::CCLabelBMFont* create() = m1 0x503b9c, ios inline {
    	auto pRet = new CCLabelBMFont();

    	if (pRet && pRet->init())
    	{
    		pRet->autorelease();
    		return pRet;
    	}

    	CC_SAFE_DELETE(pRet);
    	return nullptr;
    }
    static cocos2d::CCLabelBMFont* create(char const*, char const*) = imac 0x5d8090, m1 0x503e64;
    static cocos2d::CCLabelBMFont* create(char const* str, char const* fntFile, float width) = imac 0x5d7fe0, m1 0x503da4, ios inline {
        return cocos2d::CCLabelBMFont::create(str, fntFile, width, kCCTextAlignmentLeft, CCPointZero);
    }
    static cocos2d::CCLabelBMFont* create(char const* str, char const* fntFile, float width, cocos2d::CCTextAlignment alignment) = imac 0x5d7e90, m1 0x503c20, ios inline {
        return cocos2d::CCLabelBMFont::create(str, fntFile, width, alignment, CCPointZero);
    }
    static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = imac 0x5d7f40, m1 0x503ce4;
    static cocos2d::CCLabelBMFont* createBatched(char const*, char const*, cocos2d::CCArray*, int) = imac 0x5d8400, m1 0x5041d8;
    static void purgeCachedData() = m1 0x503b64;

    virtual bool init() = imac 0x5d84b0, m1 0x5042a0;
    virtual void setScaleX(float) = m1 0x506624;
    virtual void setScaleY(float) = m1 0x506650;
    virtual void setScale(float) = m1 0x5065f8;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x5d9c30, m1 0x21fce8;
    virtual void setString(char const*) = imac 0x5d9160, m1 0x504de0;
    virtual void setString(char const*, bool) = imac 0x5d91b0, m1 0x504e04;
    virtual char const* getString() = imac 0x5d93e0, m1 0x33f6e0;
    virtual void setCString(char const*) = imac 0x5d9430, m1 0x505064;
    virtual void updateLabel() = imac 0x5d9c70, m1 0x3cc9c;
    virtual void setAlignment(cocos2d::CCTextAlignment) = imac 0x5dade0, m1 0x5065c8;
    virtual void setWidth(float) = imac 0x5dae00, m1 0x5065d8;
    virtual void setLineBreakWithoutSpace(bool) = imac 0x5dae20, m1 0x5065e8;
    virtual void setString(unsigned short*, bool);
    virtual void setColor(cocos2d::ccColor3B const&);
    virtual cocos2d::ccColor3B const& getColor();
    virtual cocos2d::ccColor3B const& getDisplayedColor();
    virtual unsigned char getDisplayedOpacity();
    virtual unsigned char getOpacity();
    virtual void setOpacity(unsigned char);
    virtual void setOpacityModifyRGB(bool) = imac 0x5d9790, m1 0x5053b0;
    virtual bool isOpacityModifyRGB() = imac 0x5d98f0;
    virtual bool isCascadeColorEnabled() = imac 0x5d9bb0, m1 0x5057cc;
    virtual void setCascadeColorEnabled(bool) = imac 0x5d9bd0, m1 0x5057dc;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = imac 0x5d9a10;
    virtual bool isCascadeOpacityEnabled() = imac 0x5d9bf0, m1 0x5057ec;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x5d9c10, m1 0x5057fc;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x5d9910;

    // void setIsBatched(bool);
    // void setTargetArray(cocos2d::CCArray*);
    void createFontChars() = imac 0x5d8860;
    cocos2d::CCBMFontConfiguration* getConfiguration() const;
    // int getExtraKerning() const;
    char const* getFntFile() = imac 0x5daf80, m1 0x506750, ios inline {
        return m_sFntFile.c_str();
    }
    // bool getIsBatched() const;
    float getLetterPosXLeft(cocos2d::CCSprite*, float, bool) = imac 0x5dac80, m1 0x506480;
    float getLetterPosXRight(cocos2d::CCSprite*, float, bool) = m1 0x506524;
    bool initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = m1 0x503f2c;
    int kerningAmountForFirst(unsigned short, unsigned short) = imac 0x5d8740, m1 0x504498;
    void limitLabelWidth(float, float, float) = imac 0x5dafc0, m1 0x506774;
    // cocos2d::CCArray* getTargetArray() const;
    // void setExtraKerning(int);
    void setFntFile(char const* filename) = imac 0x5daea0, m1 0x50667c, ios inline {
        if (filename != NULL && strcmp(filename, m_sFntFile.c_str()) != 0 ) {
            CCBMFontConfiguration *newConf = FNTConfigLoadFile(filename);
            CCAssert( newConf, "CCLabelBMFont: Impossible to create font. Please check file");

            m_sFntFile = filename;

            CC_SAFE_RETAIN(newConf);
            CC_SAFE_RELEASE(m_pConfiguration);
            m_pConfiguration = newConf;

            this->setTexture(CCTextureCache::sharedTextureCache()->addImage(m_pConfiguration->getAtlasName(), false));
            this->createFontChars();
        }
    }

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

    static cocos2d::CCLabelTTF* create() = m1 0x33ee24, ios inline {
        auto ret = new CCLabelTTF();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize) = imac 0x3bd080, m1 0x33ef38, ios inline {
        return CCLabelTTF::create(string, fontName, fontSize,
            CCSizeZero, kCCTextAlignmentCenter, kCCVerticalTextAlignmentTop);
    }
    static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment hAlignment) = imac 0x3bd200, m1 0x33f094, ios inline {
        return CCLabelTTF::create(string, fontName, fontSize, dimensions, hAlignment, kCCVerticalTextAlignmentTop);
    }
    static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment hAlignment, cocos2d::CCVerticalTextAlignment vAlignment) = imac 0x3bd0a0, m1 0x33ef4c, ios inline {
        CCLabelTTF *pRet = new CCLabelTTF();
        if(pRet && pRet->initWithString(string, fontName, fontSize, dimensions, hAlignment, vAlignment))
        {
            pRet->autorelease();
            return pRet;
        }
        CC_SAFE_DELETE(pRet);
        return NULL;
    }
    static cocos2d::CCLabelTTF* createWithFontDefinition(char const* p0, cocos2d::ccFontDefinition& p1) = imac 0x3bd380, m1 0x33f1fc, ios inline {
        auto ret = new CCLabelTTF();
        if (ret->initWithStringAndTextDefinition(p0, p1)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual bool init() = imac 0x3bd560, m1 0x33f3e8;
    virtual void setString(char const*);
    virtual char const* getString() = imac 0x3bd8c0;

    cocos2d::ccFontDefinition _prepareTextDefinition(bool p0) = imac 0x3bde00, ios inline {
        auto factor = CCDirector::sharedDirector()->getContentScaleFactor();

        ccFontDefinition texDef;
        texDef.m_fontSize = p0 ? m_fFontSize * factor : m_fFontSize;
        texDef.m_fontName = *m_pFontName;
        texDef.m_alignment = m_hAlignment;
        texDef.m_vertAlignment = m_vAlignment;
        texDef.m_dimensions = p0 ? CCSize { m_tDimensions.width * factor, m_tDimensions.height * factor } : m_tDimensions;
        
        if (m_strokeEnabled) {
            texDef.m_stroke.m_strokeEnabled = true;
            texDef.m_stroke.m_strokeColor = m_strokeColor;
            texDef.m_stroke.m_strokeSize = p0 ? m_strokeSize * factor : m_strokeSize;
        }
        else texDef.m_stroke.m_strokeEnabled = false;

        if (m_shadowEnabled) {
            texDef.m_shadow.m_shadowEnabled = true;
            texDef.m_shadow.m_shadowBlur = m_shadowBlur;
            texDef.m_shadow.m_shadowOpacity = m_shadowOpacity;
            texDef.m_shadow.m_shadowOffset = p0 ? CCSize { m_shadowOffset.width * factor, m_shadowOffset.height * factor } : m_shadowOffset;
        }
        else texDef.m_shadow.m_shadowEnabled = false;

        texDef.m_fontFillColor = m_textFillColor;

        return texDef;
    }
    void _updateWithTextDefinition(cocos2d::ccFontDefinition& p0, bool p1) = imac 0x3bd5c0, m1 0x33f42c, ios inline {
        m_tDimensions = p0.m_dimensions;
        m_hAlignment = p0.m_alignment;
        m_vAlignment = p0.m_vertAlignment;
        m_pFontName = new std::string(p0.m_fontName);
        m_fFontSize = p0.m_fontSize;

        if (p0.m_shadow.m_shadowEnabled) {
            this->enableShadow(p0.m_shadow.m_shadowOffset, p0.m_shadow.m_shadowOpacity, p0.m_shadow.m_shadowBlur, false);
        }

        if (p0.m_stroke.m_strokeEnabled) {
            this->enableStroke(p0.m_stroke.m_strokeColor, p0.m_stroke.m_strokeSize, false);
        }

        this->setFontFillColor(p0.m_fontFillColor, false);

        if (p1) this->updateTexture();
    }
    char const* description() = ios inline {
        return CCString::createWithFormat("<CCLabelTTF | FontName = %s, FontSize = %.1f>", m_pFontName->c_str(), m_fFontSize)->getCString();
    }
    void disableShadow(bool p0) = imac 0x3bdc50, m1 0x33f9b4, ios inline {
        if (m_shadowEnabled) {
            m_shadowEnabled = false;
            if (p0) this->updateTexture();
        }
    }
    void disableStroke(bool p0) = imac 0x3bdc70, m1 0x33f9bc, ios inline {
        if (m_strokeEnabled) {
            m_strokeEnabled = false;
            if (p0) this->updateTexture();
        }
    }
    void enableShadow(cocos2d::CCSize const& p0, float p1, float p2, bool p3) = imac 0x3bdc40, m1 0x33f9b0, ios inline {
        auto changed = false;
        if (!m_shadowEnabled) {
            m_shadowEnabled = true;
            changed = true;
        }
        if (m_shadowOffset.width != p0.width || m_shadowOffset.height != p0.height) {
            m_shadowOffset = p0;
            changed = true;
        }
        if (m_shadowOpacity != p1) {
            m_shadowOpacity = p1;
            changed = true;
        }
        if (m_shadowBlur != p2) {
            m_shadowBlur = p2;
            changed = true;
        }
        if (changed && p3) this->updateTexture();
    }
    void enableStroke(cocos2d::ccColor3B const& p0, float p1, bool p2) = imac 0x3bdc60, m1 0x33f9b8, ios inline {
        auto changed = false;
        if (!m_strokeEnabled) {
            m_strokeEnabled = true;
            changed = true;
        }
        if (m_strokeColor.r != p0.r || m_strokeColor.g != p0.g || m_strokeColor.b != p0.b) {
            m_strokeColor = p0;
            changed = true;
        }
        if (m_strokeSize != p1) {
            m_strokeSize = p1;
            changed = true;
        }
        if (changed && p2) this->updateTexture();
    }
    // cocos2d::CCSize getDimensions();
    char const* getFontName() = imac 0x3bdae0, m1 0x33f86c, ios inline {
        return m_pFontName->c_str();
    }
    // float getFontSize();
    // cocos2d::CCTextAlignment getHorizontalAlignment();
    cocos2d::ccFontDefinition* getTextDefinition() = imac 0x3bdcb0, ios inline {
        auto definition = new ccFontDefinition();
        *definition = _prepareTextDefinition(false);
        return definition;
    }
    bool initWithString(char const* label, char const* fontName, float fontSize) = imac 0x3bd590, m1 0x33f410;
    bool initWithString(char const* label, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment alignment) = imac 0x3bd5b0, m1 0x33f424, ios inline {
        return this->initWithString(label, fontName, fontSize, dimensions, alignment, kCCVerticalTextAlignmentTop);
    }
    bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment);
    bool initWithStringAndTextDefinition(char const* p0, cocos2d::ccFontDefinition& p1) = ios inline {
        if (!CCSprite::init()) return false;
        this->setShaderProgram(CCShaderCache::sharedShaderCache()->programForKey(kCCShader_PositionTextureColor));
        _updateWithTextDefinition(p1, false);
        this->setString(p0);
        return true;
    }
    // cocos2d::CCVerticalTextAlignment getVerticalAlignment();
    // void setDimensions(cocos2d::CCSize const&);
    void setFontFillColor(cocos2d::ccColor3B const& p0, bool p1) = imac 0x3bdc80, m1 0x1ca014, ios inline {
        if (m_textFillColor.r != p0.r || m_textFillColor.g != p0.g || m_textFillColor.b != p0.b) {
            m_textFillColor = p0;
            if (p1) this->updateTexture();
        }
    }
    void setFontName(char const* p0) = m1 0x33f884, ios inline {
        if (m_pFontName->compare(p0)) {
            delete m_pFontName;
            m_pFontName = new std::string(p0);
            if (m_string.size() > 0) this->updateTexture();
        }
    }
    // void setFontSize(float);
    // void setHorizontalAlignment(cocos2d::CCTextAlignment);
    void setTextDefinition(cocos2d::ccFontDefinition* p0) = imac 0x3bdc90, ios inline {
        if (p0) _updateWithTextDefinition(*p0, true);
    }
    bool updateTexture() = imac 0x3bd6e0, m1 0x33f52c;
}

[[link(win, android)]]
class cocos2d::CCLayer : cocos2d::CCNode, cocos2d::CCTouchDelegate, cocos2d::CCAccelerometerDelegate, cocos2d::CCKeypadDelegate, cocos2d::CCKeyboardDelegate, cocos2d::CCMouseDelegate {
    // CCLayer(cocos2d::CCLayer const&);
    CCLayer() = m1 0x411b90;
    virtual ~CCLayer() = m1 0x411ce8;

    static cocos2d::CCLayer* create() = imac 0x4b00e0, m1 0x411fac;

    virtual bool init() = m1 0x411f50;
    virtual void onEnter();
    virtual void onEnterTransitionDidFinish();
    virtual void onExit();
    virtual void registerWithTouchDispatcher() = m1 0x4120bc;
    virtual void registerScriptTouchHandler(int, bool, int, bool) = imac 0x4b0290, m1 0x41213c;
    virtual void unregisterScriptTouchHandler() = m1 0x41219c;
    virtual bool isTouchEnabled();
    virtual void setTouchEnabled(bool);
    virtual void setTouchMode(cocos2d::ccTouchesMode);
    virtual int getTouchMode() = imac 0x4b04c0;
    virtual void setTouchPriority(int);
    virtual int getTouchPriority() = imac 0x4b04b0;
    virtual bool isAccelerometerEnabled() = imac 0x4b04d0;
    virtual void setAccelerometerEnabled(bool) = imac 0x4b04e0;
    virtual void setAccelerometerInterval(double);
    virtual bool isKeypadEnabled() = imac 0x4b0620;
    virtual void setKeypadEnabled(bool) = imac 0x4b0630;
    virtual bool isKeyboardEnabled();
    virtual void setKeyboardEnabled(bool);
    virtual bool isMouseEnabled();
    virtual void setMouseEnabled(bool);
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void setPreviousPriority(int) = imac 0x6b00, m1 0x600c;
    virtual int getPreviousPriority() = imac 0x6b10, m1 0x6014;
    virtual void didAccelerate(cocos2d::CCAcceleration*);
    virtual void keyBackClicked() = imac 0x4b07d0, m1 0x41266c;
    virtual void keyMenuClicked();
    virtual void keyDown(cocos2d::enumKeyCodes) = m1 0x41278c;

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
    CCLayerColor() = m1 0x413990;
    virtual ~CCLayerColor();

    static cocos2d::CCLayerColor* create() = imac 0x4b23d0, m1 0x413db8, ios inline {
    	CCLayerColor* pRet = new CCLayerColor();
    	if (pRet && pRet->init())
    	{
    		pRet->autorelease();
    	}
    	else
    	{
    		CC_SAFE_DELETE(pRet);
    	}
    	return pRet;
    }
    static cocos2d::CCLayerColor* create(cocos2d::ccColor4B const&) = imac 0x4b2780, m1 0x4140ac;
    static cocos2d::CCLayerColor* create(cocos2d::ccColor4B const&, float, float) = m1 0x413f30;

    virtual bool init() = m1 0x4141f8;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x4b2b40, m1 0x4143c8;
    virtual void draw() = m1 0x414528;
    virtual bool initWithColor(cocos2d::ccColor4B const&, float, float) = imac 0x4b29a0, m1 0x414244;
    virtual bool initWithColor(cocos2d::ccColor4B const&) = m1 0x414330;
    virtual void updateColor() = imac 0x4b2c30, m1 0x16c07c;
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
    static cocos2d::CCLayerGradient* create() = ios inline {
        auto ret = new CCLayerGradient();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCLayerGradient* create(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&);
    static cocos2d::CCLayerGradient* create(cocos2d::ccColor4B const& a1, cocos2d::ccColor4B const& a2, cocos2d::CCPoint const& a3) = ios inline {
    	auto ret = create(a1, a2);
    	ret->setVector(a3);
    	return ret;
    }

    // CCLayerGradient(cocos2d::CCLayerGradient const&);
    // CCLayerGradient();
    virtual bool init() = imac 0x4b3600, m1 0x414dcc;
    [[since("4.10.1")]]
    virtual void visit() = imac 0xb3190, m1 0x41524c;
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
    virtual void setVector(cocos2d::CCPoint const&) = imac 0x4b3a00, m1 0x3a9dd4;
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
    CCLayerRGBA() = m1 0x412efc;
    virtual ~CCLayerRGBA();

    virtual bool init() = m1 0x230f00;
    virtual void setColor(cocos2d::ccColor3B const&);
    virtual cocos2d::ccColor3B const& getColor();
    virtual cocos2d::ccColor3B const& getDisplayedColor();
    virtual unsigned char getDisplayedOpacity();
    virtual unsigned char getOpacity();
    virtual void setOpacity(unsigned char);
    virtual bool isCascadeColorEnabled() = imac 0x4b1d30, m1 0x413970;
    virtual void setCascadeColorEnabled(bool) = imac 0x4b1d50, m1 0x413980;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&);
    virtual bool isCascadeOpacityEnabled() = imac 0x4b1cf0, m1 0x413950;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x4b1d10, m1 0x413960;
    virtual void updateDisplayedOpacity(unsigned char);

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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);

    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float) = imac 0x27dc60;
    void setPosition(cocos2d::CCPoint const&);
}

[[link(android)]]
class cocos2d::CCLightning : cocos2d::CCNode, cocos2d::CCRGBAProtocol {
    CCLightning() = win 0x44490;
    virtual ~CCLightning() = win inline {
        if (m_lightningPoints) {
            free(m_lightningPoints);
            m_lightningPoints = nullptr;
        }
    }

    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint p0) = win inline, imac 0x5dd440, m1 0x5087a8, ios inline {
    	auto ret = new CCLightning();
    	if (ret->initWithStrikePoint(p0)) {
    		ret->autorelease();
    		return ret;
    	}
    	delete ret;
    	return nullptr;
    }
    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = win 0x445d0, imac 0x5dd600, m1 0x508914;

    virtual void draw() = win 0x44790;
    virtual bool isOpacityModifyRGB() = imac 0x5ddc10, m1 0x508e3c;
    virtual void setOpacityModifyRGB(bool) = imac 0x5ddc30, m1 0x508e4c;
    virtual unsigned char getOpacity() = imac 0x5ddb40, m1 0x508dc4;
    virtual unsigned char getDisplayedOpacity() = imac 0x5ddb60, m1 0x508dd4;
    virtual void setOpacity(unsigned char) = imac 0x5ddb90, m1 0x508df0;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x5ddc50, m1 0x508e5c;
    virtual bool isCascadeOpacityEnabled() = imac 0x5ddc70, m1 0x508e6c;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x5ddc90, m1 0x508e7c;
    virtual cocos2d::ccColor3B const& getColor() = imac 0x5ddbb0, m1 0x413504;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = imac 0x5ddcb0, m1 0x508e8c;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x5ddbd0, m1 0x508e10;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = imac 0x5ddcd0, m1 0x508e9c;
    virtual bool isCascadeColorEnabled() = imac 0x5ddd10, m1 0x508ec4;
    virtual void setCascadeColorEnabled(bool) = imac 0x5ddd30, m1 0x508ed4;

    bool initWithStrikePoint(cocos2d::CCPoint p0) = win inline, m1 0x5088c0, ios inline {
    	return this->initWithStrikePoint(p0, CCPointZero, .5f);
    }
    bool initWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = win 0x44670, imac 0x5dd750, m1 0x508a34;
    void strike() = win 0x44910, m1 0x508b58;
    void strikeFinished() = win 0x44980, m1 0x412278;
    void strikeRandom() = win inline, m1 0x508cc0, ios inline {
    	m_seed = rand();
    	this->strike();
    }
    void strikeWithSeed(uint64_t seed) = win inline, imac 0x5ddab0, m1 0x508d38, ios inline {
    	m_seed = seed;
    	this->strike();
    }

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
    virtual void update(float) = imac 0x27ec70;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);
}

[[link(win, android)]]
class cocos2d::CCMenu : cocos2d::CCLayerRGBA {
    // static cocos2d::CCMenu* create(cocos2d::CCMenuItem*, ...) = ios 0x1d8d28, m1 0x6a6d58, imac 0x79e7b0;

    static cocos2d::CCMenu* create() = imac 0x7926a0, m1 0x69affc;
    static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*) = imac 0x7928a0, m1 0x69b154;
    static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*) = imac 0x792af0, m1 0x69b3a0;

    virtual bool init() = imac 0x792b00, m1 0x69b3c0;
    virtual void addChild(cocos2d::CCNode*);
    virtual void addChild(cocos2d::CCNode*, int);
    virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x13c95c;
    virtual void removeChild(cocos2d::CCNode*, bool);
    virtual void onExit();
    virtual void registerWithTouchDispatcher();
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
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
    bool initWithArray(cocos2d::CCArray*);
    cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*) = imac 0x792dc0, m1 0x69b670;
    cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*, bool) = imac 0x794470, m1 0x69c8d0;
    void setHandlerPriority(int);

    bool m_bEnabled;
    cocos2d::tCCMenuState m_eState;
    cocos2d::CCMenuItem* m_pSelectedItem;
}

[[link(win, android)]]
class cocos2d::CCMenuItem : cocos2d::CCNodeRGBA {

    virtual ~CCMenuItem();

    static cocos2d::CCMenuItem* create() = imac 0x3be180, m1 0x33fe30;
    static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3be240, m1 0x33fed8;

    virtual void activate();
    virtual void selected() = imac 0x3be4c0, m1 0x34011c;
    virtual void unselected() = imac 0x3be4d0, m1 0x340128;
    virtual void registerScriptTapHandler(int);
    virtual void unregisterScriptTapHandler();
    virtual bool isEnabled() = imac 0x3be5d0, m1 0x340228;
    virtual void setEnabled(bool) = imac 0x3be5c0, m1 0x340220;
    virtual bool isSelected() = imac 0x3be630, m1 0x34024c;

    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3be310, m1 0x33ff94;
    // CCMenuItem(cocos2d::CCMenuItem const&);
    // CCMenuItem();
    cocos2d::CCRect rect() = imac 0x3be5e0, m1 0x340230;
    // int getScriptTapHandler();
    void setTarget(cocos2d::CCObject* rec, cocos2d::SEL_MenuHandler selector) = imac 0x3be640, m1 0x340254, ios inline {
    	m_pListener = rec;
    	m_pfnSelector = selector;
    }

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
    static cocos2d::CCMenuItemImage* create() = imac 0x3bfdc0, m1 0x341958, ios inline {
        auto ret = new CCMenuItemImage();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCMenuItemImage* create(char const* p0, char const* p1) = imac 0x3c0110, m1 0x341ccc, ios inline {
        return create(p0, p1, nullptr, nullptr, nullptr);
    }
    static cocos2d::CCMenuItemImage* create(char const* p0, char const* p1, char const* p2) = imac 0x3c0370, m1 0x341eec, ios inline {
        auto ret = new CCMenuItemImage();
        if (ret->initWithNormalImage(p0, p1, p2, nullptr, nullptr)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCMenuItemImage* create(char const* p0, char const* p1, cocos2d::CCObject* p2, cocos2d::SEL_MenuHandler p3) = imac 0x3c02a0, m1 0x341e34, ios inline {
        return create(p0, p1, nullptr, p2, p3);
    }
    static cocos2d::CCMenuItemImage* create(char const* p0, char const* p1, char const* p2, cocos2d::CCObject* p3, cocos2d::SEL_MenuHandler p4) = imac 0x3c01c0, m1 0x341d70, ios inline {
        auto ret = new CCMenuItemImage();
        if (ret->initWithNormalImage(p0, p1, p2, p3, p4)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual bool init() = m1 0x341a94;

    bool initWithNormalImage(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3bffd0, m1 0x341b7c;
    void setDisabledSpriteFrame(cocos2d::CCSpriteFrame* p0) = m1 0x341ffc, ios inline {
        this->setDisabledImage(CCSprite::createWithSpriteFrame(p0));
    }
    void setNormalSpriteFrame(cocos2d::CCSpriteFrame* p0) = m1 0x341f94, ios inline {
        this->setNormalImage(CCSprite::createWithSpriteFrame(p0));
    }
    void setSelectedSpriteFrame(cocos2d::CCSpriteFrame* p0) = m1 0x341fc8, ios inline {
        this->setSelectedImage(CCSprite::createWithSpriteFrame(p0));
    }
}

[[link(win, android)]]
class cocos2d::CCMenuItemLabel : cocos2d::CCMenuItem {

    [[since("until 4.10.1")]]
    ~CCMenuItemLabel() = imac inline, m1 inline {}

    static cocos2d::CCMenuItemLabel* create(cocos2d::CCNode*);
    static cocos2d::CCMenuItemLabel* create(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

    virtual cocos2d::ccColor3B const& getDisabledColor() = imac 0x3be660, m1 0x340260;
    virtual void setDisabledColor(cocos2d::ccColor3B const&) = imac 0x3be670, m1 0x340268;
    virtual cocos2d::CCNode* getLabel() = imac 0x3be690, m1 0x34027c;
    virtual void setLabel(cocos2d::CCNode*) = imac 0x3be6a0, m1 0x340284;
    virtual void activate();
    virtual void selected();
    virtual void unselected();
    virtual void setEnabled(bool) = imac 0x3bedc0, m1 0x3409d0;

    bool initWithLabel(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
    void setString(char const*);
}

[[link(win, android)]]
class cocos2d::CCMenuItemSprite : cocos2d::CCMenuItem {
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode* p0, cocos2d::CCNode* p1, cocos2d::CCNode* p2) = imac 0x3bf8f0, m1 0x341494, ios inline {
        return create(p0, p1, p2, nullptr, nullptr);
    }
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode* p0, cocos2d::CCNode* p1, cocos2d::CCObject* p2, cocos2d::SEL_MenuHandler p3) = imac 0x3bfa80, m1 0x341610, ios inline {
        return create(p0, p1, nullptr, p2, p3);
    }
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode* p0, cocos2d::CCNode* p1, cocos2d::CCNode* p2, cocos2d::CCObject* p3, cocos2d::SEL_MenuHandler p4) = imac 0x3bf910, m1 0x3414a4, ios inline {
        auto ret = new CCMenuItemSprite();
        if (ret->initWithNormalSprite(p0, p1, p2, p3, p4)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual void selected() = imac 0x3bfb90, m1 0x34173c;
    virtual void unselected() = imac 0x3bfc30, m1 0x3408c4;
    virtual void setEnabled(bool) = imac 0x3bfcb0, m1 0x341848;
    virtual cocos2d::CCNode* getNormalImage() = imac 0x3bf6c0, m1 0x341260;
    virtual void setNormalImage(cocos2d::CCNode*) = imac 0x3bf6d0, m1 0x341268;
    virtual cocos2d::CCNode* getSelectedImage();
    virtual void setSelectedImage(cocos2d::CCNode*);
    virtual cocos2d::CCNode* getDisabledImage();
    virtual void setDisabledImage(cocos2d::CCNode*);
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
    virtual void setSelectedIndex(unsigned int);
    virtual cocos2d::CCArray* getSubItems() = imac 0x3c0500, m1 0x1424dc;
    virtual void setSubItems(cocos2d::CCArray*) = m1 0x342030;
    virtual void activate();
    virtual void selected() = imac 0x3c0fa0, m1 0x342928;
    virtual void unselected() = imac 0x3c0fd0, m1 0x342958;
    virtual void setEnabled(bool);

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

    virtual void update(float);
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x576240, m1 0x4c3d68;
    virtual void draw();
    virtual unsigned char getOpacity() = imac 0x5763f0, m1 0x4c3ec8;
    virtual void setOpacity(unsigned char) = imac 0x5763d0, m1 0x4c3ec0;
    virtual void setOpacityModifyRGB(bool) = imac 0x576410, m1 0x4c3ed8;
    virtual bool isOpacityModifyRGB() = imac 0x576430, m1 0x2834d8;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x576390, m1 0x4c3ea0;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x5763b0, m1 0x4c3eb0;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x5762e0, m1 0x4c3e00;
    virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x4c3e10;

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
    void tintWithColor(cocos2d::ccColor3B p0) = imac 0x576260, m1 0x4c3d78, ios inline {
        this->setColor(p0);
        for (int i = 0; i < m_uNuPoints * 2; i++) {
            *reinterpret_cast<ccColor3B*>(m_pColorPointer + i * 4) = p0;
        }
    }
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
    void forceAddDelegate(cocos2d::CCMouseDelegate* p0) = m1 0x1b006c, ios inline {
        if (auto handler = CCMouseHandler::handlerWithDelegate(p0)) m_pMouseHandlers->addObject(handler);
    }
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

    virtual bool initWithDelegate(cocos2d::CCMouseDelegate*) = m1 0x226088;

    cocos2d::CCMouseDelegate* getDelegate();
    void setDelegate(cocos2d::CCMouseDelegate* p0) = ios inline {
        if (auto delegate = geode::cast::typeinfo_cast<cocos2d::CCObject*>(p0)) delegate->retain();
        if (auto delegate = geode::cast::typeinfo_cast<cocos2d::CCObject*>(m_pDelegate)) delegate->release();
        m_pDelegate = p0;
    }

    cocos2d::CCMouseDelegate* m_pDelegate;
}

[[link(win, android)]]
class cocos2d::CCMoveBy : cocos2d::CCActionInterval {
    static cocos2d::CCMoveBy* create(float, cocos2d::CCPoint const&) = imac 0x3b7cd0;

    // CCMoveBy(cocos2d::CCMoveBy const&);
    // CCMoveBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x3b8000, m1 0x8f9dc;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33a828;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b7fb0, m1 0x33a87c;

    bool initWithDuration(float p0, cocos2d::CCPoint const& p1) = imac 0x3b7dd0, ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_positionDelta = p1;
        return true;
    }
}

[[link(win, android)]]
class cocos2d::CCMoveTo : cocos2d::CCMoveBy {
    static cocos2d::CCMoveTo* create(float, cocos2d::CCPoint const&) = imac 0x3b80d0, m1 0x33a97c;

    // CCMoveTo(cocos2d::CCMoveTo const&);
    // CCMoveTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*);

    bool initWithDuration(float p0, cocos2d::CCPoint const& p1) = imac 0x3b81e0, ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_endPosition = p1;
        return true;
    }
}

[[link(win, android)]]
class cocos2d::CCNode : cocos2d::CCObject {
    // CCNode(cocos2d::CCNode const&);
    CCNode() = m1 0x21481c;
    virtual ~CCNode() = imac 0x271f60, m1 0x2149a8;

    static cocos2d::CCNode* create() = m1 0x215138;
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
    virtual void setPosition(float, float) = m1 0x214cb4;
    virtual void getPosition(float*, float*) = imac 0x272370, m1 0x214ca0;
    virtual void setPositionX(float) = m1 0x214d04;
    virtual float getPositionX() = imac 0x2723d0, m1 0x214cf4;
    virtual void setPositionY(float) = m1 0x214d48;
    virtual float getPositionY() = imac 0x2723e0, m1 0x214cfc;
    virtual void setSkewX(float) = imac 0x272110, m1 0x214b08;
    virtual float getSkewX() = imac 0x272100, m1 0x214b00;
    virtual void setSkewY(float) = imac 0x272140, m1 0x214b24;
    virtual float getSkewY() = imac 0x272130, m1 0x214b1c;
    virtual void setAnchorPoint(cocos2d::CCPoint const&);
    virtual cocos2d::CCPoint const& getAnchorPoint() = imac 0x2725c0;
    virtual cocos2d::CCPoint const& getAnchorPointInPoints() = imac 0x2725b0;
    virtual void setContentSize(cocos2d::CCSize const&);
    virtual cocos2d::CCSize const& getContentSize() const = imac 0x272650, m1 0x214f2c;
    virtual cocos2d::CCSize getScaledContentSize() = imac 0x272660, m1 0x845c0;
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
    virtual cocos2d::CCArray* getChildren();
    virtual unsigned int getChildrenCount() const;
    virtual void setParent(cocos2d::CCNode*) = imac 0x272730, m1 0x214ff0;
    virtual cocos2d::CCNode* getParent() = imac 0x272720, m1 0x214fe8;
    virtual void removeFromParent() = imac 0x272c80, m1 0x2154bc;
    virtual void removeFromParentAndCleanup(bool) = imac 0x272ca0, m1 0x2154cc;
    virtual void removeMeAndCleanup() = imac 0x272cd0, m1 0x2154ec;
    virtual void removeChild(cocos2d::CCNode*) = imac 0x272cf0, m1 0x2154fc;
    virtual void removeChild(cocos2d::CCNode*, bool);
    virtual void removeChildByTag(int) = imac 0x272e60, m1 0x215688;
    virtual void removeChildByTag(int, bool) = imac 0x272e80, m1 0x215698;
    virtual void removeAllChildren() = imac 0x272ec0, m1 0x2156e8;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x272ee0, m1 0x2156f8;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x272ff0, m1 0x21582c;
    virtual void sortAllChildren();
    virtual cocos2d::CCGridBase* getGrid() = m1 0x214e54;
    virtual void setGrid(cocos2d::CCGridBase*) = m1 0x214e5c;
    virtual void* getUserData() = imac 0x272780, m1 0x215020;
    virtual void setUserData(void*) = imac 0x272790, m1 0x215028;
    virtual cocos2d::CCObject* getUserObject() = imac 0x2727d0, m1 0x215048;
    virtual void setUserObject(cocos2d::CCObject*) = m1 0x215060;
    virtual cocos2d::CCGLProgram* getShaderProgram() = imac 0x2727c0, m1 0x215040;
    virtual void setShaderProgram(cocos2d::CCGLProgram*) = m1 0x21509c;
    virtual cocos2d::CCCamera* getCamera();
    virtual bool isRunning() = imac 0x272710, m1 0x214fe0;
    virtual void registerScriptHandler(int);
    virtual void unregisterScriptHandler();
    virtual void onEnter() = imac 0x273750, m1 0x215f84;
    virtual void onEnterTransitionDidFinish() = imac 0x273870, m1 0x2160b0;
    virtual void onExit();
    virtual void onExitTransitionDidStart() = imac 0x2738e0, m1 0x216130;
    virtual void cleanup() = imac 0x272950, m1 0x2151b8;
    virtual void draw();
    virtual void visit();
    virtual void setActionManager(cocos2d::CCActionManager*) = m1 0x21632c;
    virtual cocos2d::CCActionManager* getActionManager() = imac 0x273b30, m1 0x21637c;
    virtual void setScheduler(cocos2d::CCScheduler*) = m1 0x2163e8;
    virtual cocos2d::CCScheduler* getScheduler() = imac 0x273c40, m1 0x216438;
    virtual void updateTransform();
    virtual cocos2d::CCAffineTransform const nodeToParentTransform() = imac 0x273ea0, m1 0x216668;
    virtual cocos2d::CCAffineTransform const nodeToParentTransformFast() = m1 0x21692c;
    virtual cocos2d::CCAffineTransform const parentToNodeTransform();
    virtual cocos2d::CCAffineTransform nodeToWorldTransform() = m1 0x216e20;
    virtual cocos2d::CCAffineTransform nodeToWorldTransformFast() = m1 0x216eac;
    virtual cocos2d::CCAffineTransform worldToNodeTransform() = imac 0x274780, m1 0x216f38;
    virtual bool addComponent(cocos2d::CCComponent*) = imac 0x274ac0, m1 0x217260;
    virtual bool removeComponent(char const*) = imac 0x274ae0, m1 0x217270;
    virtual bool removeComponent(cocos2d::CCComponent*) = imac 0x274b00, m1 0x217280;
    virtual void removeAllComponents() = imac 0x274b20, m1 0x217290;
    virtual void updateTweenAction(float, char const*);
    virtual void updateTweenActionInt(float, int);

    cocos2d::CCRect boundingBox() = imac 0x272880, m1 0x2150d8;
    void childrenAlloc() = imac 0x272a40, m1 0x215294, ios inline {
        m_pChildren = CCArray::createWithCapacity(4);
        m_pChildren->retain();
    }
    cocos2d::CCPoint convertToNodeSpace(cocos2d::CCPoint const&) = m1 0x216f78;
    cocos2d::CCPoint convertToNodeSpaceAR(cocos2d::CCPoint const& worldPoint) = imac 0x274840, m1 0x217008, ios inline {
        return convertToNodeSpace(worldPoint) - m_obAnchorPointInPoints;
    }
    cocos2d::CCPoint convertTouchToNodeSpace(cocos2d::CCTouch*) = m1 0x217124;
    cocos2d::CCPoint convertTouchToNodeSpaceAR(cocos2d::CCTouch* p0) = imac 0x2749c0, m1 0x21717c, ios inline {
        return this->convertToNodeSpaceAR(p0->getLocation());
    }
    cocos2d::CCPoint convertToWindowSpace(cocos2d::CCPoint const& p0) = imac 0x274900, m1 0x2170cc, ios inline {
        return CCDirector::sharedDirector()->convertToUI(this->convertToWorldSpace(p0));
    }
    cocos2d::CCPoint convertToWorldSpace(cocos2d::CCPoint const&) = m1 0x216fc0;
    cocos2d::CCPoint convertToWorldSpaceAR(cocos2d::CCPoint const& point) = imac 0x2748a0, m1 0x21706c, ios inline {
        return this->convertToWorldSpace(point + m_obAnchorPointInPoints);
    }
    char const* description() = m1 0x215268, ios inline {
        return CCString::createWithFormat("<CCNode | Tag = %d>", m_nTag)->getCString();
    }
    void detachChild(cocos2d::CCNode*, bool) = imac 0x6cdc0;
    cocos2d::CCAction* getActionByTag(int) = m1 0x2163d0;
    cocos2d::CCComponent* getComponent(char const* p0) const = imac 0x274aa0, m1 0x217250, ios inline {
        return m_pComponentContainer->get(p0);
    }
    void insertChild(cocos2d::CCNode*, int) = m1 0x215440;
    unsigned int numberOfRunningActions() = m1 0x2163dc, ios inline {
        return m_pActionManager->numberOfRunningActionsInTarget(this);
    }
    void pauseSchedulerAndActions();
    void qsortAllChildrenWithIndex();
    void resumeSchedulerAndActions();
    cocos2d::CCAction* runAction(cocos2d::CCAction*) = imac 0x273b40, m1 0x216384;
    void schedule(cocos2d::SEL_SCHEDULE) = m1 0x216538;
    void schedule(cocos2d::SEL_SCHEDULE, float) = m1 0x216578;
    void schedule(cocos2d::SEL_SCHEDULE selector, float interval, unsigned int repeat, float delay) = imac 0x273d80, m1 0x21655c, ios inline {
        m_pScheduler->scheduleSelector(selector, this, interval, repeat, delay, !m_bRunning);
    }
    void scheduleOnce(cocos2d::SEL_SCHEDULE selector, float delay) = imac 0x273de0, m1 0x216598, ios inline {
        this->schedule(selector, 0.0f, 0, delay);
    }
    void scheduleUpdate() = m1 0x216440;
    void scheduleUpdateWithPriority(int) = imac 0x273c70, m1 0x21645c;
    void scheduleUpdateWithPriorityLua(int p0, int p1) = imac 0x273c90, m1 0x216478, ios inline {
        this->unscheduleUpdate();
        m_nUpdateScriptHandler = p0;
        m_pScheduler->scheduleUpdateForTarget(this, p1, !m_bRunning);
    }
    // int getScriptHandler();
    // cocos2d::CCAffineTransform getTransformTemp();
    // bool getUseChildIndex();
    void setAdditionalTransform(cocos2d::CCAffineTransform const& additionalTransform) = imac 0x2745b0, m1 0x216d88, ios inline {
        m_sAdditionalTransform = additionalTransform;
        m_bTransformDirty = true;
        m_bAdditionalTransformDirty = true;
    }
    void setUseChildIndex(bool);
    void sortAllChildrenNoIndex() = imac 0x273360, m1 0x215b7c;
    void sortAllChildrenWithIndex() = ios inline {
        this->qsortAllChildrenWithIndex();
    }
    void stopAction(cocos2d::CCAction* action) = m1 0x2163bc, ios inline {
        m_pActionManager->removeAction(action);
    }
    void stopActionByTag(int) = m1 0x2163c4;
    void stopAllActions() = m1 0x215250;
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
    CCNodeRGBA() = m1 0x2172a0;
    virtual ~CCNodeRGBA() = m1 0x217300;

    static cocos2d::CCNodeRGBA* create() = m1 0x217330, ios inline {
    	auto pRet = new cocos2d::CCNodeRGBA();

    	if (pRet->init()) {
    		pRet->autorelease();
    		return pRet;
    	}

    	delete pRet;
    	return nullptr;
    }

    virtual bool init() = imac 0x274c20, m1 0x21731c;
    virtual void setColor(cocos2d::ccColor3B const&);
    virtual cocos2d::ccColor3B const& getColor();
    virtual cocos2d::ccColor3B const& getDisplayedColor();
    virtual unsigned char getDisplayedOpacity();
    virtual unsigned char getOpacity();
    virtual void setOpacity(unsigned char);
    virtual bool isCascadeColorEnabled() = imac 0x2753b0, m1 0x21799c;
    virtual void setCascadeColorEnabled(bool) = imac 0x2753d0, m1 0x2179ac;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&);
    virtual bool isCascadeOpacityEnabled() = imac 0x274fa0, m1 0x2176b8;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x274fc0, m1 0x2176c8;
    virtual void updateDisplayedOpacity(unsigned char);

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
    CCNotificationObserver(cocos2d::CCObject* p0, cocos2d::SEL_CallFuncO p1, char const* p2, cocos2d::CCObject* p3) = win inline {
        m_target = p0;
        m_selector = p1;
        m_object = p3;
        m_name = new char[strlen(p2) + 1];
        memset(m_name, 0, strlen(p2) + 1);
        std::string orig = p2;
        orig.copy(m_name, strlen(p2));
        m_nHandler = 0;
    }
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
    virtual ~CCObject();

    static cocos2d::CCObject* createWithCoder(DS_Dictionary*) = imac 0x48a630, m1 0x3efc8c;

    virtual int getTag() const = imac 0x48a600, m1 0x3efc78;
    virtual bool isEqual(cocos2d::CCObject const*) = imac 0x48a5d0, m1 0x3efc54;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x48a5e0, m1 0x3efc60;
    virtual void encodeWithCoder(DS_Dictionary*) = imac 0x48a620, m1 0x3efc88;
    virtual bool canEncode() = m1 0x3efc94;
    virtual void setTag(int) = imac 0x48a610, m1 0x3efc80;

    // cocos2d::CCObjectType getObjType() const;
    // void setObjType(cocos2d::CCObjectType);
    cocos2d::CCObject* autorelease() = m1 0x3efc10;
    cocos2d::CCObject* copy();
    bool isSingleReference() const = imac 0x48a5b0, m1 0x3efc3c, ios inline {
        return m_uReference == 1;
    }
    void release() = m1 0x3efbdc;
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x367a40, m1 0x2f20d4;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x2e6030;

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

    virtual void addChild(cocos2d::CCNode*, unsigned int, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    virtual void addChild(cocos2d::CCNode*, unsigned int, int);
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x4ae610, m1 0x410814;
    virtual void removeAllChildrenWithCleanup(bool) = m1 0x4108a4;
    virtual void visit() = imac 0x4ae750;

    cocos2d::CCPoint absolutePosition();
}

[[link(win, android)]]
class cocos2d::CCParticleBatchNode : cocos2d::CCNode, cocos2d::CCTextureProtocol {
    CCParticleBatchNode();
    virtual ~CCParticleBatchNode();

    static cocos2d::CCParticleBatchNode* create(char const*, unsigned int);
    static cocos2d::CCParticleBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int);

    virtual void addChild(cocos2d::CCNode*) = m1 0x349c28;
    virtual void addChild(cocos2d::CCNode*, int) = m1 0x349c2c;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x3c87a0, m1 0x1b51c8;
    virtual void removeChild(cocos2d::CCNode*, bool);
    virtual void reorderChild(cocos2d::CCNode*, int);
    virtual void removeAllChildrenWithCleanup(bool) = m1 0x34a6c4;
    virtual void draw() = imac 0x3c91b0, m1 0x34a750;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x3c9390, m1 0x34a92c;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x3c92f0;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x3c93c0, m1 0x34a94c;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x3c93e0, m1 0x34a95c;
    virtual void visit();

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
    static cocos2d::CCParticleExplosion* create() = ios inline {
        auto ret = new CCParticleExplosion();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCParticleExplosion* createWithTotalParticles(unsigned int p0) = ios inline {
        auto ret = new CCParticleExplosion();
        if (ret->initWithTotalParticles(p0)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    // CCParticleExplosion(cocos2d::CCParticleExplosion const&);
    // CCParticleExplosion();
    // virtual bool init() = m1 0x3e2ea8, imac 0x4742d0;
    virtual bool initWithTotalParticles(unsigned int p0) = ios inline {
        if (!CCParticleSystemQuad::initWithTotalParticles(p0, false)) return false;
        m_fDuration = .1f;
        this->setEmitterMode(kCCParticleModeGravity);
        this->setGravity({ 0.f, 0.f });
        this->setSpeed(70.f);
        this->setSpeedVar(40.f);
        this->setRadialAccel(0.f);
        this->setRadialAccelVar(0.f);
        this->setTangentialAccel(0.f);
        this->setTangentialAccelVar(0.f);
        m_fAngle = 90.f;
        m_fAngleVar = 360.f;
        this->setPosition(CCDirector::sharedDirector()->getWinSize() / 2.f);
        this->setPosVar({ 0.f, 0.f });
        m_fLife = 5.f;
        m_fLifeVar = 2.f;
        m_fStartSize = 15.f;
        m_fStartSizeVar = 10.f;
        m_fEndSize = kCCParticleStartSizeEqualToEndSize;
        m_fEmissionRate = m_uTotalParticles / m_fDuration;
        m_tStartColor = { .7f, .1f, .2f, 1.f };
        m_tStartColorVar = { .5f, .5f, .5f, 0.f };
        m_tEndColor = { .5f, .5f, .5f, 0.f };
        m_tEndColorVar = { .5f, .5f, .5f, 0.f };
        auto textureCache = CCTextureCache::sharedTextureCache();
        auto texture = textureCache->textureForKey("__firePngData");
        if (!texture) {
            auto image = new CCImage();
            if (image->initWithImageData((void*)__firePngData, sizeof(__firePngData), CCImage::kFmtPng)) {
                texture = textureCache->addUIImage(image, "__firePngData");
            }
        }
        if (texture) this->setTexture(texture);
        this->setBlendAdditive(false);
        return true;
    }
}

[[link(win, android)]]
class cocos2d::CCParticleFire : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFire* create() = ios inline {
        auto ret = new CCParticleFire();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCParticleFire* createWithTotalParticles(unsigned int p0) = ios inline {
        auto ret = new CCParticleFire();
        if (ret->initWithTotalParticles(p0)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    // CCParticleFire(cocos2d::CCParticleFire const&);
    // CCParticleFire();
    // virtual bool init() = m1 0x3e2e48, imac 0x474210;
    virtual bool initWithTotalParticles(unsigned int p0) = ios inline {
        if (!CCParticleSystemQuad::initWithTotalParticles(p0, false)) return false;
        m_fDuration = kCCParticleDurationInfinity;
        m_nEmitterMode = kCCParticleModeGravity;
        modeA.gravity.x = 0.f;
        modeA.gravity.y = 0.f;
        modeA.radialAccel = 0.f;
        modeA.radialAccelVar = 0.f;
        modeA.speed = 60.f;
        modeA.speedVar = 20.f;
        m_fAngle = 90.f;
        m_fAngleVar = 10.f;
        auto winSize = CCDirector::sharedDirector()->getWinSize();
        this->setPosition(winSize / 2.f);
        m_tPosVar.x = 40.f;
        m_tPosVar.y = 20.f;
        m_fLife = 3.f;
        m_fLifeVar = .25f;
        m_fStartSize = 54.f;
        m_fStartSizeVar = 10.f;
        m_fEndSize = kCCParticleStartSizeEqualToEndSize;
        m_fEmissionRate = m_uTotalParticles / m_fLife;
        m_tStartColor.r = .76f;
        m_tStartColor.g = .25f;
        m_tStartColor.b = .12f;
        m_tStartColor.a = 1.f;
        m_tStartColorVar.r = 0.f;
        m_tStartColorVar.g = 0.f;
        m_tStartColorVar.b = 0.f;
        m_tStartColorVar.a = 0.f;
        m_tEndColor.r = 0.f;
        m_tEndColor.g = 0.f;
        m_tEndColor.b = 0.f;
        m_tEndColor.a = 1.f;
        m_tEndColorVar.r = 0.f;
        m_tEndColorVar.g = 0.f;
        m_tEndColorVar.b = 0.f;
        m_tEndColorVar.a = 0.f;
        auto textureCache = CCTextureCache::sharedTextureCache();
        auto texture = textureCache->textureForKey("__firePngData");
        if (!texture) {
            auto image = new CCImage();
            if (image->initWithImageData((void*)__firePngData, sizeof(__firePngData), CCImage::kFmtPng)) {
                texture = textureCache->addUIImage(image, "__firePngData");
            }
        }
        if (texture) this->setTexture(texture);
        this->setBlendAdditive(false);
        return true;
    }
}

[[link(win, android)]]
class cocos2d::CCParticleFireworks : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFireworks* create();
    static cocos2d::CCParticleFireworks* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int);
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
    static cocos2d::CCParticleMeteor* create();
    static cocos2d::CCParticleMeteor* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleRain : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleRain* create() = m1 0x3ec304, ios inline {
        auto ret = new CCParticleRain();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCParticleRain* createWithTotalParticles(unsigned int p0) = ios inline {
        auto ret = new CCParticleRain();
        if (ret->initWithTotalParticles(p0)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    // CCParticleRain(cocos2d::CCParticleRain const&);
    // CCParticleRain();
    // virtual bool init() = m1 0x3e2eb8, imac 0x4742f0;
    virtual bool initWithTotalParticles(unsigned int p0) = ios inline {
        if (!CCParticleSystemQuad::initWithTotalParticles(p0, false)) return false;
        m_fDuration = kCCParticleDurationInfinity;
        this->setEmitterMode(kCCParticleModeGravity);
        this->setGravity({ 10.f, -10.f });
        this->setRadialAccel(0.f);
        this->setRadialAccelVar(1.f);
        this->setTangentialAccel(0.f);
        this->setTangentialAccelVar(1.f);
        this->setSpeed(130.f);
        this->setSpeedVar(30.f);
        m_fAngle = -90.f;
        m_fAngleVar = 5.f;
        auto winSize = CCDirector::sharedDirector()->getWinSize();
        this->setPosition(winSize / 2.f);
        this->setPosVar({ winSize.width / 2.f, 0.f });
        m_fLife = 4.5f;
        m_fLifeVar = 0.f;
        m_fStartSize = 4.f;
        m_fStartSizeVar = 2.f;
        m_fEndSize = kCCParticleStartSizeEqualToEndSize;
        m_fEmissionRate = 20.f;
        m_tStartColor.r = .7f;
        m_tStartColor.g = .8f;
        m_tStartColor.b = 1.f;
        m_tStartColor.a = 1.f;
        m_tStartColorVar.r = 0.f;
        m_tStartColorVar.g = 0.f;
        m_tStartColorVar.b = 0.f;
        m_tStartColorVar.a = 0.f;
        m_tEndColor.r = .7f;
        m_tEndColor.g = .8f;
        m_tEndColor.b = 1.f;
        m_tEndColor.a = .5f;
        m_tEndColorVar.r = 0.f;
        m_tEndColorVar.g = 0.f;
        m_tEndColorVar.b = 0.f;
        m_tEndColorVar.a = 0.f;
        auto textureCache = CCTextureCache::sharedTextureCache();
        auto texture = textureCache->textureForKey("__firePngData");
        if (!texture) {
            auto image = new CCImage();
            if (image->initWithImageData((void*)__firePngData, sizeof(__firePngData), CCImage::kFmtPng)) {
                texture = textureCache->addUIImage(image, "__firePngData");
            }
        }
        if (texture) this->setTexture(texture);
        this->setBlendAdditive(false);
        return true;
    }
}

[[link(win, android)]]
class cocos2d::CCParticleSmoke : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSmoke* create();
    static cocos2d::CCParticleSmoke* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleSnow : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSnow* create() = ios inline {
        CCParticleSnow* pRet = new CCParticleSnow();
        if (pRet && pRet->init())
        {
            pRet->autorelease();
        }
        else
        {
            CC_SAFE_DELETE(pRet);
        }
        return pRet;
    }
    static cocos2d::CCParticleSnow* createWithTotalParticles(unsigned int numberOfParticles) = m1 0x3ec08c, ios inline {
        CCParticleSnow* pRet = new CCParticleSnow();
        if (pRet && pRet->initWithTotalParticles(numberOfParticles))
        {
            pRet->autorelease();
        }
        else
        {
            CC_SAFE_DELETE(pRet);
        }
        return pRet;
    }

    // CCParticleSnow(cocos2d::CCParticleSnow const&);
    // CCParticleSnow();
    // virtual bool init() = m1 0x3e2ea8, imac 0x4742d0;
    virtual bool initWithTotalParticles(unsigned int numberOfParticles) = m1 0x3ec120, ios inline {
        if( CCParticleSystemQuad::initWithTotalParticles(numberOfParticles, false) ) 
        {
            // duration
            m_fDuration = kCCParticleDurationInfinity;

            // set gravity mode.
            setEmitterMode(kCCParticleModeGravity);

            // Gravity Mode: gravity
            setGravity(ccp(0,-1));

            // Gravity Mode: speed of particles
            setSpeed(5);
            setSpeedVar(1);

            // Gravity Mode: radial
            setRadialAccel(0);
            setRadialAccelVar(1);

            // Gravity mode: tangential
            setTangentialAccel(0);
            setTangentialAccelVar(1);

            // emitter position
            CCSize winSize = CCDirector::sharedDirector()->getWinSize();
            this->setPosition(ccp(winSize.width/2, winSize.height + 10));
            setPosVar(ccp(winSize.width/2, 0));

            // angle
            m_fAngle = -90;
            m_fAngleVar = 5;

            // life of particles
            m_fLife = 45;
            m_fLifeVar = 15;

            // size, in pixels
            m_fStartSize = 10.0f;
            m_fStartSizeVar = 5.0f;
            m_fEndSize = kCCParticleStartSizeEqualToEndSize;

            // emits per second
            m_fEmissionRate = 10;

            // color of particles
            m_tStartColor.r = 1.0f;
            m_tStartColor.g = 1.0f;
            m_tStartColor.b = 1.0f;
            m_tStartColor.a = 1.0f;
            m_tStartColorVar.r = 0.0f;
            m_tStartColorVar.g = 0.0f;
            m_tStartColorVar.b = 0.0f;
            m_tStartColorVar.a = 0.0f;
            m_tEndColor.r = 1.0f;
            m_tEndColor.g = 1.0f;
            m_tEndColor.b = 1.0f;
            m_tEndColor.a = 0.0f;
            m_tEndColorVar.r = 0.0f;
            m_tEndColorVar.g = 0.0f;
            m_tEndColorVar.b = 0.0f;
            m_tEndColorVar.a = 0.0f;

            // CCTexture2D* pTexture = getDefaultTexture();

            // getDefaultTexture : https://github.com/cocos2d/cocos2d-x/blob/v2/cocos2dx/particle_nodes/CCParticleExamples.cpp
            CCTexture2D* pTexture = NULL;
            CCImage* pImage = NULL;
            do 
            {
                bool bRet = false;
                const char* key = "__firePngData";
                pTexture = CCTextureCache::sharedTextureCache()->textureForKey(key);
                CC_BREAK_IF(pTexture != NULL);

                pImage = new CCImage();
                CC_BREAK_IF(NULL == pImage);
                bRet = pImage->initWithImageData((void*)__firePngData, sizeof(__firePngData), CCImage::kFmtPng);
                CC_BREAK_IF(!bRet);

                pTexture = CCTextureCache::sharedTextureCache()->addUIImage(pImage, key);
            } while (0);

            CC_SAFE_RELEASE(pImage);

            if (pTexture != NULL)
            {
                setTexture(pTexture);
            }

            // additive
            this->setBlendAdditive(false);
            return true;
        }
        return false;
    }
}

[[link(win, android)]]
class cocos2d::CCParticleSpiral : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSpiral* create();
    static cocos2d::CCParticleSpiral* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleSun : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSun* create();
    static cocos2d::CCParticleSun* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int);
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

    virtual void update(float) = imac 0x7c99b0;
    virtual bool init() = imac 0x7c6920, m1 0x6cb974;
    virtual void setScaleX(float) = m1 0x6cf574;
    virtual void setScaleY(float) = m1 0x6cf580;
    virtual void setScale(float) = m1 0x6cf55c;
    virtual void setVisible(bool) = imac 0x7caa50, m1 0x6cf180;
    virtual void setRotation(float) = m1 0x6cf568;
    virtual cocos2d::CCParticleBatchNode* getBatchNode() = m1 0x6cf4c4;
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = m1 0x6cf4cc;
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
    virtual void setBlendAdditive(bool);
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
    virtual int getEmitterMode() = m1 0x6cf4b4;
    virtual void setEmitterMode(int) = m1 0x6cf4bc;
    virtual bool initWithTotalParticles(unsigned int, bool) = imac 0x23dac0, m1 0x6cd210;
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&) = m1 0x6cef8c;
    virtual void postStep() = imac 0x7ca860, m1 0x6cef90;
    virtual void updateWithNoTime() = imac 0x7ca700;
    virtual void updateBlendFunc() = m1 0x6cf064;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x7caf50, m1 0x6cf414;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x7caf30, m1 0x6cf404;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x7ca9b0;
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
    bool initWithDictionary(cocos2d::CCDictionary* p0, bool p1) = imac 0x7c82f0, m1 0x6cd17c, ios inline {
        return cocos2d::CCParticleSystem::initWithDictionary(p0, "", p1);
    }
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

    static cocos2d::CCParticleSystemQuad* create() = ios inline {
        CCParticleSystemQuad *pParticleSystemQuad = new CCParticleSystemQuad();
        if (pParticleSystemQuad && pParticleSystemQuad->init())
        {
            pParticleSystemQuad->autorelease();
            return pParticleSystemQuad;
        }
        CC_SAFE_DELETE(pParticleSystemQuad);
        return nullptr;
    }
    static cocos2d::CCParticleSystemQuad* create(char const*, bool) = imac 0x602580;
    static cocos2d::CCParticleSystemQuad* createWithTotalParticles(unsigned int, bool) = imac 0x602660;

    virtual void draw();
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = imac 0x603510;
    virtual void setTotalParticles(unsigned int) = m1 0x52a918;
    virtual bool initWithTotalParticles(unsigned int, bool) = m1 0x529a30;
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

    virtual void update(float) = imac 0x7aca00, m1 0x6b3214;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);

    bool initWithPosition(cocos2d::CCPoint const&) = imac 0x7ac8f0, m1 0x6b30f8;
}

[[link(win, android)]]
class cocos2d::CCPointArray : cocos2d::CCObject {
    CCPointArray() = m1 0x26be3c;
    virtual ~CCPointArray() = m1 0x26bc94;

    static cocos2d::CCPointArray* create(unsigned int) = m1 0x26b998;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);

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
    cocos2d::CCAutoreleasePool* getCurReleasePool() = m1 0x36f7d8, ios inline {
        if (!m_pCurReleasePool) this->push();
        return m_pCurReleasePool;
    }
    void pop();
    void push() = m1 0x36f5c8;
    void removeObject(cocos2d::CCObject*);
}

[[link(win, android)]]
class cocos2d::CCPrettyPrinter : cocos2d::CCDataVisitor {
    [[since("4.10.1")]]
    CCPrettyPrinter(int p0) = win inline, imac 0x4b4bc0, m1 0x415e7c {
        setIndentLevel(p0);
    }

    virtual void clear() = m1 0x41606c;
    virtual gd::string getResult();
    virtual void visitObject(cocos2d::CCObject const*) = imac 0x4b4de0, m1 0x4160b8;
    virtual void visit(cocos2d::CCBool const*) = m1 0x416138;
    virtual void visit(cocos2d::CCInteger const*) = imac 0x4b4ef0, m1 0x4161c8;
    virtual void visit(cocos2d::CCFloat const*) = imac 0x4b4f70, m1 0x41624c;
    virtual void visit(cocos2d::CCDouble const*) = imac 0x4b4ff0, m1 0x4162d4;
    virtual void visit(cocos2d::CCString const*) = m1 0x416358;
    virtual void visit(cocos2d::CCArray const*) = imac 0x4b50a0;
    virtual void visit(cocos2d::CCDictionary const*) = imac 0x4b55b0, m1 0x4167d0;
    virtual void visit(cocos2d::CCSet const*) = imac 0x4b5a50;

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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual cocos2d::CCActionInterval* reverse() = imac 0x437870, m1 0x3a9774;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3a9808;
    virtual void update(float) = m1 0x3a980c;

    bool initWithDuration(float, float, float) = imac 0x437730, m1 0x3a9654;
}

[[link(win, android)]]
class cocos2d::CCProgressTimer : cocos2d::CCNodeRGBA {
    // CCProgressTimer(cocos2d::CCProgressTimer const&);
    CCProgressTimer() = m1 0x52addc;
    virtual ~CCProgressTimer() = m1 0x52b1f4;

    static cocos2d::CCProgressTimer* create(cocos2d::CCSprite*) = imac 0x603ba0, m1 0x52aee4;

    virtual cocos2d::ccColor3B const& getColor() const = imac 0x604270, m1 0x52b4d0;
    virtual unsigned char getOpacity() const;
    virtual void draw();
    virtual cocos2d::CCPoint getMidpoint() = imac 0x606030, m1 0x52cab4;
    virtual void setMidpoint(cocos2d::CCPoint) = imac 0x606050, m1 0x52cac0;
    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x52b3a8;
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
    void setType(cocos2d::CCProgressTimerType type) = ios inline {
        if (type != m_eType) {
            if (m_pVertexData) {
                free(m_pVertexData);
                m_pVertexData = nullptr;
                m_nVertexDataCount = 0;
            }
            m_eType = type;
        }
    }
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3a9560;
    virtual void update(float) = m1 0x3a95a0;

    bool initWithDuration(float, float) = imac 0x4374e0, m1 0x3a9444;
}

[[link(win, android)]]
class cocos2d::CCRemoveSelf : cocos2d::CCActionInstant {
    static cocos2d::CCRemoveSelf* create(bool isNeedCleanUp) = m1 0x6b2b54, ios inline {
        CCRemoveSelf *pRet = new CCRemoveSelf();

        if (pRet && pRet->init(isNeedCleanUp)) {
            pRet->autorelease();
        }

        return pRet;
    }

    // CCRemoveSelf(cocos2d::CCRemoveSelf const&);
    // CCRemoveSelf();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
        CCZone *pNewZone = NULL;
        CCRemoveSelf *pRet = NULL;

        if (pZone && pZone->m_pCopyObject) {
            pRet = (CCRemoveSelf*)(pZone->m_pCopyObject);
        } else {
            pRet = new CCRemoveSelf();
            pZone = pNewZone = new cocos2d::CCZone(pRet);
        }

        cocos2d::CCActionInstant::copyWithZone(pZone);
        pRet->init(m_bIsNeedCleanUp);
        CC_SAFE_DELETE(pNewZone);
        return pRet;
    }
    virtual void update(float time) = imac 0x7ac3b0, m1 0x6b2bc0, ios inline {
        CC_UNUSED_PARAM(time);
        m_pTarget->removeFromParentAndCleanup(m_bIsNeedCleanUp);
    }
    virtual cocos2d::CCFiniteTimeAction* reverse() = m1 0x6b2bd8, ios inline {
        return (CCFiniteTimeAction*)(cocos2d::CCRemoveSelf::create(m_bIsNeedCleanUp));
    }

    bool init(bool isNeedCleanUp) = imac 0x7ac3a0, m1 0x6b2bb4, ios inline {
        m_bIsNeedCleanUp = isNeedCleanUp;
        return true;
    }
}

[[link(win, android)]]
class cocos2d::CCRenderTexture : cocos2d::CCNode {
    // CCRenderTexture(cocos2d::CCRenderTexture const&);
    [[since("4.0.1")]]
    CCRenderTexture() = m1 0x51de40, ios inline {
        m_pSprite = nullptr;
        m_uFBO = 0;
        m_uDepthRenderBufffer = 0;
        m_nOldFBO = 0;
        m_pTexture = nullptr;
        m_pTextureCopy = nullptr;
        m_pUITextureImage = nullptr;
        m_ePixelFormat = kCCTexture2DPixelFormat_RGBA8888;
        m_uClearFlags = 0;
        m_sClearColor = { 0.0f, 0.0f, 0.0f, 0.0f };
        m_fClearDepth = 0.0f;
        m_nClearStencil = 0;
        m_bAutoDraw = false;
    }
    [[since("4.0.1")]]
    virtual ~CCRenderTexture() = m1 0x51ded8;

    static cocos2d::CCRenderTexture* create(int, int) = imac 0x5f51f0, m1 0x51e53c;
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat) = imac 0x5f4cb0, m1 0x51e020;
    static cocos2d::CCRenderTexture* create(int p0, int p1, cocos2d::CCTexture2DPixelFormat p2, unsigned int p3) = imac 0x5f4d80, m1 0x51e100, ios inline {
        auto ret = new CCRenderTexture();
        if (ret->initWithWidthAndHeight(p0, p1, p2, p3)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual void draw() = imac 0x5f5ae0, m1 0x51ed84;
    virtual void visit();
    virtual cocos2d::CCSprite* getSprite() = m1 0x51df78;
    virtual void setSprite(cocos2d::CCSprite*) = m1 0x51df80;

    void begin() = imac 0x5f52d0, m1 0x51e634;
    void beginWithClear(float, float, float, float) = imac 0x5f5500, m1 0x51e828;
    void beginWithClear(float p0, float p1, float p2, float p3, float p4) = imac 0x5f5740, m1 0x51ea10, ios inline {
        this->beginWithClear(p0, p1, p2, p3, p4, 0, GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    }
    void beginWithClear(float p0, float p1, float p2, float p3, float p4, int p5) = imac 0x5f5820, m1 0x4f1d14, ios inline {
        this->beginWithClear(p0, p1, p2, p3, p4, p5, GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
    }
    void beginWithClear(float, float, float, float, float, int, unsigned int) = imac 0x5f55a0, m1 0x51e8c8;
    void clear(float, float, float, float);
    void clearDepth(float);
    void clearStencil(int);
    void end() = m1 0x51eae8;
    cocos2d::ccColor4F const& getClearColor() const;
    float getClearDepth() const;
    unsigned int getClearFlags() const;
    int getClearStencil() const;
    bool initWithWidthAndHeight(int p0, int p1, cocos2d::CCTexture2DPixelFormat p2) = imac 0x5f4d70, m1 0x51e0f8, ios inline {
        return this->initWithWidthAndHeight(p0, p1, p2, 0);
    }
    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = m1 0x51e1e8;
    // void endToLua();
    bool isAutoDraw() const;
    void listenToBackground(cocos2d::CCObject*);
    void listenToForeground(cocos2d::CCObject*);
    cocos2d::CCImage* newCCImage(bool flipImage) = imac 0x5f5d90, m1 0x51efa4, ios inline {
        if (!m_pTexture) return nullptr;

        auto& s = m_pTexture->getContentSizeInPixels();
        int width = s.width;
        int height = s.height;
        auto buffer = new uint8_t[width * height * 4];
        auto data = new uint8_t[width * height * 4];
        auto image = new CCImage();

        this->begin();
        glPixelStorei(GL_PACK_ALIGNMENT, 1);
        glReadPixels(0, 0, width, height, GL_RGBA, GL_UNSIGNED_BYTE, data);
        this->end();

        if (flipImage) {
            for (int i = 0; i < height; i++) {
                memcpy(&buffer[i * width * 4], &data[(height - i - 1) * width * 4], width * 4);
            }

            image->initWithImageData(buffer, width * height * 4, CCImage::kFmtRawData, width, height, 8);
        }
        else image->initWithImageData(data, width * height * 4, CCImage::kFmtRawData, width, height, 8);    

        delete[] buffer;
        delete[] data;
        return image;
    }
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
    virtual ~CCRepeat() = m1 0x338c90, ios inline {
        CC_SAFE_RELEASE(m_pInnerAction);
    }

    static cocos2d::CCRepeat* create(cocos2d::CCFiniteTimeAction* pAction, unsigned int times) = imac 0x3b5dc0, m1 0x3389b8, ios inline {
        CCRepeat* pRepeat = new CCRepeat();
        pRepeat->initWithAction(pAction, times);
        pRepeat->autorelease();

        return pRepeat;
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
        CCZone* pNewZone = NULL;
        CCRepeat* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCRepeat*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCRepeat();
            pZone = pNewZone = new CCZone(pCopy);
        }

        CCActionInterval::copyWithZone(pZone);

        pCopy->initWithAction((CCFiniteTimeAction*)(m_pInnerAction->copy()->autorelease()), m_uTimes);

        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float dt) = m1 0x338dd0, ios inline {
        if (dt >= m_fNextDt) {
            while (dt > m_fNextDt && m_uTotal < m_uTimes) {
                m_pInnerAction->update(1.0f);
                m_uTotal++;
                m_pInnerAction->stop();
                m_pInnerAction->startWithTarget(m_pTarget);
                m_fNextDt += m_pInnerAction->getDuration() / m_fDuration;
            }
            if (dt >= 1.0f && m_uTotal < m_uTimes) m_uTotal++;
            if (!m_bActionInstant) {
                if (m_uTotal == m_uTimes) {
                    m_pInnerAction->update(1);
                    m_pInnerAction->stop();
                }
                else m_pInnerAction->update(dt - (m_fNextDt - m_pInnerAction->getDuration() / m_fDuration));
            }
        }
        else m_pInnerAction->update(fmodf(dt * m_uTimes, 1.0f));
    }
    virtual bool isDone() = imac 0x3b6310, m1 0x338f44, ios inline {
        return m_uTotal == m_uTimes;
    }
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3b6170, m1 0x338d48, ios inline {
        m_uTotal = 0;
        m_fNextDt = m_pInnerAction->getDuration()/m_fDuration;
        CCActionInterval::startWithTarget(pTarget);
        m_pInnerAction->startWithTarget(pTarget);
    }
    virtual void stop() = m1 0x338da0, ios inline {
        m_pInnerAction->stop();
        CCActionInterval::stop();
    }
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b6320, m1 0x338f54, ios inline {
        return CCRepeat::create(m_pInnerAction->reverse(), m_uTimes);
    }

    bool initWithAction(cocos2d::CCFiniteTimeAction* pAction, unsigned int times) = imac 0x3b5ec0, m1 0x338aa8, ios inline {
        float d = pAction->getDuration() * times;

        if (CCActionInterval::initWithDuration(d))
        {
            m_uTimes = times;
            m_pInnerAction = pAction;
            pAction->retain();

            m_bActionInstant = geode::cast::typeinfo_cast<CCActionInstant*>(pAction) ? true : false;
            //an instant action needs to be executed one time less in the update method since it uses startWithTarget to execute the action
            if (m_bActionInstant) 
            {
                m_uTimes -=1;
            }
            m_uTotal = 0;

            return true;
        }

        return false;
    }
}

[[link(win, android)]]
class cocos2d::CCRepeatForever : cocos2d::CCActionInterval {
    // cocos2d::CCActionInterval* getInnerAction();
    // void setInnerAction(cocos2d::CCActionInterval*);
    // CCRepeatForever(cocos2d::CCRepeatForever const&);
    // CCRepeatForever();
    [[since("4.2.1")]]
    virtual ~CCRepeatForever() = m1 0x338f84;

    static cocos2d::CCRepeatForever* create(cocos2d::CCActionInterval*) = m1 0x33903c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual bool isDone() = imac 0x3b6630, m1 0x201ed0;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3391a8;
    virtual void step(float) = imac 0x3b65c0, m1 0x3391e8;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b6640, m1 0x339288;

    bool initWithAction(cocos2d::CCActionInterval* p0) = m1 0x3390a8, ios inline {
        p0->retain();
        m_pInnerAction = p0;
        return true;
    }
}

[[link(win, android)]]
class cocos2d::CCReuseGrid : cocos2d::CCActionInstant {
    static cocos2d::CCReuseGrid* create(int) = m1 0x1b6908;

    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x1b6984;

    bool initWithTimes(int) = imac 0x20aad0, m1 0x1b6978;
}

[[link(win, android)]]
class cocos2d::CCReverseTime : cocos2d::CCActionInterval {
    CCReverseTime() = m1 0x33dc2c;
    virtual ~CCReverseTime() = m1 0x33dc54;

    static cocos2d::CCReverseTime* create(cocos2d::CCFiniteTimeAction*) = m1 0x33da20;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33dd0c;
    virtual void stop() = m1 0x33dd4c;
    virtual void update(float) = imac 0x3bbc80, m1 0x33dd7c;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x33dd9c;

    bool initWithAction(cocos2d::CCFiniteTimeAction*) = imac 0x3bb9a0, m1 0x33dacc;
}

[[link(win, android)]]
class cocos2d::CCRipple3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCRipple3D* create(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float) = imac 0x27e120, m1 0x22007c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x27e450;

    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float) = m1 0x2201a4;
    void setPosition(cocos2d::CCPoint const&) = m1 0x220210;
}

[[link(win, android)]]
class cocos2d::CCRotateBy : cocos2d::CCActionInterval {
    static cocos2d::CCRotateBy* create(float, float) = imac 0x3b7820, m1 0x33a1c8;
    static cocos2d::CCRotateBy* create(float, float, float) = imac 0x3b7920, m1 0x33a290;

    // CCRotateBy(cocos2d::CCRotateBy const&);
    // CCRotateBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33a45c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b7bf0, m1 0x33a540;

    bool initWithDuration(float p0, float p1) = imac 0x3b78e0, m1 0x33a264, ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_fAngleX = p1;
        m_fAngleY = p1;
        return true;
    }
    bool initWithDuration(float p0, float p1, float p2) = ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_fAngleX = p1;
        m_fAngleY = p2;
        return true;
    }
}

[[link(win, android)]]
class cocos2d::CCRotateTo : cocos2d::CCActionInterval {
    static cocos2d::CCRotateTo* create(float, float) = imac 0x3b7360, m1 0x339dd0;
    static cocos2d::CCRotateTo* create(float fDuration, float fDeltaAngleX, float fDeltaAngleY) = imac 0x3b7460, m1 0x339e9c, ios inline {
        CCRotateTo* pRotateTo = new CCRotateTo();
        pRotateTo->initWithDuration(fDuration, fDeltaAngleX, fDeltaAngleY);
        pRotateTo->autorelease();

        return pRotateTo;
    }

    // CCRotateTo(cocos2d::CCRotateTo const&);
    // CCRotateTo();
    virtual bool initWithDuration(float fDuration, float fDeltaAngleX, float fDeltaAngleY);
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33a05c;

    bool initWithDuration(float p0, float p1) = imac 0x3b7420, m1 0x339e70, ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_fDstAngleX = p1;
        m_fDstAngleY = p1;
        return true;
    }
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
    static cocos2d::CCScaleBy* create(float duration, float s) = m1 0x33c42c, ios inline {
        cocos2d::CCScaleBy *pScaleBy = new cocos2d::CCScaleBy();
        pScaleBy->initWithDuration(duration, s);
        pScaleBy->autorelease();

        return pScaleBy;
    }
    static cocos2d::CCScaleBy* create(float duration, float sx, float sy) = m1 0x33c4c4, ios inline {
        cocos2d::CCScaleBy *pScaleBy = new cocos2d::CCScaleBy();
        pScaleBy->initWithDuration(duration, sx, sy);
        pScaleBy->autorelease();

        return pScaleBy;
    }

    // CCScaleBy(cocos2d::CCScaleBy const&);
    // CCScaleBy();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
        CCZone* pNewZone = NULL;
        CCScaleTo* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject)
        {
            //in case of being called at sub class
            pCopy = (CCScaleBy*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCScaleBy();
            pZone = pNewZone = new CCZone(pCopy);
        }

        CCScaleTo::copyWithZone(pZone);


        pCopy->initWithDuration(m_fDuration, m_fEndScaleX, m_fEndScaleY);
        
        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = m1 0x33c658, ios inline {
        cocos2d::CCScaleTo::startWithTarget(pTarget);
        m_fDeltaX = m_fStartScaleX * m_fEndScaleX - m_fStartScaleX;
        m_fDeltaY = m_fStartScaleY * m_fEndScaleY - m_fStartScaleY;
    }
    virtual cocos2d::CCActionInterval* reverse() = m1 0x33c6c8, ios inline {
        return cocos2d::CCScaleBy::create(m_fDuration, 1 / m_fEndScaleX, 1 / m_fEndScaleY);
    }
}

[[link(win, android)]]
class cocos2d::CCScaleTo : cocos2d::CCActionInterval {
    static cocos2d::CCScaleTo* create(float, float) = m1 0x33c0d8;
    static cocos2d::CCScaleTo* create(float, float, float) = m1 0x33c198;

    // CCScaleTo(cocos2d::CCScaleTo const&);
    // CCScaleTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33c354;

    bool initWithDuration(float duration, float s) = imac 0x3b9d10, m1 0x33c170, ios inline {
        if (cocos2d::CCActionInterval::initWithDuration(duration))
        {
            m_fEndScaleX = s;
            m_fEndScaleY = s;

            return true;
        }

        return false;
    }
    bool initWithDuration(float duration, float sx, float sy) = ios inline {
        if (cocos2d::CCActionInterval::initWithDuration(duration))
        {
            m_fEndScaleX = sx;
            m_fEndScaleY = sy;

            return true;
        }

        return false;
    }
}

[[link(win, android)]]
class cocos2d::CCScene : cocos2d::CCNode {
    // CCScene(cocos2d::CCScene const&);
    CCScene() = m1 0x230dec;
    virtual ~CCScene() = m1 0x230ee4;

    static cocos2d::CCScene* create() = imac 0x290a00, m1 0x230f58;

    virtual bool init();

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
    void unscheduleAll() = m1 0x3b314c;
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
    void setScriptEngine(cocos2d::CCScriptEngineProtocol* engine) = imac 0x31bac0, m1 0x2a9c1c, ios inline {
        if (m_pScriptEngine) delete m_pScriptEngine;
        m_pScriptEngine = engine;
    }
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x3b5b50, m1 0x33875c;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3386d0;
    virtual void stop();
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3b5cd0, m1 0x3388d8;

    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3b5260, m1 0x338030;
}

[[link(win, android)]]
class cocos2d::CCSet : cocos2d::CCObject {
    //CCSet(cocos2d::CCSet const&) = imac 0x79df40, m1 0x6b0448, ios 0x1af714;
    CCSet() = m1 0x6b8f9c;
    virtual ~CCSet() = imac 0x7b2f80, m1 0x6b9114;

    static cocos2d::CCSet* create() = m1 0x6b9280, ios inline {
        auto ret = new CCSet();
        ret->autorelease();
        return ret;
    }

    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x7b30f0, m1 0x6b9268;

    void addObject(cocos2d::CCObject*) = imac 0x7b3230, m1 0x6b93a4;
    cocos2d::CCObject* anyObject() = m1 0x6b9594, ios inline {
        if (!m_pSet || m_pSet->empty())
        {
            return 0;
        }
        
        cocos2d::CCSetIterator it;

        for( it = m_pSet->begin(); it != m_pSet->end(); ++it)
        {
            if (*it)
            {
                return (*it);
            }
        }

        return 0;
    }
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
    cocos2d::CCGLProgram* programForKey(char const*);
    void reloadDefaultShaders() = imac 0x202850, m1 0x1af718, ios inline {
        CCGLProgram* program;
        program = this->programForKey(kCCShader_PositionTextureColor);
        program->reset();
        this->loadDefaultShader(program, 0);
        program = this->programForKey(kCCShader_PositionTextureColorAlphaTest);
        program->reset();
        this->loadDefaultShader(program, 1);
        program = this->programForKey(kCCShader_PositionColor);
        program->reset();
        this->loadDefaultShader(program, 2);
        program = this->programForKey(kCCShader_PositionTexture);
        program->reset();
        this->loadDefaultShader(program, 3);
        program = this->programForKey(kCCShader_PositionTexture_uColor);
        program->reset();
        this->loadDefaultShader(program, 4);
        program = this->programForKey(kCCShader_PositionTextureA8Color);
        program->reset();
        this->loadDefaultShader(program, 5);
        program = this->programForKey(kCCShader_Position_uColor);
        program->reset();
        this->loadDefaultShader(program, 6);
        program = this->programForKey(kCCShader_PositionLengthTexureColor);
        program->reset();
        this->loadDefaultShader(program, 7);
    }
}

[[link(win, android)]]
class cocos2d::CCShaky3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCShaky3D* create(float, cocos2d::CCSize const&, int, bool);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x27e870, m1 0x220740;

    bool initWithDuration(float, cocos2d::CCSize const&, int, bool);
}

[[link(win, android)]]
class cocos2d::CCShakyTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCShakyTiles3D* create(float, cocos2d::CCSize const&, int, bool);

    virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool);
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCShatteredTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCShatteredTiles3D* create(float, cocos2d::CCSize const&, int, bool) = m1 0x6baf18;

    virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool) = m1 0x6bb018;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCShow : cocos2d::CCActionInstant {
    static cocos2d::CCShow* create() = m1 0x6b26f8;

    // CCShow(cocos2d::CCShow const&);
    // CCShow();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x7abf80, m1 0x6b2750;
    virtual cocos2d::CCFiniteTimeAction* reverse() = m1 0x6b2764;
}

[[link(win, android)]]
class cocos2d::CCShuffleTiles : cocos2d::CCTiledGrid3DAction {

    virtual ~CCShuffleTiles() = m1 0x6bb684;

    static cocos2d::CCShuffleTiles* create(float, cocos2d::CCSize const&, unsigned int) = imac 0x7b53d0, m1 0x6bb448;

    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int) = m1 0x6bb540;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x6bb904;
    virtual void update(float);
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);

    cocos2d::CCSize getDelta(cocos2d::CCSize const&) = imac 0x7b5760, m1 0x6bb7cc;
    void placeTile(cocos2d::CCPoint const&, cocos2d::Tile*) = imac 0x7b5800, m1 0x6bb858;
    void shuffle(unsigned int*, unsigned int);
}

[[link(win, android)]]
class cocos2d::CCSkewBy : cocos2d::CCSkewTo {
    static cocos2d::CCSkewBy* create(float t, float sx, float sy) = m1 0x33afa4, ios inline {
	CCSkewBy *pSkewBy = new CCSkewBy();
        if (pSkewBy)
        {
            if (pSkewBy->initWithDuration(t, sx, sy))
            {
                pSkewBy->autorelease();
            }
            else
            {
                CC_SAFE_DELETE(pSkewBy);
            }
        }

        return pSkewBy;
    }

    // CCSkewBy(cocos2d::CCSkewBy const&);
    // CCSkewBy();
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = m1 0x33b084, ios inline {
	CCSkewTo::startWithTarget(pTarget);
        m_fDeltaX = m_fSkewX;
        m_fDeltaY = m_fSkewY;
        m_fEndSkewX = m_fStartSkewX + m_fDeltaX;
        m_fEndSkewY = m_fStartSkewY + m_fDeltaY;
    }
    virtual cocos2d::CCActionInterval* reverse() = m1 0x33b160, ios inline {
	return create(m_fDuration, -m_fSkewX, -m_fSkewY);
    }
    virtual bool initWithDuration(float t, float deltaSkewX, float deltaSkewY) = imac 0x3b88e0, m1 0x33b058, ios inline {
	bool bRet = false;

        if (CCSkewTo::initWithDuration(t, deltaSkewX, deltaSkewY))
        {
            m_fSkewX = deltaSkewX;
            m_fSkewY = deltaSkewY;

            bRet = true;
        }

        return bRet;
    }
}

[[link(win, android)]]
class cocos2d::CCSkewTo : cocos2d::CCActionInterval {
    [[since("4.2.1")]]
    CCSkewTo() = m1 0x33ad00, ios inline {
        m_fSkewX = 0.0;
        m_fSkewY = 0.0;
        m_fStartSkewX = 0.0;
        m_fStartSkewY = 0.0;
        m_fEndSkewX = 0.0;
        m_fEndSkewY = 0.0;
        m_fDeltaX = 0.0;
        m_fDeltaY = 0.0;
    }

    static cocos2d::CCSkewTo* create(float t, float sx, float sy) = m1 0x33ac64, ios inline {
	CCSkewTo *pSkewTo = new CCSkewTo();
        if (pSkewTo)
        {
            if (pSkewTo->initWithDuration(t, sx, sy))
            {
                pSkewTo->autorelease();
            }
            else
            {
                CC_SAFE_DELETE(pSkewTo);
            }
        }

        return pSkewTo;
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
        CCZone* pNewZone = NULL;
        CCSkewTo* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCSkewTo*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCSkewTo();
            pZone = pNewZone = new CCZone(pCopy);
        }

        CCActionInterval::copyWithZone(pZone);

        pCopy->initWithDuration(m_fDuration, m_fEndSkewX, m_fEndSkewY);

        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float t) = imac 0x3b8760, m1 0x33af18, ios inline {
        m_pTarget->setSkewX(m_fStartSkewX + m_fDeltaX * t);
        m_pTarget->setSkewY(m_fStartSkewY + m_fDeltaY * t);
    }
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = m1 0x33ae30, ios inline {
        CCActionInterval::startWithTarget(pTarget);

        m_fStartSkewX = pTarget->getSkewX();

        if (m_fStartSkewX > 0)
        {
            m_fStartSkewX = fmodf(m_fStartSkewX, 180.f);
        }
        else
        {
            m_fStartSkewX = fmodf(m_fStartSkewX, -180.f);
        }

        m_fDeltaX = m_fEndSkewX - m_fStartSkewX;

        if (m_fDeltaX > 180)
        {
            m_fDeltaX -= 360;
        }
        if (m_fDeltaX < -180)
        {
            m_fDeltaX += 360;
        }

        m_fStartSkewY = pTarget->getSkewY();

        if (m_fStartSkewY > 0)
        {
            m_fStartSkewY = fmodf(m_fStartSkewY, 360.f);
        }
        else
        {
            m_fStartSkewY = fmodf(m_fStartSkewY, -360.f);
        }

        m_fDeltaY = m_fEndSkewY - m_fStartSkewY;

        if (m_fDeltaY > 180)
        {
            m_fDeltaY -= 360;
        }
        if (m_fDeltaY < -180)
        {
            m_fDeltaY += 360;
        }
    }
    virtual bool initWithDuration(float t, float sx, float sy) = ios inline {
        bool bRet = false;

        if (CCActionInterval::initWithDuration(t))
        {
            m_fEndSkewX = sx;
            m_fEndSkewY = sy;

            bRet = true;
        }

        return bRet;
    }
}

[[link(win, android)]]
class cocos2d::CCSpawn : cocos2d::CCActionInterval {
    // CCSpawn(cocos2d::CCSpawn const&);
    // CCSpawn();
    virtual ~CCSpawn() = m1 0x339b4c;

    static cocos2d::CCSpawn* create(cocos2d::CCArray* arrayOfActions) = m1 0x339550, ios inline {
        CCSpawn* pRet = NULL;
        do 
        {
            unsigned  int count = arrayOfActions->count();
            CC_BREAK_IF(count == 0);
            CCFiniteTimeAction* prev = (CCFiniteTimeAction*)arrayOfActions->objectAtIndex(0);
            if (count > 1)
            {
                for (unsigned int i = 1; i < arrayOfActions->count(); ++i)
                {
                    prev = createWithTwoActions(prev, (CCFiniteTimeAction*)arrayOfActions->objectAtIndex(i));
                }
            }
            else
            {
                // If only one action is added to CCSpawn, make up a CCSpawn by adding a simplest finite time action.
                // ExtraAction doesnt exist for some reason
                CCFiniteTimeAction* action = new CCFiniteTimeAction();
                if (action) {
                    action->autorelease();
                }
                prev = createWithTwoActions(prev, action);
            }
            pRet = (CCSpawn*)prev;
        }while (0);

        return pRet;
    }
    // static cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction*, ...) = m1 0x33e430, imac 0x3b9e30;
    static cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction* first, ...) {
        va_list args;
        va_start(args, first);
        auto* array = cocos2d::CCArray::create();
        array->addObject(first);
        while (auto* action = va_arg(args, cocos2d::CCFiniteTimeAction*)) {
            array->addObject(action);
        }
        va_end(args);
        return cocos2d::CCSpawn::create(array);
    }
    static cocos2d::CCSpawn* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = m1 0x3394c4;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x3b7260, m1 0x339cbc;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x339c28;
    virtual void stop() = imac 0x3b7230, m1 0x339c7c;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x339d20;

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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x27ef60, m1 0x220e04;
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

    virtual bool initWithDuration(float, unsigned int) = imac 0x7b79c0;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x7b7b80, m1 0x6bdae8;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x6bdaa8;
}

[[link(win, android)]]
class cocos2d::CCSplitRows : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCSplitRows* create(float, unsigned int);

    virtual bool initWithDuration(float, unsigned int) = imac 0x7b7610;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x7b77d0, m1 0x6bd760;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x6bd720;
}

[[link(win, android)]]
class cocos2d::CCSprite : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    // void setTextureAtlas(cocos2d::CCTextureAtlas*);
    // void setTlVertexMod(float);
    // void setTrVertexMod(float);
    // void setUseVertexMod(bool);
    // CCSprite(cocos2d::CCSprite const&);
    CCSprite() = m1 0x229d88;
    virtual ~CCSprite() = m1 0x229e10;

    static cocos2d::CCSprite* create() = m1 0x229910;
    static cocos2d::CCSprite* create(char const*) = m1 0x229600;
    static cocos2d::CCSprite* create(char const*, cocos2d::CCRect const&);
    static cocos2d::CCSprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x2297f4;
    static cocos2d::CCSprite* createWithSpriteFrameName(char const*) = m1 0x2298e8;
    static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*) = m1 0x229384;
    static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);

    virtual bool init() = imac 0x2882e0, m1 0x2299f8;
    virtual void setVertexZ(float);
    virtual void setScaleX(float);
    virtual void setScaleY(float);
    virtual void setScale(float) = imac 0x289d30, m1 0x22b1a0;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x2899a0, m1 0x22adc4;
    virtual void setSkewX(float);
    virtual void setSkewY(float);
    virtual void setAnchorPoint(cocos2d::CCPoint const&);
    virtual void setVisible(bool);
    virtual void setRotation(float);
    virtual void setRotationX(float) = imac 0x289ea0;
    virtual void setRotationY(float);
    virtual void ignoreAnchorPointForPosition(bool);
    virtual void addChild(cocos2d::CCNode*) = m1 0x22a8f0;
    virtual void addChild(cocos2d::CCNode*, int) = m1 0x22a8f4;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x289500, m1 0x22a8f8;
    virtual void removeChild(cocos2d::CCNode*, bool);
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x49470, m1 0x22aaa8;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x2895c0, m1 0x22a9cc;
    virtual void sortAllChildren();
    virtual void draw();
    virtual void updateTransform() = imac 0x288eb0, m1 0x22a3f4;
    virtual bool initWithTexture(cocos2d::CCTexture2D*) = m1 0x229b74;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = imac 0x288480, m1 0x229b64;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*);
    virtual bool initWithSpriteFrameName(char const*) = m1 0x229d4c;
    virtual bool initWithFile(char const*) = m1 0x229bf0;
    virtual bool initWithFile(char const*, cocos2d::CCRect const&) = m1 0x229c84;
    virtual void setChildColor(cocos2d::ccColor3B const&);
    virtual void setChildOpacity(unsigned char);
    virtual cocos2d::CCSpriteBatchNode* getBatchNode() = imac 0x28ac80, m1 0x22bb1c;
    virtual void setBatchNode(cocos2d::CCSpriteBatchNode*) = imac 0x28ac90, m1 0x22bb24;
    virtual void refreshTextureRect() = imac 0x288850, m1 0x229ef8;
    virtual void setTextureRect(cocos2d::CCRect const&) = imac 0x2888e0;
    virtual void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&);
    virtual void setVertexRect(cocos2d::CCRect const&) = imac 0x288c60, m1 0x221274;
    virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = imac 0x28a970, m1 0x22b89c;
    virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = imac 0x28aa40;
    virtual cocos2d::CCSpriteFrame* displayFrame() = imac 0x28aad0, m1 0x22ba14;
    virtual void setDisplayFrameWithAnimationName(char const*, int) = m1 0x22b91c;
    virtual void setTextureCoords(cocos2d::CCRect const&) = imac 0x288c80, m1 0x22a228;
    virtual void updateBlendFunc();
    virtual void setReorderChildDirtyRecursively();
    virtual void setDirtyRecursively(bool) = imac 0x289920, m1 0x22ad48;
    virtual void setOpacity(unsigned char) = imac 0x28a0d0, m1 0x22b4c0;
    virtual void updateDisplayedOpacity(unsigned char) = m1 0x22b850;
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x28a330;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = m1 0x22b804;
    virtual void setOpacityModifyRGB(bool) = m1 0x22b7bc;
    virtual bool isOpacityModifyRGB() = m1 0x22b7f4;
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
    CCSpriteBatchNode() = m1 0x13c788;
    virtual ~CCSpriteBatchNode() = m1 0x13c7b8;

    static cocos2d::CCSpriteBatchNode* create(char const* fileImage, unsigned int capacity) = m1 0x13c600;
    static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int) = m1 0x13c410;

    virtual bool init() = m1 0x13c72c;
    virtual void addChild(cocos2d::CCNode*) = m1 0x13cbac;
    virtual void addChild(cocos2d::CCNode*, int);
    virtual void addChild(cocos2d::CCNode*, int, int);
    virtual void removeChild(cocos2d::CCNode*, bool);
    virtual void removeAllChildrenWithCleanup(bool) = m1 0x13ce8c;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x176700;
    virtual void sortAllChildren();
    virtual void draw() = imac 0x1772b0, m1 0x13d4b8;
    virtual void visit() = imac 0x176400;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x177b20, m1 0x13dd24;
    virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x177b40, m1 0x13dd34;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x177b60, m1 0x13dd44;
    virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x13dd64;

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

    static cocos2d::CCSpriteFrame* create(char const* filename, cocos2d::CCRect const& rect) = ios inline {
    	CCRect rectInPixels = CC_RECT_POINTS_TO_PIXELS( rect );
    	return create(filename, rect, false, CCPointZero, rectInPixels.size);
    }
    static cocos2d::CCSpriteFrame* create(char const* filename, cocos2d::CCRect const& rect, bool rotated, cocos2d::CCPoint const& offset, cocos2d::CCSize const& size) = ios inline {
        auto ret = new CCSpriteFrame();
        ret->initWithTextureFilename(filename, rect, rotated, offset, size);
        ret->autorelease();
        return ret;
    }
    static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D* pobTexture, cocos2d::CCRect const& rect) = ios inline {
        CCSpriteFrame *pSpriteFrame = new CCSpriteFrame();;
        pSpriteFrame->initWithTexture(pobTexture, rect);
        pSpriteFrame->autorelease();
    
        return pSpriteFrame;
    }
    static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);

    // bool isRotated();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x357cc0, m1 0x2e3a80;

    cocos2d::CCPoint const& getOffset() = imac 0x358020, m1 0x2e3d18;
    cocos2d::CCPoint const& getOffsetInPixels() = imac 0x3580c0, m1 0x2e3d8c;
    // cocos2d::CCSize const& getOriginalSize();
    // cocos2d::CCSize const& getOriginalSizeInPixels();
    // cocos2d::CCRect const& getRect();
    // cocos2d::CCRect const& getRectInPixels();
    cocos2d::CCTexture2D* getTexture() = imac 0x358160;
    bool initWithTexture(cocos2d::CCTexture2D* pobTexture, cocos2d::CCRect const& rect) = ios inline {
        CCRect rectInPixels = CC_RECT_POINTS_TO_PIXELS(rect);
        return initWithTexture(pobTexture, rectInPixels, false, CCPointZero, rectInPixels.size);
    }
    bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x357640, m1 0x2e3554;
    bool initWithTextureFilename(char const* filename, cocos2d::CCRect const& rect) = ios inline {
        CCRect rectInPixels = CC_RECT_POINTS_TO_PIXELS( rect );
    	return initWithTextureFilename(filename, rectInPixels, false, CCPointZero, rectInPixels.size);
    }
    bool initWithTextureFilename(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x357970, m1 0x2e37c0;
    void setOffset(cocos2d::CCPoint const& p0) = imac 0x358030, m1 0x2e3d20, ios inline {
        m_obOffset = p0;
        m_obOffsetInPixels = CC_POINT_POINTS_TO_PIXELS(m_obOffset);
    }
    void setOffsetInPixels(cocos2d::CCPoint const& p0) = imac 0x3580d0, m1 0x2e3d94, ios inline {
        m_obOffsetInPixels = p0;
        m_obOffset = CC_POINT_PIXELS_TO_POINTS(m_obOffsetInPixels);
    }
    // void setOriginalSize(cocos2d::CCSize const&);
    // void setOriginalSizeInPixels(cocos2d::CCSize const&);
    void setRect(cocos2d::CCRect const& p0) = imac 0x357e60, m1 0x2e3bdc, ios inline {
        m_obRect = p0;
        m_obRectInPixels = CC_RECT_POINTS_TO_PIXELS(m_obRect);
    }
    void setRectInPixels(cocos2d::CCRect const& p0) = imac 0x357f40, m1 0x2e3c78, ios inline {
        m_obRectInPixels = p0;
        m_obRect = CC_RECT_PIXELS_TO_POINTS(p0);
    }
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

    void addSpriteFrame(cocos2d::CCSpriteFrame* pobFrame, char const* pszFrameName) = ios inline {
        m_pSpriteFrames->setObject(pobFrame, pszFrameName);
    }
    void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*) = imac 0x31be70, m1 0x2a9fc4;
    void addSpriteFramesWithFile(char const*) = m1 0x2aab08;
    void addSpriteFramesWithFile(char const* plist, char const* textureFilename) = m1 0x2aaa98, ios inline {
        if (auto texture = CCTextureCache::sharedTextureCache()->addImage(textureFilename, false)) {
            this->addSpriteFramesWithFile(plist, texture);
        }
    }
    void addSpriteFramesWithFile(char const* plist, cocos2d::CCTexture2D* texture) = m1 0x2aaa50, ios inline {
        this->addSpriteFramesWithDictionary(CCContentManager::sharedManager()->addDict(plist, false), texture);
    }
    bool init();
    void removeSpriteFrameByName(char const* name) = m1 0x2ab180, ios inline {
        if (!name) return;
        if (auto key = static_cast<CCString*>(m_pSpriteFramesAliases->objectForKey(name))) {
            m_pSpriteFrames->removeObjectForKey(key->getCString());
            m_pSpriteFramesAliases->removeObjectForKey(name);
        }
        else m_pSpriteFrames->removeObjectForKey(name);
        m_pLoadedFileNames->clear();
    }
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

    virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int) = m1 0x3e7030;
}

[[link(win, android)]]
class cocos2d::CCStopGrid : cocos2d::CCActionInstant {
    static cocos2d::CCStopGrid* create() = m1 0x1b68a0;

    virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCString : cocos2d::CCObject {
    static cocos2d::CCString* createWithContentsOfFile(char const*) = m1 0x6b1bac;
    static cocos2d::CCString* createWithData(unsigned char const*, unsigned long) = imac 0x7aae20, m1 0x6b196c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b1728;
    virtual bool isEqual(cocos2d::CCObject const*) = m1 0x3b0cec;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = m1 0x6b1c18;

    bool boolValue() const;
    int compare(char const* p0) const = imac 0x7aabc0, m1 0x6b170c, ios inline {
        return strcmp(this->getCString(), p0);
    }
    double doubleValue() const;
    float floatValue() const;
    // static cocos2d::CCString* createWithFormat(char const*, ...) = ios 0x2680c0, m1 0x6a8cd0;
    char const* getCString() const = imac 0x7aa790, m1 0x6b1324;
    int intValue() const = m1 0x6b15bc;
    unsigned int length() const = imac 0x7aaab0, m1 0x6b15e8;
    unsigned int uintValue() const = ios inline {
        if (this->length()) return 0;
        return atoi(m_sString.c_str());
    }

    gd::string m_sString;
}

[[link(win, android)]]
class cocos2d::CCTargetedAction : cocos2d::CCActionInterval {
    CCTargetedAction() = m1 0x33e68c;
    virtual ~CCTargetedAction() = m1 0x1bf894;

    static cocos2d::CCTargetedAction* create(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*) = m1 0x33e790;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33e9a4;
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
    static cocos2d::CCTextFieldTTF* textFieldWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize) = imac 0x27ba90, m1 0x21dbe0, ios inline {
        auto ret = new CCTextFieldTTF();
        if (ret->initWithPlaceHolder("", dimensions, alignment, fontName, fontSize)) {
            ret->autorelease();
            if (placeholder) ret->setPlaceHolder(placeholder);
        }
        delete ret;
        return nullptr;
    }

    // void setDelegate(cocos2d::CCTextFieldDelegate* var);
    virtual void draw() = imac 0x27c6f0, m1 0x21e86c;
    virtual const cocos2d::ccColor3B& getColorSpaceHolder() = imac 0x27c790, m1 0x21e928;
    virtual void setColorSpaceHolder(const cocos2d::ccColor3B& color) = imac 0x27c7a0, m1 0x21e930;
    virtual const char* getPlaceHolder();
    virtual void setPlaceHolder(const char* text) = m1 0x21ebe8;
    virtual void setSecureTextEntry(bool value);
    virtual bool isSecureTextEntry() = imac 0x27cc70, m1 0x21ed98;
    virtual void setString(const char* text) = m1 0x21e944;
    virtual const char* getString() = imac 0x27ca70, m1 0x21ebb8;
    virtual bool attachWithIME() = m1 0x21dfcc;
    virtual bool detachWithIME();
    virtual bool canAttachWithIME();
    virtual bool canDetachWithIME();
    virtual void insertText(const char* text, int len, cocos2d::enumKeyCodes keyCode);
    virtual void deleteBackward();
    [[since("4.10.1")]]
    virtual void deleteForward() = imac 0x27c2f0, m1 0x21e4d4;
    virtual const char* getContentText() = imac 0x27c6b0, m1 0x21e83c;

    bool initWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize) = ios inline {
        if (placeholder) {
            CC_SAFE_DELETE(m_pPlaceHolder);
            m_pPlaceHolder = new std::string(placeholder);
        }
        return CCLabelTTF::initWithString(m_pPlaceHolder->c_str(), fontName, fontSize);
    }
    bool initWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize) = ios inline {
        if (placeholder) {
            CC_SAFE_DELETE(m_pPlaceHolder);
            m_pPlaceHolder = new std::string(placeholder);
        }
        return CCLabelTTF::initWithString(m_pPlaceHolder->c_str(), fontName, fontSize, dimensions, alignment);
    }
}

[[link(win, android)]]
class cocos2d::CCTexture2D : cocos2d::CCObject {
    CCTexture2D() = imac 0x477a60;
    // CCTexture2D(cocos2d::CCTexture2D const&);
    virtual ~CCTexture2D() = m1 0x3de9e0; //imac 0x465400

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
    virtual cocos2d::CCSize getContentSize() = m1 0x3deadc;
    virtual cocos2d::CCGLProgram* getShaderProgram() = m1 0x3deb5c;
    virtual void setShaderProgram(cocos2d::CCGLProgram*) = m1 0x3deb64;

    unsigned int bitsPerPixelForFormat() = m1 0x3dff68, ios inline {
        return this->bitsPerPixelForFormat(m_ePixelFormat);
    }
    unsigned int bitsPerPixelForFormat(cocos2d::CCTexture2DPixelFormat p0) = m1 0x3deec4, ios inline {
        switch (p0) {
            case kCCTexture2DPixelFormat_RGBA8888:
            case kCCTexture2DPixelFormat_RGB888:
                return 32;
            case kCCTexture2DPixelFormat_RGB565:
            case kCCTexture2DPixelFormat_RGBA4444:
            case kCCTexture2DPixelFormat_RGB5A1:
            case kCCTexture2DPixelFormat_AI88:
                return 16;
            case kCCTexture2DPixelFormat_A8:
            case kCCTexture2DPixelFormat_I8:
                return 8;
            case kCCTexture2DPixelFormat_PVRTC4:
                return 4;
            case kCCTexture2DPixelFormat_PVRTC2:
                return 2;
            default:
                return -1;
        }
    }
    char const* description() = imac 0x478080, m1 0x3deee4;
    void drawAtPoint(cocos2d::CCPoint const&) = imac 0x478b80, m1 0x3df9e8;
    void drawInRect(cocos2d::CCRect const&) = imac 0x478c90, m1 0x3dfb00;
    void generateMipmap() = imac 0x478f40, m1 0x3dfd9c;
    cocos2d::CCSize const& getContentSizeInPixels() = imac 0x477c60, m1 0x3deb34;
    bool hasMipmaps();
    bool hasPremultipliedAlpha();
    bool initPremultipliedATextureWithImage(cocos2d::CCImage*, unsigned int, unsigned int) = imac 0x17e370, m1 0x3defa4;
    bool initWithData(void const*, cocos2d::CCTexture2DPixelFormat, unsigned int, unsigned int, cocos2d::CCSize const&);
    bool initWithETCFile(char const*) = imac 0x478e60, m1 0x3dfcc8;
    bool initWithImage(cocos2d::CCImage*);
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
    virtual cocos2d::CCTexture2D* getTexture() = m1 0x40f594;
    virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x40f59c;
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
    virtual void reuse();
    virtual void calculateVertexPoints() = imac 0x4e4470, m1 0x43f7e0;

    cocos2d::ccQuad3 originalTile(cocos2d::CCPoint const&) = imac 0x4e49f0, m1 0x43fa78;
    void setTile(cocos2d::CCPoint const&, cocos2d::ccQuad3 const&) = imac 0x4e49a0, m1 0x43fa3c;
    cocos2d::ccQuad3 tile(cocos2d::CCPoint const&);
}

[[link(win, android)]]
class cocos2d::CCTiledGrid3DAction : cocos2d::CCGridAction {
    static cocos2d::CCTiledGrid3DAction* create(float, cocos2d::CCSize const&) = imac 0x209f80;

    virtual cocos2d::CCGridBase* getGrid() = m1 0x1b5d34;

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
    virtual void updateAtlasValues() = m1 0x1d6860;

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

    virtual void update(float) = imac 0x3b61f0, m1 0x3b2c50;

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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33d6bc;
    virtual void update(float) = imac 0x3bb5b0, m1 0x33d734;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3bb680, m1 0x33d804;

    bool initWithDuration(float, short, short, short) = imac 0x3bb3e0;
}

[[link(win, android)]]
class cocos2d::CCTintTo : cocos2d::CCActionInterval {
    static cocos2d::CCTintTo* create(float, unsigned char, unsigned char, unsigned char) = imac 0x3bafa0, m1 0x33d1dc;

    // CCTintTo(cocos2d::CCTintTo const&);
    // CCTintTo();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = m1 0x33d418;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33d3ac;

    bool initWithDuration(float p0, unsigned char p1, unsigned char p2, unsigned char p3) = imac 0x3bb070, m1 0x33d288, ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_to.r = p1;
        m_to.g = p2;
        m_to.b = p3;
        return true;
    }
}

[[link(win, android)]]
class cocos2d::CCTMXLayer : cocos2d::CCSpriteBatchNode {
    CCTMXLayer();
    virtual ~CCTMXLayer() = m1 0x1febec;

    static cocos2d::CCTMXLayer* create(cocos2d::CCTMXTilesetInfo*, cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);

    virtual cocos2d::CCTMXTilesetInfo* getTileSet() = m1 0x1feca0;
    virtual void setTileSet(cocos2d::CCTMXTilesetInfo*) = m1 0x1feca8;
    virtual cocos2d::CCDictionary* getProperties() = m1 0x200354;
    virtual void setProperties(cocos2d::CCDictionary*) = m1 0x20035c;
    virtual void addChild(cocos2d::CCNode*, int, int);
    virtual void removeChild(cocos2d::CCNode*, bool);

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

    virtual cocos2d::CCDictionary* getProperties() = m1 0x42b6c0;
    virtual void setProperties(cocos2d::CCDictionary*) = m1 0x42b6c8;
}

[[link(win, android)]]
class cocos2d::CCTMXMapInfo : cocos2d::CCObject, cocos2d::CCSAXDelegator {
    CCTMXMapInfo();
    virtual ~CCTMXMapInfo() = m1 0x42c02c;

    static cocos2d::CCTMXMapInfo* formatWithTMXFile(char const*);
    static cocos2d::CCTMXMapInfo* formatWithXML(char const*, char const*);

    virtual cocos2d::CCArray* getLayers();
    virtual void setLayers(cocos2d::CCArray*);
    virtual cocos2d::CCArray* getTilesets();
    virtual void setTilesets(cocos2d::CCArray*);
    virtual cocos2d::CCArray* getObjectGroups() = m1 0x42c190;
    virtual void setObjectGroups(cocos2d::CCArray*) = m1 0x42c198;
    virtual cocos2d::CCDictionary* getProperties() = m1 0x42c1d4;
    virtual void setProperties(cocos2d::CCDictionary*) = m1 0x42c1dc;
    virtual void startElement(void*, char const*, char const**) = imac 0x4cd580;
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

    virtual cocos2d::CCDictionary* getProperties() = m1 0x400938;
    virtual void setProperties(cocos2d::CCDictionary*) = m1 0x400940;
    virtual cocos2d::CCArray* getObjects() = m1 0x40097c;
    virtual void setObjects(cocos2d::CCArray*) = m1 0x400984;

    cocos2d::CCDictionary* objectNamed(char const*);
    cocos2d::CCString* propertyNamed(char const*);
}

[[link(win, android)]]
class cocos2d::CCTMXTiledMap : cocos2d::CCNode {
    CCTMXTiledMap();
    virtual ~CCTMXTiledMap() = m1 0x46e998;

    static cocos2d::CCTMXTiledMap* create(char const*);
    static cocos2d::CCTMXTiledMap* createWithXML(char const*, char const*);

    virtual cocos2d::CCArray* getObjectGroups() = m1 0x46ea98;
    virtual void setObjectGroups(cocos2d::CCArray*) = m1 0x46eaa0;
    virtual cocos2d::CCDictionary* getProperties() = m1 0x46eadc;
    virtual void setProperties(cocos2d::CCDictionary*) = m1 0x46eae4;

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
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
}

[[link(win, android)]]
class cocos2d::CCTouch : cocos2d::CCObject {
    cocos2d::CCPoint getDelta() const = m1 0x4ce04, ios inline {
    	return getLocation() - getPreviousLocation();
    }
    cocos2d::CCPoint getLocation() const = m1 0x4cd80;
    cocos2d::CCPoint getLocationInView() const = imac 0x595f0, m1 0x4cd5c;
    cocos2d::CCPoint getPreviousLocation() const = m1 0x4cdac, ios inline {
    	return CCDirector::sharedDirector()->convertToGL(m_prevPoint);
    }
    cocos2d::CCPoint getPreviousLocationInView() const;
    cocos2d::CCPoint getStartLocation() const = m1 0x4cdd8, ios inline {
    	return CCDirector::sharedDirector()->convertToGL(m_startPoint);
    }
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

    virtual void setPreviousPriority(int) {}
    virtual int getPreviousPriority() { return 0; }
}

[[link(win, android)]]
class cocos2d::CCTouchDispatcher : cocos2d::CCObject, cocos2d::EGLTouchDelegate {
    // CCTouchDispatcher(cocos2d::CCTouchDispatcher const&);
    // CCTouchDispatcher();
    virtual ~CCTouchDispatcher();

    virtual void touchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void touchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void touchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void touchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*);

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
    void rearrangeHandlers(cocos2d::CCArray* handlers) = imac 0x4cbdc0, m1 0x42abb8, ios inline {
        std::sort(handlers->data->arr, handlers->data->arr + handlers->data->num, [](const CCObject* p1, const CCObject* p2) {
            return ((CCTouchHandler*)p1)->getPriority() < ((CCTouchHandler*)p2)->getPriority();
        });
    }
    void registerForcePrio(cocos2d::CCObject*, int) = imac 0x4cb600, m1 0x42a338;
    void removeAllDelegates();
    void removeDelegate(cocos2d::CCTouchDelegate*);
    // int getTargetPrio() const;
    void setDispatchEvents(bool);
    void setPriority(int p1, cocos2d::CCTouchDelegate* p2) = imac 0x4cbe40, m1 0x42ac40, ios inline {
    	auto* handler = this->findHandler(p2);
    	auto priority = handler->getPriority();

    	if (p1 != priority) {
    		handler->setPriority(p1);
    		this->rearrangeHandlers(m_pTargetedHandlers);
    		this->rearrangeHandlers(m_pStandardHandlers);
    	}
    }
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
    virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int) = m1 0x3e6eb8;

    cocos2d::CCTouchDelegate* getDelegate() = imac 0x480bc0, m1 0x3e6d7c;
    int getEnabledSelectors();
    int getPriority() = imac 0x480c40, m1 0x3e6df0, ios inline {
    	return m_nPriority;
    }
    void setDelegate(cocos2d::CCTouchDelegate*);
    void setEnalbedSelectors(int);
    void setPriority(int prio) = imac 0x480c50, m1 0x3e6df8, ios inline {
    	m_nPriority = prio;
    }

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

    virtual void onEnter() = m1 0xbf708;
    virtual void onExit() = imac 0xd9180, m1 0xbfa40;
    virtual void draw() = imac 0xd8e30, m1 0xbf704;
}

[[link(win, android)]]
class cocos2d::CCTransitionFade : cocos2d::CCTransitionScene {
    // CCTransitionFade(cocos2d::CCTransitionFade const&);
    CCTransitionFade();
    virtual ~CCTransitionFade();

    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*) = m1 0xbf2c8;
    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::ccColor3B const&) = imac 0xd8950, m1 0xbf22c;

    virtual void onEnter() = m1 0xbf3b4;
    virtual void onExit() = m1 0xbf4f0;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xd8ac0, m1 0xbf38c;
    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::ccColor3B const&) = m1 0xbf348;
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

    static cocos2d::CCTransitionFadeDown* create(float, cocos2d::CCScene*) = m1 0xc09d0;

    virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = m1 0xc0a78;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeTR : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionFadeTR(cocos2d::CCTransitionFadeTR const&);
    CCTransitionFadeTR();
    virtual ~CCTransitionFadeTR();

    static cocos2d::CCTransitionFadeTR* create(float, cocos2d::CCScene*) = m1 0xc0364;

    virtual void onEnter() = m1 0xc0414;
    virtual void sceneOrder() = m1 0xc040c;
    virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = m1 0xc0510;
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

    virtual void onEnter() = m1 0xbe2d0;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipX : cocos2d::CCTransitionSceneOriented {
    // CCTransitionFlipX(cocos2d::CCTransitionFlipX const&);
    CCTransitionFlipX();
    virtual ~CCTransitionFlipX();

    static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = m1 0xbdbb4;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipY : cocos2d::CCTransitionSceneOriented {
    // CCTransitionFlipY(cocos2d::CCTransitionFlipY const&);
    CCTransitionFlipY();
    virtual ~CCTransitionFlipY();

    static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = m1 0xbdf44;
}

[[link(win, android)]]
class cocos2d::CCTransitionJumpZoom : cocos2d::CCTransitionScene {
    // CCTransitionJumpZoom(cocos2d::CCTransitionJumpZoom const&);
    CCTransitionJumpZoom();
    virtual ~CCTransitionJumpZoom();

    static cocos2d::CCTransitionJumpZoom* create(float, cocos2d::CCScene*) = m1 0xbc008;

    virtual void onEnter() = m1 0xbc0a8;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInB : cocos2d::CCTransitionMoveInL {
    // CCTransitionMoveInB(cocos2d::CCTransitionMoveInB const&);
    CCTransitionMoveInB();
    virtual ~CCTransitionMoveInB();

    static cocos2d::CCTransitionMoveInB* create(float, cocos2d::CCScene*) = m1 0xbcb08;

    virtual void initScenes() = m1 0xbcbb0;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInL : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionMoveInL(cocos2d::CCTransitionMoveInL const&);
    CCTransitionMoveInL();
    virtual ~CCTransitionMoveInL();

    static cocos2d::CCTransitionMoveInL* create(float, cocos2d::CCScene*) = m1 0xbc39c;

    virtual void onEnter() = m1 0xbc444;
    virtual void initScenes() = m1 0xbc570;
    virtual cocos2d::CCActionInterval* action() = imac 0xd5850, m1 0xbc520;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xbc560;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInR : cocos2d::CCTransitionMoveInL {
    // CCTransitionMoveInR(cocos2d::CCTransitionMoveInR const&);
    CCTransitionMoveInR();
    virtual ~CCTransitionMoveInR();

    static cocos2d::CCTransitionMoveInR* create(float, cocos2d::CCScene*) = m1 0xbc6e0;

    virtual void initScenes() = m1 0xbc788;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInT : cocos2d::CCTransitionMoveInL {
    // CCTransitionMoveInT(cocos2d::CCTransitionMoveInT const&);
    CCTransitionMoveInT();
    virtual ~CCTransitionMoveInT();

    static cocos2d::CCTransitionMoveInT* create(float, cocos2d::CCScene*) = m1 0xbc8f4;

    virtual void initScenes() = m1 0xbc99c;
}

[[link(win, android)]]
class cocos2d::CCTransitionPageTurn : cocos2d::CCTransitionScene {
    CCTransitionPageTurn();
    virtual ~CCTransitionPageTurn();

    static cocos2d::CCTransitionPageTurn* create(float, cocos2d::CCScene*, bool);

    virtual bool initWithDuration(float, cocos2d::CCScene*, bool) = imac 0x3d9460, m1 0x3586f8;
    virtual void onEnter() = m1 0x358720;
    virtual void sceneOrder() = imac 0x3d9480, m1 0x358714;

    cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgress : cocos2d::CCTransitionScene {
    CCTransitionProgress();

    static cocos2d::CCTransitionProgress* create(float, cocos2d::CCScene*);

    virtual void onEnter() = m1 0x22daf0;
    virtual void onExit() = imac 0x28d1b0, m1 0x22dca0;
    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = m1 0x20cb20;
    virtual void setupTransition() = imac 0x28d1f0, m1 0x22dcdc;
    virtual void sceneOrder() = imac 0x28d1e0, m1 0x22dcd4;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressHorizontal : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressHorizontal* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressInOut : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressInOut* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
    virtual void sceneOrder() = imac 0x28d910;
    virtual void setupTransition() = imac 0x28d920;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressOutIn : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressOutIn* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCCW : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressRadialCCW* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCW : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressRadialCW* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressVertical : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressVertical* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCTransitionRotoZoom : cocos2d::CCTransitionScene {
    // CCTransitionRotoZoom(cocos2d::CCTransitionRotoZoom const&);
    CCTransitionRotoZoom();
    virtual ~CCTransitionRotoZoom();

    static cocos2d::CCTransitionRotoZoom* create(float, cocos2d::CCScene*) = m1 0xbbc04;

    virtual void onEnter() = m1 0xbbd68;
}

[[link(win, android)]]
class cocos2d::CCTransitionScene : cocos2d::CCScene {
    // CCTransitionScene(cocos2d::CCTransitionScene const&);
    CCTransitionScene();
    virtual ~CCTransitionScene();

    static cocos2d::CCTransitionScene* create(float, cocos2d::CCScene*);

    virtual void onEnter() = m1 0xbb91c;
    virtual void onExit();
    virtual void cleanup();
    virtual void draw();
    virtual bool initWithDuration(float, cocos2d::CCScene*);
    virtual void sceneOrder() = m1 0xbb6e4;

    void finish();
    void hideOutShowIn();
    void setNewScene(float);
}

[[link(win, android)]]
class cocos2d::CCTransitionSceneOriented : cocos2d::CCTransitionScene {
    CCTransitionSceneOriented();
    virtual ~CCTransitionSceneOriented();

    static cocos2d::CCTransitionSceneOriented* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::tOrientation) = m1 0xbbb94;
}

[[link(win, android)]]
class cocos2d::CCTransitionShrinkGrow : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionShrinkGrow(cocos2d::CCTransitionShrinkGrow const&);
    CCTransitionShrinkGrow();
    virtual ~CCTransitionShrinkGrow();

    static cocos2d::CCTransitionShrinkGrow* create(float, cocos2d::CCScene*);

    virtual void onEnter() = m1 0xbd910;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xbda98;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInB : cocos2d::CCTransitionSlideInL {
    // CCTransitionSlideInB(cocos2d::CCTransitionSlideInB const&);
    CCTransitionSlideInB();
    virtual ~CCTransitionSlideInB();

    static cocos2d::CCTransitionSlideInB* create(float, cocos2d::CCScene*) = m1 0xbd5dc;

    virtual void sceneOrder() = m1 0xbd684;
    virtual void initScenes() = m1 0xbd690;
    virtual cocos2d::CCActionInterval* action() = m1 0xbd6f4;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInL : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionSlideInL(cocos2d::CCTransitionSlideInL const&);
    CCTransitionSlideInL();
    virtual ~CCTransitionSlideInL();

    static cocos2d::CCTransitionSlideInL* create(float, cocos2d::CCScene*);

    virtual void onEnter() = m1 0xbcd20;
    virtual void sceneOrder() = m1 0xbce28;
    virtual void initScenes() = m1 0xbce30;
    virtual cocos2d::CCActionInterval* action() = m1 0xbce94;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xbcef4;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInR : cocos2d::CCTransitionSlideInL {
    // CCTransitionSlideInR(cocos2d::CCTransitionSlideInR const&);
    CCTransitionSlideInR();
    virtual ~CCTransitionSlideInR();

    static cocos2d::CCTransitionSlideInR* create(float, cocos2d::CCScene*) = m1 0xbd0c8;

    virtual void sceneOrder() = m1 0xbd170;
    virtual void initScenes() = m1 0xbd17c;
    virtual cocos2d::CCActionInterval* action() = m1 0xbd1dc;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInT : cocos2d::CCTransitionSlideInL {
    // CCTransitionSlideInT(cocos2d::CCTransitionSlideInT const&);
    CCTransitionSlideInT();
    virtual ~CCTransitionSlideInT();

    static cocos2d::CCTransitionSlideInT* create(float, cocos2d::CCScene*) = m1 0xbd354;

    virtual void sceneOrder() = m1 0xbd3fc;
    virtual void initScenes() = m1 0xbd404;
    virtual cocos2d::CCActionInterval* action() = m1 0xbd464;
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitCols : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionSplitCols(cocos2d::CCTransitionSplitCols const&);
    CCTransitionSplitCols();
    virtual ~CCTransitionSplitCols();

    static cocos2d::CCTransitionSplitCols* create(float, cocos2d::CCScene*);

    virtual void onEnter() = m1 0xbff40;
    virtual cocos2d::CCActionInterval* action() = m1 0xc0054;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xc0068;
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitRows : cocos2d::CCTransitionSplitCols {
    // CCTransitionSplitRows(cocos2d::CCTransitionSplitRows const&);
    CCTransitionSplitRows();
    virtual ~CCTransitionSplitRows();

    static cocos2d::CCTransitionSplitRows* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCActionInterval* action() = m1 0xc0194;
}

[[link(win, android)]]
class cocos2d::CCTransitionTurnOffTiles : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
    // CCTransitionTurnOffTiles(cocos2d::CCTransitionTurnOffTiles const&);
    CCTransitionTurnOffTiles();
    virtual ~CCTransitionTurnOffTiles();

    static cocos2d::CCTransitionTurnOffTiles* create(float, cocos2d::CCScene*) = m1 0xbfbc4;

    virtual void onEnter() = m1 0xbfc74;
    virtual void sceneOrder() = m1 0xbfc6c;
    virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipAngular : cocos2d::CCTransitionSceneOriented {
    // CCTransitionZoomFlipAngular(cocos2d::CCTransitionZoomFlipAngular const&);
    CCTransitionZoomFlipAngular();
    virtual ~CCTransitionZoomFlipAngular();

    static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = m1 0xbee34;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipX : cocos2d::CCTransitionSceneOriented {
    // CCTransitionZoomFlipX(cocos2d::CCTransitionZoomFlipX const&);
    CCTransitionZoomFlipX();
    virtual ~CCTransitionZoomFlipX();

    static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = m1 0xbe668;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipY : cocos2d::CCTransitionSceneOriented {
    // CCTransitionZoomFlipY(cocos2d::CCTransitionZoomFlipY const&);
    CCTransitionZoomFlipY();
    virtual ~CCTransitionZoomFlipY();

    static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    virtual void onEnter() = m1 0xbea50;
}

[[link(win, android)]]
class cocos2d::CCTurnOffTiles : cocos2d::CCTiledGrid3DAction {
    // CCTurnOffTiles(cocos2d::CCTurnOffTiles const&);
    // CCTurnOffTiles();
    virtual ~CCTurnOffTiles();

    static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&) = imac 0x7b6680, m1 0x33a5f0;
    static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&, unsigned int) = imac 0x7b6770, m1 0x6bc758;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x6bcb28;
    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int) = m1 0x6bc854;

    void shuffle(unsigned int*, unsigned int);
    void turnOffTile(cocos2d::CCPoint const&) = m1 0x6bcafc;
    void turnOnTile(cocos2d::CCPoint const&) = m1 0x6bcabc;
}

[[link(win, android)]]
class cocos2d::CCTwirl : cocos2d::CCGrid3DAction {
    static cocos2d::CCTwirl* create(float, cocos2d::CCSize const&, cocos2d::CCPoint, unsigned int, float) = imac 0x27f290, m1 0x2210e0;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x27f5c0, m1 0x1d6d74;

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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x27f0c0, m1 0x220f4c;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float, bool, bool) = imac 0x27ef00, m1 0x220da8;
}

[[link(win, android)]]
class cocos2d::CCWaves3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCWaves3D* create(float, cocos2d::CCSize const&, unsigned int, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x27cf60, m1 0x21f078;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);
}

[[link(win, android)]]
class cocos2d::CCWavesTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCWavesTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float);

    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float) = m1 0x6bce40;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCZone {
    CCZone(cocos2d::CCObject* object) = win inline, imac 0x10db60, m1 0xe9a54 {
        m_pCopyObject = object;
    }
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

    static cocos2d::extension::CCControl* create() = m1 0x2ddb70, ios inline {
        auto ret = new CCControl();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    virtual bool init();
    virtual void onEnter() = m1 0x2ddf94;
    virtual void onExit() = m1 0x2ddf98;
    virtual void registerWithTouchDispatcher();
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
    virtual void removeTargetWithActionForControlEvents(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, unsigned int) = imac 0x351c50;
    virtual cocos2d::CCPoint getTouchLocation(cocos2d::CCTouch*) = m1 0x2deb50;
    virtual bool isTouchInside(cocos2d::CCTouch*) = m1 0x2deb9c;

    void addHandleOfControlEvent(int p0, cocos2d::extension::CCControlEvent p1) = imac 0x3522f0, m1 0x2decdc, ios inline {
        m_mapHandleOfControlEvent[p1] = p0;
    }
    void addTargetWithActionForControlEvent(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = imac 0x351be0, m1 0x2de630;
    cocos2d::CCArray* dispatchListforControlEvent(cocos2d::extension::CCControlEvent) = imac 0x3516f0;
    int getHandleOfControlEvent(cocos2d::extension::CCControlEvent p0) = ios inline {
        auto it = m_mapHandleOfControlEvent.find(p0);
        return it != m_mapHandleOfControlEvent.end() ? it->second : -1;
    }
    bool hasVisibleParents() = imac 0x352290, m1 0x2dec68, ios inline {
        for (auto parent = this->getParent(); parent != nullptr; parent = parent->getParent()) {
            if (!parent->isVisible()) return false;
        }
        return true;
    }
    void removeHandleOfControlEvent(cocos2d::extension::CCControlEvent p0) = m1 0x2ded9c, ios inline {
        if (auto it = m_mapHandleOfControlEvent.find(p0); it != m_mapHandleOfControlEvent.end()) {
            m_mapHandleOfControlEvent.erase(it);
        }
    }
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

    virtual void needsLayout();
    virtual void setEnabled(bool) = m1 0x2e00a8;
    virtual void setSelected(bool) = m1 0x2e00d4;
    virtual void setHighlighted(bool) = imac 0x353ad0, m1 0x2e0100;
    virtual cocos2d::CCSize getPreferredSize() = imac 0x353c80, m1 0x22b4a0;
    virtual void setPreferredSize(cocos2d::CCSize) = imac 0x353bc0, m1 0x2e021c;
    virtual bool getZoomOnTouchDown() = imac 0x353bb0, m1 0x2e0214;
    virtual void setZoomOnTouchDown(bool) = imac 0x353ba0, m1 0x2e020c;
    virtual cocos2d::CCPoint getLabelAnchorPoint() = imac 0x353cb0, m1 0x2e02e4;
    virtual void setLabelAnchorPoint(cocos2d::CCPoint) = imac 0x353cd0, m1 0x2e02f0;
    virtual unsigned char getOpacity() = imac 0x354ea0, m1 0x2e14ec;
    virtual void setOpacity(unsigned char) = m1 0x2e1440;
    virtual cocos2d::ccColor3B const& getColor() = imac 0x354f80, m1 0x2e15a8;
    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x2e14fc;
    virtual void setMargins(int, int) = imac 0x353a70, m1 0x2e0094;
    virtual bool init() = imac 0x353120, m1 0x2df858;
    virtual bool initWithLabelAndBackgroundSprite(cocos2d::CCNode*, cocos2d::extension::CCScale9Sprite*);
    virtual bool initWithTitleAndFontNameAndFontSize(gd::string, char const*, float) = imac 0x353700, m1 0x2dfdbc;
    virtual bool initWithBackgroundSprite(cocos2d::extension::CCScale9Sprite*) = imac 0x3538e0, m1 0x2dff60;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x354a40, m1 0x2e1064;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x354be0;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x354d20, m1 0x29bc54;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x354fa0, m1 0x2e15b8;
    virtual cocos2d::CCString* getTitleForState(unsigned int);
    virtual void setTitleForState(cocos2d::CCString*, unsigned int);
    virtual cocos2d::ccColor3B const getTitleColorForState(unsigned int) = imac 0x353e10, m1 0x2e0458;
    virtual void setTitleColorForState(cocos2d::ccColor3B, unsigned int) = imac 0x353e70, m1 0x2e04b4;
    virtual cocos2d::CCNode* getTitleLabelForState(unsigned int) = m1 0x2e057c;
    virtual void setTitleLabelForState(cocos2d::CCNode*, unsigned int) = imac 0x353f70, m1 0x2e05bc;
    virtual void setTitleTTFForState(char const*, unsigned int);
    virtual char const* getTitleTTFForState(unsigned int) = m1 0x2e075c;
    virtual void setTitleTTFSizeForState(float, unsigned int) = imac 0x354150, m1 0x2e07c4;
    virtual float getTitleTTFSizeForState(unsigned int) = m1 0x2e0838;
    virtual void setTitleBMFontForState(char const*, unsigned int);
    virtual char const* getTitleBMFontForState(unsigned int) = m1 0x2e0950;
    virtual cocos2d::extension::CCScale9Sprite* getBackgroundSpriteForState(unsigned int);
    virtual void setBackgroundSpriteForState(cocos2d::extension::CCScale9Sprite*, unsigned int);
    virtual void setBackgroundSpriteFrameForState(cocos2d::CCSpriteFrame*, unsigned int) = m1 0x2e0b5c;

    bool doesAdjustBackgroundImage() = imac 0x353ca0, m1 0x2e02dc;
    void setAdjustBackgroundImage(bool) = imac 0x353590, m1 0x2dfcb4;
}

[[link(win, android)]]
class cocos2d::extension::CCControlColourPicker : cocos2d::extension::CCControl {
    CCControlColourPicker() {
        m_colourPicker = nullptr;
        m_huePicker = nullptr;
        m_background = nullptr;
        m_colorTarget = nullptr;
        m_delegate = nullptr;
    }
    virtual ~CCControlColourPicker() {}

    static cocos2d::extension::CCControlColourPicker* colourPicker();

    virtual bool init();
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2e1f54;
    virtual void setColorValue(cocos2d::ccColor3B const&) = imac 0x355990;

    void colourSliderValueChanged(cocos2d::CCObject*, unsigned int) = imac 0x355690, m1 0x2e1bd0;
    cocos2d::ccColor3B const& getColorValue() const {
        return m_rgb;
    }
    void hueSliderValueChanged(cocos2d::CCObject*, unsigned int) = imac 0x355560, m1 0x2e1aec;
    void updateControlPicker() = imac 0x355ae0, m1 0x2e1f0c, ios inline {
        m_huePicker->setHue(m_hsv.h);
        m_colourPicker->updateWithHSV(m_hsv);
    }
    void updateHueAndControlPicker() = imac 0x355770, m1 0x2e1c8c;
}

[[link(win, android)]]
class cocos2d::extension::CCControlHuePicker : cocos2d::extension::CCControl {
    [[since("4.2.1")]]
    CCControlHuePicker();
    [[since("4.2.1")]]
    virtual ~CCControlHuePicker() = m1 0x2e26d0;

    static cocos2d::extension::CCControlHuePicker* create(cocos2d::CCNode*, cocos2d::CCPoint) = imac 0x3567c0, m1 0x2e28c4;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x356ed0, m1 0x2e2f10;
    virtual void setEnabled(bool) = m1 0x2e2c40;
    virtual bool initWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint) = imac 0x181370;
    virtual void setHue(float) = imac 0x356ac0, m1 0x2e2b60;
    virtual void setHuePercentage(float) = imac 0x356af0, m1 0x2e2b7c;
    [[since("4.10.1")]]
    virtual void registerWithTouchDispatcher() = m1 0x2e2b28;

    bool checkSliderPosition(cocos2d::CCPoint) = imac 0x356cd0;
    void updateSliderPosition(cocos2d::CCPoint) = imac 0x356c30, m1 0x2e2c90;
}

[[link(win, android)]]
class cocos2d::extension::CCControlPotentiometer : cocos2d::extension::CCControl {
    CCControlPotentiometer();
    virtual ~CCControlPotentiometer() = m1 0x2e5940;

    static cocos2d::extension::CCControlPotentiometer* create(char const*, char const*, char const*) = imac 0x35a530, m1 0x2e5b80;

    virtual void setEnabled(bool) = m1 0x2e5ea4;
    virtual bool isTouchInside(cocos2d::CCTouch*) = imac 0x35aa40, m1 0x34f328;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x35ad30, m1 0x2ac54;
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

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3688c0, m1 0x2f2c78;
    virtual void setEnabled(bool) = m1 0x2f2778;
    virtual bool initWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint);
    virtual void updateWithHSV(cocos2d::extension::HSV) = imac 0x368330, m1 0x2f27c8;
    virtual void updateDraggerWithHSV(cocos2d::extension::HSV) = imac 0x3683d0, m1 0x2f283c;
    [[since("4.10.1")]]
    virtual void registerWithTouchDispatcher() = m1 0x2f2b3c;

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
    virtual void setEnabled(bool) = m1 0x324d34;
    virtual bool isTouchInside(cocos2d::CCTouch*) = m1 0x324e38;
    virtual bool initWithSprites(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*);
    virtual void needsLayout();
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x39fe10, m1 0x324f88;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x2693a0, m1 0x46af8;
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
    virtual void setValueWithSendingEvent(double, bool) = m1 0x328774;
    virtual bool isContinuous() = m1 0x32876c;
    virtual void update(float) = imac 0x3a3f70, m1 0x3288c4;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
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
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x32cc68;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);

    bool initWithMaskSprite(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = imac 0x3a8210, m1 0x32c624;
    bool initWithMaskSprite(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCLabelTTF*, cocos2d::CCLabelTTF*);
    cocos2d::CCPoint locationFromTouch(cocos2d::CCTouch*) = m1 0x32cb50;
    void setOn(bool) = imac 0x3a8630, m1 0x32c9fc;
    void setOn(bool, bool) = imac 0x3a86a0, m1 0x32ca6c;
}

[[link(win, android)]]
class cocos2d::extension::CCControlUtils {
    static cocos2d::CCSprite* addSpriteToTargetWithPosAndAnchor(char const*, cocos2d::CCNode*, cocos2d::CCPoint, cocos2d::CCPoint) = imac 0x3a9270, m1 0x32d41c;
    static cocos2d::CCRect CCRectUnion(cocos2d::CCRect const& p0, cocos2d::CCRect const& p1) = m1 0x32d65c, ios inline {
        CCRect result;
        auto x1 = std::min(p0.getMinX(), p1.getMinX());
        auto x2 = std::max(p0.getMaxX(), p1.getMaxX());
        auto y1 = std::min(p0.getMinY(), p1.getMinY());
        auto y2 = std::max(p0.getMaxY(), p1.getMaxY());
        result.origin.x = x1;
        result.origin.y = x2;
        result.size.width = x2 - x1;
        result.size.height = y2 - y1;
        return result;
    }
    static cocos2d::extension::HSV HSVfromRGB(cocos2d::extension::RGBA) = imac 0x3a92d0, m1 0x32d494;
    static cocos2d::extension::RGBA RGBfromHSV(cocos2d::extension::HSV) = imac 0x3a93c0, m1 0x32d540;
}

[[link(win, android)]]
class cocos2d::extension::CCEditBox : cocos2d::extension::CCControlButton, cocos2d::CCIMEDelegate {
    CCEditBox() = m1 0x40ce34;
    virtual ~CCEditBox() = imac 0x4a9cb0, m1 0x40cefc;

    static cocos2d::extension::CCEditBox* create(cocos2d::CCSize const&, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*) = imac 0x4a9f40, m1 0x40d0b8;

    virtual void setPosition(cocos2d::CCPoint const&) = m1 0x40d6ec;
    virtual void setVisible(bool) = m1 0x40d730;
    virtual void setContentSize(cocos2d::CCSize const&) = m1 0x40d774;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = m1 0x40d7b8;
    virtual void visit() = m1 0x40d7fc;
    virtual void onEnter();
    virtual void onExit();
    virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4aa7d0;
    virtual void keyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&) = imac 0x4aa8e0, m1 0x377dc;
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

    static void destroyInstance() = ios inline {
        auto instance = *reinterpret_cast<CCHttpClient**>(geode::base::get() + 0x8601c0);
        CCDirector::sharedDirector()->getScheduler()->unscheduleSelector(schedule_selector(CCHttpClient::dispatchResponseCallbacks), instance);
        instance->release();
    }
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
    CCInvocation(cocos2d::CCObject* p0, cocos2d::extension::SEL_CCControlHandler p1, cocos2d::extension::CCControlEvent p2) = win inline, imac 0x3d78b0, m1 0x356e64, ios inline {
        m_action = p1;
        m_target = p0;
        m_controlEvent = p2;
    }

    static cocos2d::extension::CCInvocation* create(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = imac 0x3d77e0, m1 0x356d90;

    void invoke(cocos2d::CCObject*) = imac 0x3d7900, m1 0x356eb4;
}

[[link(win, android)]]
class cocos2d::extension::CCScale9Sprite : cocos2d::CCNodeRGBA {
    CCScale9Sprite() = m1 0x36c6f8;
    virtual ~CCScale9Sprite() = m1 0x36c7ac;

    static cocos2d::extension::CCScale9Sprite* create() = m1 0x36e66c, ios inline {
        auto ret = new CCScale9Sprite();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* create(char const* pszname) = m1 0x36e110, ios inline {
    	CCScale9Sprite* ret = new CCScale9Sprite;
    	if (ret->initWithFile(pszname)) {
    		ret->autorelease();
    		return ret;
    	}

    	delete ret;
    	return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect) = m1 0x36deec;
    static cocos2d::extension::CCScale9Sprite* create(cocos2d::CCRect capInsets, char const* filename) = imac 0x3f5190, m1 0x36e00c, ios inline {
        CCScale9Sprite* ret = new CCScale9Sprite;
        if (ret->initWithFile(capInsets, filename)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* create(char const* filename, cocos2d::CCRect rect, cocos2d::CCRect capInsets) = imac 0x3f4fa0, m1 0x36ddc4, ios inline {
        CCScale9Sprite* ret = new CCScale9Sprite;
        if (ret->initWithFile(filename, rect, capInsets)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrame(cocos2d::CCSpriteFrame* p0) = m1 0x36e320, ios inline {
        auto ret = new CCScale9Sprite();
        if (ret->initWithSpriteFrame(p0)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrame(cocos2d::CCSpriteFrame* p0, cocos2d::CCRect p1) = ios inline {
        auto ret = new CCScale9Sprite();
        if (ret->initWithSpriteFrame(p0, p1)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const* spriteFrameName) = m1 0x36e51c, ios inline {
    	CCScale9Sprite* ret = new CCScale9Sprite;
    	if (ret->initWithSpriteFrameName(spriteFrameName)) {
    		ret->autorelease();
    		return ret;
    	}

    	delete ret;
    	return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const* spriteFrameName, cocos2d::CCRect capInsets) = ios inline {
    	CCScale9Sprite* ret = new CCScale9Sprite;
    	if (ret->initWithSpriteFrameName(spriteFrameName, capInsets)) {
    		ret->autorelease();
    		return ret;
    	}

    	delete ret;
    	return nullptr;
    }

    virtual bool init() = imac 0x3f38f0, m1 0x36c874;
    virtual void setContentSize(const cocos2d::CCSize& size) = m1 0x36d874;
    virtual void visit();
    virtual unsigned char getOpacity() = imac 0x3f60b0, m1 0x36ef1c;
    virtual void setOpacity(unsigned char);
    virtual void updateDisplayedOpacity(unsigned char) = m1 0x36ea44;
    virtual const cocos2d::ccColor3B& getColor() = imac 0x3f5f10;
    virtual void setColor(const cocos2d::ccColor3B& color);
    virtual void updateDisplayedColor(const cocos2d::ccColor3B& parentColor) = m1 0x36eab0;
    virtual void setOpacityModifyRGB(bool bValue) = imac 0x3f59b0, m1 0x36e8d4;
    virtual bool isOpacityModifyRGB() = imac 0x3f5b10, m1 0x36ea34;
    virtual cocos2d::CCSize getPreferredSize() = imac 0x3f57b0;
    virtual void setPreferredSize(cocos2d::CCSize) = imac 0x3f5780, m1 0x36e6ec;
    virtual cocos2d::CCRect getCapInsets() = imac 0x3f5870;
    virtual void setCapInsets(cocos2d::CCRect);
    virtual float getInsetLeft() = imac 0x3f5ca0, m1 0x36ebb0;
    virtual void setInsetLeft(float) = imac 0x3f5ce0;
    virtual float getInsetTop() = imac 0x3f5cb0, m1 0x36ebb8;
    virtual void setInsetTop(float) = imac 0x3f5d00;
    virtual float getInsetRight() = imac 0x3f5cc0, m1 0x36ebc0;
    virtual void setInsetRight(float) = imac 0x3f5d20;
    virtual float getInsetBottom() = imac 0x3f5cd0, m1 0x36ebc8;
    virtual void setInsetBottom(float) = imac 0x3f5d40;
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = imac 0x3f39b0;
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, cocos2d::CCRect) = imac 0x3f3950, m1 0x36c8d4;
    virtual bool initWithFile(const char*, cocos2d::CCRect, cocos2d::CCRect) = imac 0x3f4f30, m1 0x36dd4c;
    virtual bool initWithFile(const char*, cocos2d::CCRect) = m1 0x36de8c;
    virtual bool initWithFile(cocos2d::CCRect, const char*) = imac 0x3f5130, m1 0x36dfa0;
    virtual bool initWithFile(const char*) = m1 0x36e0c0;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = m1 0x36e198;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x36e2d0;
    virtual bool initWithSpriteFrameName(const char*, cocos2d::CCRect) = m1 0x1329e8;
    virtual bool initWithSpriteFrameName(const char*) = m1 0x36e4cc;
    virtual bool updateWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = imac 0x3f3a50, m1 0x36c9e4;
    virtual void setSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x2c4cd0, m1 0x36eb1c;

    cocos2d::extension::CCScale9Sprite* resizableSpriteWithCapInsets(cocos2d::CCRect p0) = imac 0x3f5670, m1 0x36e5a4, ios inline {
        auto ret = new CCScale9Sprite();
        if (ret->initWithBatchNode(_scale9Image, m_spriteRect, p0)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
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

    virtual bool init() = m1 0x36fe6c;
    virtual void registerWithTouchDispatcher();
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3f86b0, m1 0x371358;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3f8930;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3f8d00, m1 0x3718e0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x3f8dc0, m1 0x371990;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x3f7f80, m1 0x370c48;
    virtual cocos2d::CCSize const& getContentSize() const = imac 0x3f7f60, m1 0x370c38;
    virtual void visit() = imac 0x3f8540, m1 0x3711b8;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x3f8150, m1 0x370db4;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x3f81e0, m1 0x370e70;
    virtual void addChild(cocos2d::CCNode*) = imac 0x3f8220, m1 0x370ec4;
    virtual void setTouchEnabled(bool) = m1 0x3700d4;

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

    virtual void scrollViewDidScroll(cocos2d::extension::CCScrollView*);
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x42d5a0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x42d4a0, m1 0x39fef4;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x3a01f4;

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
    static gd::string encryptDecryptWKey(gd::string const& p0, gd::string p1) {
		std::string ret;
		ret.resize(p0.size());
		for (int i = 0; i < p0.size(); i++) {
			ret[i] = p0[i] ^ p1[i % p1.size()];
		}
		return ret;
	}
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
    gd::vector<gd::string> getAllKeys() = imac 0x2d0660;
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
    bool loadRootSubDictFromCompressedFile(char const*) = imac 0x214850, m1 0x520768;
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
    void setSubDictForKey(char const* p0) = m1 0x1439a0, ios inline {
        this->setSubDictForKey(p0, false, false);
    }
    void setSubDictForKey(char const*, bool, bool) = m1 0x38b8c;
    void setVec2ArrayForKey(char const*, gd::vector<cocos2d::CCPoint> const&);
    void setVec2ArrayForKey(char const*, gd::vector<cocos2d::CCPoint> const&, bool);
    void setVec2ForKey(char const*, cocos2d::CCPoint const&);
    void setVec2ForKey(char const*, cocos2d::CCPoint const&, bool);
    void split(gd::string const&, char const*, gd::vector<gd::string>&);
    bool splitWithForm(gd::string const&, gd::vector<gd::string>&);
    void stepBackToRootSubDict();
    bool stepIntoSubDictWithKey(char const*) = imac 0x17c9e0;
    void stepOutOfSubDict() = imac 0x17cbf0, m1 0x1424c8, ios inline {
        if (dictTree.size() > 1) dictTree.pop_back();
    }
    bool vec2FromString(gd::string const&, cocos2d::CCPoint&);
}

[[link(win, android)]]
class ObjectDecoder : cocos2d::CCNode {
    // virtual ~ObjectDecoder();

    static ObjectDecoder* sharedDecoder() = m1 0x69a558;

    virtual bool init() = m1 0x69a5cc;

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
    xml_node() {
    	_root = nullptr;
    }
}

