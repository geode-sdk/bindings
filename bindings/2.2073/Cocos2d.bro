[[link(win, android)]]
class cocos2d::CCEGLViewProtocol {
    CCEGLViewProtocol();
    virtual ~CCEGLViewProtocol();
    auto getViewPortRect() const;
    auto getScaleX() const;
    auto getScaleY() const;

    virtual cocos2d::CCSize const& getFrameSize() const = imac 0x4f9d10, m1 0x459e78;
    virtual void setFrameSize(float, float) = m1 0x459e80, imac 0x4f9d20;
    virtual cocos2d::CCSize getVisibleSize() const = imac 0x4f9d60, m1 0x459ec4;
    virtual cocos2d::CCPoint getVisibleOrigin() const = imac 0x4f9db0, m1 0x459ef4;
    virtual void setDesignResolutionSize(float, float, ResolutionPolicy) = imac 0x4f9bc0, m1 0x459d58;
    virtual cocos2d::CCSize const& getDesignResolutionSize() const = imac 0x4f9d00, m1 0x459e70;
    virtual void setTouchDelegate(cocos2d::EGLTouchDelegate*) = imac 0x4f9e20, m1 0x459f40;
    virtual void setViewPortInPoints(float, float, float, float) = imac 0x4f9e30, m1 0x459f48;
    virtual void setScissorInPoints(float, float, float, float) = imac 0x4f9e70, m1 0x459f74;
    virtual bool isScissorEnabled() = m1 0x459fa0, imac 0x4f9eb0;
    virtual cocos2d::CCRect getScissorRect() = imac 0x4f9ed0, m1 0x459fc0;
    virtual void setViewName(char const*) = imac 0x4f9f70, m1 0x45a050;
    virtual void pollInputEvents() = imac 0x4fa6b0, m1 0x45a7b4;
}

[[link(win, android)]]
class cocos2d::CCEaseIn {
    static cocos2d::CCEaseIn* create(cocos2d::CCActionInterval*, float) = m1 0x45e13c;

    // CCEaseIn(cocos2d::CCEaseIn const&);
    // CCEaseIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x4fea70, m1 0x45e4f4;
    virtual void update(float) = imac 0x4feb80, m1 0x45e5ec;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4febb0, m1 0x45e61c;
}

[[link(win, android)]]
class cocos2d::CCEaseOut {
    static cocos2d::CCEaseOut* create(cocos2d::CCActionInterval*, float) = m1 0x45e438;

    // CCEaseOut(cocos2d::CCEaseOut const&);
    // CCEaseOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x4feca0, m1 0x45e710;
    virtual void update(float) = imac 0x4fedb0, m1 0x45e808;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4fede0, m1 0x45e840;
}

[[link(win, android)]]
class cocos2d::CCEaseInOut {
    static cocos2d::CCEaseInOut* create(cocos2d::CCActionInterval*, float) = m1 0x45e654;

    // CCEaseInOut(cocos2d::CCEaseInOut const&);
    // CCEaseInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x4feed0, m1 0x45e934;
    virtual void update(float) = imac 0x4fefe0, m1 0x45ea2c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4ff050, m1 0x45ea98;
}

[[link(win, android)]]
class cocos2d::CCEaseBackIn {
    static cocos2d::CCEaseBackIn* create(cocos2d::CCActionInterval*) = m1 0x460944;

    // CCEaseBackIn(cocos2d::CCEaseBackIn const&);
    // CCEaseBackIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x501380, m1 0x460dc4;
    virtual void update(float) = imac 0x501480, m1 0x460eac;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5014b0, m1 0x460ee0;
}

[[link(win, android)]]
class cocos2d::CCEaseBackOut {
    static cocos2d::CCEaseBackOut* create(cocos2d::CCActionInterval*) = m1 0x460d1c;

    // CCEaseBackOut(cocos2d::CCEaseBackOut const&);
    // CCEaseBackOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x501570, m1 0x460fa8;
    virtual void update(float) = imac 0x501670, m1 0x461090;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5016b0, m1 0x4610d0;
}

[[link(win, android)]]
class cocos2d::CCEaseBounceOut {
    static cocos2d::CCEaseBounceOut* create(cocos2d::CCActionInterval*);

    // CCEaseBounceOut(cocos2d::CCEaseBounceOut const&);
    // CCEaseBounceOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x500d90, m1 0x460734;
    virtual void update(float) = imac 0x500e90, m1 0x46081c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x500f50, m1 0x460924;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticIn {
    static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval*);
    static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval*, float) = m1 0x45f708;

    // CCEaseElasticIn(cocos2d::CCEaseElasticIn const&);
    // CCEaseElasticIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x4ffff0, m1 0x45f9e8;
    virtual void update(float) = imac 0x500100, m1 0x45fae0;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5001a0, m1 0x45fb70;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticOut {
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*) = m1 0x45f9e8;
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*, float) = m1 0x45f92c;

    // CCEaseElasticOut(cocos2d::CCEaseElasticOut const&);
    // CCEaseElasticOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5002b0, m1 0x45fc6c;
    virtual void update(float) = imac 0x5003c0, m1 0x45fd64;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x500460, m1 0x45fdfc;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialIn {
    static cocos2d::CCEaseExponentialIn* create(cocos2d::CCActionInterval*);

    // CCEaseExponentialIn(cocos2d::CCEaseExponentialIn const&);
    // CCEaseExponentialIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x4ff120, m1 0x45eb70;
    virtual void update(float) = imac 0x4ff220, m1 0x45ec58;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4ff270, m1 0x45eccc;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialInOut {
    static cocos2d::CCEaseExponentialInOut* create(cocos2d::CCActionInterval*);

    // CCEaseExponentialInOut(cocos2d::CCEaseExponentialInOut const&);
    // CCEaseExponentialInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x4ff540, m1 0x45efa8;
    virtual void update(float) = imac 0x4ff640, m1 0x45f090;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4ff6b0, m1 0x45f0fc;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialOut {
    static cocos2d::CCEaseExponentialOut* create(cocos2d::CCActionInterval*) = m1 0x45eac8;

    // CCEaseExponentialOut(cocos2d::CCEaseExponentialOut const&);
    // CCEaseExponentialOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x4ff330, m1 0x45ed94;
    virtual void update(float) = imac 0x4ff430, m1 0x45ee7c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4ff480, m1 0x45eee0;
}

[[link(win, android)]]
class cocos2d::CCEaseSineIn {
    static cocos2d::CCEaseSineIn* create(cocos2d::CCActionInterval*);

    // CCEaseSineIn(cocos2d::CCEaseSineIn const&);
    // CCEaseSineIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x4ff770, m1 0x45f1c4;
    virtual void update(float) = imac 0x4ff870, m1 0x45f2ac;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4ff8b0, m1 0x45f2f0;
}

[[link(win, android)]]
class cocos2d::CCEaseSineOut {
    static cocos2d::CCEaseSineOut* create(cocos2d::CCActionInterval*);

    // CCEaseSineOut(cocos2d::CCEaseSineOut const&);
    // CCEaseSineOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x4ff970, m1 0x45f3b8;
    virtual void update(float) = imac 0x4ffa70, m1 0x45f4a0;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4ffaa0, m1 0x45f4dc;
}

[[link(win, android)]]
class cocos2d::CCEaseSineInOut {
    static cocos2d::CCEaseSineInOut* create(cocos2d::CCActionInterval*);

    // CCEaseSineInOut(cocos2d::CCEaseSineInOut const&);
    // CCEaseSineInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x4ffb60, m1 0x45f5a4;
    virtual void update(float) = imac 0x4ffc60, m1 0x45f68c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4ffca0, m1 0x45f6d8;
}

[[link(win, android)]]
class cocos2d::CCMotionStreak {
    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::_ccColor3B const&, cocos2d::CCTexture2D*) = imac 0x55f480;
    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::_ccColor3B const&, char const*) = imac 0x55f480;

    bool initWithFade(float, float, float, cocos2d::_ccColor3B const&, cocos2d::CCTexture2D*) = imac 0x55f5d0, m1 0x4b6114;
    bool initWithFade(float, float, float, cocos2d::_ccColor3B const&, char const*) = imac 0x55f5d0, m1 0x4b6114;

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
    void reset() = imac 0x560230;
    void resumeStroke();
    void stopStroke();
    void tintWithColor(cocos2d::_ccColor3B);
    void updateFade(float) = imac 0x55fbb0;

    ~CCMotionStreak();

    virtual void update(float) = m1 0x4b6634, imac 0x55fbf0;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x55f950, m1 0x4b643c;
    virtual void draw() = imac 0x560250, m1 0x4b6d6c;

    virtual unsigned char getOpacity() = imac 0x55fb00, m1 0x4b659c;
    virtual void setOpacity(unsigned char) = imac 0x55fae0, m1 0x4b6594;
    virtual void setOpacityModifyRGB(bool) = imac 0x55fb20, m1 0x4b65ac;
    virtual bool isOpacityModifyRGB() = imac 0x55fb40, m1 0x4b65b4;

    virtual void setBlendFunc(cocos2d::_ccBlendFunc) = imac 0x55faa0, m1 0x4b6574;
    virtual cocos2d::_ccBlendFunc getBlendFunc() = imac 0x55fac0, m1 0x4b6584;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x55f9f0, m1 0x4b64d4;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x55fa10, m1 0x4b64e4;
}

[[link(win, android)]]
class cocos2d::CCMoveBy {
    static cocos2d::CCMoveBy* create(float, cocos2d::CCPoint const&) = imac 0x3a5210, m1 0x331bd4;

    bool initWithDuration(float, cocos2d::CCPoint const&);

    // CCMoveBy(cocos2d::CCMoveBy const&);
    // CCMoveBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a5350, m1 0x331cf0;
    virtual void update(float) = imac 0x3a5550, m1 0x331eb8;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a54b0, m1 0x331e20;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a5500, m1 0x331e74;
}

[[link(win, android)]]
class cocos2d::CCMoveTo {
    static cocos2d::CCMoveTo* create(float, cocos2d::CCPoint const&) = imac 0x3a5620, m1 0x331f84;

    bool initWithDuration(float, cocos2d::CCPoint const&);

    // CCMoveTo(cocos2d::CCMoveTo const&);
    // CCMoveTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a5770, m1 0x3320a4;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a58e0, m1 0x3321e8;
}

[[link(win, android)]]
class cocos2d::CCRemoveSelf {
    static cocos2d::CCRemoveSelf* create(bool);

    bool init(bool);

    // CCRemoveSelf(cocos2d::CCRemoveSelf const&);
    // CCRemoveSelf();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x796df0, m1 0x6a9f5c;
    virtual void update(float) = imac 0x796d70, m1 0x6a9ee4;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x796d90, m1 0x6a9efc;
}

[[link(win, android)]]
class cocos2d::CCScaleBy {
    static cocos2d::CCScaleBy* create(float, float);
    static cocos2d::CCScaleBy* create(float, float, float);

    // CCScaleBy(cocos2d::CCScaleBy const&);
    // CCScaleBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a7750, m1 0x333c38;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a7860, m1 0x333d30;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a78c0, m1 0x333da0;
}

[[link(win, android)]]
class cocos2d::CCScaleTo {
    static cocos2d::CCScaleTo* create(float, float);
    static cocos2d::CCScaleTo* create(float, float, float);

    bool initWithDuration(float, float);
    bool initWithDuration(float, float, float);

    // CCScaleTo(cocos2d::CCScaleTo const&);
    // CCScaleTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a73e0, m1 0x333928;
    virtual void update(float) = imac 0x3a7560, m1 0x333a8c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a74f0, m1 0x333a20;
}

[[link(win, android)]]
class cocos2d::CCTintTo {
    static cocos2d::CCTintTo* create(float, unsigned char, unsigned char, unsigned char) = imac 0x3a8530, m1 0x3348cc;

    bool initWithDuration(float, unsigned char, unsigned char, unsigned char);

    // CCTintTo(cocos2d::CCTintTo const&);
    // CCTintTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a8650, m1 0x3349a8;
    virtual void update(float) = imac 0x3a87c0, m1 0x334b10;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a8760, m1 0x334aa4;
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5dcbd0, m1 0x50fb94;
    virtual void update(float) = imac 0x5dccd0, m1 0x50fc7c;
    //virtual void setTag(int) = m1 0x1b6e5c, imac 0x205680;
    virtual bool isDone() = imac 0x5dccb0, m1 0x50fc70;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x5dcc90, m1 0x50fc60;
    virtual void stop() = imac 0x5dcca0, m1 0x50fc68;
    virtual void step(float) = imac 0x5dccc0, m1 0x50fc78;
}

[[link(win, android)]]
class cocos2d::CCScene {
    static cocos2d::CCScene* create() = imac 0x27f480;

    int getHighestChildZ() = imac 0x27f540, m1 0x228dc4;

    // CCScene(cocos2d::CCScene const&);
    // CCScene() = ios 0x2508a4;
    ~CCScene();

    virtual bool init() = m1 0x228c8c, imac 0x27f430;
}

[[link(win, android)]]
class cocos2d::CCSet {
    static cocos2d::CCSet* create();

    //CCSet(cocos2d::CCSet const&) = imac 0x7bf970, m1 0x6c576c;
    CCSet();
    ~CCSet() = imac 0x79e190;
    void addObject(cocos2d::CCObject*) = imac 0x79e440, m1 0x6b0930;
    cocos2d::CCObject* anyObject() = imac 0x79e610, m1 0x6b0b2c;
    cocos2d::CCSetIterator begin() = imac 0x79e5f0;
    bool containsObject(cocos2d::CCObject*) = imac 0x79e5a0, m1 0x6b0ac4;
    cocos2d::CCSet* copy();
    int count();
    cocos2d::CCSetIterator end() = imac 0x79e600;
    cocos2d::CCSet* mutableCopy();
    void removeAllObjects();
    void removeObject(cocos2d::CCObject*) = imac 0x79e4f0;

    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x79e300, m1 0x6b07f4;
}

[[link(win, android)]]
class cocos2d::CCShaderCache {
    static void purgeSharedShaderCache();
    static cocos2d::CCShaderCache* sharedShaderCache() = imac 0x1f08a0;

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
    static cocos2d::CCParticleSystem* create(char const*) = imac 0x7b15c0, m1 0x6c2794;
    static cocos2d::CCParticleSystem* createWithTotalParticles(unsigned int);

