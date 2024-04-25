[[link(win, android)]]
class cocos2d::CCMotionStreak {
	static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::_ccColor3B const&, cocos2d::CCTexture2D*);
	static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::_ccColor3B const&, char const*);

	bool initWithFade(float, float, float, cocos2d::_ccColor3B const&, cocos2d::CCTexture2D*);
	bool initWithFade(float, float, float, cocos2d::_ccColor3B const&, char const*);

	bool getDontOpacityFade() const;
	float getM_fMaxSeg() const;

	void setDontOpacityFade(bool);
	void setFastMode(bool);
	void setM_fMaxSeg(float);
	void setStartingPositionInitialized(bool);
	void setStroke(float);

	// CCMotionStreak(cocos2d::CCMotionStreak const&);
	// CCMotionStreak();
	void enableRepeatMode(float);
	bool isFastMode();
	bool isStartingPositionInitialized();
	void reset() = ios 0x17e5f0;
	void resumeStroke();
	void stopStroke();
	void tintWithColor(cocos2d::_ccColor3B);
	void updateFade(float);

	virtual void update(float);
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void draw();

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
class cocos2d::CCScene {
	static cocos2d::CCScene* create() = ios 0x248dd0;

	int getHighestChildZ() = ios 0x248e44;

	// CCScene(cocos2d::CCScene const&);
	// CCScene();
	~CCScene() = ios 0x248d60;

	virtual bool init();
}

[[link(win, android)]]
class cocos2d::CCParticleSystem {
	static cocos2d::CCParticleSystem* create(char const*);
	static cocos2d::CCParticleSystem* createWithTotalParticles(unsigned int);

	void initParticle(cocos2d::sCCParticle*);
	bool initWithDictionary(cocos2d::CCDictionary*, char const*, bool);
	bool initWithDictionary(cocos2d::CCDictionary*, bool);
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
	bool addParticle();
	void calculateWorldSpace();
	bool isFull();
	void loadDefaults();
	void loadScaledDefaults(float);
	void resetSystem() = ios 0x19bfc8;
	void resumeSystem() = ios 0x19bfbc;
	void saveDefaults() = ios 0x19b1d4;
	void stopSystem() = ios 0x19bfa8;
	void toggleUniformColorMode(bool);
	void updateVisible();

	virtual void update(float);
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
class cocos2d::CCCallFunc {
	static cocos2d::CCCallFunc* create(int);
	static cocos2d::CCCallFunc* create(cocos2d::CCObject*, cocos2d::SEL_CallFunc) = ios 0x1b42e8;

	int getScriptHandler();
	cocos2d::CCObject* getTargetCallback();

	void setTargetCallback(cocos2d::CCObject*);

	// CCCallFunc(cocos2d::CCCallFunc const&);
	// CCCallFunc();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual bool initWithTarget(cocos2d::CCObject*) = ios 0x1b438c;
	virtual void execute();
}

[[link(win, android)]]
class cocos2d::CCParticleSystemQuad {
	static cocos2d::CCParticleSystemQuad* create(char const*, bool);
	static cocos2d::CCParticleSystemQuad* create();
	static cocos2d::CCParticleSystemQuad* createWithTotalParticles(unsigned int, bool);

	void initIndices();
	void initTexCoordsWithRect(cocos2d::CCRect const&);

	unsigned char getOpacity();

	void setDisplayFrame(cocos2d::CCSpriteFrame*) = ios 0x25b910;
	void setOpacity(unsigned char);
	void setTextureWithRect(cocos2d::CCTexture2D*, cocos2d::CCRect const&);

	// CCParticleSystemQuad(cocos2d::CCParticleSystemQuad const&);
	// CCParticleSystemQuad();
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
class cocos2d::CCFileUtils {
	// CCFileUtils();
	// CCFileUtils(cocos2d::CCFileUtils const&);
	virtual void addSearchPath(char const*) = ios 0x15abb0;
	virtual void addSearchResolutionsOrder(char const*) = ios 0x15a74c;
	virtual gd::string addSuffix(gd::string, gd::string) = ios 0x159924;
	virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(gd::string const&) = ios 0x23fa94;
	virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(gd::string const&) = ios 0x23f250;
	virtual gd::string fullPathForFilename(char const*, bool) = ios 0x159d1c;
	virtual char const* fullPathFromRelativeFile(char const*, char const*) = ios 0x15a3a0;
	gd::string getAndroidPath() const;
	virtual unsigned char* getFileData(char const*, char const*, unsigned long*);
	virtual unsigned char* getFileDataFromZip(char const*, char const*, unsigned long*);
	virtual gd::string getFullPathForDirectoryAndFilename(gd::string const&, gd::string const&) = ios 0x23f0d8;
	virtual gd::string getNewFilename(char const*) = ios 0x159858;
	virtual gd::string getPathForFilename(gd::string const&, gd::string const&, gd::string const&);
	virtual gd::vector<gd::string> const& getSearchPaths();
	virtual gd::vector<gd::string> const& getSearchResolutionsOrder();
	virtual gd::string getWritablePath2();
	virtual bool init() = ios 0x159444;
	virtual bool isAbsolutePath(gd::string const&) = ios 0x23f224;
	virtual bool isPopupNotify() = ios 0x15b178;
	virtual void loadFilenameLookupDictionaryFromFile(char const*) = ios 0x15af6c;
	virtual void purgeCachedEntries();
	static void purgeFileUtils() = ios 0x159354;
	void removeAllPaths();
	virtual void removeFullPath(char const*);
	virtual void removeSearchPath(char const*) = ios 0x15ace0;
	void setAndroidPath(gd::string);
	virtual void setFilenameLookupDictionary(cocos2d::CCDictionary*) = ios 0x15af04;
	virtual void setPopupNotify(bool) = ios 0x15b16c;
	virtual void setSearchPaths(gd::vector<gd::string> const&) = ios 0x15a8b4;
	virtual void setSearchResolutionsOrder(gd::vector<gd::string> const&) = ios 0x15a50c;
	static cocos2d::CCFileUtils* sharedFileUtils() = ios 0x23eddc;
	virtual bool shouldUseHD() = ios 0x159900;
	virtual bool writeToFile(cocos2d::CCDictionary*, gd::string const&) = ios 0x23f89c;
}

[[link(win, android)]]
class cocos2d::CCNode {
	static cocos2d::CCNode* create() = ios 0x244170;
	static void resetGlobalOrderOfArrival() = ios 0x24388c;

	// CCNode(cocos2d::CCNode const&);
	CCNode() = ios 0x24389c;
	~CCNode() = ios 0x2439f8;

	cocos2d::CCAction* getActionByTag(int) = ios 0x244fbc;
	cocos2d::CCComponent* getComponent(char const*) const;
	int getScriptHandler();
	cocos2d::CCAffineTransform getTransformTemp();
	bool getUseChildIndex();

	void setAdditionalTransform(cocos2d::CCAffineTransform const&);
	void setUseChildIndex(bool);

	cocos2d::CCRect boundingBox() = ios 0x244110;
	void childrenAlloc();
	cocos2d::CCPoint convertToNodeSpace(cocos2d::CCPoint const&) = ios 0x245994;
	cocos2d::CCPoint convertToNodeSpaceAR(cocos2d::CCPoint const&);
	cocos2d::CCPoint convertToWindowSpace(cocos2d::CCPoint const&);
	cocos2d::CCPoint convertToWorldSpace(cocos2d::CCPoint const&) = ios 0x2459dc;
	cocos2d::CCPoint convertToWorldSpaceAR(cocos2d::CCPoint const&);
	cocos2d::CCPoint convertTouchToNodeSpace(cocos2d::CCTouch*);
	cocos2d::CCPoint convertTouchToNodeSpaceAR(cocos2d::CCTouch*);
	char const* description();
	void detachChild(cocos2d::CCNode*, bool);
	void insertChild(cocos2d::CCNode*, int) = ios 0x2443e8;
	unsigned int numberOfRunningActions();
	void pauseSchedulerAndActions() = ios 0x244e6c;
	void qsortAllChildrenWithIndex();
	void resumeSchedulerAndActions() = ios 0x244c6c;
	cocos2d::CCAction* runAction(cocos2d::CCAction*) = ios 0x244f78;
	// ill be honest those are so annoying to figure out
	void schedule(cocos2d::SEL_SCHEDULE selector) {
		this->schedule(selector, 0.0f, kCCRepeatForever, 0.0f);
	}

	void schedule(cocos2d::SEL_SCHEDULE selector, float interval) {
		this->schedule(selector, interval, kCCRepeatForever, 0.0f);
	}

	void schedule(cocos2d::SEL_SCHEDULE selector, float interval, unsigned int repeat, float delay) {
		m_pScheduler->scheduleSelector(selector, this, interval , repeat, delay, !m_bRunning);
	}

	void scheduleOnce(cocos2d::SEL_SCHEDULE selector, float delay) {
		this->schedule(selector, 0.0f, 0, delay);
	}

	void scheduleUpdate() = ios 0x245020;
	void scheduleUpdateWithPriority(int);
	void scheduleUpdateWithPriorityLua(int, int);
	void sortAllChildrenNoIndex();
	void sortAllChildrenWithIndex() = ios 0x2448dc;
	void stopAction(cocos2d::CCAction*);
	void stopActionByTag(int) = ios 0x244fb0;
	void stopAllActions() = ios 0x244280;
	void transform() = ios 0x244acc;
	void transformAncestors();
	void unschedule(cocos2d::SEL_SCHEDULE) = ios 0x2450e8;
	void unscheduleAllSelectors() = ios 0x24428c;
	void unscheduleUpdate();
	void updateChildIndexes();

