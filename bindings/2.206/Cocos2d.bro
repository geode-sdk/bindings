[[link(win, android)]]
class cocos2d::CCEGLViewProtocol {
    CCEGLViewProtocol() = win 0xbac00;
    virtual ~CCEGLViewProtocol() = win 0xbacc0;
    auto getViewPortRect() const = m1 0x46e314, imac 0x518860;
    auto getScaleX() const;
    auto getScaleY() const;

	virtual cocos2d::CCSize const& getFrameSize() const = imac 0x517f00, m1 0x46da58;
	virtual void setFrameSize(float, float) = imac 0x517f10, m1 0x46da60;
	virtual cocos2d::CCSize getVisibleSize() const = imac 0x517f50, m1 0x46daa4;
	virtual cocos2d::CCPoint getVisibleOrigin() const = imac 0x517fa0, m1 0x46dad4;
	virtual void setDesignResolutionSize(float, float, ResolutionPolicy) = imac 0x517db0, m1 0x46d938;
	virtual cocos2d::CCSize const& getDesignResolutionSize() const = imac 0x517ef0, m1 0x46da50;
	virtual void setTouchDelegate(cocos2d::EGLTouchDelegate*) = imac 0x518010, m1 0x46db20;
	virtual void setViewPortInPoints(float, float, float, float) = imac 0x50e1c0, m1 0x46db28;
	virtual void setScissorInPoints(float, float, float, float) = imac 0x50e2b0, m1 0x46db54;
	virtual bool isScissorEnabled() = imac 0x5180a0, m1 0x46db80;
	virtual cocos2d::CCRect getScissorRect() = imac 0x5180c0, m1 0x46dba0;
	virtual void setViewName(char const*) = imac 0x518160, m1 0x46dc30;
	virtual void pollInputEvents() = imac 0x518890, m1 0x46e32c;
}

[[link(win, android)]]
class cocos2d::CCEaseIn {
	static cocos2d::CCEaseIn* create(cocos2d::CCActionInterval*, float) = imac 0x51cbe0, m1 0x471f80;

	// CCEaseIn(cocos2d::CCEaseIn const&);
	// CCEaseIn();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseOut {
	static cocos2d::CCEaseOut* create(cocos2d::CCActionInterval*, float) = imac 0x51ce00, m1 0x472190;

	// CCEaseOut(cocos2d::CCEaseOut const&);
	// CCEaseOut();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseInOut {
	static cocos2d::CCEaseInOut* create(cocos2d::CCActionInterval*, float) = m1 0x4723a8, imac 0x51d020, ios 0x27befc;

	// CCEaseInOut(cocos2d::CCEaseInOut const&);
	// CCEaseInOut();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBackOut {
	static cocos2d::CCEaseBackOut* create(cocos2d::CCActionInterval*) = ios 0x27cedc, m1 0x47495c, imac 0x51f5f0;

	// CCEaseBackOut(cocos2d::CCEaseBackOut const&);
	// CCEaseBackOut();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBounceOut {
	static cocos2d::CCEaseBounceOut* create(cocos2d::CCActionInterval*) = ios 0x27cb94;

	// CCEaseBounceOut(cocos2d::CCEaseBounceOut const&);
	// CCEaseBounceOut();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseElasticOut {
	static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*) = imac 0x51e430, m1 0x473730;
	static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*, float) = ios 0x27c6e0, imac 0x51e350, m1 0x473664;

	// CCEaseElasticOut(cocos2d::CCEaseElasticOut const&);
	// CCEaseElasticOut();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialOut {
	static cocos2d::CCEaseExponentialOut* create(cocos2d::CCActionInterval*) = imac 0x51d480, m1 0x472804;

	// CCEaseExponentialOut(cocos2d::CCEaseExponentialOut const&);
	// CCEaseExponentialOut();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseSineIn {
	static cocos2d::CCEaseSineIn* create(cocos2d::CCActionInterval*) = imac 0x51d8a0, m1 0x472c1c;

	// CCEaseSineIn(cocos2d::CCEaseSineIn const&);
	// CCEaseSineIn();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseSineOut {
	static cocos2d::CCEaseSineOut* create(cocos2d::CCActionInterval*) = imac 0x51da90, m1 0x472e04;

	// CCEaseSineOut(cocos2d::CCEaseSineOut const&);
	// CCEaseSineOut();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseSineInOut {
	static cocos2d::CCEaseSineInOut* create(cocos2d::CCActionInterval*) = imac 0x51dc70, m1 0x472fe4;

	// CCEaseSineInOut(cocos2d::CCEaseSineInOut const&);
	// CCEaseSineInOut();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCMotionStreak {
	static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::_ccColor3B const&, cocos2d::CCTexture2D*) = imac 0x57d6b0, m1 0x4c9b74;
	static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::_ccColor3B const&, char const*) = imac 0x57d500, m1 0x4c99e4;

	bool initWithFade(float, float, float, cocos2d::_ccColor3B const&, cocos2d::CCTexture2D*) = imac 0x57d7e0, m1 0x4c9c7c;
	bool initWithFade(float, float, float, cocos2d::_ccColor3B const&, char const*) = imac 0x57d640, m1 0x4c9afc;

	bool getDontOpacityFade() const;
	float getM_fMaxSeg() const;

	void setDontOpacityFade(bool);
	void setFastMode(bool);
	void setM_fMaxSeg(float);
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
	void reset() = imac 0x57e280, m1 0x4ca540;
	void resumeStroke() = imac 0x57dc40, m1 0x4ca00c;
	void stopStroke();
	void tintWithColor(cocos2d::_ccColor3B);
	void updateFade(float);

	~CCMotionStreak() = imac 0x57d3e0, m1 0x4c9930;

	virtual void update(float) = imac 0x57dc50, m1 0x4ca018;
	virtual void setPosition(cocos2d::CCPoint const&) = imac 0x57d9b0, m1 0x4c9e20;
	virtual void draw() = imac 0x57e2a0, m1 0x4ca54c;

	virtual unsigned char getOpacity() = imac 0x57db60, m1 0x4c9f80;
	virtual void setOpacity(unsigned char) = imac 0x57db40, m1 0x4c9f78;
	virtual void setOpacityModifyRGB(bool) = imac 0x57db80, m1 0x4c9f90;
	virtual bool isOpacityModifyRGB() = imac 0x57dba0, m1 0x4c9f98;

	virtual void setBlendFunc(cocos2d::_ccBlendFunc) = imac 0x57db00, m1 0x4c9f58;
	virtual cocos2d::_ccBlendFunc getBlendFunc() = imac 0x57db20, m1 0x4c9f68;
	virtual cocos2d::CCTexture2D* getTexture() = imac 0x57da50, m1 0x4c9eb8;
	virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x57da70, m1 0x4c9ec8;
}

[[link(win, android)]]
class cocos2d::CCMoveBy {
	static cocos2d::CCMoveBy* create(float, cocos2d::CCPoint const&) = m1 0x33f6c0, imac 0x3bb420;

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
	static cocos2d::CCMoveTo* create(float, cocos2d::CCPoint const&) = m1 0x33fa54, imac 0x3bb800, ios 0x1975a4;

	bool initWithDuration(float, cocos2d::CCPoint const&);

	// CCMoveTo(cocos2d::CCMoveTo const&);
	// CCMoveTo();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCScaleBy {
	static cocos2d::CCScaleBy* create(float, float) = imac 0x3bd6d0, m1 0x341544;
	static cocos2d::CCScaleBy* create(float, float, float);

	// CCScaleBy(cocos2d::CCScaleBy const&);
	// CCScaleBy();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCScaleTo {
	static cocos2d::CCScaleTo* create(float, float) = m1 0x3411e8, imac 0x3bd2f0, ios 0x197f20;
	static cocos2d::CCScaleTo* create(float, float, float) = m1 0x3412ac, imac 0x3bd3f0;

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
	static cocos2d::CCTintTo* create(float, unsigned char, unsigned char, unsigned char) = imac 0x3be5f0, m1 0x3422e0;

	bool initWithDuration(float, unsigned char, unsigned char, unsigned char);

	// CCTintTo(cocos2d::CCTintTo const&);
	// CCTintTo();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCScene {
	static cocos2d::CCScene* create() = imac 0x28cbf0, m1 0x230538, ios 0x250994;

	int getHighestChildZ() = imac 0x28cca0, m1 0x230610, ios 0x250a08;

	// CCScene(cocos2d::CCScene const&);
	// CCScene() = ios 0x2508a4;
	~CCScene() = imac 0x28cb70, m1 0x2149c0, ios 0x24b484;

	virtual bool init() = imac 0x28cba0, m1 0x2304e0;
}

[[link(win, android)]]
class cocos2d::CCSet {
	static cocos2d::CCSet* create();

	// CCSet(cocos2d::CCSet const&);
	// CCSet();
	void addObject(cocos2d::CCObject*);
	cocos2d::CCObject* anyObject() = m1 0x6c5cec, imac 0x7bfee0;
	cocos2d::CCSetIterator begin();
	bool containsObject(cocos2d::CCObject*);
	cocos2d::CCSet* copy();
	int count() = m1 0x6c5ae4, imac 0x7bfd00;
	cocos2d::CCSetIterator end();
	cocos2d::CCSet* mutableCopy();
	void removeAllObjects();
	void removeObject(cocos2d::CCObject*);

	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
}

[[link(win, android)]]
class cocos2d::CCShaderCache {
	static void purgeSharedShaderCache();
	static cocos2d::CCShaderCache* sharedShaderCache() = imac 0x1fc770, m1 0x1aef0c;

	bool init();

	// CCShaderCache(cocos2d::CCShaderCache const&);
	// CCShaderCache();
	void addProgram(cocos2d::CCGLProgram*, char const*) = m1 0x1aff3c;
	void loadDefaultShader(cocos2d::CCGLProgram*, int);
	void loadDefaultShaders();
	cocos2d::CCGLProgram* programForKey(char const*) = imac 0x1fd650, m1 0x1afe58;
	void reloadDefaultShaders();
}

[[link(win, android)]]
class cocos2d::CCParticleSystem {
	static cocos2d::CCParticleSystem* create(char const*) = imac 0x7d3960, m1 0x6d8070;
	static cocos2d::CCParticleSystem* createWithTotalParticles(unsigned int);

	void initParticle(cocos2d::sCCParticle*) = m1 0x6d9fbc, imac 0x7d5a60;
	bool initWithDictionary(cocos2d::CCDictionary*, char const*, bool) = imac 0x7d3ca0, m1 0x6d83ec;
	bool initWithDictionary(cocos2d::CCDictionary*, bool) = imac 0x7d55d0, m1 0x6d9bf8;
	bool initWithFile(char const*, bool) = imac 0x7d39c0, m1 0x6d80f4;

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
	~CCParticleSystem() = imac 0x7d5860, m1 0x6d9dec;
	bool addParticle();
	void calculateWorldSpace();
	bool isFull();
	void loadDefaults();
	void loadScaledDefaults(float);
	void resetSystem() = m1 0x6dac50, imac 0x7d6b20;
	void resumeSystem() = m1 0x6dac44, imac 0x7d6b10;
	void saveDefaults();
	void stopSystem() = m1 0x6dac30, imac 0x7d6ae0;
	void toggleUniformColorMode(bool);
	void updateVisible();

	virtual void update(float) = m1 0x6dad94, imac 0x7d6cd0;
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
	static cocos2d::CCParticleSystemQuad* create(char const*, bool) = imac 0x60dce0, m1 0x532fec;
	static cocos2d::CCParticleSystemQuad* create() = imac 0x60f030, m1 0x533d8c;
	static cocos2d::CCParticleSystemQuad* createWithTotalParticles(unsigned int, bool);

	void initIndices();
	void initTexCoordsWithRect(cocos2d::CCRect const&);

	unsigned char getOpacity();

	void setDisplayFrame(cocos2d::CCSpriteFrame*);
	void setOpacity(unsigned char);
	void setTextureWithRect(cocos2d::CCTexture2D*, cocos2d::CCRect const&);

	// CCParticleSystemQuad(cocos2d::CCParticleSystemQuad const&);
	// CCParticleSystemQuad();
	~CCParticleSystemQuad() = imac 0x60dc00, m1 0x532f54;
	bool allocMemory();
	void listenBackToForeground(cocos2d::CCObject*);
	void setupVBO();
	void updateTexCoords();

	virtual void draw();
	virtual void setBatchNode(cocos2d::CCParticleBatchNode*);
	virtual void setTotalParticles(unsigned int);
	virtual bool initWithTotalParticles(unsigned int, bool);
	virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&);
	virtual void postStep();

	virtual void setTexture(cocos2d::CCTexture2D*);
}

[[link(win, android)]]
class cocos2d::CCProgressTimer {
	static cocos2d::CCProgressTimer* create(cocos2d::CCSprite*) = imac 0x60f290, m1 0x533fc4;

	bool initWithSprite(cocos2d::CCSprite*);

	cocos2d::CCPoint getBarChangeRate() const;
	float getPercentage();
	cocos2d::CCSprite* getSprite();
	cocos2d::CCProgressTimerType getType();

	void setAnchorPoint(cocos2d::CCPoint);
	void setBarChangeRate(cocos2d::CCPoint);
	void setPercentage(float);
	void setReverseDirection(bool);
	void setReverseProgress(bool);
	void setSprite(cocos2d::CCSprite*);
	void setType(cocos2d::CCProgressTimerType);

	// CCProgressTimer(cocos2d::CCProgressTimer const&);
	// CCProgressTimer();

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
    static cocos2d::CCFadeIn* create(float) = imac 0x3bde30, m1 0x341bc8;

    // CCFadeIn(cocos2d::CCFadeIn const&);
    // CCFadeIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3bded0, m1 0x341c54;
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3be270, m1 0x341fcc;
}

[[link(win, android)]]
class cocos2d::CCFadeOut {
	static cocos2d::CCFadeOut* create(float) = m1 0x341e0c, imac 0x3be0a0;

	// CCFadeOut(cocos2d::CCFadeOut const&);
	// CCFadeOut();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCFadeTo {
	static cocos2d::CCFadeTo* create(float, unsigned char) = imac 0x3be320, m1 0x342058, ios 0x19881c;

