[[link(win, android)]]
class cocos2d::CCEGLViewProtocol {
    CCEGLViewProtocol() = win 0xbac00;
    virtual ~CCEGLViewProtocol() = win 0xbacc0;
    auto getViewPortRect() const;
    auto getScaleX() const;
    auto getScaleY() const;
    virtual auto setDesignResolutionSize(float, float, ResolutionPolicy);
	virtual void setFrameSize(float, float);
}

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
	void reset();
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
	static cocos2d::CCScene* create();

	int getHighestChildZ();

	// CCScene(cocos2d::CCScene const&);
	// CCScene();

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
	void resetSystem();
	void resumeSystem();
	void saveDefaults();
	void stopSystem();
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
class cocos2d::CCParticleSystemQuad {
	static cocos2d::CCParticleSystemQuad* create(char const*, bool);
	static cocos2d::CCParticleSystemQuad* create();
	static cocos2d::CCParticleSystemQuad* createWithTotalParticles(unsigned int, bool);

	void initIndices();
	void initTexCoordsWithRect(cocos2d::CCRect const&);

	unsigned char getOpacity();

	void setDisplayFrame(cocos2d::CCSpriteFrame*);
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
	virtual void addSearchPath(char const*);
	virtual void addSearchResolutionsOrder(char const*);
	virtual gd::string addSuffix(gd::string, gd::string);
	virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(gd::string const&);
	virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(gd::string const&);
	virtual gd::string fullPathForFilename(char const*, bool);
	virtual char const* fullPathFromRelativeFile(char const*, char const*);
	gd::string getAndroidPath() const;
	virtual unsigned char* getFileData(char const*, char const*, unsigned long*);
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
	static void purgeFileUtils();
	void removeAllPaths();
	virtual void removeFullPath(char const*);
	virtual void removeSearchPath(char const*);
	void setAndroidPath(gd::string);
	virtual void setFilenameLookupDictionary(cocos2d::CCDictionary*);
	virtual void setPopupNotify(bool);
	virtual void setSearchPaths(gd::vector<gd::string> const&);
	virtual void setSearchResolutionsOrder(gd::vector<gd::string> const&);
	static cocos2d::CCFileUtils* sharedFileUtils();
	virtual bool shouldUseHD();
	virtual bool writeToFile(cocos2d::CCDictionary*, gd::string const&);
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

	cocos2d::CCRect boundingBox();
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
	cocos2d::CCAction* runAction(cocos2d::CCAction*);
	void schedule(cocos2d::SEL_SCHEDULE);
	void schedule(cocos2d::SEL_SCHEDULE, float);
	void schedule(cocos2d::SEL_SCHEDULE, float, unsigned int, float);
	void scheduleOnce(cocos2d::SEL_SCHEDULE, float);
	void scheduleUpdate();
	void scheduleUpdateWithPriority(int);
	void scheduleUpdateWithPriorityLua(int, int);
	void sortAllChildrenNoIndex();
	void sortAllChildrenWithIndex();
	void stopAction(cocos2d::CCAction*);
	void stopActionByTag(int);
	void stopAllActions();
	void transform();
	void transformAncestors();
	void unschedule(cocos2d::SEL_SCHEDULE);
	void unscheduleAllSelectors();
	void unscheduleUpdate();
	void updateChildIndexes();