	virtual unsigned int getChildrenCount() const = ios 0x243e14;
	virtual cocos2d::CCSize const& getContentSize() const = ios 0x243f58;
	virtual void update(float) = ios 0x245114;
	virtual bool init() = ios 0x243b30;
	virtual void setZOrder(int) = ios 0x243b80;
	virtual void _setZOrder(int) = ios 0x243b78;
	virtual int getZOrder() = ios 0x243b70;
	virtual void setVertexZ(float) = ios 0x243bd8;
	virtual float getVertexZ() = ios 0x243bd0;
	virtual void setScaleX(float) = ios 0x243c88;
	virtual float getScaleX() = ios 0x243c80;
	virtual void setScaleY(float) = ios 0x243ca4;
	virtual float getScaleY() = ios 0x243c9c;
	virtual void setScale(float) = ios 0x243c58;
	virtual float getScale() = ios 0x243c50;
	virtual void setScale(float, float) = ios 0x243c6c;
	virtual void setPosition(cocos2d::CCPoint const&) = ios 0x243cc0;
	virtual cocos2d::CCPoint const& getPosition() = ios 0x243cb8;
	virtual void setPosition(float, float) = ios 0x243cec;
	virtual void getPosition(float*, float*) = ios 0x243cd8;
	virtual void setPositionX(float) = ios 0x243d3c;
	virtual float getPositionX() = ios 0x243d2c;
	virtual void setPositionY(float) = ios 0x243d80;
	virtual float getPositionY() = ios 0x243d34;
	virtual void setSkewX(float) = ios 0x243b40;
	virtual float getSkewX() = ios 0x243b38;
	virtual void setSkewY(float) = ios 0x243b5c;
	virtual float getSkewY() = ios 0x243b54;
	virtual void setAnchorPoint(cocos2d::CCPoint const&) = ios 0x243ed8;
	virtual cocos2d::CCPoint const& getAnchorPoint() = ios 0x243ed0;
	virtual cocos2d::CCPoint const& getAnchorPointInPoints() = ios 0x243ec8;
	virtual void setContentSize(cocos2d::CCSize const&) = ios 0x243f98;
	virtual cocos2d::CCSize getScaledContentSize() = ios 0x243f60;
	virtual void setVisible(bool) = ios 0x243ec0;
	virtual bool isVisible() = ios 0x243eb8;
	virtual void setRotation(float) = ios 0x243be8;
	virtual float getRotation() = ios 0x243be0;
	virtual void setRotationX(float) = ios 0x243c20;
	virtual float getRotationX() = ios 0x243c18;
	virtual void setRotationY(float) = ios 0x243c3c;
	virtual float getRotationY() = ios 0x243c34;
	virtual void setOrderOfArrival(unsigned int) = ios 0x244070;
	virtual unsigned int getOrderOfArrival() = ios 0x244068;
	virtual void setGLServerState(cocos2d::ccGLServerState) = ios 0x244090;
	virtual cocos2d::ccGLServerState getGLServerState() = ios 0x244088;
	virtual void ignoreAnchorPointForPosition(bool) = ios 0x244038;
	virtual bool isIgnoreAnchorPointForPosition() = ios 0x244030;
	virtual void addChild(cocos2d::CCNode*) = ios 0x24444c;
	virtual void addChild(cocos2d::CCNode*, int) = ios 0x24443c;
	virtual void addChild(cocos2d::CCNode*, int, int) = ios 0x24431c;
	virtual cocos2d::CCNode* getChildByTag(int) = ios 0x244298;
	virtual cocos2d::CCArray* getChildren() = ios 0x243dc8;
	virtual void setParent(cocos2d::CCNode*) = ios 0x244028;
	virtual cocos2d::CCNode* getParent() = ios 0x244020;
	virtual void removeFromParent() = ios 0x244460;
	virtual void removeFromParentAndCleanup(bool) = ios 0x244470;
	virtual void removeMeAndCleanup() = ios 0x244490;
	virtual void removeChild(cocos2d::CCNode*) = ios 0x2444a0;
	virtual void removeChild(cocos2d::CCNode*, bool) = ios 0x2444b0;
	virtual void removeChildByTag(int) = ios 0x244568;
	virtual void removeChildByTag(int, bool) = ios 0x244578;
	virtual void removeAllChildren() = ios 0x2445c8;
	virtual void removeAllChildrenWithCleanup(bool) = ios 0x2445d8;
	virtual void reorderChild(cocos2d::CCNode*, int) = ios 0x2446bc;
	virtual void sortAllChildren() = ios 0x244784;
	virtual cocos2d::CCGridBase* getGrid() = ios 0x243e74;
	virtual void setGrid(cocos2d::CCGridBase*) = ios 0x243e7c;
	virtual void* getUserData() = ios 0x244058;
	virtual void setUserData(void*) = ios 0x244060;
	virtual cocos2d::CCObject* getUserObject() = ios 0x244080;
	virtual void setUserObject(cocos2d::CCObject*) = ios 0x244098;
	virtual cocos2d::CCGLProgram* getShaderProgram() = ios 0x244078;
	virtual void setShaderProgram(cocos2d::CCGLProgram*) = ios 0x2440d4;
	virtual cocos2d::CCCamera* getCamera() = ios 0x243e24;
	virtual bool isRunning() = ios 0x244018;
	virtual void registerScriptHandler(int) = ios 0x244eb0;
	virtual void unregisterScriptHandler() = ios 0x244ee0;
	virtual void onEnter() = ios 0x244bac;
	virtual void onEnterTransitionDidFinish() = ios 0x244cb0;
	virtual void onExit() = ios 0x244dcc;
	virtual void onExitTransitionDidStart() = ios 0x244d34;
	virtual void cleanup() = ios 0x2441e4;
	virtual void draw() = ios 0x244990;
	virtual void visit() = ios 0x244994;
	virtual void setActionManager(cocos2d::CCActionManager*) = ios 0x244f20;
	virtual cocos2d::CCActionManager* getActionManager() = ios 0x244f70;
	virtual void setScheduler(cocos2d::CCScheduler*) = ios 0x244fc8;
	virtual cocos2d::CCScheduler* getScheduler() = ios 0x245018;
	virtual void updateTransform() = ios 0x245a84;
	virtual cocos2d::CCAffineTransform const nodeToParentTransform() = ios 0x245194;
	virtual cocos2d::CCAffineTransform const nodeToParentTransformFast() = ios 0x245438;
	virtual cocos2d::CCAffineTransform const parentToNodeTransform() = ios 0x2457c8;
	virtual cocos2d::CCAffineTransform nodeToWorldTransform() = ios 0x24583c;
	virtual cocos2d::CCAffineTransform nodeToWorldTransformFast() = ios 0x2458c8;
	virtual cocos2d::CCAffineTransform worldToNodeTransform() = ios 0x245954;
	virtual bool addComponent(cocos2d::CCComponent*) = ios 0x245ae0;
	virtual bool removeComponent(char const*) = ios 0x245af0;
	virtual bool removeComponent(cocos2d::CCComponent*) = ios 0x245b00;
	virtual void removeAllComponents() = ios 0x245b10;
	virtual void updateTweenAction(float, char const*) = ios 0x245a7c;
	virtual void updateTweenActionInt(float, int) = ios 0x245a80;
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
	void pauseTarget(cocos2d::CCObject*) = ios 0x1b1ed0;
	void priorityIn(cocos2d::_listEntry**, cocos2d::CCObject*, int, bool);
	void removeHashElement(cocos2d::_hashSelectorEntry*);
	void removeUpdateFromHash(cocos2d::_listEntry*);
	void resumeTarget(cocos2d::CCObject*);
	void resumeTargets(cocos2d::CCSet*);
	unsigned int scheduleScriptFunc(unsigned int, float, bool);
	void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, unsigned int, float, bool) = ios 0x1b0934;
	void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, bool) = ios 0x1b0924;
	void scheduleUpdateForTarget(cocos2d::CCObject*, int, bool);
	void unscheduleAll();
	void unscheduleAllForTarget(cocos2d::CCObject*) = ios 0x1b1b3c;
	void unscheduleAllWithMinPriority(int);
	void unscheduleScriptEntry(unsigned int);
	void unscheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*) = ios 0x1b052c;
	void unscheduleUpdateForTarget(cocos2d::CCObject const*);

	virtual void update(float) = ios 0x1b20c8;
}

[[link(win, android)]]
class cocos2d::CCLayer {
	static cocos2d::CCLayer* create() = ios 0x150918;

	// CCLayer(cocos2d::CCLayer const&);
	CCLayer() = ios 0x150758;
	~CCLayer() = ios 0x150884;

	cocos2d::CCScriptHandlerEntry* getScriptAccelerateHandlerEntry();
	cocos2d::CCScriptHandlerEntry* getScriptKeypadHandlerEntry();
	cocos2d::CCTouchScriptHandlerEntry* getScriptTouchHandlerEntry();

	int excuteScriptTouchHandler(int, cocos2d::CCSet*);
	int excuteScriptTouchHandler(int, cocos2d::CCTouch*);
	void registerScriptAccelerateHandler(int);
	void registerScriptKeypadHandler(int);
	void unregisterScriptAccelerateHandler();
	void unregisterScriptKeypadHandler();

	virtual bool init() = ios 0x1508bc;
	virtual void onEnter() = ios 0x150fa8;
	virtual void onEnterTransitionDidFinish() = ios 0x15113c;
	virtual void onExit() = ios 0x151074;
	virtual void registerWithTouchDispatcher() = ios 0x15098c;
	virtual void registerScriptTouchHandler(int, bool, int, bool) = ios 0x1509f8;
	virtual void unregisterScriptTouchHandler() = ios 0x150a58;
	virtual bool isTouchEnabled() = ios 0x150a84;
	virtual void setTouchEnabled(bool) = ios 0x150a8c;
	virtual void setTouchMode(cocos2d::ccTouchesMode) = ios 0x150afc;
	virtual int getTouchMode() = ios 0x150bcc;
	virtual void setTouchPriority(int) = ios 0x150b60;
	virtual int getTouchPriority() = ios 0x150bc4;
	virtual bool isAccelerometerEnabled() = ios 0x150bd4;
	virtual void setAccelerometerEnabled(bool) = ios 0x150bdc;
	virtual void setAccelerometerInterval(double) = ios 0x150c40;
	virtual bool isKeypadEnabled() = ios 0x150d24;
	virtual void setKeypadEnabled(bool) = ios 0x150d2c;
	virtual bool isKeyboardEnabled() = ios 0x150da0;
	virtual void setKeyboardEnabled(bool) = ios 0x150da8;
	virtual bool isMouseEnabled() = ios 0x150e10;
	virtual void setMouseEnabled(bool) = ios 0x150e18;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x15117c;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x15122c;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x1512cc;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x15136c;
	virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x15140c;
	virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x1514ac;
	virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x15154c;
	virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x1515ec;
	virtual void setPreviousPriority(int) = ios 0xe0e8;
	virtual int getPreviousPriority() = ios 0xe0f0;

	virtual void didAccelerate(cocos2d::CCAcceleration*) = ios 0x150c8c;

	virtual void keyBackClicked() = ios 0x150e80;
	virtual void keyMenuClicked() = ios 0x150edc;

	virtual void keyDown(cocos2d::enumKeyCodes) = ios 0x150f6c;
}

[[link(win, android)]]
class cocos2d::CCObject {
	static cocos2d::CCObject* createWithCoder(DS_Dictionary*);

	// CCObject(cocos2d::CCObject const&);
	CCObject() = ios 0x8a97c;
	~CCObject() = ios 0x8a9c4;

	cocos2d::CCObjectType getObjType() const;

	void setObjType(cocos2d::CCObjectType);

	cocos2d::CCObject* autorelease() = ios 0x8aab0;
	cocos2d::CCObject* copy() = ios 0x8aa6c;
	bool isSingleReference() const;
	void release() = ios 0x8aa7c;
	void retain() = ios 0x8aaa0;
	unsigned int retainCount() const;

