[[link(win, android)]]
class cocos2d::CCEGLViewProtocol {
    CCEGLViewProtocol();
    virtual ~CCEGLViewProtocol();
    auto getViewPortRect() const;
    auto getScaleX() const;
    auto getScaleY() const;

    virtual cocos2d::CCSize const& getFrameSize() const;
    virtual void setFrameSize(float, float);
    virtual cocos2d::CCSize getVisibleSize() const = imac 0x4f90b0;
    virtual cocos2d::CCPoint getVisibleOrigin() const = imac 0x4f9100;
    virtual void setDesignResolutionSize(float, float, ResolutionPolicy) = imac 0x4f8f10;
    virtual cocos2d::CCSize const& getDesignResolutionSize() const;
    virtual void setTouchDelegate(cocos2d::EGLTouchDelegate*);
    virtual void setViewPortInPoints(float, float, float, float);
    virtual void setScissorInPoints(float, float, float, float);
    virtual bool isScissorEnabled();
    virtual cocos2d::CCRect getScissorRect() = imac 0x4f9220;
    virtual void setViewName(char const*) = imac 0x4f92c0;
    virtual void pollInputEvents();
}

[[link(win, android)]]
class cocos2d::CCEaseIn {
    static cocos2d::CCEaseIn* create(cocos2d::CCActionInterval*, float);

    // CCEaseIn(cocos2d::CCEaseIn const&);
    // CCEaseIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseOut {
    static cocos2d::CCEaseOut* create(cocos2d::CCActionInterval*, float);

    // CCEaseOut(cocos2d::CCEaseOut const&);
    // CCEaseOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseInOut {
    static cocos2d::CCEaseInOut* create(cocos2d::CCActionInterval*, float);

    // CCEaseInOut(cocos2d::CCEaseInOut const&);
    // CCEaseInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBackIn {
    static cocos2d::CCEaseBackIn* create(cocos2d::CCActionInterval*);

    // CCEaseBackIn(cocos2d::CCEaseBackIn const&);
    // CCEaseBackIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBackOut {
    static cocos2d::CCEaseBackOut* create(cocos2d::CCActionInterval*);

    // CCEaseBackOut(cocos2d::CCEaseBackOut const&);
    // CCEaseBackOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBounceOut {
    static cocos2d::CCEaseBounceOut* create(cocos2d::CCActionInterval*);

    // CCEaseBounceOut(cocos2d::CCEaseBounceOut const&);
    // CCEaseBounceOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseElasticIn {
    static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval*);
    static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval*, float);

    // CCEaseElasticIn(cocos2d::CCEaseElasticIn const&);
    // CCEaseElasticIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseElasticOut {
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*);
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*, float);

    // CCEaseElasticOut(cocos2d::CCEaseElasticOut const&);
    // CCEaseElasticOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialIn {
    static cocos2d::CCEaseExponentialIn* create(cocos2d::CCActionInterval*);

    // CCEaseExponentialIn(cocos2d::CCEaseExponentialIn const&);
    // CCEaseExponentialIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialInOut {
    static cocos2d::CCEaseExponentialInOut* create(cocos2d::CCActionInterval*);

    // CCEaseExponentialInOut(cocos2d::CCEaseExponentialInOut const&);
    // CCEaseExponentialInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialOut {
    static cocos2d::CCEaseExponentialOut* create(cocos2d::CCActionInterval*);

    // CCEaseExponentialOut(cocos2d::CCEaseExponentialOut const&);
    // CCEaseExponentialOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseSineIn {
    static cocos2d::CCEaseSineIn* create(cocos2d::CCActionInterval*);

    // CCEaseSineIn(cocos2d::CCEaseSineIn const&);
    // CCEaseSineIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseSineOut {
    static cocos2d::CCEaseSineOut* create(cocos2d::CCActionInterval*);

    // CCEaseSineOut(cocos2d::CCEaseSineOut const&);
    // CCEaseSineOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseSineInOut {
    static cocos2d::CCEaseSineInOut* create(cocos2d::CCActionInterval*);

    // CCEaseSineInOut(cocos2d::CCEaseSineInOut const&);
    // CCEaseSineInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCMotionStreak {
    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::_ccColor3B const&, cocos2d::CCTexture2D*) = imac 0x55e7d0;
    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::_ccColor3B const&, char const*) = imac 0x55e7d0;

    bool initWithFade(float, float, float, cocos2d::_ccColor3B const&, cocos2d::CCTexture2D*) = imac 0x55e920;
    bool initWithFade(float, float, float, cocos2d::_ccColor3B const&, char const*) = imac 0x55e920;

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
    void reset() = imac 0x55f580;
    void resumeStroke();
    void stopStroke();
    void tintWithColor(cocos2d::_ccColor3B);
    void updateFade(float) = imac 0x55ef00;

    ~CCMotionStreak();

    virtual void update(float);
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x55eca0;
    virtual void draw() = imac 0x55f5a0;

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
    static cocos2d::CCMoveBy* create(float, cocos2d::CCPoint const&) = imac 0x3a4480;

    bool initWithDuration(float, cocos2d::CCPoint const&);

    // CCMoveBy(cocos2d::CCMoveBy const&);
    // CCMoveBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCMoveTo {
    static cocos2d::CCMoveTo* create(float, cocos2d::CCPoint const&) = imac 0x3a4890;

    bool initWithDuration(float, cocos2d::CCPoint const&);

    // CCMoveTo(cocos2d::CCMoveTo const&);
    // CCMoveTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCRemoveSelf {
    static cocos2d::CCRemoveSelf* create(bool);

    bool init(bool);

    // CCRemoveSelf(cocos2d::CCRemoveSelf const&);
    // CCRemoveSelf();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCFiniteTimeAction* reverse();
}

[[link(win, android)]]
class cocos2d::CCScaleBy {
    static cocos2d::CCScaleBy* create(float, float);
    static cocos2d::CCScaleBy* create(float, float, float);

    // CCScaleBy(cocos2d::CCScaleBy const&);
    // CCScaleBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCScaleTo {
    static cocos2d::CCScaleTo* create(float, float);
    static cocos2d::CCScaleTo* create(float, float, float);

    bool initWithDuration(float, float);
    bool initWithDuration(float, float, float);

    // CCScaleTo(cocos2d::CCScaleTo const&);
    // CCScaleTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCTintTo {
    static cocos2d::CCTintTo* create(float, unsigned char, unsigned char, unsigned char) = imac 0x3a77a0;

    bool initWithDuration(float, unsigned char, unsigned char, unsigned char);

    // CCTintTo(cocos2d::CCTintTo const&);
    // CCTintTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5dbf20;
    virtual void update(float);
    //virtual void setTag(int) = m1 0x1b6e5c, imac 0x205680;
    virtual bool isDone();
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x5dbfe0;
    virtual void stop();
    virtual void step(float);
}

[[link(win, android)]]
class cocos2d::CCScene {
    static cocos2d::CCScene* create() = imac 0x27e920;

    int getHighestChildZ() = imac 0x27e9e0;

    // CCScene(cocos2d::CCScene const&);
    // CCScene() = ios 0x2508a4;
    ~CCScene();

    virtual bool init();
}

[[link(win, android)]]
class cocos2d::CCSet {
    static cocos2d::CCSet* create();

    //CCSet(cocos2d::CCSet const&) = imac 0x7bf970, m1 0x6c576c;
    CCSet();
    ~CCSet() = imac 0x79d4b0;
    void addObject(cocos2d::CCObject*) = imac 0x79d760;
    cocos2d::CCObject* anyObject() = imac 0x79d930;
    cocos2d::CCSetIterator begin() = imac 0x79d910;
    bool containsObject(cocos2d::CCObject*) = imac 0x79d8c0;
    cocos2d::CCSet* copy();
    int count();
    cocos2d::CCSetIterator end() = imac 0x79d920;
    cocos2d::CCSet* mutableCopy();
    void removeAllObjects();
    void removeObject(cocos2d::CCObject*) = imac 0x79d810;

    virtual void acceptVisitor(cocos2d::CCDataVisitor&);
}

[[link(win, android)]]
class cocos2d::CCShaderCache {
    static void purgeSharedShaderCache();
    static cocos2d::CCShaderCache* sharedShaderCache() = imac 0x1efe00;

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
    static cocos2d::CCParticleSystem* create(char const*) = imac 0x7b08e0;
    static cocos2d::CCParticleSystem* createWithTotalParticles(unsigned int);

    void initParticle(cocos2d::sCCParticle*) = imac 0x7b2ad0;
    bool initWithDictionary(cocos2d::CCDictionary*, char const*, bool);
    bool initWithDictionary(cocos2d::CCDictionary*, bool) = imac 0x7b2650;
    bool initWithFile(char const*, bool);

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
    void loadScaledDefaults(float) = imac 0x7b5540;
    void resetSystem() = imac 0x7b3ba0;
    void resumeSystem();
    void saveDefaults();
    void stopSystem() = imac 0x7b3b60;
    void toggleUniformColorMode(bool);
    void updateVisible();