    void initParticle(cocos2d::sCCParticle*) = imac 0x7b37b0, m1 0x6c4760;
    bool initWithDictionary(cocos2d::CCDictionary*, char const*, bool);
    bool initWithDictionary(cocos2d::CCDictionary*, bool) = imac 0x7b3330;
    bool initWithFile(char const*, bool) = m1 0x6c2818;

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
    void loadScaledDefaults(float) = imac 0x7b6220;
    void resetSystem() = imac 0x7b4880, m1 0x6c5498;
    void resumeSystem();
    void saveDefaults();
    void stopSystem() = imac 0x7b4840, m1 0x6c5478;
    void toggleUniformColorMode(bool);
    void updateVisible();

    virtual void update(float) = imac 0x7b4a30, m1 0x6c55dc;
    virtual bool init() = imac 0x7b1920, m1 0x6c2b1c;
    virtual void setScaleX(float) = imac 0x7b6150, m1 0x6c6760;
    virtual void setScaleY(float) = imac 0x7b6170, m1 0x6c676c;
    virtual void setScale(float) = imac 0x7b6110, m1 0x6c6748;
    virtual void setVisible(bool) = imac 0x7b5a20, m1 0x6c636c;
    virtual void setRotation(float) = imac 0x7b6130, m1 0x6c6754;
    virtual cocos2d::CCParticleBatchNode* getBatchNode() = imac 0x7b6030, m1 0x6c66b0;
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = imac 0x7b6040, m1 0x6c66b8;
    virtual unsigned int getParticleCount() = imac 0x7b5c30, m1 0x6c6478;
    virtual float getDuration() = imac 0x7b5c40, m1 0x6c6480;
    virtual void setDuration(float) = imac 0x7b5c50, m1 0x6c6488;
    virtual cocos2d::CCPoint const& getSourcePosition() = imac 0x7b5c60, m1 0x6c6490;
    virtual void setSourcePosition(cocos2d::CCPoint const&) = imac 0x7b5c70, m1 0x6c6498;
    virtual cocos2d::CCPoint const& getPosVar() = imac 0x7b5c90, m1 0x6c64a0;
    virtual void setPosVar(cocos2d::CCPoint const&) = imac 0x7b5ca0, m1 0x6c64a8;
    virtual float getLife() = imac 0x7b5cc0, m1 0x6c64b0;
    virtual void setLife(float) = imac 0x7b5cd0, m1 0x6c64b8;
    virtual float getLifeVar() = imac 0x7b5ce0, m1 0x6c64c0;
    virtual void setLifeVar(float) = imac 0x7b5cf0, m1 0x6c64c8;
    virtual float getAngle() = imac 0x7b5d00, m1 0x6c64d0;
    virtual void setAngle(float) = imac 0x7b5d10, m1 0x6c64d8;
    virtual float getAngleVar() = imac 0x7b5d20, m1 0x6c64e0;
    virtual void setAngleVar(float) = imac 0x7b5d30, m1 0x6c64e8;
    virtual void updateEmissionRate() = imac 0x7b3550, m1 0x6c4560;
    virtual cocos2d::CCPoint const& getGravity() = imac 0x7b5b10, m1 0x6c63e8;
    virtual void setGravity(cocos2d::CCPoint const&) = imac 0x7b5af0, m1 0x6c63e0;
    virtual float getSpeed() = imac 0x7b5b30, m1 0x6c63f8;
    virtual void setSpeed(float) = imac 0x7b5b20, m1 0x6c63f0;
    virtual float getSpeedVar() = imac 0x7b5b50, m1 0x6c6408;
    virtual void setSpeedVar(float) = imac 0x7b5b40, m1 0x6c6400;
    virtual float getTangentialAccel() = imac 0x7b5a60, m1 0x6c6398;
    virtual void setTangentialAccel(float) = imac 0x7b5a50, m1 0x6c6390;
    virtual float getTangentialAccelVar() = imac 0x7b5a80, m1 0x6c63a8;
    virtual void setTangentialAccelVar(float) = imac 0x7b5a70, m1 0x6c63a0;
    virtual float getRadialAccel() = imac 0x7b5aa0, m1 0x6c63b8;
    virtual void setRadialAccel(float) = imac 0x7b5a90, m1 0x6c63b0;
    virtual float getRadialAccelVar() = imac 0x7b5ac0, m1 0x6c63c8;
    virtual void setRadialAccelVar(float) = imac 0x7b5ab0, m1 0x6c63c0;
    virtual bool getRotationIsDir() = imac 0x7b5ae0, m1 0x6c63d8;
    virtual void setRotationIsDir(bool) = imac 0x7b5ad0, m1 0x6c63d0;
    virtual float getStartRadius() = imac 0x7b5b70, m1 0x6c6418;
    virtual void setStartRadius(float) = imac 0x7b5b60, m1 0x6c6410;
    virtual float getStartRadiusVar() = imac 0x7b5b90, m1 0x6c6428;
    virtual void setStartRadiusVar(float) = imac 0x7b5b80, m1 0x6c6420;
    virtual float getEndRadius() = imac 0x7b5bb0, m1 0x6c6438;
    virtual void setEndRadius(float) = imac 0x7b5ba0, m1 0x6c6430;
    virtual float getEndRadiusVar() = imac 0x7b5bd0, m1 0x6c6448;
    virtual void setEndRadiusVar(float) = imac 0x7b5bc0, m1 0x6c6440;
    virtual float getRotatePerSecond() = imac 0x7b5bf0, m1 0x6c6458;
    virtual void setRotatePerSecond(float) = imac 0x7b5be0, m1 0x6c6450;
    virtual float getRotatePerSecondVar() = imac 0x7b5c10, m1 0x6c6468;
    virtual void setRotatePerSecondVar(float) = imac 0x7b5c00, m1 0x6c6460;
    virtual bool isActive() = imac 0x7b5c20, m1 0x6c6470;
    virtual bool isBlendAdditive() = imac 0x7b5a00, m1 0x6c6348;
    virtual void setBlendAdditive(bool) = imac 0x7b59b0, m1 0x6c62dc;
    virtual float getStartSize() = imac 0x7b5d40, m1 0x6c64f0;
    virtual void setStartSize(float) = imac 0x7b5d50, m1 0x6c64f8;
    virtual float getStartSizeVar() = imac 0x7b5d60, m1 0x6c6500;
    virtual void setStartSizeVar(float) = imac 0x7b5d70, m1 0x6c6508;
    virtual float getEndSize() = imac 0x7b5d80, m1 0x6c6510;
    virtual void setEndSize(float) = imac 0x7b5d90, m1 0x6c6518;
    virtual float getEndSizeVar() = imac 0x7b5da0, m1 0x6c6520;
    virtual void setEndSizeVar(float) = imac 0x7b5db0, m1 0x6c6528;
    virtual cocos2d::_ccColor4F const& getStartColor() = imac 0x7b5dc0, m1 0x6c6530;
    virtual void setStartColor(cocos2d::_ccColor4F const&);
    virtual cocos2d::_ccColor4F const& getStartColorVar() = imac 0x7b5de0, m1 0x6c6548;
    virtual void setStartColorVar(cocos2d::_ccColor4F const&);
    virtual cocos2d::_ccColor4F const& getEndColor() = imac 0x7b5e00, m1 0x6c6560;
    virtual void setEndColor(cocos2d::_ccColor4F const&);
    virtual cocos2d::_ccColor4F const& getEndColorVar() = imac 0x7b5e20, m1 0x6c6578;
    virtual void setEndColorVar(cocos2d::_ccColor4F const&);
    virtual float getStartSpin() = imac 0x7b5e40, m1 0x6c6590;
    virtual void setStartSpin(float) = imac 0x7b5e50, m1 0x6c6598;
    virtual float getStartSpinVar() = imac 0x7b5e60, m1 0x6c65a0;
    virtual void setStartSpinVar(float) = imac 0x7b5e70, m1 0x6c65a8;
    virtual float getEndSpin() = imac 0x7b5e80, m1 0x6c65b0;
    virtual void setEndSpin(float) = imac 0x7b5e90, m1 0x6c65b8;
    virtual float getEndSpinVar() = imac 0x7b5ea0, m1 0x6c65c0;
    virtual void setEndSpinVar(float) = imac 0x7b5eb0, m1 0x6c65c8;
    virtual float getEmissionRate() = imac 0x7b5ec0, m1 0x6c65d0;
    virtual void setEmissionRate(float) = imac 0x7b5ed0, m1 0x6c65d8;
    virtual unsigned int getTotalParticles() = imac 0x7b5ee0, m1 0x6c65e0;
    virtual void setTotalParticles(unsigned int) = imac 0x7b5ef0, m1 0x6c65e8;
    virtual bool getOpacityModifyRGB() = imac 0x7b5fb0, m1 0x6c6670;
    virtual void setOpacityModifyRGB(bool) = imac 0x7b5fc0, m1 0x6c6678;
    virtual cocos2d::tCCPositionType getPositionType() = imac 0x7b5fd0, m1 0x6c6680;
    virtual void setPositionType(cocos2d::tCCPositionType) = imac 0x7b5fe0, m1 0x6c6688;
    virtual bool isAutoRemoveOnFinish() = imac 0x7b5ff0, m1 0x6c6690;
    virtual void setAutoRemoveOnFinish(bool) = imac 0x7b6000, m1 0x6c6698;
    virtual int getEmitterMode() = imac 0x7b6010, m1 0x6c66a0;
    virtual void setEmitterMode(int) = imac 0x7b6020, m1 0x6c66a8;
    virtual bool initWithTotalParticles(unsigned int, bool) = imac 0x7b33e0, m1 0x6c4430;
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&) = imac 0x7b5830, m1 0x6c6184;
    virtual void postStep() = imac 0x7b5840, m1 0x6c6188;
    virtual void updateWithNoTime() = imac 0x7b5810, m1 0x6c6174;
    virtual void updateBlendFunc() = imac 0x7b5920, m1 0x6c625c;

    virtual void setBlendFunc(cocos2d::_ccBlendFunc) = imac 0x7b5f20, m1 0x6c6600;
    virtual cocos2d::_ccBlendFunc getBlendFunc() = imac 0x7b5f00, m1 0x6c65f0;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x7b5990, m1 0x6c62cc;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x7b5850, m1 0x6c618c;
}

[[link(win, android)]]
class cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSystemQuad* create(char const*, bool) = imac 0x5eb230;
    static cocos2d::CCParticleSystemQuad* create();
    static cocos2d::CCParticleSystemQuad* createWithTotalParticles(unsigned int, bool);

    void initIndices();
    void initTexCoordsWithRect(cocos2d::CCRect const&) = imac 0x5eb400, m1 0x51c708;

    unsigned char getOpacity();

    void setDisplayFrame(cocos2d::CCSpriteFrame*);
    void setOpacity(unsigned char);
    void setTextureWithRect(cocos2d::CCTexture2D*, cocos2d::CCRect const&);

    // CCParticleSystemQuad(cocos2d::CCParticleSystemQuad const&);
    // CCParticleSystemQuad();
    ~CCParticleSystemQuad() = imac 0x5eb150;
    bool allocMemory() = imac 0x5eab00, m1 0x51c118;
    void listenBackToForeground(cocos2d::CCObject*);
    [[missing(mac, ios)]]
    void setupVBO();
    [[missing(win, android)]]
    void setupVBOandVAO() = imac 0x5eaee0, m1 0x51c26c;
    void updateTexCoords();

    virtual void draw() = imac 0x5ebba0, m1 0x51ce84;
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = imac 0x5ec180, m1 0x51d158;
    virtual void setTotalParticles(unsigned int) = imac 0x5ebc60, m1 0x51cf48;
    virtual bool initWithTotalParticles(unsigned int, bool) = m1 0x51c034, imac 0x5ea7b0;
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&) = imac 0x5eb800, m1 0x51cb6c;
    virtual void postStep() = imac 0x5ebb50, m1 0x51ce38;

    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x5eb650, m1 0x51c984;
}

[[link(win, android)]]
class cocos2d::CCProgressTimer {
    static cocos2d::CCProgressTimer* create(cocos2d::CCSprite*) = imac 0x5ec810;

    bool initWithSprite(cocos2d::CCSprite*);

    cocos2d::CCPoint getBarChangeRate() const;
    float getPercentage();
    // cocos2d::CCSprite* getSprite();
    cocos2d::CCProgressTimerType getType();

    void setAnchorPoint(cocos2d::CCPoint);
    void setBarChangeRate(cocos2d::CCPoint);
    void setPercentage(float) = imac 0x5eca90, m1 0x51d734;
    void setReverseDirection(bool);
    void setReverseProgress(bool);
    void setSprite(cocos2d::CCSprite*) = imac 0x5ecb10, m1 0x51d7a4;
    void setType(cocos2d::CCProgressTimerType) = imac 0x5ecd20, m1 0x51d940;

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

    virtual cocos2d::_ccColor3B const& getColor() const = imac 0x5ecef0, m1 0x51daec;
    virtual unsigned char getOpacity() const = imac 0x5ecff0, m1 0x51dbdc;
    virtual void draw() = imac 0x5eee40, m1 0x51f16c;
    virtual cocos2d::CCPoint getMidpoint() = imac 0x5eed20, m1 0x51f088;
    virtual void setMidpoint(cocos2d::CCPoint) = imac 0x5eed40, m1 0x51f094;

    virtual void setColor(cocos2d::_ccColor3B const&);
    virtual void setOpacity(unsigned char) = imac 0x5ecf10, m1 0x51dafc;
}

[[link(win, android)]]
class cocos2d::CCFadeIn {
    static cocos2d::CCFadeIn* create(float);

    // CCFadeIn(cocos2d::CCFadeIn const&);
    // CCFadeIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a7de0, m1 0x33421c;
    virtual void update(float) = imac 0x3a7eb0, m1 0x3342f0;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a7f10, m1 0x334354;
}

[[link(win, android)]]
class cocos2d::CCFadeOut {
    static cocos2d::CCFadeOut* create(float);

    // CCFadeOut(cocos2d::CCFadeOut const&);
    // CCFadeOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a8060, m1 0x33446c;
    virtual void update(float) = imac 0x3a8130, m1 0x334540;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a81a0, m1 0x3345ac;
}

[[link(win, android)]]
class cocos2d::CCFadeTo {
    static cocos2d::CCFadeTo* create(float, unsigned char) = imac 0x3a8250, m1 0x334638;

    bool initWithDuration(float, unsigned char);

    // CCFadeTo(cocos2d::CCFadeTo const&);
    // CCFadeTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a8340, m1 0x3346f4;
    virtual void update(float) = imac 0x3a84b0, m1 0x33484c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a8450, m1 0x3347e8;
}