	virtual int getTag() const = ios 0x8ab00;
	virtual bool isEqual(cocos2d::CCObject const*) = ios 0x8aadc;
	virtual void acceptVisitor(cocos2d::CCDataVisitor&) = ios 0x8aae8;
	virtual void encodeWithCoder(DS_Dictionary*) = ios 0x8ab10;
	virtual bool canEncode() = ios 0x8ab1c;
	virtual void setTag(int) = ios 0x8ab08;
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
	static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&) = ios 0x151cd4;
	static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&, float, float) = ios 0x151bf8;
	static cocos2d::CCLayerColor* create();

	// CCLayerColor(cocos2d::CCLayerColor const&);
	CCLayerColor() = ios 0x151b38;
	~CCLayerColor() = ios 0x151ba0;

	void setVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);

	void addToVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);
	void changeHeight(float);
	void changeWidth(float);
	void changeWidthAndHeight(float, float);

	virtual bool init() = ios 0x151d98;
	virtual void setContentSize(cocos2d::CCSize const&) = ios 0x151f48;
	virtual void draw() = ios 0x151fb4;
	virtual bool initWithColor(cocos2d::_ccColor4B const&, float, float) = ios 0x151de4;
	virtual bool initWithColor(cocos2d::_ccColor4B const&) = ios 0x151eb0;
	virtual void updateColor() = ios 0x151f60;

	virtual void setColor(cocos2d::_ccColor3B const&) = ios 0x152080;
	virtual void setOpacity(unsigned char) = ios 0x1520dc;

	virtual void setBlendFunc(cocos2d::_ccBlendFunc) = ios 0x151be8;
	virtual cocos2d::_ccBlendFunc getBlendFunc() = ios 0x151bd8;
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA {
	static cocos2d::CCLayerRGBA* create();

	// CCLayerRGBA(cocos2d::CCLayerRGBA const&);
	CCLayerRGBA() = ios 0x15168c;
	~CCLayerRGBA() = ios 0x1516e0;

	virtual bool init() = ios 0x151718;

	virtual void setColor(cocos2d::_ccColor3B const&) = ios 0x151854;
	virtual cocos2d::_ccColor3B const& getColor() = ios 0x151834;
	virtual cocos2d::_ccColor3B const& getDisplayedColor() = ios 0x151844;
	virtual unsigned char getDisplayedOpacity() = ios 0x151784;
	virtual unsigned char getOpacity() = ios 0x151774;
	virtual void setOpacity(unsigned char) = ios 0x151794;
	virtual bool isCascadeColorEnabled() = ios 0x151b18;
	virtual void setCascadeColorEnabled(bool) = ios 0x151b28;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = ios 0x1519f0;
	virtual bool isCascadeOpacityEnabled() = ios 0x151af8;
	virtual void setCascadeOpacityEnabled(bool) = ios 0x151b08;
	virtual void updateDisplayedOpacity(unsigned char) = ios 0x151924;
}

[[link(win, android)]]
class cocos2d::CCMouseDispatcher {
	// CCMouseDispatcher(cocos2d::CCMouseDispatcher const&);
	// CCMouseDispatcher();
	void addDelegate(cocos2d::CCMouseDelegate*) = ios 0x305108;
	bool dispatchScrollMSG(float, float);
	void forceAddDelegate(cocos2d::CCMouseDelegate*) = ios 0x305150;
	void forceRemoveDelegate(cocos2d::CCMouseDelegate*);
	void removeDelegate(cocos2d::CCMouseDelegate*) = ios 0x1b3cac;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInT {
	static cocos2d::CCTransitionMoveInT* create(float, cocos2d::CCScene*) = ios 0x1d1cbc;

	// CCTransitionMoveInT(cocos2d::CCTransitionMoveInT const&);
	// CCTransitionMoveInT();

	virtual void initScenes();
}

[[link(win, android)]]
class cocos2d::CCCamera {
	static float getZEye();

	void init();

	void getCenterXYZ(float*, float*, float*);
	void getEyeXYZ(float* pEyeX, float* pEyeY, float* pEyeZ) {
		*pEyeX = m_fEyeX;
		*pEyeY = m_fEyeY;
		*pEyeZ = m_fEyeZ;
	}
	void getUpXYZ(float*, float*, float*);

	void setCenterXYZ(float, float, float);
	void setDirty(bool);
	void setEyeXYZ(float, float, float);
	void setUpXYZ(float, float, float);

	// CCCamera();
	char const* description();
	bool isDirty();
	void locate();
	void restore();
}

[[link(win, android)]]
class cocos2d::CCTouchHandler {
	static cocos2d::CCTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int);

	cocos2d::CCTouchDelegate* getDelegate() {
		return m_pDelegate;
	}
	int getEnabledSelectors();
	int getPriority() {
		return m_nPriority;
	}

	void setDelegate(cocos2d::CCTouchDelegate* delegate) {
		m_pDelegate = delegate;
	}
	void setEnalbedSelectors(int);
	void setPriority(int prio) {
		m_nPriority = prio;
	}

	// CCTouchHandler(cocos2d::CCTouchHandler const&);
	// CCTouchHandler();

	virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int);
}

[[link(win, android)]]
class cocos2d::CCTouchDispatcher {
	bool init() = ios 0x156dd8;

	int getTargetPrio() const;

	void setDispatchEvents(bool) = ios 0x156dd0;

	void setPriority(int p1, cocos2d::CCTouchDelegate* p2) {
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
	void addPrioTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = ios 0x156ffc;
	void addStandardDelegate(cocos2d::CCTouchDelegate*, int) = ios 0x157200;
	void addTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = ios 0x157014;
	void decrementForcePrio(int);
	cocos2d::CCTouchHandler* findHandler(cocos2d::CCArray*, cocos2d::CCTouchDelegate*) = ios 0x157400;
	cocos2d::CCTouchHandler* findHandler(cocos2d::CCTouchDelegate*) = ios 0x1574b8;
	void forceAddHandler(cocos2d::CCTouchHandler*, cocos2d::CCArray*) = ios 0x157124;
	void forceRemoveAllDelegates();
	void forceRemoveDelegate(cocos2d::CCTouchDelegate*) = ios 0x157294;
	void incrementForcePrio(int);
	bool isDispatchEvents();
	bool isUsingForcePrio() = ios 0x156fec;
	void rearrangeHandlers(cocos2d::CCArray* handlers) {
		std::sort(handlers->data->arr, handlers->data->arr + handlers->data->num, [](const CCObject* p1, const CCObject* p2) {
			return ((CCTouchHandler*)p1)->getPriority() < ((CCTouchHandler*)p2)->getPriority();
		});
	}
	void registerForcePrio(cocos2d::CCObject*, int) = ios 0x156f0c;
	void removeAllDelegates();
	void removeDelegate(cocos2d::CCTouchDelegate*) = ios 0x157384;
	void touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int) = ios 0x157580;
	void unregisterForcePrio(cocos2d::CCObject*) = ios 0x156f88;

	virtual void touchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x157968;
	virtual void touchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x157994;
	virtual void touchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x1579c0;
	virtual void touchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x1579ec;
}

[[link(win, android)]]
class cocos2d::CCEaseIn {
	static cocos2d::CCEaseIn* create(cocos2d::CCActionInterval*, float) = ios 0x2739b8;

	// CCEaseIn(cocos2d::CCEaseIn const&);
	// CCEaseIn();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCTouchDelegate {
	// CCTouchDelegate(cocos2d::CCTouchDelegate const&);
	// CCTouchDelegate();

	virtual void setPreviousPriority(int) {}
	virtual int getPreviousPriority() { return 0; }
}

[[link(win, android)]]
class cocos2d::CCMoveTo {
	static cocos2d::CCMoveTo* create(float, cocos2d::CCPoint const&) = ios 0x192864;

	bool initWithDuration(float, cocos2d::CCPoint const&);

	// CCMoveTo(cocos2d::CCMoveTo const&);
	// CCMoveTo();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCTextureCache {
	static void purgeSharedTextureCache() = ios 0x113834;
	static void reloadAllTextures();
	static cocos2d::CCTextureCache* sharedTextureCache() = ios 0x113704;

	// CCTextureCache(cocos2d::CCTextureCache const&);
	// CCTextureCache();
	cocos2d::CCTexture2D* addETCImage(char const*);
	cocos2d::CCTexture2D* addImage(char const*, bool) = ios 0x1142dc;
	void addImageAsync(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler, int, cocos2d::CCTexture2DPixelFormat) = ios 0x113894;
	void addImageAsyncCallBack(float) = ios 0x1140c4;
	cocos2d::CCTexture2D* addPVRImage(char const*);
	cocos2d::CCTexture2D* addUIImage(cocos2d::CCImage*, char const*) = ios 0x114c60;
	char const* description();
	void dumpCachedTextureInfo();
	void prepareAsyncLoading() = ios 0x113860;
	bool reloadTexture(char const*);
	void removeAllTextures();
	void removeTexture(cocos2d::CCTexture2D*);
	void removeTextureForKey(char const*) = ios 0x114de0;
	void removeUnusedTextures();
	cocos2d::CCDictionary* snapshotTextures();
	cocos2d::CCTexture2D* textureForKey(char const*) = ios 0x114e60;
}

[[link(win, android)]]
class cocos2d::CCGLProgram {
	bool initWithVertexShaderByteArray(char const*, char const*) = ios 0x139de0;
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
	void setUniformLocationWith4fv(int, float*, unsigned int) = ios 0x13a85c;
	void setUniformLocationWith4i(int, int, int, int, int);
	void setUniformLocationWith4iv(int, int*, unsigned int);
	void setUniformLocationWithMatrix3fv(int, float*, unsigned int);
	void setUniformLocationWithMatrix4fv(int, float*, unsigned int);
	void setUniformsForBuiltins() = ios 0x13a908;

	// CCGLProgram(cocos2d::CCGLProgram const&);
	// CCGLProgram();
	void addAttribute(char const*, unsigned int) = ios 0x139f5c;
	bool compileShader(unsigned int*, unsigned int, char const*) = ios 0x139e84;
	char const* description();
	char const* fragmentShaderLog();
	bool link() = ios 0x13a0c4;
	// char const* logForOpenGLObject(unsigned int, void (__cdecl*)(unsigned int, unsigned int, int*), void (__cdecl*)(unsigned int, int, int*, char*));
	char const* programLog();
	void reset() = ios 0x13aaa4;
	bool updateUniformLocation(int, void*, unsigned int);
	void updateUniforms() = ios 0x139f70;
	void use() = ios 0x13a068;
	char const* vertexShaderLog();
}

[[link(win, android)]]
class cocos2d::CCEGLViewProtocol {
    CCEGLViewProtocol() = win 0xbac00;
    virtual ~CCEGLViewProtocol() = win 0xbacc0;
    const cocos2d::CCRect& getViewPortRect() const {
		return m_obViewPortRect;
	}
    auto getScaleX() const;
    auto getScaleY() const;
    virtual auto setDesignResolutionSize(float, float, ResolutionPolicy);
	virtual void setFrameSize(float, float);
}

[[link(win)]]
class cocos2d::CCEGLView {
	// CCEGLView();
	// CCEGLView(cocos2d::CCEGLView const&);
	virtual void swapBuffers() = ios 0x12f6c8;
	// rest are in extras
}