    virtual void update(float) = imac 0x7b3d50;
    virtual bool init();
    virtual void setScaleX(float);
    virtual void setScaleY(float);
    virtual void setScale(float);
    virtual void setVisible(bool);
    virtual void setRotation(float);
    virtual cocos2d::CCParticleBatchNode* getBatchNode();
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*);
    virtual unsigned int getParticleCount();
    virtual float getDuration();
    virtual void setDuration(float);
    virtual cocos2d::CCPoint const& getSourcePosition();
    virtual void setSourcePosition(cocos2d::CCPoint const&);
    virtual cocos2d::CCPoint const& getPosVar();
    virtual void setPosVar(cocos2d::CCPoint const&);
    virtual float getLife();
    virtual void setLife(float);
    virtual float getLifeVar();
    virtual void setLifeVar(float);
    virtual float getAngle();
    virtual void setAngle(float);
    virtual float getAngleVar();
    virtual void setAngleVar(float);
    virtual void updateEmissionRate();
    virtual cocos2d::CCPoint const& getGravity();
    virtual void setGravity(cocos2d::CCPoint const&);
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
    virtual bool isBlendAdditive();
    virtual void setBlendAdditive(bool);
    virtual float getStartSize();
    virtual void setStartSize(float);
    virtual float getStartSizeVar();
    virtual void setStartSizeVar(float);
    virtual float getEndSize();
    virtual void setEndSize(float);
    virtual float getEndSizeVar();
    virtual void setEndSizeVar(float);
    virtual cocos2d::_ccColor4F const& getStartColor();
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
    virtual bool initWithTotalParticles(unsigned int, bool);
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&);
    virtual void postStep();
    virtual void updateWithNoTime();
    virtual void updateBlendFunc();

    virtual void setBlendFunc(cocos2d::_ccBlendFunc);
    virtual cocos2d::_ccBlendFunc getBlendFunc();
    virtual cocos2d::CCTexture2D* getTexture();
    virtual void setTexture(cocos2d::CCTexture2D*);
}

[[link(win, android)]]
class cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSystemQuad* create(char const*, bool) = imac 0x5ea580;
    static cocos2d::CCParticleSystemQuad* create();
    static cocos2d::CCParticleSystemQuad* createWithTotalParticles(unsigned int, bool);

    void initIndices();
    void initTexCoordsWithRect(cocos2d::CCRect const&) = imac 0x5ea750;

    unsigned char getOpacity();

    void setDisplayFrame(cocos2d::CCSpriteFrame*);
    void setOpacity(unsigned char);
    void setTextureWithRect(cocos2d::CCTexture2D*, cocos2d::CCRect const&);

    // CCParticleSystemQuad(cocos2d::CCParticleSystemQuad const&);
    // CCParticleSystemQuad();
    ~CCParticleSystemQuad() = imac 0x5ea4a0;
    bool allocMemory() = imac 0x5e9e50;
    void listenBackToForeground(cocos2d::CCObject*);
    [[missing(mac, ios)]]
    void setupVBO();
    [[missing(win, android)]]
    void setupVBOandVAO() = imac 0x5ea230;
    void updateTexCoords();

    virtual void draw() = imac 0x5eaef0;
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = imac 0x5eb4d0;
    virtual void setTotalParticles(unsigned int) = imac 0x5eafb0;
    virtual bool initWithTotalParticles(unsigned int, bool);
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&) = imac 0x5eab50;
    virtual void postStep() = imac 0x5eaea0;

    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x5ea9a0;
}

[[link(win, android)]]
class cocos2d::CCProgressTimer {
    static cocos2d::CCProgressTimer* create(cocos2d::CCSprite*) = imac 0x5ebb60;

    bool initWithSprite(cocos2d::CCSprite*);

    cocos2d::CCPoint getBarChangeRate() const;
    float getPercentage();
    // cocos2d::CCSprite* getSprite();
    cocos2d::CCProgressTimerType getType();

    void setAnchorPoint(cocos2d::CCPoint);
    void setBarChangeRate(cocos2d::CCPoint);
    void setPercentage(float) = imac 0x5ebde0;
    void setReverseDirection(bool);
    void setReverseProgress(bool);
    void setSprite(cocos2d::CCSprite*) = imac 0x5ebe60;
    void setType(cocos2d::CCProgressTimerType) = imac 0x5ec070;

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
    virtual void draw();
    virtual cocos2d::CCPoint getMidpoint();
    virtual void setMidpoint(cocos2d::CCPoint);

    virtual void setColor(cocos2d::_ccColor3B const&);
    virtual void setOpacity(unsigned char);
}

[[link(win, android)]]
class cocos2d::CCFadeIn {
    static cocos2d::CCFadeIn* create(float);

    // CCFadeIn(cocos2d::CCFadeIn const&);
    // CCFadeIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCFadeOut {
    static cocos2d::CCFadeOut* create(float);

    // CCFadeOut(cocos2d::CCFadeOut const&);
    // CCFadeOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCFadeTo {
    static cocos2d::CCFadeTo* create(float, unsigned char) = imac 0x3a74c0;

    bool initWithDuration(float, unsigned char);

    // CCFadeTo(cocos2d::CCFadeTo const&);
    // CCFadeTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCFileUtils {
    // CCFileUtils(); // one of these two is 0x15bfa8
    // CCFileUtils(cocos2d::CCFileUtils const&);
    virtual void addSearchPath(char const*);
    virtual void addSearchResolutionsOrder(char const*);
    virtual gd::string addSuffix(gd::string, gd::string);
    virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(gd::string const&);
    virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(gd::string const&);
    virtual gd::string fullPathForFilename(char const*, bool);
    virtual char const* fullPathFromRelativeFile(char const*, char const*);
    gd::string getAndroidPath() const;
    virtual unsigned char* getFileData(char const*, char const*, unsigned long*) = imac 0x426390;
    virtual unsigned char* getFileDataFromZip(char const*, char const*, unsigned long*);
    virtual gd::string getFullPathForDirectoryAndFilename(gd::string const&, gd::string const&);
    virtual gd::string getNewFilename(char const*);
    virtual gd::string getPathForFilename(gd::string const&, gd::string const&, gd::string const&);
    virtual gd::vector<gd::string> const& getSearchPaths();
    virtual gd::vector<gd::string> const& getSearchResolutionsOrder();
    virtual gd::string getWritablePath2() = imac 0x429140;
    virtual bool init();
    virtual bool isAbsolutePath(gd::string const&) = imac 0x429080;
    virtual bool isPopupNotify();
    virtual void loadFilenameLookupDictionaryFromFile(char const*);
    virtual void purgeCachedEntries();
    static void purgeFileUtils();
    void removeAllPaths();
    virtual void removeFullPath(char const*);
    virtual void removeSearchPath(char const*);
    void setAndroidPath(gd::string);
    virtual void setFilenameLookupDictionary(cocos2d::CCDictionary*);
    virtual void setPopupNotify(bool) = imac 0x4290a0;
    virtual void setSearchPaths(gd::vector<gd::string> const&);
    virtual void setSearchResolutionsOrder(gd::vector<gd::string> const&);
    static cocos2d::CCFileUtils* sharedFileUtils() = imac 0x5f3470;
    virtual bool shouldUseHD();
    virtual bool writeToFile(cocos2d::CCDictionary*, gd::string const&);
}

[[link(win, android)]]
class cocos2d::CCGLProgram {
    bool initWithVertexShaderByteArray(char const*, char const*) = imac 0x417230;
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
    void setUniformsForBuiltins() = imac 0x4185d0;

    // CCGLProgram(cocos2d::CCGLProgram const&);
    ~CCGLProgram();
    CCGLProgram();
    void addAttribute(char const*, unsigned int) = imac 0x4174b0;
    bool compileShader(unsigned int*, unsigned int, char const*);
    char const* description();
    char const* fragmentShaderLog();
    bool link();
    // char const* logForOpenGLObject(unsigned int, void (__cdecl*)(unsigned int, unsigned int, int*), void (__cdecl*)(unsigned int, int, int*, char*));
    char const* programLog();
    void reset() = imac 0x418900;
    bool updateUniformLocation(int, void*, unsigned int);
    void updateUniforms() = imac 0x4174d0;
    void use();
    char const* vertexShaderLog();
}

[[link(win, android)]]
class cocos2d::CCNode {
    static cocos2d::CCNode* create();
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

