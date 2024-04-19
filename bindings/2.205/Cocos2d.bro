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
	virtual bool initWithTarget(cocos2d::CCObject*);
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
	static cocos2d::CCFileUtils* sharedFileUtils() = ios 0x23eddc;
	virtual bool shouldUseHD();
	virtual bool writeToFile(cocos2d::CCDictionary*, gd::string const&);
}

[[link(win, android)]]
class cocos2d::CCNode {
	static cocos2d::CCNode* create() = ios 0x24389c;
	static void resetGlobalOrderOfArrival();

	// CCNode(cocos2d::CCNode const&);
	CCNode() = ios 0x24389c;
    	~CCNode() = ios 0x2439f8;

	cocos2d::CCAction* getActionByTag(int);
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
	void insertChild(cocos2d::CCNode*, int);
	unsigned int numberOfRunningActions();
	void pauseSchedulerAndActions();
	void qsortAllChildrenWithIndex();
	void resumeSchedulerAndActions();
	cocos2d::CCAction* runAction(cocos2d::CCAction*) = ios 0x244f78;
	void schedule(cocos2d::SEL_SCHEDULE);
	void schedule(cocos2d::SEL_SCHEDULE, float);
	void schedule(cocos2d::SEL_SCHEDULE, float, unsigned int, float) = ios 0x2450a4;
	void scheduleOnce(cocos2d::SEL_SCHEDULE, float);
	void scheduleUpdate();
	void scheduleUpdateWithPriority(int);
	void scheduleUpdateWithPriorityLua(int, int);
	void sortAllChildrenNoIndex();
	void sortAllChildrenWithIndex();
	void stopAction(cocos2d::CCAction*);
	void stopActionByTag(int);
	void stopAllActions() = ios 0x244280;
	void transform();
	void transformAncestors();
	void unschedule(cocos2d::SEL_SCHEDULE);
	void unscheduleAllSelectors();
	void unscheduleUpdate();
	void updateChildIndexes();

	virtual unsigned int getChildrenCount() const;
	virtual cocos2d::CCSize const& getContentSize() const = ios 0x243f58;
	virtual void update(float) = ios 0x245114;
	virtual bool init() = ios 0x243b30;
	virtual void setZOrder(int) = ios 0x243b80;
	virtual void _setZOrder(int);
	virtual int getZOrder();
	virtual void setVertexZ(float);
	virtual float getVertexZ();
	virtual void setScaleX(float);
	virtual float getScaleX();
	virtual void setScaleY(float);
	virtual float getScaleY();
	virtual void setScale(float);
	virtual float getScale();
	virtual void setScale(float, float);
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual cocos2d::CCPoint const& getPosition();
	virtual void setPosition(float, float);
	virtual void getPosition(float*, float*);
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
	virtual cocos2d::CCSize getScaledContentSize();
	virtual void setVisible(bool);
	virtual bool isVisible();
	virtual void setRotation(float);
	virtual float getRotation();
	virtual void setRotationX(float);
	virtual float getRotationX();
	virtual void setRotationY(float);
	virtual float getRotationY();
	virtual void setOrderOfArrival(unsigned int);
	virtual unsigned int getOrderOfArrival();
	virtual void setGLServerState(cocos2d::ccGLServerState);
	virtual cocos2d::ccGLServerState getGLServerState();
	virtual void ignoreAnchorPointForPosition(bool);
	virtual bool isIgnoreAnchorPointForPosition();
	virtual void addChild(cocos2d::CCNode*) = ios 0x24444c;
	virtual void addChild(cocos2d::CCNode*, int) = ios 0x24443c;
	virtual void addChild(cocos2d::CCNode*, int, int) = ios 0x24431c;
	virtual cocos2d::CCNode* getChildByTag(int);
	virtual cocos2d::CCArray* getChildren();
	virtual void setParent(cocos2d::CCNode*);
	virtual cocos2d::CCNode* getParent();
	virtual void removeFromParent();
	virtual void removeFromParentAndCleanup(bool);
	virtual void removeMeAndCleanup();
	virtual void removeChild(cocos2d::CCNode*);
	virtual void removeChild(cocos2d::CCNode*, bool);
	virtual void removeChildByTag(int);
	virtual void removeChildByTag(int, bool);
	virtual void removeAllChildren();
	virtual void removeAllChildrenWithCleanup(bool);
	virtual void reorderChild(cocos2d::CCNode*, int);
	virtual void sortAllChildren();
	virtual cocos2d::CCGridBase* getGrid();
	virtual void setGrid(cocos2d::CCGridBase*);
	virtual void* getUserData();
	virtual void setUserData(void*);
	virtual cocos2d::CCObject* getUserObject();
	virtual void setUserObject(cocos2d::CCObject*);
	virtual cocos2d::CCGLProgram* getShaderProgram();
	virtual void setShaderProgram(cocos2d::CCGLProgram*);
	virtual cocos2d::CCCamera* getCamera();
	virtual bool isRunning();
	virtual void registerScriptHandler(int);
	virtual void unregisterScriptHandler();
	virtual void onEnter();
	virtual void onEnterTransitionDidFinish();
	virtual void onExit();
	virtual void onExitTransitionDidStart();
	virtual void cleanup();
	virtual void draw();
	virtual void visit();
	virtual void setActionManager(cocos2d::CCActionManager*);
	virtual cocos2d::CCActionManager* getActionManager();
	virtual void setScheduler(cocos2d::CCScheduler*);
	virtual cocos2d::CCScheduler* getScheduler();
	virtual void updateTransform();
	virtual cocos2d::CCAffineTransform const nodeToParentTransform();
	virtual cocos2d::CCAffineTransform const nodeToParentTransformFast();
	virtual cocos2d::CCAffineTransform const parentToNodeTransform();
	virtual cocos2d::CCAffineTransform nodeToWorldTransform();
	virtual cocos2d::CCAffineTransform nodeToWorldTransformFast();
	virtual cocos2d::CCAffineTransform worldToNodeTransform();
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
	static cocos2d::CCLayer* create() = ios 0x150918;