[[link(win, android)]]
class cocos2d::CCIMEDelegate {
	CCIMEDelegate() = mac 0x4970a0;
	~CCIMEDelegate() = ios 0x1d66d8;
	virtual bool attachWithIME() = mac 0x497440;
	virtual bool detachWithIME() = mac 0x497630;
	virtual void deleteForward() {}
}

[[link(win, android)]]
class cocos2d::CCIMEDispatcher {
	static cocos2d::CCIMEDispatcher* sharedDispatcher();

	// CCIMEDispatcher();

	void addDelegate(cocos2d::CCIMEDelegate*);
	bool attachDelegateWithIME(cocos2d::CCIMEDelegate*);
	bool detachDelegateWithIME(cocos2d::CCIMEDelegate*);
	void dispatchDeleteBackward();
	void dispatchDeleteForward();
	void dispatchInsertText(char const*, int, cocos2d::enumKeyCodes);
	void dispatchKeyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&);
	void dispatchKeyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&);
	void dispatchKeyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
	void dispatchKeyboardWillHide();
	void dispatchKeyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
	char const* getContentText();
	bool hasDelegate();
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
	void addDelegate(cocos2d::CCKeyboardDelegate*) = ios 0x2426d4;
	bool dispatchKeyboardMSG(cocos2d::enumKeyCodes, bool, bool);
	void forceAddDelegate(cocos2d::CCKeyboardDelegate*);
	void forceRemoveDelegate(cocos2d::CCKeyboardDelegate*);
	char const* keyToString(cocos2d::enumKeyCodes);
	void removeDelegate(cocos2d::CCKeyboardDelegate*);
	void updateModifierKeys(bool, bool, bool, bool);
}

[[link(win, android)]]
class cocos2d::CCDirector {
	static cocos2d::CCDirector* sharedDirector() = ios 0x17bf5c;

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
	float getScreenBottom();
	float getScreenLeft();
	float getScreenRight();
	float getScreenScaleFactor();
	float getScreenScaleFactorH();
	float getScreenScaleFactorMax();
	float getScreenScaleFactorW();
	float getScreenTop();
	float getSecondsPerFrame();
	bool getSmoothFix() const;
	bool getSmoothFixCheck() const;
	int getSmoothFixCounter() const;
	unsigned int getTotalFrames();
	cocos2d::CCPoint getVisibleOrigin();
	cocos2d::CCSize getVisibleSize() = ios 0x17cf08;
	cocos2d::CCSize getWinSize() = ios 0x17cbe4;
	cocos2d::CCSize getWinSizeInPixels() = ios 0x17ceec;
	float getZEye();

	void setActualDeltaTime(float);
	void setAlphaBlending(bool);
	void setContentScaleFactor(float);
	void setDefaultValues() = ios 0x17c23c;
	void setDelegate(cocos2d::CCDirectorDelegate*);
	void setDeltaTime(float);
	void setDepthTest(bool) = ios 0x17c4e4;
	void setDisplayStats(bool);
	void setDontCallWillSwitch(bool);
	void setGLDefaultValues();
	void setNextDeltaTimeZero(bool);
	void setNextScene() = ios 0x17c7b4;
	void setNotificationNode(cocos2d::CCNode*);
	void setOpenGLView(cocos2d::CCEGLView*) = ios 0x17ca28;
	void setProjection(cocos2d::ccDirectorProjection) = ios 0x17c514;
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
	cocos2d::CCPoint convertToGL(cocos2d::CCPoint const&) = ios 0x17cde4;
	cocos2d::CCPoint convertToUI(cocos2d::CCPoint const&);
	void createStatsLabel();
	void drawScene() = ios 0x17c68c;
	void end() = ios 0x17d190;
	bool isDisplayStats();
	bool isNextDeltaTimeZero();
	bool isPaused();
	bool isSendCleanupToScene();
	int levelForSceneInStack(cocos2d::CCScene*);
	void pause() = ios 0x17d4f4;
	void popScene();
	bool popSceneWithTransition(float, cocos2d::PopTransition) = ios 0x17d19c;
	void popToRootScene();
	void popToSceneInStack(cocos2d::CCScene*);
	void popToSceneStackLevel(int);
	void purgeCachedData();
	void purgeDirector();
	bool pushScene(cocos2d::CCScene*) = ios 0x17cfb0;
	void removeStatsLabel() = ios 0x17d580;
	bool replaceScene(cocos2d::CCScene*) = ios 0x17d038;
	void resetSmoothFixCounter();
	void reshapeProjection(cocos2d::CCSize const&);
	void resume();
	void runWithScene(cocos2d::CCScene*) = ios 0x17cf84;
	int sceneCount() = ios 0x17d354;
	void setupScreenScale(cocos2d::CCSize, cocos2d::CCSize, cocos2d::TextureQuality);
	void showFPSLabel() = ios 0x17c958;
	void showStats() = ios 0x17c8c0;
	void toggleShowFPS(bool, gd::string, cocos2d::CCPoint);
	void updateContentScale(cocos2d::TextureQuality) = ios 0x17ccfc;
	void updateScreenScale(cocos2d::CCSize);
	void willSwitchToScene(cocos2d::CCScene*) = ios 0x17cf2c;

	virtual bool init() = ios 0x17c030;
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
	CCNodeRGBA() = ios 0x245b20;
	~CCNodeRGBA() = ios 0x245b50;

	virtual bool init() = ios 0x245b6c;

	virtual void setColor(cocos2d::_ccColor3B const&) = ios 0x245d4c;
	virtual cocos2d::_ccColor3B const& getColor() = ios 0x245d2c;
	virtual cocos2d::_ccColor3B const& getDisplayedColor() = ios 0x245d3c;
	virtual unsigned char getDisplayedOpacity() = ios 0x245b90;
	virtual unsigned char getOpacity() = ios 0x245b80;
	virtual void setOpacity(unsigned char) = ios 0x245ba0;
	virtual bool isCascadeColorEnabled() = ios 0x245f24;
	virtual void setCascadeColorEnabled(bool) = ios 0x245f34;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = ios 0x245e1c;
	virtual bool isCascadeOpacityEnabled() = ios 0x245d0c;
	virtual void setCascadeOpacityEnabled(bool) = ios 0x245d1c;
	virtual void updateDisplayedOpacity(unsigned char) = ios 0x245c40;
}

[[link(win, android)]]
class cocos2d::CCShaderCache {
	static void purgeSharedShaderCache();
	static cocos2d::CCShaderCache* sharedShaderCache() = ios 0x12d244;

	bool init() = ios 0x12d2ac;

	// CCShaderCache(cocos2d::CCShaderCache const&);
	// CCShaderCache();
	void addProgram(cocos2d::CCGLProgram*, char const*) = ios 0x12d994;
	void loadDefaultShader(cocos2d::CCGLProgram*, int) = ios 0x12d724;
	void loadDefaultShaders() = ios 0x12d378;
	cocos2d::CCGLProgram* programForKey(char const*) = ios 0x12d928;
	void reloadDefaultShaders();
}

[[link(win, android)]]
class cocos2d::CCImage {
	bool initWithImageData(void*, int, cocos2d::CCImage::EImageFormat, int, int, int, int) = ios 0x3479c;
	bool initWithImageFile(char const*, cocos2d::CCImage::EImageFormat);
	bool initWithImageFileThreadSafe(char const*, cocos2d::CCImage::EImageFormat);
	bool initWithString(char const*, int, int, cocos2d::CCImage::ETextAlign, char const*, int);

	int getBitsPerComponent() const;
	unsigned char* getData();
	int getDataLen();
	unsigned short getHeight() const;
	unsigned short getWidth() const;

	CCImage() = ios 0x34608;
	~CCImage() = ios 0x34670;

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
class cocos2d::CCTexture2D {
	static void PVRImagesHavePremultipliedAlpha(bool) = mac 0x457000;
	static cocos2d::CCTexture2DPixelFormat defaultAlphaPixelFormat() = ios 0x132f28;
	static void setDefaultAlphaPixelFormat(cocos2d::CCTexture2DPixelFormat) = mac 0x4571c0, ios 0x132f1c;

	bool initPremultipliedATextureWithImage(cocos2d::CCImage*, unsigned int, unsigned int) = mac 0x456180, ios 0x13275c;
	bool initWithData(void const*, cocos2d::CCTexture2DPixelFormat, unsigned int, unsigned int, cocos2d::CCSize const&) = ios 0x132444;
	bool initWithETCFile(char const*);
	bool initWithImage(cocos2d::CCImage*) = mac 0x456120, ios 0x1326f4;
	bool initWithPVRFile(char const*);
	bool initWithString(char const*, char const*, float);
	bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment);
	bool initWithString(char const*, cocos2d::_ccFontDefinition*);

	cocos2d::CCSize const& getContentSizeInPixels() = ios 0x1323d0;

	void setAliasTexParameters() = mac 0x4570f0, ios 0x132e7c;
	void setAntiAliasTexParameters();
	void setTexParameters(cocos2d::_ccTexParams*) = mac 0x457060, ios 0x132de4;

	// CCTexture2D(cocos2d::CCTexture2D const&);
	~CCTexture2D() = ios 0x132340;
	CCTexture2D() = ios 0x132290;
	unsigned int bitsPerPixelForFormat(cocos2d::CCTexture2DPixelFormat);
	unsigned int bitsPerPixelForFormat();
	char const* description();
	void drawAtPoint(cocos2d::CCPoint const&);
	void drawInRect(cocos2d::CCRect const&);
	void generateMipmap();
	bool hasMipmaps();
	bool hasPremultipliedAlpha() = ios 0x13243c;
	void* keepData(void*, unsigned int);
	void releaseData(void*);
	void releaseGLTexture();
	char const* stringForFormat();

	virtual cocos2d::CCTexture2DPixelFormat getPixelFormat() = mac 0x455c10;
	virtual unsigned int getPixelsWide() = mac 0x455c20;
	virtual unsigned int getPixelsHigh() = mac 0x455c30;
	virtual unsigned int getName() = mac 0x455c40;
	virtual float getMaxS() = mac 0x455cd0;
	virtual void setMaxS(float) = mac 0x455ce0;
	virtual float getMaxT() = mac 0x455cf0;
	virtual void setMaxT(float) = mac 0x455d00;
	virtual cocos2d::CCSize getContentSize() = mac 0x455c50;
	virtual cocos2d::CCGLProgram* getShaderProgram() = mac 0x455d10;
	virtual void setShaderProgram(cocos2d::CCGLProgram*) = mac 0x455d20;
}

