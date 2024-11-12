[[link(win, android)]]
class cocos2d::CCEGLViewProtocol {
    CCEGLViewProtocol();
    virtual ~CCEGLViewProtocol();
    auto getViewPortRect() const;
    auto getScaleX() const;
    auto getScaleY() const;

    virtual cocos2d::CCSize const& getFrameSize() const;
    virtual void setFrameSize(float, float) = m1 0x459d68;
    virtual cocos2d::CCSize getVisibleSize() const = imac 0x4f9cc0, m1 0x459dac;
    virtual cocos2d::CCPoint getVisibleOrigin() const = imac 0x4f9d10, m1 0x459ddc;
    virtual void setDesignResolutionSize(float, float, ResolutionPolicy) = imac 0x4f9b20, m1 0x459c40;
    virtual cocos2d::CCSize const& getDesignResolutionSize() const;
    virtual void setTouchDelegate(cocos2d::EGLTouchDelegate*);
    virtual void setViewPortInPoints(float, float, float, float);
    virtual void setScissorInPoints(float, float, float, float);
    virtual bool isScissorEnabled() = m1 0x459e88;
    virtual cocos2d::CCRect getScissorRect() = imac 0x4f9e30, m1 0x459ea8;
    virtual void setViewName(char const*) = imac 0x4f9ed0, m1 0x459f38;
    virtual void pollInputEvents();
}

[[link(win, android)]]
class cocos2d::CCEaseIn {
    static cocos2d::CCEaseIn* create(cocos2d::CCActionInterval*, float) = m1 0x45e024;

    // CCEaseIn(cocos2d::CCEaseIn const&);
    // CCEaseIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45e3dc;
    virtual void update(float) = imac 0x4feae0, m1 0x45e4d4;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseOut {
    static cocos2d::CCEaseOut* create(cocos2d::CCActionInterval*, float) = m1 0x45e320;

    // CCEaseOut(cocos2d::CCEaseOut const&);
    // CCEaseOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45e5f8;
    virtual void update(float) = imac 0x4fed10, m1 0x45e6f0;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseInOut {
    static cocos2d::CCEaseInOut* create(cocos2d::CCActionInterval*, float) = m1 0x45e53c;

    // CCEaseInOut(cocos2d::CCEaseInOut const&);
    // CCEaseInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45e81c;
    virtual void update(float) = imac 0x4fef40, m1 0x45e914;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4fefb0;
}

[[link(win, android)]]
class cocos2d::CCEaseBackIn {
    static cocos2d::CCEaseBackIn* create(cocos2d::CCActionInterval*) = m1 0x46082c;

    // CCEaseBackIn(cocos2d::CCEaseBackIn const&);
    // CCEaseBackIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x460cac;
    virtual void update(float) = imac 0x5013e0, m1 0x460d94;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBackOut {
    static cocos2d::CCEaseBackOut* create(cocos2d::CCActionInterval*) = m1 0x460c04;

    // CCEaseBackOut(cocos2d::CCEaseBackOut const&);
    // CCEaseBackOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x460e90;
    virtual void update(float) = imac 0x5015d0, m1 0x460f78;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBounceOut {
    static cocos2d::CCEaseBounceOut* create(cocos2d::CCActionInterval*);

    // CCEaseBounceOut(cocos2d::CCEaseBounceOut const&);
    // CCEaseBounceOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x500df0, m1 0x460704;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x500eb0;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticIn {
    static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval*);
    static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval*, float) = m1 0x45f5f0;

    // CCEaseElasticIn(cocos2d::CCEaseElasticIn const&);
    // CCEaseElasticIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x500060, m1 0x45f9c8;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x500100;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticOut {
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*) = m1 0x45f8d0;
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*, float) = m1 0x45f814;

    // CCEaseElasticOut(cocos2d::CCEaseElasticOut const&);
    // CCEaseElasticOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45fb54;
    virtual void update(float) = imac 0x500320, m1 0x45fc4c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5003c0;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialIn {
    static cocos2d::CCEaseExponentialIn* create(cocos2d::CCActionInterval*);

    // CCEaseExponentialIn(cocos2d::CCEaseExponentialIn const&);
    // CCEaseExponentialIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45ea58;
    virtual void update(float) = imac 0x4ff180, m1 0x45eb40;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialInOut {
    static cocos2d::CCEaseExponentialInOut* create(cocos2d::CCActionInterval*);

    // CCEaseExponentialInOut(cocos2d::CCEaseExponentialInOut const&);
    // CCEaseExponentialInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x4ff5a0, m1 0x45ef78;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4ff610;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialOut {
    static cocos2d::CCEaseExponentialOut* create(cocos2d::CCActionInterval*) = m1 0x45e9b0;

    // CCEaseExponentialOut(cocos2d::CCEaseExponentialOut const&);
    // CCEaseExponentialOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45ec7c;
    virtual void update(float) = imac 0x4ff390, m1 0x45ed64;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4ff3e0;
}

[[link(win, android)]]
class cocos2d::CCEaseSineIn {
    static cocos2d::CCEaseSineIn* create(cocos2d::CCActionInterval*);

    // CCEaseSineIn(cocos2d::CCEaseSineIn const&);
    // CCEaseSineIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = m1 0x45f194;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseSineOut {
    static cocos2d::CCEaseSineOut* create(cocos2d::CCActionInterval*);

    // CCEaseSineOut(cocos2d::CCEaseSineOut const&);
    // CCEaseSineOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = m1 0x45f388;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseSineInOut {
    static cocos2d::CCEaseSineInOut* create(cocos2d::CCActionInterval*);

    // CCEaseSineInOut(cocos2d::CCEaseSineInOut const&);
    // CCEaseSineInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45f48c;
    virtual void update(float) = m1 0x45f574;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4ffc00;
}

[[link(win, android)]]
class cocos2d::CCMotionStreak {
    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::_ccColor3B const&, cocos2d::CCTexture2D*) = imac 0x55f3e0;
    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::_ccColor3B const&, char const*) = imac 0x55f3e0;

    bool initWithFade(float, float, float, cocos2d::_ccColor3B const&, cocos2d::CCTexture2D*) = imac 0x55f530, m1 0x4b5ffc;
    bool initWithFade(float, float, float, cocos2d::_ccColor3B const&, char const*) = imac 0x55f530, m1 0x4b5ffc;

    bool getDontOpacityFade() const;
    float getM_fMaxSeg() const {
    	return m_fMaxSeg;
    }

    void setDontOpacityFade(bool);
    void setFastMode(bool);
    void setM_fMaxSeg(float maxSeg) {
    	m_fMaxSeg = maxSeg;
    }
    void setStartingPositionInitialized(bool);
    void setStroke(float);

    // CCMotionStreak(cocos2d::CCMotionStreak const&);
    	CCMotionStreak() = imac inline, m1 inline {
    	m_bFastMode = false;
    	m_bStartingPositionInitialized = false;
    	m_pTexture = nullptr;
    	m_fStroke = 0.0f;
    	m_fFadeDelta = 0.0f;
    	m_fMinSeg = 0.0f;
    	m_uMaxPoints = 0;
    	m_uNuPoints = 0;
    	m_uPreviousNuPoints = 0;
    	m_pPointVertexes = nullptr;
    	m_pPointState = nullptr;
    	m_pColorPointer = nullptr;
    	m_pTexCoords = nullptr;

    	m_bRepeatMode = false;
    	m_fRepeatSpeed = 1.0f;
    	m_fRepeatTime = 0.0f;
    	m_bDontOpacityFade = false;
    	m_tPositionR = cocos2d::CCPointZero;

    	m_tBlendFunc.src = GL_SRC_ALPHA;
    	m_tBlendFunc.dst = GL_ONE_MINUS_SRC_ALPHA;
    }

    void enableRepeatMode(float);
    bool isFastMode();
    bool isStartingPositionInitialized();
    void reset() = imac 0x560190;
    void resumeStroke();
    void stopStroke();
    void tintWithColor(cocos2d::_ccColor3B);
    void updateFade(float) = imac 0x55fb10;

    ~CCMotionStreak();

    virtual void update(float) = imac 0x55fb50, m1 0x4b651c;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x55f8b0, m1 0x4b6324;
    virtual void draw() = imac 0x5601b0, m1 0x4b6c54;

    virtual unsigned char getOpacity();
    virtual void setOpacity(unsigned char);
    virtual void setOpacityModifyRGB(bool);
    virtual bool isOpacityModifyRGB();

    virtual void setBlendFunc(cocos2d::_ccBlendFunc);
    virtual cocos2d::_ccBlendFunc getBlendFunc();
    virtual cocos2d::CCTexture2D* getTexture();
    virtual void setTexture(cocos2d::CCTexture2D*);
}

[[link(win, android)]]
class cocos2d::CCMoveBy {
    static cocos2d::CCMoveBy* create(float, cocos2d::CCPoint const&) = imac 0x3a5080, m1 0x331aa8;

    bool initWithDuration(float, cocos2d::CCPoint const&);

    // CCMoveBy(cocos2d::CCMoveBy const&);
    // CCMoveBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a51c0, m1 0x331bc4;
    virtual void update(float) = imac 0x3a53c0, m1 0x331d8c;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x331cf4;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a5370, m1 0x331d48;
}

[[link(win, android)]]
class cocos2d::CCMoveTo {
    static cocos2d::CCMoveTo* create(float, cocos2d::CCPoint const&) = imac 0x3a5490, m1 0x331e58;

    bool initWithDuration(float, cocos2d::CCPoint const&);

    // CCMoveTo(cocos2d::CCMoveTo const&);
    // CCMoveTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a55e0, m1 0x331f78;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3320bc;
}

[[link(win, android)]]
class cocos2d::CCRemoveSelf {
    static cocos2d::CCRemoveSelf* create(bool);

    bool init(bool);

    // CCRemoveSelf(cocos2d::CCRemoveSelf const&);
    // CCRemoveSelf();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x796cb0, m1 0x6a9e1c;
    virtual void update(float) = imac 0x796c30;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x796c50;
}

[[link(win, android)]]
class cocos2d::CCScaleBy {
    static cocos2d::CCScaleBy* create(float, float);
    static cocos2d::CCScaleBy* create(float, float, float);

    // CCScaleBy(cocos2d::CCScaleBy const&);
    // CCScaleBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x333b0c;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x333c04;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x333c74;
}

[[link(win, android)]]
class cocos2d::CCScaleTo {
    static cocos2d::CCScaleTo* create(float, float);
    static cocos2d::CCScaleTo* create(float, float, float);

    bool initWithDuration(float, float);
    bool initWithDuration(float, float, float);

    // CCScaleTo(cocos2d::CCScaleTo const&);
    // CCScaleTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x3337fc;
    virtual void update(float) = imac 0x3a73d0, m1 0x333960;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3338f4;
}

[[link(win, android)]]
class cocos2d::CCTintTo {
    static cocos2d::CCTintTo* create(float, unsigned char, unsigned char, unsigned char) = imac 0x3a83a0, m1 0x3347a0;

    bool initWithDuration(float, unsigned char, unsigned char, unsigned char);

    // CCTintTo(cocos2d::CCTintTo const&);
    // CCTintTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a84c0, m1 0x33487c;
    virtual void update(float) = imac 0x3a8630, m1 0x3349e4;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x334978;
}

[[link(win, android)]]
class cocos2d::CCAction {
    static cocos2d::CCAction* create();

    cocos2d::CCNode* getOriginalTarget();
    float getSpeedMod() const;
    int getTag();
    cocos2d::CCNode* getTarget();

    void setOriginalTarget(cocos2d::CCNode*);
    void setSpeedMod(float);
    void setTarget(cocos2d::CCNode*);

    // CCAction(cocos2d::CCAction const&);
    CCAction();
    ~CCAction();
    char const* description();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5dcb30, m1 0x50fa7c;
    virtual void update(float);
    //virtual void setTag(int) = m1 0x1b6e5c, imac 0x205680;
    virtual bool isDone();
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x5dcbf0, m1 0x50fb48;
    virtual void stop();
    virtual void step(float);
}

[[link(win, android)]]
class cocos2d::CCScene {
    static cocos2d::CCScene* create() = imac 0x27eef0;

    int getHighestChildZ() = imac 0x27efb0, m1 0x2289cc;

    // CCScene(cocos2d::CCScene const&);
    // CCScene() = ios 0x2508a4;
    ~CCScene();

    virtual bool init() = m1 0x228894;
}

[[link(win, android)]]
class cocos2d::CCSet {
    static cocos2d::CCSet* create();

    //CCSet(cocos2d::CCSet const&) = imac 0x7bf970, m1 0x6c576c;
    CCSet();
    ~CCSet() = imac 0x79e050;
    void addObject(cocos2d::CCObject*) = imac 0x79e300, m1 0x6b07f0;
    cocos2d::CCObject* anyObject() = imac 0x79e4d0, m1 0x6b09ec;
    cocos2d::CCSetIterator begin();
    bool containsObject(cocos2d::CCObject*) = imac 0x79e460, m1 0x6b0984;
    cocos2d::CCSet* copy();
    int count();
    cocos2d::CCSetIterator end() = imac 0x79e4c0;
    cocos2d::CCSet* mutableCopy();
    void removeAllObjects();
    void removeObject(cocos2d::CCObject*) = imac 0x79e3b0;

    virtual void acceptVisitor(cocos2d::CCDataVisitor&);
}

[[link(win, android)]]
class cocos2d::CCShaderCache {
    static void purgeSharedShaderCache();
    static cocos2d::CCShaderCache* sharedShaderCache() = imac 0x1f0310;

    bool init();

    // CCShaderCache(cocos2d::CCShaderCache const&);
    // CCShaderCache();
    void addProgram(cocos2d::CCGLProgram*, char const*);
    void loadDefaultShader(cocos2d::CCGLProgram*, int);
    void loadDefaultShaders();
    cocos2d::CCGLProgram* programForKey(char const*);
    void reloadDefaultShaders();
}

[[link(win, android)]]
class cocos2d::CCParticleSystem {
    static cocos2d::CCParticleSystem* create(char const*) = imac 0x7b1480, m1 0x6c2654;
    static cocos2d::CCParticleSystem* createWithTotalParticles(unsigned int);

    void initParticle(cocos2d::sCCParticle*) = imac 0x7b3670, m1 0x6c4620;
    bool initWithDictionary(cocos2d::CCDictionary*, char const*, bool);
    bool initWithDictionary(cocos2d::CCDictionary*, bool) = imac 0x7b31f0;
    bool initWithFile(char const*, bool) = m1 0x6c26d8;

    unsigned int getAtlasIndex() const;
    bool getDontCleanupOnFinish() const;
    bool getDynamicRotationIsDir() const;
    bool getEndRGBVarSync() const;
    float getFadeInTime() const;
    float getFadeInTimeVar() const;
    float getFadeOutTime() const;
    float getFadeOutTimeVar() const;
    float getFrictionPos() const;
    float getFrictionPosVar() const;
    float getFrictionRot() const;
    float getFrictionRotVar() const;
    float getFrictionSize() const;
    float getFrictionSizeVar() const;
    bool getOrderSensitive() const;
    float getRespawn() const;
    float getRespawnVar() const;
    bool getStartRGBVarSync() const;
    bool getStartRadiusEqualToEnd() const;
    bool getStartSizeEqualToEnd() const;
    bool getStartSpinEqualToEnd() const;
    float getTimeElapsed();
    bool getUseUniformColorMode() const;
    bool getUsingSchedule() const;
    bool getWasRemoved() const;

    void setAtlasIndex(unsigned int);
    void setDontCleanupOnFinish(bool);
    void setDynamicRotationIsDir(bool);
    void setEndAlpha(float);
    void setEndRGBVarSync(bool);
    void setFadeInTime(float);
    void setFadeInTimeVar(float);
    void setFadeOutTime(float);
    void setFadeOutTimeVar(float);
    void setFrictionPos(float);
    void setFrictionPosVar(float);
    void setFrictionRot(float);
    void setFrictionRotVar(float);
    void setFrictionSize(float);
    void setFrictionSizeVar(float);
    void setOrderSensitive(bool);
    void setRespawn(float);
    void setRespawnVar(float);
    void setStartAlpha(float);
    void setStartRGBVarSync(bool);
    void setStartRadiusEqualToEnd(bool);
    void setStartSizeEqualToEnd(bool);
    void setStartSpinEqualToEnd(bool);
    void setUsingSchedule(bool);
    void setWasRemoved(bool);

    // CCParticleSystem(cocos2d::CCParticleSystem const&);
    // CCParticleSystem();
    ~CCParticleSystem();
    bool addParticle();
    void calculateWorldSpace();
    bool isFull();
    void loadDefaults();
    void loadScaledDefaults(float) = imac 0x7b60e0;
    void resetSystem() = imac 0x7b4740, m1 0x6c5358;
    void resumeSystem();
    void saveDefaults();
    void stopSystem() = imac 0x7b4700, m1 0x6c5338;
    void toggleUniformColorMode(bool);
    void updateVisible();