	// CCLayer(cocos2d::CCLayer const&);
	CCLayer() = ios 0x150758;
    	~CCLayer() = ios 0x150804;

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
	virtual void onEnter();
	virtual void onEnterTransitionDidFinish() = ios 0x15113c;
	virtual void onExit();
	virtual void registerWithTouchDispatcher();
	virtual void registerScriptTouchHandler(int, bool, int, bool);
	virtual void unregisterScriptTouchHandler();
	virtual bool isTouchEnabled();
	virtual void setTouchEnabled(bool);
	virtual void setTouchMode(cocos2d::ccTouchesMode);
	virtual int getTouchMode();
	virtual void setTouchPriority(int);
	virtual int getTouchPriority();
	virtual bool isAccelerometerEnabled();
	virtual void setAccelerometerEnabled(bool);
	virtual void setAccelerometerInterval(double);
	virtual bool isKeypadEnabled();
	virtual void setKeypadEnabled(bool);
	virtual bool isKeyboardEnabled();
	virtual void setKeyboardEnabled(bool);
	virtual bool isMouseEnabled();
	virtual void setMouseEnabled(bool);

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x15145c;
	virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x1514fc;
	virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x15159c;
	virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x15163c;
	virtual void setPreviousPriority(int);
	virtual int getPreviousPriority();

	virtual void didAccelerate(cocos2d::CCAcceleration*);

	virtual void keyBackClicked();
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
	cocos2d::CCObject* copy();
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
	~CCLayerColor() = ios 0x151bac; // (or ios = 0x150804 IDK GHIDRA IS MESSING WITH ME);