    cocos2d::CCRect boundingBox() = imac 0x2607c0;
    void childrenAlloc();
    cocos2d::CCPoint convertToNodeSpace(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertToNodeSpaceAR(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertToWindowSpace(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertToWorldSpace(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertToWorldSpaceAR(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertTouchToNodeSpace(cocos2d::CCTouch*);
    cocos2d::CCPoint convertTouchToNodeSpaceAR(cocos2d::CCTouch*);
    char const* description();
    void detachChild(cocos2d::CCNode*, bool);
    void insertChild(cocos2d::CCNode*, int);
    unsigned int numberOfRunningActions();
    void pauseSchedulerAndActions();
    void qsortAllChildrenWithIndex();
    void resumeSchedulerAndActions();
    cocos2d::CCAction* runAction(cocos2d::CCAction*) = imac 0x261a70;
    void schedule(cocos2d::SEL_SCHEDULE) = imac 0x261ca0;
    void schedule(cocos2d::SEL_SCHEDULE, float) = imac 0x261d00;
    void schedule(cocos2d::SEL_SCHEDULE, float, unsigned int, float) = imac 0x261cd0;
    void scheduleOnce(cocos2d::SEL_SCHEDULE, float) = imac 0x261d30;
    void scheduleUpdate() = imac 0x261b80;
    void scheduleUpdateWithPriority(int) = imac 0x261bb0;
    void scheduleUpdateWithPriorityLua(int, int) = imac 0x261be0;
    void sortAllChildrenNoIndex();
    void sortAllChildrenWithIndex();
    void stopAction(cocos2d::CCAction*);
    void stopActionByTag(int);
    void stopAllActions();
    void transform();
    void transformAncestors();
    void unschedule(cocos2d::SEL_SCHEDULE) = imac 0x261d60;
    void unscheduleAllSelectors();
    void unscheduleUpdate() = imac 0x261c50;
    void updateChildIndexes();

    virtual void update(float) = imac 0x261d80;
    virtual bool init();
    virtual void setZOrder(int) = imac 0x2600d0;
    virtual void _setZOrder(int);
    virtual int getZOrder();
    virtual void setVertexZ(float);
    virtual float getVertexZ();
    virtual void setScaleX(float);
    virtual float getScaleX();
    virtual void setScaleY(float);
    virtual float getScaleY();
    virtual void setScale(float) = imac 0x2601f0;
    virtual float getScale();
    virtual void setScale(float, float) = imac 0x260210;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x2602a0;
    virtual cocos2d::CCPoint const& getPosition();
    virtual void setPosition(float, float);
    virtual void getPosition(float*, float*) = imac 0x2602c0;
    virtual void setPositionX(float);
    virtual float getPositionX();
    virtual void setPositionY(float);
    virtual float getPositionY();
    virtual void setSkewX(float);
    virtual float getSkewX();
    virtual void setSkewY(float);
    virtual float getSkewY();
    virtual void setAnchorPoint(cocos2d::CCPoint const&);
    virtual cocos2d::CCPoint const& getAnchorPoint();
    virtual cocos2d::CCPoint const& getAnchorPointInPoints();
    virtual void setContentSize(cocos2d::CCSize const&);
    virtual cocos2d::CCSize const& getContentSize() const;
    virtual cocos2d::CCSize getScaledContentSize() = imac 0x2605a0;
    virtual void setVisible(bool);
    virtual bool isVisible();
    virtual void setRotation(float) = imac 0x260140;
    virtual float getRotation();
    virtual void setRotationX(float);
    virtual float getRotationX();
    virtual void setRotationY(float);
    virtual float getRotationY();
    virtual void setOrderOfArrival(unsigned int);
    virtual unsigned int getOrderOfArrival();
    virtual void setGLServerState(cocos2d::ccGLServerState);
    virtual cocos2d::ccGLServerState getGLServerState();
    virtual void ignoreAnchorPointForPosition(bool) = imac 0x260690;
    virtual bool isIgnoreAnchorPointForPosition();
    virtual void addChild(cocos2d::CCNode*) = imac 0x260b80;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x260b60;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x260a30;
    virtual cocos2d::CCNode* getChildByTag(int);
    virtual cocos2d::CCArray* getChildren() = imac 0x2603c0;
    virtual unsigned int getChildrenCount() const;
    virtual void setParent(cocos2d::CCNode*);
    virtual cocos2d::CCNode* getParent();
    virtual void removeFromParent();
    virtual void removeFromParentAndCleanup(bool) = imac 0x260bc0;
    virtual void removeMeAndCleanup();
    virtual void removeChild(cocos2d::CCNode*);
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x260c30;
    virtual void removeChildByTag(int);
    virtual void removeChildByTag(int, bool) = imac 0x260da0;
    virtual void removeAllChildren();
    virtual void removeAllChildrenWithCleanup(bool);
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x260f10;
    virtual void sortAllChildren() = imac 0x261050;
    virtual cocos2d::CCGridBase* getGrid();
    virtual void setGrid(cocos2d::CCGridBase*);
    virtual void* getUserData();
    virtual void setUserData(void*);
    virtual cocos2d::CCObject* getUserObject();
    virtual void setUserObject(cocos2d::CCObject*);
    virtual cocos2d::CCGLProgram* getShaderProgram();
    virtual void setShaderProgram(cocos2d::CCGLProgram*);
    virtual cocos2d::CCCamera* getCamera() = imac 0x260430;
    virtual bool isRunning();
    virtual void registerScriptHandler(int);
    virtual void unregisterScriptHandler();
    virtual void onEnter() = imac 0x261660;
    virtual void onEnterTransitionDidFinish() = imac 0x261780;
    virtual void onExit() = imac 0x261880;
    virtual void onExitTransitionDidStart();
    virtual void cleanup() = imac 0x260890;
    virtual void draw();
    virtual void visit();
    virtual void setActionManager(cocos2d::CCActionManager*);
    virtual cocos2d::CCActionManager* getActionManager();
    virtual void setScheduler(cocos2d::CCScheduler*);
    virtual cocos2d::CCScheduler* getScheduler();
    virtual void updateTransform() = imac 0x2629c0;
    virtual cocos2d::CCAffineTransform const nodeToParentTransform() = imac 0x261df0;
    virtual cocos2d::CCAffineTransform const nodeToParentTransformFast() = imac 0x262100;
    virtual cocos2d::CCAffineTransform const parentToNodeTransform() = imac 0x262550;
    virtual cocos2d::CCAffineTransform nodeToWorldTransform();
    virtual cocos2d::CCAffineTransform nodeToWorldTransformFast();
    virtual cocos2d::CCAffineTransform worldToNodeTransform() = imac 0x2626f0;
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
    void pauseTarget(cocos2d::CCObject*) = imac 0x42ec30;
    void priorityIn(cocos2d::_listEntry**, cocos2d::CCObject*, int, bool);
    void removeHashElement(cocos2d::_hashSelectorEntry*);
    void removeUpdateFromHash(cocos2d::_listEntry*);
    void resumeTarget(cocos2d::CCObject*);
    void resumeTargets(cocos2d::CCSet*);
    unsigned int scheduleScriptFunc(unsigned int, float, bool);
    void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, unsigned int, float, bool) = imac 0x42d620;
    void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, bool) = imac 0x42d600;
    void scheduleUpdateForTarget(cocos2d::CCObject*, int, bool) = imac 0x42e230;
    void unscheduleAll();
    void unscheduleAllForTarget(cocos2d::CCObject*) = imac 0x42e7f0;
    void unscheduleAllWithMinPriority(int);
    void unscheduleScriptEntry(unsigned int);
    void unscheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*) = imac 0x42d130;
    void unscheduleUpdateForTarget(cocos2d::CCObject const*);

    virtual void update(float) = imac 0x42f270;
}

[[link(win, android)]]
class cocos2d::CCLayer {
    static cocos2d::CCLayer* create() = imac 0x49c970;

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

    virtual bool init();
    virtual void onEnter();
    virtual void onEnterTransitionDidFinish() = imac 0x49d3a0;
    virtual void onExit();
    virtual void registerWithTouchDispatcher();
    virtual void registerScriptTouchHandler(int, bool, int, bool) = imac 0x49cb20;
    virtual void unregisterScriptTouchHandler();
    virtual bool isTouchEnabled();
    virtual void setTouchEnabled(bool) = imac 0x49cc40;
    virtual void setTouchMode(cocos2d::ccTouchesMode);
    virtual int getTouchMode();
    virtual void setTouchPriority(int);
    virtual int getTouchPriority();
    virtual bool isAccelerometerEnabled();
    virtual void setAccelerometerEnabled(bool) = imac 0x49cd80;
    virtual void setAccelerometerInterval(double) = imac 0x49cdc0;
    virtual bool isKeypadEnabled();
    virtual void setKeypadEnabled(bool) = imac 0x49ced0;
    virtual bool isKeyboardEnabled();
    virtual void setKeyboardEnabled(bool);
    virtual bool isMouseEnabled();
    virtual void setMouseEnabled(bool);

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x49d5f0;
    virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void setPreviousPriority(int);
    virtual int getPreviousPriority();

    virtual void didAccelerate(cocos2d::CCAcceleration*) = imac 0x49cdf0;

    virtual void keyBackClicked() = imac 0x49d070;
    virtual void keyMenuClicked() = imac 0x49d110;

    virtual void keyDown(cocos2d::enumKeyCodes);
}

[[link(win, android)]]
class cocos2d::CCLayerGradient {
    static cocos2d::CCLayerGradient* create(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&);
    static cocos2d::CCLayerGradient* create(cocos2d::_ccColor4B const& a1, cocos2d::_ccColor4B const& a2, cocos2d::CCPoint const& a3) = ios inline {
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

    virtual bool init() = imac 0x49fbf0;

    virtual void updateColor() = imac 0x49fd30;
    virtual bool initWithColor(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&) = imac 0x49fc20;
    virtual bool initWithColor(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&, cocos2d::CCPoint const&) = imac 0x49fc80;
    virtual cocos2d::_ccColor3B const& getStartColor();
    virtual void setStartColor(cocos2d::_ccColor3B const&);
    virtual cocos2d::_ccColor3B const& getEndColor();
    virtual void setEndColor(cocos2d::_ccColor3B const&) = imac 0x49ff50;
    virtual unsigned char getStartOpacity();
    virtual void setStartOpacity(unsigned char);
    virtual unsigned char getEndOpacity();
    virtual void setEndOpacity(unsigned char);
    virtual cocos2d::CCPoint const& getVector();
    virtual void setVector(cocos2d::CCPoint const&) = imac 0x49fff0;
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

    cocos2d::CCObject* autorelease();
    cocos2d::CCObject* copy();
    bool isSingleReference() const = imac 0x477240;
    void release() = imac 0x4771e0;
    void retain() = imac 0x477200;
    unsigned int retainCount() const;

    virtual int getTag() const;
    virtual bool isEqual(cocos2d::CCObject const*) = imac 0x477260;
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCLayerColor {
    static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&) = imac 0x49efb0;
    static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&, float, float);
    static cocos2d::CCLayerColor* create() = ios inline {
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

    virtual bool init();
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x49f370;
    virtual void draw();
    virtual bool initWithColor(cocos2d::_ccColor4B const&, float, float) = imac 0x49f1d0;
    virtual bool initWithColor(cocos2d::_ccColor4B const&);
    virtual void updateColor() = imac 0x49f460;

    virtual void setColor(cocos2d::_ccColor3B const&) = imac 0x49f580;
    virtual void setOpacity(unsigned char) = imac 0x49f700;

    virtual void setBlendFunc(cocos2d::_ccBlendFunc);
    virtual cocos2d::_ccBlendFunc getBlendFunc();
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA {
    static cocos2d::CCLayerRGBA* create();

    // CCLayerRGBA(cocos2d::CCLayerRGBA const&);
    CCLayerRGBA();
    ~CCLayerRGBA();

    virtual bool init();

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
    virtual void updateDisplayedOpacity(unsigned char);
}

[[link(win, android)]]
class cocos2d::CCMouseDispatcher {
    // CCMouseDispatcher(cocos2d::CCMouseDispatcher const&);
    // CCMouseDispatcher();
    void addDelegate(cocos2d::CCMouseDelegate*);
    bool dispatchScrollMSG(float, float) = imac 0x559880;
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
    static void PVRImagesHavePremultipliedAlpha(bool) = imac 0x465bd0;
    static cocos2d::CCTexture2DPixelFormat defaultAlphaPixelFormat();
    static void setDefaultAlphaPixelFormat(cocos2d::CCTexture2DPixelFormat);

    bool initPremultipliedATextureWithImage(cocos2d::CCImage*, unsigned int, unsigned int);
    bool initWithData(void const*, cocos2d::CCTexture2DPixelFormat, unsigned int, unsigned int, cocos2d::CCSize const&) = imac 0x464a20;
    bool initWithETCFile(char const*) = imac 0x465b00;
    bool initWithImage(cocos2d::CCImage*);
    bool initWithPVRFile(char const*) = imac 0x465a20;
    bool initWithString(char const*, char const*, float) = imac 0x465670;
    bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment) = imac 0x4656d0;
    bool initWithString(char const*, cocos2d::_ccFontDefinition*);

    cocos2d::CCSize const& getContentSizeInPixels();

    void setAliasTexParameters();
    void setAntiAliasTexParameters();
    void setTexParameters(cocos2d::_ccTexParams*) = imac 0x465c30;

    // CCTexture2D(cocos2d::CCTexture2D const&);
    ~CCTexture2D();
    CCTexture2D();
    unsigned int bitsPerPixelForFormat(cocos2d::CCTexture2DPixelFormat) = imac 0x464d20;
    unsigned int bitsPerPixelForFormat() = imac 0x465db0;
    char const* description() = imac 0x464d40;
    void drawAtPoint(cocos2d::CCPoint const&);
    void drawInRect(cocos2d::CCRect const&);
    void generateMipmap() = imac 0x465be0;
    bool hasMipmaps();
    bool hasPremultipliedAlpha();
    void* keepData(void*, unsigned int);
    void releaseData(void*);
    void releaseGLTexture() = imac 0x4649c0;
    char const* stringForFormat() = imac 0x465d60;

    virtual cocos2d::CCTexture2DPixelFormat getPixelFormat();
    virtual unsigned int getPixelsWide();
    virtual unsigned int getPixelsHigh();
    virtual unsigned int getName();
    virtual float getMaxS();
    virtual void setMaxS(float);
    virtual float getMaxT();
    virtual void setMaxT(float);
    virtual cocos2d::CCSize getContentSize();
    virtual cocos2d::CCGLProgram* getShaderProgram();
    virtual void setShaderProgram(cocos2d::CCGLProgram*);
}

[[link(win, android)]]
class cocos2d::CCTextureCache {
    static void purgeSharedTextureCache();
    static void reloadAllTextures();
    static cocos2d::CCTextureCache* sharedTextureCache() = imac 0x5d3a20;

    // CCTextureCache(cocos2d::CCTextureCache const&);
    // CCTextureCache();
    cocos2d::CCTexture2D* addETCImage(char const*);
    cocos2d::CCTexture2D* addImage(char const*, bool) = imac 0x5d4cb0;
    void addImageAsync(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler, int, cocos2d::CCTexture2DPixelFormat) = imac 0x5d3ef0;
    void addImageAsyncCallBack(float);
    cocos2d::CCTexture2D* addPVRImage(char const*);
    cocos2d::CCTexture2D* addUIImage(cocos2d::CCImage*, char const*) = imac 0x5d5af0;
    char const* description();
    void dumpCachedTextureInfo();
    void prepareAsyncLoading();
    bool reloadTexture(char const*);
    void removeAllTextures();
    void removeTexture(cocos2d::CCTexture2D*);
    void removeTextureForKey(char const*) = imac 0x5d6090;
    void removeUnusedTextures();
    cocos2d::CCDictionary* snapshotTextures();
    cocos2d::CCTexture2D* textureForKey(char const*) = imac 0x5d6110;
}

[[link(win, android)]]
class cocos2d::CCTouch {
    cocos2d::CCPoint getLocationInView() const = imac 0x595a0;
    cocos2d::CCPoint getLocation() const;
    cocos2d::CCPoint getPreviousLocation() const = ios inline {
    	return CCDirector::sharedDirector()->convertToGL(m_prevPoint);
    }
    cocos2d::CCPoint getStartLocation() const = ios inline {
    	return CCDirector::sharedDirector()->convertToGL(m_startPoint);
    }
    cocos2d::CCPoint getDelta() const = ios inline {
    	return getLocation() - getPreviousLocation();
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
    bool init() = imac 0x4b7ac0;

    int getTargetPrio() const;

    void setDispatchEvents(bool);
    void setPriority(int p1, cocos2d::CCTouchDelegate* p2) = ios inline {
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
    void addPrioTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x4b7d70;
    void addStandardDelegate(cocos2d::CCTouchDelegate*, int);
    void addTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x4b7d90;
    void decrementForcePrio(int);
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCArray*, cocos2d::CCTouchDelegate*);
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCTouchDelegate*);
    void forceAddHandler(cocos2d::CCTouchHandler*, cocos2d::CCArray*);
    void forceRemoveAllDelegates();
    void forceRemoveDelegate(cocos2d::CCTouchDelegate*) = imac 0x4b8100;
    void incrementForcePrio(int);
    bool isDispatchEvents();
    bool isUsingForcePrio() = imac 0x4b7d60;
    void rearrangeHandlers(cocos2d::CCArray* handlers) = ios inline {
    	std::sort(handlers->data->arr, handlers->data->arr + handlers->data->num, [](const CCObject* p1, const CCObject* p2) {
    		return ((CCTouchHandler*)p1)->getPriority() < ((CCTouchHandler*)p2)->getPriority();
    	});
    }
    void registerForcePrio(cocos2d::CCObject*, int) = imac 0x4b7c70;
    void removeAllDelegates();
    void removeDelegate(cocos2d::CCTouchDelegate*);
    void touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int) = imac 0x4b8610;
    void unregisterForcePrio(cocos2d::CCObject*) = imac 0x4b7d10;

    virtual void touchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b8c30;
    virtual void touchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b8c70;
    virtual void touchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b8cb0;
    virtual void touchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b8cf0;
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
    virtual void swapBuffers();
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
    bool initWithImageFile(char const*, cocos2d::CCImage::EImageFormat) = imac 0x475f70;
    bool initWithImageFileThreadSafe(char const*, cocos2d::CCImage::EImageFormat) = imac 0x476760;
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
    virtual bool attachWithIME() = imac 0x4a8050;
    virtual bool detachWithIME() = imac 0x4a8240;
    virtual void deleteForward() {}
}

[[link(win, android)]]
class cocos2d::CCIMEDispatcher {
    static cocos2d::CCIMEDispatcher* sharedDispatcher() = imac 0x4a7da0;

    // CCIMEDispatcher();

    void addDelegate(cocos2d::CCIMEDelegate*);
    bool attachDelegateWithIME(cocos2d::CCIMEDelegate*);
    bool detachDelegateWithIME(cocos2d::CCIMEDelegate*);
    void dispatchDeleteBackward();
    void dispatchDeleteForward();
    void dispatchInsertText(char const*, int, cocos2d::enumKeyCodes) = imac 0x4a8510;
    void dispatchKeyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&);
    void dispatchKeyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&);
    void dispatchKeyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
    void dispatchKeyboardWillHide();
    void dispatchKeyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
    char const* getContentText();
    bool hasDelegate() = imac 0x4a84f0;
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
    bool dispatchKeyboardMSG(cocos2d::enumKeyCodes, bool, bool) = imac 0x1f12a0;
    void forceAddDelegate(cocos2d::CCKeyboardDelegate*);
    void forceRemoveDelegate(cocos2d::CCKeyboardDelegate*);
    char const* keyToString(cocos2d::enumKeyCodes) = imac 0x1f1590;
    void removeDelegate(cocos2d::CCKeyboardDelegate*);
    void updateModifierKeys(bool, bool, bool, bool) = imac 0x1f1560;
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
    static cocos2d::CCDirector* sharedDirector() = imac 0x46e900;

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
    cocos2d::CCSize getWinSize() = imac 0x46fd20;
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
    void setDepthTest(bool) = imac 0x46f040;
    void setDisplayStats(bool);
    void setDontCallWillSwitch(bool);
    void setGLDefaultValues() = imac 0x46efd0;
    void setNextDeltaTimeZero(bool);
    void setNextScene();
    void setNotificationNode(cocos2d::CCNode*);
    void setOpenGLView(cocos2d::CCEGLView*);
    void setProjection(cocos2d::ccDirectorProjection);
    void setSceneReference(cocos2d::CCScene*);
    void setSmoothFix(bool);
    void setSmoothFixCheck(bool);
    void setViewport() = imac 0x470160;