	bool initWithDuration(float, unsigned char);

	// CCFadeTo(cocos2d::CCFadeTo const&);
	// CCFadeTo();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCFileUtils {
	// CCFileUtils();
	// CCFileUtils(cocos2d::CCFileUtils const&);
	virtual void addSearchPath(char const*);
	virtual void addSearchResolutionsOrder(char const*);
	virtual gd::string addSuffix(gd::string, gd::string);
	virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(gd::string const&);
	virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(gd::string const&);
	virtual gd::string fullPathForFilename(char const*, bool) = imac 0x4445e0, m1 0x3b606c;
	virtual char const* fullPathFromRelativeFile(char const*, char const*);
	gd::string getAndroidPath() const;
	virtual unsigned char* getFileData(char const*, char const*, unsigned long*) = imac 0x443aa0, m1 0x3b5588;
	virtual unsigned char* getFileDataFromZip(char const*, char const*, unsigned long*);
	virtual gd::string getFullPathForDirectoryAndFilename(gd::string const&, gd::string const&);
	virtual gd::string getNewFilename(char const*);
	virtual gd::string getPathForFilename(gd::string const&, gd::string const&, gd::string const&);
	virtual gd::vector<gd::string> const& getSearchPaths();
	virtual gd::vector<gd::string> const& getSearchResolutionsOrder();
	virtual gd::string getWritablePath2();
	virtual bool init();
	virtual bool isAbsolutePath(gd::string const&);
	virtual bool isPopupNotify();
	virtual void loadFilenameLookupDictionaryFromFile(char const*);
	virtual void purgeCachedEntries();
	static void purgeFileUtils() = ios 0x15bf74;
	void removeAllPaths();
	virtual void removeFullPath(char const*);
	virtual void removeSearchPath(char const*);
	void setAndroidPath(gd::string);
	virtual void setFilenameLookupDictionary(cocos2d::CCDictionary*);
	virtual void setPopupNotify(bool);
	virtual void setSearchPaths(gd::vector<gd::string> const&);
	virtual void setSearchResolutionsOrder(gd::vector<gd::string> const&);
	static cocos2d::CCFileUtils* sharedFileUtils() = imac 0x616a20, m1 0x53a6d0, ios 0x246868;
	virtual bool shouldUseHD();
	virtual bool writeToFile(cocos2d::CCDictionary*, gd::string const&);
}

[[link(win, android)]]
class cocos2d::CCGLProgram {
	bool initWithVertexShaderByteArray(char const*, char const*);
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
	void setUniformsForBuiltins() = m1 0x3a8704, imac 0x435940, ios 0x13c230;

	// CCGLProgram(cocos2d::CCGLProgram const&);
	// CCGLProgram();
	void addAttribute(char const*, unsigned int);
	bool compileShader(unsigned int*, unsigned int, char const*);
	char const* description();
	char const* fragmentShaderLog();
	bool link();
	// char const* logForOpenGLObject(unsigned int, void (__cdecl*)(unsigned int, unsigned int, int*), void (__cdecl*)(unsigned int, int, int*, char*));
	char const* programLog();
	void reset() = m1 0x3a89bc;
	bool updateUniformLocation(int, void*, unsigned int);
	void updateUniforms();
	void use() = m1 0x3a758c, imac 0x434970, ios 0x13b990;
	char const* vertexShaderLog();
}

[[link(win, android)]]
class cocos2d::CCNode {
	static cocos2d::CCNode* create() = imac 0x26ee60, m1 0x215170, ios 0x24bbfc;
	static void resetGlobalOrderOfArrival();

	// CCNode(cocos2d::CCNode const&);
	CCNode() = imac 0x26e330, m1 0x214860, ios 0x24b328;
	~CCNode() = imac 0x26e640, m1 0x2149c0, ios 0x24b484;

	cocos2d::CCAction* getActionByTag(int) = m1 0x216454, imac 0x270140;
	cocos2d::CCComponent* getComponent(char const*) const;
	int getScriptHandler();
	cocos2d::CCAffineTransform getTransformTemp();
	bool getUseChildIndex();

	void setAdditionalTransform(cocos2d::CCAffineTransform const&);
	void setUseChildIndex(bool);

	cocos2d::CCRect boundingBox() = imac 0x26edf0, m1 0x215110, ios 0x24bb9c;
	void childrenAlloc();
	cocos2d::CCPoint convertToNodeSpace(cocos2d::CCPoint const&) = imac 0x270db0, m1 0x216f4c, ios 0x24d424;
	cocos2d::CCPoint convertToNodeSpaceAR(cocos2d::CCPoint const&);
	cocos2d::CCPoint convertToWindowSpace(cocos2d::CCPoint const&);
	cocos2d::CCPoint convertToWorldSpace(cocos2d::CCPoint const&) = imac 0x270df0, m1 0x216f94, ios 0x24d46c;
	cocos2d::CCPoint convertToWorldSpaceAR(cocos2d::CCPoint const&);
	cocos2d::CCPoint convertTouchToNodeSpace(cocos2d::CCTouch*) = m1 0x2170f8;
	cocos2d::CCPoint convertTouchToNodeSpaceAR(cocos2d::CCTouch*);
	char const* description();
	void detachChild(cocos2d::CCNode*, bool);
	void insertChild(cocos2d::CCNode*, int);
	unsigned int numberOfRunningActions();
	void pauseSchedulerAndActions();
	void qsortAllChildrenWithIndex() = m1 0x215ce4;
	void resumeSchedulerAndActions() = ios 0x24c6fc, imac 0x26fd80, m1 0x2160c4;
	cocos2d::CCAction* runAction(cocos2d::CCAction*) = imac 0x2700d0, m1 0x216408, ios 0x24ca08;
	void schedule(cocos2d::SEL_SCHEDULE) = imac 0x270300, m1 0x2165bc, ios 0x24cb34;
	void schedule(cocos2d::SEL_SCHEDULE, float) = imac 0x270360, m1 0x2165fc, ios 0x24cb58;
	void schedule(cocos2d::SEL_SCHEDULE, float, unsigned int, float);
	void scheduleOnce(cocos2d::SEL_SCHEDULE, float) = imac 0x270390, m1 0x21661c;
	void scheduleUpdate() = imac 0x2701e0, m1 0x2164c4, ios 0x24cab0;
	void scheduleUpdateWithPriority(int);
	void scheduleUpdateWithPriorityLua(int, int);
	void sortAllChildrenNoIndex();
	void sortAllChildrenWithIndex();
	void stopAction(cocos2d::CCAction*) = imac 0x270100, m1 0x216440;
	void stopActionByTag(int) = imac 0x270120, m1 0x216448, ios 0x24ca40;
	void stopAllActions() = imac 0x26ef50, m1 0x215290, ios 0x24bd0c;
	void transform();
	void transformAncestors();
	void unschedule(cocos2d::SEL_SCHEDULE) = imac 0x2703c0, m1 0x216640;
	void unscheduleAllSelectors() = imac 0x26ef70, m1 0x21529c;
	void unscheduleUpdate() = imac 0x2702b0, m1 0x216570;
	void updateChildIndexes();

	virtual void update(float) = m1 0x21666c, imac 0x2703e0, ios 0x24cba4;
	virtual bool init() = m1 0x214b18, imac 0x26e670, ios 0x24b5bc;
	virtual void setZOrder(int) = m1 0x214b68, imac 0x26e700, ios 0x24b60c;
	virtual void _setZOrder(int) = m1 0x214b60, imac 0x26e6f0, ios 0x24b604;
	virtual int getZOrder() = m1 0x214b58, imac 0x26e6e0, ios 0x24b5fc;
	virtual void setVertexZ(float) = m1 0x214bc0, imac 0x26e750;
	virtual float getVertexZ() = m1 0x214bb8, imac 0x26e740, ios 0x24b65c;
	virtual void setScaleX(float) = m1 0x214c78, imac 0x26e870, ios 0x24b714;
	virtual float getScaleX() = m1 0x214c70, imac 0x26e860, ios 0x24b70c;
	virtual void setScaleY(float) = m1 0x214c94, imac 0x26e8a0, ios 0x24b730;
	virtual float getScaleY() = m1 0x214c8c, imac 0x26e890, ios 0x24b728;
	virtual void setScale(float) = m1 0x214c40, imac 0x26e820, ios 0x24b6e4;
	virtual float getScale() = m1 0x214c38, imac 0x26e810, ios 0x24b6dc;
	virtual void setScale(float, float) = m1 0x214c58, imac 0x26e840, ios 0x24b6f8;
	virtual void setPosition(cocos2d::CCPoint const&) = m1 0x214cb0, imac 0x26e8d0, ios 0x24b74c;
	virtual cocos2d::CCPoint const& getPosition() = m1 0x214ca8, imac 0x26e8c0, ios 0x24b744;
	virtual void setPosition(float, float) = m1 0x214cdc, imac 0x26e910, ios 0x24b778;
	virtual void getPosition(float*, float*) = m1 0x214cc8, imac 0x26e8f0, ios 0x24b764;
	virtual void setPositionX(float) = m1 0x214d2c, imac 0x26e970, ios 0x24b7c8;
	virtual float getPositionX() = m1 0x214d1c, imac 0x26e950, ios 0x24b7b8;
	virtual void setPositionY(float) = m1 0x214d70, imac 0x26e9b0, ios 0x24b80c;
	virtual float getPositionY() = m1 0x214d24, imac 0x26e960, ios 0x24b7c0;
	virtual void setSkewX(float) = m1 0x214b28, imac 0x26e690, ios 0x24b5cc;
	virtual float getSkewX() = m1 0x214b20, imac 0x26e680, ios 0x24b5c4;
	virtual void setSkewY(float) = m1 0x214b44, imac 0x26e6c0, ios 0x24b5e8;
	virtual float getSkewY() = m1 0x214b3c, imac 0x26e6b0, ios 0x24b5e0;
	virtual void setAnchorPoint(cocos2d::CCPoint const&) = m1 0x214ed8, imac 0x26eb40, ios 0x24b964;
	virtual cocos2d::CCPoint const& getAnchorPoint() = m1 0x214ed0, imac 0x26eb30, ios 0x24b95c;
	virtual cocos2d::CCPoint const& getAnchorPointInPoints() = m1 0x214ec8, imac 0x26eb20, ios 0x24b954;
	virtual void setContentSize(cocos2d::CCSize const&) = m1 0x214f98, imac 0x26ec00, ios 0x24ba24;
	virtual cocos2d::CCSize const& getContentSize() const = imac 0x26ebc0, m1 0x214f58, ios 0x24b9e4;
	virtual cocos2d::CCSize getScaledContentSize() = m1 0x214f60, imac 0x26ebd0, ios 0x24b9ec;
	virtual void setVisible(bool) = m1 0x214ec0, imac 0x26eb10, ios 0x24b94c;
	virtual bool isVisible() = m1 0x214eb8, imac 0x26eb00, ios 0x24b944;
	virtual void setRotation(float) = m1 0x214bd0, imac 0x26e770, ios 0x24b674;
	virtual float getRotation() = m1 0x214bc8, imac 0x26e760, ios 0x24b66c;
	virtual void setRotationX(float) = m1 0x214c08, imac 0x26e7c0, ios 0x24b6ac;
	virtual float getRotationX() = m1 0x214c00, imac 0x26e7b0, ios 0x24b6a4;
	virtual void setRotationY(float) = m1 0x214c24, imac 0x26e7f0, ios 0x24b6c8;
	virtual float getRotationY() = m1 0x214c1c, imac 0x26e7e0, ios 0x24b6c0;
	virtual void setOrderOfArrival(unsigned int) = m1 0x215070, imac 0x26ed20, ios 0x24bafc;
	virtual unsigned int getOrderOfArrival() = m1 0x215068, imac 0x26ed10, ios 0x24baf4;
	virtual void setGLServerState(cocos2d::ccGLServerState) = m1 0x215090, imac 0x26ed60, ios 0x24bb1c;
	virtual cocos2d::ccGLServerState getGLServerState() = m1 0x215088, imac 0x26ed50, ios 0x24bb14;
	virtual void ignoreAnchorPointForPosition(bool) = m1 0x215038, imac 0x26ecc0, ios 0x24bac4;
	virtual bool isIgnoreAnchorPointForPosition() = m1 0x215030, imac 0x26ecb0, ios 0x24babc;
	virtual void addChild(cocos2d::CCNode*) = m1 0x21551c, imac 0x26f1b0, ios 0x24bed8;
	virtual void addChild(cocos2d::CCNode*, int) = m1 0x21550c, imac 0x26f190, ios 0x24bec8;
	virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x215390, imac 0x26f060, ios 0x24bda8;
	virtual cocos2d::CCNode* getChildByTag(int) = m1 0x2152fc, imac 0x26efe0, ios 0x24bd24;
	virtual cocos2d::CCArray* getChildren() = m1 0x214db8, imac 0x26e9f0, ios 0x24b854;
	virtual unsigned int getChildrenCount() const = imac 0x26ea40, m1 0x214e04, ios 0x24b8a0;
	virtual void setParent(cocos2d::CCNode*) = m1 0x215028, imac 0x26eca0, ios 0x24bab4;
	virtual cocos2d::CCNode* getParent() = m1 0x215020, imac 0x26ec90, ios 0x24baac;
	virtual void removeFromParent() = m1 0x215530, imac 0x26f1d0, ios 0x24beec;
	virtual void removeFromParentAndCleanup(bool) = m1 0x215540, imac 0x26f1f0, ios 0x24befc;
	virtual void removeMeAndCleanup() = m1 0x215560, imac 0x26f220, ios 0x24bf1c;
	virtual void removeChild(cocos2d::CCNode*) = m1 0x215570, imac 0x26f240, ios 0x24bf2c;
	virtual void removeChild(cocos2d::CCNode*, bool) = m1 0x215580, imac 0x26f260, ios 0x24bf3c;
	virtual void removeChildByTag(int) = m1 0x2156e8, imac 0x26f3b0, ios 0x24bff4;
	virtual void removeChildByTag(int, bool) = m1 0x2156f8, imac 0x26f3d0, ios 0x24c004;
	virtual void removeAllChildren() = m1 0x215748, imac 0x26f410, ios 0x24c054;
	virtual void removeAllChildrenWithCleanup(bool) = m1 0x215758, imac 0x26f430, ios 0x24c064;
	virtual void reorderChild(cocos2d::CCNode*, int) = m1 0x21588c, imac 0x26f550, ios 0x24c148;
	virtual void sortAllChildren() = m1 0x2159a4, imac 0x26f690, ios 0x24c210;
	virtual cocos2d::CCGridBase* getGrid() = m1 0x214e74, imac 0x26eab0, ios 0x24b900;
	virtual void setGrid(cocos2d::CCGridBase*) = m1 0x214e7c, imac 0x26eac0, ios 0x24b908;
	virtual void* getUserData() = m1 0x215058, imac 0x26ecf0, ios 0x24bae4;
	virtual void setUserData(void*) = m1 0x215060, imac 0x26ed00, ios 0x24baec;
	virtual cocos2d::CCObject* getUserObject() = m1 0x215080, imac 0x26ed40, ios 0x24bb0c;
	virtual void setUserObject(cocos2d::CCObject*) = m1 0x215098, imac 0x26ed70, ios 0x24bb24;
	virtual cocos2d::CCGLProgram* getShaderProgram() = m1 0x215078, imac 0x26ed30, ios 0x24bb04;
	virtual void setShaderProgram(cocos2d::CCGLProgram*) = m1 0x2150d4, imac 0x26edb0, ios 0x24bb60;
	virtual cocos2d::CCCamera* getCamera() = m1 0x214e14, imac 0x26ea60, ios 0x24b8b0;
	virtual bool isRunning() = m1 0x215018, imac 0x26ec80, ios 0x24baa4;
	virtual void registerScriptHandler(int) = m1 0x216340, imac 0x270000, ios 0x24c940;
	virtual void unregisterScriptHandler() = m1 0x216370, imac 0x270030, ios 0x24c970;
	virtual void onEnter() = m1 0x215fd8, imac 0x26fca0, ios 0x1538f0;
	virtual void onEnterTransitionDidFinish() = m1 0x216108, imac 0x26fdc0, ios 0x153a84;
	virtual void onExit() = m1 0x21622c, imac 0x26fee0, ios 0x1539bc;
	virtual void onExitTransitionDidStart() = m1 0x216190, imac 0x26fe40, ios 0x24c7c4;
	virtual void cleanup() = m1 0x2151f0, imac 0x26eec0, ios 0x24bc70;
	virtual void draw() = m1 0x215d9c, imac 0x26fa60, ios 0x113080;
	virtual void visit() = m1 0x215da0, imac 0x26fa70, ios 0x24c424;
	virtual void setActionManager(cocos2d::CCActionManager*) = m1 0x2163b0, imac 0x270070, ios 0x24c9b0;
	virtual cocos2d::CCActionManager* getActionManager() = m1 0x216400, imac 0x2700c0, ios 0x24ca00;
	virtual void setScheduler(cocos2d::CCScheduler*) = m1 0x21646c, imac 0x270180, ios 0x24ca58;
	virtual cocos2d::CCScheduler* getScheduler() = m1 0x2164bc, imac 0x2701d0, ios 0x24caa8;
	virtual void updateTransform() = m1 0x2171cc, imac 0x271040, ios 0x24d514;
	virtual cocos2d::CCAffineTransform const nodeToParentTransform() = m1 0x2166ec, imac 0x270450, ios 0x24cc24;
	virtual cocos2d::CCAffineTransform const nodeToParentTransformFast() = m1 0x2169bc, imac 0x270760, ios 0x24cec8;
	virtual cocos2d::CCAffineTransform const parentToNodeTransform() = m1 0x216d80, imac 0x270bd0, ios 0x24d258;
	virtual cocos2d::CCAffineTransform nodeToWorldTransform() = m1 0x216df4, imac 0x270c50, ios 0x24d2cc;
	virtual cocos2d::CCAffineTransform nodeToWorldTransformFast() = m1 0x216e80, imac 0x270ce0, ios 0x24d358;
	virtual cocos2d::CCAffineTransform worldToNodeTransform() = m1 0x216f0c, imac 0x270d70, ios 0x24d3e4;
	virtual bool addComponent(cocos2d::CCComponent*) = m1 0x21723c, imac 0x2710b0, ios 0x24d570;
	virtual bool removeComponent(char const*) = m1 0x21724c, imac 0x2710d0, ios 0x24d580;
	virtual bool removeComponent(cocos2d::CCComponent*) = m1 0x21725c, imac 0x2710f0, ios 0x24d590;
	virtual void removeAllComponents() = m1 0x21726c, imac 0x271110, ios 0x24d5a0;
	virtual void updateTweenAction(float, char const*) = m1 0x2171c4, imac 0x271020, ios 0x24d50c;
	virtual void updateTweenActionInt(float, int) = m1 0x2171c8, imac 0x271030, ios 0x24d510;
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
	void pauseTarget(cocos2d::CCObject*) = imac 0x44cc60;
	void priorityIn(cocos2d::_listEntry**, cocos2d::CCObject*, int, bool);
	void removeHashElement(cocos2d::_hashSelectorEntry*);
	void removeUpdateFromHash(cocos2d::_listEntry*);
	void resumeTarget(cocos2d::CCObject*);
	void resumeTargets(cocos2d::CCSet*);
	unsigned int scheduleScriptFunc(unsigned int, float, bool);
	void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, unsigned int, float, bool) = imac 0x44b680, m1 0x3bcbb4;
	void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, bool) = imac 0x44b660, m1 0x3bcba4;
	void scheduleUpdateForTarget(cocos2d::CCObject*, int, bool) = imac 0x44c260;
	void unscheduleAll();
	void unscheduleAllForTarget(cocos2d::CCObject*);
	void unscheduleAllWithMinPriority(int);
	void unscheduleScriptEntry(unsigned int);
	void unscheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*) = imac 0x44b190, m1 0x3bc6c0;
	void unscheduleUpdateForTarget(cocos2d::CCObject const*);

	virtual void update(float) = imac 0x44d2a0, m1 0x3be890;
}