    virtual void update(float) = imac 0x7b48f0, m1 0x6c549c;
    virtual bool init() = imac 0x7b17e0, m1 0x6c29dc;
    virtual void setScaleX(float);
    virtual void setScaleY(float);
    virtual void setScale(float);
    virtual void setVisible(bool) = imac 0x7b58e0, m1 0x6c622c;
    virtual void setRotation(float);
    virtual cocos2d::CCParticleBatchNode* getBatchNode();
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = imac 0x7b5f00, m1 0x6c6578;
    virtual unsigned int getParticleCount();
    virtual float getDuration();
    virtual void setDuration(float);
    virtual cocos2d::CCPoint const& getSourcePosition();
    virtual void setSourcePosition(cocos2d::CCPoint const&) = imac 0x7b5b30;
    virtual cocos2d::CCPoint const& getPosVar();
    virtual void setPosVar(cocos2d::CCPoint const&) = imac 0x7b5b60;
    virtual float getLife();
    virtual void setLife(float);
    virtual float getLifeVar();
    virtual void setLifeVar(float);
    virtual float getAngle();
    virtual void setAngle(float);
    virtual float getAngleVar();
    virtual void setAngleVar(float);
    virtual void updateEmissionRate() = imac 0x7b3410;
    virtual cocos2d::CCPoint const& getGravity();
    virtual void setGravity(cocos2d::CCPoint const&) = imac 0x7b59b0;
    virtual float getSpeed();
    virtual void setSpeed(float);
    virtual float getSpeedVar();
    virtual void setSpeedVar(float);
    virtual float getTangentialAccel();
    virtual void setTangentialAccel(float);
    virtual float getTangentialAccelVar();
    virtual void setTangentialAccelVar(float);
    virtual float getRadialAccel();
    virtual void setRadialAccel(float);
    virtual float getRadialAccelVar();
    virtual void setRadialAccelVar(float);
    virtual bool getRotationIsDir();
    virtual void setRotationIsDir(bool);
    virtual float getStartRadius();
    virtual void setStartRadius(float);
    virtual float getStartRadiusVar();
    virtual void setStartRadiusVar(float);
    virtual float getEndRadius();
    virtual void setEndRadius(float);
    virtual float getEndRadiusVar();
    virtual void setEndRadiusVar(float);
    virtual float getRotatePerSecond();
    virtual void setRotatePerSecond(float);
    virtual float getRotatePerSecondVar();
    virtual void setRotatePerSecondVar(float);
    virtual bool isActive();
    virtual bool isBlendAdditive() = imac 0x7b58c0, m1 0x6c6208;
    virtual void setBlendAdditive(bool) = imac 0x7b5870, m1 0x6c619c;
    virtual float getStartSize();
    virtual void setStartSize(float);
    virtual float getStartSizeVar();
    virtual void setStartSizeVar(float);
    virtual float getEndSize();
    virtual void setEndSize(float);
    virtual float getEndSizeVar();
    virtual void setEndSizeVar(float);
    virtual cocos2d::_ccColor4F const& getStartColor() = m1 0x6c63f0;
    virtual void setStartColor(cocos2d::_ccColor4F const&);
    virtual cocos2d::_ccColor4F const& getStartColorVar();
    virtual void setStartColorVar(cocos2d::_ccColor4F const&);
    virtual cocos2d::_ccColor4F const& getEndColor();
    virtual void setEndColor(cocos2d::_ccColor4F const&);
    virtual cocos2d::_ccColor4F const& getEndColorVar();
    virtual void setEndColorVar(cocos2d::_ccColor4F const&);
    virtual float getStartSpin();
    virtual void setStartSpin(float);
    virtual float getStartSpinVar();
    virtual void setStartSpinVar(float);
    virtual float getEndSpin();
    virtual void setEndSpin(float);
    virtual float getEndSpinVar();
    virtual void setEndSpinVar(float);
    virtual float getEmissionRate();
    virtual void setEmissionRate(float);
    virtual unsigned int getTotalParticles();
    virtual void setTotalParticles(unsigned int);
    virtual bool getOpacityModifyRGB();
    virtual void setOpacityModifyRGB(bool);
    virtual cocos2d::tCCPositionType getPositionType();
    virtual void setPositionType(cocos2d::tCCPositionType);
    virtual bool isAutoRemoveOnFinish();
    virtual void setAutoRemoveOnFinish(bool);
    virtual int getEmitterMode();
    virtual void setEmitterMode(int);
    virtual bool initWithTotalParticles(unsigned int, bool) = imac 0x7b32a0, m1 0x6c42f0;
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&);
    virtual void postStep();
    virtual void updateWithNoTime() = imac 0x7b56d0;
    virtual void updateBlendFunc() = m1 0x6c611c;

    virtual void setBlendFunc(cocos2d::_ccBlendFunc) = imac 0x7b5de0, m1 0x6c64c0;
    virtual cocos2d::_ccBlendFunc getBlendFunc();
    virtual cocos2d::CCTexture2D* getTexture();
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x7b5710, m1 0x6c604c;
}

[[link(win, android)]]
class cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSystemQuad* create(char const*, bool) = imac 0x5eb190;
    static cocos2d::CCParticleSystemQuad* create();
    static cocos2d::CCParticleSystemQuad* createWithTotalParticles(unsigned int, bool);

    void initIndices();
    void initTexCoordsWithRect(cocos2d::CCRect const&) = imac 0x5eb360, m1 0x51c5f0;

    unsigned char getOpacity();

    void setDisplayFrame(cocos2d::CCSpriteFrame*);
    void setOpacity(unsigned char);
    void setTextureWithRect(cocos2d::CCTexture2D*, cocos2d::CCRect const&);

    // CCParticleSystemQuad(cocos2d::CCParticleSystemQuad const&);
    // CCParticleSystemQuad();
    ~CCParticleSystemQuad() = imac 0x5eb0b0;
    bool allocMemory() = imac 0x5eaa60, m1 0x51c000;
    void listenBackToForeground(cocos2d::CCObject*);
    [[missing(mac, ios)]]
    void setupVBO();
    [[missing(win, android)]]
    void setupVBOandVAO() = imac 0x5eae40, m1 0x51c154;
    void updateTexCoords();

    virtual void draw() = imac 0x5ebb00, m1 0x51cd6c;
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = imac 0x5ec0e0, m1 0x51d040;
    virtual void setTotalParticles(unsigned int) = imac 0x5ebbc0, m1 0x51ce30;
    virtual bool initWithTotalParticles(unsigned int, bool) = m1 0x51bf1c;
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&) = imac 0x5eb760, m1 0x51ca54;
    virtual void postStep() = imac 0x5ebab0, m1 0x51cd20;

    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x5eb5b0, m1 0x51c86c;
}

[[link(win, android)]]
class cocos2d::CCProgressTimer {
    static cocos2d::CCProgressTimer* create(cocos2d::CCSprite*) = imac 0x5ec770;

    bool initWithSprite(cocos2d::CCSprite*);

    cocos2d::CCPoint getBarChangeRate() const;
    float getPercentage();
    // cocos2d::CCSprite* getSprite();
    cocos2d::CCProgressTimerType getType();

    void setAnchorPoint(cocos2d::CCPoint);
    void setBarChangeRate(cocos2d::CCPoint);
    void setPercentage(float) = imac 0x5ec9f0, m1 0x51d61c;
    void setReverseDirection(bool);
    void setReverseProgress(bool);
    void setSprite(cocos2d::CCSprite*) = imac 0x5eca70, m1 0x51d68c;
    void setType(cocos2d::CCProgressTimerType) = imac 0x5ecc80, m1 0x51d828;

    // CCProgressTimer(cocos2d::CCProgressTimer const&);
    // CCProgressTimer() = ios 0x405f18;

    cocos2d::CCPoint boundaryTexCoord(char);
    bool isReverseDirection();
    cocos2d::_ccTex2F textureCoordFromAlphaPoint(cocos2d::CCPoint);
    void updateBar();
    void updateColor();
    void updateProgress();
    void updateRadial();
    cocos2d::_ccVertex2F vertexFromAlphaPoint(cocos2d::CCPoint);

    virtual cocos2d::_ccColor3B const& getColor() const;
    virtual unsigned char getOpacity() const;
    virtual void draw() = imac 0x5eeda0, m1 0x51f054;
    virtual cocos2d::CCPoint getMidpoint() = imac 0x5eec80;
    virtual void setMidpoint(cocos2d::CCPoint) = imac 0x5eeca0, m1 0x51ef7c;

    virtual void setColor(cocos2d::_ccColor3B const&);
    virtual void setOpacity(unsigned char);
}

[[link(win, android)]]
class cocos2d::CCFadeIn {
    static cocos2d::CCFadeIn* create(float);

    // CCFadeIn(cocos2d::CCFadeIn const&);
    // CCFadeIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a7c50, m1 0x3340f0;
    virtual void update(float) = imac 0x3a7d20, m1 0x3341c4;
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCFadeOut {
    static cocos2d::CCFadeOut* create(float);

    // CCFadeOut(cocos2d::CCFadeOut const&);
    // CCFadeOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a7ed0;
    virtual void update(float) = imac 0x3a7fa0, m1 0x334414;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x334480;
}

[[link(win, android)]]
class cocos2d::CCFadeTo {
    static cocos2d::CCFadeTo* create(float, unsigned char) = imac 0x3a80c0, m1 0x33450c;

    bool initWithDuration(float, unsigned char);

    // CCFadeTo(cocos2d::CCFadeTo const&);
    // CCFadeTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a81b0, m1 0x3345c8;
    virtual void update(float) = imac 0x3a8320, m1 0x334720;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3346bc;
}

[[link(win, android)]]
class cocos2d::CCFileUtils {
    // CCFileUtils(); // one of these two is 0x15bfa8
    // CCFileUtils(cocos2d::CCFileUtils const&);
    virtual void addSearchPath(char const*);
    virtual void addSearchResolutionsOrder(char const*) = imac 0x428f30, m1 0x3a3d24;
    virtual gd::string addSuffix(gd::string, gd::string) = imac 0x4273f0, m1 0x3a21f4;
    virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(gd::string const&);
    virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(gd::string const&);
    virtual gd::string fullPathForFilename(char const*, bool) = imac 0x427a70, m1 0x3a27f4;
    virtual char const* fullPathFromRelativeFile(char const*, char const*) = imac 0x428a50, m1 0x3a3828;
    gd::string getAndroidPath() const;
    virtual unsigned char* getFileData(char const*, char const*, unsigned long*) = imac 0x426fc0, m1 0x3a1d98;
    virtual unsigned char* getFileDataFromZip(char const*, char const*, unsigned long*) = imac 0x427100, m1 0x3a1f04;
    virtual gd::string getFullPathForDirectoryAndFilename(gd::string const&, gd::string const&) = imac 0x429c50, m1 0x3a4c8c;
    virtual gd::string getNewFilename(char const*) = imac 0x427220, m1 0x3a203c;
    virtual gd::string getPathForFilename(gd::string const&, gd::string const&, gd::string const&) = imac 0x427630, m1 0x3a23fc;
    virtual gd::vector<gd::string> const& getSearchPaths();
    virtual gd::vector<gd::string> const& getSearchResolutionsOrder();
    virtual gd::string getWritablePath2() = imac 0x429d70;
    virtual bool init() = imac 0x426ea0, m1 0x3a1c38;
    virtual bool isAbsolutePath(gd::string const&) = imac 0x429cb0, m1 0x3a4e00;
    virtual bool isPopupNotify();
    virtual void loadFilenameLookupDictionaryFromFile(char const*) = imac 0x429ae0, m1 0x3a4ab4;
    virtual void purgeCachedEntries() = imac 0x426f90;
    static void purgeFileUtils();
    void removeAllPaths();
    virtual void removeFullPath(char const*) = m1 0x3a35b8;
    virtual void removeSearchPath(char const*);
    void setAndroidPath(gd::string);
    virtual void setFilenameLookupDictionary(cocos2d::CCDictionary*) = imac 0x429a70, m1 0x3a4a4c;
    virtual void setPopupNotify(bool) = imac 0x429cd0, m1 0x3a4e20;
    virtual void setSearchPaths(gd::vector<gd::string> const&) = imac 0x429070, m1 0x3a3e68;
    virtual void setSearchResolutionsOrder(gd::vector<gd::string> const&) = imac 0x428cb0, m1 0x3a3ab0;
    static cocos2d::CCFileUtils* sharedFileUtils() = imac 0x5f4090, m1 0x523b94;
    virtual bool shouldUseHD() = imac 0x4273c0;
    virtual bool writeToFile(cocos2d::CCDictionary*, gd::string const&);
}

[[link(win, android)]]
class cocos2d::CCGLProgram {
    bool initWithVertexShaderByteArray(char const*, char const*) = imac 0x417e60, m1 0x393990;
    bool initWithVertexShaderFilename(char const*, char const*);

    unsigned int const getProgram();
    int getUniformLocationForName(char const*);

    void setUniformLocationWith1f(int, float);
    void setUniformLocationWith1i(int, int);
    void setUniformLocationWith2f(int, float, float);
    void setUniformLocationWith2fv(int, float*, unsigned int);
    void setUniformLocationWith2i(int, int, int);
    void setUniformLocationWith2iv(int, int*, unsigned int);
    void setUniformLocationWith3f(int, float, float, float);
    void setUniformLocationWith3fv(int, float*, unsigned int);
    void setUniformLocationWith3i(int, int, int, int);
    void setUniformLocationWith3iv(int, int*, unsigned int);
    void setUniformLocationWith4f(int, float, float, float, float);
    void setUniformLocationWith4fv(int, float*, unsigned int);
    void setUniformLocationWith4i(int, int, int, int, int);
    void setUniformLocationWith4iv(int, int*, unsigned int);
    void setUniformLocationWithMatrix3fv(int, float*, unsigned int);
    void setUniformLocationWithMatrix4fv(int, float*, unsigned int);
    void setUniformsForBuiltins() = imac 0x419200, m1 0x394f28;

    // CCGLProgram(cocos2d::CCGLProgram const&);
    ~CCGLProgram();
    CCGLProgram();
    void addAttribute(char const*, unsigned int) = imac 0x4180e0;
    bool compileShader(unsigned int*, unsigned int, char const*);
    char const* description();
    char const* fragmentShaderLog();
    bool link() = m1 0x393dcc;
    // char const* logForOpenGLObject(unsigned int, void (__cdecl*)(unsigned int, unsigned int, int*), void (__cdecl*)(unsigned int, int, int*, char*));
    char const* programLog();
    void reset() = imac 0x419530;
    bool updateUniformLocation(int, void*, unsigned int);
    void updateUniforms() = imac 0x418100, m1 0x393c44;
    void use();
    char const* vertexShaderLog();
}

[[link(win, android)]]
class cocos2d::CCNode {
    static cocos2d::CCNode* create() = m1 0x20cad4;
    static void resetGlobalOrderOfArrival();

    // CCNode(cocos2d::CCNode const&);
    CCNode();
    ~CCNode();

    cocos2d::CCAction* getActionByTag(int);
    cocos2d::CCComponent* getComponent(char const*) const;
    int getScriptHandler();
    cocos2d::CCAffineTransform getTransformTemp();
    bool getUseChildIndex();

    void setAdditionalTransform(cocos2d::CCAffineTransform const&);
    void setUseChildIndex(bool);