[[link(win, android)]]
class cocos2d::CCSprite {
	static cocos2d::CCSprite* create(char const*) = ios 0x240214;
	static cocos2d::CCSprite* create(char const*, cocos2d::CCRect const&);
	static cocos2d::CCSprite* create();
	static cocos2d::CCSprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*) = ios 0x240290;
	static cocos2d::CCSprite* createWithSpriteFrameName(char const*) = ios 0x240310;
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
	void setFlipX(bool) = ios 0x241bfc;
	void setFlipY(bool) = ios 0x241c30;
	void setTextureAtlas(cocos2d::CCTextureAtlas*);
	void setTlVertexMod(float);
	void setTrVertexMod(float);
	void setUseVertexMod(bool);

	// CCSprite(cocos2d::CCSprite const&);
	CCSprite() = ios 0x24073c;
	~CCSprite() = ios 0x2407c4;
	bool isFlipX();
	bool isFlipY();
	bool isTextureRectRotated();
	void updateColor();

	virtual bool init() = ios 0x2403ac;
	virtual void setVertexZ(float) = ios 0x241aa8;
	virtual void setScaleX(float) = ios 0x241924;
	virtual void setScaleY(float) = ios 0x2419a0;
	virtual void setScale(float) = ios 0x241a1c;
	virtual void setPosition(cocos2d::CCPoint const&) = ios 0x241660;
	virtual void setSkewX(float) = ios 0x241844;
	virtual void setSkewY(float) = ios 0x2418b4;
	virtual void setAnchorPoint(cocos2d::CCPoint const&) = ios 0x241b18;
	virtual void setVisible(bool) = ios 0x241b8c;
	virtual void setRotation(float) = ios 0x2416f4;
	virtual void setRotationX(float) = ios 0x241764;
	virtual void setRotationY(float) = ios 0x2417d4;
	virtual void ignoreAnchorPointForPosition(bool) = ios 0x241b88; // merged?
	virtual void addChild(cocos2d::CCNode*) = ios 0x241198;
	virtual void addChild(cocos2d::CCNode*, int) = ios 0x24119c; // merged?
	virtual void addChild(cocos2d::CCNode*, int, int) = ios 0x2411a0;
	virtual void removeChild(cocos2d::CCNode*, bool) = ios 0x241308;
	virtual void removeAllChildrenWithCleanup(bool) = ios 0x241350;
	virtual void reorderChild(cocos2d::CCNode*, int) = ios 0x241274;
	virtual void sortAllChildren() = ios 0x241404;
	virtual void draw() = ios 0x24108c;
	virtual void updateTransform() = ios 0x240cd8;
	virtual bool initWithTexture(cocos2d::CCTexture2D*) = ios 0x240528;
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = ios 0x240518;
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = ios 0x2403c4;
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = ios 0x24069c;
	virtual bool initWithSpriteFrameName(char const*) = ios 0x240700;
	virtual bool initWithFile(char const*) = ios 0x2405a4;
	virtual bool initWithFile(char const*, cocos2d::CCRect const&) = ios 0x240638;
	virtual void setChildColor(cocos2d::_ccColor3B const&) = ios 0x241eb4;
	virtual void setChildOpacity(unsigned char) = ios 0x241da4;
	virtual cocos2d::CCSpriteBatchNode* getBatchNode() = ios 0x2422a8;
	virtual void setBatchNode(cocos2d::CCSpriteBatchNode*) = ios 0x2422b0;
	virtual void refreshTextureRect() = ios 0x240828;
	virtual void setTextureRect(cocos2d::CCRect const&) = ios 0x2408ac;
	virtual void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&) = ios 0x2408c0;
	virtual void setVertexRect(cocos2d::CCRect const&) = ios 0x240b1c;
	virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = ios 0x242038;
	virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = ios 0x24210c;
	virtual cocos2d::CCSpriteFrame* displayFrame() = ios 0x2421a0;
	virtual void setDisplayFrameWithAnimationName(char const*, int) = ios 0x2420b8;
	virtual void setTextureCoords(cocos2d::CCRect const&) = ios 0x240b24;
	virtual void updateBlendFunc() = ios 0x2422fc;
	virtual void setReorderChildDirtyRecursively() = ios 0x24157c;
	virtual void setDirtyRecursively(bool) = ios 0x2415e4;

	virtual void setColor(cocos2d::_ccColor3B const&) = ios 0x241e48;
	virtual void setOpacity(unsigned char) = ios 0x241d24;
	virtual void setOpacityModifyRGB(bool) = ios 0x241f58;
	virtual bool isOpacityModifyRGB() = ios 0x241f90;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = ios 0x241fa0;
	virtual void updateDisplayedOpacity(unsigned char) = ios 0x241fec;

	virtual cocos2d::CCTexture2D* getTexture() = ios 0x242494;
	virtual void setTexture(cocos2d::CCTexture2D*) = ios 0x242354;
}

[[link(win, android)]]
class cocos2d::CCLabelBMFont {
	~CCLabelBMFont() = ios 0x301fcc;
	static cocos2d::CCLabelBMFont* create(char const*, char const*) = ios 0x301b04;
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float);
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment);
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = ios 0x301a44;
	static cocos2d::CCLabelBMFont* create();
	static cocos2d::CCLabelBMFont* createBatched(char const*, char const*, cocos2d::CCArray*, int) = ios 0x301df4;
	static void purgeCachedData() = ios 0x301a40;

	bool initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = ios 0x301b54;

	cocos2d::CCBMFontConfiguration* getConfiguration() const;
	int getExtraKerning() const;
	char const* getFntFile();
	bool getIsBatched() const;
	float getLetterPosXLeft(cocos2d::CCSprite*, float, bool);
	float getLetterPosXRight(cocos2d::CCSprite*, float, bool);
	cocos2d::CCArray* getTargetArray() const;

	void setExtraKerning(int);
	void setFntFile(char const* fntFile); // inlined on ios
	void setIsBatched(bool);
	void setTargetArray(cocos2d::CCArray*);
	void createFontChars() = ios 0x3021a0;
	int kerningAmountForFirst(unsigned short, unsigned short);
	void limitLabelWidth(float, float, float) = ios 0x303e78;

	virtual bool init() = ios 0x301ebc;
	virtual void setScaleX(float) = ios 0x303e20;
	virtual void setScaleY(float) = ios 0x303e4c;
	virtual void setScale(float) = ios 0x303df4;
	virtual void setAnchorPoint(cocos2d::CCPoint const&) = ios 0x302e8c;
	virtual void setString(char const*, bool) = ios 0x302840;
	virtual void setCString(char const*) = ios 0x302a5c;
	virtual void updateLabel() = ios 0x302ee0;
	virtual void setAlignment(cocos2d::CCTextAlignment) = ios 0x303dc4;
	virtual void setWidth(float) = ios 0x303dd4;
	virtual void setLineBreakWithoutSpace(bool) = ios 0x303de4;
	virtual void setString(unsigned short*, bool) = ios 0x3028c8;

	virtual void setString(char const*) = ios 0x30281c;
	virtual char const* getString() = ios 0x302a24;

	virtual void setColor(cocos2d::_ccColor3B const&) = ios 0x302a88;
	virtual cocos2d::_ccColor3B const& getColor() = ios 0x302a68;
	virtual cocos2d::_ccColor3B const& getDisplayedColor() = ios 0x302a78;
	virtual unsigned char getDisplayedOpacity() = ios 0x302b68;
	virtual unsigned char getOpacity() = ios 0x302b58;
	virtual void setOpacity(unsigned char) = ios 0x302b78;
	virtual void setOpacityModifyRGB(bool) = ios 0x302c18;
	virtual bool isOpacityModifyRGB() = ios 0x302cd0;
	virtual bool isCascadeColorEnabled() = ios 0x302e4c;
	virtual void setCascadeColorEnabled(bool) = ios 0x302e5c;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = ios 0x302d78;
	virtual bool isCascadeOpacityEnabled() = ios 0x302e6c;
	virtual void setCascadeOpacityEnabled(bool) = ios 0x302e7c;
	virtual void updateDisplayedOpacity(unsigned char) = ios 0x302ce0;
}

[[link(win, android)]]
class cocos2d::CCApplication {
	static cocos2d::CCApplication* sharedApplication() = ios 0x1b2588;
	virtual void openURL(char const*);
}

[[link(win, android)]]
class cocos2d::CCArray {
	// static cocos2d::CCArray* create(cocos2d::CCObject*, ...);
	static cocos2d::CCArray* create() = ios 0x251b98;
	static cocos2d::CCArray* createWithArray(cocos2d::CCArray*) = ios 0x251d20;
	static cocos2d::CCArray* createWithCapacity(unsigned int) = ios 0x251d48;
	static cocos2d::CCArray* createWithContentsOfFile(char const*);
	static cocos2d::CCArray* createWithContentsOfFileThreadSafe(char const*);
	static cocos2d::CCArray* createWithObject(cocos2d::CCObject*);

	bool init() = ios 0x3570f8;
	bool initWithArray(cocos2d::CCArray*);
	bool initWithCapacity(unsigned int);
	bool initWithObject(cocos2d::CCObject*);
	// bool initWithObjects(cocos2d::CCObject*, ...);

	// CCArray(cocos2d::CCArray const&);
	// CCArray(unsigned int);
	// CCArray();
	void addObject(cocos2d::CCObject*) = ios 0x251d18;
	void addObjectNew(cocos2d::CCObject*);
	void addObjectsFromArray(cocos2d::CCArray*) = ios 0x251da8;
	unsigned int capacity() const;
	bool containsObject(cocos2d::CCObject*) const;
	unsigned int count() const;
	void exchangeObject(cocos2d::CCObject*, cocos2d::CCObject*);
	void exchangeObjectAtIndex(unsigned int, unsigned int);
	void fastRemoveObject(cocos2d::CCObject*);
	void fastRemoveObjectAtIndex(unsigned int) = ios 0x251eb4;
	void fastRemoveObjectAtIndexChild(unsigned int);
	void fastRemoveObjectAtIndexNew(unsigned int);
	unsigned int indexOfObject(cocos2d::CCObject*) const;
	void insertObject(cocos2d::CCObject*, unsigned int) = ios 0x251e78;
	bool isEqualToArray(cocos2d::CCArray*);
	cocos2d::CCObject* lastObject();
	cocos2d::CCObject* objectAtIndex(unsigned int) = ios 0x251dd0;
	cocos2d::CCObject* randomObject();
	void recreateNewIndexes();
	void reduceMemoryFootprint();
	void removeAllObjects() = ios 0x251eac;
	void removeLastObject(bool) = ios 0x251e80;
	void removeObject(cocos2d::CCObject*, bool);
	void removeObjectAtIndex(unsigned int, bool) = ios 0x251e9c;
	void removeObjectAtIndexChild(unsigned int, bool);
	void removeObjectsInArray(cocos2d::CCArray*);
	void replaceObjectAtIndex(unsigned int, cocos2d::CCObject*, bool);
	void reverseObjects();
	cocos2d::CCString* stringAtIndex(unsigned int) = ios 0x251dc0;

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
}

[[link(win, android)]]
class cocos2d::CCDictionary {
	static cocos2d::CCDictionary* create() = ios 0x420d9c;
	static cocos2d::CCDictionary* createWithContentsOfFile(char const*) = ios 0x420eb8;
	static cocos2d::CCDictionary* createWithContentsOfFileThreadSafe(char const*) = ios 0x420e20;
	static cocos2d::CCDictionary* createWithDictionary(cocos2d::CCDictionary*);

	gd::string getFirstKey();