[[link(win, android)]]
class cocos2d::CCFileUtils {
    // CCFileUtils(); // one of these two is 0x15bfa8
    // CCFileUtils(cocos2d::CCFileUtils const&);
    virtual void addSearchPath(char const*) = imac 0x429670, m1 0x3a4400;
    virtual void addSearchResolutionsOrder(char const*) = imac 0x4290c0, m1 0x3a3e50;
    virtual gd::string addSuffix(gd::string, gd::string) = imac 0x427580, m1 0x3a2320;
    virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(gd::string const&) = imac 0x426e80, m1 0x3a1b9c;
    virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(gd::string const&) = imac 0x426e60, m1 0x3a1b8c;
    virtual gd::string fullPathForFilename(char const*, bool) = m1 0x3a2920, imac 0x427c00;
    virtual char const* fullPathFromRelativeFile(char const*, char const*) = imac 0x428be0, m1 0x3a3954;
    gd::string getAndroidPath() const;
    virtual unsigned char* getFileData(char const*, char const*, unsigned long*) = imac 0x427150, m1 0x3a1ec4;
    virtual unsigned char* getFileDataFromZip(char const*, char const*, unsigned long*) = imac 0x427290, m1 0x3a2030;
    virtual gd::string getFullPathForDirectoryAndFilename(gd::string const&, gd::string const&) = imac 0x429de0, m1 0x3a4db8;
    virtual gd::string getNewFilename(char const*) = imac 0x4273b0, m1 0x3a2168;
    virtual gd::string getPathForFilename(gd::string const&, gd::string const&, gd::string const&) = imac 0x4277c0, m1 0x3a2528;
    virtual gd::vector<gd::string> const& getSearchPaths() = imac 0x4291f0, m1 0x3a3f8c;
    virtual gd::vector<gd::string> const& getSearchResolutionsOrder() = imac 0x4291e0, m1 0x3a3f84;
    virtual gd::string getWritablePath2() = imac 0x429f00, m1 0x3a4ff4;
    virtual bool init() = imac 0x427030, m1 0x3a1d64;
    virtual bool isAbsolutePath(gd::string const&) = imac 0x429e40, m1 0x3a4f2c;
    virtual bool isPopupNotify() = imac 0x429e70, m1 0x3a4f58;
    virtual void loadFilenameLookupDictionaryFromFile(char const*) = imac 0x429c70, m1 0x3a4be0;
    virtual void purgeCachedEntries() = imac 0x427120, m1 0x3a1e94;
    static void purgeFileUtils();
    void removeAllPaths();
    virtual void removeFullPath(char const*) = imac 0x428a80, m1 0x3a36e4;
    virtual void removeSearchPath(char const*) = imac 0x429890, m1 0x3a4720;
    void setAndroidPath(gd::string);
    virtual void setFilenameLookupDictionary(cocos2d::CCDictionary*) = imac 0x429c00, m1 0x3a4b78;
    virtual void setPopupNotify(bool) = imac 0x429e60, m1 0x3a4f4c;
    virtual void setSearchPaths(gd::vector<gd::string> const&) = imac 0x429200, m1 0x3a3f94;
    virtual void setSearchResolutionsOrder(gd::vector<gd::string> const&) = imac 0x428e40, m1 0x3a3bdc;
    static cocos2d::CCFileUtils* sharedFileUtils() = m1 0x523cac, imac 0x5f4130;
    virtual bool shouldUseHD() = imac 0x427550, m1 0x3a22fc;
    virtual bool writeToFile(cocos2d::CCDictionary*, gd::string const&) = imac 0x426e70, m1 0x3a1b94;
}

[[link(win, android)]]
class cocos2d::CCGLProgram {
    bool initWithVertexShaderByteArray(char const*, char const*) = imac 0x417ff0, m1 0x393abc;
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
    void setUniformsForBuiltins() = imac 0x419390, m1 0x395054;

    // CCGLProgram(cocos2d::CCGLProgram const&);
    ~CCGLProgram();
    CCGLProgram();
    void addAttribute(char const*, unsigned int) = imac 0x418270;
    bool compileShader(unsigned int*, unsigned int, char const*);
    char const* description();
    char const* fragmentShaderLog();
    bool link() = m1 0x393ef8;
    // char const* logForOpenGLObject(unsigned int, void (__cdecl*)(unsigned int, unsigned int, int*), void (__cdecl*)(unsigned int, int, int*, char*));
    char const* programLog();
    void reset() = imac 0x4196c0;
    bool updateUniformLocation(int, void*, unsigned int);
    void updateUniforms() = imac 0x418290, m1 0x393d70;
    void use();
    char const* vertexShaderLog();
}

[[link(win, android)]]
class cocos2d::CCNode {
    static cocos2d::CCNode* create() = m1 0x20cecc;
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