[[link(win, android)]]
class cocos2d::CCLayer {
	static cocos2d::CCLayer* create() = imac 0x4ba620, m1 0x41b6cc, ios 0x153260;

	// CCLayer(cocos2d::CCLayer const&);
	CCLayer() = imac 0x4ba060, m1 0x41b2b0, ios 0x1530a0;
  ~CCLayer() = imac 0x4ba350, m1 0x41b4e0, ios 0x15314c; // this is ~CCLayerColor :ned:

	cocos2d::CCScriptHandlerEntry* getScriptAccelerateHandlerEntry();
	cocos2d::CCScriptHandlerEntry* getScriptKeypadHandlerEntry();
	cocos2d::CCTouchScriptHandlerEntry* getScriptTouchHandlerEntry();

	int excuteScriptTouchHandler(int, cocos2d::CCSet*);
	int excuteScriptTouchHandler(int, cocos2d::CCTouch*);
	void registerScriptAccelerateHandler(int);
	void registerScriptKeypadHandler(int);
	void unregisterScriptAccelerateHandler();
	void unregisterScriptKeypadHandler();

	virtual bool init() = m1 0x41b670, imac 0x4ba5c0, ios 0x153204;
	virtual void onEnter() = m1 0x41bf40, imac 0x4baeb0;
	virtual void onEnterTransitionDidFinish() = m1 0x41c0c4, imac 0x4bb040;
	virtual void onExit() = m1 0x41c004, imac 0x4baf70;
	virtual void registerWithTouchDispatcher() = m1 0x41b7d4, imac 0x4ba740;
	virtual void registerScriptTouchHandler(int, bool, int, bool) = m1 0x41b848, imac 0x4ba7c0, ios 0x153340;
	virtual void unregisterScriptTouchHandler() = m1 0x41b8a8, imac 0x4ba820, ios 0x1533a0;
	virtual bool isTouchEnabled() = m1 0x41b964, imac 0x4ba8d0, ios 0x1533cc;
	virtual void setTouchEnabled(bool) = m1 0x41b96c, imac 0x4ba8e0, ios 0x1533d4;
	virtual void setTouchMode(cocos2d::ccTouchesMode) = m1 0x41b9dc, imac 0x4ba950, ios 0x153444;
	virtual int getTouchMode() = m1 0x41baac, imac 0x4baa00, ios 0x153514;
	virtual void setTouchPriority(int) = m1 0x41ba40, imac 0x4ba9a0, ios 0x1534a8;
	virtual int getTouchPriority() = m1 0x41baa4, imac 0x4ba9f0, ios 0x15350c;
	virtual bool isAccelerometerEnabled() = m1 0x41bab4, imac 0x4baa10, ios 0x15351c;
	virtual void setAccelerometerEnabled(bool) = m1 0x41babc, imac 0x4baa20, ios 0x153524;
	virtual void setAccelerometerInterval(double) = m1 0x41baf8, imac 0x4baa60, ios 0x153588;
	virtual bool isKeypadEnabled() = m1 0x41bc00, imac 0x4bab60, ios 0x15366c;
	virtual void setKeypadEnabled(bool) = m1 0x41bc08, imac 0x4bab70, ios 0x153674;
	virtual bool isKeyboardEnabled() = m1 0x41bc7c, imac 0x4babe0, ios 0x1536e8;
	virtual void setKeyboardEnabled(bool) = m1 0x41bc84, imac 0x4babf0, ios 0x1536f0;
	virtual bool isMouseEnabled() = m1 0x41bcec, imac 0x4bac50, ios 0x153758;
	virtual void setMouseEnabled(bool) = m1 0x41bcf4, imac 0x4bac60, ios 0x153760;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x41c0fc, imac 0x4bb080;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x41c1bc, imac 0x4bb110;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x41c25c, imac 0x4bb190;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x41c2fc, imac 0x4bb210;
	virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x41c39c, imac 0x4bb290, ios 0x153d54;
	virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x41c43c, imac 0x4bb310, ios 0x153df4;
	virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x41c4dc, imac 0x4bb390, ios 0x153e94;
	virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x41c57c, imac 0x4bb410, ios 0x153f34;
	virtual void setPreviousPriority(int) = m1 0x9a6c, imac 0x6ef0, ios 0xa7a0;
	virtual int getPreviousPriority() = m1 0x9a74, imac 0x6f00, ios 0xa7a8;

	virtual void didAccelerate(cocos2d::CCAcceleration*) = m1 0x41bb2c, imac 0x4baa90, ios 0x1535d4;

	virtual void keyBackClicked() = m1 0x41bd98, imac 0x4bad10, ios 0x1537c8;
	virtual void keyMenuClicked() = m1 0x41be40, imac 0x4badb0, ios 0x153824;

	virtual void keyDown(cocos2d::enumKeyCodes) = m1 0x41bed0, imac 0x4bae30;
}

[[link(win, android)]]
class cocos2d::CCLayerGradient {
	static cocos2d::CCLayerGradient* create(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&) = m1 0x41dfd0, imac 0x4bd4b0, ios 0x154A80;
	static cocos2d::CCLayerGradient* create(cocos2d::_ccColor4B const& a1, cocos2d::_ccColor4B const& a2, cocos2d::CCPoint const& a3) = imac 0x4bd760, m1 0x41e1ec, ios inline {
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

	virtual bool init() = imac 0x4bd860;

	virtual void updateColor() = imac 0x4bd9a0;
	virtual bool initWithColor(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&) = imac 0x4bd890;
	virtual bool initWithColor(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&, cocos2d::CCPoint const&) = imac 0x4bd8f0;
	virtual cocos2d::_ccColor3B const& getStartColor() = imac 0x4bdb90;
	virtual void setStartColor(cocos2d::_ccColor3B const&) = imac 0x4bdba0;
	virtual cocos2d::_ccColor3B const& getEndColor() = imac 0x4bdbf0;
	virtual void setEndColor(cocos2d::_ccColor3B const&) = imac 0x4bdbc0;
	virtual unsigned char getStartOpacity() = imac 0x4bdc20;
	virtual void setStartOpacity(unsigned char) = imac 0x4bdc00;
	virtual unsigned char getEndOpacity() = imac 0x4bdc50;
	virtual void setEndOpacity(unsigned char) = imac 0x4bdc30;
	virtual cocos2d::CCPoint const& getVector() = imac 0x4bdc90;
	// ios unverified
	virtual void setVector(cocos2d::CCPoint const&) = imac 0x4bdc60, ios 0x154EFC;
	virtual void setCompressedInterpolation(bool) = imac 0x4bdd30;
	virtual bool isCompressedInterpolation() = imac 0x4bdd20;
}

[[link(win, android)]]
class cocos2d::CCObject {
	static cocos2d::CCObject* createWithCoder(DS_Dictionary*);

	// CCObject(cocos2d::CCObject const&);
	CCObject() = imac 0x493bf0, m1 0x3f89d0, ios 0x88324;
	~CCObject() = imac 0x493d00, m1 0x3f8aa8, ios 0x8836c;

	cocos2d::CCObjectType getObjType() const;

	void setObjType(cocos2d::CCObjectType);

	cocos2d::CCObject* autorelease() = imac 0x493e30, m1 0x3f8c0c, ios 0x88458;
	cocos2d::CCObject* copy();
	bool isSingleReference() const;
	void release() = imac 0x493e00, m1 0x3f8bd8, ios 0x88424;
	void retain() = imac 0x493e20, m1 0x3f8bfc, ios 0x88448;
	unsigned int retainCount() const;