	void setVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);

	void addToVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);
	void changeHeight(float);
	void changeWidth(float);
	void changeWidthAndHeight(float, float);

	virtual bool init();
	virtual void setContentSize(cocos2d::CCSize const&);
	virtual void draw();
	virtual bool initWithColor(cocos2d::_ccColor4B const&, float, float);
	virtual bool initWithColor(cocos2d::_ccColor4B const&);
	virtual void updateColor();

	virtual void setColor(cocos2d::_ccColor3B const&);
	virtual void setOpacity(unsigned char);

	virtual void setBlendFunc(cocos2d::_ccBlendFunc);
	virtual cocos2d::_ccBlendFunc getBlendFunc();
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
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = ios 0x1519f8;
	virtual bool isCascadeOpacityEnabled() = ios 0x151af8;
	virtual void setCascadeOpacityEnabled(bool) = ios 0x151b08;
	virtual void updateDisplayedOpacity(unsigned char) = ios 0x151924;
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
	bool init() = ios 0x156dd8;

	int getTargetPrio() const;

	void setDispatchEvents(bool) = ios 0x156dd0;
	void setPriority(int, cocos2d::CCTouchDelegate*) = ios 0x9999999; // doesn't exist lol

	// CCTouchDispatcher(cocos2d::CCTouchDispatcher const&);
	// CCTouchDispatcher();
	void addPrioTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = ios 0x156ffc;
	void addStandardDelegate(cocos2d::CCTouchDelegate*, int) = ios 0x157200;
	void addTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = ios 0x157014;
	void decrementForcePrio(int);
	cocos2d::CCTouchHandler* findHandler(cocos2d::CCArray*, cocos2d::CCTouchDelegate*) = ios 0x157400;
	cocos2d::CCTouchHandler* findHandler(cocos2d::CCTouchDelegate*) = ios 0x1574b8;
	void forceAddHandler(cocos2d::CCTouchHandler*, cocos2d::CCArray*) = ios 0x157400;
	void forceRemoveAllDelegates();
	void forceRemoveDelegate(cocos2d::CCTouchDelegate*) = ios 0x157294;
	void incrementForcePrio(int);
	bool isDispatchEvents();
	bool isUsingForcePrio();
	void rearrangeHandlers(cocos2d::CCArray*);
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
	static void purgeSharedTextureCache();
	static void reloadAllTextures();
	static cocos2d::CCTextureCache* sharedTextureCache() = ios 0x113704;

	// CCTextureCache(cocos2d::CCTextureCache const&);
	// CCTextureCache();
	cocos2d::CCTexture2D* addETCImage(char const*);
	cocos2d::CCTexture2D* addImage(char const*, bool) = ios 0x1142dc;
	void addImageAsync(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler, int, cocos2d::CCTexture2DPixelFormat);
	void addImageAsyncCallBack(float);
	cocos2d::CCTexture2D* addPVRImage(char const*);
	cocos2d::CCTexture2D* addUIImage(cocos2d::CCImage*, char const*);
	char const* description();
	void dumpCachedTextureInfo();
	void prepareAsyncLoading();
	bool reloadTexture(char const*);
	void removeAllTextures();
	void removeTexture(cocos2d::CCTexture2D*);
	void removeTextureForKey(char const*);
	void removeUnusedTextures();
	cocos2d::CCDictionary* snapshotTextures();
	cocos2d::CCTexture2D* textureForKey(char const*);
}

[[link(win)]]
class cocos2d::CCEGLView {
	// CCEGLView();
	// CCEGLView(cocos2d::CCEGLView const&);
	virtual void swapBuffers();
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
	cocos2d::CCSize getVisibleSize();
	cocos2d::CCSize getWinSize() = ios 0x17cbe4;
	cocos2d::CCSize getWinSizeInPixels();
	float getZEye();

	void setActualDeltaTime(float);
	void setAlphaBlending(bool);
	void setContentScaleFactor(float);
	void setDefaultValues();
	void setDelegate(cocos2d::CCDirectorDelegate*);
	void setDeltaTime(float);
	void setDepthTest(bool) = ios 0x17c4e4;
	void setDisplayStats(bool);
	void setDontCallWillSwitch(bool);
	void setGLDefaultValues();
	void setNextDeltaTimeZero(bool);
	void setNextScene();
	void setNotificationNode(cocos2d::CCNode*);
	void setOpenGLView(cocos2d::CCEGLView*);
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
	bool pushScene(cocos2d::CCScene*) = ios 0x17cfb0;
	void removeStatsLabel();
	bool replaceScene(cocos2d::CCScene*) = ios 0x17d038;
	void resetSmoothFixCounter();
	void reshapeProjection(cocos2d::CCSize const&);
	void resume();
	void runWithScene(cocos2d::CCScene*) = ios 0x17cf84;
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
}


[[link(win, android)]]
class cocos2d::CCNodeRGBA {
	static cocos2d::CCNodeRGBA* create();

	// CCNodeRGBA(cocos2d::CCNodeRGBA const&);
	CCNodeRGBA() = ios 0x245b20;
	~CCNodeRGBA() = ios 0x245b50;

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
class cocos2d::CCSprite {
	static cocos2d::CCSprite* create(char const*) = ios 0x240214;
	static cocos2d::CCSprite* create(char const*, cocos2d::CCRect const&);
	static cocos2d::CCSprite* create();
	static cocos2d::CCSprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*);
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