	virtual unsigned int getChildrenCount() const;
	virtual cocos2d::CCSize const& getContentSize() const;
	virtual void update(float) = m1 0x21666c;
	virtual bool init() = m1 0x214b18;
	virtual void setZOrder(int) = m1 0x214b68;
	virtual void _setZOrder(int) = m1 0x214b60;
	virtual int getZOrder() = m1 0x214b58;
	virtual void setVertexZ(float) = m1 0x214bc0;
	virtual float getVertexZ() = m1 0x214bb8;
	virtual void setScaleX(float) = m1 0x214c78;
	virtual float getScaleX() = m1 0x214c70;
	virtual void setScaleY(float) = m1 0x214c94;
	virtual float getScaleY() = m1 0x214c8c;
	virtual void setScale(float) = m1 0x214c40;
	virtual float getScale() = m1 0x214c38;
	virtual void setScale(float, float) = m1 0x214c58;
	virtual void setPosition(cocos2d::CCPoint const&) = m1 0x214cdc;
	virtual cocos2d::CCPoint const& getPosition() = m1 0x214ca8;
	virtual void setPosition(float, float) = m1 0x214cb0;
	virtual void getPosition(float*, float*) = m1 0x214cc8;
	virtual void setPositionX(float) = m1 0x214d2c;
	virtual float getPositionX() = m1 0x214d1c;
	virtual void setPositionY(float) = m1 0x214d70;
	virtual float getPositionY() = m1 0x214d24;
	virtual void setSkewX(float) = m1 0x214b28;
	virtual float getSkewX() = m1 0x214b20;
	virtual void setSkewY(float) = m1 0x214b44;
	virtual float getSkewY() = m1 0x214b3c;
	virtual void setAnchorPoint(cocos2d::CCPoint const&) = m1 0x214ed8;
	virtual cocos2d::CCPoint const& getAnchorPoint() = m1 0x214ed0;
	virtual cocos2d::CCPoint const& getAnchorPointInPoints() = m1 0x214ec8;
	virtual void setContentSize(cocos2d::CCSize const&) = m1 0x214f98;
	virtual cocos2d::CCSize getScaledContentSize() = m1 0x214f60;
	virtual void setVisible(bool) = m1 0x214ec0;
	virtual bool isVisible() = m1 0x214eb8;
	virtual void setRotation(float) = m1 0x214bd0;
	virtual float getRotation() = m1 0x214bc8;
	virtual void setRotationX(float) = m1 0x214c08;
	virtual float getRotationX() = m1 0x214c00;
	virtual void setRotationY(float) = m1 0x214c24;
	virtual float getRotationY() = m1 0x214c1c;
	virtual void setOrderOfArrival(unsigned int) = m1 0x215070;
	virtual unsigned int getOrderOfArrival() = m1 0x215068;
	virtual void setGLServerState(cocos2d::ccGLServerState) = m1 0x215090;
	virtual cocos2d::ccGLServerState getGLServerState() = m1 0x215088;
	virtual void ignoreAnchorPointForPosition(bool) = m1 0x215038;
	virtual bool isIgnoreAnchorPointForPosition() = m1 0x215030;
	virtual void addChild(cocos2d::CCNode*) = m1 0x21550c;
	virtual void addChild(cocos2d::CCNode*, int) = m1 0x21551c;
	virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x215390;
	virtual cocos2d::CCNode* getChildByTag(int) = m1 0x2152fc;
	virtual cocos2d::CCArray* getChildren() = m1 0x214db8;
	virtual void setParent(cocos2d::CCNode*) = m1 0x215028;
	virtual cocos2d::CCNode* getParent() = m1 0x215020;
	virtual void removeFromParent() = m1 0x215530;
	virtual void removeFromParentAndCleanup(bool) = m1 0x215540;
	virtual void removeMeAndCleanup() = m1 0x215560;
	virtual void removeChild(cocos2d::CCNode*) = m1 0x215570;
	virtual void removeChild(cocos2d::CCNode*, bool) = m1 0x215580;
	virtual void removeChildByTag(int) = m1 0x2156e8;
	virtual void removeChildByTag(int, bool) = m1 0x2156f8;
	virtual void removeAllChildren() = m1 0x215748;
	virtual void removeAllChildrenWithCleanup(bool) = m1 0x215758;
	virtual void reorderChild(cocos2d::CCNode*, int) = m1 0x21588c;
	virtual void sortAllChildren() = m1 0x2159a4;
	virtual cocos2d::CCGridBase* getGrid() = m1 0x214e74;
	virtual void setGrid(cocos2d::CCGridBase*) = m1 0x214e7c;
	virtual void* getUserData() = m1 0x215058;
	virtual void setUserData(void*) = m1 0x215060;
	virtual cocos2d::CCObject* getUserObject() = m1 0x215080;
	virtual void setUserObject(cocos2d::CCObject*) = m1 0x215098;
	virtual cocos2d::CCGLProgram* getShaderProgram() = m1 0x215078;
	virtual void setShaderProgram(cocos2d::CCGLProgram*) = m1 0x2150d4;
	virtual cocos2d::CCCamera* getCamera() = m1 0x214e14;
	virtual bool isRunning() = m1 0x215018;
	virtual void registerScriptHandler(int) = m1 0x216340;
	virtual void unregisterScriptHandler() = m1 0x216370;
	virtual void onEnter() = m1 0x215fd8;
	virtual void onEnterTransitionDidFinish() = m1 0x216108;
	virtual void onExit() = m1 0x21622c;
	virtual void onExitTransitionDidStart() = m1 0x216190;
	virtual void cleanup() = m1 0x2151f0;
	virtual void draw() = m1 0x215d9c;
	virtual void visit() = m1 0x215da0;
	virtual void setActionManager(cocos2d::CCActionManager*) = m1 0x2163b0;
	virtual cocos2d::CCActionManager* getActionManager() = m1 0x216400;
	virtual void setScheduler(cocos2d::CCScheduler*) = m1 0x21646c;
	virtual cocos2d::CCScheduler* getScheduler() = m1 0x2164bc;
	virtual void updateTransform() = m1 0x2171cc;
	virtual cocos2d::CCAffineTransform const nodeToParentTransform() = m1 0x2166ec;
	virtual cocos2d::CCAffineTransform const nodeToParentTransformFast() = m1 0x2169bc;
	virtual cocos2d::CCAffineTransform const parentToNodeTransform() = m1 0x216d80;
	virtual cocos2d::CCAffineTransform nodeToWorldTransform() = m1 0x216df4;
	virtual cocos2d::CCAffineTransform nodeToWorldTransformFast() = m1 0x216e80;
	virtual cocos2d::CCAffineTransform worldToNodeTransform() = m1 0x216f0c;
	virtual bool addComponent(cocos2d::CCComponent*) = m1 0x21723c;
	virtual bool removeComponent(char const*) = m1 0x21724c;
	virtual bool removeComponent(cocos2d::CCComponent*) = m1 0x21725c;
	virtual void removeAllComponents() = m1 0x21726c;
	virtual void updateTweenAction(float, char const*) = m1 0x2171c4;
	virtual void updateTweenActionInt(float, int) = m1 0x2171c8;
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
	void pauseTarget(cocos2d::CCObject*);
	void priorityIn(cocos2d::_listEntry**, cocos2d::CCObject*, int, bool);
	void removeHashElement(cocos2d::_hashSelectorEntry*);
	void removeUpdateFromHash(cocos2d::_listEntry*);
	void resumeTarget(cocos2d::CCObject*);
	void resumeTargets(cocos2d::CCSet*);
	unsigned int scheduleScriptFunc(unsigned int, float, bool);
	void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, unsigned int, float, bool);
	void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, bool);
	void scheduleUpdateForTarget(cocos2d::CCObject*, int, bool);
	void unscheduleAll();
	void unscheduleAllForTarget(cocos2d::CCObject*);
	void unscheduleAllWithMinPriority(int);
	void unscheduleScriptEntry(unsigned int);
	void unscheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*);
	void unscheduleUpdateForTarget(cocos2d::CCObject const*);

	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCLayer {
	static cocos2d::CCLayer* create();

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

	virtual bool init() = m1 0x41b670;
	virtual void onEnter() = m1 0x41bf40;
	virtual void onEnterTransitionDidFinish() = m1 0x41c0c4;
	virtual void onExit() = m1 0x41c004;
	virtual void registerWithTouchDispatcher() = m1 0x41b7d4;
	virtual void registerScriptTouchHandler(int, bool, int, bool) = m1 0x41b848;
	virtual void unregisterScriptTouchHandler() = m1 0x41b8a8;
	virtual bool isTouchEnabled() = m1 0x41b964;
	virtual void setTouchEnabled(bool) = m1 0x41b96c;
	virtual void setTouchMode(cocos2d::ccTouchesMode) = m1 0x41b9dc;
	virtual int getTouchMode() = m1 0x41baac;
	virtual void setTouchPriority(int) = m1 0x41ba40;
	virtual int getTouchPriority() = m1 0x41baa4;
	virtual bool isAccelerometerEnabled() = m1 0x41bab4;
	virtual void setAccelerometerEnabled(bool) = m1 0x41babc;
	virtual void setAccelerometerInterval(double) = m1 0x41baf8;
	virtual bool isKeypadEnabled() = m1 0x41bc00;
	virtual void setKeypadEnabled(bool) = m1 0x41bc08;
	virtual bool isKeyboardEnabled() = m1 0x41bc7c;
	virtual void setKeyboardEnabled(bool) = m1 0x41bc84;
	virtual bool isMouseEnabled() = m1 0x41bcec;
	virtual void setMouseEnabled(bool) = m1 0x41bcf4;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x41c0fc;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x41c1bc;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x41c25c;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x41c2fc;
	virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x41c39c;
	virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x41c43c;
	virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x41c4dc;
	virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x41c57c;
	virtual void setPreviousPriority(int) = m1 0x9a6c;
	virtual int getPreviousPriority() = m1 0x9a74;

	virtual void didAccelerate(cocos2d::CCAcceleration*) = m1 0x41bb2c;

	virtual void keyBackClicked() = m1 0x41bd98;
	virtual void keyMenuClicked() = m1 0x41be40;

	virtual void keyDown(cocos2d::enumKeyCodes) = m1 0x41bed0;
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
	bool isSingleReference() const;
	void release();
	void retain();
	unsigned int retainCount() const;

	virtual int getTag() const;
	virtual bool isEqual(cocos2d::CCObject const*) = m1 0x3f8c50;
	virtual void acceptVisitor(cocos2d::CCDataVisitor&) = m1 0x3f8c5c;
	virtual void update(float) = m1 0x4ca18;
	virtual void encodeWithCoder(DS_Dictionary*) = m1 0x3f8c84;
	virtual bool canEncode() = m1 0x3f8c90;
	virtual void setTag(int) = m1 0x3f8c7c;
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
	static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&);
	static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&, float, float);
	static cocos2d::CCLayerColor* create();

	// CCLayerColor(cocos2d::CCLayerColor const&);
	CCLayerColor();
	~CCLayerColor();

	void setVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);

	void addToVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);
	void changeHeight(float);
	void changeWidth(float);
	void changeWidthAndHeight(float, float);

	virtual bool init() = m1 0x41d8f0;
	virtual void setContentSize(cocos2d::CCSize const&) = m1 0x41dac0;
	virtual void draw() = m1 0x41dc20;
	virtual bool initWithColor(cocos2d::_ccColor4B const&, float, float) = m1 0x41d93c;
	virtual bool initWithColor(cocos2d::_ccColor4B const&) = m1 0x41da28;
	virtual void updateColor() = m1 0x41dba4;

	virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x41dcec;
	virtual void setOpacity(unsigned char) = m1 0x41de98;

	virtual void setBlendFunc(cocos2d::_ccBlendFunc) = m1 0x41d4b8;
	virtual cocos2d::_ccBlendFunc getBlendFunc() = m1 0x41d4a8;
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA {
	static cocos2d::CCLayerRGBA* create();

	// CCLayerRGBA(cocos2d::CCLayerRGBA const&);
	CCLayerRGBA();
	~CCLayerRGBA();

	virtual bool init();

	virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x41cc20;
	virtual cocos2d::_ccColor3B const& getColor() = m1 0x41cc00;
	virtual cocos2d::_ccColor3B const& getDisplayedColor() = m1 0x41cc10;
	virtual unsigned char getDisplayedOpacity() = m1 0x41ca98;
	virtual unsigned char getOpacity() = m1 0x41ca88;
	virtual void setOpacity(unsigned char) = m1 0x41caa8;
	virtual void setOpacityModifyRGB(bool) = m1 0x9a7c;
	virtual bool isOpacityModifyRGB() = m1 0x9a80;
	virtual bool isCascadeColorEnabled() = m1 0x41d080;
	virtual void setCascadeColorEnabled(bool) = m1 0x41d090;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = m1 0x41cf4c;
	virtual bool isCascadeOpacityEnabled() = m1 0x41d060;
	virtual void setCascadeOpacityEnabled(bool) = m1 0x41d070;
	virtual void updateDisplayedOpacity(unsigned char) = m1 0x41cdac;
}