	virtual int getTag() const = imac 0x493eb0, m1 0x3f8c74, ios 0x884a8;
	virtual bool isEqual(cocos2d::CCObject const*) = m1 0x3f8c50, imac 0x493e80, ios 0x88484;
	virtual void acceptVisitor(cocos2d::CCDataVisitor&) = m1 0x3f8c5c, imac 0x493e90, ios 0x88490;
	virtual void encodeWithCoder(DS_Dictionary*) = m1 0x3f8c84, imac 0x493ed0, ios 0x884b8;
	virtual bool canEncode() = m1 0x3f8c90, imac 0x493ef0, ios 0x884c4;
	virtual void setTag(int) = m1 0x3f8c7c, imac 0x493ec0, ios 0x884b0;
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
	static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&) = imac 0x4bcc40, m1 0x41d7ac, ios 0x15461c;
	static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&, float, float) = imac 0x4bca80, m1 0x41d638, ios 0x154540;
	static cocos2d::CCLayerColor* create();

	// CCLayerColor(cocos2d::CCLayerColor const&);
	CCLayerColor() = imac 0x4bc3c0, m1 0x41d19c, ios 0x6bfd4;
	~CCLayerColor() = imac 0x4bc600, m1 0x41d318, ios 0x15314c;

	void setVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);

	void addToVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);
	void changeHeight(float);
	void changeWidth(float);
	void changeWidthAndHeight(float, float);

	virtual bool init() = m1 0x41d8f0, imac 0x4bce00, ios 0x1546e0;
	virtual void setContentSize(cocos2d::CCSize const&) = m1 0x41dac0, imac 0x4bcff0, ios 0x154890;
	virtual void draw() = m1 0x41dc20, imac 0x4bd130, ios 0x1548fc;
	virtual bool initWithColor(cocos2d::_ccColor4B const&, float, float) = m1 0x41d93c, imac 0x4bce50, ios 0x15472c;
	virtual bool initWithColor(cocos2d::_ccColor4B const&) = m1 0x41da28, imac 0x4bcf40, ios 0x1547f8;
	virtual void updateColor() = m1 0x41dba4, imac 0x4bd0e0, ios 0x1548a8;

	virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x41dcec, imac 0x4bd200;
	virtual void setOpacity(unsigned char) = m1 0x41de98, imac 0x4bd380;

	virtual void setBlendFunc(cocos2d::_ccBlendFunc) = m1 0x41d4b8, imac 0x4bc890, ios 0x154530;
	virtual cocos2d::_ccBlendFunc getBlendFunc() = m1 0x41d4a8, imac 0x4bc870, ios 0x154520;
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA {
	static cocos2d::CCLayerRGBA* create();

	// CCLayerRGBA(cocos2d::CCLayerRGBA const&);
	CCLayerRGBA() = imac 0x4bb5e0, m1 0x41c704, ios 0x154480;
	~CCLayerRGBA() = imac 0x4bb800, m1 0x41c86c, ios 0x15314c;

	virtual bool init() = imac 0x4bba70, m1 0x41c9fc;

	virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x41cc20, imac 0x4bbcb0;
	virtual cocos2d::_ccColor3B const& getColor() = m1 0x41cc00, imac 0x4bbc70;
	virtual cocos2d::_ccColor3B const& getDisplayedColor() = m1 0x41cc10, imac 0x4bbc90;
	virtual unsigned char getDisplayedOpacity() = m1 0x41ca98, imac 0x4bbb10;
	virtual unsigned char getOpacity() = m1 0x41ca88, imac 0x4bbaf0;
	virtual void setOpacity(unsigned char) = m1 0x41caa8, imac 0x4bbb30;
	virtual bool isCascadeColorEnabled() = m1 0x41d080, imac 0x4bc210;
	virtual void setCascadeColorEnabled(bool) = m1 0x41d090, imac 0x4bc230;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = m1 0x41cf4c, imac 0x4bbfb0;
	virtual bool isCascadeOpacityEnabled() = m1 0x41d060, imac 0x4bc1d0;
	virtual void setCascadeOpacityEnabled(bool) = m1 0x41d070, imac 0x4bc1f0;
	virtual void updateDisplayedOpacity(unsigned char) = m1 0x41cdac, imac 0x4bbe20;
}

[[link(win, android)]]
class cocos2d::CCMouseDispatcher {
	// CCMouseDispatcher(cocos2d::CCMouseDispatcher const&);
	// CCMouseDispatcher();
	void addDelegate(cocos2d::CCMouseDelegate*);
	bool dispatchScrollMSG(float, float) = m1 0x4c4a74, imac 0x578540;
	void forceAddDelegate(cocos2d::CCMouseDelegate*);
	void forceRemoveDelegate(cocos2d::CCMouseDelegate*);
	void removeDelegate(cocos2d::CCMouseDelegate*);
}

[[link(win, android)]]
class cocos2d::CCTexture2D {
	static void PVRImagesHavePremultipliedAlpha(bool) = m1 0x3e9984, imac 0x483620;
	static cocos2d::CCTexture2DPixelFormat defaultAlphaPixelFormat() = m1 0x3e9b50, imac 0x4837f0;
	static void setDefaultAlphaPixelFormat(cocos2d::CCTexture2DPixelFormat) = m1 0x3e9b44, imac 0x4837e0, ios 0x134738;

	bool initPremultipliedATextureWithImage(cocos2d::CCImage*, unsigned int, unsigned int) = m1 0x3e8c34, imac 0x4827a0;
	bool initWithData(void const*, cocos2d::CCTexture2DPixelFormat, unsigned int, unsigned int, cocos2d::CCSize const&) = m1 0x3e88a8, imac 0x4823e0;
	bool initWithETCFile(char const*) = m1 0x3e98bc, imac 0x483550;
	bool initWithImage(cocos2d::CCImage*) = m1 0x3e8bc0, imac 0x482740;
	bool initWithPVRFile(char const*) = m1 0x3e97e4, imac 0x483470;
	bool initWithString(char const*, char const*, float) = m1 0x3e9444, imac 0x4830c0;
	bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment) = m1 0x3e94b4, imac 0x483120;
	bool initWithString(char const*, cocos2d::_ccFontDefinition*) = m1 0x3e95e4, imac 0x483260;

	cocos2d::CCSize const& getContentSizeInPixels() = m1 0x3e87f8, imac 0x4822e0;

	void setAliasTexParameters() = m1 0x3e9a80, imac 0x483710;
	void setAntiAliasTexParameters() = m1 0x3e9ad0, imac 0x483760;
	void setTexParameters(cocos2d::_ccTexParams*) = m1 0x3e99e8, imac 0x483680, ios 0x134600;

	// CCTexture2D(cocos2d::CCTexture2D const&);
	~CCTexture2D() = m1 0x3e8734, imac 0x4821e0;
	CCTexture2D() = m1 0x3e8640, imac 0x4820e0;
	unsigned int bitsPerPixelForFormat(cocos2d::CCTexture2DPixelFormat) = m1 0x3e8b58, imac 0x4826e0;
	unsigned int bitsPerPixelForFormat() = m1 0x3e9b5c, imac 0x483800;
	char const* description() = m1 0x3e8b78, imac 0x482700;
	void drawAtPoint(cocos2d::CCPoint const&) = m1 0x3e95ec, imac 0x483270;
	void drawInRect(cocos2d::CCRect const&) = m1 0x3e96f0, imac 0x483380;
	void generateMipmap() = m1 0x3e9990, imac 0x483630;
	bool hasMipmaps() = m1 0x3e99e0, imac 0x483670;
	bool hasPremultipliedAlpha() = m1 0x3e88a0, imac 0x4823d0;
	void* keepData(void*, unsigned int) = m1 0x3e8898, imac 0x4823c0;
	void releaseData(void*) = m1 0x3e8890, imac 0x4823b0;
	void releaseGLTexture() = m1 0x3e8864, imac 0x482380;
	char const* stringForFormat() = m1 0x3e9b20, imac 0x4837b0;

	virtual cocos2d::CCTexture2DPixelFormat getPixelFormat() = m1 0x3e8780, imac 0x482230;
	virtual unsigned int getPixelsWide() = m1 0x3e8788, imac 0x482240;
	virtual unsigned int getPixelsHigh() = m1 0x3e8790, imac 0x482250;
	virtual unsigned int getName() = m1 0x3e8798, imac 0x482260;
	virtual float getMaxS() = m1 0x3e8800, imac 0x4822f0;
	virtual void setMaxS(float) = m1 0x3e8808, imac 0x482300;
	virtual float getMaxT() = m1 0x3e8810, imac 0x482310;
	virtual void setMaxT(float) = m1 0x3e8818, imac 0x482320;
	virtual cocos2d::CCSize getContentSize() = m1 0x3e87a0, imac 0x482270;
	virtual cocos2d::CCGLProgram* getShaderProgram() = m1 0x3e8820, imac 0x482330;
	virtual void setShaderProgram(cocos2d::CCGLProgram*) = m1 0x3e8828, imac 0x482340;
}

[[link(win, android)]]
class cocos2d::CCTextureCache {
	static void purgeSharedTextureCache() = ios 0x114a78;
	static void reloadAllTextures();
	static cocos2d::CCTextureCache* sharedTextureCache() = imac 0x5f61d0, m1 0x51e0e4, ios 0x114948;

	// CCTextureCache(cocos2d::CCTextureCache const&);
	// CCTextureCache();
	cocos2d::CCTexture2D* addETCImage(char const*);
	cocos2d::CCTexture2D* addImage(char const*, bool) = imac 0x5f7450, m1 0x51f2d0, ios 0x115540;
	void addImageAsync(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler, int, cocos2d::CCTexture2DPixelFormat) = imac 0x5f6650, m1 0x51e554;
	void addImageAsyncCallBack(float);
	cocos2d::CCTexture2D* addPVRImage(char const*);
	cocos2d::CCTexture2D* addUIImage(cocos2d::CCImage*, char const*) = imac 0x5f8250, m1 0x520194, ios 0x115EFC;
	char const* description();
	void dumpCachedTextureInfo();
	void prepareAsyncLoading() = ios 0x114aa4;
	bool reloadTexture(char const*);
	void removeAllTextures();
	void removeTexture(cocos2d::CCTexture2D*);
	void removeTextureForKey(char const*);
	void removeUnusedTextures();
	cocos2d::CCDictionary* snapshotTextures();
	cocos2d::CCTexture2D* textureForKey(char const*) = imac 0x5f8850, m1 0x5207c8, ios 0x1160fc;
}

[[link(win, android)]]
class cocos2d::CCTouch {
	//getLocationInView() = ios 0x30f2a4;
	cocos2d::CCPoint getLocation() const = imac 0x5a550, m1 0x50be8, ios 0x30f2b0;
	cocos2d::CCPoint getPreviousLocation() const = imac 0x5a580, m1 0x50c14;
	cocos2d::CCPoint getStartLocation() const = imac 0x5a5b0, m1 0x50c40;
	cocos2d::CCPoint getDelta() const = imac 0x5a5e0, m1 0x50c6c;
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
	bool init();

	int getTargetPrio() const;

	void setDispatchEvents(bool) = imac 0x4d56d0;
	void setPriority(int p1, cocos2d::CCTouchDelegate* p2) = ios inline, imac 0x4d6130, m1 0x434088 {
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
	void addPrioTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = ios 0x159a34, imac 0x4d5990;
	void addStandardDelegate(cocos2d::CCTouchDelegate*, int);
	void addTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x4d59b0, m1 0x433870, ios 0x159a4c;
	void decrementForcePrio(int);
	cocos2d::CCTouchHandler* findHandler(cocos2d::CCArray*, cocos2d::CCTouchDelegate*);
	cocos2d::CCTouchHandler* findHandler(cocos2d::CCTouchDelegate*) = imac 0x4d5fe0, m1 0x433f14, ios 0x159ef0;
	void forceAddHandler(cocos2d::CCTouchHandler*, cocos2d::CCArray*);
	void forceRemoveAllDelegates();
	void forceRemoveDelegate(cocos2d::CCTouchDelegate*);
	void incrementForcePrio(int);
	bool isDispatchEvents();
	bool isUsingForcePrio() = imac 0x4d5980;
	void rearrangeHandlers(cocos2d::CCArray* handlers) = ios inline {
		std::sort(handlers->data->arr, handlers->data->arr + handlers->data->num, [](const CCObject* p1, const CCObject* p2) {
			return ((CCTouchHandler*)p1)->getPriority() < ((CCTouchHandler*)p2)->getPriority();
		});
	}
	void registerForcePrio(cocos2d::CCObject*, int) = imac 0x4d5890, m1 0x433730, ios 0x159944;
	void removeAllDelegates();
	void removeDelegate(cocos2d::CCTouchDelegate*) = ios 0x159dbc, imac 0x4d5e40, m1 0x433d44;
	void touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int) = m1 0x434208, imac 0x4d62a0;
	void unregisterForcePrio(cocos2d::CCObject*) = imac 0x4d5930, m1 0x4337e4, ios 0x1599c0;

	virtual void touchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4d68e0;
	virtual void touchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4d6920;
	virtual void touchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4d6960;
	virtual void touchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4d69a0;
}

[[link(win, android)]]
class cocos2d::CCTouchHandler {
	static cocos2d::CCTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int);

	cocos2d::CCTouchDelegate* getDelegate() = m1 0x3efbb0, imac 0x48a010;
	int getEnabledSelectors();
	int getPriority() = ios inline, m1 0x3efc24, imac 0x48a090 {
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
	virtual void swapBuffers() = m1 0x464e30, imac 0x50e130;
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
	// sharedOpenGLView() = ios 0x130f38, imac 0x50df50
}

[[link(win, android)]]
class cocos2d::CCImage {
	bool initWithImageData(void*, int, cocos2d::CCImage::EImageFormat, int, int, int, int) = imac 0x492d80, m1 0x3f7f58, ios 0x31938;
	bool initWithImageFile(char const*, cocos2d::CCImage::EImageFormat) = imac 0x492b70, m1 0x3f7d24;
	bool initWithImageFileThreadSafe(char const*, cocos2d::CCImage::EImageFormat) = imac 0x493370, m1 0x3f8350;
	bool initWithString(char const*, int, int, cocos2d::CCImage::ETextAlign, char const*, int);

	int getBitsPerComponent() const;
	unsigned char* getData();
	int getDataLen();
	unsigned short getHeight() const;
	unsigned short getWidth() const;

	CCImage() = imac 0x492a70, m1 0x3f7c40, ios 0x317A4;
	~CCImage() = imac 0x492af0, m1 0x3f7ca8, ios 0x317d0;

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
	~CCIMEDelegate() = imac 0x4c5c10, m1 0x425098, ios 0x1dd354;
	virtual bool attachWithIME() = imac 0x4c5c40, m1 0x425210;
	virtual bool detachWithIME() = imac 0x4c5e30, m1 0x425450;
	virtual void deleteForward() {}
}