	virtual bool init();
	virtual void setVertexZ(float);
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setScale(float);
	virtual void setPosition(cocos2d::CCPoint const&);
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
	virtual void addChild(cocos2d::CCNode*, int, int);
	virtual void removeChild(cocos2d::CCNode*, bool);
	virtual void removeAllChildrenWithCleanup(bool);
	virtual void reorderChild(cocos2d::CCNode*, int);
	virtual void sortAllChildren();
	virtual void draw();
	virtual void updateTransform();
	virtual bool initWithTexture(cocos2d::CCTexture2D*);
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*);
	virtual bool initWithSpriteFrameName(char const*);
	virtual bool initWithFile(char const*);
	virtual bool initWithFile(char const*, cocos2d::CCRect const&);
	virtual void setChildColor(cocos2d::_ccColor3B const&);
	virtual void setChildOpacity(unsigned char);
	virtual cocos2d::CCSpriteBatchNode* getBatchNode();
	virtual void setBatchNode(cocos2d::CCSpriteBatchNode*);
	virtual void refreshTextureRect();
	virtual void setTextureRect(cocos2d::CCRect const&);
	virtual void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&);
	virtual void setVertexRect(cocos2d::CCRect const&);
	virtual void setDisplayFrame(cocos2d::CCSpriteFrame*);
	virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*);
	virtual cocos2d::CCSpriteFrame* displayFrame();
	virtual void setDisplayFrameWithAnimationName(char const*, int);
	virtual void setTextureCoords(cocos2d::CCRect const&);
	virtual void updateBlendFunc();
	virtual void setReorderChildDirtyRecursively();
	virtual void setDirtyRecursively(bool);

	virtual void setColor(cocos2d::_ccColor3B const&);
	virtual void setOpacity(unsigned char);
	virtual void setOpacityModifyRGB(bool);
	virtual bool isOpacityModifyRGB();
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&);
	virtual void updateDisplayedOpacity(unsigned char);

	virtual cocos2d::CCTexture2D* getTexture();
	virtual void setTexture(cocos2d::CCTexture2D*);
}

[[link(win, android)]]
class cocos2d::CCLabelBMFont {
	~CCLabelBMFont() = ios 0x301fcc;
	static cocos2d::CCLabelBMFont* create(char const*, char const*) = ios 0x301b04;
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float);
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment);
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = ios 0x301a44;
	static cocos2d::CCLabelBMFont* create();
	static cocos2d::CCLabelBMFont* createBatched(char const*, char const*, cocos2d::CCArray*, int);
	static void purgeCachedData();

	bool initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = ios 0x301b54;

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
	void setObject(cocos2d::CCObject*, int);
	void setObjectUnSafe(cocos2d::CCObject*, gd::string const&);
	void setObjectUnSafe(cocos2d::CCObject*, int);

	// CCDictionary(cocos2d::CCDictionary const&);
	// CCDictionary();
	cocos2d::CCArray* allKeys();
	cocos2d::CCArray* allKeysForObject(cocos2d::CCObject*);
	char const* charForKey(gd::string const&);
	unsigned int count();
	cocos2d::CCObject* objectForKey(gd::string const&);
	cocos2d::CCObject* objectForKey(int);
	cocos2d::CCObject* randomObject();
	void removeAllObjects();
	void removeObjectForElememt(cocos2d::CCDictElement*);
	void removeObjectForKey(gd::string const&);
	void removeObjectForKey(int);
	void removeObjectsForKeys(cocos2d::CCArray*);
	cocos2d::CCString const* valueForKey(gd::string const&);
	cocos2d::CCString const* valueForKey(int);
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

    virtual void onEnter() = mac 0xd0a90;
    virtual void onExit() = mac 0xd0ae0;
    virtual void cleanup() = mac 0xd0b40;
    virtual void draw() = mac 0xd0840;
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
	static gd::string base64URLEncode(gd::string const&);
	static void ccDecodeEncodedPvr(unsigned int*, int);
	static int ccDeflateMemory(unsigned char*, unsigned int, unsigned char**);
	static int ccInflateCCZFile(char const*, unsigned char**);
	static int ccInflateGZipFile(char const*, unsigned char**);
	static int ccInflateMemory(unsigned char*, unsigned int, unsigned char**);
	static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int*, unsigned int);
	static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int);
	static void ccSetPvrEncryptionKey(unsigned int, unsigned int, unsigned int, unsigned int);
	static void ccSetPvrEncryptionKeyPart(int, unsigned int);
	static gd::string compressString(gd::string const&, bool, int);
	static gd::string decompressString2(unsigned char*, bool, int, int);
	static gd::string decompressString(gd::string const&, bool, int);
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
class cocos2d::CCSequence {
	static cocos2d::CCSequence* create(cocos2d::CCArray*) = ios 0x191274;
	// static cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, ...);
	static cocos2d::CCSequence* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);
	static cocos2d::CCSequence* createWithVariableList(cocos2d::CCFiniteTimeAction*, va_list) = ios 0x19129c;

	bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);

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

	virtual void selected();
	virtual void unselected();
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
	cocos2d::CCRect rect();

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
	static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const*);
	static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const*, cocos2d::CCRect);
	static cocos2d::extension::CCScale9Sprite* create(char const*);
	static cocos2d::extension::CCScale9Sprite* create() = mac 0x3d7240;
	static cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect) = ios 0x21e9c8;

	CCScale9Sprite() = ios 0x21d3a4;
	~CCScale9Sprite() = ios 0x21d454;

	// where is updatePositions
	virtual bool init() = ios 0x21d51c;
	virtual void setContentSize(const cocos2d::CCSize& size) = ios 0x21e418;
	virtual void visit() = ios 0x21f110;
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
	virtual bool initWithFile(const char*, cocos2d::CCRect, cocos2d::CCRect) = ios 0x21e8f0;
	virtual bool initWithFile(const char*, cocos2d::CCRect);
	virtual bool initWithFile(cocos2d::CCRect, const char*);
	virtual bool initWithFile(const char*);
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = ios 0x21eb24;
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*);
	virtual bool initWithSpriteFrameName(const char*, cocos2d::CCRect);
	virtual bool initWithSpriteFrameName(const char*);
	virtual bool updateWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = ios 0x21d68c;
	virtual void setSpriteFrame(cocos2d::CCSpriteFrame*);
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

	virtual bool init();
	virtual void addChild(cocos2d::CCNode*);
	virtual void addChild(cocos2d::CCNode*, int);
	virtual void addChild(cocos2d::CCNode*, int, int);
	virtual void removeChild(cocos2d::CCNode*, bool);
	virtual void onExit();
	virtual void registerWithTouchDispatcher();

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
}