    cocos2d::CCRect boundingBox() = imac 0x260cd0, m1 0x20ca74;
    void childrenAlloc();
    cocos2d::CCPoint convertToNodeSpace(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertToNodeSpaceAR(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertToWindowSpace(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertToWorldSpace(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertToWorldSpaceAR(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertTouchToNodeSpace(cocos2d::CCTouch*) = m1 0x20eaf8;
    cocos2d::CCPoint convertTouchToNodeSpaceAR(cocos2d::CCTouch*);
    char const* description();
    void detachChild(cocos2d::CCNode*, bool);
    void insertChild(cocos2d::CCNode*, int);
    unsigned int numberOfRunningActions();
    void pauseSchedulerAndActions();
    void qsortAllChildrenWithIndex();
    void resumeSchedulerAndActions();
    cocos2d::CCAction* runAction(cocos2d::CCAction*) = imac 0x261f80, m1 0x20dd34;
    void schedule(cocos2d::SEL_SCHEDULE) = imac 0x2621b0, m1 0x20dee8;
    void schedule(cocos2d::SEL_SCHEDULE, float) = imac 0x262210, m1 0x20df28;
    void schedule(cocos2d::SEL_SCHEDULE, float, unsigned int, float) = imac 0x2621e0;
    void scheduleOnce(cocos2d::SEL_SCHEDULE, float) = imac 0x262240;
    void scheduleUpdate() = imac 0x262090;
    void scheduleUpdateWithPriority(int) = imac 0x2620c0;
    void scheduleUpdateWithPriorityLua(int, int) = imac 0x2620f0;
    void sortAllChildrenNoIndex();
    void sortAllChildrenWithIndex();
    void stopAction(cocos2d::CCAction*);
    void stopActionByTag(int);
    void stopAllActions();
    void transform();
    void transformAncestors();
    void unschedule(cocos2d::SEL_SCHEDULE) = imac 0x262270, m1 0x20df6c;
    void unscheduleAllSelectors();
    void unscheduleUpdate() = imac 0x262160, m1 0x20de9c;
    void updateChildIndexes();

    virtual void update(float) = imac 0x262290, m1 0x20df98;
    virtual bool init();
    virtual void setZOrder(int) = imac 0x2605e0, m1 0x20c4d4;
    virtual void _setZOrder(int);
    virtual int getZOrder();
    virtual void setVertexZ(float);
    virtual float getVertexZ();
    virtual void setScaleX(float);
    virtual float getScaleX();
    virtual void setScaleY(float);
    virtual float getScaleY();
    virtual void setScale(float) = imac 0x260700;
    virtual float getScale();
    virtual void setScale(float, float) = imac 0x260720;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x2607b0, m1 0x20c614;
    virtual cocos2d::CCPoint const& getPosition();
    virtual void setPosition(float, float) = imac 0x2607f0;
    virtual void getPosition(float*, float*) = imac 0x2607d0;
    virtual void setPositionX(float) = imac 0x260850;
    virtual float getPositionX();
    virtual void setPositionY(float) = imac 0x260890;
    virtual float getPositionY();
    virtual void setSkewX(float);
    virtual float getSkewX();
    virtual void setSkewY(float);
    virtual float getSkewY();
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x260a20, m1 0x20c83c;
    virtual cocos2d::CCPoint const& getAnchorPoint();
    virtual cocos2d::CCPoint const& getAnchorPointInPoints();
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x260ae0, m1 0x20c8fc;
    virtual cocos2d::CCSize const& getContentSize() const;
    virtual cocos2d::CCSize getScaledContentSize() = imac 0x260ab0, m1 0x20c8c4;
    virtual void setVisible(bool);
    virtual bool isVisible();
    virtual void setRotation(float) = imac 0x260650, m1 0x20c53c;
    virtual float getRotation();
    virtual void setRotationX(float);
    virtual float getRotationX();
    virtual void setRotationY(float);
    virtual float getRotationY();
    virtual void setOrderOfArrival(unsigned int);
    virtual unsigned int getOrderOfArrival();
    virtual void setGLServerState(cocos2d::ccGLServerState);
    virtual cocos2d::ccGLServerState getGLServerState();
    virtual void ignoreAnchorPointForPosition(bool) = imac 0x260ba0, m1 0x20c99c;
    virtual bool isIgnoreAnchorPointForPosition();
    virtual void addChild(cocos2d::CCNode*) = imac 0x261090;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x261070;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x260f40, m1 0x20ccdc;
    virtual cocos2d::CCNode* getChildByTag(int) = imac 0x260ec0, m1 0x20cc58;
    virtual cocos2d::CCArray* getChildren() = imac 0x2608d0, m1 0x20c71c;
    virtual unsigned int getChildrenCount() const;
    virtual void setParent(cocos2d::CCNode*);
    virtual cocos2d::CCNode* getParent();
    virtual void removeFromParent();
    virtual void removeFromParentAndCleanup(bool) = imac 0x2610d0, m1 0x20ce8c;
    virtual void removeMeAndCleanup();
    virtual void removeChild(cocos2d::CCNode*);
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x261140, m1 0x20cecc;
    virtual void removeChildByTag(int);
    virtual void removeChildByTag(int, bool) = imac 0x2612b0, m1 0x20d044;
    virtual void removeAllChildren();
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x261310, m1 0x20d0a4;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x261420, m1 0x20d1d0;
    virtual void sortAllChildren() = imac 0x261560, m1 0x20d2e8;
    virtual cocos2d::CCGridBase* getGrid();
    virtual void setGrid(cocos2d::CCGridBase*);
    virtual void* getUserData();
    virtual void setUserData(void*);
    virtual cocos2d::CCObject* getUserObject();
    virtual void setUserObject(cocos2d::CCObject*);
    virtual cocos2d::CCGLProgram* getShaderProgram();
    virtual void setShaderProgram(cocos2d::CCGLProgram*);
    virtual cocos2d::CCCamera* getCamera() = imac 0x260940, m1 0x20c778;
    virtual bool isRunning();
    virtual void registerScriptHandler(int);
    virtual void unregisterScriptHandler() = imac 0x261ee0;
    virtual void onEnter() = imac 0x261b70, m1 0x20d91c;
    virtual void onEnterTransitionDidFinish() = imac 0x261c90, m1 0x20da4c;
    virtual void onExit() = imac 0x261d90, m1 0x20db60;
    virtual void onExitTransitionDidStart() = imac 0x261d00, m1 0x20dacc;
    virtual void cleanup() = imac 0x260da0, m1 0x20cb54;
    virtual void draw();
    virtual void visit() = imac 0x261940, m1 0x20d6e4;
    virtual void setActionManager(cocos2d::CCActionManager*) = imac 0x261f20;
    virtual cocos2d::CCActionManager* getActionManager();
    virtual void setScheduler(cocos2d::CCScheduler*);
    virtual cocos2d::CCScheduler* getScheduler();
    virtual void updateTransform() = imac 0x262ed0, m1 0x20ebcc;
    virtual cocos2d::CCAffineTransform const nodeToParentTransform() = imac 0x262300, m1 0x20e018;
    virtual cocos2d::CCAffineTransform const nodeToParentTransformFast() = imac 0x262610, m1 0x20e2d4;
    virtual cocos2d::CCAffineTransform const parentToNodeTransform() = imac 0x262a60, m1 0x20e780;
    virtual cocos2d::CCAffineTransform nodeToWorldTransform() = imac 0x262ae0;
    virtual cocos2d::CCAffineTransform nodeToWorldTransformFast() = imac 0x262b70;
    virtual cocos2d::CCAffineTransform worldToNodeTransform() = imac 0x262c00, m1 0x20e90c;
    virtual bool addComponent(cocos2d::CCComponent*);
    virtual bool removeComponent(char const*);
    virtual bool removeComponent(cocos2d::CCComponent*);
    virtual void removeAllComponents();
    virtual void updateTweenAction(float, char const*);
    virtual void updateTweenActionInt(float, int);
}

[[link(win, android)]]
class cocos2d::CCScheduler {
    float getTimeScale();

    void setTimeScale(float);

    // CCScheduler(cocos2d::CCScheduler const&);
    // CCScheduler();

    void appendIn(cocos2d::_listEntry**, cocos2d::CCObject*, bool);
    bool isTargetPaused(cocos2d::CCObject*);
    cocos2d::CCSet* pauseAllTargets();
    cocos2d::CCSet* pauseAllTargetsWithMinPriority(int);
    void pauseTarget(cocos2d::CCObject*) = imac 0x42f860, m1 0x3aa664;
    void priorityIn(cocos2d::_listEntry**, cocos2d::CCObject*, int, bool);
    void removeHashElement(cocos2d::_hashSelectorEntry*);
    void removeUpdateFromHash(cocos2d::_listEntry*);
    void resumeTarget(cocos2d::CCObject*);
    void resumeTargets(cocos2d::CCSet*);
    unsigned int scheduleScriptFunc(unsigned int, float, bool);
    void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, unsigned int, float, bool) = imac 0x42e250, m1 0x3a8f7c;
    void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, bool) = imac 0x42e230;
    void scheduleUpdateForTarget(cocos2d::CCObject*, int, bool) = imac 0x42ee60, m1 0x3a9bec;
    void unscheduleAll();
    void unscheduleAllForTarget(cocos2d::CCObject*) = imac 0x42f420;
    void unscheduleAllWithMinPriority(int);
    void unscheduleScriptEntry(unsigned int);
    void unscheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*) = imac 0x42dd60, m1 0x3a8a88;
    void unscheduleUpdateForTarget(cocos2d::CCObject const*);

    virtual void update(float) = imac 0x42fea0, m1 0x3aac3c;
}

[[link(win, android)]]
class cocos2d::CCLayer {
    static cocos2d::CCLayer* create() = imac 0x49d570, m1 0x408478;

    // CCLayer(cocos2d::CCLayer const&);
    CCLayer();
    ~CCLayer();

    cocos2d::CCScriptHandlerEntry* getScriptAccelerateHandlerEntry();
    cocos2d::CCScriptHandlerEntry* getScriptKeypadHandlerEntry();
    cocos2d::CCTouchScriptHandlerEntry* getScriptTouchHandlerEntry();

    int excuteScriptTouchHandler(int, cocos2d::CCSet*);
    int excuteScriptTouchHandler(int, cocos2d::CCTouch*);
    void registerScriptAccelerateHandler(int);
    void registerScriptKeypadHandler(int);
    void unregisterScriptAccelerateHandler();
    void unregisterScriptKeypadHandler();

    virtual bool init() = imac 0x49d510, m1 0x40841c;
    virtual void onEnter() = imac 0x49de10, m1 0x408cf4;
    virtual void onEnterTransitionDidFinish() = imac 0x49dfa0, m1 0x408e78;
    virtual void onExit() = imac 0x49ded0, m1 0x408db8;
    virtual void registerWithTouchDispatcher() = imac 0x49d6a0, m1 0x408588;
    virtual void registerScriptTouchHandler(int, bool, int, bool) = imac 0x49d720, m1 0x4085fc;
    virtual void unregisterScriptTouchHandler() = imac 0x49d780;
    virtual bool isTouchEnabled();
    virtual void setTouchEnabled(bool) = imac 0x49d840, m1 0x408720;
    virtual void setTouchMode(cocos2d::ccTouchesMode);
    virtual int getTouchMode();
    virtual void setTouchPriority(int);
    virtual int getTouchPriority();
    virtual bool isAccelerometerEnabled();
    virtual void setAccelerometerEnabled(bool) = imac 0x49d980, m1 0x408870;
    virtual void setAccelerometerInterval(double) = imac 0x49d9c0, m1 0x4088ac;
    virtual bool isKeypadEnabled();
    virtual void setKeypadEnabled(bool) = imac 0x49dad0, m1 0x4089bc;
    virtual bool isKeyboardEnabled();
    virtual void setKeyboardEnabled(bool) = imac 0x49db50, m1 0x408a38;
    virtual bool isMouseEnabled();
    virtual void setMouseEnabled(bool) = imac 0x49dbc0, m1 0x408aa8;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x408eb0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x49e1f0;
    virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void setPreviousPriority(int);
    virtual int getPreviousPriority();

    virtual void didAccelerate(cocos2d::CCAcceleration*) = imac 0x49d9f0, m1 0x4088e0;

    virtual void keyBackClicked() = imac 0x49dc70, m1 0x408b4c;
    virtual void keyMenuClicked() = imac 0x49dd10, m1 0x408bf4;

    virtual void keyDown(cocos2d::enumKeyCodes) = imac 0x49dd90;
}

[[link(win, android)]]
class cocos2d::CCLayerGradient {
    static cocos2d::CCLayerGradient* create(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&) = m1 0x40ad84;
    static cocos2d::CCLayerGradient* create(cocos2d::_ccColor4B const& a1, cocos2d::_ccColor4B const& a2, cocos2d::CCPoint const& a3) = ios inline, imac 0x4a06f0, m1 0x40afac {
    	auto ret = create(a1, a2);
    	ret->setVector(a3);
    	return ret;
    }
    static cocos2d::CCLayerGradient* create();

    bool getShouldPremultiply() const;

    void setShouldPremultiply(bool);
    void setValues(cocos2d::_ccColor3B const&, unsigned char, cocos2d::_ccColor3B const&, unsigned char, cocos2d::CCPoint const&);

    // CCLayerGradient(cocos2d::CCLayerGradient const&);
    // CCLayerGradient();

    virtual bool init() = imac 0x4a07f0, m1 0x40b0e8;

    virtual void updateColor() = imac 0x4a0930, m1 0x40b218;
    virtual bool initWithColor(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&) = imac 0x4a0820, m1 0x40b120;
    virtual bool initWithColor(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&, cocos2d::CCPoint const&) = imac 0x4a0880, m1 0x40b180;
    virtual cocos2d::_ccColor3B const& getStartColor();
    virtual void setStartColor(cocos2d::_ccColor3B const&);
    virtual cocos2d::_ccColor3B const& getEndColor() = m1 0x40b464;
    virtual void setEndColor(cocos2d::_ccColor3B const&) = imac 0x4a0b50;
    virtual unsigned char getStartOpacity();
    virtual void setStartOpacity(unsigned char);
    virtual unsigned char getEndOpacity();
    virtual void setEndOpacity(unsigned char);
    virtual cocos2d::CCPoint const& getVector();
    virtual void setVector(cocos2d::CCPoint const&) = imac 0x4a0bf0, m1 0x40b49c;
    virtual void setCompressedInterpolation(bool);
    virtual bool isCompressedInterpolation();
}

[[link(win, android)]]
class cocos2d::CCObject {
    static cocos2d::CCObject* createWithCoder(DS_Dictionary*);

    // CCObject(cocos2d::CCObject const&);
    CCObject();
    ~CCObject();

    cocos2d::CCObjectType getObjType() const;

    void setObjType(cocos2d::CCObjectType);

    cocos2d::CCObject* autorelease() = m1 0x3e6314;
    cocos2d::CCObject* copy();
    bool isSingleReference() const = imac 0x477e40;
    void release() = imac 0x477de0, m1 0x3e62e0;
    void retain() = imac 0x477e00;
    unsigned int retainCount() const;

    virtual int getTag() const;
    virtual bool isEqual(cocos2d::CCObject const*) = imac 0x477e60;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&);
    virtual void encodeWithCoder(DS_Dictionary*);
    virtual bool canEncode();
    virtual void setTag(int);
}

[[link(win, android)]]
class cocos2d::CCOrbitCamera {
    static cocos2d::CCOrbitCamera* create(float, float, float, float, float, float, float);

    bool initWithDuration(float, float, float, float, float, float, float);
    // CCOrbitCamera(cocos2d::CCOrbitCamera const&);
    // CCOrbitCamera();

    void sphericalRadius(float*, float*, float*);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3543a0, m1 0x2e8180;
    virtual void update(float) = imac 0x354800, m1 0x2e853c;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x2e82a8;
}

[[link(win, android)]]
class cocos2d::CCLayerColor {
    static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&) = imac 0x49fbb0, m1 0x40a558;
    static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&, float, float) = m1 0x40a3dc;
    static cocos2d::CCLayerColor* create() = ios inline, imac 0x49f800, m1 0x40a264 {
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

    // CCLayerColor(cocos2d::CCLayerColor const&);
    CCLayerColor();
    ~CCLayerColor();

    void setVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);

    void addToVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);
    void changeHeight(float);
    void changeWidth(float);
    void changeWidthAndHeight(float, float);

    virtual bool init() = imac 0x49fd80, m1 0x40a6a4;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x49ff70, m1 0x40a874;
    virtual void draw() = m1 0x40a9d4;
    virtual bool initWithColor(cocos2d::_ccColor4B const&, float, float) = imac 0x49fdd0, m1 0x40a6f0;
    virtual bool initWithColor(cocos2d::_ccColor4B const&) = m1 0x40a7dc;
    virtual void updateColor() = imac 0x4a0060, m1 0x40a958;

    virtual void setColor(cocos2d::_ccColor3B const&) = imac 0x4a0180, m1 0x40aaa0;
    virtual void setOpacity(unsigned char) = imac 0x4a0300, m1 0x40ac4c;

    virtual void setBlendFunc(cocos2d::_ccBlendFunc);
    virtual cocos2d::_ccBlendFunc getBlendFunc();
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA {
    static cocos2d::CCLayerRGBA* create();

    // CCLayerRGBA(cocos2d::CCLayerRGBA const&);
    CCLayerRGBA();
    ~CCLayerRGBA();

    virtual bool init() = imac 0x49e9d0, m1 0x4097b0;

    virtual void setColor(cocos2d::_ccColor3B const&);
    virtual cocos2d::_ccColor3B const& getColor();
    virtual cocos2d::_ccColor3B const& getDisplayedColor();
    virtual unsigned char getDisplayedOpacity();
    virtual unsigned char getOpacity();
    virtual void setOpacity(unsigned char);
    virtual bool isCascadeColorEnabled();
    virtual void setCascadeColorEnabled(bool);
    virtual void updateDisplayedColor(cocos2d::_ccColor3B const&);
    virtual bool isCascadeOpacityEnabled();
    virtual void setCascadeOpacityEnabled(bool);
    virtual void updateDisplayedOpacity(unsigned char) = m1 0x409b60;
}

[[link(win, android)]]
class cocos2d::CCMouseDispatcher {
    // CCMouseDispatcher(cocos2d::CCMouseDispatcher const&);
    // CCMouseDispatcher();
    void addDelegate(cocos2d::CCMouseDelegate*);
    bool dispatchScrollMSG(float, float) = imac 0x55a490, m1 0x4b0cb4;
    void forceAddDelegate(cocos2d::CCMouseDelegate*);
    void forceRemoveDelegate(cocos2d::CCMouseDelegate*);
    void removeDelegate(cocos2d::CCMouseDelegate*);
}

[[link(win, android)]]
class cocos2d::CCTargetedTouchHandler {
    static cocos2d::CCTargetedTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int, bool);

    bool initWithDelegate(cocos2d::CCTouchDelegate*, int, bool);

    cocos2d::CCSet* getClaimedTouches();

    void setSwallowsTouches(bool);

    // CCTargetedTouchHandler(cocos2d::CCTargetedTouchHandler const&);
    // CCTargetedTouchHandler();
    bool isSwallowsTouches();
}

[[link(win, android)]]
class cocos2d::CCTexture2D {
    static void PVRImagesHavePremultipliedAlpha(bool) = imac 0x466800;
    static cocos2d::CCTexture2DPixelFormat defaultAlphaPixelFormat();
    static void setDefaultAlphaPixelFormat(cocos2d::CCTexture2DPixelFormat);