[[link(win, android)]]
class cocos2d::CCMouseDispatcher {
	// CCMouseDispatcher(cocos2d::CCMouseDispatcher const&);
	// CCMouseDispatcher();
	void addDelegate(cocos2d::CCMouseDelegate*);
	bool dispatchScrollMSG(float, float);
	void forceAddDelegate(cocos2d::CCMouseDelegate*);
	void forceRemoveDelegate(cocos2d::CCMouseDelegate*);
	void removeDelegate(cocos2d::CCMouseDelegate*);
}

[[link(win, android)]]
class cocos2d::CCTouchDispatcher {
	bool init();

	int getTargetPrio() const;

	void setDispatchEvents(bool);
	void setPriority(int, cocos2d::CCTouchDelegate*);

	// CCTouchDispatcher(cocos2d::CCTouchDispatcher const&);
	// CCTouchDispatcher();
	void addPrioTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool);
	void addStandardDelegate(cocos2d::CCTouchDelegate*, int);
	void addTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool);
	void decrementForcePrio(int);
	cocos2d::CCTouchHandler* findHandler(cocos2d::CCArray*, cocos2d::CCTouchDelegate*);
	cocos2d::CCTouchHandler* findHandler(cocos2d::CCTouchDelegate*);
	void forceAddHandler(cocos2d::CCTouchHandler*, cocos2d::CCArray*);
	void forceRemoveAllDelegates();
	void forceRemoveDelegate(cocos2d::CCTouchDelegate*);
	void incrementForcePrio(int);
	bool isDispatchEvents();
	bool isUsingForcePrio();
	void rearrangeHandlers(cocos2d::CCArray*);
	void registerForcePrio(cocos2d::CCObject*, int);
	void removeAllDelegates();
	void removeDelegate(cocos2d::CCTouchDelegate*);
	void touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int);
	void unregisterForcePrio(cocos2d::CCObject*);

	virtual void touchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void touchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void touchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void touchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*);
}