[[link(win, android)]]
class DS_Dictionary {
	DS_Dictionary();
	// ~DS_Dictionary();

	static void copyFile(const char*, const char*);

	cocos2d::CCObject* decodeObjectForKey(const char*, bool, int);

	bool loadRootSubDictFromFile(const char*);
	bool loadRootSubDictFromCompressedFile(const char*);
	bool loadRootSubDictFromString(gd::string const&);

	bool saveRootSubDictToFile(const char*);
	bool saveRootSubDictToCompressedFile(const char*);
	gd::string saveRootSubDictToString();

	bool stepIntoSubDictWithKey(const char*);
	void stepOutOfSubDict();
	void stepBackToRootSubDict();

	unsigned int getNumKeys();
	gd::string getKey(unsigned int);
	gd::vector<gd::string> getAllKeys();
	unsigned int getIndexOfKey(const char*);
	unsigned int getIndexOfKeyWithClosestAlphaNumericalMatch(const char*);
	void removeKey(unsigned int);
	void removeKey(const char*);
	void removeAllKeys();

	int getIntegerForKey(const char*);
	bool getBoolForKey(const char*);
	float getFloatForKey(const char*);
	gd::string getStringForKey(const char*);
	cocos2d::CCPoint getVec2ForKey(const char*);
	cocos2d::CCRect getRectForKey(const char*);
	gd::vector<gd::string> getStringArrayForKey(const char*);
	gd::vector<cocos2d::CCPoint> getVec2ArrayForKey(const char*);
	gd::vector<cocos2d::CCRect> getRectArrayForKey(const char*);
	cocos2d::CCArray* getArrayForKey(const char*, bool);
	cocos2d::CCDictionary* getDictForKey(const char*, bool);
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
	void setArrayForKey(const char*, cocos2d::CCArray*);
	void setBoolMapForKey(const char*, gd::map<gd::string, bool>&);
	void setSubDictForKey(const char*);
	void setSubDictForKey(const char*, bool, bool);
	void setDictForKey(const char*, cocos2d::CCDictionary*);
	void setObjectForKey(const char*, cocos2d::CCObject*);