    bool initPremultipliedATextureWithImage(cocos2d::CCImage*, unsigned int, unsigned int) = m1 0x3d590c;
    bool initWithData(void const*, cocos2d::CCTexture2DPixelFormat, unsigned int, unsigned int, cocos2d::CCSize const&) = imac 0x465650, m1 0x3d557c;
    bool initWithETCFile(char const*) = imac 0x466730, m1 0x3d65b4;
    bool initWithImage(cocos2d::CCImage*);
    bool initWithPVRFile(char const*) = imac 0x466650, m1 0x3d64dc;
    bool initWithString(char const*, char const*, float) = imac 0x4662a0, m1 0x3d6128;
    bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment) = imac 0x466300, m1 0x3d6198;
    bool initWithString(char const*, cocos2d::_ccFontDefinition*);

    cocos2d::CCSize const& getContentSizeInPixels();

    void setAliasTexParameters();
    void setAntiAliasTexParameters();
    void setTexParameters(cocos2d::_ccTexParams*) = imac 0x466860, m1 0x3d66e0;

    // CCTexture2D(cocos2d::CCTexture2D const&);
    ~CCTexture2D();
    CCTexture2D();
    unsigned int bitsPerPixelForFormat(cocos2d::CCTexture2DPixelFormat) = imac 0x465950;
    unsigned int bitsPerPixelForFormat() = imac 0x4669e0;
    char const* description() = imac 0x465970, m1 0x3d584c;
    void drawAtPoint(cocos2d::CCPoint const&) = m1 0x3d62d0;
    void drawInRect(cocos2d::CCRect const&) = m1 0x3d63e8;
    void generateMipmap() = imac 0x466810, m1 0x3d6688;
    bool hasMipmaps();
    bool hasPremultipliedAlpha();
    void* keepData(void*, unsigned int);
    void releaseData(void*);
    void releaseGLTexture() = imac 0x4655f0, m1 0x3d5538;
    char const* stringForFormat() = imac 0x466990;

    virtual cocos2d::CCTexture2DPixelFormat getPixelFormat();
    virtual unsigned int getPixelsWide();
    virtual unsigned int getPixelsHigh();
    virtual unsigned int getName();
    virtual float getMaxS();
    virtual void setMaxS(float);
    virtual float getMaxT();
    virtual void setMaxT(float);
    virtual cocos2d::CCSize getContentSize() = m1 0x3d5474;
    virtual cocos2d::CCGLProgram* getShaderProgram();
    virtual void setShaderProgram(cocos2d::CCGLProgram*) = imac 0x4655b0;
}

[[link(win, android)]]
class cocos2d::CCTextureCache {
    static void purgeSharedTextureCache();
    static void reloadAllTextures();
    static cocos2d::CCTextureCache* sharedTextureCache() = imac 0x5d4630, m1 0x508118;

    // CCTextureCache(cocos2d::CCTextureCache const&);
    // CCTextureCache();
    cocos2d::CCTexture2D* addETCImage(char const*);
    cocos2d::CCTexture2D* addImage(char const*, bool) = imac 0x5d58c0, m1 0x509308;
    void addImageAsync(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler, int, cocos2d::CCTexture2DPixelFormat) = imac 0x5d4b00;
    void addImageAsyncCallBack(float);
    cocos2d::CCTexture2D* addPVRImage(char const*);
    cocos2d::CCTexture2D* addUIImage(cocos2d::CCImage*, char const*) = imac 0x5d6700, m1 0x50a210;
    char const* description();
    void dumpCachedTextureInfo();
    void prepareAsyncLoading();
    bool reloadTexture(char const*);
    void removeAllTextures();
    void removeTexture(cocos2d::CCTexture2D*);
    void removeTextureForKey(char const*) = imac 0x5d6ca0;
    void removeUnusedTextures();
    cocos2d::CCDictionary* snapshotTextures();
    cocos2d::CCTexture2D* textureForKey(char const*) = imac 0x5d6d20, m1 0x50a874;
}

[[link(win, android)]]
class cocos2d::CCTouch {
    cocos2d::CCPoint getLocationInView() const = imac 0x59ab0;
    cocos2d::CCPoint getLocation() const = m1 0x4f740;
    cocos2d::CCPoint getPreviousLocation() const = ios inline, m1 0x4f76c {
    	return CCDirector::sharedDirector()->convertToGL(m_prevPoint);
    }
    cocos2d::CCPoint getStartLocation() const = ios inline, m1 0x4f798 {
    	return CCDirector::sharedDirector()->convertToGL(m_startPoint);
    }
    cocos2d::CCPoint getDelta() const = ios inline, m1 0x4f7c4 {
    	return getLocation() - getPreviousLocation() = m1 0x4fb38;
    }
}

[[link(win, android)]]
class cocos2d::CCTouchDelegate {
    // CCTouchDelegate(cocos2d::CCTouchDelegate const&);
    // CCTouchDelegate();

    virtual void setPreviousPriority(int) {}
    virtual int getPreviousPriority() { return 0; }
}

[[link(win, android)]]
class cocos2d::CCTouchDispatcher {
    bool init() = imac 0x4b86d0;

    int getTargetPrio() const;

    void setDispatchEvents(bool);
    void setPriority(int p1, cocos2d::CCTouchDelegate* p2) = ios inline, imac 0x4b90d0, m1 0x420e50 {
    	auto* handler = this->findHandler(p2);
    	auto priority = handler->getPriority();

    	if (p1 != priority) {
    		handler->setPriority(p1);
    		this->rearrangeHandlers(m_pTargetedHandlers);
    		this->rearrangeHandlers(m_pStandardHandlers);
    	}
    }

    // CCTouchDispatcher(cocos2d::CCTouchDispatcher const&);
    // CCTouchDispatcher();
    void addPrioTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x4b8980, m1 0x420668;
    void addStandardDelegate(cocos2d::CCTouchDelegate*, int);
    void addTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x4b89a0, m1 0x420680;
    void decrementForcePrio(int);
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCArray*, cocos2d::CCTouchDelegate*);
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCTouchDelegate*);
    void forceAddHandler(cocos2d::CCTouchHandler*, cocos2d::CCArray*);
    void forceRemoveAllDelegates();
    void forceRemoveDelegate(cocos2d::CCTouchDelegate*) = imac 0x4b8d10;
    void incrementForcePrio(int);
    bool isDispatchEvents();
    bool isUsingForcePrio() = imac 0x4b8970;
    void rearrangeHandlers(cocos2d::CCArray* handlers) = ios inline {
    	std::sort(handlers->data->arr, handlers->data->arr + handlers->data->num, [](const CCObject* p1, const CCObject* p2) {
    		return ((CCTouchHandler*)p1)->getPriority() < ((CCTouchHandler*)p2)->getPriority();
    	});
    }
    void registerForcePrio(cocos2d::CCObject*, int) = imac 0x4b8880, m1 0x420540;
    void removeAllDelegates();
    void removeDelegate(cocos2d::CCTouchDelegate*) = m1 0x420b2c;
    void touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int) = imac 0x4b9220, m1 0x420fc0;
    void unregisterForcePrio(cocos2d::CCObject*) = imac 0x4b8920, m1 0x4205f4;

    virtual void touchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b9840;
    virtual void touchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b9880;
    virtual void touchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b98c0;
    virtual void touchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b9900;
}

[[link(win, android)]]
class cocos2d::CCTouchHandler {
    static cocos2d::CCTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int);

    cocos2d::CCTouchDelegate* getDelegate();
    int getEnabledSelectors();
    int getPriority() = ios inline {
    	return m_nPriority;
    }

    void setDelegate(cocos2d::CCTouchDelegate*);
    void setEnalbedSelectors(int);
    void setPriority(int prio) = ios inline {
    	m_nPriority = prio;
    }

    // CCTouchHandler(cocos2d::CCTouchHandler const&);
    // CCTouchHandler();

    virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int);
}

[[link(win, android)]]
class cocos2d::CCEGLView {
    // CCEGLView();
    // CCEGLView(cocos2d::CCEGLView const&);
    virtual void swapBuffers() = m1 0x45133c;
    void end();

    [[missing(android, mac, ios)]]
    void toggleFullScreen(bool, bool);
    [[missing(android, mac, ios)]]
    void pollEvents();
    [[missing(android, mac, ios)]]
    void setupWindow(cocos2d::CCRect);
    [[missing(android, mac, ios)]]
    void onGLFWCharCallback(GLFWwindow* window, unsigned int entered);
    [[missing(android, mac, ios)]]
    void onGLFWCursorEnterFunCallback(GLFWwindow* window, int entered);
    [[missing(android, mac, ios)]]
    void onGLFWDeviceChangeFunCallback(GLFWwindow* window);
    [[missing(android, mac, ios)]]
    void onGLFWError(int code, char const* description);
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
    void onGLFWframebuffersize(GLFWwindow* window, int width, int height);
    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithFullScreen(gd::string const&, bool);
    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithFullScreen(gd::string const&, bool, GLFWvidmode const&, GLFWmonitor*);
    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithRect(gd::string const&, cocos2d::CCRect, float);
    // sharedOpenGLView() = ios 0x130f38, imac 0x50df50
}

[[link(win, android)]]
class cocos2d::CCImage {
    bool initWithImageData(void*, int, cocos2d::CCImage::EImageFormat, int, int, int, int);
    bool initWithImageFile(char const*, cocos2d::CCImage::EImageFormat) = imac 0x476b70, m1 0x3e5430;
    bool initWithImageFileThreadSafe(char const*, cocos2d::CCImage::EImageFormat) = imac 0x477360, m1 0x3e5a5c;
    bool initWithString(char const*, int, int, cocos2d::CCImage::ETextAlign, char const*, int);

    int getBitsPerComponent() const;
    unsigned char* getData();
    int getDataLen();
    unsigned short getHeight() const;
    unsigned short getWidth() const;

    CCImage();
    ~CCImage();

    bool _initWithJpgData(void*, int);
    bool _initWithPngData(void*, int);
    bool _initWithRawData(void*, int, int, int, int, bool);
    bool _initWithTiffData(void*, int);
    bool _initWithWebpData(void*, int);
    bool _saveImageToJPG(char const*);
    bool _saveImageToPNG(char const*, bool);
    bool hasAlpha();
    bool isPremultipliedAlpha();
    bool saveToFile(char const*, bool);
}

[[link(win, android)]]
class cocos2d::CCIMEDelegate {
    ~CCIMEDelegate();
    virtual bool attachWithIME() = imac 0x4a8c50, m1 0x411f90;
    virtual bool detachWithIME() = imac 0x4a8e40, m1 0x4121d0;
    virtual void deleteForward() {}
}

[[link(win, android)]]
class cocos2d::CCIMEDispatcher {
    static cocos2d::CCIMEDispatcher* sharedDispatcher() = imac 0x4a89a0;

    // CCIMEDispatcher();

    void addDelegate(cocos2d::CCIMEDelegate*);
    bool attachDelegateWithIME(cocos2d::CCIMEDelegate*);
    bool detachDelegateWithIME(cocos2d::CCIMEDelegate*);
    void dispatchDeleteBackward();
    void dispatchDeleteForward();
    void dispatchInsertText(char const*, int, cocos2d::enumKeyCodes) = imac 0x4a9110, m1 0x4124b4;
    void dispatchKeyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&);
    void dispatchKeyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&);
    void dispatchKeyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
    void dispatchKeyboardWillHide();
    void dispatchKeyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
    char const* getContentText();
    bool hasDelegate() = imac 0x4a90f0;
    void removeDelegate(cocos2d::CCIMEDelegate*);
}

[[link(win, android)]]
class cocos2d::CCKeyboardDispatcher {
    static cocos2d::enumKeyCodes convertKeyCode(cocos2d::enumKeyCodes);

    bool getAltKeyPressed() const;
    bool getBlockRepeat() const;
    bool getCommandKeyPressed() const;
    bool getControlKeyPressed() const;
    bool getShiftKeyPressed() const;

    void setBlockRepeat(bool);

    // CCKeyboardDispatcher(cocos2d::CCKeyboardDispatcher const&);
    // CCKeyboardDispatcher();
    void addDelegate(cocos2d::CCKeyboardDelegate*);
    bool dispatchKeyboardMSG(cocos2d::enumKeyCodes, bool, bool) = imac 0x1f17b0, m1 0x1a8028;
    void forceAddDelegate(cocos2d::CCKeyboardDelegate*);
    void forceRemoveDelegate(cocos2d::CCKeyboardDelegate*);
    char const* keyToString(cocos2d::enumKeyCodes) = imac 0x1f1aa0;
    void removeDelegate(cocos2d::CCKeyboardDelegate*);
    void updateModifierKeys(bool, bool, bool, bool) = imac 0x1f1a70;
}

[[link(win, android)]]
class cocos2d::CCKeypadDispatcher {
    // CCKeypadDispatcher(cocos2d::CCKeypadDispatcher const&);
    // CCKeypadDispatcher();

    void addDelegate(cocos2d::CCKeypadDelegate*);
    bool dispatchKeypadMSG(cocos2d::ccKeypadMSGType);
    void forceAddDelegate(cocos2d::CCKeypadDelegate*);
    void forceRemoveDelegate(cocos2d::CCKeypadDelegate*);
    void removeDelegate(cocos2d::CCKeypadDelegate*);
}

[[link(win, android)]]
class cocos2d::CCDirector {
    static cocos2d::CCDirector* sharedDirector() = imac 0x46f500, m1 0x3de6d0;

    float getActualDeltaTime() const;
    double getAnimationInterval();
    float getContentScaleFactor();
    cocos2d::CCDirectorDelegate* getDelegate() const;
    bool getDontCallWillSwitch() const;
    void getFPSImageData(unsigned char**, unsigned int*);
    bool getIsTransitioning() const;
    cocos2d::TextureQuality getLoadedTextureQuality() const;
    cocos2d::CCScene* getNextScene();
    cocos2d::CCNode* getNotificationNode();
    cocos2d::CCEGLView* getOpenGLView();
    cocos2d::ccDirectorProjection getProjection();
    cocos2d::CCScene* getRunningScene();
    cocos2d::CCScene* getSceneReference() const;
    float getScreenScaleFactor();
    float getScreenScaleFactorH();
    float getScreenScaleFactorMax();
    float getScreenScaleFactorW();
    float getSecondsPerFrame();
    bool getSmoothFix() const;
    bool getSmoothFixCheck() const;
    int getSmoothFixCounter() const;
    unsigned int getTotalFrames();
    cocos2d::CCPoint getVisibleOrigin();
    cocos2d::CCSize getVisibleSize();
    cocos2d::CCSize getWinSize() = imac 0x470920;
    cocos2d::CCSize getWinSizeInPixels();
    float getZEye();
    //getScreenTop = ios 0x18260c, idk if i should add the function
    //getScreenBottom() = ios 0x182614
    //getScreenLeft() = ios 0x18261C

    void setActualDeltaTime(float);
    void setAlphaBlending(bool);
    void setContentScaleFactor(float);
    void setDefaultValues();
    void setDelegate(cocos2d::CCDirectorDelegate*);
    void setDeltaTime(float);
    void setDepthTest(bool) = imac 0x46fc40;
    void setDisplayStats(bool);
    void setDontCallWillSwitch(bool);
    void setGLDefaultValues() = imac 0x46fbd0;
    void setNextDeltaTimeZero(bool);
    void setNextScene();
    void setNotificationNode(cocos2d::CCNode*);
    void setOpenGLView(cocos2d::CCEGLView*);
    void setProjection(cocos2d::ccDirectorProjection);
    void setSceneReference(cocos2d::CCScene*);
    void setSmoothFix(bool);
    void setSmoothFixCheck(bool);
    void setViewport() = imac 0x470d60, m1 0x3dfc30;

    // CCDirector(cocos2d::CCDirector const&);
    // CCDirector();
    void applySmoothFix();
    void calculateDeltaTime();
    void calculateMPF();
    void checkSceneReference();
    cocos2d::CCPoint convertToGL(cocos2d::CCPoint const&) = imac 0x470e50, m1 0x3dfd04;
    cocos2d::CCPoint convertToUI(cocos2d::CCPoint const&);
    void createStatsLabel();
    void drawScene() = m1 0x3deef0;
    void end();
    bool isDisplayStats();
    bool isNextDeltaTimeZero();
    bool isPaused();
    bool isSendCleanupToScene();
    int levelForSceneInStack(cocos2d::CCScene*);
    void pause();
    void popScene();
    bool popSceneWithTransition(float, cocos2d::PopTransition) = imac 0x4714c0, m1 0x3e02e8;
    void popToRootScene();
    void popToSceneInStack(cocos2d::CCScene*);
    void popToSceneStackLevel(int);
    void purgeCachedData();
    void purgeDirector() = imac 0x471780;
    bool pushScene(cocos2d::CCScene*) = imac 0x471230, m1 0x3e0034;
    void removeStatsLabel() = imac 0x471990;
    bool replaceScene(cocos2d::CCScene*) = imac 0x4712e0, m1 0x3e00fc;
    void resetSmoothFixCounter();
    void reshapeProjection(cocos2d::CCSize const&);
    void resume() = imac 0x471910;
    void runWithScene(cocos2d::CCScene*) = imac 0x471190;
    int sceneCount();
    void setupScreenScale(cocos2d::CCSize, cocos2d::CCSize, cocos2d::TextureQuality);
    void showFPSLabel();
    void showStats();
    void toggleShowFPS(bool, gd::string, cocos2d::CCPoint) = imac 0x470800;
    void updateContentScale(cocos2d::TextureQuality);
    void updateScreenScale(cocos2d::CCSize);
    void willSwitchToScene(cocos2d::CCScene*) = imac 0x471140, m1 0x3dff18;