    // CCDirector(cocos2d::CCDirector const&);
    // CCDirector();
    void applySmoothFix();
    void calculateDeltaTime();
    void calculateMPF();
    void checkSceneReference();
    cocos2d::CCPoint convertToGL(cocos2d::CCPoint const&) = imac 0x470250;
    cocos2d::CCPoint convertToUI(cocos2d::CCPoint const&);
    void createStatsLabel();
    void drawScene();
    void end();
    bool isDisplayStats();
    bool isNextDeltaTimeZero();
    bool isPaused();
    bool isSendCleanupToScene();
    int levelForSceneInStack(cocos2d::CCScene*);
    void pause();
    void popScene();
    bool popSceneWithTransition(float, cocos2d::PopTransition) = imac 0x4708c0;
    void popToRootScene();
    void popToSceneInStack(cocos2d::CCScene*);
    void popToSceneStackLevel(int);
    void purgeCachedData();
    void purgeDirector() = imac 0x470b80;
    bool pushScene(cocos2d::CCScene*) = imac 0x470630;
    void removeStatsLabel() = imac 0x470d90;
    bool replaceScene(cocos2d::CCScene*) = imac 0x4706e0;
    void resetSmoothFixCounter();
    void reshapeProjection(cocos2d::CCSize const&);
    void resume() = imac 0x470d10;
    void runWithScene(cocos2d::CCScene*) = imac 0x470590;
    int sceneCount();
    void setupScreenScale(cocos2d::CCSize, cocos2d::CCSize, cocos2d::TextureQuality);
    void showFPSLabel();
    void showStats();
    void toggleShowFPS(bool, gd::string, cocos2d::CCPoint) = imac 0x46fc00;
    void updateContentScale(cocos2d::TextureQuality);
    void updateScreenScale(cocos2d::CCSize);
    void willSwitchToScene(cocos2d::CCScene*) = imac 0x470540;