[[link(win, android)]]
class cocos2d::CCIMEDispatcher {
	static cocos2d::CCIMEDispatcher* sharedDispatcher() = ios 0x1dd254;

	// CCIMEDispatcher();

	void addDelegate(cocos2d::CCIMEDelegate*);
	bool attachDelegateWithIME(cocos2d::CCIMEDelegate*);
	bool detachDelegateWithIME(cocos2d::CCIMEDelegate*);
	void dispatchDeleteBackward() = imac 0x4c6140, m1 0x425760;
	void dispatchDeleteForward() = imac 0x4c6160, m1 0x425780;
	void dispatchInsertText(char const*, int, cocos2d::enumKeyCodes) = imac 0x4c6110, m1 0x425734;
	void dispatchKeyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&);
	void dispatchKeyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&);
	void dispatchKeyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
	void dispatchKeyboardWillHide();
	void dispatchKeyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
	char const* getContentText();
	bool hasDelegate();
	void removeDelegate(cocos2d::CCIMEDelegate*) = ios 0x1dd398;
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
	bool dispatchKeyboardMSG(cocos2d::enumKeyCodes, bool, bool) = m1 0x1b0418, imac 0x1fdbe0;
	void forceAddDelegate(cocos2d::CCKeyboardDelegate*);
	void forceRemoveDelegate(cocos2d::CCKeyboardDelegate*);
	char const* keyToString(cocos2d::enumKeyCodes) = m1 0x1b06d8, imac 0x1fdeb0;
	void removeDelegate(cocos2d::CCKeyboardDelegate*);
	void updateModifierKeys(bool, bool, bool, bool) = m1 0x1b06c0, imac 0x1fde80;
}

[[link(win, android)]]
class cocos2d::CCDirector {
	static cocos2d::CCDirector* sharedDirector() = imac 0x48b350, m1 0x3f0da8, ios 0x180c2c;

	float getActualDeltaTime() const;
	double getAnimationInterval();
	float getContentScaleFactor();// = ios 0x18231c; // todo: uncomment since this breaks ios building
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
	float getScreenScaleFactorMax();// = ios 0x1825f4;
	float getScreenScaleFactorW();
	float getSecondsPerFrame();
	bool getSmoothFix() const;
	bool getSmoothFixCheck() const;
	int getSmoothFixCounter() const;
	unsigned int getTotalFrames();
	cocos2d::CCPoint getVisibleOrigin();
	cocos2d::CCSize getVisibleSize();
	cocos2d::CCSize getWinSize() = m1 0x3f1edc, imac 0x48c750, ios 0x1818b4;
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
	void setDepthTest(bool) = ios 0x1811b4;
	void setDisplayStats(bool);
	void setDontCallWillSwitch(bool);
	void setGLDefaultValues();
	void setNextDeltaTimeZero(bool);
	void setNextScene();
	void setNotificationNode(cocos2d::CCNode*);
	void setOpenGLView(cocos2d::CCEGLView*);
	void setProjection(cocos2d::ccDirectorProjection) = ios 0x1811e4;
	void setSceneReference(cocos2d::CCScene*);
	void setSmoothFix(bool);
	void setSmoothFixCheck(bool);
	void setViewport();

	// CCDirector(cocos2d::CCDirector const&);
	// CCDirector();
	void applySmoothFix();
	void calculateDeltaTime();
	void calculateMPF();
	void checkSceneReference();
	cocos2d::CCPoint convertToGL(cocos2d::CCPoint const&) = imac 0x48cc80, ios 0x181ab4;
	cocos2d::CCPoint convertToUI(cocos2d::CCPoint const&);
	void createStatsLabel();
	void drawScene() = m1 0x3f1560, imac 0x48bcd0;
	void end();
	bool isDisplayStats();
	bool isNextDeltaTimeZero();
	bool isPaused();
	bool isSendCleanupToScene();
	int levelForSceneInStack(cocos2d::CCScene*);
	void pause() = ios 0x1821c4;
	void popScene();
	bool popSceneWithTransition(float, cocos2d::PopTransition) = m1 0x3f2950, imac 0x48d2f0;
	void popToRootScene() = ios 0x181f3c;
	void popToSceneInStack(cocos2d::CCScene*);
	void popToSceneStackLevel(int);
	void purgeCachedData();
	void purgeDirector();
	bool pushScene(cocos2d::CCScene*) = imac 0x48d060, m1 0x3f269c, ios 0x181c80;
	void removeStatsLabel() = ios 0x182250;
	bool replaceScene(cocos2d::CCScene*) = imac 0x48d110, m1 0x3f2764, ios 0x181d08;
	void resetSmoothFixCounter();
	void reshapeProjection(cocos2d::CCSize const&);
	void resume();
	void runWithScene(cocos2d::CCScene*) = ios 0x181c54;
	int sceneCount();
	void setupScreenScale(cocos2d::CCSize, cocos2d::CCSize, cocos2d::TextureQuality);
	void showFPSLabel();
	void showStats();
	void toggleShowFPS(bool, gd::string, cocos2d::CCPoint);
	void updateContentScale(cocos2d::TextureQuality) = ios 0x1819cc;
	void updateScreenScale(cocos2d::CCSize);
	void willSwitchToScene(cocos2d::CCScene*) = imac 0x48cf70;

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
	static cocos2d::CCNodeRGBA* create();

	// CCNodeRGBA(cocos2d::CCNodeRGBA const&);
	CCNodeRGBA() = imac 0x271180, m1 0x21727c, ios 0x24d5b0;
	~CCNodeRGBA() = imac 0x2711e0, m1 0x2172e0, ios 0x24b484; // this is actually ~CCNode, ~CCNodeRGBA is just that :ned_explosion:

	virtual bool init() = m1 0x2172f8, imac 0x271210, ios 0x24d5fc;

	virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x2176c8, imac 0x271630;
	virtual cocos2d::_ccColor3B const& getColor() = m1 0x2176a8, imac 0x2715f0;
	virtual cocos2d::_ccColor3B const& getDisplayedColor() = m1 0x2176b8, imac 0x271610;
	virtual unsigned char getDisplayedOpacity() = m1 0x217380, imac 0x2712c0;
	virtual unsigned char getOpacity() = m1 0x217370, imac 0x2712a0;
	virtual void setOpacity(unsigned char) = m1 0x217390, imac 0x2712e0;
	virtual bool isCascadeColorEnabled() = m1 0x217968, imac 0x2719c0;
	virtual void setCascadeColorEnabled(bool) = m1 0x217978, imac 0x2719e0;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = m1 0x217854, imac 0x2717a0;
	virtual bool isCascadeOpacityEnabled() = m1 0x217688, imac 0x2715b0;
	virtual void setCascadeOpacityEnabled(bool) = m1 0x217698, imac 0x2715d0;
	virtual void updateDisplayedOpacity(unsigned char) = m1 0x2174e8, imac 0x271420;
}

[[link(win, android)]]
class cocos2d::CCSequence {
	static cocos2d::CCSequence* create(cocos2d::CCArray*) = imac 0x3b8e10, m1 0x33d400;
	// static cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, ...) = imac 0x3b8aa0, m1 0x33d1fc;
	static cocos2d::CCSequence* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3b8970, m1 0x33d0dc;
	static cocos2d::CCSequence* createWithVariableList(cocos2d::CCFiniteTimeAction*, va_list) = imac 0x3b8b50, m1 0x33d224, ios 0x195fb4;

	bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3b8a40, m1 0x33d198;

	// CCSequence(cocos2d::CCSequence const&);
	// CCSequence();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3b9050, m1 0x33d5f0;
	virtual void update(float) = imac 0x3b92f0, m1 0x33d87c;
	virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3b9280, m1 0x33d7f4;
	virtual void stop() = imac 0x3b92c0, m1 0x33d83c;
	virtual cocos2d::CCActionInterval* reverse() = imac 0x3b9440, m1 0x33da10;
}

[[link(win, android)]]
class cocos2d::CCSprite {
	static cocos2d::CCSprite* create(char const*) = imac 0x2843b0, m1 0x22905c, ios 0x247ca0;
	static cocos2d::CCSprite* create(char const*, cocos2d::CCRect const&);
	static cocos2d::CCSprite* create() = imac 0x2846b0, m1 0x22905c;
	static cocos2d::CCSprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x284590, m1 0x229240, ios 0x247d1c;
	static cocos2d::CCSprite* createWithSpriteFrameName(char const*) = imac 0x284680, m1 0x22932c, ios 0x247d9c;
	static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*) = imac 0x284130, m1 0x228df0, ios 0x247C14;
	static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = imac 0x2842c0;

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
	void setFlipX(bool) = imac 0x286360, m1 0x22ad7c, ios 0x249688;
	void setFlipY(bool) = imac 0x2863b0, m1 0x22adb0, ios 0x2496bc;
	void setTextureAtlas(cocos2d::CCTextureAtlas*);// = ios 0x249de0; //uncommenting this causes ios to fail :ned_explosion:
	void setTlVertexMod(float);
	void setTrVertexMod(float);
	void setUseVertexMod(bool);

	// CCSprite(cocos2d::CCSprite const&);
	CCSprite() = imac 0x284b40, m1 0x2297c4, ios 0x2481c8;
	~CCSprite() = imac 0x284c40, m1 0x229898, ios 0x248250;
	bool isFlipX() = imac 0x2863a0;
	bool isFlipY() = imac 0x2863f0;
	bool isTextureRectRotated();
	void updateColor();

	virtual bool init() = m1 0x229434, imac 0x284790, ios 0x247e38;
	virtual void setVertexZ(float) = m1 0x22ac28, imac 0x286200, ios 0x24b664;
	virtual void setScaleX(float) = m1 0x22aaa4, imac 0x2860a0;
	virtual void setScaleY(float) = m1 0x22ab20, imac 0x286110;
	virtual void setScale(float) = m1 0x22ab9c, imac 0x286180;
	virtual void setPosition(cocos2d::CCPoint const&) = m1 0x22a7e0, imac 0x285df0;
	virtual void setSkewX(float) = m1 0x22a9c4, imac 0x285fc0;
	virtual void setSkewY(float) = m1 0x22aa34, imac 0x286030;
	virtual void setAnchorPoint(cocos2d::CCPoint const&) = m1 0x22ac98, imac 0x286270;
	virtual void setVisible(bool) = m1 0x22ad0c, imac 0x2862f0;
	virtual void setRotation(float) = m1 0x22a874, imac 0x285e70;
	virtual void setRotationX(float) = m1 0x22a8e4, imac 0x285ee0;
	virtual void setRotationY(float) = m1 0x22a954, imac 0x285f50;
	virtual void ignoreAnchorPointForPosition(bool) = imac 0x2862e0, m1 0x22ad08;
	virtual void addChild(cocos2d::CCNode*) = imac 0x285930, m1 0x22a2fc;
	virtual void addChild(cocos2d::CCNode*, int) = imac 0x285940, m1 0x22a304;
	virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x22a304, imac 0x285950;
	virtual void removeChild(cocos2d::CCNode*, bool) = m1 0x22a46c, imac 0x285a90;
	virtual void removeAllChildrenWithCleanup(bool) = m1 0x22a4b4, imac 0x285ad0;
	virtual void reorderChild(cocos2d::CCNode*, int) = m1 0x22a3d8, imac 0x285a10;
	virtual void sortAllChildren() = m1 0x22a570, imac 0x285b90;
	virtual void draw() = m1 0x22a1e4, imac 0x285810;
	virtual void updateTransform() = m1 0x229e30, imac 0x285350;
	virtual bool initWithTexture(cocos2d::CCTexture2D*) = m1 0x2295b0, imac 0x284950;
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = m1 0x2295a0, imac 0x284930;
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = m1 0x22944c, imac 0x2847b0;
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x229724, imac 0x284ab0;
	virtual bool initWithSpriteFrameName(char const*) = m1 0x229788, imac 0x284b00;
	virtual bool initWithFile(char const*) = m1 0x22962c, imac 0x2849c0, ios 0x248030;
	virtual bool initWithFile(char const*, cocos2d::CCRect const&) = m1 0x2296c0, imac 0x284a50;
	virtual void setChildColor(cocos2d::_ccColor3B const&) = m1 0x22b110, imac 0x286900;
	virtual void setChildOpacity(unsigned char) = m1 0x22af9c, imac 0x2866d0;
	virtual cocos2d::CCSpriteBatchNode* getBatchNode() = m1 0x22b51c, imac 0x2870f0;
	virtual void setBatchNode(cocos2d::CCSpriteBatchNode*) = m1 0x22b524, imac 0x287100;
	virtual void refreshTextureRect() = m1 0x229934, imac 0x284d00;
	virtual void setTextureRect(cocos2d::CCRect const&) = m1 0x2299b8, imac 0x284d90;
	virtual void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&) = m1 0x2299cc, imac 0x284db0;
	virtual void setVertexRect(cocos2d::CCRect const&) = m1 0x229c60, imac 0x2850f0;
	virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = m1 0x22b29c, imac 0x286de0;
	virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = m1 0x22b370, imac 0x286eb0;
	virtual cocos2d::CCSpriteFrame* displayFrame() = m1 0x22b414, imac 0x286f40;
	virtual void setDisplayFrameWithAnimationName(char const*, int) = m1 0x22b31c, imac 0x286e60;
	virtual void setTextureCoords(cocos2d::CCRect const&) = m1 0x229c68, imac 0x285110;
	virtual void updateBlendFunc() = m1 0x22b570, imac 0x287170;
	virtual void setReorderChildDirtyRecursively() = m1 0x22a6f8, imac 0x285d10;
	virtual void setDirtyRecursively(bool) = m1 0x22a760, imac 0x285d70;

	virtual void setOpacity(unsigned char) = m1 0x22aea4, imac 0x286520;
	virtual void updateDisplayedOpacity(unsigned char) = m1 0x22b250, imac 0x286c80;
	virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x22b048, imac 0x286780;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = m1 0x22b204, imac 0x286b20;
	virtual void setOpacityModifyRGB(bool) = m1 0x22b1bc, imac 0x2869b0;
	virtual bool isOpacityModifyRGB() = m1 0x22b1f4, imac 0x286b00;

	virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x22b5c8, imac 0x2871d0;
	virtual cocos2d::CCTexture2D* getTexture() = m1 0x22b708, imac 0x287340;
}