	void setObject(cocos2d::CCObject*, gd::string const&) = ios 0x41fa40;
	void setObject(cocos2d::CCObject*, intptr_t) = ios 0x4201fc;
	void setObjectUnSafe(cocos2d::CCObject*, gd::string const&);
	void setObjectUnSafe(cocos2d::CCObject*, intptr_t);

	// CCDictionary(cocos2d::CCDictionary const&);
	// CCDictionary();
	cocos2d::CCArray* allKeys() = ios 0x41f3a0;
	cocos2d::CCArray* allKeysForObject(cocos2d::CCObject*);
	char const* charForKey(gd::string const&);
	unsigned int count() = ios 0x41f384;
	cocos2d::CCObject* objectForKey(gd::string const&) = ios 0x41f5c8; // real?
	cocos2d::CCObject* objectForKey(intptr_t) = ios 0x41f878;
	cocos2d::CCObject* randomObject();
	void removeAllObjects();
	void removeObjectForElememt(cocos2d::CCDictElement*);
	void removeObjectForKey(gd::string const&) = ios 0x4206a8;
	void removeObjectForKey(intptr_t) = ios 0x420a9c;
	void removeObjectsForKeys(cocos2d::CCArray*);
	cocos2d::CCString const* valueForKey(gd::string const&) = ios 0x41f534;
	cocos2d::CCString const* valueForKey(intptr_t) = ios 0x41f9ac;
	bool writeToFile(char const*);

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
}

[[link(win, android)]]
class cocos2d::CCTransitionScene {
	static cocos2d::CCTransitionScene* create(float, cocos2d::CCScene*);

	void setNewScene(float);

	// CCTransitionScene(cocos2d::CCTransitionScene const&);
	// CCTransitionScene();
	void finish();
	void hideOutShowIn();

	~CCTransitionScene() = ios 0x1d17b8;

    virtual void onEnter() = mac 0xd0a90, ios 0x1d1ac8;
    virtual void onExit() = mac 0xd0ae0, ios 0x1d1b1c;
    virtual void cleanup() = mac 0xd0b40, ios 0x1d1b70;
    virtual void draw() = mac 0xd0840, ios 0x1d1890;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = mac 0xd07a0;
    virtual void sceneOrder() = mac 0xd0830;
}

[[link(win, android)]]
class cocos2d::CCTransitionFade {
	static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*) = ios 0x1d1e60;
	static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&) = ios 0x1d1dc4;

	// CCTransitionFade(cocos2d::CCTransitionFade const&);
	// CCTransitionFade();

	virtual void onEnter();
	virtual void onExit();
	virtual bool initWithDuration(float, cocos2d::CCScene*);
	virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&);
}

[[link(win, android)]]
class cocos2d::ZipUtils {
	static gd::string base64DecodeEnc(gd::string const&, gd::string);
	static gd::string base64EncodeEnc(gd::string const&, gd::string);
	static gd::string base64URLDecode(gd::string const&);
	static gd::string base64URLEncode(gd::string const&) = ios 0x246c50;
	static void ccDecodeEncodedPvr(unsigned int*, int);
	static int ccDeflateMemory(unsigned char*, unsigned int, unsigned char**);
	static int ccInflateCCZFile(char const*, unsigned char**);
	static int ccInflateGZipFile(char const*, unsigned char**);
	static int ccInflateMemory(unsigned char*, unsigned int, unsigned char**) = ios 0x2491d4;
	static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int*, unsigned int);
	static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int);
	static void ccSetPvrEncryptionKey(unsigned int, unsigned int, unsigned int, unsigned int);
	static void ccSetPvrEncryptionKeyPart(int, unsigned int);
	static gd::string compressString(gd::string const&, bool, int);
	static gd::string decompressString2(unsigned char*, bool, int, int) = ios 0x2462e0;
	static gd::string decompressString(gd::string const&, bool, int) = ios 0x246568;
	static gd::string encryptDecrypt(gd::string const&, int);
	static gd::string encryptDecryptWKey(gd::string const&, gd::string);
	static unsigned char hexToChar(gd::string const&);
	static gd::string urlDecode(gd::string const&);
}

[[link(win, android)]]
class cocos2d::CCDelayTime {
	static cocos2d::CCDelayTime* create(float) = ios 0x191bbc;

	// CCDelayTime(cocos2d::CCDelayTime const&);
	// CCDelayTime();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCSet {
	static cocos2d::CCSet* create();

	// CCSet(cocos2d::CCSet const&);
	// CCSet();
	void addObject(cocos2d::CCObject*) = mac 0x775080, ios 0x1b2ab0;
	cocos2d::CCObject* anyObject() {
		if (!m_pSet || m_pSet->empty()) {
			return nullptr;
		}

		for (auto* obj : *m_pSet) {
			if (obj) return obj;
		}

		return nullptr;
	}
	cocos2d::CCSetIterator begin() = ios 0x1b2b78;
	bool containsObject(cocos2d::CCObject*) = ios 0x1b2b28;
	cocos2d::CCSet* copy();
	int count() = mac 0x775070;
	cocos2d::CCSetIterator end();
	cocos2d::CCSet* mutableCopy() = mac 0x775030;
	void removeAllObjects();
	void removeObject(cocos2d::CCObject*) = mac 0x775130;

	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
}

[[link(win, android)]]
class cocos2d::CCSequence {
	static cocos2d::CCSequence* create(cocos2d::CCArray*) = ios 0x191274;
	// static cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, ...);
	static cocos2d::CCSequence* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = ios 0x191180;
	static cocos2d::CCSequence* createWithVariableList(cocos2d::CCFiniteTimeAction*, va_list) = ios 0x19129c;

	bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = ios 0x191210;

	// CCSequence(cocos2d::CCSequence const&);
	// CCSequence();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void stop();
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCMenuItemSprite {
	static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*);
	static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	bool initWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = ios 0x5626c;

	// CCMenuItemSprite(cocos2d::CCMenuItemSprite const&);
	// CCMenuItemSprite();

	virtual void selected() = ios 0x56384;
	virtual void unselected() = ios 0x56410;
	virtual void setEnabled(bool) = ios 0x56490;
	virtual cocos2d::CCNode* getNormalImage() = ios 0x56038;
	virtual void setNormalImage(cocos2d::CCNode*) = ios 0x56040;
	virtual cocos2d::CCNode* getSelectedImage() = ios 0x5610c;
	virtual void setSelectedImage(cocos2d::CCNode*) = ios 0x56114;
	virtual cocos2d::CCNode* getDisabledImage() = ios 0x561bc;
	virtual void setDisabledImage(cocos2d::CCNode*) = ios 0x561c4;
	virtual void updateImagesVisibility() = ios 0x564b0;
}

[[link(win, android)]]
class cocos2d::CCMenuItem {
	~CCMenuItem() = ios 0x55eb0;
	static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	static cocos2d::CCMenuItem* create();

	bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = ios 0x55e40;

	int getScriptTapHandler();

	void setTarget(cocos2d::CCObject* rec, cocos2d::SEL_MenuHandler selector) {
	    // i think its inlined on ios or something
            m_pListener = rec;
            m_pfnSelector = selector;
	}

	// CCMenuItem(cocos2d::CCMenuItem const&);
	// CCMenuItem();
	cocos2d::CCRect rect() = ios 0x56014;

	virtual void activate() = ios 0x55f88;
	virtual void selected() = ios 0x55f04;
	virtual void unselected() = ios 0x55f10;
	virtual void registerScriptTapHandler(int) = ios 0x55f18;
	virtual void unregisterScriptTapHandler() = ios 0x55f48;
	virtual bool isEnabled() = ios 0x5600c;
	virtual void setEnabled(bool) = ios 0x56004;
	virtual bool isSelected() = ios 0x56030;
}

[[link(win, android)]]
class cocos2d::extension::CCScale9Sprite {
	// those 3 are inlined on ios
	static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const* spriteFrameName) {
		CCScale9Sprite* ret = new CCScale9Sprite;
		if (ret->initWithSpriteFrameName(spriteFrameName)) {
			ret->autorelease();
			return ret;
		}

		delete ret;
		return nullptr;
	}
	static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const* spriteFrameName, cocos2d::CCRect capInsets) {
		CCScale9Sprite* ret = new CCScale9Sprite;
		if (ret->initWithSpriteFrameName(spriteFrameName, capInsets)) {
			ret->autorelease();
			return ret;
		}

		delete ret;
		return nullptr;
	}

	static cocos2d::extension::CCScale9Sprite* create(char const* pszname) {
		CCScale9Sprite* ret = new CCScale9Sprite;
		if (ret->initWithFile(pszname)) {
			ret->autorelease();
			return ret;
		}

		delete ret;
		return nullptr;
	}
	static cocos2d::extension::CCScale9Sprite* create() = mac 0x3d7240;
	static cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect) = ios 0x21e9c8;

	CCScale9Sprite() = ios 0x21d3a4;
	~CCScale9Sprite() = ios 0x21d454;

	// where is updatePositions
	virtual bool init() = ios 0x21d51c;
	virtual void setContentSize(const cocos2d::CCSize& size) = ios 0x21e418;
	virtual void visit() = ios 0x21f110;
	virtual GLubyte getOpacity() = ios 0x21f2d8;
	virtual void setOpacity(GLubyte opacity) = ios 0x21f21c;
	virtual void updateDisplayedOpacity(GLubyte parentOpacity) = ios 0x21ef64;
	virtual const cocos2d::ccColor3B& getColor() = ios 0x21f20c;
	virtual void setColor(const cocos2d::ccColor3B& color) = ios 0x21f144;
	virtual void updateDisplayedColor(const cocos2d::ccColor3B& parentColor) = ios 0x21efd0;
	virtual void setOpacityModifyRGB(bool bValue) = ios 0x21ee9c;
	virtual bool isOpacityModifyRGB() = ios 0x21ef54;
	virtual cocos2d::CCSize getPreferredSize() = ios 0x21ecec;
	virtual void setPreferredSize(cocos2d::CCSize) = ios 0x21ecb8;
	virtual cocos2d::CCRect getCapInsets() = ios 0x21ed90;
	virtual void setCapInsets(cocos2d::CCRect) = ios 0x21ecf8;
	virtual float getInsetLeft() = ios 0x21f0d0;
	virtual void setInsetLeft(float) = ios 0x21f0f0;
	virtual float getInsetTop() = ios 0x21f0d8;
	virtual void setInsetTop(float) = ios 0x21f0f8;
	virtual float getInsetRight() = ios 0x21f0e0;
	virtual void setInsetRight(float) = ios 0x21f100;
	virtual float getInsetBottom() = ios 0x21f0e8;
	virtual void setInsetBottom(float) = ios 0x21f108;
	virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect);
	virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, cocos2d::CCRect);
	virtual bool initWithFile(const char*, cocos2d::CCRect, cocos2d::CCRect) = ios 0x21e8f0;
	virtual bool initWithFile(const char*, cocos2d::CCRect);
	virtual bool initWithFile(cocos2d::CCRect, const char*);
	virtual bool initWithFile(const char*);
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = ios 0x21eb24;
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*);
	virtual bool initWithSpriteFrameName(const char*, cocos2d::CCRect);
	virtual bool initWithSpriteFrameName(const char*);
	virtual bool updateWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = ios 0x21d68c;
	virtual void setSpriteFrame(cocos2d::CCSpriteFrame*) = ios 0x21f03c;
}