    cocos2d::CCRect boundingBox() = imac 0x261260, m1 0x20ce6c;
    void childrenAlloc();
    cocos2d::CCPoint convertToNodeSpace(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertToNodeSpaceAR(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertToWindowSpace(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertToWorldSpace(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertToWorldSpaceAR(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertTouchToNodeSpace(cocos2d::CCTouch*) = m1 0x20eef0;
    cocos2d::CCPoint convertTouchToNodeSpaceAR(cocos2d::CCTouch*);
    char const* description();
    void detachChild(cocos2d::CCNode*, bool);
    void insertChild(cocos2d::CCNode*, int);
    unsigned int numberOfRunningActions();
    void pauseSchedulerAndActions();
    void qsortAllChildrenWithIndex();
    void resumeSchedulerAndActions();
    cocos2d::CCAction* runAction(cocos2d::CCAction*) = imac 0x262510, m1 0x20e12c;
    void schedule(cocos2d::SEL_SCHEDULE) = imac 0x262740, m1 0x20e2e0;
    void schedule(cocos2d::SEL_SCHEDULE, float) = imac 0x2627a0, m1 0x20e320;
    void schedule(cocos2d::SEL_SCHEDULE, float, unsigned int, float) = imac 0x262770;
    void scheduleOnce(cocos2d::SEL_SCHEDULE, float) = imac 0x2627d0;
    void scheduleUpdate() = imac 0x262620;
    void scheduleUpdateWithPriority(int) = imac 0x262650;
    void scheduleUpdateWithPriorityLua(int, int) = imac 0x262680;
    void sortAllChildrenNoIndex();
    void sortAllChildrenWithIndex();
    void stopAction(cocos2d::CCAction*);
    void stopActionByTag(int);
    void stopAllActions();
    void transform();
    void transformAncestors();
    void unschedule(cocos2d::SEL_SCHEDULE) = imac 0x262800, m1 0x20e364;
    void unscheduleAllSelectors();
    void unscheduleUpdate() = imac 0x2626f0, m1 0x20e294;
    void updateChildIndexes();

    virtual void update(float) = imac 0x262820, m1 0x20e390;
    virtual bool init() = imac 0x260ae0, m1 0x20c87c;
    virtual void setZOrder(int) = imac 0x260b70, m1 0x20c8cc;
    virtual void _setZOrder(int) = imac 0x260b60, m1 0x20c8c4;
    virtual int getZOrder() = imac 0x260b50, m1 0x20c8bc;
    virtual void setVertexZ(float) = imac 0x260bc0, m1 0x20c924;
    virtual float getVertexZ() = imac 0x260bb0, m1 0x20c91c;
    virtual void setScaleX(float) = imac 0x260ce0, m1 0x20c9d4;
    virtual float getScaleX() = imac 0x260cd0, m1 0x20c9cc;
    virtual void setScaleY(float) = imac 0x260d10, m1 0x20c9f0;
    virtual float getScaleY() = imac 0x260d00, m1 0x20c9e8;
    virtual void setScale(float) = imac 0x260c90, m1 0x20c9a4;
    virtual float getScale() = imac 0x260c80, m1 0x20c99c;
    virtual void setScale(float, float) = imac 0x260cb0, m1 0x20c9b8;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x260d40, m1 0x20ca0c;
    virtual cocos2d::CCPoint const& getPosition() = imac 0x260d30, m1 0x20ca04;
    virtual void setPosition(float, float) = m1 0x20ca38, imac 0x260d80;
    virtual void getPosition(float*, float*) = imac 0x260d60, m1 0x20ca24;
    virtual void setPositionX(float) = m1 0x20ca88, imac 0x260de0;
    virtual float getPositionX() = imac 0x260dc0, m1 0x20ca78;
    virtual void setPositionY(float) = m1 0x20cacc, imac 0x260e20;
    virtual float getPositionY() = imac 0x260dd0, m1 0x20ca80;
    virtual void setSkewX(float) = imac 0x260b00, m1 0x20c88c;
    virtual float getSkewX() = imac 0x260af0, m1 0x20c884;
    virtual void setSkewY(float) = imac 0x260b30, m1 0x20c8a8;
    virtual float getSkewY() = imac 0x260b20, m1 0x20c8a0;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = m1 0x20cc34, imac 0x260fb0;
    virtual cocos2d::CCPoint const& getAnchorPoint() = imac 0x260fa0, m1 0x20cc2c;
    virtual cocos2d::CCPoint const& getAnchorPointInPoints() = imac 0x260f90, m1 0x20cc24;
    virtual void setContentSize(cocos2d::CCSize const&) = m1 0x20ccf4, imac 0x261070;
    virtual cocos2d::CCSize const& getContentSize() const = imac 0x261030, m1 0x20ccb4;
    virtual cocos2d::CCSize getScaledContentSize() = imac 0x261040, m1 0x20ccbc;
    virtual void setVisible(bool) = imac 0x260f80, m1 0x20cc1c;
    virtual bool isVisible() = imac 0x260f70, m1 0x20cc14;
    virtual void setRotation(float) = imac 0x260be0, m1 0x20c934;
    virtual float getRotation() = imac 0x260bd0, m1 0x20c92c;
    virtual void setRotationX(float) = imac 0x260c30, m1 0x20c96c;
    virtual float getRotationX() = imac 0x260c20, m1 0x20c964;
    virtual void setRotationY(float) = imac 0x260c60, m1 0x20c988;
    virtual float getRotationY() = imac 0x260c50, m1 0x20c980;
    virtual void setOrderOfArrival(unsigned int) = imac 0x261190, m1 0x20cdcc;
    virtual unsigned int getOrderOfArrival() = imac 0x261180, m1 0x20cdc4;
    virtual void setGLServerState(cocos2d::ccGLServerState) = imac 0x2611d0, m1 0x20cdec;
    virtual cocos2d::ccGLServerState getGLServerState() = imac 0x2611c0, m1 0x20cde4;
    virtual void ignoreAnchorPointForPosition(bool) = imac 0x261130, m1 0x20cd94;
    virtual bool isIgnoreAnchorPointForPosition() = imac 0x261120, m1 0x20cd8c;
    virtual void addChild(cocos2d::CCNode*) = imac 0x261620, m1 0x20d260;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x261600, m1 0x20d250;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x2614d0, m1 0x20d0d4;
    virtual cocos2d::CCNode* getChildByTag(int) = m1 0x20d050, imac 0x261450;
    virtual cocos2d::CCArray* getChildren() = imac 0x260e60, m1 0x20cb14;
    virtual unsigned int getChildrenCount() const = imac 0x260eb0, m1 0x20cb60;
    virtual void setParent(cocos2d::CCNode*) = imac 0x261110, m1 0x20cd84;
    virtual cocos2d::CCNode* getParent() = imac 0x261100, m1 0x20cd7c;
    virtual void removeFromParent() = imac 0x261640, m1 0x20d274;
    virtual void removeFromParentAndCleanup(bool) = imac 0x261660, m1 0x20d284;
    virtual void removeMeAndCleanup() = imac 0x261690, m1 0x20d2a4;
    virtual void removeChild(cocos2d::CCNode*) = imac 0x2616b0, m1 0x20d2b4;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x2616d0, m1 0x20d2c4;
    virtual void removeChildByTag(int) = imac 0x261820, m1 0x20d42c;
    virtual void removeChildByTag(int, bool) = imac 0x261840, m1 0x20d43c;
    virtual void removeAllChildren() = imac 0x261880, m1 0x20d48c;
    virtual void removeAllChildrenWithCleanup(bool) = m1 0x20d49c, imac 0x2618a0;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x2619b0, m1 0x20d5c8;
    virtual void sortAllChildren() = imac 0x261af0, m1 0x20d6e0;
    virtual cocos2d::CCGridBase* getGrid() = imac 0x260f20, m1 0x20cbd0;
    virtual void setGrid(cocos2d::CCGridBase*) = imac 0x260f30, m1 0x20cbd8;
    virtual void* getUserData() = imac 0x261160, m1 0x20cdb4;
    virtual void setUserData(void*) = imac 0x261170, m1 0x20cdbc;
    virtual cocos2d::CCObject* getUserObject() = m1 0x20cddc, imac 0x2611b0;
    virtual void setUserObject(cocos2d::CCObject*) = m1 0x20cdf4, imac 0x2611e0;
    virtual cocos2d::CCGLProgram* getShaderProgram() = imac 0x2611a0, m1 0x20cdd4;
    virtual void setShaderProgram(cocos2d::CCGLProgram*) = imac 0x261220, m1 0x20ce30;
    virtual cocos2d::CCCamera* getCamera() = imac 0x260ed0, m1 0x20cb70;
    virtual bool isRunning() = imac 0x2610f0, m1 0x20cd74;
    virtual void registerScriptHandler(int) = imac 0x262440, m1 0x20e064;
    virtual void unregisterScriptHandler() = m1 0x20e094, imac 0x262470;
    virtual void onEnter() = imac 0x262100, m1 0x20dd14;
    virtual void onEnterTransitionDidFinish() = imac 0x262220, m1 0x20de44;
    virtual void onExit() = imac 0x262320, m1 0x20df58;
    virtual void onExitTransitionDidStart() = imac 0x262290, m1 0x20dec4;
    virtual void cleanup() = imac 0x261330, m1 0x20cf4c;
    virtual void draw() = imac 0x261ec0, m1 0x20dad8;
    virtual void visit() = m1 0x20dadc, imac 0x261ed0;
    virtual void setActionManager(cocos2d::CCActionManager*) = m1 0x20e0d4, imac 0x2624b0;
    virtual cocos2d::CCActionManager* getActionManager() = imac 0x262500, m1 0x20e124;
    virtual void setScheduler(cocos2d::CCScheduler*) = m1 0x20e190, imac 0x2625c0;
    virtual cocos2d::CCScheduler* getScheduler() = imac 0x262610, m1 0x20e1e0;
    virtual void updateTransform() = imac 0x263460, m1 0x20efc4;
    virtual cocos2d::CCAffineTransform const nodeToParentTransform() = imac 0x262890, m1 0x20e410;
    virtual cocos2d::CCAffineTransform const nodeToParentTransformFast() = imac 0x262ba0, m1 0x20e6cc;
    virtual cocos2d::CCAffineTransform const parentToNodeTransform() = imac 0x262ff0, m1 0x20eb78;
    virtual cocos2d::CCAffineTransform nodeToWorldTransform() = imac 0x263070, m1 0x20ebec;
    virtual cocos2d::CCAffineTransform nodeToWorldTransformFast() = imac 0x263100, m1 0x20ec78;
    virtual cocos2d::CCAffineTransform worldToNodeTransform() = imac 0x263190, m1 0x20ed04;
    virtual bool addComponent(cocos2d::CCComponent*) = imac 0x2634D0, m1 0x20f02c;
    virtual bool removeComponent(char const*) = imac 0x2634F0, m1 0x20f03c;
    virtual bool removeComponent(cocos2d::CCComponent*) = imac 0x263510, m1 0x20f04c;
    virtual void removeAllComponents() = imac 0x263530, m1 0x20f05c;
    virtual void updateTweenAction(float, char const*) = imac 0x263440, m1 0x20efbc;
    virtual void updateTweenActionInt(float, int) = imac 0x263450, m1 0x20efc0;
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
    void pauseTarget(cocos2d::CCObject*) = imac 0x42f9f0, m1 0x3aa790;
    void priorityIn(cocos2d::_listEntry**, cocos2d::CCObject*, int, bool);
    void removeHashElement(cocos2d::_hashSelectorEntry*);
    void removeUpdateFromHash(cocos2d::_listEntry*);
    void resumeTarget(cocos2d::CCObject*);
    void resumeTargets(cocos2d::CCSet*);
    unsigned int scheduleScriptFunc(unsigned int, float, bool);
    void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, unsigned int, float, bool) = imac 0x42e3e0, m1 0x3a90a8;
    void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, bool) = imac 0x42e3c0;
    void scheduleUpdateForTarget(cocos2d::CCObject*, int, bool) = imac 0x42eff0, m1 0x3a9d18;
    void unscheduleAll();
    void unscheduleAllForTarget(cocos2d::CCObject*) = imac 0x42f5b0;
    void unscheduleAllWithMinPriority(int);
    void unscheduleScriptEntry(unsigned int);
    void unscheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*) = imac 0x42def0, m1 0x3a8bb4;
    void unscheduleUpdateForTarget(cocos2d::CCObject const*);

    virtual void update(float) = imac 0x430030, m1 0x3aad68;
}

[[link(win, android)]]
class cocos2d::CCLayer {
    static cocos2d::CCLayer* create() = imac 0x49d700, m1 0x4085a4;

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

    virtual bool init() = m1 0x408548, imac 0x49d6a0;
    virtual void onEnter() = m1 0x408e20, imac 0x49dfa0;
    virtual void onEnterTransitionDidFinish() = imac 0x49e130, m1 0x408fa4;
    virtual void onExit() = m1 0x408ee4, imac 0x49e060;
    virtual void registerWithTouchDispatcher() = m1 0x4086b4, imac 0x49d830;
    virtual void registerScriptTouchHandler(int, bool, int, bool) = imac 0x49d8b0, m1 0x408728;
    virtual void unregisterScriptTouchHandler() = imac 0x49d910, m1 0x408788;
    virtual bool isTouchEnabled() = imac 0x49d9c0, m1 0x408844;
    virtual void setTouchEnabled(bool) = imac 0x49d9d0, m1 0x40884c;
    virtual void setTouchMode(cocos2d::ccTouchesMode) = imac 0x49da40, m1 0x4088bc;
    virtual int getTouchMode() = imac 0x49daf0, m1 0x40898c;
    virtual void setTouchPriority(int) = imac 0x49da90, m1 0x408920;
    virtual int getTouchPriority() = imac 0x49dae0, m1 0x408984;
    virtual bool isAccelerometerEnabled() = imac 0x49db00, m1 0x408994;
    virtual void setAccelerometerEnabled(bool) = imac 0x49db10, m1 0x40899c;
    virtual void setAccelerometerInterval(double) = imac 0x49db50, m1 0x4089d8;
    virtual bool isKeypadEnabled() = imac 0x49dc50, m1 0x408ae0;
    virtual void setKeypadEnabled(bool) = imac 0x49dc60, m1 0x408ae8;
    virtual bool isKeyboardEnabled() = imac 0x49dcd0, m1 0x408b5c;
    virtual void setKeyboardEnabled(bool) = m1 0x408b64, imac 0x49dce0;
    virtual bool isMouseEnabled() = imac 0x49dd40, m1 0x408bcc;
    virtual void setMouseEnabled(bool) = m1 0x408bd4, imac 0x49dd50;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x408fdc, imac 0x49e170;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x49e200, m1 0x40909c;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x49e280, m1 0x40913c;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x49e300, m1 0x4091dc;
    virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x49e380, m1 0x40927c;
    virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x49e400, m1 0x40931c;
    virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x49e480, m1 0x4093bc;
    virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x49e500, m1 0x40945c;
    virtual void setPreviousPriority(int) = imac 0x76d0, m1 0x93ac;
    virtual int getPreviousPriority() = imac 0x76e0, m1 0x93b4;

    virtual void didAccelerate(cocos2d::CCAcceleration*) = imac 0x49db80, m1 0x408a0c;

    virtual void keyBackClicked() = imac 0x49de00, m1 0x408c78;
    virtual void keyMenuClicked() = imac 0x49dea0, m1 0x408d20;

    virtual void keyDown(cocos2d::enumKeyCodes) = imac 0x49df20, m1 0x408db0;
}

[[link(win, android)]]
class cocos2d::CCLayerGradient {
    static cocos2d::CCLayerGradient* create(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&) = m1 0x40aeb0;
    static cocos2d::CCLayerGradient* create(cocos2d::_ccColor4B const& a1, cocos2d::_ccColor4B const& a2, cocos2d::CCPoint const& a3) = ios inline, imac 0x4a0880, m1 0x40b0d8 {
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

    virtual bool init() = imac 0x4a0980, m1 0x40b214;

    virtual void updateColor() = imac 0x4a0ac0, m1 0x40b344;
    virtual bool initWithColor(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&) = imac 0x4a09b0, m1 0x40b24c;
    virtual bool initWithColor(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&, cocos2d::CCPoint const&) = imac 0x4a0a10, m1 0x40b2ac;
    virtual cocos2d::_ccColor3B const& getStartColor() = imac 0x4a0cb0, m1 0x40b55c;
    virtual void setStartColor(cocos2d::_ccColor3B const&);
    virtual cocos2d::_ccColor3B const& getEndColor() = m1 0x40b590, imac 0x4a0d10;
    virtual void setEndColor(cocos2d::_ccColor3B const&) = imac 0x4a0ce0;
    virtual unsigned char getStartOpacity() = imac 0x4a0d40, m1 0x40b5a8;
    virtual void setStartOpacity(unsigned char) = imac 0x4a0d20, m1 0x40b598;
    virtual unsigned char getEndOpacity() = imac 0x4a0d70, m1 0x40b5c0;
    virtual void setEndOpacity(unsigned char) = imac 0x4a0d50, m1 0x40b5b0;
    virtual cocos2d::CCPoint const& getVector() = imac 0x4a0db0, m1 0x40b5f8;
    virtual void setVector(cocos2d::CCPoint const&) = imac 0x4a0d80, m1 0x40b5c8;
    virtual void setCompressedInterpolation(bool) = imac 0x4a0e50, m1 0x40b67c;
    virtual bool isCompressedInterpolation() = imac 0x4a0e40, m1 0x40b674;
}

[[link(win, android)]]
class cocos2d::CCObject {
    static cocos2d::CCObject* createWithCoder(DS_Dictionary*);

    // CCObject(cocos2d::CCObject const&);
    CCObject();
    ~CCObject();

    cocos2d::CCObjectType getObjType() const;

    void setObjType(cocos2d::CCObjectType);

    cocos2d::CCObject* autorelease() = m1 0x3e6440;
    cocos2d::CCObject* copy();
    bool isSingleReference() const = imac 0x477fd0;
    void release() = imac 0x477f70, m1 0x3e640c;
    void retain() = imac 0x477f90;
    unsigned int retainCount() const;

    virtual int getTag() const = imac 0x478020, m1 0x3e64a8;
    virtual bool isEqual(cocos2d::CCObject const*) = imac 0x477ff0, m1 0x3e6484;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x478000, m1 0x3e6490;
    virtual void encodeWithCoder(DS_Dictionary*) = imac 0x478040, m1 0x3e64b8;
    virtual bool canEncode() = imac 0x478060, m1 0x3e64c4;
    virtual void setTag(int) = imac 0x478030, m1 0x3e64b0;
}

[[link(win, android)]]
class cocos2d::CCOrbitCamera {
    static cocos2d::CCOrbitCamera* create(float, float, float, float, float, float, float);

    bool initWithDuration(float, float, float, float, float, float, float);
    // CCOrbitCamera(cocos2d::CCOrbitCamera const&);
    // CCOrbitCamera();

    void sphericalRadius(float*, float*, float*);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x354930, m1 0x2e8578;
    virtual void update(float) = imac 0x354d90, m1 0x2e8934;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x354a80, m1 0x2e86a0;
}

[[link(win, android)]]
class cocos2d::CCLayerColor {
    static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&) = imac 0x49fd40, m1 0x40a684;
    static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&, float, float) = m1 0x40a508;
    static cocos2d::CCLayerColor* create() = ios inline, imac 0x49f990, m1 0x40a390 {
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

    virtual bool init() = m1 0x40a7d0, imac 0x49ff10;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x4a0100, m1 0x40a9a0;
    virtual void draw() = m1 0x40ab00, imac 0x4a0240;
    virtual bool initWithColor(cocos2d::_ccColor4B const&, float, float) = imac 0x49ff60, m1 0x40a81c;
    virtual bool initWithColor(cocos2d::_ccColor4B const&) = m1 0x40a908;
    virtual void updateColor() = imac 0x4a01f0, m1 0x40aa84;

    virtual void setColor(cocos2d::_ccColor3B const&) = imac 0x4a0310, m1 0x40abcc;
    virtual void setOpacity(unsigned char) = imac 0x4a0490, m1 0x40ad78;

    virtual void setBlendFunc(cocos2d::_ccBlendFunc) = imac 0x49f970, m1 0x40a380;
    virtual cocos2d::_ccBlendFunc getBlendFunc() = imac 0x49f950, m1 0x40a370;
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA {
    static cocos2d::CCLayerRGBA* create();

    // CCLayerRGBA(cocos2d::CCLayerRGBA const&);
    CCLayerRGBA();
    ~CCLayerRGBA();

    virtual bool init() = m1 0x4098dc, imac 0x49eb60;

    virtual void setColor(cocos2d::_ccColor3B const&);
    virtual cocos2d::_ccColor3B const& getColor() = imac 0x49ed60, m1 0x409ae0;
    virtual cocos2d::_ccColor3B const& getDisplayedColor() = imac 0x49ed80, m1 0x409af0;
    virtual unsigned char getDisplayedOpacity() = imac 0x49ec00, m1 0x409978;
    virtual unsigned char getOpacity() = imac 0x49ebe0, m1 0x409968;
    virtual void setOpacity(unsigned char) = imac 0x49ec20, m1 0x409988;
    virtual bool isCascadeColorEnabled() = imac 0x49f2f0, m1 0x409f48;
    virtual void setCascadeColorEnabled(bool) = imac 0x49f310, m1 0x409f58;
    virtual void updateDisplayedColor(cocos2d::_ccColor3B const&);
    virtual bool isCascadeOpacityEnabled() = imac 0x49f2b0, m1 0x409f28;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x49f2d0, m1 0x409f38;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x49ef10, m1 0x409c8c;
}

[[link(win, android)]]
class cocos2d::CCMouseDispatcher {
    // CCMouseDispatcher(cocos2d::CCMouseDispatcher const&);
    // CCMouseDispatcher();
    void addDelegate(cocos2d::CCMouseDelegate*);
    bool dispatchScrollMSG(float, float) = imac 0x55a530, m1 0x4b0dcc;
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
    static void PVRImagesHavePremultipliedAlpha(bool) = imac 0x466990;
    static cocos2d::CCTexture2DPixelFormat defaultAlphaPixelFormat();
    static void setDefaultAlphaPixelFormat(cocos2d::CCTexture2DPixelFormat);

    bool initPremultipliedATextureWithImage(cocos2d::CCImage*, unsigned int, unsigned int) = m1 0x3d5a38;
    bool initWithData(void const*, cocos2d::CCTexture2DPixelFormat, unsigned int, unsigned int, cocos2d::CCSize const&) = imac 0x4657e0, m1 0x3d56a8;
    bool initWithETCFile(char const*) = imac 0x4668c0, m1 0x3d66e0;
    bool initWithImage(cocos2d::CCImage*);
    bool initWithPVRFile(char const*) = imac 0x4667e0, m1 0x3d6608;
    bool initWithString(char const*, char const*, float) = imac 0x466430, m1 0x3d6254;
    bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment) = imac 0x466490, m1 0x3d62c4;
    bool initWithString(char const*, cocos2d::_ccFontDefinition*);

    cocos2d::CCSize const& getContentSizeInPixels();

    void setAliasTexParameters();
    void setAntiAliasTexParameters();
    void setTexParameters(cocos2d::_ccTexParams*) = imac 0x4669f0, m1 0x3d680c;

    // CCTexture2D(cocos2d::CCTexture2D const&);
    ~CCTexture2D();
    CCTexture2D();
    unsigned int bitsPerPixelForFormat(cocos2d::CCTexture2DPixelFormat) = imac 0x465ae0;
    unsigned int bitsPerPixelForFormat() = imac 0x466b70;
    char const* description() = imac 0x465b00, m1 0x3d5978;
    void drawAtPoint(cocos2d::CCPoint const&) = m1 0x3d63fc;
    void drawInRect(cocos2d::CCRect const&) = m1 0x3d6514;
    void generateMipmap() = imac 0x4669a0, m1 0x3d67b4;
    bool hasMipmaps();
    bool hasPremultipliedAlpha();
    void* keepData(void*, unsigned int);
    void releaseData(void*);
    void releaseGLTexture() = imac 0x465780, m1 0x3d5664;
    char const* stringForFormat() = imac 0x466b20;

    virtual cocos2d::CCTexture2DPixelFormat getPixelFormat() = imac 0x465630, m1 0x3d5580;
    virtual unsigned int getPixelsWide() = imac 0x465640, m1 0x3d5588;
    virtual unsigned int getPixelsHigh() = imac 0x465650, m1 0x3d5590;
    virtual unsigned int getName() = imac 0x465660, m1 0x3d5598;
    virtual float getMaxS() = imac 0x4656f0, m1 0x3d5600;
    virtual void setMaxS(float) = imac 0x465700, m1 0x3d5608;
    virtual float getMaxT() = imac 0x465710, m1 0x3d5610;
    virtual void setMaxT(float) = imac 0x465720, m1 0x3d5618;
    virtual cocos2d::CCSize getContentSize() = m1 0x3d55a0, imac 0x465670;
    virtual cocos2d::CCGLProgram* getShaderProgram() = imac 0x465730, m1 0x3d5620;
    virtual void setShaderProgram(cocos2d::CCGLProgram*) = imac 0x465740, m1 0x3d5628;
}

[[link(win, android)]]
class cocos2d::CCTextureCache {
    static void purgeSharedTextureCache();
    static void reloadAllTextures();
    static cocos2d::CCTextureCache* sharedTextureCache() = imac 0x5d46d0, m1 0x508230;

    // CCTextureCache(cocos2d::CCTextureCache const&);
    // CCTextureCache();
    cocos2d::CCTexture2D* addETCImage(char const*);
    cocos2d::CCTexture2D* addImage(char const*, bool) = imac 0x5d5960, m1 0x509420;
    void addImageAsync(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler, int, cocos2d::CCTexture2DPixelFormat) = imac 0x5d4ba0;
    void addImageAsyncCallBack(float);
    cocos2d::CCTexture2D* addPVRImage(char const*);
    cocos2d::CCTexture2D* addUIImage(cocos2d::CCImage*, char const*) = imac 0x5d67a0, m1 0x50a328;
    char const* description();
    void dumpCachedTextureInfo();
    void prepareAsyncLoading();
    bool reloadTexture(char const*);
    void removeAllTextures();
    void removeTexture(cocos2d::CCTexture2D*);
    void removeTextureForKey(char const*) = imac 0x5d6d40;
    void removeUnusedTextures();
    cocos2d::CCDictionary* snapshotTextures();
    cocos2d::CCTexture2D* textureForKey(char const*) = imac 0x5d6dc0, m1 0x50a98c;
}

[[link(win, android)]]
class cocos2d::CCTouch {
    cocos2d::CCPoint getLocationInView() const = imac 0x5a040;
    cocos2d::CCPoint getLocation() const = m1 0x4fb38;
    cocos2d::CCPoint getPreviousLocation() const = ios inline, m1 0x4fb64 {
    	return CCDirector::sharedDirector()->convertToGL(m_prevPoint);
    }
    cocos2d::CCPoint getStartLocation() const = ios inline, m1 0x4fb90 {
    	return CCDirector::sharedDirector()->convertToGL(m_startPoint);
    }
    cocos2d::CCPoint getDelta() const = ios inline, m1 0x4fbbc {
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
    bool init() = imac 0x4b8770;

    int getTargetPrio() const;

    void setDispatchEvents(bool);
    void setPriority(int p1, cocos2d::CCTouchDelegate* p2) = ios inline, imac 0x4b9170, m1 0x420f68 {
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
    void addPrioTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x4b8a20, m1 0x420780;
    void addStandardDelegate(cocos2d::CCTouchDelegate*, int);
    void addTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x4b8a40, m1 0x420798;
    void decrementForcePrio(int);
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCArray*, cocos2d::CCTouchDelegate*);
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCTouchDelegate*);
    void forceAddHandler(cocos2d::CCTouchHandler*, cocos2d::CCArray*);
    void forceRemoveAllDelegates();
    void forceRemoveDelegate(cocos2d::CCTouchDelegate*) = imac 0x4b8db0;
    void incrementForcePrio(int);
    bool isDispatchEvents();
    bool isUsingForcePrio() = imac 0x4b8a10;
    void rearrangeHandlers(cocos2d::CCArray* handlers) = ios inline {
    	std::sort(handlers->data->arr, handlers->data->arr + handlers->data->num, [](const CCObject* p1, const CCObject* p2) {
    		return ((CCTouchHandler*)p1)->getPriority() < ((CCTouchHandler*)p2)->getPriority();
    	});
    }
    void registerForcePrio(cocos2d::CCObject*, int) = imac 0x4b8920, m1 0x420658;
    void removeAllDelegates();
    void removeDelegate(cocos2d::CCTouchDelegate*) = m1 0x420c44;
    void touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int) = imac 0x4b92c0, m1 0x4210d8;
    void unregisterForcePrio(cocos2d::CCObject*) = imac 0x4b89c0, m1 0x42070c;

    virtual void touchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b98e0, m1 0x421658;
    virtual void touchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b9920, m1 0x421684;
    virtual void touchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b9960, m1 0x4216b0;
    virtual void touchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b99a0, m1 0x4216dc;
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

    virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int) = imac 0x46e4c0, m1 0x3dd74c;
}