[[link(win, android)]]
class cocos2d::CCLabelBMFont {
	CCLabelBMFont() = ios 0x30bc1c, m1 0x50b898, imac 0x5e1420;

	static cocos2d::CCLabelBMFont* create(char const*, char const*) = imac 0x5e0fa0, m1 0x50b404, ios 0x30b814;
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float);
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment) = imac 0x5e0ef0, m1 0x50b1c0;
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = imac 0x5e0e50, m1 0x50b284, ios 0x30b754;
	static cocos2d::CCLabelBMFont* create() = imac 0x5e0d30, m1 0x50b13c;
	static cocos2d::CCLabelBMFont* createBatched(char const*, char const*, cocos2d::CCArray*, int);
	static void purgeCachedData();

	bool initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = ios 0x30b864, imac 0x5e1050, m1 0x50b4cc;

	cocos2d::CCBMFontConfiguration* getConfiguration() const;
	int getExtraKerning() const;
	char const* getFntFile();
	bool getIsBatched() const;
	float getLetterPosXLeft(cocos2d::CCSprite*, float, bool);
	float getLetterPosXRight(cocos2d::CCSprite*, float, bool);
	cocos2d::CCArray* getTargetArray() const;

	void setExtraKerning(int);
	void setFntFile(char const*) = imac 0x5e4670, m1 0x50e100;
	void setIsBatched(bool);
	void setTargetArray(cocos2d::CCArray*);
	void createFontChars() = imac 0x5e1780, m1 0x50bb64;
	int kerningAmountForFirst(unsigned short, unsigned short);
	void limitLabelWidth(float, float, float) = imac 0x5e4790, m1 0x50e1f8, ios 0x30d9bc;

	~CCLabelBMFont() = imac 0x5e1630, m1 0x50b970, ios 0x30bcdc;
	virtual bool init() = m1 0x50b848, imac 0x5e13d0;
	virtual void setScaleX(float) = m1 0x50e0a8, imac 0x5e4630;
	virtual void setScaleY(float) = m1 0x50e0d4, imac 0x5e4650;
	virtual void setScale(float) = m1 0x50e07c, imac 0x5e4610;
	virtual void setAnchorPoint(cocos2d::CCPoint const&) = m1 0x50cd94, imac 0x5e2c50;
	virtual void setString(char const*) = m1 0x50c348, imac 0x5e2130;
	virtual void setString(char const*, bool) = m1 0x50c36c, imac 0x5e2180;
	virtual char const* getString() = m1 0x50c5a0, imac 0x5e23d0;
	virtual void setCString(char const*) = m1 0x50c5d8, imac 0x5e2420;
	virtual void updateLabel() = m1 0x50cde8, imac 0x5e2c90;
	virtual void setAlignment(cocos2d::CCTextAlignment) = m1 0x50e04c, imac 0x5e45b0;
	virtual void setWidth(float) = m1 0x50e05c, imac 0x5e45d0;
	virtual void setLineBreakWithoutSpace(bool) = m1 0x50e06c, imac 0x5e45f0;
	virtual void setString(unsigned short*, bool) = m1 0x50c3f4, imac 0x5e2200;

	virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x50c604, imac 0x5e2480;
	virtual cocos2d::_ccColor3B const& getColor() = m1 0x50c5e4, imac 0x5e2440;
	virtual cocos2d::_ccColor3B const& getDisplayedColor() = m1 0x50c5f4, imac 0x5e2460;
	virtual unsigned char getDisplayedOpacity() = m1 0x50c7a0, imac 0x5e2610;
	virtual unsigned char getOpacity() = m1 0x50c790, imac 0x5e25f0;
	virtual void setOpacity(unsigned char) = m1 0x50c7b0, imac 0x5e2630;
	virtual void setOpacityModifyRGB(bool) = m1 0x50c908, imac 0x5e2770;
	virtual bool isOpacityModifyRGB() = m1 0x50ca78, imac 0x5e28f0;
	virtual bool isCascadeColorEnabled() = m1 0x50cd54, imac 0x5e2bd0;
	virtual void setCascadeColorEnabled(bool) = m1 0x50cd64, imac 0x5e2bf0;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = m1 0x50cbb0, imac 0x5e2a20;
	virtual bool isCascadeOpacityEnabled() = m1 0x50cd74, imac 0x5e2c10;
	virtual void setCascadeOpacityEnabled(bool) = m1 0x50cd84, imac 0x5e2c30;
	virtual void updateDisplayedOpacity(unsigned char) = m1 0x50ca88, imac 0x5e2910;

	//purgeCachedData = ios 0x30958c
}

[[link(win, android)]]
class cocos2d::CCActionManager {
	void addAction(cocos2d::CCAction*, cocos2d::CCNode*, bool) = imac 0x22f4d0, m1 0x1dcf98, ios 0x304c44;
	void pauseTarget(cocos2d::CCObject*) = imac 0x22f210, m1 0x1dcc88;
	void resumeTarget(cocos2d::CCObject*) = imac 0x22f2f0, m1 0x1dcd84;
}

[[link(win, android)]]
class cocos2d::CCApplication {
	static cocos2d::CCApplication* sharedApplication() = imac 0x328170, m1 0x2b7f38, ios 0x1b7dcc;
	virtual int run();
	virtual void openURL(char const*) = m1 0x2b877c, imac 0x328f80;
}

[[link(win, android)]]
class cocos2d::CCArray {
	// static cocos2d::CCArray* create(cocos2d::CCObject*, ...);
	// static cocos2d::CCArray* create() = imac 0x72cc40, m1 0x63f894, ios 0x2599ec;
	// static cocos2d::CCArray* createWithArray(cocos2d::CCArray*) = m1 0x63faac;
	// static cocos2d::CCArray* createWithCapacity(unsigned int) = ios 0x259b9c;
	static cocos2d::CCArray* createWithContentsOfFile(char const*);
	static cocos2d::CCArray* createWithContentsOfFileThreadSafe(char const*);
	static cocos2d::CCArray* createWithObject(cocos2d::CCObject*);

	bool init();
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
	// void removeAllObjects() = m1 0x63ff34;
	// void removeLastObject(bool) = imac 0x72d440;
	void removeObject(cocos2d::CCObject*, bool) = m1 0x63ff10, imac 0x72d460;
	// void removeObjectAtIndex(unsigned int, bool) = m1 0x63ff18, ios 0x259CF0;
	void removeObjectAtIndexChild(unsigned int, bool);
	void removeObjectsInArray(cocos2d::CCArray*);
	void replaceObjectAtIndex(unsigned int, cocos2d::CCObject*, bool);
	void reverseObjects();
	cocos2d::CCString* stringAtIndex(unsigned int) = ios 0x259c14, m1 0x63fd9c, imac 0x72d2d0;

	// virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	// virtual void acceptVisitor(cocos2d::CCDataVisitor&);
}

[[link(win, android)]]
class cocos2d::CCDictionary {
	static cocos2d::CCDictionary* create() = imac 0x30f260, m1 0x2a0fac, ios 0x42d318;
	static cocos2d::CCDictionary* createWithContentsOfFile(char const*) = imac 0x30f3e0, m1 0x2a1138;
	static cocos2d::CCDictionary* createWithContentsOfFileThreadSafe(char const*) = imac 0x30f2e0, m1 0x2a1030;
	static cocos2d::CCDictionary* createWithDictionary(cocos2d::CCDictionary*);

	gd::string getFirstKey();

	void setObject(cocos2d::CCObject*, gd::string const&) = ios 0x42c778, imac 0x30d960, m1 0x29f8f0;
	//void setObject(cocos2d::CCObject*, int);
	void setObjectUnSafe(cocos2d::CCObject*, gd::string const&);
	//void setObjectUnSafe(cocos2d::CCObject*, int);

	// CCDictionary(cocos2d::CCDictionary const&);
	// CCDictionary();
	cocos2d::CCArray* allKeys() = m1 0x29efec, imac 0x30d0b0;
	cocos2d::CCArray* allKeysForObject(cocos2d::CCObject*);
	char const* charForKey(gd::string const&);
	unsigned int count() = imac 0x30d090, m1 0x29efd0;
	cocos2d::CCObject* objectForKey(gd::string const&) = ios 0x42bb44, imac 0x30d420, m1 0x29f408;
	cocos2d::CCObject* objectForKey(intptr_t) = imac 0x30d7b0, m1 0x29f714;
	cocos2d::CCObject* randomObject();
	void removeAllObjects() = imac 0x30ceb0, m1 0x29ee04;
	void removeObjectForElememt(cocos2d::CCDictElement*);
	void removeObjectForKey(gd::string const&) = imac 0x30ed00, m1 0x2a0608;
	//void removeObjectForKey(int);
	void removeObjectsForKeys(cocos2d::CCArray*);
	cocos2d::CCString const* valueForKey(gd::string const&) = imac 0x30d3a0, m1 0x29f368, ios 0x42BAB0;
	cocos2d::CCString const* valueForKey(intptr_t) = imac 0x30d8e0, m1 0x29f850;
	bool writeToFile(char const*);

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
}

[[link(win, android)]]
class cocos2d::CCRenderTexture {
	static cocos2d::CCRenderTexture* create(int, int) = m1 0x526fe4;
	static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat) = m1 0x526adc;
	static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = m1 0x526bbc;

	bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat);
	bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = m1 0x526ca4;

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
	CCRenderTexture() = m1 0x5268fc;
	void begin() = m1 0x5270d8;
	void beginWithClear(float, float, float, float, float, int, unsigned int);
	void beginWithClear(float, float, float, float);
	void beginWithClear(float, float, float, float, float);
	void beginWithClear(float, float, float, float, float, int);
	void clear(float, float, float, float);
	void clearDepth(float);
	void clearStencil(int);
	void end() = m1 0x527584;
	void endToLua();
	bool isAutoDraw() const;
	void listenToBackground(cocos2d::CCObject*);
	void listenToForeground(cocos2d::CCObject*);
	cocos2d::CCImage* newCCImage(bool) = m1 0x527a30;
	bool saveToFile(char const*);
	bool saveToFile(char const*, cocos2d::eImageFormat);
	void updateInternalScale(float, float);

	virtual void draw() = m1 0x527814;
	virtual void visit() = m1 0x527788;
	virtual cocos2d::CCSprite* getSprite() = m1 0x526a34;
	virtual void setSprite(cocos2d::CCSprite*) = m1 0x526a3c;
}

[[link(win, android)]]
class cocos2d::CCRepeat {
	static cocos2d::CCRepeat* create(cocos2d::CCFiniteTimeAction*, unsigned int) = m1 0x33daf0, imac 0x3b9530;

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
	static cocos2d::CCRepeatForever* create(cocos2d::CCActionInterval*) = imac 0x3b9b90, m1 0x33e16c, ios 0x1964d4;

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
	static cocos2d::CCTransitionMoveInT* create(float, cocos2d::CCScene*) = imac 0xd9c40, m1 0xc0d10;

	// CCTransitionMoveInT(cocos2d::CCTransitionMoveInT const&);
	// CCTransitionMoveInT();
}

[[link(win, android)]]
class cocos2d::CCTransitionFade {
	static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*) = imac 0xdc990, m1 0xc36e4, ios 0x1d79bc;
	static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&);

	// CCTransitionFade(cocos2d::CCTransitionFade const&);
	// CCTransitionFade();

	virtual void onEnter() = imac 0xdca80;
	virtual void onExit() = imac 0xdcbb0;
	virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xdca60, m1 0xc37a8;
	virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&) = imac 0xdca10, m1 0xc3764;
}

[[link(win, android)]]
class cocos2d::CCTransitionRotoZoom {
	static cocos2d::CCTransitionRotoZoom* create(float, cocos2d::CCScene*);

	// CCTransitionRotoZoom(cocos2d::CCTransitionRotoZoom const&);
	// CCTransitionRotoZoom();

	virtual void onEnter() = imac 0xd8fc0, m1 0xc0184;
}

[[link(win, android)]]
class cocos2d::CCTransitionScene {
	// CCTransitionScene(cocos2d::CCTransitionScene const&);
	// CCTransitionScene();

	~CCTransitionScene() = imac 0xd8700, m1 0xbf8d4, ios 0x1d72d4;

	virtual void onEnter() = imac 0xd8b40, m1 0xbfd3c;
	virtual void onExit() = imac 0xd8b90, m1 0xbfd90;
	virtual void cleanup() = imac 0xd8bf0, m1 0xbfde4;
	virtual void draw() = imac 0xd88f0, m1 0xbfaf0;
	virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xd8820, m1 0xbf9f8;
	virtual void sceneOrder() = imac 0xd88e0, m1 0xbfae4;
}

[[link(win, android)]]
class cocos2d::CCBlink {
	static cocos2d::CCBlink* create(float, unsigned int) = imac 0x3bda90, m1 0x341884;

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
	static cocos2d::CCCallFunc* create(cocos2d::CCObject*, cocos2d::SEL_CallFunc) = imac 0x7b8f10, m1 0x6bf45c, ios 0x1b9bf0;
}

[[link(win, android)]]
class cocos2d::CCClippingNode : cocos2d::CCNode {
    static cocos2d::CCClippingNode* create() = imac 0x72c380, m1 0x63f068;
    static cocos2d::CCClippingNode* create(cocos2d::CCNode*) = imac 0x72c410, m1 0x63f0f0;

    // CCClippingNode();
    // virtual ~CCClippingNode();

    virtual bool init() = imac 0x72c4c0, m1 0x63f190;
    virtual bool init(cocos2d::CCNode*) = imac 0x72c4e0, m1 0x63f1a0;
    virtual void onEnter() = imac 0x72c550, m1 0x63f210;
    virtual void onEnterTransitionDidFinish() = imac 0x72c580, m1 0x63f23c;
    virtual void onExit() = imac 0x72c5e0, m1 0x63f298;
    virtual void onExitTransitionDidStart() = imac 0x72c5b0, m1 0x63f268;
    virtual void visit() = imac 0x72c610, m1 0x63f2c8;