[[link(win, android)]]
class cocos2d::extension::CCControlColourPicker {
	static cocos2d::extension::CCControlColourPicker* colourPicker() = ios 0x1b4e64; // im confused
}

[[link(win, android)]]
class cocos2d::CCMenu {
	// static cocos2d::CCMenu* create(cocos2d::CCMenuItem*, ...) = ios 0x1dabec;
	static cocos2d::CCMenu* create() = ios 0x1dabc8;
	static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*) = ios 0x1dac74;
    	static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*);
    	// static cocos2d::CCMenu* createWithItems(cocos2d::CCMenuItem*, char*) = ios 0x1dac14;

	bool initWithArray(cocos2d::CCArray*);

	void setHandlerPriority(int);

	// CCMenu(cocos2d::CCMenu const&);
	// CCMenu();
	void alignItemsHorizontally() = ios 0x1db48c;
	void alignItemsHorizontallyWithPadding(float) = ios 0x1db494;
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

	virtual bool init() = ios 0x1daedc;
	virtual void addChild(cocos2d::CCNode*) = ios 0x1daee4;
	virtual void addChild(cocos2d::CCNode*, int) = ios 0x1daee8;
	virtual void addChild(cocos2d::CCNode*, int, int) = ios 0x1daeec;
	virtual void removeChild(cocos2d::CCNode*, bool) = ios 0x1daf94;
	virtual void onExit() = ios 0x1daf4c;
	virtual void registerWithTouchDispatcher() = ios 0x1db004;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x1db060;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x1db244;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x1db154;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = ios 0x1db1dc;
}

[[link(win, android)]]
class DS_Dictionary {
	DS_Dictionary() = ios 0x167e3c;
	// ~DS_Dictionary();

	static void copyFile(const char*, const char*);

	cocos2d::CCObject* decodeObjectForKey(const char*, bool, int);

	bool loadRootSubDictFromFile(const char*);
	bool loadRootSubDictFromCompressedFile(const char*);
	bool loadRootSubDictFromString(gd::string const&) = ios 0x167ea0;

	bool saveRootSubDictToFile(const char*);
	bool saveRootSubDictToCompressedFile(const char*);
	gd::string saveRootSubDictToString() = ios 0x1680f0;

	bool stepIntoSubDictWithKey(const char*);
	void stepOutOfSubDict();
	void stepBackToRootSubDict();

	unsigned int getNumKeys() = ios 0x168600;
	gd::string getKey(unsigned int);
	gd::vector<gd::string> getAllKeys();
	unsigned int getIndexOfKey(const char*);
	unsigned int getIndexOfKeyWithClosestAlphaNumericalMatch(const char*);
	void removeKey(unsigned int);
	void removeKey(const char*);
	void removeAllKeys();

	int getIntegerForKey(const char*);
	bool getBoolForKey(const char*) = ios 0x1688cc;
	float getFloatForKey(const char*);
	gd::string getStringForKey(const char*);
	cocos2d::CCPoint getVec2ForKey(const char*);
	cocos2d::CCRect getRectForKey(const char*);
	gd::vector<gd::string> getStringArrayForKey(const char*);
	gd::vector<cocos2d::CCPoint> getVec2ArrayForKey(const char*);
	gd::vector<cocos2d::CCRect> getRectArrayForKey(const char*);
	cocos2d::CCArray* getArrayForKey(const char*, bool) = ios 0x16978c;
	cocos2d::CCDictionary* getDictForKey(const char*, bool) = ios 0x16a138;
	cocos2d::CCObject* getObjectForKey(const char*);

	void setIntegerForKey(const char*, int);
	void setIntegerForKey(const char*, int, bool);
	void setBoolForKey(const char*, bool);
	void setBoolForKey(const char*, bool, bool);
	void setFloatForKey(const char*, float);
	void setFloatForKey(const char*, float, bool);
	void setStringForKey(const char*, const gd::string&);
	void setStringForKey(const char*, const gd::string&, bool);
	void setVec2ForKey(const char*, const cocos2d::CCPoint&);
	void setVec2ForKey(const char*, const cocos2d::CCPoint&, bool);
	void setRectForKey(const char*, const cocos2d::CCRect&);
	void setRectForKey(const char*, const cocos2d::CCRect&, bool);
	void setStringArrayForKey(const char*, const gd::vector<gd::string>&);
	void setStringArrayForKey(const char*, const gd::vector<gd::string>&, bool);
	void setVec2ArrayForKey(const char*, const gd::vector<cocos2d::CCPoint>&);
	void setVec2ArrayForKey(const char*, const gd::vector<cocos2d::CCPoint>&, bool);
	void setRectArrayForKey(const char*, const gd::vector<cocos2d::CCRect>&);
	void setRectArrayForKey(const char*, const gd::vector<cocos2d::CCRect>&, bool);
	void setArrayForKey(const char*, cocos2d::CCArray*) = ios 0x169504;
	void setBoolMapForKey(const char*, gd::map<gd::string, bool>&);
	void setSubDictForKey(const char*);
	void setSubDictForKey(const char*, bool, bool);
	void setDictForKey(const char*, cocos2d::CCDictionary*) = ios 0x169b5c;
	void setObjectForKey(const char*, cocos2d::CCObject*);

	void addBoolValuesToMapForKey(gd::map<gd::string, bool>&, const char*, bool);
	void addBoolValuesToMapForKeySpecial(gd::map<gd::string, bool>&, const char*, bool);

	void checkCompatibility();
}

[[link(win, android)]]
class cocos2d::CCDrawNode {
	static cocos2d::CCDrawNode* create() = ios 0x4b008;

	cocos2d::_ccBlendFunc getBlendFunc() const;

	void setBlendFunc(cocos2d::_ccBlendFunc const&) = ios 0x4bfa8;

	// CCDrawNode(cocos2d::CCDrawNode const&);
	// CCDrawNode();
	void clear() = ios 0x4bf90;
	void drawCircle(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&, unsigned int);
	void drawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&);
	void drawDot(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&);
	bool drawLines(cocos2d::CCPoint*, unsigned int, float, cocos2d::_ccColor4F const&) = ios 0x63d10c;
	bool drawPolygon(cocos2d::CCPoint *verts, unsigned int count, const cocos2d::ccColor4F &fillColor, float borderWidth, const cocos2d::ccColor4F &borderColor);
	void drawPreciseCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&);
	bool drawRect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&);
	void drawSegment(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&);
	void ensureCapacity(unsigned int);
	void listenBackToForeground(cocos2d::CCObject*);
	void render();

	virtual bool init() = ios 0x4b0d0;
	virtual void draw() = ios 0x4b260;
}

[[link(win, android)]]
class cocos2d::CCSpriteBatchNode {
	static cocos2d::CCSpriteBatchNode* create(char const*);// = mac 0x167230;
	static cocos2d::CCSpriteBatchNode* create(char const*, unsigned int) = mac 0x167460, ios 0x1d9df0;
	static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*);
	static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int);

	bool initWithFile(char const*, unsigned int) = ios 0x1d9e74;
	bool initWithTexture(cocos2d::CCTexture2D*, unsigned int) = mac 0x167320;

	int getAtlasCapacity() = mac 0x168800;
	cocos2d::CCArray* getDescendants();
	bool getManualSortChildren() const;
	cocos2d::CCTextureAtlas* getTextureAtlas();
	int getUsedAtlasCapacity();

	void setManualSortChildren(bool);
	void setTextureAtlas(cocos2d::CCTextureAtlas*);

	// CCSpriteBatchNode(cocos2d::CCSpriteBatchNode const&);
	CCSpriteBatchNode() = mac 0x1675f0;
	~CCSpriteBatchNode() = ios 0x1d9fa0;
	cocos2d::CCSpriteBatchNode* addSpriteWithoutQuad(cocos2d::CCSprite*, unsigned int, int);
	void appendChild(cocos2d::CCSprite*) = mac 0x1678a0;
	unsigned int atlasIndexForChild(cocos2d::CCSprite*, int);
	unsigned int highestAtlasIndexInChild(cocos2d::CCSprite*);
	void increaseAtlasCapacity(unsigned int) = mac 0x1687b0;
	void increaseAtlasCapacity();
	void insertChild(cocos2d::CCSprite*, unsigned int);
	void insertQuadFromSprite(cocos2d::CCSprite*, unsigned int);
	unsigned int lowestAtlasIndexInChild(cocos2d::CCSprite*);
	void manualSortAllChildren();
	unsigned int rebuildIndexInOrder(cocos2d::CCSprite*, unsigned int);
	void removeChildAtIndex(unsigned int, bool);
	void removeSpriteFromAtlas(cocos2d::CCSprite*) = ios 0x1da344;
	void reorderBatch(bool);
	void swap(int, int);
	void updateAtlasIndex(cocos2d::CCSprite*, int*);
	void updateBlendFunc();
	void updateQuadFromSprite(cocos2d::CCSprite*, unsigned int);

	virtual bool init() = mac 0x1675a0;
	virtual void addChild(cocos2d::CCNode*) = mac 0x167a70;
	virtual void addChild(cocos2d::CCNode*, int) = mac 0x167a80;
	virtual void addChild(cocos2d::CCNode*, int, int) = mac 0x167810;
	virtual void removeChild(cocos2d::CCNode*, bool) = mac 0x167af0, ios 0x1da300;
	virtual void removeAllChildrenWithCleanup(bool) = mac 0x167dd0, ios 0x1da494;
	virtual void reorderChild(cocos2d::CCNode*, int) = mac 0x167a90, ios 0x1da28c;
	virtual void sortAllChildren() = mac 0x167e80, ios 0x1da538;
	virtual void draw() = mac 0x168670, ios 0x1da8c4;
	virtual void visit() = mac 0x167770, ios 0x1d9fb8;

	virtual void setBlendFunc(cocos2d::_ccBlendFunc) = mac 0x168ed0, ios 0x1daa78;
	virtual cocos2d::_ccBlendFunc getBlendFunc() = mac 0x168ef0, ios 0x1daa88;
	virtual cocos2d::CCTexture2D* getTexture() = mac 0x168f10, ios 0x1daa98;
	virtual void setTexture(cocos2d::CCTexture2D*) = mac 0x168f40, ios 0x1daab8;
}

[[link(win, android)]]
class cocos2d::CCActionManager {
	cocos2d::CCAction* getActionByTag(unsigned int, cocos2d::CCObject*);