    virtual bool init();
    virtual cocos2d::CCScheduler* getScheduler();
    virtual void setScheduler(cocos2d::CCScheduler*);
    virtual cocos2d::CCActionManager* getActionManager();
    virtual void setActionManager(cocos2d::CCActionManager*);
    virtual cocos2d::CCTouchDispatcher* getTouchDispatcher();
    virtual void setTouchDispatcher(cocos2d::CCTouchDispatcher*);
    virtual cocos2d::CCKeypadDispatcher* getKeypadDispatcher();
    virtual void setKeypadDispatcher(cocos2d::CCKeypadDispatcher*);
    virtual cocos2d::CCKeyboardDispatcher* getKeyboardDispatcher();
    virtual void setKeyboardDispatcher(cocos2d::CCKeyboardDispatcher*);
    virtual cocos2d::CCMouseDispatcher* getMouseDispatcher();
    virtual void setMouseDispatcher(cocos2d::CCMouseDispatcher*);
    virtual cocos2d::CCAccelerometer* getAccelerometer();
    virtual void setAccelerometer(cocos2d::CCAccelerometer*);
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

    virtual bool init() = imac 0x262b90;

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
    virtual void updateDisplayedOpacity(unsigned char);
}

[[link(win, android)]]
class cocos2d::CCSequence {
    static cocos2d::CCSequence* create(cocos2d::CCArray*);
    // static cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, ...) = imac 0x3b8aa0, m1 0x33d1fc;
    static cocos2d::CCSequence* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3a18d0;
    static cocos2d::CCSequence* createWithVariableList(cocos2d::CCFiniteTimeAction*, va_list) = imac 0x3a1ab0;

    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3a19a0;

    // CCSequence(cocos2d::CCSequence const&);
    // CCSequence();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float) = imac 0x3a2280;
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void stop() = imac 0x3a2250;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a2420;
}

[[link(win, android)]]
class cocos2d::CCSprite {
    static cocos2d::CCSprite* create(char const*);
    static cocos2d::CCSprite* create(char const*, cocos2d::CCRect const&);
    static cocos2d::CCSprite* create();
    static cocos2d::CCSprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*);
    static cocos2d::CCSprite* createWithSpriteFrameName(char const*);
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

    virtual bool init() = imac 0x276280;
    virtual void setVertexZ(float);
    virtual void setScaleX(float);
    virtual void setScaleY(float);
    virtual void setScale(float) = imac 0x277c70;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x2778e0;
    virtual void setSkewX(float);
    virtual void setSkewY(float);
    virtual void setAnchorPoint(cocos2d::CCPoint const&);
    virtual void setVisible(bool);
    virtual void setRotation(float);
    virtual void setRotationX(float);
    virtual void setRotationY(float);
    virtual void ignoreAnchorPointForPosition(bool);
    virtual void addChild(cocos2d::CCNode*);
    virtual void addChild(cocos2d::CCNode*, int);
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x277440;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x277580;
    virtual void removeAllChildrenWithCleanup(bool);
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x277500;
    virtual void sortAllChildren();
    virtual void draw();
    virtual void updateTransform() = imac 0x276e40;
    virtual bool initWithTexture(cocos2d::CCTexture2D*);
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = imac 0x2762a0;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*);
    virtual bool initWithSpriteFrameName(char const*);
    virtual bool initWithFile(char const*);
    virtual bool initWithFile(char const*, cocos2d::CCRect const&);
    virtual void setChildColor(cocos2d::_ccColor3B const&);
    virtual void setChildOpacity(unsigned char);
    virtual cocos2d::CCSpriteBatchNode* getBatchNode();
    virtual void setBatchNode(cocos2d::CCSpriteBatchNode*) = imac 0x278bb0;
    virtual void refreshTextureRect() = imac 0x2767f0;
    virtual void setTextureRect(cocos2d::CCRect const&) = imac 0x276880;
    virtual void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&) = imac 0x2768a0;
    virtual void setVertexRect(cocos2d::CCRect const&) = imac 0x276be0;
    virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = imac 0x278890;
    virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = imac 0x278960;
    virtual cocos2d::CCSpriteFrame* displayFrame() = imac 0x2789f0;
    virtual void setDisplayFrameWithAnimationName(char const*, int);
    virtual void setTextureCoords(cocos2d::CCRect const&) = imac 0x276c00;
    virtual void updateBlendFunc();
    virtual void setReorderChildDirtyRecursively() = imac 0x277800;
    virtual void setDirtyRecursively(bool) = imac 0x277860;

    virtual void setOpacity(unsigned char) = imac 0x278010;
    virtual void updateDisplayedOpacity(unsigned char);
    virtual void setColor(cocos2d::_ccColor3B const&) = imac 0x278260;
    virtual void updateDisplayedColor(cocos2d::_ccColor3B const&);
    virtual void setOpacityModifyRGB(bool);
    virtual bool isOpacityModifyRGB();

    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x278c80;
    virtual cocos2d::CCTexture2D* getTexture();
}

[[link(win, android)]]
class cocos2d::CCLabelBMFont {
    CCLabelBMFont();