    cocos2d::CCNode* getStencil() const = imac 0x72c970, m1 0x63f5f0;
    void setStencil(cocos2d::CCNode*) = imac 0x72c980, m1 0x63f5f8;

    float getAlphaThreshold() const = imac 0x72c9c0, m1 0x63f63c;
    void setAlphaThreshold(float) = imac 0x72c9d0, m1 0x63f644;

    bool isInverted() const = imac 0x72c9e0, m1 0x63f64c;
    void setInverted(bool) = imac 0x72c9f0, m1 0x63f654;
}

[[link(win, android)]]
class cocos2d::CCDrawNode {
	static cocos2d::CCDrawNode* create() = imac 0x61c020, m1 0x53f1b8;

	cocos2d::_ccBlendFunc getBlendFunc() const = imac 0x61dd40, m1 0x540d0c;

	void setBlendFunc(cocos2d::_ccBlendFunc const&) = imac 0x61dd50, m1 0x540d14;

	// CCDrawNode(cocos2d::CCDrawNode const&);
	CCDrawNode() = imac 0x61bd60, m1 0x53ef80;
	~CCDrawNode() = imac 0x61bef0, m1 0x53f0dc;
	void clear() = imac 0x61dd20, m1 0x540cfc;
	void drawCircle(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&, unsigned int) = imac 0x61db70, m1 0x540b60;
	void drawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&) = imac 0x61c9b0, m1 0x53fa38;
	void drawDot(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&) = imac 0x61c4f0, m1 0x53f648;
	bool drawLines(cocos2d::CCPoint*, unsigned int, float, cocos2d::_ccColor4F const&) = imac 0x61daf0, m1 0x540ae4;
	bool drawPolygon(cocos2d::CCPoint *verts, unsigned int count, const cocos2d::ccColor4F &fillColor, float borderWidth, const cocos2d::ccColor4F &borderColor) = imac 0x61cbd0, m1 0x53fc1c;
	void drawPreciseCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&) = imac 0x61c6d0, m1 0x53f848;
	bool drawRect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&) = imac 0x61d9c0, m1 0x5409a8;
	void drawSegment(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&) = imac 0x61d370, m1 0x54046c;
	void ensureCapacity(unsigned int) = imac 0x61c0e0, m1 0x53f288;
	void listenBackToForeground(cocos2d::CCObject*) = imac 0x61dd60, m1 0x540d20;
	void render() = imac 0x61c290, m1 0x53f414;

	virtual bool init() = imac 0x61c130, m1 0x53f2dc;
	virtual void draw() = imac 0x61c320, m1 0x53f49c;
}

[[link(win, android)]]
class cocos2d::CCSpriteBatchNode {
	bool initWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x171670, m1 0x13b124;

	CCSpriteBatchNode() = imac 0x171940, m1 0x13b3c8, ios 0x1e0c98;
	~CCSpriteBatchNode() = imac 0x1719f0, m1 0x13b448, ios 0x1e0cc8;

	virtual bool init() = imac 0x1718f0, m1 0x13b36c;
	virtual void addChild(cocos2d::CCNode*) = imac 0x171dc0, m1 0x13b818;
	virtual void addChild(cocos2d::CCNode*, int) = imac 0x171dd0, m1 0x13b81c;
	virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x171b60, m1 0x13b590;
	virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x171e40, m1 0x13b8ac;
	virtual void removeAllChildrenWithCleanup(bool) = imac 0x172120, m1 0x13bb28;
	virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x171de0, m1 0x13b820;
	virtual void sortAllChildren() = imac 0x1721d0, m1 0x13bbd0;
	virtual void draw() = imac 0x1729c0, m1 0x13c188;
	virtual void visit() = imac 0x171ac0, m1 0x13b4ec;

	virtual void setBlendFunc(cocos2d::_ccBlendFunc) = imac 0x173220, m1 0x13c9fc;
	virtual cocos2d::_ccBlendFunc getBlendFunc() = imac 0x173240, m1 0x13ca0c;
	virtual cocos2d::CCTexture2D* getTexture() = imac 0x173260, m1 0x13ca1c;
	virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x173290, m1 0x13ca3c;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrame {
	static cocos2d::CCSpriteFrame* create(char const*, cocos2d::CCRect const&) = m1 0x2e6228, imac 0x358210;
	static cocos2d::CCSpriteFrame* create(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = m1 0x2e67d4, imac 0x358930;
	static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = m1 0x2e63cc, imac 0x358410;
	static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = m1 0x2e6570, imac 0x358610;

	bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = m1 0x2e64b0, imac 0x358520;
	bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = m1 0x2e6674, imac 0x358740;
	bool initWithTextureFilename(char const*, cocos2d::CCRect const&) = m1 0x2e630c, imac 0x358320;
	bool initWithTextureFilename(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = m1 0x2e68d8, imac 0x358a60;

	gd::string getFrameName() const;
	cocos2d::CCPoint const& getOffset() = m1 0x2e6e28, imac 0x359100;
	cocos2d::CCPoint const& getOffsetInPixels() = m1 0x2e6e9c, imac 0x3591a0;
	cocos2d::CCSize const& getOriginalSize();
	cocos2d::CCSize const& getOriginalSizeInPixels();
	cocos2d::CCRect const& getRect();
	cocos2d::CCRect const& getRectInPixels();
	cocos2d::CCTexture2D* getTexture() = imac 0x359240, m1 0x2e6f10, ios 0x25dfbc;

	void setFrameName(gd::string);
	void setOffset(cocos2d::CCPoint const&) = m1 0x2e6e30, imac 0x359110;
	void setOffsetInPixels(cocos2d::CCPoint const&) = m1 0x2e6ea4, imac 0x3591b0;
	void setOriginalSize(cocos2d::CCSize const&);
	void setOriginalSizeInPixels(cocos2d::CCSize const&);
	void setRect(cocos2d::CCRect const&) = m1 0x2e6cec, imac 0x358f40;
	void setRectInPixels(cocos2d::CCRect const&) = m1 0x2e6d88, imac 0x359020;
	void setRotated(bool);
	void setTexture(cocos2d::CCTexture2D*) = m1 0x2e6ca8, imac 0x358f00;

	// CCSpriteFrame(cocos2d::CCSpriteFrame const&);
	// CCSpriteFrame();
	bool isRotated();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x2e6b98, imac 0x358db0;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrameCache {
	static cocos2d::CCSpriteFrameCache* sharedSpriteFrameCache() = imac 0x31a9f0, m1 0x2ab520, ios 0x3c4cf0;

	bool init();

	// CCSpriteFrameCache();
	// CCSpriteFrameCache(cocos2d::CCSpriteFrameCache const&);
	void addSpriteFrame(cocos2d::CCSpriteFrame*, char const*);
	void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*) = m1 0x2ab7d8, imac 0x31acd0;
	void addSpriteFramesWithFile(char const*, char const*);
	void addSpriteFramesWithFile(char const*) = imac 0x31b8b0, m1 0x2ac58c, ios 0x3c5734;
	void addSpriteFramesWithFile(char const*, cocos2d::CCTexture2D*);
	void removeSpriteFrameByName(char const*);
	void removeSpriteFrames();
	void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*);
	void removeSpriteFramesFromFile(char const*);
	void removeSpriteFramesFromTexture(cocos2d::CCTexture2D*);
	void removeUnusedSpriteFrames();
	cocos2d::CCSpriteFrame* spriteFrameByName(char const*) = imac 0x31c720, m1 0x2ad664, ios 0x3c5bcc;
	//purgeSharedSpriteFrameCache = ios 0x3c4dd4
}

[[link(win, android)]]
class cocos2d::CCString {
	static cocos2d::CCString* createWithData(unsigned char const*, unsigned long) = imac 0x7b7370, m1 0x6bdb68, ios 0x278a38;
	// static cocos2d::CCString* createWithFormat(char const*, ...) = ios 0x278aec;

	char const* getCString() const = imac 0x7b6cc0, m1 0x6bd3dc, ios 0x2786d0;
	//createWithContentsOfFile = ios 0x278b74;

	bool boolValue() const = ios 0x278884;
	int intValue() const = imac 0x7b6f90, m1 0x6bd754; // ios 0x2787d4;
}

[[link(win, android)]]
class cocos2d::CCMenuItem {
	~CCMenuItem() = imac 0x3c1fc0, m1 0x345478, ios 0x531c4;
	static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	static cocos2d::CCMenuItem* create();

	bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3c1ee0, m1 0x3453ac, ios 0x53154;

	int getScriptTapHandler();

	void setTarget(cocos2d::CCObject* rec, cocos2d::SEL_MenuHandler selector) = ios inline, imac 0x3c2210, m1 0x345668 {
		m_pListener = rec;
		m_pfnSelector = selector;
	}

	// CCMenuItem(cocos2d::CCMenuItem const&);
	// CCMenuItem();
	cocos2d::CCRect rect();

	virtual void activate() = imac 0x3c2120, m1 0x3455b8;
	virtual void selected() = imac 0x3c2090, m1 0x345534;
	virtual void unselected() = imac 0x3c20a0, m1 0x345540;
	virtual void registerScriptTapHandler(int) = m1 0x345548, imac 0x3c20b0;
	virtual void unregisterScriptTapHandler() = m1 0x345578, imac 0x3c20e0;
	virtual bool isEnabled() = m1 0x34563c, imac 0x3c21a0;
	virtual void setEnabled(bool) = imac 0x3c2190, m1 0x345634, ios 0x53218;
	virtual bool isSelected() = m1 0x345660, imac 0x3c2200;
}

[[link(win, android)]]
class cocos2d::CCMenuItemSprite {
	bool initWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3c3650, m1 0x346a38, ios 0x53580;

	virtual void selected() = imac 0x3c3740, m1 0x346b50;
	virtual void unselected() = imac 0x3c37e0, m1 0x346bdc;
	virtual void setEnabled(bool) = imac 0x3c3860, m1 0x346c5c;
	virtual cocos2d::CCNode* getNormalImage() = imac 0x3c3290, m1 0x346674;
	virtual void setNormalImage(cocos2d::CCNode*) = imac 0x3c32a0, m1 0x34667c;
	virtual cocos2d::CCNode* getSelectedImage() = imac 0x3c3360, m1 0x346748;
	virtual void setSelectedImage(cocos2d::CCNode*) = imac 0x3c3370, m1 0x346750;
	virtual cocos2d::CCNode* getDisabledImage() = imac 0x3c3400, m1 0x3467f8;
	virtual void setDisabledImage(cocos2d::CCNode*) = imac 0x3c3410, m1 0x346800;
	virtual void updateImagesVisibility() = imac 0x3c3880, m1 0x346c7c;
}

[[link(win, android)]]
class cocos2d::CCMenu {
	// static cocos2d::CCMenu* create(cocos2d::CCMenuItem*, ...) = ios 0x1e1964, m1 0x6a6d58, imac 0x79e7b0;
	static cocos2d::CCMenu* create() = imac 0x79e7a0, m1 0x6a6d34, ios 0x1e1940;
	static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*);
    static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*) = imac 0x79ebf0, m1 0x6a70e0;
    // static cocos2d::CCMenu* createWithItems(cocos2d::CCMenuItem*, char*);

	bool initWithArray(cocos2d::CCArray*);

	void setHandlerPriority(int);

	// CCMenu(cocos2d::CCMenu const&);
	// CCMenu();
	void alignItemsHorizontally();
	void alignItemsHorizontallyWithPadding(float) = imac 0x79f410, m1 0x6a78f0, ios 0x1e220c;
	// void alignItemsInColumns(unsigned int, ...);
	// void alignItemsInColumns(unsigned int, char*);
	void alignItemsInColumnsWithArray(cocos2d::CCArray*);
	// void alignItemsInRows(unsigned int, ...);
	// void alignItemsInRows(unsigned int, char*);
	void alignItemsInRowsWithArray(cocos2d::CCArray*);
	void alignItemsVertically();
	void alignItemsVerticallyWithPadding(float) = m1 0x6a76f8;
	cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*);
	cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*, bool);

	virtual bool init() = m1 0x6a7100, imac 0x79ec00;
	virtual void addChild(cocos2d::CCNode*) = m1 0x6a7108, imac 0x79ec10;
	virtual void addChild(cocos2d::CCNode*, int) = m1 0x6a710c, imac 0x79ec20;
	virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x6a7110, imac 0x79ec30;
	virtual void removeChild(cocos2d::CCNode*, bool) = m1 0x6a71b8, imac 0x79ecd0;
	virtual void onExit() = m1 0x6a7170, imac 0x79ec80;
	virtual void registerWithTouchDispatcher() = m1 0x6a726c, imac 0x79ed80;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x6a72c8, imac 0x79edd0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x6a75b0, imac 0x79f080;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x6a74c0, imac 0x79efa0;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x6a7548, imac 0x79f020;
}