    virtual bool init() = imac 0x46f630, m1 0x3de7f4;
    virtual cocos2d::CCScheduler* getScheduler();
    virtual void setScheduler(cocos2d::CCScheduler*) = imac 0x471ad0;
    virtual cocos2d::CCActionManager* getActionManager();
    virtual void setActionManager(cocos2d::CCActionManager*) = imac 0x471b20;
    virtual cocos2d::CCTouchDispatcher* getTouchDispatcher();
    virtual void setTouchDispatcher(cocos2d::CCTouchDispatcher*) = imac 0x471b70;
    virtual cocos2d::CCKeypadDispatcher* getKeypadDispatcher();
    virtual void setKeypadDispatcher(cocos2d::CCKeypadDispatcher*) = imac 0x471c60;
    virtual cocos2d::CCKeyboardDispatcher* getKeyboardDispatcher();
    virtual void setKeyboardDispatcher(cocos2d::CCKeyboardDispatcher*) = imac 0x471bc0;
    virtual cocos2d::CCMouseDispatcher* getMouseDispatcher();
    virtual void setMouseDispatcher(cocos2d::CCMouseDispatcher*) = imac 0x471c10;
    virtual cocos2d::CCAccelerometer* getAccelerometer();
    virtual void setAccelerometer(cocos2d::CCAccelerometer*) = imac 0x471cb0, m1 0x3e09e4;
    virtual float getDeltaTime();
}

[[link(win, android)]]
class cocos2d::CCNodeRGBA {
    static cocos2d::CCNodeRGBA* create() = ios inline {
    	auto pRet = new cocos2d::CCNodeRGBA();

    	if (pRet->init())
    	{
    		pRet->autorelease();
    		return pRet;
    	}

    	delete pRet;
    	return nullptr;
    }

    // CCNodeRGBA(cocos2d::CCNodeRGBA const&);
    CCNodeRGBA();
    ~CCNodeRGBA();

    virtual bool init() = imac 0x2630a0, m1 0x20ecf0;

    virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x20f0b0;
    virtual cocos2d::_ccColor3B const& getColor();
    virtual cocos2d::_ccColor3B const& getDisplayedColor();
    virtual unsigned char getDisplayedOpacity();
    virtual unsigned char getOpacity();
    virtual void setOpacity(unsigned char) = m1 0x20ed88;
    virtual bool isCascadeColorEnabled();
    virtual void setCascadeColorEnabled(bool);
    virtual void updateDisplayedColor(cocos2d::_ccColor3B const&);
    virtual bool isCascadeOpacityEnabled();
    virtual void setCascadeOpacityEnabled(bool);
    virtual void updateDisplayedOpacity(unsigned char) = m1 0x20eee0;
}

[[link(win, android)]]
class cocos2d::CCSequence {
    static cocos2d::CCSequence* create(cocos2d::CCArray*) = m1 0x32f72c;
    // static cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, ...) = imac 0x3b8aa0, m1 0x33d1fc;
    static cocos2d::CCSequence* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3a24d0, m1 0x32fe54;
    static cocos2d::CCSequence* createWithVariableList(cocos2d::CCFiniteTimeAction*, va_list) = imac 0x3a26b0, m1 0x32f52c;

    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3a25a0, m1 0x32f4a0;

    // CCSequence(cocos2d::CCSequence const&);
    // CCSequence();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x32f938;
    virtual void update(float) = imac 0x3a2e80, m1 0x32fbd0;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x32fb48;
    virtual void stop() = imac 0x3a2e50, m1 0x32fb90;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a3020, m1 0x32fd74;
}

[[link(win, android)]]
class cocos2d::CCSprite {
    static cocos2d::CCSprite* create(char const*);
    static cocos2d::CCSprite* create(char const*, cocos2d::CCRect const&);
    static cocos2d::CCSprite* create();
    static cocos2d::CCSprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*);
    static cocos2d::CCSprite* createWithSpriteFrameName(char const*) = m1 0x2213c4;
    static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*);
    static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);

    unsigned int getAtlasIndex();
    float getBlVertexMod() const;
    float getBrVertexMod() const;
    bool getDontDraw() const;
    cocos2d::CCPoint const& getOffsetPosition();
    cocos2d::_ccV3F_C4B_T2F_Quad getQuad();
    cocos2d::CCTextureAtlas* getTextureAtlas();
    cocos2d::CCRect const& getTextureRect();
    float getTlVertexMod() const;
    float getTrVertexMod() const;
    cocos2d::CCPoint const& getUnflippedOffsetPosition();
    bool getUseVertexMod() const;

    void setAtlasIndex(unsigned int);
    void setBlVertexMod(float);
    void setBrVertexMod(float);
    void setDontDraw(bool);
    void setFlipX(bool);
    void setFlipY(bool);
    void setTextureAtlas(cocos2d::CCTextureAtlas*);
    void setTlVertexMod(float);
    void setTrVertexMod(float);
    void setUseVertexMod(bool);

    // CCSprite(cocos2d::CCSprite const&);
    CCSprite();
    ~CCSprite();
    bool isFlipX();
    bool isFlipY();
    bool isTextureRectRotated();
    void updateColor();

    virtual bool init() = imac 0x276850;
    virtual void setVertexZ(float) = imac 0x2782c0;
    virtual void setScaleX(float) = imac 0x278160;
    virtual void setScaleY(float) = imac 0x2781d0;
    virtual void setScale(float) = imac 0x278240, m1 0x222c24;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x277eb0, m1 0x222868;
    virtual void setSkewX(float) = imac 0x278080;
    virtual void setSkewY(float) = imac 0x2780f0;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x278330;
    virtual void setVisible(bool) = imac 0x2783b0;
    virtual void setRotation(float) = imac 0x277f30;
    virtual void setRotationX(float) = imac 0x277fa0;
    virtual void setRotationY(float) = imac 0x278010;
    virtual void ignoreAnchorPointForPosition(bool) = imac 0x2783a0;
    virtual void addChild(cocos2d::CCNode*) = imac 0x2779f0;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x277a00;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x277a10, m1 0x2223a4;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x277b50, m1 0x22250c;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x277b90, m1 0x222554;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x277ad0, m1 0x222478;
    virtual void sortAllChildren() = imac 0x277c50, m1 0x222608;
    virtual void draw() = imac 0x2778d0, m1 0x222284;
    virtual void updateTransform() = imac 0x277410, m1 0x221ed0;
    virtual bool initWithTexture(cocos2d::CCTexture2D*) = imac 0x276a10, m1 0x221650;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = imac 0x276870, m1 0x2214ec;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x276b70;
    virtual bool initWithSpriteFrameName(char const*) = imac 0x276bc0, m1 0x221828;
    virtual bool initWithFile(char const*) = m1 0x2216cc;
    virtual bool initWithFile(char const*, cocos2d::CCRect const&) = m1 0x221760;
    virtual void setChildColor(cocos2d::_ccColor3B const&);
    virtual void setChildOpacity(unsigned char) = imac 0x278790;
    virtual cocos2d::CCSpriteBatchNode* getBatchNode();
    virtual void setBatchNode(cocos2d::CCSpriteBatchNode*) = imac 0x279180, m1 0x22359c;
    virtual void refreshTextureRect() = imac 0x276dc0, m1 0x2219d4;
    virtual void setTextureRect(cocos2d::CCRect const&) = imac 0x276e50;
    virtual void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&) = imac 0x276e70, m1 0x221a6c;
    virtual void setVertexRect(cocos2d::CCRect const&) = imac 0x2771b0;
    virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = imac 0x278e60, m1 0x223314;
    virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = imac 0x278f30, m1 0x2233e8;
    virtual cocos2d::CCSpriteFrame* displayFrame() = imac 0x278fc0, m1 0x22348c;
    virtual void setDisplayFrameWithAnimationName(char const*, int) = m1 0x223394;
    virtual void setTextureCoords(cocos2d::CCRect const&) = imac 0x2771d0, m1 0x221d08;
    virtual void updateBlendFunc() = m1 0x2235e8;
    virtual void setReorderChildDirtyRecursively() = imac 0x277dd0, m1 0x222788;
    virtual void setDirtyRecursively(bool) = imac 0x277e30, m1 0x2227f0;

    virtual void setOpacity(unsigned char) = imac 0x2785e0, m1 0x222f2c;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x278d10;
    virtual void setColor(cocos2d::_ccColor3B const&) = imac 0x278830, m1 0x2230c8;
    virtual void updateDisplayedColor(cocos2d::_ccColor3B const&);
    virtual void setOpacityModifyRGB(bool) = imac 0x278a50, m1 0x223234;
    virtual bool isOpacityModifyRGB();

    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x279250, m1 0x223640;
    virtual cocos2d::CCTexture2D* getTexture();
}

[[link(win, android)]]
class cocos2d::CCLabelBMFont {
    CCLabelBMFont();

    static cocos2d::CCLabelBMFont* create(char const*, char const*) = imac 0x5bfed0, m1 0x4f58bc;
    static cocos2d::CCLabelBMFont* create(char const*, char const*, float);
    static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment) = imac 0x5bfe20, m1 0x4f5678;
    static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = imac 0x5bfd80, m1 0x4f573c;
    static cocos2d::CCLabelBMFont* create() = ios inline {
    	auto pRet = new CCLabelBMFont();

    	if (pRet && pRet->init())
    	{
    		pRet->autorelease();
    		return pRet;
    	}

    	CC_SAFE_DELETE(pRet);
    	return nullptr;
    }
    static cocos2d::CCLabelBMFont* createBatched(char const*, char const*, cocos2d::CCArray*, int) = imac 0x5c0250, m1 0x4f5c40;
    static void purgeCachedData();

    bool initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = imac 0x5bff80, m1 0x4f5984;

    cocos2d::CCBMFontConfiguration* getConfiguration() const;
    int getExtraKerning() const;
    char const* getFntFile() = imac 0x5c3320;
    bool getIsBatched() const;
    float getLetterPosXLeft(cocos2d::CCSprite*, float, bool);
    float getLetterPosXRight(cocos2d::CCSprite*, float, bool);
    cocos2d::CCArray* getTargetArray() const;

    void setExtraKerning(int);
    void setFntFile(char const*) = imac 0x5c3240, m1 0x4f85a4;
    void setIsBatched(bool);
    void setTargetArray(cocos2d::CCArray*);
    void createFontChars() = imac 0x5c06b0, m1 0x4f6020;
    int kerningAmountForFirst(unsigned short, unsigned short);
    void limitLabelWidth(float, float, float) = imac 0x5c3360, m1 0x4f869c;

    ~CCLabelBMFont();
    virtual bool init() = imac 0x5c0300, m1 0x4f5d08;
    virtual void setScaleX(float);
    virtual void setScaleY(float);
    virtual void setScale(float);
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x5c1a70, m1 0x4f7224;
    virtual void setString(char const*);
    virtual void setString(char const*, bool) = imac 0x5c1000, m1 0x4f6834;
    virtual char const* getString();
    virtual void setCString(char const*);
    virtual void updateLabel() = imac 0x5c1ab0, m1 0x4f7278;
    virtual void setAlignment(cocos2d::CCTextAlignment) = imac 0x5c3180;
    virtual void setWidth(float) = imac 0x5c31a0;
    virtual void setLineBreakWithoutSpace(bool);
    virtual void setString(unsigned short*, bool) = imac 0x5c1080, m1 0x4f68bc;

    virtual void setColor(cocos2d::_ccColor3B const&);
    virtual cocos2d::_ccColor3B const& getColor();
    virtual cocos2d::_ccColor3B const& getDisplayedColor();
    virtual unsigned char getDisplayedOpacity();
    virtual unsigned char getOpacity();
    virtual void setOpacity(unsigned char);
    virtual void setOpacityModifyRGB(bool) = imac 0x5c15d0, m1 0x4f6dc8;
    virtual bool isOpacityModifyRGB();
    virtual bool isCascadeColorEnabled();
    virtual void setCascadeColorEnabled(bool);
    virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = imac 0x5c1850, m1 0x4f7050;
    virtual bool isCascadeOpacityEnabled();
    virtual void setCascadeOpacityEnabled(bool);
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x5c1750, m1 0x4f6f38;

    //purgeCachedData = ios 0x30958c
}

[[link(win, android)]]
class cocos2d::CCActionManager {
    void addAction(cocos2d::CCAction*, cocos2d::CCNode*, bool) = m1 0x1d4dfc;
    void pauseTarget(cocos2d::CCObject*) = imac 0x221b10, m1 0x1d4aec;
    void resumeTarget(cocos2d::CCObject*) = m1 0x1d4be8;
}

[[link(win, android)]]
class cocos2d::CCAnimate {
    static cocos2d::CCAnimate* create(cocos2d::CCAnimation*) = imac 0x3a90d0, m1 0x335390;

    bool initWithAnimation(cocos2d::CCAnimation*);

    cocos2d::CCAnimation* getAnimation() const;
    bool getRecenterChildren() const;
    bool getRecenterFrames() const;

    void setAnimation(cocos2d::CCAnimation*);
    void setRecenterChildren(bool);
    void setRecenterFrames(bool);

    // CCAnimate(cocos2d::CCAnimate const&);
    // CCAnimate();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a9660, m1 0x3357f8;
    virtual void update(float) = imac 0x3a9960, m1 0x335aa4;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3359f8;
    virtual void stop() = imac 0x3a9920, m1 0x335a60;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a9ba0, m1 0x335ca8;
}

[[link(win, android)]]
class cocos2d::CCAnimation {
    // static cocos2d::CCAnimation* create(cocos2d::CCArray*, float);
    static cocos2d::CCAnimation* create(cocos2d::CCArray*, float, unsigned int) = imac 0x284c00;
    static cocos2d::CCAnimation* create();
    static cocos2d::CCAnimation* createWithSpriteFrames(cocos2d::CCArray*, float) = imac 0x284a00;

    bool init();
    bool initWithAnimationFrames(cocos2d::CCArray*, float, unsigned int);
    bool initWithSpriteFrames(cocos2d::CCArray*, float);

    float getDelayPerUnit() const;
    cocos2d::CCArray* getFrames() const;
    unsigned int getLoops() const;
    bool getRestoreOriginalFrame() const;
    float getTotalDelayUnits() const;

    void setDelayPerUnit(float);
    void setFrames(cocos2d::CCArray*);
    void setLoops(unsigned int);
    void setRestoreOriginalFrame(bool);

    // CCAnimation(cocos2d::CCAnimation const&);
    // CCAnimation();
    void addSpriteFrame(cocos2d::CCSpriteFrame*);
    void addSpriteFrameWithFileName(char const*);
    void addSpriteFrameWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x285040, m1 0x22e720;
    virtual float getDuration() = imac 0x285030, m1 0x22e714;
}

[[link(win, android)]]
class cocos2d::CCApplication {
    static cocos2d::CCApplication* sharedApplication();
    virtual int run();
    virtual void openURL(char const*) = imac 0x315dc0, m1 0x2aba20;
}

[[link(win, android)]]
class cocos2d::CCArray {
    // static cocos2d::CCArray* create(cocos2d::CCObject*, ...);
    // static cocos2d::CCArray* create() = imac 0x72cc40, m1 0x63f894, ios 0x2599ec;
    // static cocos2d::CCArray* createWithArray(cocos2d::CCArray*) = m1 0x63faac;
    // static cocos2d::CCArray* createWithCapacity(unsigned int) = ios 0x259b9c, imac 0x72cf50;
    static cocos2d::CCArray* createWithContentsOfFile(char const*);
    static cocos2d::CCArray* createWithContentsOfFileThreadSafe(char const*);
    static cocos2d::CCArray* createWithObject(cocos2d::CCObject*);

    bool init() = imac 0x7094e0;
    bool initWithArray(cocos2d::CCArray*);
    // bool initWithCapacity(unsigned int) = imac 0x72cbb0;
    bool initWithObject(cocos2d::CCObject*);
    // bool initWithObjects(cocos2d::CCObject*, ...);