    static cocos2d::CCLabelBMFont* create(char const*, char const*) = imac 0x5bf2c0;
    static cocos2d::CCLabelBMFont* create(char const*, char const*, float);
    static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment) = imac 0x5bf210;
    static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = imac 0x5bf170;
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
    static cocos2d::CCLabelBMFont* createBatched(char const*, char const*, cocos2d::CCArray*, int) = imac 0x5bf640;
    static void purgeCachedData();

    bool initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = imac 0x5bf370;

    cocos2d::CCBMFontConfiguration* getConfiguration() const;
    int getExtraKerning() const;
    char const* getFntFile() = imac 0x5c2710;
    bool getIsBatched() const;
    float getLetterPosXLeft(cocos2d::CCSprite*, float, bool);
    float getLetterPosXRight(cocos2d::CCSprite*, float, bool);
    cocos2d::CCArray* getTargetArray() const;

    void setExtraKerning(int);
    void setFntFile(char const*) = imac 0x5c2630;
    void setIsBatched(bool);
    void setTargetArray(cocos2d::CCArray*);
    void createFontChars() = imac 0x5bfaa0;
    int kerningAmountForFirst(unsigned short, unsigned short);
    void limitLabelWidth(float, float, float) = imac 0x5c2750;

    ~CCLabelBMFont();
    virtual bool init() = imac 0x5bf6f0;
    virtual void setScaleX(float);
    virtual void setScaleY(float);
    virtual void setScale(float);
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x5c0e60;
    virtual void setString(char const*);
    virtual void setString(char const*, bool) = imac 0x5c03f0;
    virtual char const* getString();
    virtual void setCString(char const*);
    virtual void updateLabel();
    virtual void setAlignment(cocos2d::CCTextAlignment) = imac 0x5c2570;
    virtual void setWidth(float) = imac 0x5c2590;
    virtual void setLineBreakWithoutSpace(bool);
    virtual void setString(unsigned short*, bool);

    virtual void setColor(cocos2d::_ccColor3B const&);
    virtual cocos2d::_ccColor3B const& getColor();
    virtual cocos2d::_ccColor3B const& getDisplayedColor();
    virtual unsigned char getDisplayedOpacity();
    virtual unsigned char getOpacity();
    virtual void setOpacity(unsigned char);
    virtual void setOpacityModifyRGB(bool) = imac 0x5c09c0;
    virtual bool isOpacityModifyRGB();
    virtual bool isCascadeColorEnabled();
    virtual void setCascadeColorEnabled(bool);
    virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = imac 0x5c0c40;
    virtual bool isCascadeOpacityEnabled();
    virtual void setCascadeOpacityEnabled(bool);
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x5c0b40;

    //purgeCachedData = ios 0x30958c
}

[[link(win, android)]]
class cocos2d::CCActionManager {
    void addAction(cocos2d::CCAction*, cocos2d::CCNode*, bool);
    void pauseTarget(cocos2d::CCObject*) = imac 0x221600;
    void resumeTarget(cocos2d::CCObject*) = imac 0x2216e0;
}

[[link(win, android)]]
class cocos2d::CCAnimate {
    static cocos2d::CCAnimate* create(cocos2d::CCAnimation*) = imac 0x3a84d0;

    bool initWithAnimation(cocos2d::CCAnimation*);

    cocos2d::CCAnimation* getAnimation() const;
    bool getRecenterChildren() const;
    bool getRecenterFrames() const;

    void setAnimation(cocos2d::CCAnimation*);
    void setRecenterChildren(bool);
    void setRecenterFrames(bool);

    // CCAnimate(cocos2d::CCAnimate const&);
    // CCAnimate();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void stop();
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCAnimation {
    // static cocos2d::CCAnimation* create(cocos2d::CCArray*, float);
    static cocos2d::CCAnimation* create(cocos2d::CCArray*, float, unsigned int) = imac 0x284630;
    static cocos2d::CCAnimation* create();
    static cocos2d::CCAnimation* createWithSpriteFrames(cocos2d::CCArray*, float) = imac 0x284430;

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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual float getDuration();
}

[[link(win, android)]]
class cocos2d::CCApplication {
    static cocos2d::CCApplication* sharedApplication();
    virtual int run();
    virtual void openURL(char const*) = imac 0x3157f0;
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

    bool init() = imac 0x708940;
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

    // virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios 0x259e0c;
    // virtual void acceptVisitor(cocos2d::CCDataVisitor&) = ios 0x259ed4;
}

[[link(win, android)]]
class cocos2d::CCDictionary {
    static cocos2d::CCDictionary* create();
    static cocos2d::CCDictionary* createWithContentsOfFile(char const*);
    static cocos2d::CCDictionary* createWithContentsOfFileThreadSafe(char const*);
    static cocos2d::CCDictionary* createWithDictionary(cocos2d::CCDictionary*);

    gd::string getFirstKey();

    void setObject(cocos2d::CCObject*, gd::string const&) = imac 0x2fa020;
    void setObject(cocos2d::CCObject*, intptr_t) = imac 0x2fa020;
    void setObjectUnSafe(cocos2d::CCObject*, gd::string const&);
    //void setObjectUnSafe(cocos2d::CCObject*, int);

    // CCDictionary(cocos2d::CCDictionary const&);
    // CCDictionary() = ios 0x42b75c;
    cocos2d::CCArray* allKeys() = imac 0x2f9770;
    cocos2d::CCArray* allKeysForObject(cocos2d::CCObject*);
    char const* charForKey(gd::string const&);
    unsigned int count() = imac 0x2f9750;
    cocos2d::CCObject* objectForKey(gd::string const&) = imac 0x2f9ae0;
    cocos2d::CCObject* objectForKey(intptr_t) = imac 0x2f9e70;
    cocos2d::CCObject* randomObject();
    void removeAllObjects();
    void removeObjectForElememt(cocos2d::CCDictElement*) = imac 0x2fb340;
    void removeObjectForKey(gd::string const&) = imac 0x2faf40;
    void removeObjectForKey(intptr_t) = imac 0x2fb490;
    void removeObjectsForKeys(cocos2d::CCArray*);
    cocos2d::CCString const* valueForKey(gd::string const&) = imac 0x2f9a60;
    cocos2d::CCString const* valueForKey(intptr_t) = imac 0x2f9fa0;
    bool writeToFile(char const*);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void acceptVisitor(cocos2d::CCDataVisitor&);
}

[[link(win, android)]]
class cocos2d::CCRenderTexture {
    static cocos2d::CCRenderTexture* create(int, int) = imac 0x5dd390;
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat) = imac 0x5dce50;
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = imac 0x5dcf20;

    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat);
    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int);

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
    void begin() = imac 0x5dd470;
    void beginWithClear(float, float, float, float, float, int, unsigned int) = imac 0x5dd740;
    void beginWithClear(float, float, float, float) = imac 0x5dd6a0;
    void beginWithClear(float, float, float, float, float) = imac 0x5dd8e0;
    void beginWithClear(float, float, float, float, float, int) = imac 0x5dd9c0;
    void clear(float, float, float, float);
    void clearDepth(float);
    void clearStencil(int);
    void end();
    void endToLua();
    bool isAutoDraw() const;
    void listenToBackground(cocos2d::CCObject*);
    void listenToForeground(cocos2d::CCObject*);
    cocos2d::CCImage* newCCImage(bool);
    bool saveToFile(char const*);
    bool saveToFile(char const*, cocos2d::eImageFormat);
    void updateInternalScale(float, float);

    virtual void draw() = imac 0x5ddc80;
    virtual void visit();
    virtual cocos2d::CCSprite* getSprite();
    virtual void setSprite(cocos2d::CCSprite*);
}

[[link(win, android)]]
class cocos2d::CCRepeat {
    static cocos2d::CCRepeat* create(cocos2d::CCFiniteTimeAction*, unsigned int) = imac 0x3a2510;

    bool initWithAction(cocos2d::CCFiniteTimeAction*, unsigned int);

    cocos2d::CCFiniteTimeAction* getInnerAction();

    void setInnerAction(cocos2d::CCFiniteTimeAction*);

    // CCRepeat(cocos2d::CCRepeat const&);
    // CCRepeat();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual bool isDone();
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void stop();
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCRepeatForever {
    static cocos2d::CCRepeatForever* create(cocos2d::CCActionInterval*);

    bool initWithAction(cocos2d::CCActionInterval*);

    cocos2d::CCActionInterval* getInnerAction();

    void setInnerAction(cocos2d::CCActionInterval*);

    // CCRepeatForever(cocos2d::CCRepeatForever const&);
    // CCRepeatForever();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual bool isDone();
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void step(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInT {
    static cocos2d::CCTransitionMoveInT* create(float, cocos2d::CCScene*);

    // CCTransitionMoveInT(cocos2d::CCTransitionMoveInT const&);
    // CCTransitionMoveInT();
}

[[link(win, android)]]
class cocos2d::CCTransitionFade {
    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&) = imac 0xd8ae0;

    // CCTransitionFade(cocos2d::CCTransitionFade const&);
    // CCTransitionFade();

    virtual void onEnter();
    virtual void onExit();
    virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xd8c50;
    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&) = imac 0xd8c00;
}

[[link(win, android)]]
class cocos2d::CCTransitionRotoZoom {
    static cocos2d::CCTransitionRotoZoom* create(float, cocos2d::CCScene*);

    // CCTransitionRotoZoom(cocos2d::CCTransitionRotoZoom const&);
    // CCTransitionRotoZoom();

    virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionScene {
    // CCTransitionScene(cocos2d::CCTransitionScene const&);
    // CCTransitionScene();

    ~CCTransitionScene();

    virtual void onEnter();
    virtual void onExit();
    virtual void cleanup();
    virtual void draw();
    virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xd4a10;
    virtual void sceneOrder();
}

[[link(win, android)]]
class cocos2d::CCBlink {
    static cocos2d::CCBlink* create(float, unsigned int) = imac 0x3a6c00;

    bool initWithDuration(float, unsigned int);

    // CCBlink(cocos2d::CCBlink const&);
    // CCBlink();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void stop();
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCCallFunc {
    static cocos2d::CCCallFunc* create(cocos2d::CCObject*, cocos2d::SEL_CallFunc) = imac 0x796700;
}

[[link(win, android)]]
class cocos2d::CCCallFuncN {
    static cocos2d::CCCallFuncN* create(cocos2d::CCObject*, cocos2d::SEL_CallFuncN) = imac 0x796b20;
}

[[link(win, android)]]
class cocos2d::CCCallFuncO {
    static cocos2d::CCCallFuncO* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*) = imac 0x797200;

    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*);