[[link(win, android)]]
class cocos2d::CCRotateBy {
	static cocos2d::CCRotateBy* create(float, float) = imac 0x3baf60, m1 0x33f2a0, ios 0x196f24;
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
class cocos2d::CCDelayTime {
	static cocos2d::CCDelayTime* create(float) = imac 0x3ba690, m1 0x33eab0, ios 0x1968fc;

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
	static cocos2d::CCBMFontConfiguration* FNTConfigLoadFile(char const*) = imac 0x5dd4a0, m1 0x507a1c;
	static void FNTConfigRemoveCache();
	static cocos2d::CCAffineTransform __CCAffineTransformMake(float, float, float, float, float, float);
	static cocos2d::CCPoint __CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&) = imac 0x23b660, m1 0x1e6c34;
	static cocos2d::CCSize __CCSizeApplyAffineTransform(cocos2d::CCSize const&, cocos2d::CCAffineTransform const&);
	static cocos2d::CCPoint ccCardinalSplineAt(cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, float, float);
	static void ccDrawCardinalSpline(cocos2d::CCPointArray*, float, unsigned int);
	static void ccDrawCatmullRom(cocos2d::CCPointArray*, unsigned int);
	static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool);
	static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool, float, float);
	static void ccDrawCircleSegment(cocos2d::CCPoint const&, float, float, float, unsigned int, bool, float, float);
	static void ccDrawColor4B(unsigned char, unsigned char, unsigned char, unsigned char) = imac 0x204480, m1 0x1b5c34, ios 0x25c2b0;
	static void ccDrawColor4F(float, float, float, float);
	static void ccDrawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
	static void ccDrawFilledCircle(cocos2d::CCPoint const&, float, float, unsigned int);
	static void ccDrawFree();
	static void ccDrawInit();
	static void ccDrawLine(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x202c30, m1 0x1b4738, ios 0x25bbec;
	static void ccDrawLines(cocos2d::CCPoint const*, unsigned int);
	static void ccDrawPoint(cocos2d::CCPoint const&);
	static void ccDrawPoints(cocos2d::CCPoint const*, unsigned int);
	static void ccDrawPoly(cocos2d::CCPoint const*, unsigned int, bool);
	static void ccDrawQuadBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
	static void ccDrawRect(cocos2d::CCPoint, cocos2d::CCPoint);
	static void ccDrawSolidPoly(cocos2d::CCPoint const*, unsigned int, cocos2d::_ccColor4F) = imac 0x202f10, ios 0x25bd94;
	static void ccDrawSolidRect(cocos2d::CCPoint origin, cocos2d::CCPoint destination, cocos2d::_ccColor4F color) = ios inline, imac 0x202e60, m1 0x1b4948 {
		CCPoint vertices[] = {
			origin,
			CCPoint{destination.x, origin.y},
			destination,
			CCPoint{origin.x, destination.y}
		};

		ccDrawSolidPoly(vertices, 4, color);
	}
	static void ccGLBindTexture2D(unsigned int) = m1 0x2e9b14, imac 0x35c2a0;
	static void ccGLBindTexture2DN(unsigned int, unsigned int) = m1 0x2e9b60, imac 0x35c2e0;
	static void ccGLBindVAO(unsigned int);
	static void ccGLBlendFunc(unsigned int, unsigned int) = imac 0x35c1f0, m1 0x2e9a4c, ios 0x19a514;
	static void ccGLBlendResetToCache() = imac 0x35c250;
	static void ccGLDeleteProgram(unsigned int);
	static void ccGLDeleteTexture(unsigned int);
	static void ccGLDeleteTextureN(unsigned int, unsigned int);
	static void ccGLEnable(cocos2d::ccGLServerState) = ios 0x19a64c;
	static void ccGLEnableVertexAttribs(unsigned int) = m1 0x2e9c70, imac 0x35c3d0, ios 0x19a650;
	static void ccGLInvalidateStateCache();
	static void ccGLUseProgram(unsigned int) = m1 0x2e9a30, imac 0x35c1d0;
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
	static float ccpDistance(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = m1 0x2e5120, imac 0x356d70;
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
}

[[link(win, android)]]
class DS_Dictionary {
	DS_Dictionary() = m1 0x13e1c8, imac 0x174e70;
	void addBoolValuesToMapForKey(gd::map<gd::string, bool>&, char const*, bool) = imac 0x17d2b0, m1 0x145660;
	void addBoolValuesToMapForKeySpecial(gd::map<gd::string, bool>&, char const*, bool) = imac 0x17cf60, m1 0x145330;
	void checkCompatibility();
	gd::string cleanStringWhiteSpace(gd::string const&);
	static void copyFile(char const*, char const*);
	cocos2d::CCObject* decodeObjectForKey(char const*, bool, int);
	gd::vector<gd::string> getAllKeys();
	cocos2d::CCArray* getArrayForKey(char const*, bool) = m1 0x14497c, imac 0x17c470;
	bool getBoolForKey(char const*) = imac 0x1791d0, m1 0x141d14;
	cocos2d::CCDictionary* getDictForKey(char const*, bool) = imac 0x17d470, m1 0x145800;
	float getFloatForKey(char const*) = m1 0x141e0c;
	unsigned int getIndexOfKey(char const*);
	unsigned int getIndexOfKeyWithClosestAlphaNumericalMatch(char const*);
	int getIntegerForKey(char const*) = m1 0x141c08, imac 0x179090;
	gd::string getKey(unsigned int) = imac 0x1789b0, m1 0x1415a4;
	unsigned int getNumKeys();
	cocos2d::CCObject* getObjectForKey(char const*) = imac 0x17c5f0, m1 0x144ae4;
	gd::vector<cocos2d::CCRect> getRectArrayForKey(char const*);
	cocos2d::CCRect getRectForKey(char const*);
	gd::vector<gd::string> getStringArrayForKey(char const*);
	gd::string getStringForKey(char const*) = imac 0x179410, m1 0x141f2c;
	gd::vector<cocos2d::CCPoint> getVec2ArrayForKey(char const*);
	cocos2d::CCPoint getVec2ForKey(char const*);
	bool loadRootSubDictFromCompressedFile(char const*);
	bool loadRootSubDictFromFile(char const*);
	bool loadRootSubDictFromString(gd::string const&) = m1 0x13f9b4, imac 0x1766d0;
	bool rectFromString(gd::string const&, cocos2d::CCRect&);
	void removeAllKeys();
	void removeKey(unsigned int);
	void removeKey(char const*) = imac 0x178ec0;
	bool saveRootSubDictToCompressedFile(char const*);
	bool saveRootSubDictToFile(char const*);
	gd::string saveRootSubDictToString() = m1 0x140bcc, imac 0x177d40;
	void setArrayForKey(char const*, cocos2d::CCArray*) = m1 0x144610;
	void setBoolForKey(char const*, bool, bool);
	void setBoolForKey(char const*, bool) = imac 0x17a570, m1 0x142e9c;
	void setBoolMapForKey(char const*, gd::map<gd::string, bool>&) = m1 0x1450a4;
	void setDictForKey(char const*, cocos2d::CCDictionary*) = imac 0x17ca80, m1 0x144eb4;
	void setFloatForKey(char const*, float) = imac 0x17a7a0, m1 0x143084;
	void setFloatForKey(char const*, float, bool);
	void setIntegerForKey(char const*, int) = imac 0x17a2a0, m1 0x142c30;
	void setIntegerForKey(char const*, int, bool);
	void setObjectForKey(char const*, cocos2d::CCObject*);
	void setRectArrayForKey(char const*, gd::vector<cocos2d::CCRect> const&);
	void setRectArrayForKey(char const*, gd::vector<cocos2d::CCRect> const&, bool);
	void setRectForKey(char const*, cocos2d::CCRect const&);
	void setRectForKey(char const*, cocos2d::CCRect const&, bool);
	void setStringArrayForKey(char const*, gd::vector<gd::string> const&);
	void setStringArrayForKey(char const*, gd::vector<gd::string> const&, bool);
	void setStringForKey(char const*, gd::string const&) = imac 0x17aa90, m1 0x143308;
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
	bool stepIntoSubDictWithKey(char const*) = m1 0x14113c, imac 0x178380;
	void stepOutOfSubDict();
	bool vec2FromString(gd::string const&, cocos2d::CCPoint&);
}

[[link(win, android)]]
class cocos2d::extension::CCControlColourPicker {
	static cocos2d::extension::CCControlColourPicker* colourPicker() = imac 0x356900, m1 0x2e4df4, ios 0x1ba76c;
}

[[link(win, android)]]
class cocos2d::extension::CCScale9Sprite {
	static cocos2d::extension::CCScale9Sprite* create();
	static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const* spriteFrameName) = ios inline, imac 0x3fe8f0, m1 0x377de4 {
		CCScale9Sprite* ret = new CCScale9Sprite;
		if (ret->initWithSpriteFrameName(spriteFrameName)) {
			ret->autorelease();
			return ret;
		}

		delete ret;
		return nullptr;
	}
	static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const* spriteFrameName, cocos2d::CCRect capInsets) = ios inline, imac 0x3fe810, m1 0x377ce0 {
		CCScale9Sprite* ret = new CCScale9Sprite;
		if (ret->initWithSpriteFrameName(spriteFrameName, capInsets)) {
			ret->autorelease();
			return ret;
		}

		delete ret;
		return nullptr;
	}
	static cocos2d::extension::CCScale9Sprite* create(char const* pszname) = ios inline, imac 0x3fe560, m1 0x3779d8 {
		CCScale9Sprite* ret = new CCScale9Sprite;
		if (ret->initWithFile(pszname)) {
			ret->autorelease();
			return ret;
		}

		delete ret;
		return nullptr;
	}
	static cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect) = imac 0x3fe390, m1 0x3777b4, ios 0x2261a8;

	CCScale9Sprite() = imac 0x3fc930, m1 0x3760c0, ios 0x224b84;
	~CCScale9Sprite() = imac 0x3fcb10, m1 0x376174, ios 0x224c34;

	virtual bool init() = imac 0x3fcb40, m1 0x37623c;
	virtual void setContentSize(const cocos2d::CCSize& size) = imac 0x3fdcd0, m1 0x37713c;
	virtual void visit() = m1 0x3784c4;
	virtual GLubyte getOpacity() = m1 0x378810, imac 0x3ff3b0;
	virtual void setOpacity(GLubyte opacity) = m1 0x378698;
	virtual void updateDisplayedOpacity(GLubyte parentOpacity) = m1 0x378318;
	virtual const cocos2d::ccColor3B& getColor() = m1 0x378688, imac 0x3ff210;
	virtual void setColor(const cocos2d::ccColor3B& color) = m1 0x3784f8;
	virtual void updateDisplayedColor(const cocos2d::ccColor3B& parentColor) = m1 0x378384;
	virtual void setOpacityModifyRGB(bool bValue) = m1 0x378198;
	virtual bool isOpacityModifyRGB() = m1 0x378308;
	virtual cocos2d::CCSize getPreferredSize() = m1 0x377fe8;
	virtual void setPreferredSize(cocos2d::CCSize) = m1 0x377fb4;
	virtual cocos2d::CCRect getCapInsets() = m1 0x37808c;
	virtual void setCapInsets(cocos2d::CCRect) = m1 0x377ff4;
	virtual float getInsetLeft() = m1 0x378484;
	virtual void setInsetLeft(float) = m1 0x3784a4, imac 0x3fefe0;
	virtual float getInsetTop() = m1 0x37848c;
	virtual void setInsetTop(float) = m1 0x3784ac, imac 0x3ff000;
	virtual float getInsetRight() = m1 0x378494;
	virtual void setInsetRight(float) = m1 0x3784b4, imac 0x3ff020;
	virtual float getInsetBottom() = m1 0x37849c;
	virtual void setInsetBottom(float) = m1 0x3784bc, imac 0x3ff040;
	virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = m1 0x376308;
	virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, cocos2d::CCRect) = m1 0x37629c;
	virtual bool initWithFile(const char*, cocos2d::CCRect, cocos2d::CCRect) = m1 0x377614;
	virtual bool initWithFile(const char*, cocos2d::CCRect) = m1 0x377754;
	virtual bool initWithFile(cocos2d::CCRect, const char*) = m1 0x377868;
	virtual bool initWithFile(const char*) = m1 0x377988;
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = m1 0x377a60;
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x377b98;
	virtual bool initWithSpriteFrameName(const char*, cocos2d::CCRect) = m1 0x377c70;
	virtual bool initWithSpriteFrameName(const char*) = m1 0x377d94;
	virtual bool updateWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = m1 0x3763ac;
	virtual void setSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x3783f0;
}

[[link(win, android)]]
class cocos2d::extension::CCHttpClient : cocos2d::CCObject {
	// CCHttpClient() = imac 0x441fb0, m1 0x3b3ec8;
	static cocos2d::extension::CCHttpClient* getInstance() = imac 0x441e00, m1 0x3b3cfc, ios 0x250f04;
	static void destroyInstance() = imac 0x441e60, m1 0x3b3d60;
	void send(cocos2d::extension::CCHttpRequest* request) = imac 0x442d10, m1 0x3b4ac0, ios 0x2518c4;
	bool lazyInitThreadSemphore() = imac 0x442160, m1 0x3b4074;
	void dispatchResponseCallbacks(float) = imac 0x441ea0, m1 0x3b3da4;
}

[[link(win, android)]]
class cocos2d::ZipUtils {
	static gd::string base64DecodeEnc(gd::string const&, gd::string);
	static gd::string base64EncodeEnc(gd::string const&, gd::string);
	static gd::string base64URLDecode(gd::string const&) = imac 0x2003f0;
	static gd::string base64URLEncode(gd::string const&);
	static void ccDecodeEncodedPvr(unsigned int*, int);
	static int ccDeflateMemory(unsigned char*, unsigned int, unsigned char**) = m1 0x1b1220, imac 0x1ff6c0;
	static int ccInflateCCZFile(char const*, unsigned char**);
	static int ccInflateGZipFile(char const*, unsigned char**);
	static int ccInflateMemory(unsigned char*, unsigned int, unsigned char**);
	static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int*, unsigned int);
	static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int);
	static void ccSetPvrEncryptionKey(unsigned int, unsigned int, unsigned int, unsigned int);
	static void ccSetPvrEncryptionKeyPart(int, unsigned int);
	static gd::string compressString(gd::string const&, bool, int) = m1 0x1b0f10, imac 0x1ff430;
	static gd::string decompressString2(unsigned char*, bool, int, int);
	static gd::string decompressString(gd::string const&, bool, int) = imac 0x1ffaf0, m1 0x1b1664;
	static gd::string encryptDecrypt(gd::string const&, int);
	static gd::string encryptDecryptWKey(gd::string const&, gd::string);
	static unsigned char hexToChar(gd::string const&);
	static gd::string urlDecode(gd::string const&);
}

[[link(win, android)]]
class cocos2d::CCSpeed {
	static cocos2d::CCSpeed* create(cocos2d::CCActionInterval*, float) = imac 0x5feea0;

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
	xml_document() = m1 0x56bb98, imac 0x64d800;
	~xml_document() = m1 0x56bcec, imac 0x64d950;
}

[[link(win, android)]]
class pugi::xml_node {
	// i'm not bothering
	xml_node() = m1 inline, imac inline {
		_root = nullptr;
	}
}