	// CCActionManager(cocos2d::CCActionManager const&);
	// CCActionManager();
	void actionAllocWithHashElement(cocos2d::_hashElement*);
	void addAction(cocos2d::CCAction*, cocos2d::CCNode*, bool) = ios 0x2fb3d8;
	void deleteHashElement(cocos2d::_hashElement*);
	unsigned int numberOfRunningActionsInTarget(cocos2d::CCObject*);
	cocos2d::CCSet* pauseAllRunningActions();
	void pauseTarget(cocos2d::CCObject*) = ios 0x2fb1e4;
	void removeAction(cocos2d::CCAction*);
	void removeActionAtIndex(unsigned int, cocos2d::_hashElement*);
	void removeActionByTag(unsigned int, cocos2d::CCObject*);
	void removeAllActions();
	void removeAllActionsFromTarget(cocos2d::CCObject*);
	void resumeTarget(cocos2d::CCObject*);
	void resumeTargets(cocos2d::CCSet*);

	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCString {
	// static cocos2d::CCString* create(gd::string const&);
	static cocos2d::CCString* createWithContentsOfFile(char const*) = ios 0x2709e0;
	static cocos2d::CCString* createWithData(unsigned char const*, unsigned long) = ios 0x2708a4;
	// static cocos2d::CCString* createWithFormat(char const*, ...) = ios 0x270958;

	// bool initWithFormat(char const*, ...);
	// bool initWithFormatAndValist(char const*, char*);

	char const* getCString() const = ios 0x270528;

	// CCString(cocos2d::CCString const&);
	// CCString(gd::string const&);
	// CCString(char const*);
	// CCString();
	bool boolValue() const;
	int compare(char const*) const;
	double doubleValue() const;
	float floatValue() const;
	int intValue() const;
	unsigned int length() const;
	unsigned int uintValue() const;

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual bool isEqual(cocos2d::CCObject const*);
	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
}

[[link(win, android)]]
class cocos2d::CCTouch {
	cocos2d::CCPoint getDelta() const;
	int getID() const;
	cocos2d::CCPoint getLocation() const = ios 0x305508;
	cocos2d::CCPoint getLocationInView() const;
	cocos2d::CCPoint getPreviousLocation() const;
	cocos2d::CCPoint getPreviousLocationInView() const;
	cocos2d::CCPoint getStartLocation() const;
	cocos2d::CCPoint getStartLocationInView() const;

	void setTouchInfo(int, float, float);

	// CCTouch(cocos2d::CCTouch const&);
	// CCTouch();
}

[[link(win, android)]]
class cocos2d {
	static cocos2d::CCAffineTransform CCAffineTransformConcat(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&);
	static bool CCAffineTransformEqualToTransform(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&);
	static cocos2d::CCAffineTransform CCAffineTransformInvert(cocos2d::CCAffineTransform const&) = ios 0x4100f4;
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
	static cocos2d::CCRect CCRectApplyAffineTransform(cocos2d::CCRect const&, cocos2d::CCAffineTransform const&) = ios 0x40feb0;
	static cocos2d::CCRect CCRectFromString(char const*);
	static cocos2d::CCSize CCSizeFromString(char const*);
	static cocos2d::CCBMFontConfiguration* FNTConfigLoadFile(char const*) = ios 0x2ff794;
	static void FNTConfigRemoveCache();
	static cocos2d::CCAffineTransform __CCAffineTransformMake(float, float, float, float, float, float);
	static cocos2d::CCPoint __CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&) = ios 0x40fe40;
	static cocos2d::CCSize __CCSizeApplyAffineTransform(cocos2d::CCSize const&, cocos2d::CCAffineTransform const&);
	static cocos2d::CCPoint ccCardinalSplineAt(cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, float, float);
	static void ccDrawCardinalSpline(cocos2d::CCPointArray*, float, unsigned int);
	static void ccDrawCatmullRom(cocos2d::CCPointArray*, unsigned int);
	static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool);
	static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool, float, float);
	static void ccDrawCircleSegment(cocos2d::CCPoint const&, float, float, float, unsigned int, bool, float, float);
	static void ccDrawColor4B(unsigned char, unsigned char, unsigned char, unsigned char) = ios 0x254420;
	static void ccDrawColor4F(float, float, float, float);
	static void ccDrawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
	static void ccDrawFilledCircle(cocos2d::CCPoint const&, float, float, unsigned int) = ios 0x2542d4;
	static void ccDrawFree();
	static void ccDrawInit();
	static void ccDrawLine(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = ios 0x253d5c;
	static void ccDrawLines(cocos2d::CCPoint const*, unsigned int) = ios 0x253ca0;
	static void ccDrawPoint(cocos2d::CCPoint const&);
	static void ccDrawPoints(cocos2d::CCPoint const*, unsigned int);
	static void ccDrawPoly(cocos2d::CCPoint const*, unsigned int, bool);
	static void ccDrawQuadBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
	static void ccDrawRect(cocos2d::CCPoint, cocos2d::CCPoint) = ios 0x253e3c;
	static void ccDrawSolidPoly(cocos2d::CCPoint const*, unsigned int, cocos2d::_ccColor4F) = ios 0x253f04;
	static void ccDrawSolidRect(cocos2d::CCPoint origin, cocos2d::CCPoint destination, cocos2d::_ccColor4F color) {
		CCPoint vertices[] = {
			origin,
			CCPoint{destination.x, origin.y},
			destination,
			CCPoint{origin.x, destination.y}
		};

		ccDrawSolidPoly(vertices, 4, color);
	}
	static void ccGLBindTexture2D(unsigned int) = ios 0x195850;
	static void ccGLBindTexture2DN(unsigned int, unsigned int) = ios 0x19585c;
	static void ccGLBindVAO(unsigned int);
	static void ccGLBlendFunc(unsigned int, unsigned int) = ios 0x1957d8;
	static void ccGLBlendResetToCache();
	static void ccGLDeleteProgram(unsigned int);
	static void ccGLDeleteTexture(unsigned int);
	static void ccGLDeleteTextureN(unsigned int, unsigned int);
	static void ccGLEnable(cocos2d::ccGLServerState);
	static void ccGLEnableVertexAttribs(unsigned int) = ios 0x195914;
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
	static float ccpDistance(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = ios 0x1b5078;
	static cocos2d::CCPoint ccpForAngle(float);
	static cocos2d::CCPoint ccpFromSize(cocos2d::CCSize const&);
	static bool ccpFuzzyEqual(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
	static cocos2d::CCPoint ccpIntersectPoint(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	static float ccpLength(cocos2d::CCPoint const&);
	static cocos2d::CCPoint ccpLerp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
	static bool ccpLineIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, float*, float*);
	static cocos2d::CCPoint ccpNormalize(cocos2d::CCPoint const&) = ios 0x1b50a8;
	static cocos2d::CCPoint ccpRotateByAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
	static bool ccpSegmentIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	static float ccpToAngle(cocos2d::CCPoint const&);
	static char const* cocos2dVersion() = ios 0x82320;
}

[[link(win, android)]]
class cocos2d::CCRotateBy {
	static cocos2d::CCRotateBy* create(float, float) = ios 0x1921e4;
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
class cocos2d::CCRepeatForever {
	static cocos2d::CCRepeatForever* create(cocos2d::CCActionInterval*) = ios 0x191794;

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
class cocos2d::CCSpriteFrame {
	static cocos2d::CCSpriteFrame* create(char const*, cocos2d::CCRect const&);
	static cocos2d::CCSpriteFrame* create(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);
	static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
	static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);

	bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
	bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);
	bool initWithTextureFilename(char const*, cocos2d::CCRect const&);
	bool initWithTextureFilename(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);

	gd::string getFrameName() const;
	cocos2d::CCPoint const& getOffset() = ios 0x25613c;
	cocos2d::CCPoint const& getOffsetInPixels() = ios 0x256144;
	cocos2d::CCSize const& getOriginalSize();
	cocos2d::CCSize const& getOriginalSizeInPixels();
	cocos2d::CCRect const& getRect();
	cocos2d::CCRect const& getRectInPixels();
	cocos2d::CCTexture2D* getTexture() = ios 0x25614c;

	void setFrameName(gd::string);
	void setOffset(cocos2d::CCPoint const&);
	void setOffsetInPixels(cocos2d::CCPoint const&);
	void setOriginalSize(cocos2d::CCSize const&);
	void setOriginalSizeInPixels(cocos2d::CCSize const&);
	void setRect(cocos2d::CCRect const&);
	void setRectInPixels(cocos2d::CCRect const&);
	void setRotated(bool);
	void setTexture(cocos2d::CCTexture2D*);

	// CCSpriteFrame(cocos2d::CCSpriteFrame const&);
	// CCSpriteFrame();
	bool isRotated();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
}

[[link(win, android)]]
class cocos2d::CCSpriteFrameCache {
	static void purgeSharedSpriteFrameCache() = ios 0x3b8e7c;
	static cocos2d::CCSpriteFrameCache* sharedSpriteFrameCache() = ios 0x3b8d98;

	bool init();

	// CCSpriteFrameCache();
	// CCSpriteFrameCache(cocos2d::CCSpriteFrameCache const&);
	void addSpriteFrame(cocos2d::CCSpriteFrame*, char const*);
	void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*) = ios 0x3b8f28;
	void addSpriteFramesWithFile(char const*, char const*);
	void addSpriteFramesWithFile(char const*) = ios 0x3b97dc;
	void addSpriteFramesWithFile(char const*, cocos2d::CCTexture2D*);
	void removeSpriteFrameByName(char const*);
	void removeSpriteFrames();
	void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*);
	void removeSpriteFramesFromFile(char const*) = ios 0x3b9a40;
	void removeSpriteFramesFromTexture(cocos2d::CCTexture2D*);
	void removeUnusedSpriteFrames();
	cocos2d::CCSpriteFrame* spriteFrameByName(char const*) = ios 0x3b9c74;
}

[[link(win, android)]]
class cocos2d::CCFadeTo {
	static cocos2d::CCFadeTo* create(float, unsigned char) = ios 0x193adc;

	bool initWithDuration(float, unsigned char);

	// CCFadeTo(cocos2d::CCFadeTo const&);
	// CCFadeTo();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::extension::CCHttpClient : cocos2d::CCObject {
	static cocos2d::extension::CCHttpClient* getInstance();
	static void destroyInstance();
	void send(cocos2d::extension::CCHttpRequest* request) = ios 0x15e624;
}

[[link(win, android)]]
class cocos2d::CCFadeIn {
	static cocos2d::CCFadeIn* create(float) = ios 0x193774;

	// CCFadeIn(cocos2d::CCFadeIn const&);
	// CCFadeIn();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCFadeOut {
	static cocos2d::CCFadeOut* create(float) = ios 0x193924;

	// CCFadeOut(cocos2d::CCFadeOut const&);
	// CCFadeOut();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}


[[link(win, android)]]
class cocos2d::CCMoveBy {
	static cocos2d::CCMoveBy* create(float, cocos2d::CCPoint const&) = ios 0x192508;

	bool initWithDuration(float, cocos2d::CCPoint const&);

	// CCMoveBy(cocos2d::CCMoveBy const&);
	// CCMoveBy();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseOut {
	static cocos2d::CCEaseOut* create(cocos2d::CCActionInterval*, float) = ios 0x273b9c;
}