    cocos2d::CCObject* getObject();

    void setObject(cocos2d::CCObject*);

    // CCCallFuncO(cocos2d::CCCallFuncO const&);
    // CCCallFuncO();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void execute();
}

[[link(win, android)]]
class cocos2d::CCClippingNode : cocos2d::CCNode {
    static cocos2d::CCClippingNode* create() = ios inline {
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

    virtual bool init(cocos2d::CCNode* pStencil) = ios inline {
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

    virtual void visit() = ios inline {
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

    void setBlendFunc(cocos2d::_ccBlendFunc const&) = imac 0x5fa650;

    // CCDrawNode(cocos2d::CCDrawNode const&);
    CCDrawNode();
    ~CCDrawNode();
    void clear() = imac 0x5fa620;
    void drawCircle(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&, unsigned int) = imac 0x5fa470;
    void drawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&);
    void drawDot(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&) = imac 0x5f8db0;
    bool drawLines(cocos2d::CCPoint*, unsigned int, float, cocos2d::_ccColor4F const&) = imac 0x5fa3f0;
    bool drawPolygon(cocos2d::CCPoint*, unsigned int, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&);
    void drawPreciseCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&) = imac 0x5f8f90;
    bool drawRect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&) = imac 0x5fa2c0;
    void drawSegment(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&) = imac 0x5f9c70;
    void ensureCapacity(unsigned int) = imac 0x5f89a0;
    void listenBackToForeground(cocos2d::CCObject*) = imac 0x5fa660;
    void render() = imac 0x5f8b50;

    virtual bool init() = imac 0x5f89f0;
    virtual void draw();
}

[[link(win, android)]]
class cocos2d::CCSpriteBatchNode {
    static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int);

    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x165500;

    CCSpriteBatchNode();
    ~CCSpriteBatchNode();

    virtual bool init() = imac 0x165780;
    virtual void addChild(cocos2d::CCNode*);
    virtual void addChild(cocos2d::CCNode*, int);
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x1659f0;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x165cd0;
    virtual void removeAllChildrenWithCleanup(bool);
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x165c70;
    virtual void sortAllChildren() = imac 0x166060;
    virtual void draw() = imac 0x166840;
    virtual void visit() = imac 0x165950;

    virtual void setBlendFunc(cocos2d::_ccBlendFunc);
    virtual cocos2d::_ccBlendFunc getBlendFunc();
    virtual cocos2d::CCTexture2D* getTexture();
    virtual void setTexture(cocos2d::CCTexture2D*);
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
    bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x343ca0;
    bool initWithTextureFilename(char const* filename, cocos2d::CCRect const& rect) = ios inline {
    	CCRect rectInPixels = CC_RECT_POINTS_TO_PIXELS( rect );
    		return initWithTextureFilename(filename, rectInPixels, false, CCPointZero, rectInPixels.size);
    }
    bool initWithTextureFilename(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x343fd0;

    gd::string getFrameName() const = m1 inline, imac inline {
    	return m_strFrameName;
    }
    cocos2d::CCPoint const& getOffset();
    cocos2d::CCPoint const& getOffsetInPixels();
    cocos2d::CCSize const& getOriginalSize();
    cocos2d::CCSize const& getOriginalSizeInPixels();
    cocos2d::CCRect const& getRect();
    cocos2d::CCRect const& getRectInPixels();
    cocos2d::CCTexture2D* getTexture() = imac 0x3447c0;

    void setFrameName(gd::string);
    void setOffset(cocos2d::CCPoint const&) = imac 0x344690;
    void setOffsetInPixels(cocos2d::CCPoint const&) = imac 0x344730;
    void setOriginalSize(cocos2d::CCSize const&);
    void setOriginalSizeInPixels(cocos2d::CCSize const&);
    void setRect(cocos2d::CCRect const&) = imac 0x3444c0;
    void setRectInPixels(cocos2d::CCRect const&) = imac 0x3445a0;
    void setRotated(bool);
    void setTexture(cocos2d::CCTexture2D*) = imac 0x344480;

    // CCSpriteFrame(cocos2d::CCSpriteFrame const&);
    // CCSpriteFrame();
    // ~CCSpriteFrame() = ios 0x25de00;

    bool isRotated();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x344320;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrameCache {
    static cocos2d::CCSpriteFrameCache* sharedSpriteFrameCache() = imac 0x307470;

    bool init();

    // CCSpriteFrameCache();
    // CCSpriteFrameCache(cocos2d::CCSpriteFrameCache const&);
    void addSpriteFrame(cocos2d::CCSpriteFrame*, char const*);
    void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*);
    void addSpriteFramesWithFile(char const*, char const*);
    void addSpriteFramesWithFile(char const*) = imac 0x308370;
    void addSpriteFramesWithFile(char const*, cocos2d::CCTexture2D*);
    void removeSpriteFrameByName(char const*);
    void removeSpriteFrames();
    void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*);
    void removeSpriteFramesFromFile(char const*);
    void removeSpriteFramesFromTexture(cocos2d::CCTexture2D*) = imac 0x309000;
    void removeUnusedSpriteFrames() = imac 0x308820;
    cocos2d::CCSpriteFrame* spriteFrameByName(char const*) = imac 0x309310;
    //purgeSharedSpriteFrameCache = ios 0x3c4dd4
}

[[link(win, android)]]
class cocos2d::CCString {
    static cocos2d::CCString* createWithData(unsigned char const*, unsigned long) = imac 0x794b20;
    // static cocos2d::CCString* createWithFormat(char const*, ...) = ios 0x278aec;

    char const* getCString() const;
    //createWithContentsOfFile = ios 0x278b74;

    bool boolValue() const = imac 0x794910;
    int intValue() const;
}

[[link(win, android)]]
class cocos2d::CCMenuItem {
    ~CCMenuItem();
    static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3aab90;
    static cocos2d::CCMenuItem* create() = imac 0x3aaad0;

    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3aac60;

    int getScriptTapHandler();

    void setTarget(cocos2d::CCObject* rec, cocos2d::SEL_MenuHandler selector) = ios inline {
    	m_pListener = rec;
    	m_pfnSelector = selector;
    }

    // CCMenuItem(cocos2d::CCMenuItem const&);
    // CCMenuItem();
    cocos2d::CCRect rect();

    virtual void activate() = imac 0x3aaea0;
    virtual void selected();
    virtual void unselected();
    virtual void registerScriptTapHandler(int);
    virtual void unregisterScriptTapHandler();
    virtual bool isEnabled();
    virtual void setEnabled(bool);
    virtual bool isSelected();
}

[[link(win, android)]]
class cocos2d::CCMenuItemSprite {
    bool initWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3ac3d0;

    virtual void selected() = imac 0x3ac4c0;
    virtual void unselected() = imac 0x3ac560;
    virtual void setEnabled(bool) = imac 0x3ac5e0;
    virtual cocos2d::CCNode* getNormalImage();
    virtual void setNormalImage(cocos2d::CCNode*) = imac 0x3ac020;
    virtual cocos2d::CCNode* getSelectedImage();
    virtual void setSelectedImage(cocos2d::CCNode*) = imac 0x3ac0f0;
    virtual cocos2d::CCNode* getDisabledImage();
    virtual void setDisabledImage(cocos2d::CCNode*) = imac 0x3ac190;
    virtual void updateImagesVisibility() = imac 0x3ac600;
}

[[link(win, android)]]
class cocos2d::CCMenu {
    // static cocos2d::CCMenu* create(cocos2d::CCMenuItem*, ...) = ios 0x1e1964, m1 0x6a6d58, imac 0x79e7b0;
    static cocos2d::CCMenu* create() = imac 0x77bdb0;
    static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*) = imac 0x77bfb0;
    static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*) = imac 0x77c200;
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

    virtual bool init() = imac 0x77c210;
    virtual void addChild(cocos2d::CCNode*);
    virtual void addChild(cocos2d::CCNode*, int);
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x77c240;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x77c2e0;
    virtual void onExit() = imac 0x77c290;
    virtual void registerWithTouchDispatcher();

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x77c3e0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x77c690;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x77c5b0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x77c630;
}

[[link(win, android)]]
class cocos2d::CCRotateBy {
    static cocos2d::CCRotateBy* create(float, float) = imac 0x3a3fb0;
    static cocos2d::CCRotateBy* create(float, float, float);

    bool initWithDuration(float, float);
    bool initWithDuration(float, float, float);

    // CCRotateBy(cocos2d::CCRotateBy const&);
    // CCRotateBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCRotateTo {
    static cocos2d::CCRotateTo* create(float, float) = imac 0x3a3ad0;
    static cocos2d::CCRotateTo* create(float, float, float);

    bool initWithDuration(float, float);
    bool initWithDuration(float, float, float);

    // CCRotateTo(cocos2d::CCRotateTo const&);
    // CCRotateTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCDelayTime {
    static cocos2d::CCDelayTime* create(float);

    // CCDelayTime(cocos2d::CCDelayTime const&);
    // CCDelayTime();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
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