[[link(win)]]
class cocos2d::CCEGLView {
	// CCEGLView();
	// CCEGLView(cocos2d::CCEGLView const&);
	virtual void swapBuffers();
	void toggleFullScreen(bool, bool);
	void pollEvents();
	void setupWindow(cocos2d::CCRect);
	void end();
	// rest are in extras (lie)
	void onGLFWCharCallback(GLFWwindow* window, unsigned int entered);
	void onGLFWCursorEnterFunCallback(GLFWwindow* window, int entered);
	void onGLFWDeviceChangeFunCallback(GLFWwindow* window);
	void onGLFWError(int code, char const* description);
	void onGLFWKeyCallback(GLFWwindow* window, int key, int scancode, int action, int mods);
	void onGLFWMouseCallBack(GLFWwindow* window, int button, int action, int mods);
	void onGLFWMouseMoveCallBack(GLFWwindow* window, double x, double y);
	void onGLFWMouseScrollCallback(GLFWwindow* window, double xOffset, double yOffset);
	void onGLFWWindowIconifyFunCallback(GLFWwindow* window, int iconified);
	void onGLFWWindowPosCallback(GLFWwindow* window, int x, int y);
	void onGLFWWindowSizeFunCallback(GLFWwindow* window, int width, int height);
	void onGLFWframebuffersize(GLFWwindow* window, int width, int height);
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
	void addDelegate(cocos2d::CCKeyboardDelegate*);
	bool dispatchKeyboardMSG(cocos2d::enumKeyCodes, bool, bool);
	void forceAddDelegate(cocos2d::CCKeyboardDelegate*);
	void forceRemoveDelegate(cocos2d::CCKeyboardDelegate*);
	char const* keyToString(cocos2d::enumKeyCodes);
	void removeDelegate(cocos2d::CCKeyboardDelegate*);
	void updateModifierKeys(bool, bool, bool, bool);
}