    // CCArray(cocos2d::CCArray const&);
    // CCArray(unsigned int);
    // CCArray();
    // void addObject(cocos2d::CCObject*) = imac 0x72cf20, m1 0x63faa4, ios 0x259b6c;
    void addObjectNew(cocos2d::CCObject*);
    // void addObjectsFromArray(cocos2d::CCArray*) = ios 0x259BFC;
    unsigned int capacity() const;
    // bool containsObject(cocos2d::CCObject*) const = ios 0x259CC4;
    // unsigned int count() const = imac 0x72d2a0, m1 0x63fd7c, ios 0x259c08;
    void exchangeObject(cocos2d::CCObject*, cocos2d::CCObject*);
    void exchangeObjectAtIndex(unsigned int, unsigned int);
    // void fastRemoveObject(cocos2d::CCObject*) = ios 0x259CE8;
    void fastRemoveObjectAtIndex(unsigned int);
    void fastRemoveObjectAtIndexChild(unsigned int);
    void fastRemoveObjectAtIndexNew(unsigned int);
    unsigned int indexOfObject(cocos2d::CCObject*) const;
    void insertObject(cocos2d::CCObject*, unsigned int);
    bool isEqualToArray(cocos2d::CCArray*);
    // cocos2d::CCObject* lastObject() = imac 0x72d310;
    // cocos2d::CCObject* objectAtIndex(unsigned int) = imac 0x72d2f0, m1 0x63fdac, ios 0x259c24;
    cocos2d::CCObject* randomObject();
    void recreateNewIndexes();
    void reduceMemoryFootprint();
    // void removeAllObjects() = m1 0x63ff34, ios 0x259d00;
    // void removeLastObject(bool) = imac 0x72d440;
    void removeObject(cocos2d::CCObject*, bool);
    // void removeObjectAtIndex(unsigned int, bool) = m1 0x63ff18, ios 0x259CF0;
    void removeObjectAtIndexChild(unsigned int, bool);
    void removeObjectsInArray(cocos2d::CCArray*);
    void replaceObjectAtIndex(unsigned int, cocos2d::CCObject*, bool);
    void reverseObjects();
    cocos2d::CCString* stringAtIndex(unsigned int);

    // virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios 0x259e0c, imac 0x70a260, m1 0x629894;
    // virtual void acceptVisitor(cocos2d::CCDataVisitor&) = ios 0x259ed4, imac 0x70a360, m1 0x629994;
}

[[link(win, android)]]
class cocos2d::CCDictionary {
    static cocos2d::CCDictionary* create() = m1 0x268c0c;
    static cocos2d::CCDictionary* createWithContentsOfFile(char const*);
    static cocos2d::CCDictionary* createWithContentsOfFileThreadSafe(char const*);
    static cocos2d::CCDictionary* createWithDictionary(cocos2d::CCDictionary*);

    gd::string getFirstKey();

    void setObject(cocos2d::CCObject*, gd::string const&) = imac 0x2fa5f0, m1 0x2935bc;
    void setObject(cocos2d::CCObject*, intptr_t) = imac 0x2fa5f0, m1 0x2935bc;
    void setObjectUnSafe(cocos2d::CCObject*, gd::string const&);
    //void setObjectUnSafe(cocos2d::CCObject*, int);

    // CCDictionary(cocos2d::CCDictionary const&);
    // CCDictionary() = ios 0x42b75c;
    cocos2d::CCArray* allKeys() = imac 0x2f9d40, m1 0x292450;
    cocos2d::CCArray* allKeysForObject(cocos2d::CCObject*);
    char const* charForKey(gd::string const&);
    unsigned int count() = imac 0x2f9d20, m1 0x292434;
    cocos2d::CCObject* objectForKey(gd::string const&) = imac 0x2fa0b0, m1 0x29288c;
    cocos2d::CCObject* objectForKey(intptr_t) = imac 0x2fa440, m1 0x292b98;
    cocos2d::CCObject* randomObject();
    void removeAllObjects();
    void removeObjectForElememt(cocos2d::CCDictElement*) = imac 0x2fb910;
    void removeObjectForKey(gd::string const&) = imac 0x2fb510, m1 0x293a98;
    void removeObjectForKey(intptr_t) = imac 0x2fba60, m1 0x293f08;
    void removeObjectsForKeys(cocos2d::CCArray*);
    cocos2d::CCString const* valueForKey(gd::string const&) = imac 0x2fa030;
    cocos2d::CCString const* valueForKey(intptr_t) = imac 0x2fa570;
    bool writeToFile(char const*);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x2fbcf0, m1 0x294174;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&);
}

[[link(win, android)]]
class cocos2d::CCRenderTexture {
    static cocos2d::CCRenderTexture* create(int, int) = imac 0x5ddfa0, m1 0x510d58;
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat) = imac 0x5dda60, m1 0x510844;
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = imac 0x5ddb30;

    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat);
    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = m1 0x510a0c;

    cocos2d::_ccColor4F const& getClearColor() const;
    float getClearDepth() const;
    unsigned int getClearFlags() const;
    int getClearStencil() const;

    void setAutoDraw(bool);
    void setClearColor(cocos2d::_ccColor4F const&);
    void setClearDepth(float);
    void setClearFlags(unsigned int);
    void setClearStencil(float);

    // CCRenderTexture(cocos2d::CCRenderTexture const&);
    CCRenderTexture();
    void begin() = imac 0x5de080, m1 0x510e4c;
    void beginWithClear(float, float, float, float, float, int, unsigned int) = imac 0x5de350, m1 0x5110d8;
    void beginWithClear(float, float, float, float) = imac 0x5de2b0, m1 0x511038;
    void beginWithClear(float, float, float, float, float) = imac 0x5de4f0, m1 0x511220;
    void beginWithClear(float, float, float, float, float, int) = imac 0x5de5d0;
    void clear(float, float, float, float);
    void clearDepth(float);
    void clearStencil(int);
    void end() = m1 0x5112f8;
    void endToLua();
    bool isAutoDraw() const;
    void listenToBackground(cocos2d::CCObject*);
    void listenToForeground(cocos2d::CCObject*);
    cocos2d::CCImage* newCCImage(bool) = m1 0x5117a4;
    bool saveToFile(char const*);
    bool saveToFile(char const*, cocos2d::eImageFormat);
    void updateInternalScale(float, float);

    virtual void draw() = imac 0x5de890, m1 0x511588;
    virtual void visit() = m1 0x5114fc;
    virtual cocos2d::CCSprite* getSprite();
    virtual void setSprite(cocos2d::CCSprite*);
}

[[link(win, android)]]
class cocos2d::CCRepeat {
    static cocos2d::CCRepeat* create(cocos2d::CCFiniteTimeAction*, unsigned int) = imac 0x3a3110;

    bool initWithAction(cocos2d::CCFiniteTimeAction*, unsigned int);

    cocos2d::CCFiniteTimeAction* getInnerAction();

    void setInnerAction(cocos2d::CCFiniteTimeAction*);

    // CCRepeat(cocos2d::CCRepeat const&);
    // CCRepeat();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x32ffdc;
    virtual void update(float) = imac 0x3a3540, m1 0x330274;
    virtual bool isDone() = imac 0x3a3670, m1 0x3303e4;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a34c0, m1 0x3301ec;
    virtual void stop();
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a3680, m1 0x3303f4;
}

[[link(win, android)]]
class cocos2d::CCRepeatForever {
    static cocos2d::CCRepeatForever* create(cocos2d::CCActionInterval*) = m1 0x3304dc;

    bool initWithAction(cocos2d::CCActionInterval*);

    cocos2d::CCActionInterval* getInnerAction();

    void setInnerAction(cocos2d::CCActionInterval*);

    // CCRepeatForever(cocos2d::CCRepeatForever const&);
    // CCRepeatForever();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a3800, m1 0x330578;
    virtual bool isDone();
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void step(float) = imac 0x3a3920, m1 0x330690;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a39a0, m1 0x330730;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInT {
    static cocos2d::CCTransitionMoveInT* create(float, cocos2d::CCScene*);

    // CCTransitionMoveInT(cocos2d::CCTransitionMoveInT const&);
    // CCTransitionMoveInT();
}

[[link(win, android)]]
class cocos2d::CCTransitionFade {
    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*) = m1 0xc00b4;
    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&) = imac 0xd8ff0;

    // CCTransitionFade(cocos2d::CCTransitionFade const&);
    // CCTransitionFade();

    virtual void onEnter() = imac 0xd9180, m1 0xc1318;
    virtual void onExit() = imac 0xd92b0, m1 0xc1454;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xd9160, m1 0xc12f0;
    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&) = imac 0xd9110, m1 0xc12ac;
}

[[link(win, android)]]
class cocos2d::CCTransitionRotoZoom {
    static cocos2d::CCTransitionRotoZoom* create(float, cocos2d::CCScene*);

    // CCTransitionRotoZoom(cocos2d::CCTransitionRotoZoom const&);
    // CCTransitionRotoZoom();

    virtual void onEnter() = imac 0xd56c0, m1 0xbdccc;
}

[[link(win, android)]]
class cocos2d::CCTransitionScene {
    // CCTransitionScene(cocos2d::CCTransitionScene const&);
    // CCTransitionScene();

    ~CCTransitionScene();

    virtual void onEnter() = imac 0xd5240;
    virtual void onExit() = imac 0xd5290;
    virtual void cleanup() = imac 0xd52f0, m1 0xbd92c;
    virtual void draw() = imac 0xd4ff0, m1 0xbd638;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xd4f20, m1 0xbd540;
    virtual void sceneOrder();
}

[[link(win, android)]]
class cocos2d::CCBlink {
    static cocos2d::CCBlink* create(float, unsigned int) = imac 0x3a7800, m1 0x333d14;

    bool initWithDuration(float, unsigned int);

    // CCBlink(cocos2d::CCBlink const&);
    // CCBlink();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a7960, m1 0x333e4c;
    virtual void update(float) = imac 0x3a7a70, m1 0x333f44;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x333e08;
    virtual void stop() = imac 0x3a78f0;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a7af0, m1 0x333fcc;
}

[[link(win, android)]]
class cocos2d::CCCallFunc {
    static cocos2d::CCCallFunc* create(cocos2d::CCObject*, cocos2d::SEL_CallFunc) = imac 0x7972a0, m1 0x6aa418;
}

[[link(win, android)]]
class cocos2d::CCCallFuncN {
    static cocos2d::CCCallFuncN* create(cocos2d::CCObject*, cocos2d::SEL_CallFuncN) = imac 0x7976c0, m1 0x6aa86c;
}

[[link(win, android)]]
class cocos2d::CCCallFuncO {
    static cocos2d::CCCallFuncO* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*) = imac 0x797da0, m1 0x6aae4c;

    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*);

    cocos2d::CCObject* getObject();

    void setObject(cocos2d::CCObject*);

    // CCCallFuncO(cocos2d::CCCallFuncO const&);
    // CCCallFuncO();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x797ef0, m1 0x6aaf78;
    virtual void execute() = imac 0x797d60, m1 0x6aae18;
}

[[link(win, android)]]
class cocos2d::CCClippingNode : cocos2d::CCNode {
    static cocos2d::CCClippingNode* create() = ios inline, imac 0x708da0 {
    	auto pRet = new CCClippingNode();

    	if (pRet->init())
    	{
    		pRet->autorelease();
    		return pRet;
    	}

    	delete pRet;
    	return nullptr;
    }
    static cocos2d::CCClippingNode* create(cocos2d::CCNode* stencil) = ios inline {
    	auto pRet = new CCClippingNode();

    	if (pRet->init(stencil))
    	{
    		pRet->autorelease();
    		return pRet;
    	}

    	delete pRet;
    	return nullptr;
    }

    	CCClippingNode() = ios inline {
    	m_pStencil = nullptr;
    	m_fAlphaThreshold = 0.0f;
    	m_bInverted = false;
    }
    virtual ~CCClippingNode() = ios inline {
    	CC_SAFE_RELEASE(m_pStencil);
    }

    // in normal cocos this is just a static func at the top of the file: https://github.com/cocos2d/cocos2d-x/blob/v2/cocos2dx/misc_nodes/CCClippingNode.cpp#L40
    inline void setProgram(CCNode* n, CCGLProgram* p) {
        n->setShaderProgram(p);
        if (!n->getChildren()) return;

        CCObject* pObj = NULL;
        CCARRAY_FOREACH(n->getChildren(), pObj)
        {
            // setProgram((CCNode*)pObj, p); // this causes build to fail
        }
    }

    virtual bool init() = ios inline {
    	return init(nullptr);
    }

    virtual bool init(cocos2d::CCNode* pStencil) = ios inline, m1 0x62876c {
    	CC_SAFE_RELEASE(m_pStencil);
    	m_pStencil = pStencil;
    	CC_SAFE_RETAIN(m_pStencil);

    	m_fAlphaThreshold = 1;
    	m_bInverted = false;
    	// get (only once) the number of bits of the stencil buffer
    	static bool once = true;

    	if (once)
    	{
    		//glGetIntegerv(GL_STENCIL_BITS, &g_sStencilBits);
    		//if (g_sStencilBits <= 0)
    		//{
    		//	CCLOG("Stencil buffer is not enabled.");
    		//}
    		once = false;
    	}

    	return true;
    }

    virtual void onEnter() = ios inline {
    	CCNode::onEnter();
    		m_pStencil->onEnter();
    }
    virtual void onEnterTransitionDidFinish() = ios inline {
    	CCNode::onEnterTransitionDidFinish();
    		m_pStencil->onEnterTransitionDidFinish();
    }
    virtual void onExit() = ios inline {
    	m_pStencil->onExit();
    		CCNode::onExit();
    }
    virtual void onExitTransitionDidStart() = ios inline {
    	m_pStencil->onExitTransitionDidStart();
    		CCNode::onExitTransitionDidStart();
    }

    virtual void visit() = ios inline, imac 0x709030, m1 0x628894 {
    	// if stencil buffer disabled
    	//if (g_sStencilBits < 1)
    	//{
    	//	// draw everything, as if there where no stencil
    	//	CCNode::visit();
    	//	return;
    	//}

    	// return fast (draw nothing, or draw everything if in inverted mode) if:
    	// - nil stencil node
    	// - or stencil node invisible:
    	if (!m_pStencil || !m_pStencil->isVisible())
    	{
    		if (m_bInverted)
    		{
    			// draw everything
    			CCNode::visit();
    		}
    		return;
    	}

    	// store the current stencil layer (position in the stencil buffer),
    	// this will allow nesting up to n CCClippingNode,
    	// where n is the number of bits of the stencil buffer.
    	static GLint layer = -1;

    	// all the _stencilBits are in use?
    	if (false) // this definetly wont break anything :clueless: //if (layer + 1 == g_sStencilBits)
    	{
    		// warn once
    		static bool once = true;
    		if (once)
    		{
    			char warning[200] = {0};
    			//snprintf(warning, sizeof(warning), "Nesting more than %d stencils is not supported. Everything will be drawn without stencil for this node and its childs.", g_sStencilBits);
    			CCLOG("%s", warning);

    			once = false;
    		}
    		// draw everything, as if there where no stencil
    		CCNode::visit();
    		return;
    	}

    	///////////////////////////////////
    	// INIT

    	// increment the current layer
    	layer++;

    	// mask of the current layer (ie: for layer 3: 00000100)
    	GLint mask_layer = 0x1 << layer;
    	// mask of all layers less than the current (ie: for layer 3: 00000011)
    	GLint mask_layer_l = mask_layer - 1;
    	// mask of all layers less than or equal to the current (ie: for layer 3: 00000111)
    	GLint mask_layer_le = mask_layer | mask_layer_l;

    	// manually save the stencil state
    	GLboolean currentStencilEnabled = GL_FALSE;
    	GLuint currentStencilWriteMask = ~0;
    	GLenum currentStencilFunc = GL_ALWAYS;
    	GLint currentStencilRef = 0;
    	GLuint currentStencilValueMask = ~0;
    	GLenum currentStencilFail = GL_KEEP;
    	GLenum currentStencilPassDepthFail = GL_KEEP;
    	GLenum currentStencilPassDepthPass = GL_KEEP;
    	currentStencilEnabled = glIsEnabled(GL_STENCIL_TEST);
    	glGetIntegerv(GL_STENCIL_WRITEMASK, (GLint *)&currentStencilWriteMask);
    	glGetIntegerv(GL_STENCIL_FUNC, (GLint *)&currentStencilFunc);
    	glGetIntegerv(GL_STENCIL_REF, &currentStencilRef);
    	glGetIntegerv(GL_STENCIL_VALUE_MASK, (GLint *)&currentStencilValueMask);
    	glGetIntegerv(GL_STENCIL_FAIL, (GLint *)&currentStencilFail);
    	glGetIntegerv(GL_STENCIL_PASS_DEPTH_FAIL, (GLint *)&currentStencilPassDepthFail);
    	glGetIntegerv(GL_STENCIL_PASS_DEPTH_PASS, (GLint *)&currentStencilPassDepthPass);

    	// enable stencil use
    	glEnable(GL_STENCIL_TEST);
    	// check for OpenGL error while enabling stencil test
    	CHECK_GL_ERROR_DEBUG();

    	// all bits on the stencil buffer are readonly, except the current layer bit,
    	// this means that operation like glClear or glStencilOp will be masked with this value
    	glStencilMask(mask_layer);

    	//glClear(GL_STENCIL_BUFFER_BIT);
    	// manually save the depth test state
    	//GLboolean currentDepthTestEnabled = GL_TRUE;
    	GLboolean currentDepthWriteMask = GL_TRUE;
    	//currentDepthTestEnabled = glIsEnabled(GL_DEPTH_TEST);
    	glGetBooleanv(GL_DEPTH_WRITEMASK, &currentDepthWriteMask);

    	// disable depth test while drawing the stencil
    	//glDisable(GL_DEPTH_TEST);
    	// disable update to the depth buffer while drawing the stencil,
    	// as the stencil is not meant to be rendered in the real scene,
    	// it should never prevent something else to be drawn,
    	// only disabling depth buffer update should do
    	glDepthMask(GL_FALSE);

    	///////////////////////////////////
    	// CLEAR STENCIL BUFFER

    	// manually clear the stencil buffer by drawing a fullscreen rectangle on it
    	// setup the stencil test func like this:
    	// for each pixel in the fullscreen rectangle
    	//     never draw it into the frame buffer
    	//     if not in inverted mode: set the current layer value to 0 in the stencil buffer
    	//     if in inverted mode: set the current layer value to 1 in the stencil buffer
    	glStencilFunc(GL_NEVER, mask_layer, mask_layer);
    	glStencilOp(!m_bInverted ? GL_ZERO : GL_REPLACE, GL_KEEP, GL_KEEP);

    	// draw a fullscreen solid rectangle to clear the stencil buffer
    	//ccDrawSolidRect(CCPointZero, ccpFromSize([[CCDirector sharedDirector] winSize]), ccc4f(1, 1, 1, 1));
    	ccDrawSolidRect(CCPointZero, ccpFromSize(CCDirector::sharedDirector()->getWinSize()), ccc4f(1, 1, 1, 1));

    	///////////////////////////////////
    	// DRAW CLIPPING STENCIL

    	// setup the stencil test func like this:
    	// for each pixel in the stencil node
    	//     never draw it into the frame buffer
    	//     if not in inverted mode: set the current layer value to 1 in the stencil buffer
    	//     if in inverted mode: set the current layer value to 0 in the stencil buffer
    	glStencilFunc(GL_NEVER, mask_layer, mask_layer);
    	glStencilOp(!m_bInverted ? GL_REPLACE : GL_ZERO, GL_KEEP, GL_KEEP);

    	// enable alpha test only if the alpha threshold < 1,
    	// indeed if alpha threshold == 1, every pixel will be drawn anyways
    #if (CC_TARGET_PLATFORM == CC_PLATFORM_MAC || CC_TARGET_PLATFORM == CC_PLATFORM_WIN32 || CC_TARGET_PLATFORM == CC_PLATFORM_LINUX)
    	GLboolean currentAlphaTestEnabled = GL_FALSE;
    	GLenum currentAlphaTestFunc = GL_ALWAYS;
    	GLclampf currentAlphaTestRef = 1;
    #endif
    	if (m_fAlphaThreshold < 1) {
    #if (CC_TARGET_PLATFORM == CC_PLATFORM_MAC || CC_TARGET_PLATFORM == CC_PLATFORM_WIN32 || CC_TARGET_PLATFORM == CC_PLATFORM_LINUX)
    		// manually save the alpha test state
    		currentAlphaTestEnabled = glIsEnabled(GL_ALPHA_TEST);
    		glGetIntegerv(GL_ALPHA_TEST_FUNC, (GLint *)&currentAlphaTestFunc);
    		glGetFloatv(GL_ALPHA_TEST_REF, &currentAlphaTestRef);
    		// enable alpha testing
    		glEnable(GL_ALPHA_TEST);
    		// check for OpenGL error while enabling alpha test
    		CHECK_GL_ERROR_DEBUG();
    		//pixel will be drawn only if greater than an alpha threshold
    		glAlphaFunc(GL_GREATER, m_fAlphaThreshold);
    #else
    		// since glAlphaTest do not exists in OES, use a shader that writes
    		// pixel only if greater than an alpha threshold
    		CCGLProgram *program = CCShaderCache::sharedShaderCache()->programForKey(kCCShader_PositionTextureColorAlphaTest);
    		GLint alphaValueLocation = glGetUniformLocation(program->getProgram(), kCCUniformAlphaTestValue);
    		// set our alphaThreshold
    		program->use();
    		program->setUniformLocationWith1f(alphaValueLocation, m_fAlphaThreshold);
    		// we need to recursively apply this shader to all the nodes in the stencil node
    		// XXX: we should have a way to apply shader to all nodes without having to do this
    		// setProgram(m_pStencil, program); // this causes fail

    #endif
    	}

    	// draw the stencil node as if it was one of our child
    	// (according to the stencil test func/op and alpha (or alpha shader) test)
    	kmGLPushMatrix();
    	transform();
    	m_pStencil->visit();
    	kmGLPopMatrix();

    	// restore alpha test state
    	if (m_fAlphaThreshold < 1)
    	{
    #if (CC_TARGET_PLATFORM == CC_PLATFORM_MAC || CC_TARGET_PLATFORM == CC_PLATFORM_WIN32 || CC_TARGET_PLATFORM == CC_PLATFORM_LINUX)
    		// manually restore the alpha test state
    		glAlphaFunc(currentAlphaTestFunc, currentAlphaTestRef);
    		if (!currentAlphaTestEnabled)
    		{
    			glDisable(GL_ALPHA_TEST);
    		}
    #else
    		// XXX: we need to find a way to restore the shaders of the stencil node and its childs
    #endif
    	}
    }