[[link(win, android)]]
class cocos2d::CCEGLView {
    // CCEGLView();
    // CCEGLView(cocos2d::CCEGLView const&);
    virtual void swapBuffers() = m1 0x451454, imac 0x4f0250;
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
    bool initWithImageFile(char const*, cocos2d::CCImage::EImageFormat) = imac 0x476d00, m1 0x3e555c;
    bool initWithImageFileThreadSafe(char const*, cocos2d::CCImage::EImageFormat) = imac 0x4774f0, m1 0x3e5b88;
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
    virtual bool attachWithIME() = imac 0x4a8de0, m1 0x4120bc;
    virtual bool detachWithIME() = imac 0x4a8fd0, m1 0x4122fc;
    virtual void deleteForward() = imac 0x76f0, m1 0x93bc {}
}

[[link(win, android)]]
class cocos2d::CCIMEDispatcher {
    static cocos2d::CCIMEDispatcher* sharedDispatcher() = imac 0x4a8b30;

    // CCIMEDispatcher();

    void addDelegate(cocos2d::CCIMEDelegate*);
    bool attachDelegateWithIME(cocos2d::CCIMEDelegate*);
    bool detachDelegateWithIME(cocos2d::CCIMEDelegate*);
    void dispatchDeleteBackward();
    void dispatchDeleteForward();
    void dispatchInsertText(char const*, int, cocos2d::enumKeyCodes) = imac 0x4a92a0, m1 0x4125e0;
    void dispatchKeyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&);
    void dispatchKeyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&);
    void dispatchKeyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
    void dispatchKeyboardWillHide();
    void dispatchKeyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
    char const* getContentText();
    bool hasDelegate() = imac 0x4a9280;
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
    bool dispatchKeyboardMSG(cocos2d::enumKeyCodes, bool, bool) = imac 0x1f1d40, m1 0x1a8420;
    void forceAddDelegate(cocos2d::CCKeyboardDelegate*);
    void forceRemoveDelegate(cocos2d::CCKeyboardDelegate*);
    char const* keyToString(cocos2d::enumKeyCodes) = imac 0x1f2030;
    void removeDelegate(cocos2d::CCKeyboardDelegate*);
    void updateModifierKeys(bool, bool, bool, bool) = imac 0x1f2000;
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
    static cocos2d::CCDirector* sharedDirector() = imac 0x46f690, m1 0x3de7fc;

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
    cocos2d::CCSize getWinSize() = imac 0x470ab0;
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
    void setDepthTest(bool) = imac 0x46fdd0;
    void setDisplayStats(bool);
    void setDontCallWillSwitch(bool);
    void setGLDefaultValues() = imac 0x46fd60;
    void setNextDeltaTimeZero(bool);
    void setNextScene();
    void setNotificationNode(cocos2d::CCNode*);
    void setOpenGLView(cocos2d::CCEGLView*);
    void setProjection(cocos2d::ccDirectorProjection);
    void setSceneReference(cocos2d::CCScene*);
    void setSmoothFix(bool);
    void setSmoothFixCheck(bool);
    void setViewport() = imac 0x470ef0, m1 0x3dfd5c;

    // CCDirector(cocos2d::CCDirector const&);
    // CCDirector();
    void applySmoothFix();
    void calculateDeltaTime();
    void calculateMPF();
    void checkSceneReference();
    cocos2d::CCPoint convertToGL(cocos2d::CCPoint const&) = imac 0x470fe0, m1 0x3dfe30;
    cocos2d::CCPoint convertToUI(cocos2d::CCPoint const&);
    void createStatsLabel();
    void drawScene() = m1 0x3df01c;
    void end();
    bool isDisplayStats();
    bool isNextDeltaTimeZero();
    bool isPaused();
    bool isSendCleanupToScene();
    int levelForSceneInStack(cocos2d::CCScene*);
    void pause();
    void popScene();
    bool popSceneWithTransition(float, cocos2d::PopTransition) = imac 0x471650, m1 0x3e0414;
    void popToRootScene();
    void popToSceneInStack(cocos2d::CCScene*);
    void popToSceneStackLevel(int);
    void purgeCachedData();
    void purgeDirector() = imac 0x471910;
    bool pushScene(cocos2d::CCScene*) = imac 0x4713c0, m1 0x3e0160;
    void removeStatsLabel() = imac 0x471b20;
    bool replaceScene(cocos2d::CCScene*) = imac 0x471470, m1 0x3e0228;
    void resetSmoothFixCounter();
    void reshapeProjection(cocos2d::CCSize const&);
    void resume() = imac 0x471aa0;
    void runWithScene(cocos2d::CCScene*) = imac 0x471320;
    int sceneCount();
    void setupScreenScale(cocos2d::CCSize, cocos2d::CCSize, cocos2d::TextureQuality);
    void showFPSLabel();
    void showStats();
    void toggleShowFPS(bool, gd::string, cocos2d::CCPoint) = imac 0x470990;
    void updateContentScale(cocos2d::TextureQuality);
    void updateScreenScale(cocos2d::CCSize);
    void willSwitchToScene(cocos2d::CCScene*) = imac 0x4712d0, m1 0x3e0044;

    virtual bool init() = imac 0x46f7c0, m1 0x3de920;
    virtual cocos2d::CCScheduler* getScheduler() = imac 0x471ca0, m1 0x3e099c;
    virtual void setScheduler(cocos2d::CCScheduler*) = imac 0x471c60, m1 0x3e0954;
    virtual cocos2d::CCActionManager* getActionManager() = imac 0x471cf0, m1 0x3e09ec;
    virtual void setActionManager(cocos2d::CCActionManager*) = imac 0x471cb0, m1 0x3e09a4;
    virtual cocos2d::CCTouchDispatcher* getTouchDispatcher() = imac 0x471d40, m1 0x3e0a3c;
    virtual void setTouchDispatcher(cocos2d::CCTouchDispatcher*) = imac 0x471d00, m1 0x3e09f4;
    virtual cocos2d::CCKeypadDispatcher* getKeypadDispatcher() = imac 0x471e30, m1 0x3e0b08;
    virtual void setKeypadDispatcher(cocos2d::CCKeypadDispatcher*) = imac 0x471df0, m1 0x3e0acc;
    virtual cocos2d::CCKeyboardDispatcher* getKeyboardDispatcher() = imac 0x471d90, m1 0x3e0a80;
    virtual void setKeyboardDispatcher(cocos2d::CCKeyboardDispatcher*) = imac 0x471d50, m1 0x3e0a44;
    virtual cocos2d::CCMouseDispatcher* getMouseDispatcher() = imac 0x471de0, m1 0x3e0ac4;
    virtual void setMouseDispatcher(cocos2d::CCMouseDispatcher*) = imac 0x471da0, m1 0x3e0a88;
    virtual cocos2d::CCAccelerometer* getAccelerometer() = imac 0x471e70, m1 0x3e0b48;
    virtual void setAccelerometer(cocos2d::CCAccelerometer*) = imac 0x471e40, m1 0x3e0b10;
    virtual float getDeltaTime() = imac 0x470880, m1 0x3df7b0;
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

    virtual bool init() = imac 0x263630, m1 0x20f0e8;

    virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x20f4a8;
    virtual cocos2d::_ccColor3B const& getColor() = imac 0x263a00, m1 0x20f488;
    virtual cocos2d::_ccColor3B const& getDisplayedColor() = imac 0x263a20, m1 0x20f498;
    virtual unsigned char getDisplayedOpacity() = imac 0x2636e0, m1 0x20f170;
    virtual unsigned char getOpacity() = imac 0x2636c0, m1 0x20f160;
    virtual void setOpacity(unsigned char) = imac 0x263700, m1 0x20f180;
    virtual bool isCascadeColorEnabled() = imac 0x263dd0, m1 0x20f740;
    virtual void setCascadeColorEnabled(bool) = imac 0x263df0, m1 0x20f750;
    virtual void updateDisplayedColor(cocos2d::_ccColor3B const&);
    virtual bool isCascadeOpacityEnabled() = imac 0x2639c0, m1 0x20f468;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x2639e0, m1 0x20f478;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x263840, m1 0x20f2d8;
}

[[link(win, android)]]
class cocos2d::CCSequence {
    static cocos2d::CCSequence* create(cocos2d::CCArray*) = m1 0x32f858;
    // static cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, ...) = imac 0x3b8aa0, m1 0x33d1fc;
    static cocos2d::CCSequence* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3a2660, m1 0x32ff80;
    static cocos2d::CCSequence* createWithVariableList(cocos2d::CCFiniteTimeAction*, va_list) = imac 0x3a2840, m1 0x32f658;

    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3a2730, m1 0x32f5cc;

    // CCSequence(cocos2d::CCSequence const&);
    // CCSequence();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x32fa64, imac 0x3a2d60;
    virtual void update(float) = imac 0x3a3010, m1 0x32fcfc;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x32fc74, imac 0x3a2fa0;
    virtual void stop() = imac 0x3a2fe0, m1 0x32fcbc;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a31b0, m1 0x32fea0;
}