[[link(win, android)]]
class cocos2d::CCDirector {
	static cocos2d::CCDirector* sharedDirector();

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
	cocos2d::CCSize getVisibleSize();
	cocos2d::CCSize getWinSize();
	cocos2d::CCSize getWinSizeInPixels();
	float getZEye();

	void setActualDeltaTime(float);
	void setAlphaBlending(bool);
	void setContentScaleFactor(float);
	void setDefaultValues();
	void setDelegate(cocos2d::CCDirectorDelegate*);
	void setDeltaTime(float);
	void setDepthTest(bool);
	void setDisplayStats(bool);
	void setDontCallWillSwitch(bool);
	void setGLDefaultValues();
	void setNextDeltaTimeZero(bool);
	void setNextScene();
	void setNotificationNode(cocos2d::CCNode*);
	void setOpenGLView(cocos2d::CCEGLView*);
	void setProjection(cocos2d::ccDirectorProjection);
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
	cocos2d::CCPoint convertToGL(cocos2d::CCPoint const&);
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
	bool popSceneWithTransition(float, cocos2d::PopTransition);
	void popToRootScene();
	void popToSceneInStack(cocos2d::CCScene*);
	void popToSceneStackLevel(int);
	void purgeCachedData();
	void purgeDirector();
	bool pushScene(cocos2d::CCScene*);
	void removeStatsLabel();
	bool replaceScene(cocos2d::CCScene*);
	void resetSmoothFixCounter();
	void reshapeProjection(cocos2d::CCSize const&);
	void resume();
	void runWithScene(cocos2d::CCScene*);
	int sceneCount();
	void setupScreenScale(cocos2d::CCSize, cocos2d::CCSize, cocos2d::TextureQuality);
	void showFPSLabel();
	void showStats();
	void toggleShowFPS(bool, gd::string, cocos2d::CCPoint);
	void updateContentScale(cocos2d::TextureQuality);
	void updateScreenScale(cocos2d::CCSize);
	void willSwitchToScene(cocos2d::CCScene*);

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
	virtual void setSceneDelegate(cocos2d::CCSceneDelegate*);
	virtual cocos2d::CCSceneDelegate* getSceneDelegate() const;
}


[[link(win, android)]]
class cocos2d::CCNodeRGBA {
	static cocos2d::CCNodeRGBA* create();

	// CCNodeRGBA(cocos2d::CCNodeRGBA const&);
	CCNodeRGBA();
	~CCNodeRGBA();

	virtual bool init() = m1 0x2172f8;

	virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x2176c8;
	virtual cocos2d::_ccColor3B const& getColor() = m1 0x2176a8;
	virtual cocos2d::_ccColor3B const& getDisplayedColor() = m1 0x2176b8;
	virtual unsigned char getDisplayedOpacity() = m1 0x217380;
	virtual unsigned char getOpacity() = m1 0x217370;
	virtual void setOpacity(unsigned char) = m1 0x217390;
	virtual void setOpacityModifyRGB(bool) = m1 0x4cbd4;
	virtual bool isOpacityModifyRGB() = m1 0x4cbd8;
	virtual bool isCascadeColorEnabled() = m1 0x217968;
	virtual void setCascadeColorEnabled(bool) = m1 0x217978;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = m1 0x217854;
	virtual bool isCascadeOpacityEnabled() = m1 0x217688;
	virtual void setCascadeOpacityEnabled(bool) = m1 0x217698;
	virtual void updateDisplayedOpacity(unsigned char) = m1 0x2174e8;
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

