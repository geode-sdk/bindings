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
	static cocos2d::CCScene* create() = mac 0x26ec40;

	int getHighestChildZ() = mac 0x26ecf0;

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
	virtual void update(float);
	virtual bool init();
	virtual void setZOrder(int);
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
	virtual void addChild(cocos2d::CCNode*);
	virtual void addChild(cocos2d::CCNode*, int);
	virtual void addChild(cocos2d::CCNode*, int, int);
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

	virtual bool init();
	virtual void onEnter();
	virtual void onEnterTransitionDidFinish();
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
	virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void setPreviousPriority(int);
	virtual int getPreviousPriority();

	virtual void didAccelerate(cocos2d::CCAcceleration*);

	virtual void keyBackClicked();
	virtual void keyMenuClicked();

	virtual void keyDown(cocos2d::enumKeyCodes);
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
	virtual bool isEqual(cocos2d::CCObject const*);
	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
	virtual void update(float);
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
	CCLayerRGBA();
	~CCLayerRGBA();

	virtual bool init();

	virtual void setColor(cocos2d::_ccColor3B const&);
	virtual cocos2d::_ccColor3B const& getColor();
	virtual cocos2d::_ccColor3B const& getDisplayedColor();
	virtual unsigned char getDisplayedOpacity();
	virtual unsigned char getOpacity();
	virtual void setOpacity(unsigned char);
	virtual void setOpacityModifyRGB(bool);
	virtual bool isOpacityModifyRGB();
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
	// rest are in extras
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

	virtual bool init();

	virtual void setColor(cocos2d::_ccColor3B const&);
	virtual cocos2d::_ccColor3B const& getColor();
	virtual cocos2d::_ccColor3B const& getDisplayedColor();
	virtual unsigned char getDisplayedOpacity();
	virtual unsigned char getOpacity();
	virtual void setOpacity(unsigned char);
	virtual void setOpacityModifyRGB(bool);
	virtual bool isOpacityModifyRGB();
	virtual bool isCascadeColorEnabled();
	virtual void setCascadeColorEnabled(bool);
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&);
	virtual bool isCascadeOpacityEnabled();
	virtual void setCascadeOpacityEnabled(bool);
	virtual void updateDisplayedOpacity(unsigned char);
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
	virtual bool isDirty();
	virtual void setDirty(bool);
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

	virtual void setBlendFunc(cocos2d::_ccBlendFunc);
	virtual cocos2d::_ccBlendFunc getBlendFunc();
	virtual cocos2d::CCTexture2D* getTexture();
	virtual void setTexture(cocos2d::CCTexture2D*);
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

	virtual bool init();
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setScale(float);
	virtual void setAnchorPoint(cocos2d::CCPoint const&);
	virtual void setString(char const*, bool);
	virtual void setCString(char const*);
	virtual void updateLabel();
	virtual void setAlignment(cocos2d::CCTextAlignment);
	virtual void setWidth(float);
	virtual void setLineBreakWithoutSpace(bool);
	virtual void setString(unsigned short*, bool);

	virtual void setString(char const*);
	virtual char const* getString();

	virtual void setColor(cocos2d::_ccColor3B const&);
	virtual cocos2d::_ccColor3B const& getColor();
	virtual cocos2d::_ccColor3B const& getDisplayedColor();
	virtual unsigned char getDisplayedOpacity();
	virtual unsigned char getOpacity();
	virtual void setOpacity(unsigned char);
	virtual void setOpacityModifyRGB(bool);
	virtual bool isOpacityModifyRGB();
	virtual bool isCascadeColorEnabled();
	virtual void setCascadeColorEnabled(bool);
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&);
	virtual bool isCascadeOpacityEnabled();
	virtual void setCascadeOpacityEnabled(bool);
	virtual void updateDisplayedOpacity(unsigned char);
}

[[link(win, android)]]
class cocos2d::CCApplication {
	virtual void gameDidSave();
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
	virtual void draw();
}

[[link(win, android)]]
class cocos2d::CCSpriteBatchNode {
    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int);
}