    virtual void draw();
    virtual const cocos2d::ccColor3B& getColorSpaceHolder();
    virtual void setColorSpaceHolder(const cocos2d::ccColor3B& color);
    virtual const char* getPlaceHolder();
    virtual void setPlaceHolder(const char* text);
    virtual void setSecureTextEntry(bool value);
    virtual bool isSecureTextEntry();

    virtual void setString(const char* text);
    virtual const char* getString();

    virtual bool attachWithIME();
    virtual bool detachWithIME();
    virtual bool canAttachWithIME();
    virtual bool canDetachWithIME();
    virtual void insertText(const char* text, int len, cocos2d::enumKeyCodes keyCode);
    virtual void deleteBackward();
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
    DS_Dictionary();
    void addBoolValuesToMapForKey(gd::map<gd::string, bool>&, char const*, bool);
    void addBoolValuesToMapForKeySpecial(gd::map<gd::string, bool>&, char const*, bool);
    void checkCompatibility();
    gd::string cleanStringWhiteSpace(gd::string const&);
    static void copyFile(char const*, char const*);
    cocos2d::CCObject* decodeObjectForKey(char const*, bool, int);
    gd::vector<gd::string> getAllKeys() = imac 0x16c7a0;
    cocos2d::CCArray* getArrayForKey(char const*, bool) = imac 0x1702a0;
    bool getBoolForKey(char const*);
    cocos2d::CCDictionary* getDictForKey(char const*, bool);
    float getFloatForKey(char const*) = imac 0x16cfd0;
    unsigned int getIndexOfKey(char const*);
    unsigned int getIndexOfKeyWithClosestAlphaNumericalMatch(char const*);
    int getIntegerForKey(char const*) = imac 0x16cd90;
    gd::string getKey(unsigned int) = imac 0x16c670;
    unsigned int getNumKeys();
    cocos2d::CCObject* getObjectForKey(char const*) = imac 0x170420;
    gd::vector<cocos2d::CCRect> getRectArrayForKey(char const*);
    cocos2d::CCRect getRectForKey(char const*);
    gd::vector<gd::string> getStringArrayForKey(char const*);
    gd::string getStringForKey(char const*);
    gd::vector<cocos2d::CCPoint> getVec2ArrayForKey(char const*);
    cocos2d::CCPoint getVec2ForKey(char const*);
    bool loadRootSubDictFromCompressedFile(char const*) = imac 0x16a0a0;
    bool loadRootSubDictFromFile(char const*);
    bool loadRootSubDictFromString(gd::string const&);
    bool rectFromString(gd::string const&, cocos2d::CCRect&);
    void removeAllKeys();
    void removeKey(unsigned int);
    void removeKey(char const*);
    bool saveRootSubDictToCompressedFile(char const*);
    bool saveRootSubDictToFile(char const*);
    gd::string saveRootSubDictToString() = imac 0x16bb20;
    void setArrayForKey(char const*, cocos2d::CCArray*);
    void setBoolForKey(char const*, bool, bool);
    void setBoolForKey(char const*, bool) = imac 0x16e280;
    void setBoolMapForKey(char const*, gd::map<gd::string, bool>&);
    void setDictForKey(char const*, cocos2d::CCDictionary*) = imac 0x1708a0;
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
    bool stepIntoSubDictWithKey(char const*) = imac 0x16c0c0;
    void stepOutOfSubDict() = imac 0x16c390;
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

    virtual bool init() = imac 0x3e1460;
    virtual void setContentSize(const cocos2d::CCSize& size);
    virtual void visit() = imac 0x3e38d0;
    virtual GLubyte getOpacity();
    virtual void setOpacity(GLubyte opacity);
    virtual void updateDisplayedOpacity(GLubyte parentOpacity);
    virtual const cocos2d::ccColor3B& getColor();
    virtual void setColor(const cocos2d::ccColor3B& color);
    virtual void updateDisplayedColor(const cocos2d::ccColor3B& parentColor);
    virtual void setOpacityModifyRGB(bool bValue);
    virtual bool isOpacityModifyRGB();
    virtual cocos2d::CCSize getPreferredSize() = imac 0x3e3320;
    virtual void setPreferredSize(cocos2d::CCSize) = imac 0x3e32f0;
    virtual cocos2d::CCRect getCapInsets() = imac 0x3e33e0;
    virtual void setCapInsets(cocos2d::CCRect) = imac 0x3e3340;
    virtual float getInsetLeft();
    virtual void setInsetLeft(float);
    virtual float getInsetTop();
    virtual void setInsetTop(float);
    virtual float getInsetRight();
    virtual void setInsetRight(float);
    virtual float getInsetBottom();
    virtual void setInsetBottom(float);
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = imac 0x3e1520;
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, cocos2d::CCRect) = imac 0x3e14c0;
    virtual bool initWithFile(const char*, cocos2d::CCRect, cocos2d::CCRect) = imac 0x3e2aa0;
    virtual bool initWithFile(const char*, cocos2d::CCRect);
    virtual bool initWithFile(cocos2d::CCRect, const char*) = imac 0x3e2ca0;
    virtual bool initWithFile(const char*);
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = imac 0x3e2e50;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*);
    virtual bool initWithSpriteFrameName(const char*, cocos2d::CCRect);
    virtual bool initWithSpriteFrameName(const char*);
    virtual bool updateWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect);
    virtual void setSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3e3780;
}

[[link(win, android)]]
class cocos2d::extension::CCHttpClient : cocos2d::CCObject {
    // CCHttpClient() = imac 0x441fb0, m1 0x3b3ec8;
    static cocos2d::extension::CCHttpClient* getInstance() = imac 0x4248f0;
    static void destroyInstance();
    void send(cocos2d::extension::CCHttpRequest* request) = imac 0x425800;
    bool lazyInitThreadSemphore() = imac 0x424c50;
    void dispatchResponseCallbacks(float);
}

[[link(win, android)]]
class cocos2d::ZipUtils {
    static gd::string base64DecodeEnc(gd::string const&, gd::string);
    static gd::string base64EncodeEnc(gd::string const&, gd::string);
    static gd::string base64URLDecode(gd::string const&);
    static gd::string base64URLEncode(gd::string const&);
    static void ccDecodeEncodedPvr(unsigned int*, int);
    static int ccDeflateMemory(unsigned char*, unsigned int, unsigned char**) = imac 0x1f2d80;
    static int ccInflateCCZFile(char const*, unsigned char**);
    static int ccInflateGZipFile(char const*, unsigned char**);
    static int ccInflateMemory(unsigned char*, unsigned int, unsigned char**);
    static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int*, unsigned int);
    static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int);
    static void ccSetPvrEncryptionKey(unsigned int, unsigned int, unsigned int, unsigned int);
    static void ccSetPvrEncryptionKeyPart(int, unsigned int);
    static gd::string compressString(gd::string const&, bool, int) = imac 0x1f2b10;
    static gd::string decompressString2(unsigned char*, bool, int, int);
    static gd::string decompressString(gd::string const&, bool, int);
    static gd::string encryptDecrypt(gd::string const&, int);
    static gd::string encryptDecryptWKey(gd::string const&, gd::string);
    static unsigned char hexToChar(gd::string const&);
    static gd::string urlDecode(gd::string const&);
}

[[link(win, android)]]
class cocos2d::CCSpawn {
    static cocos2d::CCSpawn* create(cocos2d::CCArray*);
    // static cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction*, ...) = m1 0x33e430, imac 0x3b9e30;
    static cocos2d::CCSpawn* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);
    // static cocos2d::CCSpawn* createWithVariableList(cocos2d::CCFiniteTimeAction*, char*);

    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);

    // CCSpawn(cocos2d::CCSpawn const&);
    // CCSpawn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void stop();
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCSpeed {
    static cocos2d::CCSpeed* create(cocos2d::CCActionInterval*, float) = imac 0x5dc130;

    bool initWithAction(cocos2d::CCActionInterval*, float);

    cocos2d::CCActionInterval* getInnerAction();
    float getSpeed();

    void setInnerAction(cocos2d::CCActionInterval*);
    void setSpeed(float);

    // CCSpeed(cocos2d::CCSpeed const&);
    // CCSpeed();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual bool isDone();
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void stop();
    virtual void step(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class pugi::xml_document {
    xml_document();
    ~xml_document() = imac 0x629ff0;
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
    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = imac 0x5c4d30;
    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint p1) = win inline, ios inline {
    	auto ret = new CCLightning();
    	if (ret->initWithStrikePoint(p1)) {
    		ret->autorelease();
    		return ret;
    	}
    	delete ret;
    	return nullptr;
    }

    bool initWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = win 0x9999999, imac 0x5c4e80;
    bool initWithStrikePoint(cocos2d::CCPoint p1) = win inline, ios inline {
    	return this->initWithStrikePoint(p1, CCPointZero, .5f);
    }

    CCLightning() = win 0x9999999;
    ~CCLightning();

    void strike() = win 0x9999999;
    void strikeFinished() = imac 0x5c5250;
    void strikeRandom() = win inline, ios inline {
    	m_seed = rand();
    	this->strike();
    }
    void strikeWithSeed(uint64_t seed) = win inline, ios inline {
    	m_seed = seed;
    	this->strike();
    }

    virtual void draw() = imac 0x5c5020;
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