	virtual bool init() = m1 0x229434;
	virtual void setVertexZ(float) = m1 0x22ac28;
	virtual void setScaleX(float) = m1 0x22aaa4;
	virtual void setScaleY(float) = m1 0x22ab20;
	virtual void setScale(float) = m1 0x22ab9c;
	virtual void setPosition(cocos2d::CCPoint const&) = m1 0x22a7e0;
	virtual void setSkewX(float) = m1 0x22a9c4;
	virtual void setSkewY(float) = m1 0x22aa34;
	virtual void setAnchorPoint(cocos2d::CCPoint const&) = m1 0x22ac98;
	virtual void setVisible(bool) = m1 0x22ad0c;
	virtual void setRotation(float) = m1 0x22a874;
	virtual void setRotationX(float) = m1 0x22a8e4;
	virtual void setRotationY(float) = m1 0x22a954;
	virtual void ignoreAnchorPointForPosition(bool);
	virtual void addChild(cocos2d::CCNode*);
	virtual void addChild(cocos2d::CCNode*, int);
	virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x22a304;
	virtual void removeChild(cocos2d::CCNode*, bool) = m1 0x22a46c;
	virtual void removeAllChildrenWithCleanup(bool) = m1 0x22a4b4;
	virtual void reorderChild(cocos2d::CCNode*, int) = m1 0x22a3d8;
	virtual void sortAllChildren() = m1 0x22a570;
	virtual void draw() = m1 0x22a1e4;
	virtual void updateTransform() = m1 0x229e30;
	virtual bool initWithTexture(cocos2d::CCTexture2D*) = m1 0x2295a0;
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = m1 0x2295b0;
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = m1 0x22944c;
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x229724;
	virtual bool initWithSpriteFrameName(char const*) = m1 0x229788;
	virtual bool initWithFile(char const*) = m1 0x22962c;
	virtual bool initWithFile(char const*, cocos2d::CCRect const&) = m1 0x2296c0;
	virtual void setChildColor(cocos2d::_ccColor3B const&) = m1 0x22b110;
	virtual void setChildOpacity(unsigned char) = m1 0x22af9c;
	virtual cocos2d::CCSpriteBatchNode* getBatchNode() = m1 0x22b51c;
	virtual void setBatchNode(cocos2d::CCSpriteBatchNode*) = m1 0x22b524;
	virtual void refreshTextureRect() = m1 0x229934;
	virtual void setTextureRect(cocos2d::CCRect const&) = m1 0x2299b8;
	virtual void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&) = m1 0x2299cc;
	virtual void setVertexRect(cocos2d::CCRect const&) = m1 0x229c60;
	virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = m1 0x22b29c;
	virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = m1 0x22b370;
	virtual cocos2d::CCSpriteFrame* displayFrame() = m1 0x22b414;
	virtual void setDisplayFrameWithAnimationName(char const*, int) = m1 0x22b31c;
	virtual bool isDirty() = m1 0x83350;
	virtual void setDirty(bool) = m1 0x83358;
	virtual void setTextureCoords(cocos2d::CCRect const&) = m1 0x229c68;
	virtual void updateBlendFunc() = m1 0x22b570;
	virtual void setReorderChildDirtyRecursively() = m1 0x22a6f8;
	virtual void setDirtyRecursively(bool) = m1 0x22a760;

	virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x22b048;
	virtual void setOpacity(unsigned char) = m1 0x22aea4;
	virtual void setOpacityModifyRGB(bool) = m1 0x22b1bc;
	virtual bool isOpacityModifyRGB() = m1 0x22b1f4;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = m1 0x22b204;
	virtual void updateDisplayedOpacity(unsigned char) = m1 0x22b250;

	virtual void setBlendFunc(cocos2d::_ccBlendFunc) = m1 0x83338;
	virtual cocos2d::_ccBlendFunc getBlendFunc() = m1 0x83344;
	virtual cocos2d::CCTexture2D* getTexture() = m1 0x22b708;
	virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x22b5c8;
}

[[link(win, android)]]
class cocos2d::CCLabelBMFont {
	static cocos2d::CCLabelBMFont* create(char const*, char const*);
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float);
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment);
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint);
	static cocos2d::CCLabelBMFont* create();
	static cocos2d::CCLabelBMFont* createBatched(char const*, char const*, cocos2d::CCArray*, int);
	static void purgeCachedData();

	bool initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint);

	cocos2d::CCBMFontConfiguration* getConfiguration() const;
	int getExtraKerning() const;
	char const* getFntFile();
	bool getIsBatched() const;
	float getLetterPosXLeft(cocos2d::CCSprite*, float, bool);
	float getLetterPosXRight(cocos2d::CCSprite*, float, bool);
	cocos2d::CCArray* getTargetArray() const;

	void setExtraKerning(int);
	void setFntFile(char const*);
	void setIsBatched(bool);
	void setTargetArray(cocos2d::CCArray*);
	void createFontChars();
	int kerningAmountForFirst(unsigned short, unsigned short);
	void limitLabelWidth(float, float, float);

	virtual bool init() = m1 0x50b848;
	virtual void setScaleX(float) = m1 0x50e0a8;
	virtual void setScaleY(float) = m1 0x50e0d4;
	virtual void setScale(float) = m1 0x50e07c;
	virtual void setAnchorPoint(cocos2d::CCPoint const&) = m1 0x50cd94;
	virtual void setString(char const*, bool) = m1 0x50c36c;
	virtual void setCString(char const*) = m1 0x50c5d8;
	virtual void updateLabel() = m1 0x50cde8;
	virtual void setAlignment(cocos2d::CCTextAlignment) = m1 0x50e04c;
	virtual void setWidth(float) = m1 0x50e05c;
	virtual void setLineBreakWithoutSpace(bool) = m1 0x50e06c;
	virtual void setString(unsigned short*, bool) = m1 0x50c3f4;

	virtual void setString(char const*) = m1 0x50c348;
	virtual char const* getString() = m1 0x50c5a0;

	virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x50c604;
	virtual cocos2d::_ccColor3B const& getColor() = m1 0x50c5e4;
	virtual cocos2d::_ccColor3B const& getDisplayedColor() = m1 0x50c5f4;
	virtual unsigned char getDisplayedOpacity() = m1 0x50c7a0;
	virtual unsigned char getOpacity() = m1 0x50c790;
	virtual void setOpacity(unsigned char) = m1 0x50c7b0;
	virtual void setOpacityModifyRGB(bool) = m1 0x50c908;
	virtual bool isOpacityModifyRGB() = m1 0x50ca78;
	virtual bool isCascadeColorEnabled() = m1 0x50cd54;
	virtual void setCascadeColorEnabled(bool) = m1 0x50cd64;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = m1 0x50cbb0;
	virtual bool isCascadeOpacityEnabled() = m1 0x50cd74;
	virtual void setCascadeOpacityEnabled(bool) = m1 0x50cd84;
	virtual void updateDisplayedOpacity(unsigned char) = m1 0x50ca88;
}