[[link(win, android)]]
class cocos2d::CCSprite {
    static cocos2d::CCSprite* create(char const*);
    static cocos2d::CCSprite* create(char const*, cocos2d::CCRect const&);
    static cocos2d::CCSprite* create();
    static cocos2d::CCSprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*);
    static cocos2d::CCSprite* createWithSpriteFrameName(char const*) = m1 0x2217bc;
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

    virtual bool init() = imac 0x276de0, m1 0x2218cc;
    virtual void setVertexZ(float) = imac 0x278850, m1 0x2230a8;
    virtual void setScaleX(float) = imac 0x2786f0, m1 0x222f24;
    virtual void setScaleY(float) = imac 0x278760, m1 0x222fa0;
    virtual void setScale(float) = imac 0x2787d0, m1 0x22301c;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x278440, m1 0x222c60;
    virtual void setSkewX(float) = imac 0x278610, m1 0x222e44;
    virtual void setSkewY(float) = imac 0x278680, m1 0x222eb4;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x2788c0, m1 0x223118;
    virtual void setVisible(bool) = imac 0x278940, m1 0x22318c;
    virtual void setRotation(float) = imac 0x2784c0, m1 0x222cf4;
    virtual void setRotationX(float) = imac 0x278530, m1 0x222d64;
    virtual void setRotationY(float) = imac 0x2785a0, m1 0x222dd4;
    virtual void ignoreAnchorPointForPosition(bool) = imac 0x278930, m1 0x223188;
    virtual void addChild(cocos2d::CCNode*) = imac 0x277f80, m1 0x222794;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x277f90, m1 0x222798;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x277fa0, m1 0x22279c;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x2780e0, m1 0x222904;
    virtual void removeAllChildrenWithCleanup(bool) = m1 0x22294c, imac 0x278120;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x278060, m1 0x222870;
    virtual void sortAllChildren() = m1 0x222a00, imac 0x2781e0;
    virtual void draw() = m1 0x22267c, imac 0x277e60;
    virtual void updateTransform() = imac 0x2779a0, m1 0x2222c8;
    virtual bool initWithTexture(cocos2d::CCTexture2D*) = imac 0x276fa0, m1 0x221a48;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = imac 0x276f80, m1 0x221a38;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = imac 0x276e00, m1 0x2218e4;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x221bbc, imac 0x277100;
    virtual bool initWithSpriteFrameName(char const*) = m1 0x221c20, imac 0x277150;
    virtual bool initWithFile(char const*) = m1 0x221ac4, imac 0x277010;
    virtual bool initWithFile(char const*, cocos2d::CCRect const&) = m1 0x221b58, imac 0x2770a0;
    virtual void setChildColor(cocos2d::_ccColor3B const&);
    virtual void setChildOpacity(unsigned char) = imac 0x278d20, m1 0x22341c;
    virtual cocos2d::CCSpriteBatchNode* getBatchNode() = imac 0x279700, m1 0x22398c;
    virtual void setBatchNode(cocos2d::CCSpriteBatchNode*) = imac 0x279710, m1 0x223994;
    virtual void refreshTextureRect() = imac 0x277350, m1 0x221dcc;
    virtual void setTextureRect(cocos2d::CCRect const&) = imac 0x2773e0, m1 0x221e50;
    virtual void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&) = imac 0x277400, m1 0x221e64;
    virtual void setVertexRect(cocos2d::CCRect const&) = imac 0x277740, m1 0x2220f8;
    virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = imac 0x2793f0, m1 0x22370c;
    virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = imac 0x2794c0, m1 0x2237e0;
    virtual cocos2d::CCSpriteFrame* displayFrame() = imac 0x279550, m1 0x223884;
    virtual void setDisplayFrameWithAnimationName(char const*, int) = m1 0x22378c, imac 0x279470;
    virtual void setTextureCoords(cocos2d::CCRect const&) = imac 0x277760, m1 0x222100;
    virtual void updateBlendFunc() = m1 0x2239e0, imac 0x279780;
    virtual void setReorderChildDirtyRecursively() = imac 0x278360, m1 0x222b80;
    virtual void setDirtyRecursively(bool) = imac 0x2783c0, m1 0x222be8;

    virtual void setOpacity(unsigned char) = imac 0x278b70, m1 0x223324;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x2792a0, m1 0x2236c0;
    virtual void setColor(cocos2d::_ccColor3B const&) = imac 0x278dc0, m1 0x2234c0;
    virtual void updateDisplayedColor(cocos2d::_ccColor3B const&);
    virtual void setOpacityModifyRGB(bool) = imac 0x278fe0, m1 0x22362c;
    virtual bool isOpacityModifyRGB() = imac 0x279130, m1 0x223664;

    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x2797e0, m1 0x223a38;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x279950, m1 0x223b78;
}

[[link(win, android)]]
class cocos2d::CCLabelBMFont {
    CCLabelBMFont();

    static cocos2d::CCLabelBMFont* create(char const*, char const*) = imac 0x5bff70, m1 0x4f59d4;
    static cocos2d::CCLabelBMFont* create(char const*, char const*, float);
    static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment) = imac 0x5bfec0, m1 0x4f5790;
    static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = imac 0x5bfe20, m1 0x4f5854;
    static cocos2d::CCLabelBMFont* create() = ios inline, m1 0x4f570c {
    	auto pRet = new CCLabelBMFont();

    	if (pRet && pRet->init())
    	{
    		pRet->autorelease();
    		return pRet;
    	}

    	CC_SAFE_DELETE(pRet);
    	return nullptr;
    }
    static cocos2d::CCLabelBMFont* createBatched(char const*, char const*, cocos2d::CCArray*, int) = imac 0x5c02f0, m1 0x4f5d58;
    static void purgeCachedData();

    bool initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = imac 0x5c0020, m1 0x4f5a9c;

    cocos2d::CCBMFontConfiguration* getConfiguration() const;
    int getExtraKerning() const;
    char const* getFntFile() = imac 0x5c33c0;
    bool getIsBatched() const;
    float getLetterPosXLeft(cocos2d::CCSprite*, float, bool);
    float getLetterPosXRight(cocos2d::CCSprite*, float, bool);
    cocos2d::CCArray* getTargetArray() const;

    void setExtraKerning(int);
    void setFntFile(char const*) = imac 0x5c32e0, m1 0x4f86bc;
    void setIsBatched(bool);
    void setTargetArray(cocos2d::CCArray*);
    void createFontChars() = imac 0x5c0750, m1 0x4f6138;
    int kerningAmountForFirst(unsigned short, unsigned short);
    void limitLabelWidth(float, float, float) = imac 0x5c3400, m1 0x4f87b4;

    ~CCLabelBMFont();
    virtual bool init() = imac 0x5c03a0, m1 0x4f5e20;
    virtual void setScaleX(float) = imac 0x5c32a0, m1 0x4f8664;
    virtual void setScaleY(float) = imac 0x5c32c0, m1 0x4f8690;
    virtual void setScale(float) = imac 0x5c3280, m1 0x4f8638;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x5c1b10, m1 0x4f733c;
    virtual void setString(char const*) = imac 0x5c1050, m1 0x4f6928;
    virtual void setString(char const*, bool) = imac 0x5c10a0, m1 0x4f694c;
    virtual char const* getString() = imac 0x5c12d0, m1 0x4f6b78;
    virtual void setCString(char const*) = imac 0x5c1320, m1 0x4f6bb0;
    virtual void updateLabel() = imac 0x5c1b50, m1 0x4f7390;
    virtual void setAlignment(cocos2d::CCTextAlignment) = imac 0x5c3220, m1 0x4f8608;
    virtual void setWidth(float) = imac 0x5c3240, m1 0x4f8618;
    virtual void setLineBreakWithoutSpace(bool) = imac 0x5c3260, m1 0x4f8628;
    virtual void setString(unsigned short*, bool) = m1 0x4f69d4, imac 0x5c1120;

    virtual void setColor(cocos2d::_ccColor3B const&);
    virtual cocos2d::_ccColor3B const& getColor() = imac 0x5c1340, m1 0x4f6bbc;
    virtual cocos2d::_ccColor3B const& getDisplayedColor() = imac 0x5c1360, m1 0x4f6bcc;
    virtual unsigned char getDisplayedOpacity() = imac 0x5c1510, m1 0x4f6d78;
    virtual unsigned char getOpacity() = imac 0x5c14f0, m1 0x4f6d68;
    virtual void setOpacity(unsigned char) = imac 0x5c1530, m1 0x4f6d88;
    virtual void setOpacityModifyRGB(bool) = imac 0x5c1670, m1 0x4f6ee0;
    virtual bool isOpacityModifyRGB() = imac 0x5c17d0, m1 0x4f7040;
    virtual bool isCascadeColorEnabled() = imac 0x5c1a90, m1 0x4f72fc;
    virtual void setCascadeColorEnabled(bool) = imac 0x5c1ab0, m1 0x4f730c;
    virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = imac 0x5c18f0, m1 0x4f7168;
    virtual bool isCascadeOpacityEnabled() = imac 0x5c1ad0, m1 0x4f731c;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x5c1af0, m1 0x4f732c;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x5c17f0, m1 0x4f7050;

    //purgeCachedData = ios 0x30958c
}

[[link(win, android)]]
class cocos2d::CCActionManager {
    void addAction(cocos2d::CCAction*, cocos2d::CCNode*, bool) = m1 0x1d51f4;
    void pauseTarget(cocos2d::CCObject*) = imac 0x2220a0, m1 0x1d4ee4;
    void resumeTarget(cocos2d::CCObject*) = imac 0x222180, m1 0x1d4fe0;
}

[[link(win, android)]]
class cocos2d::CCAnimate {
    static cocos2d::CCAnimate* create(cocos2d::CCAnimation*) = imac 0x3a9260, m1 0x3354bc;

    bool initWithAnimation(cocos2d::CCAnimation*);

    cocos2d::CCAnimation* getAnimation() const;
    bool getRecenterChildren() const;
    bool getRecenterFrames() const;

    void setAnimation(cocos2d::CCAnimation*);
    void setRecenterChildren(bool);
    void setRecenterFrames(bool);

    // CCAnimate(cocos2d::CCAnimate const&);
    // CCAnimate();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a97f0, m1 0x335924;
    virtual void update(float) = imac 0x3a9af0, m1 0x335bd0;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a9a40, m1 0x335b24;
    virtual void stop() = imac 0x3a9ab0, m1 0x335b8c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a9d30, m1 0x335dd4;
}

[[link(win, android)]]
class cocos2d::CCAnimation {
    // static cocos2d::CCAnimation* create(cocos2d::CCArray*, float);
    static cocos2d::CCAnimation* create(cocos2d::CCArray*, float, unsigned int) = imac 0x285190;
    static cocos2d::CCAnimation* create();
    static cocos2d::CCAnimation* createWithSpriteFrames(cocos2d::CCArray*, float) = imac 0x284f90;

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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x2855d0, m1 0x22eb18;
    virtual float getDuration() = imac 0x2855c0, m1 0x22eb0c;
}

[[link(win, android)]]
class cocos2d::CCApplication {
    static cocos2d::CCApplication* sharedApplication();
    virtual int run();
    virtual void openURL(char const*) = imac 0x316350, m1 0x2abe18;
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

    bool init() = imac 0x709600;
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
    static cocos2d::CCDictionary* create() = m1 0x269004;
    static cocos2d::CCDictionary* createWithContentsOfFile(char const*) = m1 0x2949f8;
    static cocos2d::CCDictionary* createWithContentsOfFileThreadSafe(char const*);
    static cocos2d::CCDictionary* createWithDictionary(cocos2d::CCDictionary*);

    gd::string getFirstKey();

    void setObject(cocos2d::CCObject*, gd::string const&) = imac 0x2fab80, m1 0x2939b4;
    void setObject(cocos2d::CCObject*, intptr_t) = imac 0x2fab80, m1 0x2939b4;
    void setObjectUnSafe(cocos2d::CCObject*, gd::string const&);
    //void setObjectUnSafe(cocos2d::CCObject*, int);

    // CCDictionary(cocos2d::CCDictionary const&);
    // CCDictionary() = ios 0x42b75c;
    cocos2d::CCArray* allKeys() = imac 0x2fa2d0, m1 0x292848;
    cocos2d::CCArray* allKeysForObject(cocos2d::CCObject*);
    char const* charForKey(gd::string const&);
    unsigned int count() = imac 0x2fa2b0, m1 0x29282c;
    cocos2d::CCObject* objectForKey(gd::string const&) = imac 0x2fa640, m1 0x292c84;
    cocos2d::CCObject* objectForKey(intptr_t) = imac 0x2fa9d0, m1 0x292f90;
    cocos2d::CCObject* randomObject();
    void removeAllObjects();
    void removeObjectForElememt(cocos2d::CCDictElement*) = imac 0x2fbea0;
    void removeObjectForKey(gd::string const&) = imac 0x2fbaa0, m1 0x293e90;
    void removeObjectForKey(intptr_t) = imac 0x2fbff0, m1 0x294300;
    void removeObjectsForKeys(cocos2d::CCArray*);
    cocos2d::CCString const* valueForKey(gd::string const&) = imac 0x2fa5c0;
    cocos2d::CCString const* valueForKey(intptr_t) = imac 0x2fab00, m1 0x2930cc;
    bool writeToFile(char const*);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x2fc280, m1 0x29456c;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x2fc710, m1 0x2949e0;
}

[[link(win, android)]]
class cocos2d::CCRenderTexture {
    static cocos2d::CCRenderTexture* create(int, int) = imac 0x5de040, m1 0x510e70;
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat) = imac 0x5ddb00, m1 0x51095c;
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = imac 0x5ddbd0;

    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat);
    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = m1 0x510b24;

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
    void begin() = imac 0x5de120, m1 0x510f64;
    void beginWithClear(float, float, float, float, float, int, unsigned int) = imac 0x5de3f0, m1 0x5111f0;
    void beginWithClear(float, float, float, float) = imac 0x5de350, m1 0x511150;
    void beginWithClear(float, float, float, float, float) = imac 0x5de590, m1 0x511338;
    void beginWithClear(float, float, float, float, float, int) = imac 0x5de670;
    void clear(float, float, float, float);
    void clearDepth(float);
    void clearStencil(int);
    void end() = m1 0x511410;
    void endToLua();
    bool isAutoDraw() const;
    void listenToBackground(cocos2d::CCObject*);
    void listenToForeground(cocos2d::CCObject*);
    cocos2d::CCImage* newCCImage(bool) = m1 0x5118bc;
    bool saveToFile(char const*);
    bool saveToFile(char const*, cocos2d::eImageFormat);
    void updateInternalScale(float, float);

    virtual void draw() = imac 0x5de930, m1 0x5116a0;
    virtual void visit() = m1 0x511614, imac 0x5de8a0;
    virtual cocos2d::CCSprite* getSprite() = imac 0x5dda10, m1 0x5108b4;
    virtual void setSprite(cocos2d::CCSprite*) = imac 0x5dda20, m1 0x5108bc;
}

[[link(win, android)]]
class cocos2d::CCRepeat {
    static cocos2d::CCRepeat* create(cocos2d::CCFiniteTimeAction*, unsigned int) = imac 0x3a32a0;

    bool initWithAction(cocos2d::CCFiniteTimeAction*, unsigned int);

    cocos2d::CCFiniteTimeAction* getInnerAction();

    void setInnerAction(cocos2d::CCFiniteTimeAction*);

    // CCRepeat(cocos2d::CCRepeat const&);
    // CCRepeat();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a3430, m1 0x330108;
    virtual void update(float) = imac 0x3a36d0, m1 0x3303a0;
    virtual bool isDone() = imac 0x3a3800, m1 0x330510;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a3650, m1 0x330318;
    virtual void stop() = imac 0x3a36a0, m1 0x330370;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a3810, m1 0x330520;
}