    cocos2d::CCNode* getStencil() const = ios inline {
    	return m_pStencil;
    }
    void setStencil(cocos2d::CCNode* pStencil) = ios inline {
    	CC_SAFE_RELEASE(m_pStencil);
    	m_pStencil = pStencil;
    	CC_SAFE_RETAIN(m_pStencil);
    }

    float getAlphaThreshold() const = ios inline {
    	return m_fAlphaThreshold;
    }
    void setAlphaThreshold(float fAlphaThreshold) = ios inline {
    	m_fAlphaThreshold = fAlphaThreshold;
    }

    bool isInverted() const = ios inline {
    	return m_bInverted;
    }
    void setInverted(bool bInverted) = ios inline {
    	m_bInverted = bInverted;
    }
}

[[link(win, android)]]
class cocos2d::CCDrawNode {
    static cocos2d::CCDrawNode* create();

    cocos2d::_ccBlendFunc getBlendFunc() const;

    void setBlendFunc(cocos2d::_ccBlendFunc const&) = imac 0x5fb270;

    // CCDrawNode(cocos2d::CCDrawNode const&);
    CCDrawNode();
    ~CCDrawNode();
    void clear() = imac 0x5fb240;
    void drawCircle(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&, unsigned int) = imac 0x5fb090, m1 0x529f50;
    void drawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&);
    void drawDot(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&) = imac 0x5f99d0, m1 0x528ae8;
    bool drawLines(cocos2d::CCPoint*, unsigned int, float, cocos2d::_ccColor4F const&) = imac 0x5fb010, m1 0x529ed0;
    bool drawPolygon(cocos2d::CCPoint*, unsigned int, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&);
    void drawPreciseCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&) = imac 0x5f9bb0, m1 0x528ce8;
    bool drawRect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&) = imac 0x5faee0, m1 0x529d94;
    void drawSegment(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&) = imac 0x5fa890, m1 0x5298c0;
    void ensureCapacity(unsigned int) = imac 0x5f95c0, m1 0x528728;
    void listenBackToForeground(cocos2d::CCObject*) = imac 0x5fb280;
    void render() = imac 0x5f9770, m1 0x5288b4;

    virtual bool init() = imac 0x5f9610, m1 0x52877c;
    virtual void draw() = m1 0x52893c;
}

[[link(win, android)]]
class cocos2d::CCSpriteBatchNode {
    static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int);

    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x165a10, m1 0x132e04;

    CCSpriteBatchNode();
    ~CCSpriteBatchNode();

    virtual bool init() = imac 0x165c90, m1 0x13306c;
    virtual void addChild(cocos2d::CCNode*) = imac 0x166160;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x166170;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x165f00, m1 0x133290;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x1661e0, m1 0x1335ac;
    virtual void removeAllChildrenWithCleanup(bool) = m1 0x133818;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x166180, m1 0x133520;
    virtual void sortAllChildren() = imac 0x166570, m1 0x1338b8;
    virtual void draw() = imac 0x166d50, m1 0x133e58;
    virtual void visit() = imac 0x165e60, m1 0x1331ec;

    virtual void setBlendFunc(cocos2d::_ccBlendFunc);
    virtual cocos2d::_ccBlendFunc getBlendFunc();
    virtual cocos2d::CCTexture2D* getTexture();
    virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x134704;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrame {
    static cocos2d::CCSpriteFrame* create(char const* filename, cocos2d::CCRect const& rect) = ios inline {
    	CCRect rectInPixels = CC_RECT_POINTS_TO_PIXELS( rect );
    	return create(filename, rect, false, CCPointZero, rectInPixels.size);
    }
    static cocos2d::CCSpriteFrame* create(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);
    static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
    static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);

    bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
    bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x344270, m1 0x2d97ac;
    bool initWithTextureFilename(char const* filename, cocos2d::CCRect const& rect) = ios inline {
    	CCRect rectInPixels = CC_RECT_POINTS_TO_PIXELS( rect );
    		return initWithTextureFilename(filename, rectInPixels, false, CCPointZero, rectInPixels.size);
    }
    bool initWithTextureFilename(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x3445a0, m1 0x2d9a18;

    gd::string getFrameName() const = m1 inline, imac inline {
    	return m_strFrameName;
    }
    cocos2d::CCPoint const& getOffset();
    cocos2d::CCPoint const& getOffsetInPixels();
    cocos2d::CCSize const& getOriginalSize();
    cocos2d::CCSize const& getOriginalSizeInPixels();
    cocos2d::CCRect const& getRect();
    cocos2d::CCRect const& getRectInPixels();
    cocos2d::CCTexture2D* getTexture() = imac 0x344d90, m1 0x2da058;

    void setFrameName(gd::string);
    void setOffset(cocos2d::CCPoint const&) = imac 0x344c60, m1 0x2d9f78;
    void setOffsetInPixels(cocos2d::CCPoint const&) = imac 0x344d00, m1 0x2d9fec;
    void setOriginalSize(cocos2d::CCSize const&);
    void setOriginalSizeInPixels(cocos2d::CCSize const&);
    void setRect(cocos2d::CCRect const&) = imac 0x344a90, m1 0x2d9e34;
    void setRectInPixels(cocos2d::CCRect const&) = imac 0x344b70, m1 0x2d9ed0;
    void setRotated(bool);
    void setTexture(cocos2d::CCTexture2D*) = imac 0x344a50, m1 0x2d9df0;

    // CCSpriteFrame(cocos2d::CCSpriteFrame const&);
    // CCSpriteFrame();
    // ~CCSpriteFrame() = ios 0x25de00;

    bool isRotated();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3448f0, m1 0x2d9cd8;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrameCache {
    static cocos2d::CCSpriteFrameCache* sharedSpriteFrameCache() = imac 0x307a40;

    bool init();

    // CCSpriteFrameCache();
    // CCSpriteFrameCache(cocos2d::CCSpriteFrameCache const&);
    void addSpriteFrame(cocos2d::CCSpriteFrame*, char const*);
    void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*);
    void addSpriteFramesWithFile(char const*, char const*);
    void addSpriteFramesWithFile(char const*) = imac 0x308940, m1 0x29f998;
    void addSpriteFramesWithFile(char const*, cocos2d::CCTexture2D*);
    void removeSpriteFrameByName(char const*);
    void removeSpriteFrames();
    void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*);
    void removeSpriteFramesFromFile(char const*);
    void removeSpriteFramesFromTexture(cocos2d::CCTexture2D*) = imac 0x3095d0;
    void removeUnusedSpriteFrames() = imac 0x308df0;
    cocos2d::CCSpriteFrame* spriteFrameByName(char const*) = imac 0x3098e0;
    //purgeSharedSpriteFrameCache = ios 0x3c4dd4
}

[[link(win, android)]]
class cocos2d::CCString {
    static cocos2d::CCString* createWithData(unsigned char const*, unsigned long) = imac 0x7956c0, m1 0x6a8b3c;
    // static cocos2d::CCString* createWithFormat(char const*, ...) = ios 0x278aec;

    char const* getCString() const;
    //createWithContentsOfFile = ios 0x278b74;

    bool boolValue() const = imac 0x7954b0, m1 0x6a8838;
    int intValue() const;
}

[[link(win, android)]]
class cocos2d::CCMenuItem {
    ~CCMenuItem();
    static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3ab790, m1 0x3375e0;
    static cocos2d::CCMenuItem* create() = imac 0x3ab6d0, m1 0x337538;

    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3ab860, m1 0x33769c;

    int getScriptTapHandler();

    void setTarget(cocos2d::CCObject* rec, cocos2d::SEL_MenuHandler selector) = ios inline, imac 0x3abb90, m1 0x337958 {
    	m_pListener = rec;
    	m_pfnSelector = selector;
    }

    // CCMenuItem(cocos2d::CCMenuItem const&);
    // CCMenuItem();
    cocos2d::CCRect rect();

    virtual void activate() = imac 0x3abaa0, m1 0x3378a8;
    virtual void selected() = m1 0x337824;
    virtual void unselected();
    virtual void registerScriptTapHandler(int);
    virtual void unregisterScriptTapHandler();
    virtual bool isEnabled();
    virtual void setEnabled(bool);
    virtual bool isSelected();
}

[[link(win, android)]]
class cocos2d::CCMenuItemSprite {
    bool initWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3acfd0, m1 0x338d28;

    virtual void selected() = imac 0x3ad0c0, m1 0x338e40;
    virtual void unselected() = imac 0x3ad160, m1 0x338ecc;
    virtual void setEnabled(bool) = imac 0x3ad1e0, m1 0x338f4c;
    virtual cocos2d::CCNode* getNormalImage();
    virtual void setNormalImage(cocos2d::CCNode*) = imac 0x3acc20, m1 0x33896c;
    virtual cocos2d::CCNode* getSelectedImage();
    virtual void setSelectedImage(cocos2d::CCNode*) = imac 0x3accf0;
    virtual cocos2d::CCNode* getDisabledImage();
    virtual void setDisabledImage(cocos2d::CCNode*) = imac 0x3acd90;
    virtual void updateImagesVisibility() = imac 0x3ad200, m1 0x338f6c;
}

[[link(win, android)]]
class cocos2d::CCMenu {
    // static cocos2d::CCMenu* create(cocos2d::CCMenuItem*, ...) = ios 0x1e1964, m1 0x6a6d58, imac 0x79e7b0;
    static cocos2d::CCMenu* create() = imac 0x77c950, m1 0x691950;
    static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*) = imac 0x77cb50;
    static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*) = imac 0x77cda0;
    // static cocos2d::CCMenu* createWithItems(cocos2d::CCMenuItem*, char*);

    bool initWithArray(cocos2d::CCArray*);

    void setHandlerPriority(int);

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
    cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*);
    cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*, bool);

    virtual bool init() = imac 0x77cdb0;
    virtual void addChild(cocos2d::CCNode*);
    virtual void addChild(cocos2d::CCNode*, int);
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x77cde0, m1 0x691d24;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x77ce80, m1 0x691dcc;
    virtual void onExit() = imac 0x77ce30, m1 0x691d84;
    virtual void registerWithTouchDispatcher();

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x77cf80, m1 0x691edc;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x77d230, m1 0x6921c4;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x77d150;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x77d1d0;
}

[[link(win, android)]]
class cocos2d::CCRotateBy {
    static cocos2d::CCRotateBy* create(float, float) = imac 0x3a4bb0, m1 0x33167c;
    static cocos2d::CCRotateBy* create(float, float, float);

    bool initWithDuration(float, float);
    bool initWithDuration(float, float, float);

    // CCRotateBy(cocos2d::CCRotateBy const&);
    // CCRotateBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x331818;
    virtual void update(float) = m1 0x331970;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x331918;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a4fa0, m1 0x3319f8;
}

[[link(win, android)]]
class cocos2d::CCRotateTo {
    static cocos2d::CCRotateTo* create(float, float) = imac 0x3a46d0, m1 0x331280;
    static cocos2d::CCRotateTo* create(float, float, float);

    bool initWithDuration(float, float);
    bool initWithDuration(float, float, float);

    // CCRotateTo(cocos2d::CCRotateTo const&);
    // CCRotateTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a48e0, m1 0x331424;
    virtual void update(float) = m1 0x3315f4;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x331514;
}

[[link(win, android)]]
class cocos2d::CCDelayTime {
    static cocos2d::CCDelayTime* create(float);

    // CCDelayTime(cocos2d::CCDelayTime const&);
    // CCDelayTime();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a8b50;
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCTextFieldTTF {
    // CCTextFieldTTF();
    // virtual ~CCTextFieldTTF();

    static CCTextFieldTTF* textFieldWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize);
    static CCTextFieldTTF* textFieldWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize);

    bool initWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize);
    bool initWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize);

    void setDelegate(cocos2d::CCTextFieldDelegate* var);

    virtual void draw() = imac 0x26ac00, m1 0x21632c;
    virtual const cocos2d::ccColor3B& getColorSpaceHolder();
    virtual void setColorSpaceHolder(const cocos2d::ccColor3B& color);
    virtual const char* getPlaceHolder();
    virtual void setPlaceHolder(const char* text) = m1 0x2166bc;
    virtual void setSecureTextEntry(bool value) = imac 0x26b150, m1 0x21682c;
    virtual bool isSecureTextEntry();

    virtual void setString(const char* text) = m1 0x216408;
    virtual const char* getString();

    virtual bool attachWithIME();
    virtual bool detachWithIME();
    virtual bool canAttachWithIME() = imac 0x26a450;
    virtual bool canDetachWithIME() = imac 0x26a4a0;
    virtual void insertText(const char* text, int len, cocos2d::enumKeyCodes keyCode);
    virtual void deleteBackward() = imac 0x26a840, m1 0x215fd4;
    virtual const char* getContentText();
}