[[link(win, android)]]
class cocos2d::CCApplication {
	virtual int run();
	virtual void gameDidSave();
	virtual void openURL(char const*) = m1 0x2b877c;
}

[[link(win, android)]]
class cocos2d::CCArray {
	// static cocos2d::CCArray* create(cocos2d::CCObject*, ...);
	static cocos2d::CCArray* create();
	static cocos2d::CCArray* createWithArray(cocos2d::CCArray*);
	static cocos2d::CCArray* createWithCapacity(unsigned int);
	static cocos2d::CCArray* createWithContentsOfFile(char const*);
	static cocos2d::CCArray* createWithContentsOfFileThreadSafe(char const*);
	static cocos2d::CCArray* createWithObject(cocos2d::CCObject*);

	bool init();
	bool initWithArray(cocos2d::CCArray*);
	bool initWithCapacity(unsigned int);
	bool initWithObject(cocos2d::CCObject*);
	// bool initWithObjects(cocos2d::CCObject*, ...);

	// CCArray(cocos2d::CCArray const&);
	// CCArray(unsigned int);
	// CCArray();
	void addObject(cocos2d::CCObject*);
	void addObjectNew(cocos2d::CCObject*);
	void addObjectsFromArray(cocos2d::CCArray*);
	unsigned int capacity() const;
	bool containsObject(cocos2d::CCObject*) const;
	unsigned int count() const;
	void exchangeObject(cocos2d::CCObject*, cocos2d::CCObject*);
	void exchangeObjectAtIndex(unsigned int, unsigned int);
	void fastRemoveObject(cocos2d::CCObject*);
	void fastRemoveObjectAtIndex(unsigned int);
	void fastRemoveObjectAtIndexChild(unsigned int);
	void fastRemoveObjectAtIndexNew(unsigned int);
	unsigned int indexOfObject(cocos2d::CCObject*) const;
	void insertObject(cocos2d::CCObject*, unsigned int);
	bool isEqualToArray(cocos2d::CCArray*);
	cocos2d::CCObject* lastObject();
	cocos2d::CCObject* objectAtIndex(unsigned int);
	cocos2d::CCObject* randomObject();
	void recreateNewIndexes();
	void reduceMemoryFootprint();
	void removeAllObjects();
	void removeLastObject(bool);
	void removeObject(cocos2d::CCObject*, bool);
	void removeObjectAtIndex(unsigned int, bool);
	void removeObjectAtIndexChild(unsigned int, bool);
	void removeObjectsInArray(cocos2d::CCArray*);
	void replaceObjectAtIndex(unsigned int, cocos2d::CCObject*, bool);
	void reverseObjects();
	cocos2d::CCString* stringAtIndex(unsigned int);

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
}

[[link(win, android)]]
class cocos2d::CCDictionary {
	static cocos2d::CCDictionary* create();
	static cocos2d::CCDictionary* createWithContentsOfFile(char const*);
	static cocos2d::CCDictionary* createWithContentsOfFileThreadSafe(char const*);
	static cocos2d::CCDictionary* createWithDictionary(cocos2d::CCDictionary*);

	gd::string getFirstKey();

	void setObject(cocos2d::CCObject*, gd::string const&);
	//void setObject(cocos2d::CCObject*, int);
	void setObjectUnSafe(cocos2d::CCObject*, gd::string const&);
	//void setObjectUnSafe(cocos2d::CCObject*, int);

	// CCDictionary(cocos2d::CCDictionary const&);
	// CCDictionary();
	cocos2d::CCArray* allKeys();
	cocos2d::CCArray* allKeysForObject(cocos2d::CCObject*);
	char const* charForKey(gd::string const&);
	unsigned int count();
	cocos2d::CCObject* objectForKey(gd::string const&);
	//cocos2d::CCObject* objectForKey(int);
	cocos2d::CCObject* randomObject();
	void removeAllObjects();
	void removeObjectForElememt(cocos2d::CCDictElement*);
	void removeObjectForKey(gd::string const&);
	//void removeObjectForKey(int);
	void removeObjectsForKeys(cocos2d::CCArray*);
	cocos2d::CCString const* valueForKey(gd::string const&);
	//cocos2d::CCString const* valueForKey(int);
	bool writeToFile(char const*);

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
}

[[link(win, android)]]
class cocos2d::CCTransitionFade {
	static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&);

	// CCTransitionFade(cocos2d::CCTransitionFade const&);
	// CCTransitionFade();

	virtual void onEnter();
	virtual void onExit();
	virtual bool initWithDuration(float, cocos2d::CCScene*);
	virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&);
}