[[link(win, android)]]
class cocos2d::CCRepeatForever {
    static cocos2d::CCRepeatForever* create(cocos2d::CCActionInterval*) = m1 0x330608;

    bool initWithAction(cocos2d::CCActionInterval*);

    cocos2d::CCActionInterval* getInnerAction();

    void setInnerAction(cocos2d::CCActionInterval*);

    // CCRepeatForever(cocos2d::CCRepeatForever const&);
    // CCRepeatForever();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a3990, m1 0x3306a4;
    virtual bool isDone() = imac 0x3a3b20, m1 0x330854;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a3a70, m1 0x33077c;
    virtual void step(float) = imac 0x3a3ab0, m1 0x3307bc;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a3b30, m1 0x33085c;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInT {
    static cocos2d::CCTransitionMoveInT* create(float, cocos2d::CCScene*);

    // CCTransitionMoveInT(cocos2d::CCTransitionMoveInT const&);
    // CCTransitionMoveInT();
}

[[link(win, android)]]
class cocos2d::CCTransitionFade {
    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*) = m1 0xc04ac;
    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&) = imac 0xd9580;

    // CCTransitionFade(cocos2d::CCTransitionFade const&);
    // CCTransitionFade();

    virtual void onEnter() = m1 0xc1710, imac 0xd9710;
    virtual void onExit() = m1 0xc184c, imac 0xd9840;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xd96f0, m1 0xc16e8;
    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&) = imac 0xd96a0, m1 0xc16a4;
}

[[link(win, android)]]
class cocos2d::CCTransitionRotoZoom {
    static cocos2d::CCTransitionRotoZoom* create(float, cocos2d::CCScene*);

    // CCTransitionRotoZoom(cocos2d::CCTransitionRotoZoom const&);
    // CCTransitionRotoZoom();

    virtual void onEnter() = m1 0xbe0c4, imac 0xd5c50;
}

[[link(win, android)]]
class cocos2d::CCTransitionScene {
    // CCTransitionScene(cocos2d::CCTransitionScene const&);
    // CCTransitionScene();

    ~CCTransitionScene();

    virtual void onEnter() = imac 0xd57d0, m1 0xbdc7c;
    virtual void onExit() = imac 0xd5820, m1 0xbdcd0;
    virtual void cleanup() = m1 0xbdd24, imac 0xd5880;
    virtual void draw() = m1 0xbda30, imac 0xd5580;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xd54b0, m1 0xbd938;
    virtual void sceneOrder() = imac 0xd5570, m1 0xbda24;
}

[[link(win, android)]]
class cocos2d::CCBlink {
    static cocos2d::CCBlink* create(float, unsigned int) = imac 0x3a7990, m1 0x333e40;

    bool initWithDuration(float, unsigned int);

    // CCBlink(cocos2d::CCBlink const&);
    // CCBlink();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a7af0, m1 0x333f78;
    virtual void update(float) = imac 0x3a7c00, m1 0x334070;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a7ab0, m1 0x333f34;
    virtual void stop() = imac 0x3a7a80, m1 0x333f00;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a7c80, m1 0x3340f8;
}

[[link(win, android)]]
class cocos2d::CCCallFunc {
    static cocos2d::CCCallFunc* create(cocos2d::CCObject*, cocos2d::SEL_CallFunc) = imac 0x7973e0, m1 0x6aa558;
}

[[link(win, android)]]
class cocos2d::CCCallFuncN {
    static cocos2d::CCCallFuncN* create(cocos2d::CCObject*, cocos2d::SEL_CallFuncN) = imac 0x797800, m1 0x6aa9ac;
}

[[link(win, android)]]
class cocos2d::CCCallFuncO {
    static cocos2d::CCCallFuncO* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*) = imac 0x797ee0, m1 0x6aaf8c;

    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*);

    cocos2d::CCObject* getObject();

    void setObject(cocos2d::CCObject*);

    // CCCallFuncO(cocos2d::CCCallFuncO const&);
    // CCCallFuncO();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x798030, m1 0x6ab0b8;
    virtual void execute() = imac 0x797ea0, m1 0x6aaf58;
}

[[link(win, android)]]
class cocos2d::CCClippingNode : cocos2d::CCNode {
    static cocos2d::CCClippingNode* create() = ios inline, imac 0x708ec0 {
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

    virtual bool init() = ios inline, imac 0x709000, m1 0x6288d4 {
    	return init(nullptr);
    }

    virtual bool init(cocos2d::CCNode* pStencil) = ios inline, m1 0x6288e4, imac 0x709020 {
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

    virtual void onEnter() = ios inline, imac 0x709090, m1 0x628954 {
    	CCNode::onEnter();
    		m_pStencil->onEnter();
    }
    virtual void onEnterTransitionDidFinish() = ios inline, imac 0x7090c0, m1 0x628980 {
    	CCNode::onEnterTransitionDidFinish();
    		m_pStencil->onEnterTransitionDidFinish();
    }
    virtual void onExit() = ios inline, imac 0x709120, m1 0x6289dc {
    	m_pStencil->onExit();
    		CCNode::onExit();
    }
    virtual void onExitTransitionDidStart() = ios inline, imac 0x7090f0, m1 0x6289ac {
    	m_pStencil->onExitTransitionDidStart();
    		CCNode::onExitTransitionDidStart();
    }

    virtual void visit() = ios inline, imac 0x709150, m1 0x628a0c {
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

    void setBlendFunc(cocos2d::_ccBlendFunc const&) = imac 0x5fb310;

    // CCDrawNode(cocos2d::CCDrawNode const&);
    CCDrawNode();
    ~CCDrawNode();
    void clear() = imac 0x5fb2e0;
    void drawCircle(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&, unsigned int) = imac 0x5fb130, m1 0x52a068;
    void drawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&);
    void drawDot(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&) = imac 0x5f9a70, m1 0x528c00;
    bool drawLines(cocos2d::CCPoint*, unsigned int, float, cocos2d::_ccColor4F const&) = imac 0x5fb0b0, m1 0x529fe8;
    bool drawPolygon(cocos2d::CCPoint*, unsigned int, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&);
    void drawPreciseCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&) = imac 0x5f9c50, m1 0x528e00;
    bool drawRect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&) = imac 0x5faf80, m1 0x529eac;
    void drawSegment(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&) = imac 0x5fa930, m1 0x5299d8;
    void ensureCapacity(unsigned int) = imac 0x5f9660, m1 0x528840;
    void listenBackToForeground(cocos2d::CCObject*) = imac 0x5fb320;
    void render() = imac 0x5f9810, m1 0x5289cc;

    virtual bool init() = imac 0x5f96b0, m1 0x528894;
    virtual void draw() = m1 0x528a54, imac 0x5f98a0;
}

[[link(win, android)]]
class cocos2d::CCSpriteBatchNode {
    static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int);

    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x165fa0, m1 0x1331fc;

    CCSpriteBatchNode();
    ~CCSpriteBatchNode();

    virtual bool init() = imac 0x166220, m1 0x133464;
    virtual void addChild(cocos2d::CCNode*) = imac 0x1666f0, m1 0x133910;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x166700, m1 0x133914;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x166490, m1 0x133688;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x166770, m1 0x1339a4;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x166a50, m1 0x133c10;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x166710, m1 0x133918;
    virtual void sortAllChildren() = imac 0x166b00, m1 0x133cb0;
    virtual void draw() = imac 0x1672e0, m1 0x134250;
    virtual void visit() = imac 0x1663f0, m1 0x1335e4;

    virtual void setBlendFunc(cocos2d::_ccBlendFunc) = imac 0x167b50, m1 0x134abc;
    virtual cocos2d::_ccBlendFunc getBlendFunc() = imac 0x167b70, m1 0x134acc;
    virtual cocos2d::CCTexture2D* getTexture() = imac 0x167b90, m1 0x134adc;
    virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x134afc, imac 0x167bc0;
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
    bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x344800, m1 0x2d9ba4;
    bool initWithTextureFilename(char const* filename, cocos2d::CCRect const& rect) = ios inline {
    	CCRect rectInPixels = CC_RECT_POINTS_TO_PIXELS( rect );
    		return initWithTextureFilename(filename, rectInPixels, false, CCPointZero, rectInPixels.size);
    }
    bool initWithTextureFilename(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x344b30, m1 0x2d9e10;

    gd::string getFrameName() const = m1 inline, imac inline {
    	return m_strFrameName;
    }
    cocos2d::CCPoint const& getOffset();
    cocos2d::CCPoint const& getOffsetInPixels();
    cocos2d::CCSize const& getOriginalSize();
    cocos2d::CCSize const& getOriginalSizeInPixels();
    cocos2d::CCRect const& getRect();
    cocos2d::CCRect const& getRectInPixels();
    cocos2d::CCTexture2D* getTexture() = imac 0x345320, m1 0x2da450;

    void setFrameName(gd::string);
    void setOffset(cocos2d::CCPoint const&) = imac 0x3451f0, m1 0x2da370;
    void setOffsetInPixels(cocos2d::CCPoint const&) = imac 0x345290, m1 0x2da3e4;
    void setOriginalSize(cocos2d::CCSize const&);
    void setOriginalSizeInPixels(cocos2d::CCSize const&);
    void setRect(cocos2d::CCRect const&) = imac 0x345020, m1 0x2da22c;
    void setRectInPixels(cocos2d::CCRect const&) = imac 0x345100, m1 0x2da2c8;
    void setRotated(bool);
    void setTexture(cocos2d::CCTexture2D*) = imac 0x344fe0, m1 0x2da1e8;

    // CCSpriteFrame(cocos2d::CCSpriteFrame const&);
    // CCSpriteFrame();
    // ~CCSpriteFrame() = ios 0x25de00;

    bool isRotated();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x344e80, m1 0x2da0d0;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrameCache {
    static cocos2d::CCSpriteFrameCache* sharedSpriteFrameCache() = imac 0x307fd0;

    bool init();

    // CCSpriteFrameCache();
    // CCSpriteFrameCache(cocos2d::CCSpriteFrameCache const&);
    void addSpriteFrame(cocos2d::CCSpriteFrame*, char const*);
    void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*);
    void addSpriteFramesWithFile(char const*, char const*);
    void addSpriteFramesWithFile(char const*) = imac 0x308ed0, m1 0x29fd90;
    void addSpriteFramesWithFile(char const*, cocos2d::CCTexture2D*);
    void removeSpriteFrameByName(char const*);
    void removeSpriteFrames();
    void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*);
    void removeSpriteFramesFromFile(char const*);
    void removeSpriteFramesFromTexture(cocos2d::CCTexture2D*) = imac 0x309b60;
    void removeUnusedSpriteFrames() = imac 0x309380;
    cocos2d::CCSpriteFrame* spriteFrameByName(char const*) = imac 0x309e70;
    //purgeSharedSpriteFrameCache = ios 0x3c4dd4
}

[[link(win, android)]]
class cocos2d::CCString {
    static cocos2d::CCString* createWithData(unsigned char const*, unsigned long) = imac 0x795800, m1 0x6a8c7c;
    // static cocos2d::CCString* createWithFormat(char const*, ...) = ios 0x278aec;

    char const* getCString() const = imac 0x795230;
    //createWithContentsOfFile = ios 0x278b74;

    bool boolValue() const = imac 0x7955f0, m1 0x6a8978;
    int intValue() const;
}

[[link(win, android)]]
class cocos2d::CCMenuItem {
    ~CCMenuItem();
    static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3ab920, m1 0x33770c;
    static cocos2d::CCMenuItem* create() = imac 0x3ab860, m1 0x337664;

    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3ab9f0, m1 0x3377c8;

    int getScriptTapHandler();

    void setTarget(cocos2d::CCObject* rec, cocos2d::SEL_MenuHandler selector) = ios inline, imac 0x3abd20, m1 0x337a84 {
    	m_pListener = rec;
    	m_pfnSelector = selector;
    }

    // CCMenuItem(cocos2d::CCMenuItem const&);
    // CCMenuItem();
    cocos2d::CCRect rect();

    virtual void activate() = imac 0x3abc30, m1 0x3379d4;
    virtual void selected() = imac 0x3abba0, m1 0x337950;
    virtual void unselected() = imac 0x3abbb0, m1 0x33795c;
    virtual void registerScriptTapHandler(int) = imac 0x3abbc0, m1 0x337964;
    virtual void unregisterScriptTapHandler() = imac 0x3abbf0, m1 0x337994;
    virtual bool isEnabled() = imac 0x3abcb0, m1 0x337a58;
    virtual void setEnabled(bool) = imac 0x3abca0, m1 0x337a50;
    virtual bool isSelected() = imac 0x3abd10, m1 0x337a7c;
}

[[link(win, android)]]
class cocos2d::CCMenuItemSprite {
    bool initWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3ad160, m1 0x338e54;

    virtual void selected() = imac 0x3ad250, m1 0x338f6c;
    virtual void unselected() = imac 0x3ad2f0, m1 0x338ff8;
    virtual void setEnabled(bool) = imac 0x3ad370, m1 0x339078;
    virtual cocos2d::CCNode* getNormalImage() = imac 0x3acda0, m1 0x338a90;
    virtual void setNormalImage(cocos2d::CCNode*) = imac 0x3acdb0, m1 0x338a98;
    virtual cocos2d::CCNode* getSelectedImage() = imac 0x3ace70, m1 0x338b64;
    virtual void setSelectedImage(cocos2d::CCNode*) = imac 0x3ace80, m1 0x338b6c;
    virtual cocos2d::CCNode* getDisabledImage() = imac 0x3acf10, m1 0x338c14;
    virtual void setDisabledImage(cocos2d::CCNode*) = imac 0x3acf20, m1 0x338c1c;
    virtual void updateImagesVisibility() = imac 0x3ad390, m1 0x339098;
}

[[link(win, android)]]
class cocos2d::CCMenu {
    // static cocos2d::CCMenu* create(cocos2d::CCMenuItem*, ...) = ios 0x1e1964, m1 0x6a6d58, imac 0x79e7b0;
    static cocos2d::CCMenu* create() = imac 0x77ca90, m1 0x691a90;
    static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*) = imac 0x77cc90;
    static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*) = imac 0x77cee0;
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

    virtual bool init() = imac 0x77cef0, m1 0x691e54;
    virtual void addChild(cocos2d::CCNode*) = imac 0x77cf00, m1 0x691e5c;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x77cf10, m1 0x691e60;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x77cf20, m1 0x691e64;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x77cfc0, m1 0x691f0c;
    virtual void onExit() = imac 0x77cf70, m1 0x691ec4;
    virtual void registerWithTouchDispatcher() = m1 0x691fc0, imac 0x77d070;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x77d0c0, m1 0x69201c;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x77d370, m1 0x692304;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x77d290, m1 0x692214;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x77d310, m1 0x69229c;
}