	void addBoolValuesToMapForKey(gd::map<gd::string, bool>&, const char*, bool);
	void addBoolValuesToMapForKeySpecial(gd::map<gd::string, bool>&, const char*, bool);

	void checkCompatibility();
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
	virtual void draw();
}

[[link(win, android)]]
class cocos2d::CCSpriteBatchNode {
	static cocos2d::CCSpriteBatchNode* create(char const*);// = mac 0x167230;
	static cocos2d::CCSpriteBatchNode* create(char const*, unsigned int) = mac 0x167460;
	static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*);
	static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int);

	bool initWithFile(char const*, unsigned int);
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
	void removeSpriteFromAtlas(cocos2d::CCSprite*);
	void reorderBatch(bool);
	void swap(int, int);
	void updateAtlasIndex(cocos2d::CCSprite*, int*);
	void updateBlendFunc();
	void updateQuadFromSprite(cocos2d::CCSprite*, unsigned int);

	virtual bool init() = mac 0x1675a0;
	virtual void addChild(cocos2d::CCNode*) = mac 0x167a70;
	virtual void addChild(cocos2d::CCNode*, int) = mac 0x167a80;
	virtual void addChild(cocos2d::CCNode*, int, int) = mac 0x167810;
	virtual void removeChild(cocos2d::CCNode*, bool) = mac 0x167af0;
	virtual void removeAllChildrenWithCleanup(bool) = mac 0x167dd0;
	virtual void reorderChild(cocos2d::CCNode*, int) = mac 0x167a90;
	virtual void sortAllChildren() = mac 0x167e80;
	virtual void draw() = mac 0x168670;
	virtual void visit() = mac 0x167770;

	virtual void setBlendFunc(cocos2d::_ccBlendFunc) = mac 0x168ed0;
	virtual cocos2d::_ccBlendFunc getBlendFunc() = mac 0x168ef0;
	virtual cocos2d::CCTexture2D* getTexture() = mac 0x168f10;
	virtual void setTexture(cocos2d::CCTexture2D*) = mac 0x168f40;
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
	void pauseTarget(cocos2d::CCObject*);
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
	static void ccDrawColor4B(unsigned char, unsigned char, unsigned char, unsigned char) = ios 0x254420;
	static void ccDrawColor4F(float, float, float, float);
	static void ccDrawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
	static void ccDrawFilledCircle(cocos2d::CCPoint const&, float, float, unsigned int);
	static void ccDrawFree();
	static void ccDrawInit();
	static void ccDrawLine(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = ios 0x253d5c;
	static void ccDrawLines(cocos2d::CCPoint const*, unsigned int);
	static void ccDrawPoint(cocos2d::CCPoint const&);
	static void ccDrawPoints(cocos2d::CCPoint const*, unsigned int);
	static void ccDrawPoly(cocos2d::CCPoint const*, unsigned int, bool);
	static void ccDrawQuadBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
	static void ccDrawRect(cocos2d::CCPoint, cocos2d::CCPoint);
	static void ccDrawSolidPoly(cocos2d::CCPoint const*, unsigned int, cocos2d::_ccColor4F);
	static void ccDrawSolidRect(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::_ccColor4F) = ios 0x3ad68;
	static void ccGLBindTexture2D(unsigned int);
	static void ccGLBindTexture2DN(unsigned int, unsigned int);
	static void ccGLBindVAO(unsigned int);
	static void ccGLBlendFunc(unsigned int, unsigned int) = ios 0x1957d8;
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
	cocos2d::CCPoint const& getOffset();
	cocos2d::CCPoint const& getOffsetInPixels();
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
	static void purgeSharedSpriteFrameCache();
	static cocos2d::CCSpriteFrameCache* sharedSpriteFrameCache() = ios 0x3b8d98;

	bool init();

	// CCSpriteFrameCache();
	// CCSpriteFrameCache(cocos2d::CCSpriteFrameCache const&);
	void addSpriteFrame(cocos2d::CCSpriteFrame*, char const*);
	void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*);
	void addSpriteFramesWithFile(char const*, char const*);
	void addSpriteFramesWithFile(char const*) = ios 0x3b97dc;
	void addSpriteFramesWithFile(char const*, cocos2d::CCTexture2D*);
	void removeSpriteFrameByName(char const*);
	void removeSpriteFrames();
	void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*);
	void removeSpriteFramesFromFile(char const*);
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
	void send(cocos2d::extension::CCHttpRequest* request);
}