[[link(win, android)]]
class cocos2d::CCDrawNode {
	static cocos2d::CCDrawNode* create();

	cocos2d::_ccBlendFunc getBlendFunc() const;

	void setBlendFunc(cocos2d::_ccBlendFunc const&);

	// CCDrawNode(cocos2d::CCDrawNode const&);
	// CCDrawNode();
	void clear();
	void drawCircle(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&, unsigned int);
	void drawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&);
	void drawDot(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&);
	bool drawLines(cocos2d::CCPoint*, unsigned int, float, cocos2d::_ccColor4F const&);
	bool drawPolygon(cocos2d::CCPoint *verts, unsigned int count, const cocos2d::ccColor4F &fillColor, float borderWidth, const cocos2d::ccColor4F &borderColor);
	void drawPreciseCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&);
	bool drawRect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&);
	void drawSegment(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&);
	void ensureCapacity(unsigned int);
	void listenBackToForeground(cocos2d::CCObject*);
	void render();

	virtual bool init();
	virtual void draw() = m1 0x53f49c;
}

[[link(win, android)]]
class cocos2d::CCSpriteBatchNode {
    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int);
}

[[link(win, android)]]
class cocos2d::CCMenuItem {
	~CCMenuItem();
	static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	static cocos2d::CCMenuItem* create();

	bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	int getScriptTapHandler();

	void setTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	// CCMenuItem(cocos2d::CCMenuItem const&);
	// CCMenuItem();
	cocos2d::CCRect rect();

	virtual void activate();
	virtual void selected();
	virtual void unselected();
	virtual void registerScriptTapHandler(int) = m1 0x345548;
	virtual void unregisterScriptTapHandler() = m1 0x345578;
	virtual bool isEnabled() = m1 0x34563c;
	virtual void setEnabled(bool);
	virtual bool isSelected() = m1 0x345660;
}

[[link(win, android)]]
class cocos2d::CCMenu {
	// static cocos2d::CCMenu* create(cocos2d::CCMenuItem*, ...);
	static cocos2d::CCMenu* create();
	static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*);
    static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*);
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

	virtual bool init() = m1 0x6a7100;
	virtual void addChild(cocos2d::CCNode*);
	virtual void addChild(cocos2d::CCNode*, int);
	virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x6a7110;
	virtual void removeChild(cocos2d::CCNode*, bool) = m1 0x6a71b8;
	virtual void onExit() = m1 0x6a7170;
	virtual void registerWithTouchDispatcher();

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x6a7548;
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
	virtual void deleteForward();
	virtual const char* getContentText();
}

[[link(win, android)]]
class cocos2d::extension::CCScale9Sprite {
	static cocos2d::extension::CCScale9Sprite* create();
	static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const*);
	static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const*, cocos2d::CCRect);
	static cocos2d::extension::CCScale9Sprite* create(char const*);
	static cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect);

	CCScale9Sprite();
	~CCScale9Sprite();

	virtual bool init();
	virtual void setContentSize(const cocos2d::CCSize& size);
	virtual void visit();
	virtual GLubyte getOpacity();
	virtual void setOpacity(GLubyte opacity);
	virtual void updateDisplayedOpacity(GLubyte parentOpacity);
	virtual const cocos2d::ccColor3B& getColor();
	virtual void setColor(const cocos2d::ccColor3B& color);
	virtual void updateDisplayedColor(const cocos2d::ccColor3B& parentColor);
	virtual void setOpacityModifyRGB(bool bValue);
	virtual bool isOpacityModifyRGB();
	virtual cocos2d::CCSize getPreferredSize();
	virtual void setPreferredSize(cocos2d::CCSize);
	virtual cocos2d::CCRect getCapInsets();
	virtual void setCapInsets(cocos2d::CCRect);
	virtual float getInsetLeft();
	virtual void setInsetLeft(float);
	virtual float getInsetTop();
	virtual void setInsetTop(float);
	virtual float getInsetRight();
	virtual void setInsetRight(float);
	virtual float getInsetBottom();
	virtual void setInsetBottom(float);
	virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect);
	virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, cocos2d::CCRect);
	virtual bool initWithFile(const char*, cocos2d::CCRect, cocos2d::CCRect);
	virtual bool initWithFile(const char*, cocos2d::CCRect);
	virtual bool initWithFile(cocos2d::CCRect, const char*);
	virtual bool initWithFile(const char*);
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect);
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*);
	virtual bool initWithSpriteFrameName(const char*, cocos2d::CCRect);
	virtual bool initWithSpriteFrameName(const char*);
	virtual bool updateWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect);
	virtual void setSpriteFrame(cocos2d::CCSpriteFrame*);
}

[[link(win, android)]]
class cocos2d::extension::CCHttpClient : cocos2d::CCObject {
	static cocos2d::extension::CCHttpClient* getInstance();
	static void destroyInstance();
	void send(cocos2d::extension::CCHttpRequest* request);
}