[[link(win, android)]]
class cocos2d::CCRotateBy {
    static cocos2d::CCRotateBy* create(float, float) = imac 0x3a4d40, m1 0x3317a8;
    static cocos2d::CCRotateBy* create(float, float, float);

    bool initWithDuration(float, float);
    bool initWithDuration(float, float, float);

    // CCRotateBy(cocos2d::CCRotateBy const&);
    // CCRotateBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a4f40, m1 0x331944;
    virtual void update(float) = imac 0x3a50b0, m1 0x331a9c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a5060, m1 0x331a44;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a5130, m1 0x331b24;
}

[[link(win, android)]]
class cocos2d::CCRotateTo {
    static cocos2d::CCRotateTo* create(float, float) = imac 0x3a4860, m1 0x3313ac;
    static cocos2d::CCRotateTo* create(float, float, float);

    bool initWithDuration(float, float);
    bool initWithDuration(float, float, float);

    // CCRotateTo(cocos2d::CCRotateTo const&);
    // CCRotateTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a4a70, m1 0x331550;
    virtual void update(float) = imac 0x3a4cc0, m1 0x331720;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a4b70, m1 0x331640;
}

[[link(win, android)]]
class cocos2d::CCDelayTime {
    static cocos2d::CCDelayTime* create(float);

    // CCDelayTime(cocos2d::CCDelayTime const&);
    // CCDelayTime();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a8ce0, m1 0x334fc0;
    virtual void update(float) = imac 0x3a8db0, m1 0x335094;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a8dc0, m1 0x335098;
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

    virtual void draw() = m1 0x216724, imac 0x26b190;
    virtual const cocos2d::ccColor3B& getColorSpaceHolder() = imac 0x26b230, m1 0x2167e4;
    virtual void setColorSpaceHolder(const cocos2d::ccColor3B& color);
    virtual const char* getPlaceHolder() = imac 0x26b6c0, m1 0x216c0c;
    virtual void setPlaceHolder(const char* text) = m1 0x216ab4;
    virtual void setSecureTextEntry(bool value) = m1 0x216c24, imac 0x26b6e0;
    virtual bool isSecureTextEntry() = imac 0x26b730, m1 0x216c78;

    virtual void setString(const char* text) = m1 0x216800;
    virtual const char* getString() = imac 0x26b520, m1 0x216a84;

    virtual bool attachWithIME() = imac 0x26a8e0, m1 0x215e58;
    virtual bool detachWithIME() = imac 0x26a960, m1 0x215ee4;
    virtual bool canAttachWithIME() = imac 0x26a9e0, m1 0x215f70;
    virtual bool canDetachWithIME() = imac 0x26aa30, m1 0x215fe4;
    virtual void insertText(const char* text, int len, cocos2d::enumKeyCodes keyCode);
    virtual void deleteBackward() = imac 0x26add0, m1 0x2163cc;
    virtual const char* getContentText() = imac 0x26b150, m1 0x2166f4;
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
    DS_Dictionary() = m1 0x136294;
    void addBoolValuesToMapForKey(gd::map<gd::string, bool>&, char const*, bool) = m1 0x13d910;
    void addBoolValuesToMapForKeySpecial(gd::map<gd::string, bool>&, char const*, bool) = m1 0x13d5d4;
    void checkCompatibility();
    gd::string cleanStringWhiteSpace(gd::string const&);
    static void copyFile(char const*, char const*);
    cocos2d::CCObject* decodeObjectForKey(char const*, bool, int);
    gd::vector<gd::string> getAllKeys() = imac 0x16d240, m1 0x139754;
    cocos2d::CCArray* getArrayForKey(char const*, bool) = imac 0x170d40, m1 0x13cc44;
    bool getBoolForKey(char const*);
    cocos2d::CCDictionary* getDictForKey(char const*, bool) = m1 0x13dac0;
    float getFloatForKey(char const*) = imac 0x16da70, m1 0x139ec4;
    unsigned int getIndexOfKey(char const*);
    unsigned int getIndexOfKeyWithClosestAlphaNumericalMatch(char const*);
    int getIntegerForKey(char const*) = imac 0x16d830;
    gd::string getKey(unsigned int) = imac 0x16d110, m1 0x13962c;
    unsigned int getNumKeys();
    cocos2d::CCObject* getObjectForKey(char const*) = imac 0x170ec0, m1 0x13cdac;
    gd::vector<cocos2d::CCRect> getRectArrayForKey(char const*);
    cocos2d::CCRect getRectForKey(char const*);
    gd::vector<gd::string> getStringArrayForKey(char const*);
    gd::string getStringForKey(char const*);
    gd::vector<cocos2d::CCPoint> getVec2ArrayForKey(char const*);
    cocos2d::CCPoint getVec2ForKey(char const*);
    bool loadRootSubDictFromCompressedFile(char const*) = imac 0x16ab40, m1 0x1376f4;
    bool loadRootSubDictFromFile(char const*);
    bool loadRootSubDictFromString(gd::string const&) = m1 0x137aa8;
    bool rectFromString(gd::string const&, cocos2d::CCRect&);
    void removeAllKeys();
    void removeKey(unsigned int);
    void removeKey(char const*);
    bool saveRootSubDictToCompressedFile(char const*);
    bool saveRootSubDictToFile(char const*);
    gd::string saveRootSubDictToString() = imac 0x16c5c0;
    void setArrayForKey(char const*, cocos2d::CCArray*);
    void setBoolForKey(char const*, bool, bool);
    void setBoolForKey(char const*, bool) = imac 0x16ed20, m1 0x13af94;
    void setBoolMapForKey(char const*, gd::map<gd::string, bool>&) = m1 0x13d394;
    void setDictForKey(char const*, cocos2d::CCDictionary*) = imac 0x171340, m1 0x13d194;
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
    bool stepIntoSubDictWithKey(char const*) = imac 0x16cb60;
    void stepOutOfSubDict() = imac 0x16ce30, m1 0x1393e8;
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
    static cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect) = imac 0x3e39a0;

    CCScale9Sprite();
    ~CCScale9Sprite();

    virtual bool init() = imac 0x3e21f0;
    virtual void setContentSize(const cocos2d::CCSize& size);
    virtual void visit() = imac 0x3e4660, m1 0x366928;
    virtual GLubyte getOpacity();
    virtual void setOpacity(GLubyte opacity);
    virtual void updateDisplayedOpacity(GLubyte parentOpacity);
    virtual const cocos2d::ccColor3B& getColor();
    virtual void setColor(const cocos2d::ccColor3B& color);
    virtual void updateDisplayedColor(const cocos2d::ccColor3B& parentColor);
    virtual void setOpacityModifyRGB(bool bValue);
    virtual bool isOpacityModifyRGB();
    virtual cocos2d::CCSize getPreferredSize() = imac 0x3e40b0;
    virtual void setPreferredSize(cocos2d::CCSize) = imac 0x3e4080, m1 0x366428;
    virtual cocos2d::CCRect getCapInsets() = imac 0x3e4170;
    virtual void setCapInsets(cocos2d::CCRect) = imac 0x3e40d0, m1 0x366468;
    virtual float getInsetLeft();
    virtual void setInsetLeft(float);
    virtual float getInsetTop();
    virtual void setInsetTop(float);
    virtual float getInsetRight();
    virtual void setInsetRight(float);
    virtual float getInsetBottom();
    virtual void setInsetBottom(float);
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = imac 0x3e22b0, m1 0x364670;
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, cocos2d::CCRect) = imac 0x3e2250, m1 0x364604;
    virtual bool initWithFile(const char*, cocos2d::CCRect, cocos2d::CCRect) = imac 0x3e3830, m1 0x365a88;
    virtual bool initWithFile(const char*, cocos2d::CCRect) = m1 0x365bc8;
    virtual bool initWithFile(cocos2d::CCRect, const char*) = imac 0x3e3a30, m1 0x365cdc;
    virtual bool initWithFile(const char*);
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = imac 0x3e3be0, m1 0x365ed4;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*);
    virtual bool initWithSpriteFrameName(const char*, cocos2d::CCRect) = m1 0x3660e4;
    virtual bool initWithSpriteFrameName(const char*);
    virtual bool updateWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = m1 0x364714;
    virtual void setSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3e4510, m1 0x366854;
}

[[link(win, android)]]
class cocos2d::extension::CCHttpClient : cocos2d::CCObject {
    // CCHttpClient() = imac 0x441fb0, m1 0x3b3ec8;
    static cocos2d::extension::CCHttpClient* getInstance() = imac 0x4256b0, m1 0x3a0618;
    static void destroyInstance() = m1 0x3a067c;
    void send(cocos2d::extension::CCHttpRequest* request) = imac 0x4265c0, m1 0x3a13ec;
    bool lazyInitThreadSemphore() = imac 0x425a10, m1 0x3a0990;
    void dispatchResponseCallbacks(float);
}

[[link(win, android)]]
class cocos2d::ZipUtils {
    static gd::string base64DecodeEnc(gd::string const&, gd::string);
    static gd::string base64EncodeEnc(gd::string const&, gd::string);
    static gd::string base64URLDecode(gd::string const&);
    static gd::string base64URLEncode(gd::string const&);
    static void ccDecodeEncodedPvr(unsigned int*, int);
    static int ccDeflateMemory(unsigned char*, unsigned int, unsigned char**) = imac 0x1f3820, m1 0x1a91d0;
    static int ccInflateCCZFile(char const*, unsigned char**);
    static int ccInflateGZipFile(char const*, unsigned char**);
    static int ccInflateMemory(unsigned char*, unsigned int, unsigned char**);
    static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int*, unsigned int);
    static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int);
    static void ccSetPvrEncryptionKey(unsigned int, unsigned int, unsigned int, unsigned int);
    static void ccSetPvrEncryptionKeyPart(int, unsigned int);
    static gd::string compressString(gd::string const&, bool, int) = imac 0x1f35b0, m1 0x1a8f10;
    static gd::string decompressString2(unsigned char*, bool, int, int);
    static gd::string decompressString(gd::string const&, bool, int) = m1 0x1a9614;
    static gd::string encryptDecrypt(gd::string const&, int);
    static gd::string encryptDecryptWKey(gd::string const&, gd::string);
    static unsigned char hexToChar(gd::string const&);
    static gd::string urlDecode(gd::string const&);
}

[[link(win, android)]]
class cocos2d::CCSpawn {
    static cocos2d::CCSpawn* create(cocos2d::CCArray*);
    // static cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction*, ...) = m1 0x33e430, imac 0x3b9e30;
    static cocos2d::CCSpawn* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = m1 0x330a98;
    // static cocos2d::CCSpawn* createWithVariableList(cocos2d::CCFiniteTimeAction*, char*);

    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);

    // CCSpawn(cocos2d::CCSpawn const&);
    // CCSpawn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a44f0, m1 0x33102c;
    virtual void update(float) = imac 0x3a4760, m1 0x331298;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a46f0, m1 0x331204;
    virtual void stop() = imac 0x3a4730, m1 0x331258;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a47b0, m1 0x3312fc;
}

[[link(win, android)]]
class cocos2d::CCSpeed {
    static cocos2d::CCSpeed* create(cocos2d::CCActionInterval*, float) = imac 0x5dcde0, m1 0x50fd64;

    bool initWithAction(cocos2d::CCActionInterval*, float);

    cocos2d::CCActionInterval* getInnerAction();
    float getSpeed();

    void setInnerAction(cocos2d::CCActionInterval*);
    void setSpeed(float);

    // CCSpeed(cocos2d::CCSpeed const&);
    // CCSpeed();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5dcec0, m1 0x50fe34;
    virtual bool isDone() = imac 0x5dd0d0, m1 0x51001c;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x5dd060, m1 0x50ffbc;
    virtual void stop() = imac 0x5dd080, m1 0x50ffd0;
    virtual void step(float) = imac 0x5dd0b0, m1 0x510000;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5dd0e0, m1 0x51002c;
}

[[link(win, android)]]
class pugi::xml_document {
    xml_document();
    ~xml_document() = imac 0x62acb0, m1 0x555698;
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
    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = win 0x44540, imac 0x5c59e0, m1 0x4fa948;
    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint p1) = win inline, ios inline, imac 0x5c5820, m1 0x4fa7dc {
    	auto ret = new CCLightning();
    	if (ret->initWithStrikePoint(p1)) {
    		ret->autorelease();
    		return ret;
    	}
    	delete ret;
    	return nullptr;
    }

    bool initWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = win 0x439e0, imac 0x5c5b30, m1 0x4faa68;
    bool initWithStrikePoint(cocos2d::CCPoint p1) = win inline, ios inline, m1 0x4fa8f4 {
    	return this->initWithStrikePoint(p1, CCPointZero, .5f);
    }

    CCLightning() = win 0x44400;
    ~CCLightning() = win 0x444d0;

    void strike() = win 0x44880, m1 0x4fab8c;
    void strikeFinished() = win 0x448f0, imac 0x5c5f00;
    void strikeRandom() = win inline, ios inline, m1 0x4facf8 {
    	m_seed = rand();
    	this->strike();
    }
    void strikeWithSeed(uint64_t seed) = win inline, ios inline, imac 0x5c5e90, m1 0x4fad70 {
    	m_seed = seed;
    	this->strike();
    }

    virtual void draw() = win 0x44700, imac 0x5c5cd0, m1 0x4fabf8;
    virtual bool isOpacityModifyRGB() = imac 0x5c5ff0, m1 0x4fae70;
    virtual void setOpacityModifyRGB(bool) = imac 0x5c6010, m1 0x4fae80;
    virtual unsigned char getOpacity() = imac 0x5c5f20, m1 0x4fadf8;
    virtual unsigned char getDisplayedOpacity() = imac 0x5c5f40, m1 0x4fae08;
    virtual void setOpacity(unsigned char) = imac 0x5c5f70, m1 0x4fae24;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x5c6030, m1 0x4fae90;
    virtual bool isCascadeOpacityEnabled() = imac 0x5c6050, m1 0x4faea0;
    virtual void setCascadeOpacityEnabled(bool) = imac 0x5c6070, m1 0x4faeb0;
    virtual cocos2d::_ccColor3B const& getColor() = imac 0x5c5f90, m1 0x4fae34;
    virtual cocos2d::_ccColor3B const& getDisplayedColor() = imac 0x5c6090, m1 0x4faec0;
    virtual void setColor(cocos2d::_ccColor3B const&);
    virtual void updateDisplayedColor(cocos2d::_ccColor3B const&);
    virtual bool isCascadeColorEnabled() = imac 0x5c60f0, m1 0x4faef8;
    virtual void setCascadeColorEnabled(bool) = imac 0x5c6110, m1 0x4faf08;

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