[[link(win, android)]]
class cocos2d {
    static cocos2d::CCAffineTransform CCAffineTransformConcat(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&);
    static bool CCAffineTransformEqualToTransform(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&);
    static cocos2d::CCAffineTransform CCAffineTransformInvert(cocos2d::CCAffineTransform const&);
    static cocos2d::CCAffineTransform CCAffineTransformMakeIdentity();
    static cocos2d::CCAffineTransform CCAffineTransformRotate(cocos2d::CCAffineTransform const&, float);
    static cocos2d::CCAffineTransform CCAffineTransformScale(cocos2d::CCAffineTransform const&, float, float);
    static cocos2d::CCAffineTransform CCAffineTransformTranslate(cocos2d::CCAffineTransform const&, float, float);
    static void CCLuaLog(char const*);
    static void CCMessageBox(char const*, char const*);
    static cocos2d::CCPoint CCPointFromString(char const*);
    static void CCProfilingBeginTimingBlock(char const*);
    static void CCProfilingEndTimingBlock(char const*);
    static void CCProfilingResetTimingBlock(char const*);
    static cocos2d::CCRect CCRectApplyAffineTransform(cocos2d::CCRect const&, cocos2d::CCAffineTransform const&);
    static cocos2d::CCRect CCRectFromString(char const*);
    static cocos2d::CCSize CCSizeFromString(char const*);
    static cocos2d::CCBMFontConfiguration* FNTConfigLoadFile(char const*);
    static void FNTConfigRemoveCache();
    static cocos2d::CCAffineTransform __CCAffineTransformMake(float, float, float, float, float, float);
    static cocos2d::CCPoint __CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&);
    static cocos2d::CCSize __CCSizeApplyAffineTransform(cocos2d::CCSize const&, cocos2d::CCAffineTransform const&);
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
    static void ccDrawSolidPoly(cocos2d::CCPoint const*, unsigned int, cocos2d::_ccColor4F);
    static void ccDrawSolidRect(cocos2d::CCPoint origin, cocos2d::CCPoint destination, cocos2d::_ccColor4F color) = ios inline {
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
    static void ccGLBlendResetToCache();
    static void ccGLDeleteProgram(unsigned int);
    static void ccGLDeleteTexture(unsigned int);
    static void ccGLDeleteTextureN(unsigned int, unsigned int);
    static void ccGLEnable(cocos2d::ccGLServerState);
    static void ccGLEnableVertexAttribs(unsigned int);
    static void ccGLInvalidateStateCache();
    static void ccGLUseProgram(unsigned int);
    static void ccPointSize(float);
    static void ccSetProjectionMatrixDirty();
    static bool ccVertexLineIntersect(float, float, float, float, float, float, float, float, float*);
    static void ccVertexLineToPolygon(cocos2d::CCPoint*, float, cocos2d::_ccVertex2F*, unsigned int, unsigned int);
    static gd::vector<unsigned short> cc_utf16_vec_from_utf16_str(unsigned short const*);
    static void cc_utf8_trim_ws(gd::vector<unsigned short>*);
    static int cc_wcslen(unsigned short const*);
    static float ccpAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpAngleSigned(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static cocos2d::CCPoint ccpClamp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static cocos2d::CCPoint ccpCompMult(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpDistance(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static cocos2d::CCPoint ccpForAngle(float);
    static cocos2d::CCPoint ccpFromSize(cocos2d::CCSize const&);
    static bool ccpFuzzyEqual(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
    static cocos2d::CCPoint ccpIntersectPoint(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpLength(cocos2d::CCPoint const&);
    static cocos2d::CCPoint ccpLerp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
    static bool ccpLineIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, float*, float*);
    static cocos2d::CCPoint ccpNormalize(cocos2d::CCPoint const&);
    static cocos2d::CCPoint ccpRotateByAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
    static bool ccpSegmentIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpToAngle(cocos2d::CCPoint const&);
    static char const* cocos2dVersion();
    static float clampf(float, float, float);
}

[[link(win, android)]]
class DS_Dictionary {
    DS_Dictionary() = m1 0x135e9c;
    void addBoolValuesToMapForKey(gd::map<gd::string, bool>&, char const*, bool) = m1 0x13d518;
    void addBoolValuesToMapForKeySpecial(gd::map<gd::string, bool>&, char const*, bool) = m1 0x13d1dc;
    void checkCompatibility();
    gd::string cleanStringWhiteSpace(gd::string const&);
    static void copyFile(char const*, char const*);
    cocos2d::CCObject* decodeObjectForKey(char const*, bool, int);
    gd::vector<gd::string> getAllKeys() = imac 0x16ccb0, m1 0x13935c;
    cocos2d::CCArray* getArrayForKey(char const*, bool) = imac 0x1707b0, m1 0x13c84c;
    bool getBoolForKey(char const*);
    cocos2d::CCDictionary* getDictForKey(char const*, bool) = m1 0x13d6c8;
    float getFloatForKey(char const*) = imac 0x16d4e0, m1 0x139acc;
    unsigned int getIndexOfKey(char const*);
    unsigned int getIndexOfKeyWithClosestAlphaNumericalMatch(char const*);
    int getIntegerForKey(char const*) = imac 0x16d2a0;
    gd::string getKey(unsigned int) = imac 0x16cb80, m1 0x139234;
    unsigned int getNumKeys();
    cocos2d::CCObject* getObjectForKey(char const*) = imac 0x170930, m1 0x13c9b4;
    gd::vector<cocos2d::CCRect> getRectArrayForKey(char const*);
    cocos2d::CCRect getRectForKey(char const*);
    gd::vector<gd::string> getStringArrayForKey(char const*);
    gd::string getStringForKey(char const*);
    gd::vector<cocos2d::CCPoint> getVec2ArrayForKey(char const*);
    cocos2d::CCPoint getVec2ForKey(char const*);
    bool loadRootSubDictFromCompressedFile(char const*) = imac 0x16a5b0, m1 0x1372fc;
    bool loadRootSubDictFromFile(char const*);
    bool loadRootSubDictFromString(gd::string const&) = m1 0x1376b0;
    bool rectFromString(gd::string const&, cocos2d::CCRect&);
    void removeAllKeys();
    void removeKey(unsigned int);
    void removeKey(char const*);
    bool saveRootSubDictToCompressedFile(char const*);
    bool saveRootSubDictToFile(char const*);
    gd::string saveRootSubDictToString() = imac 0x16c030;
    void setArrayForKey(char const*, cocos2d::CCArray*);
    void setBoolForKey(char const*, bool, bool);
    void setBoolForKey(char const*, bool) = imac 0x16e790, m1 0x13ab9c;
    void setBoolMapForKey(char const*, gd::map<gd::string, bool>&) = m1 0x13cf9c;
    void setDictForKey(char const*, cocos2d::CCDictionary*) = imac 0x170db0, m1 0x13cd9c;
    void setFloatForKey(char const*, float);
    void setFloatForKey(char const*, float, bool);
    void setIntegerForKey(char const*, int);
    void setIntegerForKey(char const*, int, bool);
    void setObjectForKey(char const*, cocos2d::CCObject*);
    void setRectArrayForKey(char const*, gd::vector<cocos2d::CCRect> const&);
    void setRectArrayForKey(char const*, gd::vector<cocos2d::CCRect> const&, bool);
    void setRectForKey(char const*, cocos2d::CCRect const&);
    void setRectForKey(char const*, cocos2d::CCRect const&, bool);
    void setStringArrayForKey(char const*, gd::vector<gd::string> const&);
    void setStringArrayForKey(char const*, gd::vector<gd::string> const&, bool);
    void setStringForKey(char const*, gd::string const&);
    void setStringForKey(char const*, gd::string const&, bool);
    void setSubDictForKey(char const*);
    void setSubDictForKey(char const*, bool, bool);
    void setVec2ArrayForKey(char const*, gd::vector<cocos2d::CCPoint> const&);
    void setVec2ArrayForKey(char const*, gd::vector<cocos2d::CCPoint> const&, bool);
    void setVec2ForKey(char const*, cocos2d::CCPoint const&);
    void setVec2ForKey(char const*, cocos2d::CCPoint const&, bool);
    void split(gd::string const&, char const*, gd::vector<gd::string>&);
    bool splitWithForm(gd::string const&, gd::vector<gd::string>&);
    void stepBackToRootSubDict();
    bool stepIntoSubDictWithKey(char const*) = imac 0x16c5d0;
    void stepOutOfSubDict() = imac 0x16c8a0, m1 0x138ff0;
    bool vec2FromString(gd::string const&, cocos2d::CCPoint&);
}

[[link(win, android)]]
class cocos2d::extension::CCControlColourPicker {
    static cocos2d::extension::CCControlColourPicker* colourPicker();
}

[[link(win, android)]]
class cocos2d::extension::CCScale9Sprite {
    static cocos2d::extension::CCScale9Sprite* create();
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const* spriteFrameName) = ios inline {
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
    static cocos2d::extension::CCScale9Sprite* create(char const* pszname) = ios inline {
    	CCScale9Sprite* ret = new CCScale9Sprite;
    	if (ret->initWithFile(pszname)) {
    		ret->autorelease();
    		return ret;
    	}

    	delete ret;
    	return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect);

    CCScale9Sprite();
    ~CCScale9Sprite();

    virtual bool init() = imac 0x3e2060;
    virtual void setContentSize(const cocos2d::CCSize& size);
    virtual void visit() = imac 0x3e44d0, m1 0x3667fc;
    virtual GLubyte getOpacity();
    virtual void setOpacity(GLubyte opacity);
    virtual void updateDisplayedOpacity(GLubyte parentOpacity);
    virtual const cocos2d::ccColor3B& getColor();
    virtual void setColor(const cocos2d::ccColor3B& color);
    virtual void updateDisplayedColor(const cocos2d::ccColor3B& parentColor);
    virtual void setOpacityModifyRGB(bool bValue);
    virtual bool isOpacityModifyRGB();
    virtual cocos2d::CCSize getPreferredSize() = imac 0x3e3f20;
    virtual void setPreferredSize(cocos2d::CCSize) = imac 0x3e3ef0, m1 0x3662fc;
    virtual cocos2d::CCRect getCapInsets() = imac 0x3e3fe0;
    virtual void setCapInsets(cocos2d::CCRect) = imac 0x3e3f40, m1 0x36633c;
    virtual float getInsetLeft();
    virtual void setInsetLeft(float);
    virtual float getInsetTop();
    virtual void setInsetTop(float);
    virtual float getInsetRight();
    virtual void setInsetRight(float);
    virtual float getInsetBottom();
    virtual void setInsetBottom(float);
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = imac 0x3e2120, m1 0x364544;
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, cocos2d::CCRect) = imac 0x3e20c0, m1 0x3644d8;
    virtual bool initWithFile(const char*, cocos2d::CCRect, cocos2d::CCRect) = imac 0x3e36a0, m1 0x36595c;
    virtual bool initWithFile(const char*, cocos2d::CCRect) = m1 0x365a9c;
    virtual bool initWithFile(cocos2d::CCRect, const char*) = imac 0x3e38a0, m1 0x365bb0;
    virtual bool initWithFile(const char*);
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = imac 0x3e3a50, m1 0x365da8;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*);
    virtual bool initWithSpriteFrameName(const char*, cocos2d::CCRect) = m1 0x365fb8;
    virtual bool initWithSpriteFrameName(const char*);
    virtual bool updateWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = m1 0x3645e8;
    virtual void setSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3e4380, m1 0x366728;
}

[[link(win, android)]]
class cocos2d::extension::CCHttpClient : cocos2d::CCObject {
    // CCHttpClient() = imac 0x441fb0, m1 0x3b3ec8;
    static cocos2d::extension::CCHttpClient* getInstance() = imac 0x425520, m1 0x3a04ec;
    static void destroyInstance() = m1 0x3a0550;
    void send(cocos2d::extension::CCHttpRequest* request) = imac 0x426430, m1 0x3a12c0;
    bool lazyInitThreadSemphore() = imac 0x425880, m1 0x3a0864;
    void dispatchResponseCallbacks(float);
}

[[link(win, android)]]
class cocos2d::ZipUtils {
    static gd::string base64DecodeEnc(gd::string const&, gd::string);
    static gd::string base64EncodeEnc(gd::string const&, gd::string);
    static gd::string base64URLDecode(gd::string const&);
    static gd::string base64URLEncode(gd::string const&);
    static void ccDecodeEncodedPvr(unsigned int*, int);
    static int ccDeflateMemory(unsigned char*, unsigned int, unsigned char**) = imac 0x1f3290, m1 0x1a8dd8;
    static int ccInflateCCZFile(char const*, unsigned char**);
    static int ccInflateGZipFile(char const*, unsigned char**);
    static int ccInflateMemory(unsigned char*, unsigned int, unsigned char**);
    static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int*, unsigned int);
    static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int);
    static void ccSetPvrEncryptionKey(unsigned int, unsigned int, unsigned int, unsigned int);
    static void ccSetPvrEncryptionKeyPart(int, unsigned int);
    static gd::string compressString(gd::string const&, bool, int) = imac 0x1f3020, m1 0x1a8b18;
    static gd::string decompressString2(unsigned char*, bool, int, int);
    static gd::string decompressString(gd::string const&, bool, int) = m1 0x1a921c;
    static gd::string encryptDecrypt(gd::string const&, int);
    static gd::string encryptDecryptWKey(gd::string const&, gd::string);
    static unsigned char hexToChar(gd::string const&);
    static gd::string urlDecode(gd::string const&);
}

[[link(win, android)]]
class cocos2d::CCSpawn {
    static cocos2d::CCSpawn* create(cocos2d::CCArray*);
    // static cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction*, ...) = m1 0x33e430, imac 0x3b9e30;
    static cocos2d::CCSpawn* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = m1 0x33096c;
    // static cocos2d::CCSpawn* createWithVariableList(cocos2d::CCFiniteTimeAction*, char*);

    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);

    // CCSpawn(cocos2d::CCSpawn const&);
    // CCSpawn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x330f00;
    virtual void update(float) = imac 0x3a45d0, m1 0x33116c;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3310d8;
    virtual void stop() = imac 0x3a45a0, m1 0x33112c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a4620, m1 0x3311d0;
}

[[link(win, android)]]
class cocos2d::CCSpeed {
    static cocos2d::CCSpeed* create(cocos2d::CCActionInterval*, float) = imac 0x5dcd40, m1 0x50fc4c;

    bool initWithAction(cocos2d::CCActionInterval*, float);

    cocos2d::CCActionInterval* getInnerAction();
    float getSpeed();

    void setInnerAction(cocos2d::CCActionInterval*);
    void setSpeed(float);

    // CCSpeed(cocos2d::CCSpeed const&);
    // CCSpeed();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5dce20, m1 0x50fd1c;
    virtual bool isDone();
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x5dcfc0, m1 0x50fea4;
    virtual void stop() = imac 0x5dcfe0, m1 0x50feb8;
    virtual void step(float) = imac 0x5dd010;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5dd040, m1 0x50ff14;
}

[[link(win, android)]]
class pugi::xml_document {
    xml_document();
    ~xml_document() = imac 0x62ab90;
}

[[link(win, android)]]
class pugi::xml_node {
    // i'm not bothering
    	xml_node() = m1 inline, imac inline {
    	_root = nullptr;
    }
}

[[link(android)]]
class cocos2d::CCLightning : cocos2d::CCNode, cocos2d::CCRGBAProtocol {
    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = win 0x44540, imac 0x5c5940, m1 0x4fa830;
    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint p1) = win inline, ios inline, imac 0x5c5780, m1 0x4fa6c4 {
    	auto ret = new CCLightning();
    	if (ret->initWithStrikePoint(p1)) {
    		ret->autorelease();
    		return ret;
    	}
    	delete ret;
    	return nullptr;
    }

    bool initWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = win 0x439e0, imac 0x5c5a90, m1 0x4fa950;
    bool initWithStrikePoint(cocos2d::CCPoint p1) = win inline, ios inline, m1 0x4fa7dc {
    	return this->initWithStrikePoint(p1, CCPointZero, .5f);
    }

    CCLightning() = win 0x44400;
    ~CCLightning() = win 0x444d0;

    void strike() = win 0x44880, m1 0x4faa74;
    void strikeFinished() = win 0x448f0, imac 0x5c5e60;
    void strikeRandom() = win inline, ios inline, m1 0x4fabe0 {
    	m_seed = rand();
    	this->strike();
    }
    void strikeWithSeed(uint64_t seed) = win inline, ios inline, imac 0x5c5df0, m1 0x4fac58 {
    	m_seed = seed;
    	this->strike();
    }

    virtual void draw() = win 0x44700, imac 0x5c5c30, m1 0x4faae0;
    virtual bool isOpacityModifyRGB();
    virtual void setOpacityModifyRGB(bool);
    virtual unsigned char getOpacity();
    virtual unsigned char getDisplayedOpacity();
    virtual void setOpacity(unsigned char);
    virtual void updateDisplayedOpacity(unsigned char);
    virtual bool isCascadeOpacityEnabled();
    virtual void setCascadeOpacityEnabled(bool);
    virtual cocos2d::_ccColor3B const& getColor();
    virtual cocos2d::_ccColor3B const& getDisplayedColor();
    virtual void setColor(cocos2d::_ccColor3B const&);
    virtual void updateDisplayedColor(cocos2d::_ccColor3B const&);
    virtual bool isCascadeColorEnabled();
    virtual void setCascadeColorEnabled(bool);

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
