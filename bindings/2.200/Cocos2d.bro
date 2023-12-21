// clang-format off

[[link(win, android)]]
class cocos2d::CCAccelAmplitude {
	// CCAccelAmplitude(cocos2d::CCAccelAmplitude const&);
	// CCAccelAmplitude();
	static cocos2d::CCAccelAmplitude* create(cocos2d::CCAction*, float);
	float getRate();
	bool initWithAction(cocos2d::CCAction*, float);
	virtual cocos2d::CCActionInterval* reverse();
	void setRate(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCAccelDeccelAmplitude {
	// CCAccelDeccelAmplitude(cocos2d::CCAccelDeccelAmplitude const&);
	// CCAccelDeccelAmplitude();
	static cocos2d::CCAccelDeccelAmplitude* create(cocos2d::CCAction*, float);
	float getRate();
	bool initWithAction(cocos2d::CCAction*, float);
	virtual cocos2d::CCActionInterval* reverse();
	void setRate(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCAccelerometer {
	// CCAccelerometer();
	void setAccelerometerInterval(float);
	void setDelegate(cocos2d::CCAccelerometerDelegate*);
	// void update(double, double, double, double);
}

[[link(win, android)]]
class cocos2d::CCAccelerometerDelegate {
	// CCAccelerometerDelegate(cocos2d::CCAccelerometerDelegate const&);
	// CCAccelerometerDelegate();
	virtual void didAccelerate(cocos2d::CCAcceleration*);
}

[[link(win, android)]]
class cocos2d::CCAction {
	// CCAction(cocos2d::CCAction const&);
	// CCAction();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCAction* create();
	char const* description();
	cocos2d::CCNode* getOriginalTarget();
	float getSpeedMod() const;
	int getTag();
	cocos2d::CCNode* getTarget();
	virtual bool isDone();
	void setOriginalTarget(cocos2d::CCNode*);
	void setSpeedMod(float);
	virtual void setTag(int);
	void setTarget(cocos2d::CCNode*);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void step(float);
	virtual void stop();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCActionCamera {
	// CCActionCamera(cocos2d::CCActionCamera const&);
	// CCActionCamera();
	virtual cocos2d::CCActionInterval* reverse();
	virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCActionEase {
	// CCActionEase(cocos2d::CCActionEase const&);
	// CCActionEase();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCActionEase* create(cocos2d::CCActionInterval*);
	virtual cocos2d::CCActionInterval* getInnerAction();
	bool initWithAction(cocos2d::CCActionInterval*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void stop();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCActionInstant {
	// CCActionInstant(cocos2d::CCActionInstant const&);
	// CCActionInstant();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual bool isDone();
	virtual cocos2d::CCFiniteTimeAction* reverse();
	virtual void step(float);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCActionInterval {
	// CCActionInterval(cocos2d::CCActionInterval const&);
	// CCActionInterval();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCActionInterval* create(float);
	float getAmplitudeRate();
	float getElapsed();
	bool getM_bFirstTick() const;
	bool initWithDuration(float);
	virtual bool isDone();
	virtual cocos2d::CCActionInterval* reverse();
	void setAmplitudeRate(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void step(float);
}

[[link(win, android)]]
class cocos2d::CCActionManager {
	// CCActionManager(cocos2d::CCActionManager const&);
	// CCActionManager();
	void actionAllocWithHashElement(cocos2d::_hashElement*);
	void addAction(cocos2d::CCAction*, cocos2d::CCNode*, bool);
	void deleteHashElement(cocos2d::_hashElement*);
	cocos2d::CCAction* getActionByTag(unsigned int, cocos2d::CCObject*);
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
class cocos2d::CCActionTween {
	// CCActionTween(cocos2d::CCActionTween const&);
	// CCActionTween();
	static cocos2d::CCActionTween* create(float, int, float, float);
	static cocos2d::CCActionTween* create(float, char const*, float, float);
	bool initWithDuration(float, char const*, float, float);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
	void updateTargetValue(float);
}

[[link(win, android)]]
class cocos2d::CCActionTweenDelegate {
	// CCActionTweenDelegate(cocos2d::CCActionTweenDelegate const&);
	// CCActionTweenDelegate();
}

[[link(win, android)]]
class cocos2d::CCAnimate {
	// CCAnimate(cocos2d::CCAnimate const&);
	// CCAnimate();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCAnimate* create(cocos2d::CCAnimation*);
	cocos2d::CCAnimation* getAnimation() const;
	bool getRecenterChildren() const;
	bool getRecenterFrames() const;
	bool initWithAnimation(cocos2d::CCAnimation*);
	virtual cocos2d::CCActionInterval* reverse();
	void setAnimation(cocos2d::CCAnimation*);
	void setRecenterChildren(bool);
	void setRecenterFrames(bool);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void stop();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCAnimation {
	// CCAnimation(cocos2d::CCAnimation const&);
	// CCAnimation();
	void addSpriteFrame(cocos2d::CCSpriteFrame*);
	void addSpriteFrameWithFileName(char const*);
	void addSpriteFrameWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCAnimation* create(cocos2d::CCArray*, float);
	static cocos2d::CCAnimation* create(cocos2d::CCArray*, float, unsigned int);
	static cocos2d::CCAnimation* create();
	static cocos2d::CCAnimation* createWithSpriteFrames(cocos2d::CCArray*, float);
	float getDelayPerUnit() const;
	virtual float getDuration();
	cocos2d::CCArray* getFrames() const;
	unsigned int getLoops() const;
	bool getRestoreOriginalFrame() const;
	float getTotalDelayUnits() const;
	bool init();
	bool initWithAnimationFrames(cocos2d::CCArray*, float, unsigned int);
	bool initWithSpriteFrames(cocos2d::CCArray*, float);
	void setDelayPerUnit(float);
	void setFrames(cocos2d::CCArray*);
	void setLoops(unsigned int);
	void setRestoreOriginalFrame(bool);
}

[[link(win, android)]]
class cocos2d::CCAnimationCache {
	// CCAnimationCache(cocos2d::CCAnimationCache const&);
	// CCAnimationCache();
	void addAnimation(cocos2d::CCAnimation*, char const*);
	void addAnimationsWithDictionary(cocos2d::CCDictionary*, char const*);
	void addAnimationsWithFile(char const*);
	cocos2d::CCAnimation* animationByName(char const*);
	bool init();
	void parseVersion1(cocos2d::CCDictionary*);
	void parseVersion2(cocos2d::CCDictionary*);
	static void purgeSharedAnimationCache();
	void removeAnimationByName(char const*);
	static cocos2d::CCAnimationCache* sharedAnimationCache();
}

[[link(win, android)]]
class cocos2d::CCAnimationFrame {
	// CCAnimationFrame(cocos2d::CCAnimationFrame const&);
	// CCAnimationFrame();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	float getDelayUnits() const;
	cocos2d::CCSpriteFrame* getSpriteFrame() const;
	cocos2d::CCDictionary* getUserInfo() const;
	bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, float, cocos2d::CCDictionary*);
	void setDelayUnits(float);
	void setSpriteFrame(cocos2d::CCSpriteFrame*);
	void setUserInfo(cocos2d::CCDictionary*);
}

// [[link(win)]]
// class cocos2d::CCApplication {
// 	// CCApplication(cocos2d::CCApplication const&);
// 	// CCApplication();
// 	virtual void gameDidSave();
// 	bool getControllerConnected() const;
// 	[[link(win, android)]]
// 	virtual cocos2d::LanguageType getCurrentLanguage();
// 	bool getForceTimer() const;
// 	bool getFullscreen() const;
// 	gd::string const& getResourceRootPath();
// 	bool getShutdownCalled() const;
// 	bool getSleepMode() const;
// 	bool getSmoothFix() const;
// 	gd::string const& getStartupScriptFilename();
// 	[[link(win, android)]]
// 	virtual cocos2d::TargetPlatform getTargetPlatform();
// 	int getTimeElapsed();
// 	bool getVerticalSyncEnabled() const;
// 	void leftMouseDown();
// 	void leftMouseUp();
// 	void logTimeElapsed(gd::string);
// 	void moveMouse(int, int);
// 	virtual void openURL(char const*);
// 	virtual void platformShutdown();
// 	void resetForceTimer();
// 	[[link(win, android)]]
// 	virtual int run();
// 	[[link(win, android)]]
// 	virtual void setAnimationInterval(double);
// 	void setForceTimer(bool);
// 	void setFullscreen(bool);
// 	void setResourceRootPath(gd::string const&);
// 	void setShutdownCalled(bool);
// 	void setSleepMode(bool);
// 	void setSmoothFix(bool);
// 	void setStartupScriptFilename(gd::string const&);
// 	virtual void setupGLView();
// 	void setupVerticalSync();
// 	[[link(win, android)]]
// 	static cocos2d::CCApplication* sharedApplication();
// 	void shutdownApplication();
// 	void toggleMouseControl(bool);
// 	void toggleVerticalSync(bool);
// 	virtual void trySaveGame(bool);
// 	void updateController();
// 	// void updateControllerKeys(CXBOXController*, int);
// 	void updateMouseControl();
// 	void updateVerticalSync();
// }

[[link(win, android)]]
class cocos2d::CCApplicationProtocol {
	// CCApplicationProtocol(cocos2d::CCApplicationProtocol const&);
	// CCApplicationProtocol();
	virtual void applicationWillBecomeActive();
	virtual void applicationWillResignActive();
	virtual void gameDidSave();
	virtual void openURL(char const*);
	virtual void trySaveGame(bool);
}

[[link(win, android)]]
class cocos2d::CCArray {
	// CCArray(cocos2d::CCArray const&);
	// CCArray(unsigned int);
	// CCArray();
	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
	void addObject(cocos2d::CCObject*);
	void addObjectNew(cocos2d::CCObject*);
	void addObjectsFromArray(cocos2d::CCArray*);
	unsigned int capacity() const;
	bool containsObject(cocos2d::CCObject*) const;
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	unsigned int count() const;
	// static cocos2d::CCArray* create(cocos2d::CCObject*, ...);
	static cocos2d::CCArray* create();
	static cocos2d::CCArray* createWithArray(cocos2d::CCArray*);
	static cocos2d::CCArray* createWithCapacity(unsigned int);
	static cocos2d::CCArray* createWithContentsOfFile(char const*);
	static cocos2d::CCArray* createWithContentsOfFileThreadSafe(char const*);
	static cocos2d::CCArray* createWithObject(cocos2d::CCObject*);
	void exchangeObject(cocos2d::CCObject*, cocos2d::CCObject*);
	void exchangeObjectAtIndex(unsigned int, unsigned int);
	void fastRemoveObject(cocos2d::CCObject*);
	void fastRemoveObjectAtIndex(unsigned int);
	void fastRemoveObjectAtIndexChild(unsigned int);
	void fastRemoveObjectAtIndexNew(unsigned int);
	unsigned int indexOfObject(cocos2d::CCObject*) const;
	bool init();
	bool initWithArray(cocos2d::CCArray*);
	bool initWithCapacity(unsigned int);
	bool initWithObject(cocos2d::CCObject*);
	// bool initWithObjects(cocos2d::CCObject*, ...);
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
}

[[link(win, android)]]
class cocos2d::CCAtlasNode {
	// CCAtlasNode(cocos2d::CCAtlasNode const&);
	// CCAtlasNode();
	void calculateMaxItems();
	static cocos2d::CCAtlasNode* create(char const*, unsigned int, unsigned int, unsigned int);
	virtual void draw();
	virtual cocos2d::_ccBlendFunc getBlendFunc();
	virtual cocos2d::_ccColor3B const& getColor();
	virtual unsigned int getQuadsToDraw();
	virtual cocos2d::CCTexture2D* getTexture();
	virtual cocos2d::CCTextureAtlas* getTextureAtlas();
	bool initWithTexture(cocos2d::CCTexture2D*, unsigned int, unsigned int, unsigned int);
	bool initWithTileFile(char const*, unsigned int, unsigned int, unsigned int);
	virtual bool isOpacityModifyRGB();
	virtual void setBlendFunc(cocos2d::_ccBlendFunc);
	virtual void setColor(cocos2d::_ccColor3B const&);
	void setIgnoreContentScaleFactor(bool);
	virtual void setOpacity(unsigned char);
	virtual void setOpacityModifyRGB(bool);
	virtual void setQuadsToDraw(unsigned int);
	virtual void setTexture(cocos2d::CCTexture2D*);
	virtual void setTextureAtlas(cocos2d::CCTextureAtlas*);
	virtual void updateAtlasValues();
	void updateBlendFunc();
	void updateOpacityModifyRGB();
}

[[link(win, android)]]
class cocos2d::CCAutoreleasePool {
	// CCAutoreleasePool(cocos2d::CCAutoreleasePool const&);
	// CCAutoreleasePool();
	void addObject(cocos2d::CCObject*);
	void clear();
	void removeObject(cocos2d::CCObject*);
}

[[link(win, android)]]
class cocos2d::CCBMFontConfiguration {
	// CCBMFontConfiguration(cocos2d::CCBMFontConfiguration const&);
	// CCBMFontConfiguration();
	static cocos2d::CCBMFontConfiguration* create(char const*);
	char const* description();
	char const* getAtlasName();
	gd::set<unsigned int>* getCharacterSet() const;
	bool initWithFNTfile(char const*);
	void parseCharacterDefinition(gd::string, cocos2d::_BMFontDef*);
	void parseCommonArguments(gd::string);
	gd::set<unsigned int>* parseConfigFile(char const*);
	void parseImageFileName(gd::string, char const*);
	void parseInfoArguments(gd::string);
	void parseKerningEntry(gd::string);
	void purgeFontDefDictionary();
	void purgeKerningDictionary();
	void setAtlasName(char const*);
}

[[link(win, android)]]
class cocos2d::CCBezierBy {
	// CCBezierBy(cocos2d::CCBezierBy const&);
	// CCBezierBy();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCBezierBy* create(float, cocos2d::_ccBezierConfig const&);
	bool initWithDuration(float, cocos2d::_ccBezierConfig const&);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCBezierTo {
	// CCBezierTo(cocos2d::CCBezierTo const&);
	// CCBezierTo();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCBezierTo* create(float, cocos2d::_ccBezierConfig const&);
	bool initWithDuration(float, cocos2d::_ccBezierConfig const&);
	virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCBlendProtocol {
	// CCBlendProtocol(cocos2d::CCBlendProtocol const&);
	// CCBlendProtocol();
}

[[link(win, android)]]
class cocos2d::CCBlink {
	// CCBlink(cocos2d::CCBlink const&);
	// CCBlink();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCBlink* create(float, unsigned int);
	bool initWithDuration(float, unsigned int);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void stop();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCBool {
	// CCBool(cocos2d::CCBool const&);
	// CCBool(bool);
	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
	static cocos2d::CCBool* create(bool);
	bool getValue() const;
	void setValue(bool);
}

[[link(win, android)]]
class cocos2d::CCCallFunc {
	// CCCallFunc(cocos2d::CCCallFunc const&);
	// CCCallFunc();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCCallFunc* create(int);
	static cocos2d::CCCallFunc* create(cocos2d::CCObject*, cocos2d::SEL_CallFunc);
	virtual void execute();
	int getScriptHandler();
	cocos2d::CCObject* getTargetCallback();
	virtual bool initWithTarget(cocos2d::CCObject*);
	void setTargetCallback(cocos2d::CCObject*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCCallFuncN {
	// CCCallFuncN(cocos2d::CCCallFuncN const&);
	// CCCallFuncN();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCCallFuncN* create(int);
	static cocos2d::CCCallFuncN* create(cocos2d::CCObject*, cocos2d::SEL_CallFuncN);
	virtual void execute();
	virtual bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncN);
}

[[link(win, android)]]
class cocos2d::CCCallFuncND {
	// CCCallFuncND(cocos2d::CCCallFuncND const&);
	// CCCallFuncND();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCCallFuncND* create(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*);
	virtual void execute();
	virtual bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*);
}

[[link(win, android)]]
class cocos2d::CCCallFuncO {
	// CCCallFuncO(cocos2d::CCCallFuncO const&);
	// CCCallFuncO();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCCallFuncO* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*);
	virtual void execute();
	cocos2d::CCObject* getObject();
	virtual bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*);
	void setObject(cocos2d::CCObject*);
}

[[link(win, android)]]
class cocos2d::CCCamera {
	// CCCamera();
	char const* description();
	void getCenterXYZ(float*, float*, float*);
	void getEyeXYZ(float*, float*, float*);
	void getUpXYZ(float*, float*, float*);
	static float getZEye();
	void init();
	bool isDirty();
	void locate();
	void restore();
	void setCenterXYZ(float, float, float);
	void setDirty(bool);
	void setEyeXYZ(float, float, float);
	void setUpXYZ(float, float, float);
}

[[link(win, android)]]
class cocos2d::CCCardinalSplineBy {
	// CCCardinalSplineBy(cocos2d::CCCardinalSplineBy const&);
	// CCCardinalSplineBy();
	static cocos2d::CCCardinalSplineBy* create(float, cocos2d::CCPointArray*, float);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void updatePosition(cocos2d::CCPoint&);
}

[[link(win, android)]]
class cocos2d::CCCardinalSplineTo {
	// CCCardinalSplineTo(cocos2d::CCCardinalSplineTo const&);
	// CCCardinalSplineTo();
	virtual cocos2d::CCCardinalSplineTo* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCCardinalSplineTo* create(float, cocos2d::CCPointArray*, float);
	cocos2d::CCPointArray* getPoints();
	bool initWithDuration(float, cocos2d::CCPointArray*, float);
	virtual cocos2d::CCActionInterval* reverse();
	void setPoints(cocos2d::CCPointArray*);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
	virtual void updatePosition(cocos2d::CCPoint&);
}

[[link(win, android)]]
class cocos2d::CCCatmullRomBy {
	// CCCatmullRomBy(cocos2d::CCCatmullRomBy const&);
	// CCCatmullRomBy();
	static cocos2d::CCCatmullRomBy* create(float, cocos2d::CCPointArray*);
	bool initWithDuration(float, cocos2d::CCPointArray*);
}

[[link(win, android)]]
class cocos2d::CCCatmullRomTo {
	// CCCatmullRomTo(cocos2d::CCCatmullRomTo const&);
	// CCCatmullRomTo();
	static cocos2d::CCCatmullRomTo* create(float, cocos2d::CCPointArray*);
	bool initWithDuration(float, cocos2d::CCPointArray*);
}

[[link(win, android)]]
class cocos2d::CCClippingNode {
	// CCClippingNode();
	// CCClippingNode(cocos2d::CCClippingNode const&);
	static cocos2d::CCClippingNode* create(cocos2d::CCNode*);
	static cocos2d::CCClippingNode* create();
	float getAlphaThreshold() const;
	cocos2d::CCNode* getStencil() const;
	virtual bool init(cocos2d::CCNode*);
	virtual bool init();
	bool isInverted() const;
	virtual void onEnter();
	virtual void onEnterTransitionDidFinish();
	virtual void onExit();
	virtual void onExitTransitionDidStart();
	void setAlphaThreshold(float);
	void setInverted(bool);
	void setStencil(cocos2d::CCNode*);
	virtual void visit();
}

[[link(win, android)]]
class cocos2d::CCComponent {
	// CCComponent();
	// CCComponent(cocos2d::CCComponent const&);
	static cocos2d::CCComponent* create();
	char const* getName() const;
	cocos2d::CCNode* getOwner() const;
	virtual bool init();
	virtual bool isEnabled() const;
	virtual void onEnter();
	virtual void onExit();
	virtual bool serialize(void*);
	virtual void setEnabled(bool);
	void setName(char const*);
	void setOwner(cocos2d::CCNode*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCComponentContainer {
	// CCComponentContainer(cocos2d::CCNode*);
	// CCComponentContainer(cocos2d::CCComponentContainer const&);
	virtual bool add(cocos2d::CCComponent*);
	void alloc();
	virtual cocos2d::CCComponent* get(char const*) const;
	bool isEmpty() const;
	virtual bool remove(cocos2d::CCComponent*);
	virtual bool remove(char const*);
	virtual void removeAll();
	virtual void visit(float);
}

[[link(win, android)]]
class cocos2d::CCConfiguration {
	// CCConfiguration();
	// CCConfiguration(cocos2d::CCConfiguration const&);
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
	static void purgeConfiguration();
	void setObject(char const*, cocos2d::CCObject*);
	static cocos2d::CCConfiguration* sharedConfiguration();
	bool supportsBGRA8888() const;
	bool supportsDiscardFramebuffer() const;
	bool supportsNPOT() const;
	bool supportsPVRTC() const;
	bool supportsShareableVAO() const;
}

// [[link(win, android)]]
// class CCContentManager {
// 	CCContentManager(CCContentManager const&);
// 	CCContentManager();
// 	cocos2d::CCDictionary* addDict(char const*, bool);
// 	cocos2d::CCDictionary* addDictDS(char const*);
// 	void clearCache();
// 	bool init();
// 	static CCContentManager* sharedManager();
// }

[[link(win, android)]]
class cocos2d::CCCopying {
	// CCCopying(cocos2d::CCCopying const&);
	// CCCopying();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
}

[[link(win, android)]]
class cocos2d::CCDataVisitor {
	// CCDataVisitor(cocos2d::CCDataVisitor const&);
	// CCDataVisitor();
	virtual void visit(cocos2d::CCArray const*);
	virtual void visit(cocos2d::CCBool const*);
	virtual void visit(cocos2d::CCDictionary const*);
	virtual void visit(cocos2d::CCDouble const*);
	virtual void visit(cocos2d::CCFloat const*);
	virtual void visit(cocos2d::CCInteger const*);
	virtual void visit(cocos2d::CCSet const*);
	virtual void visit(cocos2d::CCString const*);
}

[[link(win, android)]]
class cocos2d::CCDeccelAmplitude {
	// CCDeccelAmplitude(cocos2d::CCDeccelAmplitude const&);
	// CCDeccelAmplitude();
	static cocos2d::CCDeccelAmplitude* create(cocos2d::CCAction*, float);
	float getRate();
	bool initWithAction(cocos2d::CCAction*, float);
	virtual cocos2d::CCActionInterval* reverse();
	void setRate(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCDelayTime {
	// CCDelayTime(cocos2d::CCDelayTime const&);
	// CCDelayTime();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCDelayTime* create(float);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCDictElement {
	// CCDictElement(int, cocos2d::CCObject*);
	// CCDictElement(char const*, cocos2d::CCObject*);
	int getIntKey() const;
	cocos2d::CCObject* getObject() const;
	char const* getStrKey() const;
}

[[link(win, android)]]
class cocos2d::CCDictionary {
	// CCDictionary(cocos2d::CCDictionary const&);
	// CCDictionary();
	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
	cocos2d::CCArray* allKeys();
	cocos2d::CCArray* allKeysForObject(cocos2d::CCObject*);
	char const* charForKey(gd::string const&);
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	unsigned int count();
	static cocos2d::CCDictionary* create();
	static cocos2d::CCDictionary* createWithContentsOfFile(char const*);
	static cocos2d::CCDictionary* createWithContentsOfFileThreadSafe(char const*);
	static cocos2d::CCDictionary* createWithDictionary(cocos2d::CCDictionary*);
	gd::string getFirstKey();
	cocos2d::CCObject* objectForKey(gd::string const&);
	cocos2d::CCObject* objectForKey(int);
	cocos2d::CCObject* randomObject();
	void removeAllObjects();
	void removeObjectForElememt(cocos2d::CCDictElement*);
	void removeObjectForKey(gd::string const&);
	void removeObjectForKey(int);
	void removeObjectsForKeys(cocos2d::CCArray*);
	void setObject(cocos2d::CCObject*, gd::string const&);
	void setObject(cocos2d::CCObject*, int);
	void setObjectUnSafe(cocos2d::CCObject*, gd::string const&);
	void setObjectUnSafe(cocos2d::CCObject*, int);
	cocos2d::CCString const* valueForKey(gd::string const&);
	cocos2d::CCString const* valueForKey(int);
	bool writeToFile(char const*);
}

[[link(win, android)]]
class cocos2d::CCDirector {
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
	virtual cocos2d::CCAccelerometer* getAccelerometer();
	virtual cocos2d::CCActionManager* getActionManager();
	float getActualDeltaTime() const;
	double getAnimationInterval();
	float getContentScaleFactor();
	cocos2d::CCDirectorDelegate* getDelegate() const;
	virtual float getDeltaTime();
	bool getDontCallWillSwitch() const;
	void getFPSImageData(unsigned char**, unsigned int*);
	bool getIsTransitioning() const;
	virtual cocos2d::CCKeyboardDispatcher* getKeyboardDispatcher();
	virtual cocos2d::CCKeypadDispatcher* getKeypadDispatcher();
	cocos2d::TextureQuality getLoadedTextureQuality() const;
	virtual cocos2d::CCMouseDispatcher* getMouseDispatcher();
	cocos2d::CCScene* getNextScene();
	cocos2d::CCNode* getNotificationNode();
	cocos2d::CCEGLView* getOpenGLView();
	cocos2d::ccDirectorProjection getProjection();
	cocos2d::CCScene* getRunningScene();
	virtual cocos2d::CCSceneDelegate* getSceneDelegate() const;
	cocos2d::CCScene* getSceneReference() const;
	virtual cocos2d::CCScheduler* getScheduler();
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
	virtual cocos2d::CCTouchDispatcher* getTouchDispatcher();
	cocos2d::CCPoint getVisibleOrigin();
	cocos2d::CCSize getVisibleSize();
	cocos2d::CCSize getWinSize();
	cocos2d::CCSize getWinSizeInPixels();
	float getZEye();
	virtual bool init();
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
	virtual void setAccelerometer(cocos2d::CCAccelerometer*);
	virtual void setActionManager(cocos2d::CCActionManager*);
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
	virtual void setKeyboardDispatcher(cocos2d::CCKeyboardDispatcher*);
	virtual void setKeypadDispatcher(cocos2d::CCKeypadDispatcher*);
	virtual void setMouseDispatcher(cocos2d::CCMouseDispatcher*);
	void setNextDeltaTimeZero(bool);
	void setNextScene();
	void setNotificationNode(cocos2d::CCNode*);
	void setOpenGLView(cocos2d::CCEGLView*);
	void setProjection(cocos2d::ccDirectorProjection);
	virtual void setSceneDelegate(cocos2d::CCSceneDelegate*);
	void setSceneReference(cocos2d::CCScene*);
	virtual void setScheduler(cocos2d::CCScheduler*);
	void setSmoothFix(bool);
	void setSmoothFixCheck(bool);
	virtual void setTouchDispatcher(cocos2d::CCTouchDispatcher*);
	void setViewport();
	void setupScreenScale(cocos2d::CCSize, cocos2d::CCSize, cocos2d::TextureQuality);
	static cocos2d::CCDirector* sharedDirector();
	void showFPSLabel();
	void showStats();
	void toggleShowFPS(bool, gd::string, cocos2d::CCPoint);
	void updateContentScale(cocos2d::TextureQuality);
	void updateScreenScale(cocos2d::CCSize);
	void willSwitchToScene(cocos2d::CCScene*);
}

[[link(win, android)]]
class cocos2d::CCDirectorDelegate {
	// CCDirectorDelegate(cocos2d::CCDirectorDelegate const&);
	// CCDirectorDelegate();
}

[[link(win, android)]]
class cocos2d::CCDouble {
	// CCDouble(cocos2d::CCDouble const&);
	// CCDouble(double);
	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
	static cocos2d::CCDouble* create(double);
	double getValue() const;
}

[[link(win, android)]]
class cocos2d::CCDrawNode {
	// CCDrawNode(cocos2d::CCDrawNode const&);
	// CCDrawNode();
	void clear();
	static cocos2d::CCDrawNode* create();
	virtual void draw();
	void drawCircle(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&, unsigned int);
	void drawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&);
	void drawDot(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&);
	void drawLines(cocos2d::CCPoint*, unsigned int, float, cocos2d::_ccColor4F const&);
	void drawPolygon(cocos2d::CCPoint*, unsigned int, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&);
	void drawPreciseCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&);
	void drawRect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&);
	void drawSegment(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&);
	void ensureCapacity(unsigned int);
	cocos2d::_ccBlendFunc getBlendFunc() const;
	virtual bool init();
	void listenBackToForeground(cocos2d::CCObject*);
	void render();
	void setBlendFunc(cocos2d::_ccBlendFunc const&);
}

// [[link(win)]]
// class cocos2d::CCEGLView {
// 	// CCEGLView();
// 	// CCEGLView(cocos2d::CCEGLView const&);
// 	void capture();
// 	void centerWindow();
// 	void checkErrorGL(char const*);
// 	static cocos2d::CCEGLView* create(gd::string const&);
// 	static cocos2d::CCEGLView* createWithFullScreen(gd::string const&);
// 	static cocos2d::CCEGLView* createWithFullScreen(gd::string const&, GLFWvidmode const&, GLFWmonitor*);
// 	static cocos2d::CCEGLView* createWithRect(gd::string const&, cocos2d::CCRect, float);
// 	void enableRetina(bool);
// 	virtual void end();
// 	bool getCursorLocked() const;
// 	cocos2d::CCSize getDisplaySize();
// 	float getFrameZoomFactor();
// 	bool getGameplayActive() const;
// 	bool getIsFullscreen() const;
// 	int getRetinaFactor() const;
// 	bool getShouldHideCursor() const;
// 	GLFWwindow* getWindow() const;
// 	cocos2d::CCSize getWindowedSize() const;
// 	void iconify();
// 	bool initGlew();
// 	bool initWithFullScreen(gd::string const&);
// 	bool initWithFullscreen(gd::string const&, GLFWvidmode const&, GLFWmonitor*);
// 	bool initWithRect(gd::string const&, cocos2d::CCRect, float);
// 	virtual bool isOpenGLReady();
// 	bool isRetinaEnabled() const;
// 	void onGLFWCharCallback(GLFWwindow*, unsigned int);
// 	void onGLFWCursorEnterFunCallback(GLFWwindow*, int);
// 	void onGLFWDeviceChangeFunCallback(GLFWwindow*);
// 	void onGLFWError(int, char const*);
// 	void onGLFWKeyCallback(GLFWwindow*, int, int, int, int);
// 	void onGLFWMouseCallBack(GLFWwindow*, int, int, int);
// 	void onGLFWMouseMoveCallBack(GLFWwindow*, double, double);
// 	void onGLFWMouseScrollCallback(GLFWwindow*, double, double);
// 	void onGLFWWindowCloseFunCallback(GLFWwindow*);
// 	void onGLFWWindowIconifyFunCallback(GLFWwindow*, int);
// 	void onGLFWWindowPosCallback(GLFWwindow*, int, int);
// 	void onGLFWWindowSizeFunCallback(GLFWwindow*, int, int);
// 	void onGLFWframebuffersize(GLFWwindow*, int, int);
// 	void pollEvents();
// 	void releaseCapture();
// 	void resizeWindow(int, int);
// 	virtual void setFrameSize(float, float);
// 	void setFrameZoomFactor(float);
// 	virtual void setIMEKeyboardState(bool);
// 	virtual void setScissorInPoints(float, float, float, float);
// 	virtual void setViewPortInPoints(float, float, float, float);
// 	void setWindowedSize(cocos2d::CCSize);
// 	void setupWindow(cocos2d::CCRect);
// 	static cocos2d::CCEGLView* sharedOpenGLView();
// 	void showCursor(bool);
// 	void showMessage(gd::string);
// 	virtual void swapBuffers();
// 	void toggleFullScreen(bool);
// 	void toggleGameplayActive(bool);
// 	void toggleLockCursor(bool);
// 	void updateDesignSize(int, int);
// 	void updateFrameSize();
// 	void updateWindow(int, int);
// 	bool windowShouldClose();
// }

[[link(win, android)]]
class cocos2d::CCEGLViewProtocol {
	// CCEGLViewProtocol(cocos2d::CCEGLViewProtocol const&);
	// CCEGLViewProtocol();
	virtual cocos2d::CCSize const& getDesignResolutionSize() const;
	virtual cocos2d::CCSize const& getFrameSize() const;
	float getScaleX() const;
	float getScaleY() const;
	virtual cocos2d::CCRect getScissorRect();
	void getSetOfTouchesEndOrCancel(cocos2d::CCSet&, int, int* const, float* const, float* const);
	char const* getViewName();
	cocos2d::CCRect const& getViewPortRect() const;
	virtual cocos2d::CCPoint getVisibleOrigin() const;
	virtual cocos2d::CCSize getVisibleSize() const;
	virtual void handleTouchesBegin(int, int* const, float* const, float* const);
	virtual void handleTouchesCancel(int, int* const, float* const, float* const);
	virtual void handleTouchesEnd(int, int* const, float* const, float* const);
	virtual void handleTouchesMove(int, int* const, float* const, float* const);
	virtual bool isScissorEnabled();
	virtual void pollInputEvents();
	virtual void setDesignResolutionSize(float, float, ResolutionPolicy);
	virtual void setFrameSize(float, float);
	virtual void setScissorInPoints(float, float, float, float);
	virtual void setTouchDelegate(cocos2d::EGLTouchDelegate*);
	virtual void setViewName(char const*);
	virtual void setViewPortInPoints(float, float, float, float);
	void updateDesignResolutionSize();
}

[[link(win, android)]]
class cocos2d::CCEaseBackIn {
	// CCEaseBackIn(cocos2d::CCEaseBackIn const&);
	// CCEaseBackIn();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseBackIn* create(cocos2d::CCActionInterval*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCEaseBackInOut {
	// CCEaseBackInOut(cocos2d::CCEaseBackInOut const&);
	// CCEaseBackInOut();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseBackInOut* create(cocos2d::CCActionInterval*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCEaseBackOut {
	// CCEaseBackOut(cocos2d::CCEaseBackOut const&);
	// CCEaseBackOut();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseBackOut* create(cocos2d::CCActionInterval*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCEaseBounce {
	// CCEaseBounce(cocos2d::CCEaseBounce const&);
	// CCEaseBounce();
	float bounceTime(float);
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseBounce* create(cocos2d::CCActionInterval*);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBounceIn {
	// CCEaseBounceIn(cocos2d::CCEaseBounceIn const&);
	// CCEaseBounceIn();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseBounceIn* create(cocos2d::CCActionInterval*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCEaseBounceInOut {
	// CCEaseBounceInOut(cocos2d::CCEaseBounceInOut const&);
	// CCEaseBounceInOut();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseBounceInOut* create(cocos2d::CCActionInterval*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCEaseBounceOut {
	// CCEaseBounceOut(cocos2d::CCEaseBounceOut const&);
	// CCEaseBounceOut();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseBounceOut* create(cocos2d::CCActionInterval*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCEaseElastic {
	// CCEaseElastic(cocos2d::CCEaseElastic const&);
	// CCEaseElastic();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseElastic* create(cocos2d::CCActionInterval*);
	static cocos2d::CCEaseElastic* create(cocos2d::CCActionInterval*, float);
	float getPeriod();
	bool initWithAction(cocos2d::CCActionInterval*, float);
	virtual cocos2d::CCActionInterval* reverse();
	void setPeriod(float);
}

[[link(win, android)]]
class cocos2d::CCEaseElasticIn {
	// CCEaseElasticIn(cocos2d::CCEaseElasticIn const&);
	// CCEaseElasticIn();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval*);
	static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval*, float);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCEaseElasticInOut {
	// CCEaseElasticInOut(cocos2d::CCEaseElasticInOut const&);
	// CCEaseElasticInOut();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseElasticInOut* create(cocos2d::CCActionInterval*);
	static cocos2d::CCEaseElasticInOut* create(cocos2d::CCActionInterval*, float);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCEaseElasticOut {
	// CCEaseElasticOut(cocos2d::CCEaseElasticOut const&);
	// CCEaseElasticOut();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*);
	static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*, float);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialIn {
	// CCEaseExponentialIn(cocos2d::CCEaseExponentialIn const&);
	// CCEaseExponentialIn();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseExponentialIn* create(cocos2d::CCActionInterval*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialInOut {
	// CCEaseExponentialInOut(cocos2d::CCEaseExponentialInOut const&);
	// CCEaseExponentialInOut();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseExponentialInOut* create(cocos2d::CCActionInterval*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialOut {
	// CCEaseExponentialOut(cocos2d::CCEaseExponentialOut const&);
	// CCEaseExponentialOut();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseExponentialOut* create(cocos2d::CCActionInterval*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCEaseIn {
	// CCEaseIn(cocos2d::CCEaseIn const&);
	// CCEaseIn();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseIn* create(cocos2d::CCActionInterval*, float);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCEaseInOut {
	// CCEaseInOut(cocos2d::CCEaseInOut const&);
	// CCEaseInOut();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseInOut* create(cocos2d::CCActionInterval*, float);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCEaseOut {
	// CCEaseOut(cocos2d::CCEaseOut const&);
	// CCEaseOut();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseOut* create(cocos2d::CCActionInterval*, float);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCEaseRateAction {
	// CCEaseRateAction(cocos2d::CCEaseRateAction const&);
	// CCEaseRateAction();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseRateAction* create(cocos2d::CCActionInterval*, float);
	float getRate();
	bool initWithAction(cocos2d::CCActionInterval*, float);
	virtual cocos2d::CCActionInterval* reverse();
	void setRate(float);
}

[[link(win, android)]]
class cocos2d::CCEaseSineIn {
	// CCEaseSineIn(cocos2d::CCEaseSineIn const&);
	// CCEaseSineIn();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseSineIn* create(cocos2d::CCActionInterval*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCEaseSineInOut {
	// CCEaseSineInOut(cocos2d::CCEaseSineInOut const&);
	// CCEaseSineInOut();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseSineInOut* create(cocos2d::CCActionInterval*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCEaseSineOut {
	// CCEaseSineOut(cocos2d::CCEaseSineOut const&);
	// CCEaseSineOut();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCEaseSineOut* create(cocos2d::CCActionInterval*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCEvent {
	// CCEvent(cocos2d::CCEvent const&);
	// CCEvent();
}

[[link(win, android)]]
class cocos2d::CCFadeIn {
	// CCFadeIn(cocos2d::CCFadeIn const&);
	// CCFadeIn();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCFadeIn* create(float);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCFadeOut {
	// CCFadeOut(cocos2d::CCFadeOut const&);
	// CCFadeOut();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCFadeOut* create(float);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCFadeOutBLTiles {
	// CCFadeOutBLTiles(cocos2d::CCFadeOutBLTiles const&);
	// CCFadeOutBLTiles();
	static cocos2d::CCFadeOutBLTiles* create(float, cocos2d::CCSize const&);
	virtual float testFunc(cocos2d::CCSize const&, float);
}

[[link(win, android)]]
class cocos2d::CCFadeOutDownTiles {
	// CCFadeOutDownTiles(cocos2d::CCFadeOutDownTiles const&);
	// CCFadeOutDownTiles();
	static cocos2d::CCFadeOutDownTiles* create(float, cocos2d::CCSize const&);
	virtual float testFunc(cocos2d::CCSize const&, float);
}

[[link(win, android)]]
class cocos2d::CCFadeOutTRTiles {
	// CCFadeOutTRTiles(cocos2d::CCFadeOutTRTiles const&);
	// CCFadeOutTRTiles();
	static cocos2d::CCFadeOutTRTiles* create(float, cocos2d::CCSize const&);
	virtual float testFunc(cocos2d::CCSize const&, float);
	virtual void transformTile(cocos2d::CCPoint const&, float);
	void turnOffTile(cocos2d::CCPoint const&);
	void turnOnTile(cocos2d::CCPoint const&);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCFadeOutUpTiles {
	// CCFadeOutUpTiles(cocos2d::CCFadeOutUpTiles const&);
	// CCFadeOutUpTiles();
	static cocos2d::CCFadeOutUpTiles* create(float, cocos2d::CCSize const&);
	virtual float testFunc(cocos2d::CCSize const&, float);
	virtual void transformTile(cocos2d::CCPoint const&, float);
}

[[link(win, android)]]
class cocos2d::CCFadeTo {
	// CCFadeTo(cocos2d::CCFadeTo const&);
	// CCFadeTo();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCFadeTo* create(float, unsigned char);
	bool initWithDuration(float, unsigned char);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
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

// [[link(win)]]
// class cocos2d::CCFileUtilsWin32 {
// 	// CCFileUtilsWin32();
// 	// CCFileUtilsWin32(cocos2d::CCFileUtilsWin32 const&);
// 	virtual void addSearchPath(char const*);
// 	virtual gd::string fullPathForFilename(char const*);
// 	virtual gd::string getPathForFilename(gd::string const&, gd::string const&, gd::string const&);
// 	virtual gd::string getWritablePath2();
// 	virtual gd::string getWritablePath();
// 	virtual bool init();
// 	virtual bool isAbsolutePath(gd::string const&);
// 	virtual bool isFileExist(gd::string const&);
// 	virtual void removeSearchPath(char const*);
// 	gd::string utf8Togbk(char const*);
// }

[[link(win, android)]]
class cocos2d::CCFiniteTimeAction {
	// CCFiniteTimeAction(cocos2d::CCFiniteTimeAction const&);
	// CCFiniteTimeAction();
	float getDuration();
	virtual cocos2d::CCFiniteTimeAction* reverse();
	void setDuration(float);
}

[[link(win, android)]]
class cocos2d::CCFlipX3D {
	// CCFlipX3D(cocos2d::CCFlipX3D const&);
	// CCFlipX3D();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCFlipX3D* create(float);
	virtual bool initWithDuration(float);
	virtual bool initWithSize(cocos2d::CCSize const&, float);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCFlipX {
	// CCFlipX(cocos2d::CCFlipX const&);
	// CCFlipX();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCFlipX* create(bool);
	bool initWithFlipX(bool);
	virtual cocos2d::CCFiniteTimeAction* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCFlipY3D {
	// CCFlipY3D(cocos2d::CCFlipY3D const&);
	// CCFlipY3D();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCFlipY3D* create(float);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCFlipY {
	// CCFlipY(cocos2d::CCFlipY const&);
	// CCFlipY();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCFlipY* create(bool);
	bool initWithFlipY(bool);
	virtual cocos2d::CCFiniteTimeAction* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCFloat {
	// CCFloat(cocos2d::CCFloat const&);
	// CCFloat(float);
	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
	static cocos2d::CCFloat* create(float);
	float getValue() const;
}

[[link(win, android)]]
class cocos2d::CCFollow {
	// CCFollow(cocos2d::CCFollow const&);
	// CCFollow();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCFollow* create(cocos2d::CCNode*, cocos2d::CCRect const&);
	bool initWithTarget(cocos2d::CCNode*, cocos2d::CCRect const&);
	bool isBoundarySet();
	virtual bool isDone();
	void setBoudarySet(bool);
	virtual void step(float);
	virtual void stop();
}

[[link(win, android)]]
class cocos2d::CCFontSprite {
	// CCFontSprite(cocos2d::CCFontSprite const&);
	// CCFontSprite();
}

[[link(win, android)]]
class cocos2d::CCGLProgram {
	// CCGLProgram(cocos2d::CCGLProgram const&);
	// CCGLProgram();
	void addAttribute(char const*, unsigned int);
	bool compileShader(unsigned int*, unsigned int, char const*);
	char const* description();
	char const* fragmentShaderLog();
	unsigned int const getProgram();
	int getUniformLocationForName(char const*);
	bool initWithVertexShaderByteArray(char const*, char const*);
	bool initWithVertexShaderFilename(char const*, char const*);
	bool link();
	// char const* logForOpenGLObject(unsigned int, void (__cdecl*)(unsigned int, unsigned int, int*), void (__cdecl*)(unsigned int, int, int*, char*));
	char const* programLog();
	void reset();
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
	void setUniformsForBuiltins();
	bool updateUniformLocation(int, void*, unsigned int);
	void updateUniforms();
	void use();
	char const* vertexShaderLog();
}

[[link(win, android)]]
class cocos2d::CCGrid3D {
	// CCGrid3D(cocos2d::CCGrid3D const&);
	// CCGrid3D();
	virtual void blit();
	virtual void calculateVertexPoints();
	static cocos2d::CCGrid3D* create(cocos2d::CCSize const&);
	static cocos2d::CCGrid3D* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool);
	cocos2d::_ccVertex3F originalVertex(cocos2d::CCPoint const&);
	virtual void reuse();
	void setVertex(cocos2d::CCPoint const&, cocos2d::_ccVertex3F const&);
	cocos2d::_ccVertex3F vertex(cocos2d::CCPoint const&);
}

[[link(win, android)]]
class cocos2d::CCGrid3DAction {
	// CCGrid3DAction(cocos2d::CCGrid3DAction const&);
	// CCGrid3DAction();
	virtual cocos2d::CCGridBase* getGrid();
	cocos2d::_ccVertex3F originalVertex(cocos2d::CCPoint const&);
	void setVertex(cocos2d::CCPoint const&, cocos2d::_ccVertex3F const&);
	cocos2d::_ccVertex3F vertex(cocos2d::CCPoint const&);
}

[[link(win, android)]]
class cocos2d::CCGridAction {
	// CCGridAction(cocos2d::CCGridAction const&);
	// CCGridAction();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCGridAction* create(float, cocos2d::CCSize const&);
	virtual cocos2d::CCGridBase* getGrid();
	virtual bool initWithDuration(float, cocos2d::CCSize const&);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCGridBase {
	// CCGridBase(cocos2d::CCGridBase const&);
	// CCGridBase();
	void afterDraw(cocos2d::CCNode*);
	void beforeDraw();
	virtual void blit();
	virtual void calculateVertexPoints();
	static cocos2d::CCGridBase* create(cocos2d::CCSize const&);
	static cocos2d::CCGridBase* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool);
	cocos2d::CCSize const& getGridSize();
	int getReuseGrid();
	cocos2d::CCPoint const& getStep();
	bool initWithSize(cocos2d::CCSize const&);
	bool initWithSize(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool);
	bool isActive();
	bool isTextureFlipped();
	virtual void reuse();
	void set2DProjection();
	void setActive(bool);
	void setGridSize(cocos2d::CCSize const&);
	void setReuseGrid(int);
	void setStep(cocos2d::CCPoint const&);
	void setTextureFlipped(bool);
}

[[link(win, android)]]
class cocos2d::CCHide {
	// CCHide(cocos2d::CCHide const&);
	// CCHide();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCHide* create();
	virtual cocos2d::CCFiniteTimeAction* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCIMEDelegate {
	// CCIMEDelegate();
	// CCIMEDelegate(cocos2d::CCIMEDelegate const&);
	virtual bool attachWithIME();
	virtual bool canAttachWithIME();
	virtual bool canDetachWithIME();
	virtual void deleteBackward();
	virtual void deleteForward();
	virtual bool detachWithIME();
	virtual void didAttachWithIME();
	virtual void didDetachWithIME();
	virtual char const* getContentText();
	virtual void insertText(char const*, int, cocos2d::enumKeyCodes);
	virtual void keyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&);
	virtual void keyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&);
	virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
	virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
}

[[link(win, android)]]
class cocos2d::CCIMEDispatcher {
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
	static cocos2d::CCIMEDispatcher* sharedDispatcher();
}

[[link(win, android)]]
class cocos2d::CCImage {
	// CCImage();
	bool _initWithJpgData(void*, int);
	bool _initWithPngData(void*, int);
	bool _initWithRawData(void*, int, int, int, int, bool);
	bool _initWithTiffData(void*, int);
	bool _initWithWebpData(void*, int);
	bool _saveImageToJPG(char const*);
	bool _saveImageToPNG(char const*, bool);
	int getBitsPerComponent() const;
	unsigned char* getData();
	int getDataLen();
	unsigned short getHeight() const;
	unsigned short getWidth() const;
	bool hasAlpha();
	bool initWithImageData(void*, int, cocos2d::CCImage::EImageFormat, int, int, int, int);
	bool initWithImageFile(char const*, cocos2d::CCImage::EImageFormat);
	bool initWithImageFileThreadSafe(char const*, cocos2d::CCImage::EImageFormat);
	bool initWithString(char const*, int, int, cocos2d::CCImage::ETextAlign, char const*, int);
	bool isPremultipliedAlpha();
	bool saveToFile(char const*, bool);
}

[[link(win, android)]]
class cocos2d::CCInteger {
	// CCInteger(cocos2d::CCInteger const&);
	// CCInteger(int);
	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
	static cocos2d::CCInteger* create(int);
	int getValue() const;
	void setValue(int);
}

[[link(win, android)]]
class cocos2d::CCJumpBy {
	// CCJumpBy(cocos2d::CCJumpBy const&);
	// CCJumpBy();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCJumpBy* create(float, cocos2d::CCPoint const&, float, unsigned int);
	bool initWithDuration(float, cocos2d::CCPoint const&, float, unsigned int);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCJumpTiles3D {
	// CCJumpTiles3D(cocos2d::CCJumpTiles3D const&);
	// CCJumpTiles3D();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCJumpTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float);
	float getAmplitude();
	float getAmplitudeRate();
	bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);
	void setAmplitude(float);
	void setAmplitudeRate(float);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCJumpTo {
	// CCJumpTo(cocos2d::CCJumpTo const&);
	// CCJumpTo();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCJumpTo* create(float, cocos2d::CCPoint const&, float, int);
	virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCKeyboardDelegate {
	// CCKeyboardDelegate(cocos2d::CCKeyboardDelegate const&);
	// CCKeyboardDelegate();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void keyUp(cocos2d::enumKeyCodes);
}

[[link(win, android)]]
class cocos2d::CCKeyboardDispatcher {
	// CCKeyboardDispatcher(cocos2d::CCKeyboardDispatcher const&);
	// CCKeyboardDispatcher();
	void addDelegate(cocos2d::CCKeyboardDelegate*);
	static cocos2d::enumKeyCodes convertKeyCode(cocos2d::enumKeyCodes);
	bool dispatchKeyboardMSG(cocos2d::enumKeyCodes, bool, bool);
	void forceAddDelegate(cocos2d::CCKeyboardDelegate*);
	void forceRemoveDelegate(cocos2d::CCKeyboardDelegate*);
	bool getAltKeyPressed() const;
	bool getBlockRepeat() const;
	bool getCommandKeyPressed() const;
	bool getControlKeyPressed() const;
	bool getShiftKeyPressed() const;
	char const* keyToString(cocos2d::enumKeyCodes);
	void removeDelegate(cocos2d::CCKeyboardDelegate*);
	void setBlockRepeat(bool);
	void updateModifierKeys(bool, bool, bool, bool);
}

[[link(win, android)]]
class cocos2d::CCKeyboardHandler {
	// CCKeyboardHandler(cocos2d::CCKeyboardHandler const&);
	// CCKeyboardHandler();
	cocos2d::CCKeyboardDelegate* getDelegate();
	static cocos2d::CCKeyboardHandler* handlerWithDelegate(cocos2d::CCKeyboardDelegate*);
	virtual bool initWithDelegate(cocos2d::CCKeyboardDelegate*);
	void setDelegate(cocos2d::CCKeyboardDelegate*);
}

[[link(win, android)]]
class cocos2d::CCKeypadDelegate {
	// CCKeypadDelegate(cocos2d::CCKeypadDelegate const&);
	// CCKeypadDelegate();
	virtual void keyBackClicked();
	virtual void keyMenuClicked();
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
class cocos2d::CCKeypadHandler {
	// CCKeypadHandler(cocos2d::CCKeypadHandler const&);
	// CCKeypadHandler();
	cocos2d::CCKeypadDelegate* getDelegate();
	static cocos2d::CCKeypadHandler* handlerWithDelegate(cocos2d::CCKeypadDelegate*);
	virtual bool initWithDelegate(cocos2d::CCKeypadDelegate*);
	void setDelegate(cocos2d::CCKeypadDelegate*);
}

[[link(win, android)]]
class cocos2d::CCLabelAtlas {
	// CCLabelAtlas(cocos2d::CCLabelAtlas const&);
	// CCLabelAtlas();
	static cocos2d::CCLabelAtlas* create(char const*, char const*);
	static cocos2d::CCLabelAtlas* create(char const*, char const*, unsigned int, unsigned int, unsigned int);
	virtual char const* getString();
	bool initWithString(char const*, char const*);
	bool initWithString(char const*, char const*, unsigned int, unsigned int, unsigned int);
	bool initWithString(char const*, cocos2d::CCTexture2D*, unsigned int, unsigned int, unsigned int);
	virtual void setString(char const*);
	virtual void updateAtlasValues();
}

[[link(win, android)]]
class cocos2d::CCLabelBMFont {
	// CCLabelBMFont(cocos2d::CCLabelBMFont const&);
	// CCLabelBMFont();
	static cocos2d::CCLabelBMFont* create(char const*, char const*);
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float);
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment);
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint);
	static cocos2d::CCLabelBMFont* create();
	static cocos2d::CCLabelBMFont* createBatched(char const*, char const*, cocos2d::CCArray*, int);
	void createFontChars();
	virtual cocos2d::_ccColor3B const& getColor();
	cocos2d::CCBMFontConfiguration* getConfiguration() const;
	virtual cocos2d::_ccColor3B const& getDisplayedColor();
	virtual unsigned char getDisplayedOpacity();
	int getExtraKerning() const;
	char const* getFntFile();
	bool getIsBatched() const;
	float getLetterPosXLeft(cocos2d::CCSprite*, float, bool);
	float getLetterPosXRight(cocos2d::CCSprite*, float, bool);
	virtual unsigned char getOpacity();
	virtual char const* getString();
	cocos2d::CCArray* getTargetArray() const;
	virtual bool init();
	bool initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint);
	virtual bool isCascadeColorEnabled();
	virtual bool isCascadeOpacityEnabled();
	virtual bool isOpacityModifyRGB();
	int kerningAmountForFirst(unsigned short, unsigned short);
	void limitLabelWidth(float, float, float);
	static void purgeCachedData();
	virtual void setAlignment(cocos2d::CCTextAlignment);
	virtual void setAnchorPoint(cocos2d::CCPoint const&);
	virtual void setCString(char const*);
	virtual void setCascadeColorEnabled(bool);
	virtual void setCascadeOpacityEnabled(bool);
	virtual void setColor(cocos2d::_ccColor3B const&);
	void setExtraKerning(int);
	void setFntFile(char const*);
	void setIsBatched(bool);
	virtual void setLineBreakWithoutSpace(bool);
	virtual void setOpacity(unsigned char);
	virtual void setOpacityModifyRGB(bool);
	virtual void setScale(float);
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setString(unsigned short*, bool);
	virtual void setString(char const*);
	virtual void setString(char const*, bool);
	void setTargetArray(cocos2d::CCArray*);
	virtual void setWidth(float);
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&);
	virtual void updateDisplayedOpacity(unsigned char);
	virtual void updateLabel();
}

[[link(win, android)]]
class cocos2d::CCLabelProtocol {
	// CCLabelProtocol(cocos2d::CCLabelProtocol const&);
	// CCLabelProtocol();
}

[[link(win, android)]]
class cocos2d::CCLabelTTF {
	// CCLabelTTF(cocos2d::CCLabelTTF const&);
	// CCLabelTTF();
	cocos2d::_ccFontDefinition _prepareTextDefinition(bool);
	void _updateWithTextDefinition(cocos2d::_ccFontDefinition&, bool);
	static cocos2d::CCLabelTTF* create(char const*, char const*, float);
	static cocos2d::CCLabelTTF* create(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment);
	static cocos2d::CCLabelTTF* create(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment);
	static cocos2d::CCLabelTTF* create();
	static cocos2d::CCLabelTTF* createWithFontDefinition(char const*, cocos2d::_ccFontDefinition&);
	char const* description();
	void disableShadow(bool);
	void disableStroke(bool);
	void enableShadow(cocos2d::CCSize const&, float, float, bool);
	void enableStroke(cocos2d::_ccColor3B const&, float, bool);
	cocos2d::CCSize getDimensions();
	char const* getFontName();
	float getFontSize();
	cocos2d::CCTextAlignment getHorizontalAlignment();
	virtual char const* getString();
	cocos2d::_ccFontDefinition* getTextDefinition();
	cocos2d::CCVerticalTextAlignment getVerticalAlignment();
	virtual bool init();
	bool initWithString(char const*, char const*, float);
	bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment);
	bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment);
	bool initWithStringAndTextDefinition(char const*, cocos2d::_ccFontDefinition&);
	void setDimensions(cocos2d::CCSize const&);
	void setFontFillColor(cocos2d::_ccColor3B const&, bool);
	void setFontName(char const*);
	void setFontSize(float);
	void setHorizontalAlignment(cocos2d::CCTextAlignment);
	virtual void setString(char const*);
	void setTextDefinition(cocos2d::_ccFontDefinition*);
	void setVerticalAlignment(cocos2d::CCVerticalTextAlignment);
	bool updateTexture();
}

[[link(win, android)]]
class cocos2d::CCLayer {
	// CCLayer(cocos2d::CCLayer const&);
	// CCLayer();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*);
	static cocos2d::CCLayer* create();
	virtual void didAccelerate(cocos2d::CCAcceleration*);
	int excuteScriptTouchHandler(int, cocos2d::CCSet*);
	int excuteScriptTouchHandler(int, cocos2d::CCTouch*);
	virtual int getPreviousPriority();
	cocos2d::CCScriptHandlerEntry* getScriptAccelerateHandlerEntry();
	cocos2d::CCScriptHandlerEntry* getScriptKeypadHandlerEntry();
	cocos2d::CCTouchScriptHandlerEntry* getScriptTouchHandlerEntry();
	virtual int getTouchMode();
	virtual int getTouchPriority();
	virtual bool init();
	virtual bool isAccelerometerEnabled();
	virtual bool isKeyboardEnabled();
	virtual bool isKeypadEnabled();
	virtual bool isMouseEnabled();
	virtual bool isTouchEnabled();
	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void keyMenuClicked();
	virtual void onEnter();
	virtual void onEnterTransitionDidFinish();
	virtual void onExit();
	void registerScriptAccelerateHandler(int);
	void registerScriptKeypadHandler(int);
	virtual void registerScriptTouchHandler(int, bool, int, bool);
	virtual void registerWithTouchDispatcher();
	virtual void setAccelerometerEnabled(bool);
	virtual void setAccelerometerInterval(double);
	virtual void setKeyboardEnabled(bool);
	virtual void setKeypadEnabled(bool);
	virtual void setMouseEnabled(bool);
	virtual void setPreviousPriority(int);
	virtual void setTouchEnabled(bool);
	virtual void setTouchMode(cocos2d::ccTouchesMode);
	virtual void setTouchPriority(int);
	void unregisterScriptAccelerateHandler();
	void unregisterScriptKeypadHandler();
	virtual void unregisterScriptTouchHandler();
}

[[link(win, android)]]
class cocos2d::CCLayerColor {
	// CCLayerColor(cocos2d::CCLayerColor const&);
	// CCLayerColor();
	void addToVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);
	void changeHeight(float);
	void changeWidth(float);
	void changeWidthAndHeight(float, float);
	static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&);
	static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&, float, float);
	static cocos2d::CCLayerColor* create();
	virtual void draw();
	virtual cocos2d::_ccBlendFunc getBlendFunc();
	virtual bool init();
	virtual bool initWithColor(cocos2d::_ccColor4B const&);
	virtual bool initWithColor(cocos2d::_ccColor4B const&, float, float);
	virtual void setBlendFunc(cocos2d::_ccBlendFunc);
	virtual void setColor(cocos2d::_ccColor3B const&);
	virtual void setContentSize(cocos2d::CCSize const&);
	virtual void setOpacity(unsigned char);
	void setVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);
	virtual void updateColor();
}

[[link(win, android)]]
class cocos2d::CCLayerGradient {
	// CCLayerGradient(cocos2d::CCLayerGradient const&);
	// CCLayerGradient();
	static cocos2d::CCLayerGradient* create(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&);
	static cocos2d::CCLayerGradient* create(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&, cocos2d::CCPoint const&);
	static cocos2d::CCLayerGradient* create();
	virtual cocos2d::_ccColor3B const& getEndColor();
	virtual unsigned char getEndOpacity();
	bool getShouldPremultiply() const;
	virtual cocos2d::_ccColor3B const& getStartColor();
	virtual unsigned char getStartOpacity();
	virtual cocos2d::CCPoint const& getVector();
	virtual bool init();
	virtual bool initWithColor(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&);
	virtual bool initWithColor(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&, cocos2d::CCPoint const&);
	virtual bool isCompressedInterpolation();
	virtual void setCompressedInterpolation(bool);
	virtual void setEndColor(cocos2d::_ccColor3B const&);
	virtual void setEndOpacity(unsigned char);
	void setShouldPremultiply(bool);
	virtual void setStartColor(cocos2d::_ccColor3B const&);
	virtual void setStartOpacity(unsigned char);
	void setValues(cocos2d::_ccColor3B const&, unsigned char, cocos2d::_ccColor3B const&, unsigned char, cocos2d::CCPoint const&);
	virtual void setVector(cocos2d::CCPoint const&);
	virtual void updateColor();
	virtual void visit();
}

[[link(win, android)]]
class cocos2d::CCLayerMultiplex {
	// CCLayerMultiplex(cocos2d::CCLayerMultiplex const&);
	// CCLayerMultiplex();
	void addLayer(cocos2d::CCLayer*);
	// static cocos2d::CCLayerMultiplex* create(cocos2d::CCLayer*, ...);
	static cocos2d::CCLayerMultiplex* create();
	static cocos2d::CCLayerMultiplex* createWithArray(cocos2d::CCArray*);
	static cocos2d::CCLayerMultiplex* createWithLayer(cocos2d::CCLayer*);
	bool initWithArray(cocos2d::CCArray*);
	// bool initWithLayers(cocos2d::CCLayer*, char*);
	void switchTo(unsigned int);
	void switchToAndReleaseMe(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA {
	// CCLayerRGBA(cocos2d::CCLayerRGBA const&);
	// CCLayerRGBA();
	static cocos2d::CCLayerRGBA* create();
	virtual cocos2d::_ccColor3B const& getColor();
	virtual cocos2d::_ccColor3B const& getDisplayedColor();
	virtual unsigned char getDisplayedOpacity();
	virtual unsigned char getOpacity();
	virtual bool init();
	virtual bool isCascadeColorEnabled();
	virtual bool isCascadeOpacityEnabled();
	virtual bool isOpacityModifyRGB();
	virtual void setCascadeColorEnabled(bool);
	virtual void setCascadeOpacityEnabled(bool);
	virtual void setColor(cocos2d::_ccColor3B const&);
	virtual void setOpacity(unsigned char);
	virtual void setOpacityModifyRGB(bool);
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&);
	virtual void updateDisplayedOpacity(unsigned char);
}

[[link(win, android)]]
class cocos2d::CCLens3D {
	// CCLens3D(cocos2d::CCLens3D const&);
	// CCLens3D();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCLens3D* create(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float);
	float getLensEffect();
	cocos2d::CCPoint const& getPosition();
	bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float);
	void setConcave(bool);
	void setLensEffect(float);
	void setPosition(cocos2d::CCPoint const&);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCLiquid {
	// CCLiquid(cocos2d::CCLiquid const&);
	// CCLiquid();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCLiquid* create(float, cocos2d::CCSize const&, unsigned int, float);
	float getAmplitude();
	float getAmplitudeRate();
	bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);
	void setAmplitude(float);
	void setAmplitudeRate(float);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCMenu {
	// CCMenu(cocos2d::CCMenu const&);
	// CCMenu();
	virtual void addChild(cocos2d::CCNode*);
	virtual void addChild(cocos2d::CCNode*, int);
	virtual void addChild(cocos2d::CCNode*, int, int);
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
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	// static cocos2d::CCMenu* create(cocos2d::CCMenuItem*, ...);
	static cocos2d::CCMenu* create();
	static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*);
	static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*);
	// static cocos2d::CCMenu* createWithItems(cocos2d::CCMenuItem*, char*);
	virtual bool init();
	bool initWithArray(cocos2d::CCArray*);
	virtual bool isEnabled();
	virtual bool isOpacityModifyRGB();
	cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*);
	cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*, bool);
	virtual void onExit();
	virtual void registerWithTouchDispatcher();
	virtual void removeChild(cocos2d::CCNode*, bool);
	virtual void setEnabled(bool);
	void setHandlerPriority(int);
	virtual void setOpacityModifyRGB(bool);
}

[[link(win, android)]]
class cocos2d::CCMenuItem {
	// CCMenuItem(cocos2d::CCMenuItem const&);
	// CCMenuItem();
	virtual void activate();
	static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	static cocos2d::CCMenuItem* create();
	int getScriptTapHandler();
	bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	virtual bool isEnabled();
	virtual bool isSelected();
	cocos2d::CCRect rect();
	virtual void registerScriptTapHandler(int);
	virtual void selected();
	virtual void setEnabled(bool);
	void setTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	virtual void unregisterScriptTapHandler();
	virtual void unselected();
}

[[link(win, android)]]
class cocos2d::CCMenuItemAtlasFont {
	// CCMenuItemAtlasFont(cocos2d::CCMenuItemAtlasFont const&);
	// CCMenuItemAtlasFont();
	static cocos2d::CCMenuItemAtlasFont* create(char const*, char const*, int, int, char);
	static cocos2d::CCMenuItemAtlasFont* create(char const*, char const*, int, int, char, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	bool initWithString(char const*, char const*, int, int, char, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
}

[[link(win, android)]]
class cocos2d::CCMenuItemFont {
	// CCMenuItemFont(cocos2d::CCMenuItemFont const&);
	// CCMenuItemFont();
	static cocos2d::CCMenuItemFont* create(char const*);
	static cocos2d::CCMenuItemFont* create(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	static char const* fontName();
	char const* fontNameObj();
	static unsigned int fontSize();
	unsigned int fontSizeObj();
	bool initWithString(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	void recreateLabel();
	static void setFontName(char const*);
	void setFontNameObj(char const*);
	static void setFontSize(unsigned int);
	void setFontSizeObj(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCMenuItemImage {
	// CCMenuItemImage(cocos2d::CCMenuItemImage const&);
	// CCMenuItemImage();
	static cocos2d::CCMenuItemImage* create(char const*, char const*, char const*);
	static cocos2d::CCMenuItemImage* create(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	static cocos2d::CCMenuItemImage* create(char const*, char const*);
	static cocos2d::CCMenuItemImage* create(char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	static cocos2d::CCMenuItemImage* create();
	virtual bool init();
	bool initWithNormalImage(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	void setDisabledSpriteFrame(cocos2d::CCSpriteFrame*);
	void setNormalSpriteFrame(cocos2d::CCSpriteFrame*);
	void setSelectedSpriteFrame(cocos2d::CCSpriteFrame*);
}

[[link(win, android)]]
class cocos2d::CCMenuItemLabel {
	// CCMenuItemLabel(cocos2d::CCMenuItemLabel const&);
	// CCMenuItemLabel();
	virtual void activate();
	static cocos2d::CCMenuItemLabel* create(cocos2d::CCNode*);
	static cocos2d::CCMenuItemLabel* create(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	virtual cocos2d::_ccColor3B const& getDisabledColor();
	virtual cocos2d::CCNode* getLabel();
	bool initWithLabel(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	virtual void selected();
	virtual void setDisabledColor(cocos2d::_ccColor3B const&);
	virtual void setEnabled(bool);
	virtual void setLabel(cocos2d::CCNode*);
	void setString(char const*);
	virtual void unselected();
}

[[link(win, android)]]
class cocos2d::CCMenuItemSprite {
	// CCMenuItemSprite(cocos2d::CCMenuItemSprite const&);
	// CCMenuItemSprite();
	static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*);
	static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	virtual cocos2d::CCNode* getDisabledImage();
	virtual cocos2d::CCNode* getNormalImage();
	virtual cocos2d::CCNode* getSelectedImage();
	bool initWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	virtual void selected();
	virtual void setDisabledImage(cocos2d::CCNode*);
	virtual void setEnabled(bool);
	virtual void setNormalImage(cocos2d::CCNode*);
	virtual void setSelectedImage(cocos2d::CCNode*);
	virtual void unselected();
	virtual void updateImagesVisibility();
}

[[link(win, android)]]
class cocos2d::CCMenuItemToggle {
	// CCMenuItemToggle(cocos2d::CCMenuItemToggle const&);
	// CCMenuItemToggle();
	virtual void activate();
	void addSubItem(cocos2d::CCMenuItem*);
	static cocos2d::CCMenuItemToggle* create(cocos2d::CCMenuItem*);
	static cocos2d::CCMenuItemToggle* create();
	static cocos2d::CCMenuItemToggle* createWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCArray*);
	// static cocos2d::CCMenuItemToggle* createWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCMenuItem*, ...);
	virtual unsigned int getSelectedIndex();
	virtual cocos2d::CCArray* getSubItems();
	bool initWithItem(cocos2d::CCMenuItem*);
	// bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCMenuItem*, char*);
	virtual void selected();
	cocos2d::CCMenuItem* selectedItem();
	virtual void setEnabled(bool);
	virtual void setSelectedIndex(unsigned int);
	virtual void setSubItems(cocos2d::CCArray*);
	virtual void unselected();
}

[[link(win, android)]]
class cocos2d::CCMotionStreak {
	// CCMotionStreak(cocos2d::CCMotionStreak const&);
	// CCMotionStreak();
	static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::_ccColor3B const&, cocos2d::CCTexture2D*);
	static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::_ccColor3B const&, char const*);
	virtual void draw();
	void enableRepeatMode(float);
	virtual cocos2d::_ccBlendFunc getBlendFunc();
	bool getDontOpacityFade() const;
	float getM_fMaxSeg() const;
	virtual unsigned char getOpacity();
	virtual cocos2d::CCTexture2D* getTexture();
	bool initWithFade(float, float, float, cocos2d::_ccColor3B const&, cocos2d::CCTexture2D*);
	bool initWithFade(float, float, float, cocos2d::_ccColor3B const&, char const*);
	bool isFastMode();
	virtual bool isOpacityModifyRGB();
	bool isStartingPositionInitialized();
	void reset();
	void resumeStroke();
	virtual void setBlendFunc(cocos2d::_ccBlendFunc);
	void setDontOpacityFade(bool);
	void setFastMode(bool);
	void setM_fMaxSeg(float);
	virtual void setOpacity(unsigned char);
	virtual void setOpacityModifyRGB(bool);
	virtual void setPosition(cocos2d::CCPoint const&);
	void setStartingPositionInitialized(bool);
	void setStroke(float);
	virtual void setTexture(cocos2d::CCTexture2D*);
	void stopStroke();
	void tintWithColor(cocos2d::_ccColor3B);
	virtual void update(float);
	void updateFade(float);
}

[[link(win, android)]]
class cocos2d::CCMouseDelegate {
	// CCMouseDelegate(cocos2d::CCMouseDelegate const&);
	// CCMouseDelegate();
	virtual void rightKeyDown();
	virtual void rightKeyUp();
	virtual void scrollWheel(float, float);
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
class cocos2d::CCMouseHandler {
	// CCMouseHandler(cocos2d::CCMouseHandler const&);
	// CCMouseHandler();
	cocos2d::CCMouseDelegate* getDelegate();
	static cocos2d::CCMouseHandler* handlerWithDelegate(cocos2d::CCMouseDelegate*);
	virtual bool initWithDelegate(cocos2d::CCMouseDelegate*);
	void setDelegate(cocos2d::CCMouseDelegate*);
}

[[link(win, android)]]
class cocos2d::CCMoveBy {
	// CCMoveBy(cocos2d::CCMoveBy const&);
	// CCMoveBy();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCMoveBy* create(float, cocos2d::CCPoint const&);
	bool initWithDuration(float, cocos2d::CCPoint const&);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCMoveTo {
	// CCMoveTo(cocos2d::CCMoveTo const&);
	// CCMoveTo();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCMoveTo* create(float, cocos2d::CCPoint const&);
	bool initWithDuration(float, cocos2d::CCPoint const&);
	virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCNode {
	// CCNode(cocos2d::CCNode const&);
	// CCNode();
	virtual void _setZOrder(int);
	virtual void addChild(cocos2d::CCNode*);
	virtual void addChild(cocos2d::CCNode*, int);
	virtual void addChild(cocos2d::CCNode*, int, int);
	virtual bool addComponent(cocos2d::CCComponent*);
	cocos2d::CCRect boundingBox();
	void childrenAlloc();
	virtual void cleanup();
	cocos2d::CCPoint convertToNodeSpace(cocos2d::CCPoint const&);
	cocos2d::CCPoint convertToNodeSpaceAR(cocos2d::CCPoint const&);
	cocos2d::CCPoint convertToWindowSpace(cocos2d::CCPoint const&);
	cocos2d::CCPoint convertToWorldSpace(cocos2d::CCPoint const&);
	cocos2d::CCPoint convertToWorldSpaceAR(cocos2d::CCPoint const&);
	cocos2d::CCPoint convertTouchToNodeSpace(cocos2d::CCTouch*);
	cocos2d::CCPoint convertTouchToNodeSpaceAR(cocos2d::CCTouch*);
	static cocos2d::CCNode* create();
	char const* description();
	void detachChild(cocos2d::CCNode*, bool);
	virtual void draw();
	cocos2d::CCAction* getActionByTag(int);
	virtual cocos2d::CCActionManager* getActionManager();
	virtual cocos2d::CCPoint const& getAnchorPoint();
	virtual cocos2d::CCPoint const& getAnchorPointInPoints();
	virtual cocos2d::CCCamera* getCamera();
	virtual cocos2d::CCNode* getChildByTag(int);
	virtual cocos2d::CCArray* getChildren();
	virtual unsigned int getChildrenCount() const;
	cocos2d::CCComponent* getComponent(char const*) const;
	virtual cocos2d::CCSize const& getContentSize() const;
	virtual cocos2d::ccGLServerState getGLServerState();
	virtual cocos2d::CCGridBase* getGrid();
	virtual unsigned int getOrderOfArrival();
	virtual cocos2d::CCNode* getParent();
	virtual cocos2d::CCPoint const& getPosition();
	virtual void getPosition(float*, float*);
	virtual float getPositionX();
	virtual float getPositionY();
	virtual float getRotation();
	virtual float getRotationX();
	virtual float getRotationY();
	virtual float getScale();
	virtual float getScaleX();
	virtual float getScaleY();
	virtual cocos2d::CCSize getScaledContentSize();
	virtual cocos2d::CCScheduler* getScheduler();
	int getScriptHandler();
	virtual cocos2d::CCGLProgram* getShaderProgram();
	virtual float getSkewX();
	virtual float getSkewY();
	cocos2d::CCAffineTransform getTransformTemp();
	bool getUseChildIndex();
	virtual void* getUserData();
	virtual cocos2d::CCObject* getUserObject();
	virtual float getVertexZ();
	virtual int getZOrder();
	virtual void ignoreAnchorPointForPosition(bool);
	virtual bool init();
	void insertChild(cocos2d::CCNode*, int);
	virtual bool isIgnoreAnchorPointForPosition();
	virtual bool isRunning();
	virtual bool isVisible();
	virtual cocos2d::CCAffineTransform const nodeToParentTransform();
	virtual cocos2d::CCAffineTransform const nodeToParentTransformFast();
	virtual cocos2d::CCAffineTransform nodeToWorldTransform();
	virtual cocos2d::CCAffineTransform nodeToWorldTransformFast();
	unsigned int numberOfRunningActions();
	virtual void onEnter();
	virtual void onEnterTransitionDidFinish();
	virtual void onExit();
	virtual void onExitTransitionDidStart();
	virtual cocos2d::CCAffineTransform const parentToNodeTransform();
	void pauseSchedulerAndActions();
	void qsortAllChildrenWithIndex();
	virtual void registerScriptHandler(int);
	virtual void removeAllChildren();
	virtual void removeAllChildrenWithCleanup(bool);
	virtual void removeAllComponents();
	virtual void removeChild(cocos2d::CCNode*);
	virtual void removeChild(cocos2d::CCNode*, bool);
	virtual void removeChildByTag(int);
	virtual void removeChildByTag(int, bool);
	virtual bool removeComponent(cocos2d::CCComponent*);
	virtual bool removeComponent(char const*);
	virtual void removeFromParent();
	virtual void removeFromParentAndCleanup(bool);
	virtual void removeMeAndCleanup();
	virtual void reorderChild(cocos2d::CCNode*, int);
	static void resetGlobalOrderOfArrival();
	void resumeSchedulerAndActions();
	cocos2d::CCAction* runAction(cocos2d::CCAction*);
	void schedule(cocos2d::SEL_SCHEDULE);
	void schedule(cocos2d::SEL_SCHEDULE, float);
	void schedule(cocos2d::SEL_SCHEDULE, float, unsigned int, float);
	void scheduleOnce(cocos2d::SEL_SCHEDULE, float);
	void scheduleUpdate();
	void scheduleUpdateWithPriority(int);
	void scheduleUpdateWithPriorityLua(int, int);
	virtual void setActionManager(cocos2d::CCActionManager*);
	void setAdditionalTransform(cocos2d::CCAffineTransform const&);
	virtual void setAnchorPoint(cocos2d::CCPoint const&);
	virtual void setContentSize(cocos2d::CCSize const&);
	virtual void setGLServerState(cocos2d::ccGLServerState);
	virtual void setGrid(cocos2d::CCGridBase*);
	virtual void setOrderOfArrival(unsigned int);
	virtual void setParent(cocos2d::CCNode*);
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setPosition(float, float);
	virtual void setPositionX(float);
	virtual void setPositionY(float);
	virtual void setRotation(float);
	virtual void setRotationX(float);
	virtual void setRotationY(float);
	virtual void setScale(float);
	virtual void setScale(float, float);
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setScheduler(cocos2d::CCScheduler*);
	virtual void setShaderProgram(cocos2d::CCGLProgram*);
	virtual void setSkewX(float);
	virtual void setSkewY(float);
	void setUseChildIndex(bool);
	virtual void setUserData(void*);
	virtual void setUserObject(cocos2d::CCObject*);
	virtual void setVertexZ(float);
	virtual void setVisible(bool);
	virtual void setZOrder(int);
	virtual void sortAllChildren();
	void sortAllChildrenNoIndex();
	void sortAllChildrenWithIndex();
	void stopAction(cocos2d::CCAction*);
	void stopActionByTag(int);
	void stopAllActions();
	void transform();
	void transformAncestors();
	virtual void unregisterScriptHandler();
	void unschedule(cocos2d::SEL_SCHEDULE);
	void unscheduleAllSelectors();
	void unscheduleUpdate();
	virtual void update(float);
	void updateChildIndexes();
	virtual void updateTransform();
	virtual void updateTweenAction(float, char const*);
	virtual void updateTweenActionInt(float, int);
	virtual void visit();
	virtual cocos2d::CCAffineTransform worldToNodeTransform();
}

[[link(win, android)]]
class cocos2d::CCNodeRGBA {
	// CCNodeRGBA(cocos2d::CCNodeRGBA const&);
	// CCNodeRGBA();
	static cocos2d::CCNodeRGBA* create();
	virtual cocos2d::_ccColor3B const& getColor();
	virtual cocos2d::_ccColor3B const& getDisplayedColor();
	virtual unsigned char getDisplayedOpacity();
	virtual unsigned char getOpacity();
	virtual bool init();
	virtual bool isCascadeColorEnabled();
	virtual bool isCascadeOpacityEnabled();
	virtual bool isOpacityModifyRGB();
	virtual void setCascadeColorEnabled(bool);
	virtual void setCascadeOpacityEnabled(bool);
	virtual void setColor(cocos2d::_ccColor3B const&);
	virtual void setOpacity(unsigned char);
	virtual void setOpacityModifyRGB(bool);
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&);
	virtual void updateDisplayedOpacity(unsigned char);
}

[[link(win, android)]]
class cocos2d::CCNotificationCenter {
	// CCNotificationCenter(cocos2d::CCNotificationCenter const&);
	// CCNotificationCenter();
	void addObserver(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, char const*, cocos2d::CCObject*);
	int getObserverHandlerByName(char const*);
	int getScriptHandler();
	bool observerExisted(cocos2d::CCObject*, char const*);
	void postNotification(char const*);
	void postNotification(char const*, cocos2d::CCObject*);
	static void purgeNotificationCenter();
	void registerScriptObserver(cocos2d::CCObject*, int, char const*);
	int removeAllObservers(cocos2d::CCObject*);
	void removeObserver(cocos2d::CCObject*, char const*);
	static cocos2d::CCNotificationCenter* sharedNotificationCenter();
	void unregisterScriptObserver(cocos2d::CCObject*, char const*);
}

[[link(win, android)]]
class cocos2d::CCNotificationObserver {
	// CCNotificationObserver(cocos2d::CCNotificationObserver const&);
	// CCNotificationObserver(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, char const*, cocos2d::CCObject*);
	virtual int getHandler();
	virtual char* getName();
	virtual cocos2d::CCObject* getObject();
	virtual SEL_SCHEDULE getSelector();
	virtual cocos2d::CCObject* getTarget();
	void performSelector(cocos2d::CCObject*);
	virtual void setHandler(int);
}

[[link(win, android)]]
class cocos2d::CCObject {
	// CCObject(cocos2d::CCObject const&);
	// CCObject();
	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
	cocos2d::CCObject* autorelease();
	virtual bool canEncode();
	cocos2d::CCObject* copy();
	static cocos2d::CCObject* createWithCoder(DS_Dictionary*);
	virtual void encodeWithCoder(DS_Dictionary*);
	cocos2d::CCObjectType getObjType() const;
	virtual int getTag() const;
	virtual bool isEqual(cocos2d::CCObject const*);
	bool isSingleReference() const;
	void release();
	void retain();
	unsigned int retainCount() const;
	void setObjType(cocos2d::CCObjectType);
	virtual void setTag(int);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCOrbitCamera {
	// CCOrbitCamera(cocos2d::CCOrbitCamera const&);
	// CCOrbitCamera();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCOrbitCamera* create(float, float, float, float, float, float, float);
	bool initWithDuration(float, float, float, float, float, float, float);
	void sphericalRadius(float*, float*, float*);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCPageTurn3D {
	// CCPageTurn3D(cocos2d::CCPageTurn3D const&);
	// CCPageTurn3D();
	static cocos2d::CCPageTurn3D* create(float, cocos2d::CCSize const&);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCParallaxNode {
	// CCParallaxNode(cocos2d::CCParallaxNode const&);
	// CCParallaxNode();
	cocos2d::CCPoint absolutePosition();
	virtual void addChild(cocos2d::CCNode*, unsigned int, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	virtual void addChild(cocos2d::CCNode*, unsigned int, int);
	static cocos2d::CCParallaxNode* create();
	cocos2d::_ccArray* getParallaxArray() const;
	virtual void removeAllChildrenWithCleanup(bool);
	virtual void removeChild(cocos2d::CCNode*, bool);
	void setParallaxArray(cocos2d::_ccArray*);
	virtual void visit();
}

[[link(win, android)]]
class cocos2d::CCParticleBatchNode {
	// CCParticleBatchNode(cocos2d::CCParticleBatchNode const&);
	// CCParticleBatchNode();
	virtual void addChild(cocos2d::CCNode*);
	virtual void addChild(cocos2d::CCNode*, int);
	virtual void addChild(cocos2d::CCNode*, int, int);
	unsigned int addChildHelper(cocos2d::CCParticleSystem*, int, int);
	static cocos2d::CCParticleBatchNode* create(char const*, unsigned int);
	static cocos2d::CCParticleBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int);
	void disableParticle(unsigned int);
	virtual void draw();
	virtual cocos2d::_ccBlendFunc getBlendFunc();
	void getCurrentIndex(unsigned int*, unsigned int*, cocos2d::CCNode*, int);
	virtual cocos2d::CCTexture2D* getTexture();
	cocos2d::CCTextureAtlas* getTextureAtlas() const;
	void increaseAtlasCapacityTo(unsigned int);
	bool initWithFile(char const*, unsigned int);
	bool initWithTexture(cocos2d::CCTexture2D*, unsigned int);
	void insertChild(cocos2d::CCParticleSystem*, unsigned int);
	virtual void removeAllChildrenWithCleanup(bool);
	virtual void removeChild(cocos2d::CCNode*, bool);
	void removeChildAtIndex(unsigned int, bool);
	virtual void reorderChild(cocos2d::CCNode*, int);
	unsigned int searchNewPositionInChildrenForZ(int);
	virtual void setBlendFunc(cocos2d::_ccBlendFunc);
	virtual void setTexture(cocos2d::CCTexture2D*);
	void setTextureAtlas(cocos2d::CCTextureAtlas*);
	void updateAllAtlasIndexes();
	void updateBlendFunc();
	virtual void visit();
}

[[link(win, android)]]
class cocos2d::CCParticleExplosion {
	// CCParticleExplosion(cocos2d::CCParticleExplosion const&);
	// CCParticleExplosion();
	static cocos2d::CCParticleExplosion* create();
	static cocos2d::CCParticleExplosion* createWithTotalParticles(unsigned int);
	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleFire {
	// CCParticleFire(cocos2d::CCParticleFire const&);
	// CCParticleFire();
	static cocos2d::CCParticleFire* create();
	static cocos2d::CCParticleFire* createWithTotalParticles(unsigned int);
	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleFireworks {
	// CCParticleFireworks(cocos2d::CCParticleFireworks const&);
	// CCParticleFireworks();
	static cocos2d::CCParticleFireworks* create();
	static cocos2d::CCParticleFireworks* createWithTotalParticles(unsigned int);
	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleFlower {
	// CCParticleFlower(cocos2d::CCParticleFlower const&);
	// CCParticleFlower();
	static cocos2d::CCParticleFlower* create();
	static cocos2d::CCParticleFlower* createWithTotalParticles(unsigned int);
	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleGalaxy {
	// CCParticleGalaxy(cocos2d::CCParticleGalaxy const&);
	// CCParticleGalaxy();
	static cocos2d::CCParticleGalaxy* create();
	static cocos2d::CCParticleGalaxy* createWithTotalParticles(unsigned int);
	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleMeteor {
	// CCParticleMeteor(cocos2d::CCParticleMeteor const&);
	// CCParticleMeteor();
	static cocos2d::CCParticleMeteor* create();
	static cocos2d::CCParticleMeteor* createWithTotalParticles(unsigned int);
	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleRain {
	// CCParticleRain(cocos2d::CCParticleRain const&);
	// CCParticleRain();
	static cocos2d::CCParticleRain* create();
	static cocos2d::CCParticleRain* createWithTotalParticles(unsigned int);
	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleSmoke {
	// CCParticleSmoke(cocos2d::CCParticleSmoke const&);
	// CCParticleSmoke();
	static cocos2d::CCParticleSmoke* create();
	static cocos2d::CCParticleSmoke* createWithTotalParticles(unsigned int);
	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleSnow {
	// CCParticleSnow(cocos2d::CCParticleSnow const&);
	// CCParticleSnow();
	static cocos2d::CCParticleSnow* create();
	static cocos2d::CCParticleSnow* createWithTotalParticles(unsigned int);
	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleSpiral {
	// CCParticleSpiral(cocos2d::CCParticleSpiral const&);
	// CCParticleSpiral();
	static cocos2d::CCParticleSpiral* create();
	static cocos2d::CCParticleSpiral* createWithTotalParticles(unsigned int);
	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleSun {
	// CCParticleSun(cocos2d::CCParticleSun const&);
	// CCParticleSun();
	static cocos2d::CCParticleSun* create();
	static cocos2d::CCParticleSun* createWithTotalParticles(unsigned int);
	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleSystem {
	// CCParticleSystem(cocos2d::CCParticleSystem const&);
	// CCParticleSystem();
	bool addParticle();
	void calculateWorldSpace();
	static cocos2d::CCParticleSystem* create(char const*);
	static cocos2d::CCParticleSystem* createWithTotalParticles(unsigned int);
	virtual float getAngle();
	virtual float getAngleVar();
	unsigned int getAtlasIndex() const;
	virtual cocos2d::CCParticleBatchNode* getBatchNode();
	virtual cocos2d::_ccBlendFunc getBlendFunc();
	bool getDontCleanupOnFinish() const;
	virtual float getDuration();
	bool getDynamicRotationIsDir() const;
	virtual float getEmissionRate();
	virtual int getEmitterMode();
	virtual cocos2d::_ccColor4F const& getEndColor();
	virtual cocos2d::_ccColor4F const& getEndColorVar();
	bool getEndRGBVarSync() const;
	virtual float getEndRadius();
	virtual float getEndRadiusVar();
	virtual float getEndSize();
	virtual float getEndSizeVar();
	virtual float getEndSpin();
	virtual float getEndSpinVar();
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
	virtual cocos2d::CCPoint const& getGravity();
	virtual float getLife();
	virtual float getLifeVar();
	virtual bool getOpacityModifyRGB();
	bool getOrderSensitive() const;
	virtual unsigned int getParticleCount();
	virtual cocos2d::CCPoint const& getPosVar();
	virtual cocos2d::tCCPositionType getPositionType();
	virtual float getRadialAccel();
	virtual float getRadialAccelVar();
	float getRespawn() const;
	float getRespawnVar() const;
	virtual float getRotatePerSecond();
	virtual float getRotatePerSecondVar();
	virtual bool getRotationIsDir();
	virtual cocos2d::CCPoint const& getSourcePosition();
	virtual float getSpeed();
	virtual float getSpeedVar();
	virtual cocos2d::_ccColor4F const& getStartColor();
	virtual cocos2d::_ccColor4F const& getStartColorVar();
	bool getStartRGBVarSync() const;
	virtual float getStartRadius();
	bool getStartRadiusEqualToEnd() const;
	virtual float getStartRadiusVar();
	virtual float getStartSize();
	bool getStartSizeEqualToEnd() const;
	virtual float getStartSizeVar();
	virtual float getStartSpin();
	bool getStartSpinEqualToEnd() const;
	virtual float getStartSpinVar();
	virtual float getTangentialAccel();
	virtual float getTangentialAccelVar();
	virtual cocos2d::CCTexture2D* getTexture();
	float getTimeElapsed();
	virtual unsigned int getTotalParticles();
	bool getUseUniformColorMode() const;
	bool getUsingSchedule() const;
	bool getWasRemoved() const;
	virtual bool init();
	void initParticle(cocos2d::sCCParticle*);
	bool initWithDictionary(cocos2d::CCDictionary*, char const*, bool);
	bool initWithDictionary(cocos2d::CCDictionary*, bool);
	bool initWithFile(char const*, bool);
	virtual bool initWithTotalParticles(unsigned int, bool);
	virtual bool isActive();
	virtual bool isAutoRemoveOnFinish();
	virtual bool isBlendAdditive();
	bool isFull();
	void loadDefaults();
	void loadScaledDefaults(float);
	virtual void postStep();
	void resetSystem();
	void resumeSystem();
	void saveDefaults();
	virtual void setAngle(float);
	virtual void setAngleVar(float);
	void setAtlasIndex(unsigned int);
	virtual void setAutoRemoveOnFinish(bool);
	virtual void setBatchNode(cocos2d::CCParticleBatchNode*);
	virtual void setBlendAdditive(bool);
	virtual void setBlendFunc(cocos2d::_ccBlendFunc);
	void setDontCleanupOnFinish(bool);
	virtual void setDuration(float);
	void setDynamicRotationIsDir(bool);
	virtual void setEmissionRate(float);
	virtual void setEmitterMode(int);
	void setEndAlpha(float);
	virtual void setEndColor(cocos2d::_ccColor4F const&);
	virtual void setEndColorVar(cocos2d::_ccColor4F const&);
	void setEndRGBVarSync(bool);
	virtual void setEndRadius(float);
	virtual void setEndRadiusVar(float);
	virtual void setEndSize(float);
	virtual void setEndSizeVar(float);
	virtual void setEndSpin(float);
	virtual void setEndSpinVar(float);
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
	virtual void setGravity(cocos2d::CCPoint const&);
	virtual void setLife(float);
	virtual void setLifeVar(float);
	virtual void setOpacityModifyRGB(bool);
	void setOrderSensitive(bool);
	virtual void setPosVar(cocos2d::CCPoint const&);
	virtual void setPositionType(cocos2d::tCCPositionType);
	virtual void setRadialAccel(float);
	virtual void setRadialAccelVar(float);
	void setRespawn(float);
	void setRespawnVar(float);
	virtual void setRotatePerSecond(float);
	virtual void setRotatePerSecondVar(float);
	virtual void setRotation(float);
	virtual void setRotationIsDir(bool);
	virtual void setScale(float);
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setSourcePosition(cocos2d::CCPoint const&);
	virtual void setSpeed(float);
	virtual void setSpeedVar(float);
	void setStartAlpha(float);
	virtual void setStartColor(cocos2d::_ccColor4F const&);
	virtual void setStartColorVar(cocos2d::_ccColor4F const&);
	void setStartRGBVarSync(bool);
	virtual void setStartRadius(float);
	void setStartRadiusEqualToEnd(bool);
	virtual void setStartRadiusVar(float);
	virtual void setStartSize(float);
	void setStartSizeEqualToEnd(bool);
	virtual void setStartSizeVar(float);
	virtual void setStartSpin(float);
	void setStartSpinEqualToEnd(bool);
	virtual void setStartSpinVar(float);
	virtual void setTangentialAccel(float);
	virtual void setTangentialAccelVar(float);
	virtual void setTexture(cocos2d::CCTexture2D*);
	virtual void setTotalParticles(unsigned int);
	void setUsingSchedule(bool);
	virtual void setVisible(bool);
	void setWasRemoved(bool);
	void stopSystem();
	void toggleUniformColorMode(bool);
	virtual void update(float);
	virtual void updateBlendFunc();
	virtual void updateEmissionRate();
	virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&);
	void updateVisible();
	virtual void updateWithNoTime();
}

[[link(win, android)]]
class cocos2d::CCParticleSystemQuad {
	// CCParticleSystemQuad(cocos2d::CCParticleSystemQuad const&);
	// CCParticleSystemQuad();
	bool allocMemory();
	static cocos2d::CCParticleSystemQuad* create(char const*, bool);
	static cocos2d::CCParticleSystemQuad* create();
	static cocos2d::CCParticleSystemQuad* createWithTotalParticles(unsigned int, bool);
	virtual void draw();
	unsigned char getOpacity();
	void initIndices();
	void initTexCoordsWithRect(cocos2d::CCRect const&);
	virtual bool initWithTotalParticles(unsigned int, bool);
	void listenBackToForeground(cocos2d::CCObject*);
	virtual void postStep();
	virtual void setBatchNode(cocos2d::CCParticleBatchNode*);
	void setDisplayFrame(cocos2d::CCSpriteFrame*);
	void setOpacity(unsigned char);
	virtual void setTexture(cocos2d::CCTexture2D*);
	void setTextureWithRect(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
	virtual void setTotalParticles(unsigned int);
	void setupVBO();
	virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&);
	void updateTexCoords();
}

[[link(win, android)]]
class cocos2d::CCPlace {
	// CCPlace(cocos2d::CCPlace const&);
	// CCPlace();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCPlace* create(cocos2d::CCPoint const&);
	bool initWithPosition(cocos2d::CCPoint const&);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCPoint {
	// CCPoint(cocos2d::CCPoint const&);
	// CCPoint(cocos2d::CCSize const&);
	// CCPoint(float, float);
	// CCPoint();
	void add(int, float);
	float at(int);
	float cross(cocos2d::CCPoint const&) const;
	float dot(cocos2d::CCPoint const&) const;
	bool equals(cocos2d::CCPoint const&) const;
	static cocos2d::CCPoint forAngle(float);
	bool fuzzyEquals(cocos2d::CCPoint const&, float) const;
	float getAngle(cocos2d::CCPoint const&) const;
	float getAngle() const;
	float getDistance(cocos2d::CCPoint const&) const;
	float getDistanceSq(cocos2d::CCPoint const&) const;
	float getLength() const;
	float getLengthSq() const;
	cocos2d::CCPoint getPerp() const;
	cocos2d::CCPoint getRPerp() const;
	bool isZero() const;
	cocos2d::CCPoint lerp(cocos2d::CCPoint const&, float) const;
	cocos2d::CCPoint normalize() const;
	cocos2d::CCPoint project(cocos2d::CCPoint const&) const;
	cocos2d::CCPoint rotate(cocos2d::CCPoint const&) const;
	cocos2d::CCPoint rotateByAngle(cocos2d::CCPoint const&, float) const;
	void set(int, float);
	void setPoint(float, float);
	void swap();
	cocos2d::CCPoint unrotate(cocos2d::CCPoint const&) const;
}

[[link(win, android)]]
class cocos2d::CCPointArray {
	// CCPointArray(cocos2d::CCPointArray const&);
	// CCPointArray();
	void addControlPoint(cocos2d::CCPoint);
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	unsigned int count();
	static cocos2d::CCPointArray* create(unsigned int);
	cocos2d::CCPoint getControlPointAtIndex(unsigned int);
	gd::vector<cocos2d::CCPoint*> const* getControlPoints();
	bool initWithCapacity(unsigned int);
	void insertControlPoint(cocos2d::CCPoint&, unsigned int);
	void removeControlPointAtIndex(unsigned int);
	void replaceControlPoint(cocos2d::CCPoint&, unsigned int);
	cocos2d::CCPointArray* reverse();
	void reverseInline();
	void setControlPoints(gd::vector<cocos2d::CCPoint*>*);
}

[[link(win, android)]]
class cocos2d::CCPoolManager {
	// CCPoolManager();
	void addObject(cocos2d::CCObject*);
	void finalize();
	cocos2d::CCAutoreleasePool* getCurReleasePool();
	void pop();
	static void purgePoolManager();
	void push();
	void removeObject(cocos2d::CCObject*);
	static cocos2d::CCPoolManager* sharedPoolManager();
}

[[link(win, android)]]
class cocos2d::CCPrettyPrinter {
	// CCPrettyPrinter(cocos2d::CCPrettyPrinter const&);
	// CCPrettyPrinter(int);
	virtual void clear();
	virtual gd::string getResult();
	void setIndentLevel(int);
	virtual void visit(cocos2d::CCArray const*);
	virtual void visit(cocos2d::CCBool const*);
	virtual void visit(cocos2d::CCDictionary const*);
	virtual void visit(cocos2d::CCDouble const*);
	virtual void visit(cocos2d::CCFloat const*);
	virtual void visit(cocos2d::CCInteger const*);
	virtual void visit(cocos2d::CCSet const*);
	virtual void visit(cocos2d::CCString const*);
	virtual void visitObject(cocos2d::CCObject const*);
}

[[link(win, android)]]
class cocos2d::CCProfiler {
	// CCProfiler(cocos2d::CCProfiler const&);
	// CCProfiler();
	cocos2d::CCProfilingTimer* createAndAddTimerWithName(char const*);
	void displayTimers();
	bool init();
	void releaseAllTimers();
	void releaseTimer(char const*);
	static cocos2d::CCProfiler* sharedProfiler();
}

[[link(win, android)]]
class cocos2d::CCProgressFromTo {
	// CCProgressFromTo(cocos2d::CCProgressFromTo const&);
	// CCProgressFromTo();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCProgressFromTo* create(float, float, float);
	bool initWithDuration(float, float, float);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCProgressTimer {
	// CCProgressTimer(cocos2d::CCProgressTimer const&);
	// CCProgressTimer();
	cocos2d::CCPoint boundaryTexCoord(char);
	static cocos2d::CCProgressTimer* create(cocos2d::CCSprite*);
	virtual void draw();
	cocos2d::CCPoint getBarChangeRate() const;
	virtual cocos2d::_ccColor3B const& getColor() const;
	virtual cocos2d::CCPoint getMidpoint();
	virtual unsigned char getOpacity() const;
	float getPercentage();
	cocos2d::CCSprite* getSprite();
	cocos2d::CCProgressTimerType getType();
	bool initWithSprite(cocos2d::CCSprite*);
	bool isReverseDirection();
	void setAnchorPoint(cocos2d::CCPoint);
	void setBarChangeRate(cocos2d::CCPoint);
	virtual void setColor(cocos2d::_ccColor3B const&);
	virtual void setMidpoint(cocos2d::CCPoint);
	virtual void setOpacity(unsigned char);
	void setPercentage(float);
	void setReverseDirection(bool);
	void setReverseProgress(bool);
	void setSprite(cocos2d::CCSprite*);
	void setType(cocos2d::CCProgressTimerType);
	cocos2d::_ccTex2F textureCoordFromAlphaPoint(cocos2d::CCPoint);
	void updateBar();
	void updateColor();
	void updateProgress();
	void updateRadial();
	cocos2d::_ccVertex2F vertexFromAlphaPoint(cocos2d::CCPoint);
}

[[link(win, android)]]
class cocos2d::CCProgressTo {
	// CCProgressTo(cocos2d::CCProgressTo const&);
	// CCProgressTo();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCProgressTo* create(float, float);
	bool initWithDuration(float, float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCRGBAProtocol {
	// CCRGBAProtocol(cocos2d::CCRGBAProtocol const&);
	// CCRGBAProtocol();
}

[[link(win, android)]]
class cocos2d::CCRect {
	// CCRect(cocos2d::CCRect const&);
	// CCRect(float, float, float, float);
	// CCRect();
	bool containsPoint(cocos2d::CCPoint const&) const;
	bool equals(cocos2d::CCRect const&) const;
	float getMax(int);
	float getMaxX() const;
	float getMaxY() const;
	float getMidX() const;
	float getMidY() const;
	float getMin(int);
	float getMinX() const;
	float getMinY() const;
	bool intersectsRect(cocos2d::CCRect const&) const;
	void setRect(float, float, float, float);
}

[[link(win, android)]]
class cocos2d::CCRemoveSelf {
	// CCRemoveSelf(cocos2d::CCRemoveSelf const&);
	// CCRemoveSelf();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCRemoveSelf* create(bool);
	bool init(bool);
	virtual cocos2d::CCFiniteTimeAction* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCRenderTexture {
	// CCRenderTexture(cocos2d::CCRenderTexture const&);
	// CCRenderTexture();
	void begin();
	void beginWithClear(float, float, float, float, float, int, unsigned int);
	void beginWithClear(float, float, float, float);
	void beginWithClear(float, float, float, float, float);
	void beginWithClear(float, float, float, float, float, int);
	void clear(float, float, float, float);
	void clearDepth(float);
	void clearStencil(int);
	static cocos2d::CCRenderTexture* create(int, int);
	static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat);
	static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int);
	virtual void draw();
	void end();
	void endToLua();
	cocos2d::_ccColor4F const& getClearColor() const;
	float getClearDepth() const;
	unsigned int getClearFlags() const;
	int getClearStencil() const;
	virtual cocos2d::CCSprite* getSprite();
	bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat);
	bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int);
	bool isAutoDraw() const;
	void listenToBackground(cocos2d::CCObject*);
	void listenToForeground(cocos2d::CCObject*);
	cocos2d::CCImage* newCCImage(bool);
	bool saveToFile(char const*);
	bool saveToFile(char const*, cocos2d::eImageFormat);
	void setAutoDraw(bool);
	void setClearColor(cocos2d::_ccColor4F const&);
	void setClearDepth(float);
	void setClearFlags(unsigned int);
	void setClearStencil(float);
	virtual void setSprite(cocos2d::CCSprite*);
	void updateInternalScale(float, float);
	virtual void visit();
}

[[link(win, android)]]
class cocos2d::CCRepeat {
	// CCRepeat(cocos2d::CCRepeat const&);
	// CCRepeat();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCRepeat* create(cocos2d::CCFiniteTimeAction*, unsigned int);
	cocos2d::CCFiniteTimeAction* getInnerAction();
	bool initWithAction(cocos2d::CCFiniteTimeAction*, unsigned int);
	virtual bool isDone();
	virtual cocos2d::CCActionInterval* reverse();
	void setInnerAction(cocos2d::CCFiniteTimeAction*);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void stop();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCRepeatForever {
	// CCRepeatForever(cocos2d::CCRepeatForever const&);
	// CCRepeatForever();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCRepeatForever* create(cocos2d::CCActionInterval*);
	cocos2d::CCActionInterval* getInnerAction();
	bool initWithAction(cocos2d::CCActionInterval*);
	virtual bool isDone();
	virtual cocos2d::CCActionInterval* reverse();
	void setInnerAction(cocos2d::CCActionInterval*);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void step(float);
}

[[link(win, android)]]
class cocos2d::CCReuseGrid {
	// CCReuseGrid(cocos2d::CCReuseGrid const&);
	// CCReuseGrid();
	static cocos2d::CCReuseGrid* create(int);
	bool initWithTimes(int);
	virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCReverseTime {
	// CCReverseTime(cocos2d::CCReverseTime const&);
	// CCReverseTime();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCReverseTime* create(cocos2d::CCFiniteTimeAction*);
	bool initWithAction(cocos2d::CCFiniteTimeAction*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void stop();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCRipple3D {
	// CCRipple3D(cocos2d::CCRipple3D const&);
	// CCRipple3D();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCRipple3D* create(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float);
	float getAmplitude();
	float getAmplitudeRate();
	cocos2d::CCPoint const& getPosition();
	bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float);
	void setAmplitude(float);
	void setAmplitudeRate(float);
	void setPosition(cocos2d::CCPoint const&);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCRotateBy {
	// CCRotateBy(cocos2d::CCRotateBy const&);
	// CCRotateBy();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCRotateBy* create(float, float);
	static cocos2d::CCRotateBy* create(float, float, float);
	bool initWithDuration(float, float);
	bool initWithDuration(float, float, float);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCRotateTo {
	// CCRotateTo(cocos2d::CCRotateTo const&);
	// CCRotateTo();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCRotateTo* create(float, float);
	static cocos2d::CCRotateTo* create(float, float, float);
	bool initWithDuration(float, float);
	virtual bool initWithDuration(float, float, float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCSAXDelegator {
	// CCSAXDelegator(cocos2d::CCSAXDelegator const&);
	// CCSAXDelegator();
}

[[link(win, android)]]
class cocos2d::CCSAXParser {
	// CCSAXParser();
	static void endElement(void*, unsigned char const*);
	bool init(char const*);
	bool parse(char const*);
	bool parse(char const*, unsigned int);
	void setDelegator(cocos2d::CCSAXDelegator*);
	static void startElement(void*, unsigned char const*, unsigned char const**);
	static void textHandler(void*, unsigned char const*, int);
}

[[link(win, android)]]
class cocos2d::CCScaleBy {
	// CCScaleBy(cocos2d::CCScaleBy const&);
	// CCScaleBy();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCScaleBy* create(float, float);
	static cocos2d::CCScaleBy* create(float, float, float);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCScaleTo {
	// CCScaleTo(cocos2d::CCScaleTo const&);
	// CCScaleTo();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCScaleTo* create(float, float);
	static cocos2d::CCScaleTo* create(float, float, float);
	bool initWithDuration(float, float);
	bool initWithDuration(float, float, float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCScene {
	// CCScene(cocos2d::CCScene const&);
	// CCScene();
	static cocos2d::CCScene* create();
	int getHighestChildZ();
	virtual bool init();
}

[[link(win, android)]]
class cocos2d::CCSceneTransitionDelegate {
	// CCSceneTransitionDelegate(cocos2d::CCSceneTransitionDelegate const&);
	// CCSceneTransitionDelegate();
	virtual void sceneWillResume();
}

[[link(win, android)]]
class cocos2d::CCScheduler {
	// CCScheduler(cocos2d::CCScheduler const&);
	// CCScheduler();
	void appendIn(cocos2d::_listEntry**, cocos2d::CCObject*, bool);
	float getTimeScale();
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
	void setTimeScale(float);
	void unscheduleAll();
	void unscheduleAllForTarget(cocos2d::CCObject*);
	void unscheduleAllWithMinPriority(int);
	void unscheduleScriptEntry(unsigned int);
	void unscheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*);
	void unscheduleUpdateForTarget(cocos2d::CCObject const*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCScriptEngineManager {
	// CCScriptEngineManager();
	cocos2d::CCScriptEngineProtocol* getScriptEngine();
	static void purgeSharedManager();
	void removeScriptEngine();
	void setScriptEngine(cocos2d::CCScriptEngineProtocol*);
	static cocos2d::CCScriptEngineManager* sharedManager();
}

[[link(win, android)]]
class cocos2d::CCScriptEngineProtocol {
	// CCScriptEngineProtocol(cocos2d::CCScriptEngineProtocol const&);
	// CCScriptEngineProtocol();
	virtual int executeEventWithArgs(int, cocos2d::CCArray*);
	virtual cocos2d::ccScriptType getScriptType();
	virtual int reallocateScriptHandler(int);
	virtual void removeScriptHandler(int);
}

[[link(win, android)]]
class cocos2d::CCSequence {
	// CCSequence(cocos2d::CCSequence const&);
	// CCSequence();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCSequence* create(cocos2d::CCArray*);
	// static cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, ...);
	static cocos2d::CCSequence* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);
	// static cocos2d::CCSequence* createWithVariableList(cocos2d::CCFiniteTimeAction*, char*);
	bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void stop();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCSet {
	// CCSet(cocos2d::CCSet const&);
	// CCSet();
	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
	void addObject(cocos2d::CCObject*);
	cocos2d::CCObject* anyObject();
	cocos2d::CCSetIterator begin();
	bool containsObject(cocos2d::CCObject*);
	cocos2d::CCSet* copy();
	int count();
	static cocos2d::CCSet* create();
	cocos2d::CCSetIterator end();
	cocos2d::CCSet* mutableCopy();
	void removeAllObjects();
	void removeObject(cocos2d::CCObject*);
}

[[link(win, android)]]
class cocos2d::CCShaderCache {
	// CCShaderCache(cocos2d::CCShaderCache const&);
	// CCShaderCache();
	void addProgram(cocos2d::CCGLProgram*, char const*);
	bool init();
	void loadDefaultShader(cocos2d::CCGLProgram*, int);
	void loadDefaultShaders();
	cocos2d::CCGLProgram* programForKey(char const*);
	static void purgeSharedShaderCache();
	void reloadDefaultShaders();
	static cocos2d::CCShaderCache* sharedShaderCache();
}

[[link(win, android)]]
class cocos2d::CCShaky3D {
	// CCShaky3D(cocos2d::CCShaky3D const&);
	// CCShaky3D();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCShaky3D* create(float, cocos2d::CCSize const&, int, bool);
	bool initWithDuration(float, cocos2d::CCSize const&, int, bool);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCShakyTiles3D {
	// CCShakyTiles3D(cocos2d::CCShakyTiles3D const&);
	// CCShakyTiles3D();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCShakyTiles3D* create(float, cocos2d::CCSize const&, int, bool);
	virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCShatteredTiles3D {
	// CCShatteredTiles3D(cocos2d::CCShatteredTiles3D const&);
	// CCShatteredTiles3D();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCShatteredTiles3D* create(float, cocos2d::CCSize const&, int, bool);
	virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCShow {
	// CCShow(cocos2d::CCShow const&);
	// CCShow();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCShow* create();
	virtual cocos2d::CCFiniteTimeAction* reverse();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCShuffleTiles {
	// CCShuffleTiles(cocos2d::CCShuffleTiles const&);
	// CCShuffleTiles();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCShuffleTiles* create(float, cocos2d::CCSize const&, unsigned int);
	cocos2d::CCSize getDelta(cocos2d::CCSize const&);
	virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int);
	void placeTile(cocos2d::CCPoint const&, cocos2d::Tile*);
	void shuffle(unsigned int*, unsigned int);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCSize {
	// CCSize(cocos2d::CCSize const&);
	// CCSize(cocos2d::CCPoint const&);
	// CCSize(float, float);
	// CCSize();
	void add(int, float);
	float at(int);
	bool equals(cocos2d::CCSize const&) const;
	void set(int, float);
	void setSize(float, float);
}

[[link(win, android)]]
class cocos2d::CCSkewBy {
	// CCSkewBy(cocos2d::CCSkewBy const&);
	// CCSkewBy();
	static cocos2d::CCSkewBy* create(float, float, float);
	virtual bool initWithDuration(float, float, float);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCSkewTo {
	// CCSkewTo(cocos2d::CCSkewTo const&);
	// CCSkewTo();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCSkewTo* create(float, float, float);
	virtual bool initWithDuration(float, float, float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCSpawn {
	// CCSpawn(cocos2d::CCSpawn const&);
	// CCSpawn();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCSpawn* create(cocos2d::CCArray*);
	// static cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction*, ...);
	static cocos2d::CCSpawn* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);
	// static cocos2d::CCSpawn* createWithVariableList(cocos2d::CCFiniteTimeAction*, char*);
	bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void stop();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCSpeed {
	// CCSpeed(cocos2d::CCSpeed const&);
	// CCSpeed();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCSpeed* create(cocos2d::CCActionInterval*, float);
	cocos2d::CCActionInterval* getInnerAction();
	float getSpeed();
	bool initWithAction(cocos2d::CCActionInterval*, float);
	virtual bool isDone();
	virtual cocos2d::CCActionInterval* reverse();
	void setInnerAction(cocos2d::CCActionInterval*);
	void setSpeed(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void step(float);
	virtual void stop();
}

[[link(win, android)]]
class cocos2d::CCSplitCols {
	// CCSplitCols(cocos2d::CCSplitCols const&);
	// CCSplitCols();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCSplitCols* create(float, unsigned int);
	virtual bool initWithDuration(float, unsigned int);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCSplitRows {
	// CCSplitRows(cocos2d::CCSplitRows const&);
	// CCSplitRows();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCSplitRows* create(float, unsigned int);
	virtual bool initWithDuration(float, unsigned int);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCSprite {
	// CCSprite(cocos2d::CCSprite const&);
	// CCSprite();
	virtual void addChild(cocos2d::CCNode*);
	virtual void addChild(cocos2d::CCNode*, int);
	virtual void addChild(cocos2d::CCNode*, int, int);
	static cocos2d::CCSprite* create(char const*);
	static cocos2d::CCSprite* create(char const*, cocos2d::CCRect const&);
	static cocos2d::CCSprite* create();
	static cocos2d::CCSprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	static cocos2d::CCSprite* createWithSpriteFrameName(char const*);
	static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*);
	static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
	virtual cocos2d::CCSpriteFrame* displayFrame();
	virtual void draw();
	unsigned int getAtlasIndex();
	virtual cocos2d::CCSpriteBatchNode* getBatchNode();
	float getBlVertexMod() const;
	virtual cocos2d::_ccBlendFunc getBlendFunc();
	float getBrVertexMod() const;
	bool getDontDraw() const;
	cocos2d::CCPoint const& getOffsetPosition();
	cocos2d::_ccV3F_C4B_T2F_Quad getQuad();
	virtual cocos2d::CCTexture2D* getTexture();
	cocos2d::CCTextureAtlas* getTextureAtlas();
	cocos2d::CCRect const& getTextureRect();
	float getTlVertexMod() const;
	float getTrVertexMod() const;
	cocos2d::CCPoint const& getUnflippedOffsetPosition();
	bool getUseVertexMod() const;
	virtual void ignoreAnchorPointForPosition(bool);
	virtual bool init();
	virtual bool initWithFile(char const*);
	virtual bool initWithFile(char const*, cocos2d::CCRect const&);
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*);
	virtual bool initWithSpriteFrameName(char const*);
	virtual bool initWithTexture(cocos2d::CCTexture2D*);
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
	virtual bool isDirty();
	bool isFlipX();
	bool isFlipY();
	virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*);
	virtual bool isOpacityModifyRGB();
	bool isTextureRectRotated();
	virtual void refreshTextureRect();
	virtual void removeAllChildrenWithCleanup(bool);
	virtual void removeChild(cocos2d::CCNode*, bool);
	virtual void reorderChild(cocos2d::CCNode*, int);
	virtual void setAnchorPoint(cocos2d::CCPoint const&);
	void setAtlasIndex(unsigned int);
	virtual void setBatchNode(cocos2d::CCSpriteBatchNode*);
	void setBlVertexMod(float);
	virtual void setBlendFunc(cocos2d::_ccBlendFunc);
	void setBrVertexMod(float);
	virtual void setChildColor(cocos2d::_ccColor3B const&);
	virtual void setChildOpacity(unsigned char);
	virtual void setColor(cocos2d::_ccColor3B const&);
	virtual void setDirty(bool);
	virtual void setDirtyRecursively(bool);
	virtual void setDisplayFrame(cocos2d::CCSpriteFrame*);
	virtual void setDisplayFrameWithAnimationName(char const*, int);
	void setDontDraw(bool);
	void setFlipX(bool);
	void setFlipY(bool);
	virtual void setOpacity(unsigned char);
	virtual void setOpacityModifyRGB(bool);
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setReorderChildDirtyRecursively();
	virtual void setRotation(float);
	virtual void setRotationX(float);
	virtual void setRotationY(float);
	virtual void setScale(float);
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setSkewX(float);
	virtual void setSkewY(float);
	virtual void setTexture(cocos2d::CCTexture2D*);
	void setTextureAtlas(cocos2d::CCTextureAtlas*);
	virtual void setTextureCoords(cocos2d::CCRect const&);
	virtual void setTextureRect(cocos2d::CCRect const&);
	virtual void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&);
	void setTlVertexMod(float);
	void setTrVertexMod(float);
	void setUseVertexMod(bool);
	virtual void setVertexRect(cocos2d::CCRect const&);
	virtual void setVertexZ(float);
	virtual void setVisible(bool);
	virtual void sortAllChildren();
	virtual void updateBlendFunc();
	void updateColor();
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&);
	virtual void updateDisplayedOpacity(unsigned char);
	virtual void updateTransform();
}

[[link(win, android)]]
class cocos2d::CCSpriteBatchNode {
	// CCSpriteBatchNode(cocos2d::CCSpriteBatchNode const&);
	// CCSpriteBatchNode();
	virtual void addChild(cocos2d::CCNode*);
	virtual void addChild(cocos2d::CCNode*, int);
	virtual void addChild(cocos2d::CCNode*, int, int);
	cocos2d::CCSpriteBatchNode* addSpriteWithoutQuad(cocos2d::CCSprite*, unsigned int, int);
	void appendChild(cocos2d::CCSprite*);
	unsigned int atlasIndexForChild(cocos2d::CCSprite*, int);
	static cocos2d::CCSpriteBatchNode* create(char const*);
	static cocos2d::CCSpriteBatchNode* create(char const*, unsigned int);
	static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*);
	static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int);
	virtual void draw();
	int getAtlasCapacity();
	virtual cocos2d::_ccBlendFunc getBlendFunc();
	cocos2d::CCArray* getDescendants();
	bool getManualSortChildren() const;
	virtual cocos2d::CCTexture2D* getTexture();
	cocos2d::CCTextureAtlas* getTextureAtlas();
	int getUsedAtlasCapacity();
	unsigned int highestAtlasIndexInChild(cocos2d::CCSprite*);
	void increaseAtlasCapacity(unsigned int);
	void increaseAtlasCapacity();
	virtual bool init();
	bool initWithFile(char const*, unsigned int);
	bool initWithTexture(cocos2d::CCTexture2D*, unsigned int);
	void insertChild(cocos2d::CCSprite*, unsigned int);
	void insertQuadFromSprite(cocos2d::CCSprite*, unsigned int);
	unsigned int lowestAtlasIndexInChild(cocos2d::CCSprite*);
	void manualSortAllChildren();
	unsigned int rebuildIndexInOrder(cocos2d::CCSprite*, unsigned int);
	virtual void removeAllChildrenWithCleanup(bool);
	virtual void removeChild(cocos2d::CCNode*, bool);
	void removeChildAtIndex(unsigned int, bool);
	void removeSpriteFromAtlas(cocos2d::CCSprite*);
	void reorderBatch(bool);
	virtual void reorderChild(cocos2d::CCNode*, int);
	virtual void setBlendFunc(cocos2d::_ccBlendFunc);
	void setManualSortChildren(bool);
	virtual void setTexture(cocos2d::CCTexture2D*);
	void setTextureAtlas(cocos2d::CCTextureAtlas*);
	virtual void sortAllChildren();
	void swap(int, int);
	void updateAtlasIndex(cocos2d::CCSprite*, int*);
	void updateBlendFunc();
	void updateQuadFromSprite(cocos2d::CCSprite*, unsigned int);
	virtual void visit();
}

// [[link(win, android)]]
// class cocos2d::CCSpriteExtra {
// 	// CCSpriteExtra(cocos2d::CCSpriteExtra const&);
// 	// CCSpriteExtra();
// 	float getXOffset() const;
// 	float getYOffset() const;
// 	void setXOffset(float);
// 	void setYOffset(float);
// }

[[link(win, android)]]
class cocos2d::CCSpriteFrame {
	// CCSpriteFrame(cocos2d::CCSpriteFrame const&);
	// CCSpriteFrame();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCSpriteFrame* create(char const*, cocos2d::CCRect const&);
	static cocos2d::CCSpriteFrame* create(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);
	static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
	static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);
	gd::string getFrameName() const;
	cocos2d::CCPoint const& getOffset();
	cocos2d::CCPoint const& getOffsetInPixels();
	cocos2d::CCSize const& getOriginalSize();
	cocos2d::CCSize const& getOriginalSizeInPixels();
	cocos2d::CCRect const& getRect();
	cocos2d::CCRect const& getRectInPixels();
	cocos2d::CCTexture2D* getTexture();
	bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
	bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);
	bool initWithTextureFilename(char const*, cocos2d::CCRect const&);
	bool initWithTextureFilename(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);
	bool isRotated();
	void setFrameName(gd::string);
	void setOffset(cocos2d::CCPoint const&);
	void setOffsetInPixels(cocos2d::CCPoint const&);
	void setOriginalSize(cocos2d::CCSize const&);
	void setOriginalSizeInPixels(cocos2d::CCSize const&);
	void setRect(cocos2d::CCRect const&);
	void setRectInPixels(cocos2d::CCRect const&);
	void setRotated(bool);
	void setTexture(cocos2d::CCTexture2D*);
}

[[link(win, android)]]
class cocos2d::CCSpriteFrameCache {
	// CCSpriteFrameCache();
	// CCSpriteFrameCache(cocos2d::CCSpriteFrameCache const&);
	void addSpriteFrame(cocos2d::CCSpriteFrame*, char const*);
	void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*);
	void addSpriteFramesWithFile(char const*, char const*);
	void addSpriteFramesWithFile(char const*);
	void addSpriteFramesWithFile(char const*, cocos2d::CCTexture2D*);
	bool init();
	static void purgeSharedSpriteFrameCache();
	void removeSpriteFrameByName(char const*);
	void removeSpriteFrames();
	void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*);
	void removeSpriteFramesFromFile(char const*);
	void removeSpriteFramesFromTexture(cocos2d::CCTexture2D*);
	void removeUnusedSpriteFrames();
	static cocos2d::CCSpriteFrameCache* sharedSpriteFrameCache();
	cocos2d::CCSpriteFrame* spriteFrameByName(char const*);
}

[[link(win, android)]]
class cocos2d::CCStandardTouchDelegate {
	// CCStandardTouchDelegate(cocos2d::CCStandardTouchDelegate const&);
	// CCStandardTouchDelegate();
	virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*);
}

[[link(win, android)]]
class cocos2d::CCStandardTouchHandler {
	// CCStandardTouchHandler(cocos2d::CCStandardTouchHandler const&);
	// CCStandardTouchHandler();
	static cocos2d::CCStandardTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int);
	virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int);
}

[[link(win, android)]]
class cocos2d::CCStopGrid {
	// CCStopGrid(cocos2d::CCStopGrid const&);
	// CCStopGrid();
	static cocos2d::CCStopGrid* create();
	virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCString {
	// CCString(cocos2d::CCString const&);
	// CCString(gd::string const&);
	// CCString(char const*);
	// CCString();
	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
	bool boolValue() const;
	int compare(char const*) const;
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	// static cocos2d::CCString* create(gd::string const&);
	static cocos2d::CCString* createWithContentsOfFile(char const*);
	static cocos2d::CCString* createWithData(unsigned char const*, unsigned long);
	// static cocos2d::CCString* createWithFormat(char const*, ...);
	double doubleValue() const;
	float floatValue() const;
	char const* getCString() const;
	// bool initWithFormat(char const*, ...);
	// bool initWithFormatAndValist(char const*, char*);
	int intValue() const;
	virtual bool isEqual(cocos2d::CCObject const*);
	unsigned int length() const;
	unsigned int uintValue() const;
}

[[link(win, android)]]
class cocos2d::CCTMXLayer {
	// CCTMXLayer(cocos2d::CCTMXLayer const&);
	// CCTMXLayer();
	virtual void addChild(cocos2d::CCNode*, int, int);
	cocos2d::CCSprite* appendTileForGID(unsigned int, cocos2d::CCPoint const&);
	unsigned int atlasIndexForExistantZ(unsigned int);
	unsigned int atlasIndexForNewZ(int);
	cocos2d::CCPoint calculateLayerOffset(cocos2d::CCPoint const&);
	static cocos2d::CCTMXLayer* create(cocos2d::CCTMXTilesetInfo*, cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);
	char const* getLayerName();
	unsigned int getLayerOrientation() const;
	cocos2d::CCSize const& getLayerSize() const;
	cocos2d::CCSize const& getMapTileSize() const;
	virtual cocos2d::CCDictionary* getProperties();
	virtual cocos2d::CCTMXTilesetInfo* getTileSet();
	unsigned int* getTiles() const;
	bool initWithTilesetInfo(cocos2d::CCTMXTilesetInfo*, cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);
	cocos2d::CCSprite* insertTileForGID(unsigned int, cocos2d::CCPoint const&);
	void parseInternalProperties();
	cocos2d::CCPoint positionAt(cocos2d::CCPoint const&);
	cocos2d::CCPoint positionForHexAt(cocos2d::CCPoint const&);
	cocos2d::CCPoint positionForIsoAt(cocos2d::CCPoint const&);
	cocos2d::CCPoint positionForOrthoAt(cocos2d::CCPoint const&);
	cocos2d::CCString* propertyNamed(char const*);
	void releaseMap();
	virtual void removeChild(cocos2d::CCNode*, bool);
	void removeTileAt(cocos2d::CCPoint const&);
	cocos2d::CCSprite* reusedTileWithRect(cocos2d::CCRect);
	void setLayerName(char const*);
	void setLayerOrientation(unsigned int);
	void setLayerSize(cocos2d::CCSize const&);
	void setMapTileSize(cocos2d::CCSize const&);
	virtual void setProperties(cocos2d::CCDictionary*);
	void setTileGID(unsigned int, cocos2d::CCPoint const&);
	void setTileGID(unsigned int, cocos2d::CCPoint const&, cocos2d::ccTMXTileFlags_);
	virtual void setTileSet(cocos2d::CCTMXTilesetInfo*);
	void setTiles(unsigned int*);
	void setupTileSprite(cocos2d::CCSprite*, cocos2d::CCPoint, unsigned int);
	void setupTiles();
	cocos2d::CCSprite* tileAt(cocos2d::CCPoint const&);
	unsigned int tileGIDAt(cocos2d::CCPoint const&);
	unsigned int tileGIDAt(cocos2d::CCPoint const&, cocos2d::ccTMXTileFlags_*);
	cocos2d::CCSprite* updateTileForGID(unsigned int, cocos2d::CCPoint const&);
	int vertexZForPos(cocos2d::CCPoint const&);
}

[[link(win, android)]]
class cocos2d::CCTMXLayerInfo {
	// CCTMXLayerInfo(cocos2d::CCTMXLayerInfo const&);
	// CCTMXLayerInfo();
	virtual cocos2d::CCDictionary* getProperties();
	virtual void setProperties(cocos2d::CCDictionary*);
}

[[link(win, android)]]
class cocos2d::CCTMXMapInfo {
	// CCTMXMapInfo(cocos2d::CCTMXMapInfo const&);
	// CCTMXMapInfo();
	virtual void endElement(void*, char const*);
	static cocos2d::CCTMXMapInfo* formatWithTMXFile(char const*);
	static cocos2d::CCTMXMapInfo* formatWithXML(char const*, char const*);
	char const* getCurrentString();
	int getLayerAttribs() const;
	virtual cocos2d::CCArray* getLayers();
	cocos2d::CCSize const& getMapSize() const;
	virtual cocos2d::CCArray* getObjectGroups();
	int getOrientation() const;
	int getParentElement() const;
	unsigned int getParentGID() const;
	virtual cocos2d::CCDictionary* getProperties();
	bool getStoringCharacters() const;
	char const* getTMXFileName();
	cocos2d::CCDictionary* getTileProperties();
	cocos2d::CCSize const& getTileSize() const;
	virtual cocos2d::CCArray* getTilesets();
	bool initWithTMXFile(char const*);
	bool initWithXML(char const*, char const*);
	void internalInit(char const*, char const*);
	bool parseXMLFile(char const*);
	bool parseXMLString(char const*);
	void setCurrentString(char const*);
	void setLayerAttribs(int);
	virtual void setLayers(cocos2d::CCArray*);
	void setMapSize(cocos2d::CCSize const&);
	virtual void setObjectGroups(cocos2d::CCArray*);
	void setOrientation(int);
	void setParentElement(int);
	void setParentGID(unsigned int);
	virtual void setProperties(cocos2d::CCDictionary*);
	void setStoringCharacters(bool);
	void setTMXFileName(char const*);
	void setTileProperties(cocos2d::CCDictionary*);
	void setTileSize(cocos2d::CCSize const&);
	virtual void setTilesets(cocos2d::CCArray*);
	virtual void startElement(void*, char const*, char const**);
	virtual void textHandler(void*, char const*, int);
}

[[link(win, android)]]
class cocos2d::CCTMXObjectGroup {
	// CCTMXObjectGroup(cocos2d::CCTMXObjectGroup const&);
	// CCTMXObjectGroup();
	char const* getGroupName();
	virtual cocos2d::CCArray* getObjects();
	cocos2d::CCPoint const& getPositionOffset() const;
	virtual cocos2d::CCDictionary* getProperties();
	cocos2d::CCDictionary* objectNamed(char const*);
	cocos2d::CCString* propertyNamed(char const*);
	void setGroupName(char const*);
	virtual void setObjects(cocos2d::CCArray*);
	void setPositionOffset(cocos2d::CCPoint const&);
	virtual void setProperties(cocos2d::CCDictionary*);
}

[[link(win, android)]]
class cocos2d::CCTMXTiledMap {
	// CCTMXTiledMap(cocos2d::CCTMXTiledMap const&);
	// CCTMXTiledMap();
	void buildWithMapInfo(cocos2d::CCTMXMapInfo*);
	static cocos2d::CCTMXTiledMap* create(char const*);
	static cocos2d::CCTMXTiledMap* createWithXML(char const*, char const*);
	int getMapOrientation() const;
	cocos2d::CCSize const& getMapSize() const;
	virtual cocos2d::CCArray* getObjectGroups();
	virtual cocos2d::CCDictionary* getProperties();
	cocos2d::CCSize const& getTileSize() const;
	bool initWithTMXFile(char const*);
	bool initWithXML(char const*, char const*);
	cocos2d::CCTMXLayer* layerNamed(char const*);
	cocos2d::CCTMXObjectGroup* objectGroupNamed(char const*);
	cocos2d::CCTMXLayer* parseLayer(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);
	cocos2d::CCDictionary* propertiesForGID(int);
	cocos2d::CCString* propertyNamed(char const*);
	void setMapOrientation(int);
	void setMapSize(cocos2d::CCSize const&);
	virtual void setObjectGroups(cocos2d::CCArray*);
	virtual void setProperties(cocos2d::CCDictionary*);
	void setTileSize(cocos2d::CCSize const&);
	cocos2d::CCTMXTilesetInfo* tilesetForLayer(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);
}

[[link(win, android)]]
class cocos2d::CCTMXTilesetInfo {
	// CCTMXTilesetInfo(cocos2d::CCTMXTilesetInfo const&);
	// CCTMXTilesetInfo();
	cocos2d::CCRect rectForGID(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCTargetedAction {
	// CCTargetedAction(cocos2d::CCTargetedAction const&);
	// CCTargetedAction();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCTargetedAction* create(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*);
	cocos2d::CCNode* getForcedTarget() const;
	bool initWithTarget(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*);
	void setForcedTarget(cocos2d::CCNode*);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void stop();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCTargetedTouchDelegate {
	// CCTargetedTouchDelegate(cocos2d::CCTargetedTouchDelegate const&);
	// CCTargetedTouchDelegate();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
}

[[link(win, android)]]
class cocos2d::CCTargetedTouchHandler {
	// CCTargetedTouchHandler(cocos2d::CCTargetedTouchHandler const&);
	// CCTargetedTouchHandler();
	cocos2d::CCSet* getClaimedTouches();
	static cocos2d::CCTargetedTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int, bool);
	bool initWithDelegate(cocos2d::CCTouchDelegate*, int, bool);
	bool isSwallowsTouches();
	void setSwallowsTouches(bool);
}

[[link(win, android)]]
class cocos2d::CCTextFieldDelegate {
	// CCTextFieldDelegate(cocos2d::CCTextFieldDelegate const&);
	// CCTextFieldDelegate();
	virtual bool onDraw(cocos2d::CCTextFieldTTF*);
	virtual bool onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF*);
	virtual bool onTextFieldDeleteBackward(cocos2d::CCTextFieldTTF*, char const*, int);
	virtual bool onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF*);
	virtual bool onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int, cocos2d::enumKeyCodes);
	virtual void textChanged();
}

[[link(win, android)]]
class cocos2d::CCTextFieldTTF {
	// CCTextFieldTTF(cocos2d::CCTextFieldTTF const&);
	// CCTextFieldTTF();
	virtual bool attachWithIME();
	virtual bool canAttachWithIME();
	virtual bool canDetachWithIME();
	virtual void deleteBackward();
	virtual void deleteForward();
	virtual bool detachWithIME();
	virtual void draw();
	int getCharCount() const;
	virtual cocos2d::_ccColor3B const& getColorSpaceHolder();
	virtual char const* getContentText();
	cocos2d::CCTextFieldDelegate* getDelegate() const;
	virtual char const* getPlaceHolder();
	virtual char const* getString();
	bool initWithPlaceHolder(char const*, char const*, float);
	bool initWithPlaceHolder(char const*, cocos2d::CCSize const&, cocos2d::CCTextAlignment, char const*, float);
	virtual void insertText(char const*, int, cocos2d::enumKeyCodes);
	virtual bool isSecureTextEntry();
	virtual void setColorSpaceHolder(cocos2d::_ccColor3B const&);
	void setDelegate(cocos2d::CCTextFieldDelegate*);
	virtual void setPlaceHolder(char const*);
	virtual void setSecureTextEntry(bool);
	virtual void setString(char const*);
	static cocos2d::CCTextFieldTTF* textFieldWithPlaceHolder(char const*, char const*, float);
	static cocos2d::CCTextFieldTTF* textFieldWithPlaceHolder(char const*, cocos2d::CCSize const&, cocos2d::CCTextAlignment, char const*, float);
}

[[link(win, android)]]
class cocos2d::CCTexture2D {
	// CCTexture2D(cocos2d::CCTexture2D const&);
	// CCTexture2D();
	static void PVRImagesHavePremultipliedAlpha(bool);
	unsigned int bitsPerPixelForFormat(cocos2d::CCTexture2DPixelFormat);
	unsigned int bitsPerPixelForFormat();
	static cocos2d::CCTexture2DPixelFormat defaultAlphaPixelFormat();
	char const* description();
	void drawAtPoint(cocos2d::CCPoint const&);
	void drawInRect(cocos2d::CCRect const&);
	void generateMipmap();
	virtual cocos2d::CCSize getContentSize();
	cocos2d::CCSize const& getContentSizeInPixels();
	virtual float getMaxS();
	virtual float getMaxT();
	virtual unsigned int getName();
	virtual cocos2d::CCTexture2DPixelFormat getPixelFormat();
	virtual unsigned int getPixelsHigh();
	virtual unsigned int getPixelsWide();
	virtual cocos2d::CCGLProgram* getShaderProgram();
	bool hasMipmaps();
	bool hasPremultipliedAlpha();
	bool initPremultipliedATextureWithImage(cocos2d::CCImage*, unsigned int, unsigned int);
	bool initWithData(void const*, cocos2d::CCTexture2DPixelFormat, unsigned int, unsigned int, cocos2d::CCSize const&);
	bool initWithETCFile(char const*);
	bool initWithImage(cocos2d::CCImage*);
	bool initWithPVRFile(char const*);
	bool initWithString(char const*, char const*, float);
	bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment);
	bool initWithString(char const*, cocos2d::_ccFontDefinition*);
	void* keepData(void*, unsigned int);
	void releaseData(void*);
	void releaseGLTexture();
	void setAliasTexParameters();
	void setAntiAliasTexParameters();
	static void setDefaultAlphaPixelFormat(cocos2d::CCTexture2DPixelFormat);
	virtual void setMaxS(float);
	virtual void setMaxT(float);
	virtual void setShaderProgram(cocos2d::CCGLProgram*);
	void setTexParameters(cocos2d::_ccTexParams*);
	char const* stringForFormat();
}

[[link(win, android)]]
class cocos2d::CCTextureAtlas {
	// CCTextureAtlas(cocos2d::CCTextureAtlas const&);
	// CCTextureAtlas();
	static cocos2d::CCTextureAtlas* create(char const*, unsigned int);
	static cocos2d::CCTextureAtlas* createWithTexture(cocos2d::CCTexture2D*, unsigned int);
	char const* description();
	void drawNumberOfQuads(unsigned int);
	void drawNumberOfQuads(unsigned int, unsigned int);
	void drawQuads();
	void fillWithEmptyQuadsFromIndex(unsigned int, unsigned int);
	virtual unsigned int getCapacity();
	virtual cocos2d::_ccV3F_C4B_T2F_Quad* getQuads();
	virtual cocos2d::CCTexture2D* getTexture();
	virtual unsigned int getTotalQuads();
	void increaseTotalQuadsWith(unsigned int);
	bool initWithFile(char const*, unsigned int);
	bool initWithTexture(cocos2d::CCTexture2D*, unsigned int);
	void insertQuad(cocos2d::_ccV3F_C4B_T2F_Quad*, unsigned int);
	void insertQuadFromIndex(unsigned int, unsigned int);
	void insertQuads(cocos2d::_ccV3F_C4B_T2F_Quad*, unsigned int, unsigned int);
	bool isDirty();
	void listenBackToForeground(cocos2d::CCObject*);
	void mapBuffers();
	void moveQuadsFromIndex(unsigned int, unsigned int);
	void moveQuadsFromIndex(unsigned int, unsigned int, unsigned int);
	void removeAllQuads();
	void removeQuadAtIndex(unsigned int);
	void removeQuadsAtIndex(unsigned int, unsigned int);
	bool resizeCapacity(unsigned int);
	void setDirty(bool);
	virtual void setQuads(cocos2d::_ccV3F_C4B_T2F_Quad*);
	virtual void setTexture(cocos2d::CCTexture2D*);
	void setupIndices();
	void setupVBO();
	void updateQuad(cocos2d::_ccV3F_C4B_T2F_Quad*, unsigned int);
}

[[link(win, android)]]
class cocos2d::CCTextureCache {
	// CCTextureCache(cocos2d::CCTextureCache const&);
	// CCTextureCache();
	cocos2d::CCTexture2D* addETCImage(char const*);
	cocos2d::CCTexture2D* addImage(char const*, bool);
	void addImageAsync(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler, int, cocos2d::CCTexture2DPixelFormat);
	void addImageAsyncCallBack(float);
	cocos2d::CCTexture2D* addPVRImage(char const*);
	cocos2d::CCTexture2D* addUIImage(cocos2d::CCImage*, char const*);
	char const* description();
	void dumpCachedTextureInfo();
	void prepareAsyncLoading();
	static void purgeSharedTextureCache();
	static void reloadAllTextures();
	bool reloadTexture(char const*);
	void removeAllTextures();
	void removeTexture(cocos2d::CCTexture2D*);
	void removeTextureForKey(char const*);
	void removeUnusedTextures();
	static cocos2d::CCTextureCache* sharedTextureCache();
	cocos2d::CCDictionary* snapshotTextures();
	cocos2d::CCTexture2D* textureForKey(char const*);
}

[[link(win, android)]]
class cocos2d::CCTextureETC {
	// CCTextureETC(cocos2d::CCTextureETC const&);
	// CCTextureETC();
	unsigned int getHeight() const;
	unsigned int getName() const;
	unsigned int getWidth() const;
	bool initWithFile(char const*);
	bool loadTexture(char const*);
}

[[link(win, android)]]
class cocos2d::CCTextureProtocol {
	// CCTextureProtocol(cocos2d::CCTextureProtocol const&);
	// CCTextureProtocol();
}

[[link(win, android)]]
class cocos2d::CCThread {
	// CCThread();
	void createAutoreleasePool();
}

[[link(win, android)]]
class cocos2d::CCTileMapAtlas {
	// CCTileMapAtlas(cocos2d::CCTileMapAtlas const&);
	// CCTileMapAtlas();
	void calculateItemsToRender();
	static cocos2d::CCTileMapAtlas* create(char const*, char const*, int, int);
	virtual cocos2d::sImageTGA* getTGAInfo();
	bool initWithTileFile(char const*, char const*, int, int);
	void loadTGAfile(char const*);
	void releaseMap();
	virtual void setTGAInfo(cocos2d::sImageTGA*);
	void setTile(cocos2d::_ccColor3B const&, cocos2d::CCPoint const&);
	cocos2d::_ccColor3B tileAt(cocos2d::CCPoint const&);
	void updateAtlasValueAt(cocos2d::CCPoint const&, cocos2d::_ccColor3B const&, unsigned int);
	virtual void updateAtlasValues();
}

[[link(win, android)]]
class cocos2d::CCTiledGrid3D {
	// CCTiledGrid3D(cocos2d::CCTiledGrid3D const&);
	// CCTiledGrid3D();
	virtual void blit();
	virtual void calculateVertexPoints();
	static cocos2d::CCTiledGrid3D* create(cocos2d::CCSize const&);
	static cocos2d::CCTiledGrid3D* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool);
	cocos2d::_ccQuad3 originalTile(cocos2d::CCPoint const&);
	virtual void reuse();
	void setTile(cocos2d::CCPoint const&, cocos2d::_ccQuad3 const&);
	cocos2d::_ccQuad3 tile(cocos2d::CCPoint const&);
}

[[link(win, android)]]
class cocos2d::CCTiledGrid3DAction {
	// CCTiledGrid3DAction(cocos2d::CCTiledGrid3DAction const&);
	// CCTiledGrid3DAction();
	static cocos2d::CCTiledGrid3DAction* create(float, cocos2d::CCSize const&);
	virtual cocos2d::CCGridBase* getGrid();
	cocos2d::_ccQuad3 originalTile(cocos2d::CCPoint const&);
	void setTile(cocos2d::CCPoint const&, cocos2d::_ccQuad3 const&);
	cocos2d::_ccQuad3 tile(cocos2d::CCPoint const&);
}

[[link(win, android)]]
class cocos2d::CCTimer {
	// CCTimer(cocos2d::CCTimer const&);
	// CCTimer();
	float getInterval() const;
	int getScriptHandler();
	SEL_SCHEDULE getSelector() const;
	bool initWithScriptHandler(int, float);
	bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE);
	bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE, float, unsigned int, float);
	void setInterval(float);
	static cocos2d::CCTimer* timerWithScriptHandler(int, float);
	static cocos2d::CCTimer* timerWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE);
	static cocos2d::CCTimer* timerWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE, float);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCTintBy {
	// CCTintBy(cocos2d::CCTintBy const&);
	// CCTintBy();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCTintBy* create(float, short, short, short);
	bool initWithDuration(float, short, short, short);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCTintTo {
	// CCTintTo(cocos2d::CCTintTo const&);
	// CCTintTo();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCTintTo* create(float, unsigned char, unsigned char, unsigned char);
	bool initWithDuration(float, unsigned char, unsigned char, unsigned char);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCToggleVisibility {
	// CCToggleVisibility(cocos2d::CCToggleVisibility const&);
	// CCToggleVisibility();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCToggleVisibility* create();
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCTouch {
	// CCTouch(cocos2d::CCTouch const&);
	// CCTouch();
	cocos2d::CCPoint getDelta() const;
	int getID() const;
	cocos2d::CCPoint getLocation() const;
	cocos2d::CCPoint getLocationInView() const;
	cocos2d::CCPoint getPreviousLocation() const;
	cocos2d::CCPoint getPreviousLocationInView() const;
	cocos2d::CCPoint getStartLocation() const;
	cocos2d::CCPoint getStartLocationInView() const;
	void setTouchInfo(int, float, float);
}

[[link(win, android)]]
class cocos2d::CCTouchDelegate {
	// CCTouchDelegate(cocos2d::CCTouchDelegate const&);
	// CCTouchDelegate();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual int getPreviousPriority();
	virtual void setPreviousPriority(int);
}

[[link(win, android)]]
class cocos2d::CCTouchDispatcher {
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
	int getTargetPrio() const;
	void incrementForcePrio(int);
	bool init();
	bool isDispatchEvents();
	bool isUsingForcePrio();
	void rearrangeHandlers(cocos2d::CCArray*);
	void registerForcePrio(cocos2d::CCObject*, int);
	void removeAllDelegates();
	void removeDelegate(cocos2d::CCTouchDelegate*);
	void setDispatchEvents(bool);
	void setPriority(int, cocos2d::CCTouchDelegate*);
	void touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int);
	virtual void touchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void touchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void touchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void touchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*);
	void unregisterForcePrio(cocos2d::CCObject*);
}

[[link(win, android)]]
class cocos2d::CCTouchHandler {
	// CCTouchHandler(cocos2d::CCTouchHandler const&);
	// CCTouchHandler();
	cocos2d::CCTouchDelegate* getDelegate();
	int getEnabledSelectors();
	int getPriority();
	static cocos2d::CCTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int);
	virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int);
	void setDelegate(cocos2d::CCTouchDelegate*);
	void setEnalbedSelectors(int);
	void setPriority(int);
}

[[link(win, android)]]
class cocos2d::CCTransitionCrossFade {
	// CCTransitionCrossFade(cocos2d::CCTransitionCrossFade const&);
	// CCTransitionCrossFade();
	static cocos2d::CCTransitionCrossFade* create(float, cocos2d::CCScene*);
	virtual void draw();
	virtual void onEnter();
	virtual void onExit();
}

[[link(win, android)]]
class cocos2d::CCTransitionEaseScene {
	// CCTransitionEaseScene(cocos2d::CCTransitionEaseScene const&);
	// CCTransitionEaseScene();
}

[[link(win, android)]]
class cocos2d::CCTransitionFade {
	// CCTransitionFade(cocos2d::CCTransitionFade const&);
	// CCTransitionFade();
	static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&);
	virtual bool initWithDuration(float, cocos2d::CCScene*);
	virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&);
	virtual void onEnter();
	virtual void onExit();
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeBL {
	// CCTransitionFadeBL(cocos2d::CCTransitionFadeBL const&);
	// CCTransitionFadeBL();
	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);
	static cocos2d::CCTransitionFadeBL* create(float, cocos2d::CCScene*);
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeDown {
	// CCTransitionFadeDown(cocos2d::CCTransitionFadeDown const&);
	// CCTransitionFadeDown();
	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);
	static cocos2d::CCTransitionFadeDown* create(float, cocos2d::CCScene*);
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeTR {
	// CCTransitionFadeTR(cocos2d::CCTransitionFadeTR const&);
	// CCTransitionFadeTR();
	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);
	static cocos2d::CCTransitionFadeTR* create(float, cocos2d::CCScene*);
	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
	virtual void onEnter();
	virtual void sceneOrder();
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeUp {
	// CCTransitionFadeUp(cocos2d::CCTransitionFadeUp const&);
	// CCTransitionFadeUp();
	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);
	static cocos2d::CCTransitionFadeUp* create(float, cocos2d::CCScene*);
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipAngular {
	// CCTransitionFlipAngular(cocos2d::CCTransitionFlipAngular const&);
	// CCTransitionFlipAngular();
	static cocos2d::CCTransitionFlipAngular* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);
	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipX {
	// CCTransitionFlipX(cocos2d::CCTransitionFlipX const&);
	// CCTransitionFlipX();
	static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);
	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipY {
	// CCTransitionFlipY(cocos2d::CCTransitionFlipY const&);
	// CCTransitionFlipY();
	static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);
	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionJumpZoom {
	// CCTransitionJumpZoom(cocos2d::CCTransitionJumpZoom const&);
	// CCTransitionJumpZoom();
	static cocos2d::CCTransitionJumpZoom* create(float, cocos2d::CCScene*);
	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInB {
	// CCTransitionMoveInB(cocos2d::CCTransitionMoveInB const&);
	// CCTransitionMoveInB();
	static cocos2d::CCTransitionMoveInB* create(float, cocos2d::CCScene*);
	virtual void initScenes();
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInL {
	// CCTransitionMoveInL(cocos2d::CCTransitionMoveInL const&);
	// CCTransitionMoveInL();
	virtual cocos2d::CCActionInterval* action();
	static cocos2d::CCTransitionMoveInL* create(float, cocos2d::CCScene*);
	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
	virtual void initScenes();
	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInR {
	// CCTransitionMoveInR(cocos2d::CCTransitionMoveInR const&);
	// CCTransitionMoveInR();
	static cocos2d::CCTransitionMoveInR* create(float, cocos2d::CCScene*);
	virtual void initScenes();
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInT {
	// CCTransitionMoveInT(cocos2d::CCTransitionMoveInT const&);
	// CCTransitionMoveInT();
	static cocos2d::CCTransitionMoveInT* create(float, cocos2d::CCScene*);
	virtual void initScenes();
}

[[link(win, android)]]
class cocos2d::CCTransitionPageTurn {
	// CCTransitionPageTurn(cocos2d::CCTransitionPageTurn const&);
	// CCTransitionPageTurn();
	cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);
	static cocos2d::CCTransitionPageTurn* create(float, cocos2d::CCScene*, bool);
	virtual bool initWithDuration(float, cocos2d::CCScene*, bool);
	virtual void onEnter();
	virtual void sceneOrder();
}

[[link(win, android)]]
class cocos2d::CCTransitionProgress {
	// CCTransitionProgress(cocos2d::CCTransitionProgress const&);
	// CCTransitionProgress();
	static cocos2d::CCTransitionProgress* create(float, cocos2d::CCScene*);
	virtual void onEnter();
	virtual void onExit();
	virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
	virtual void sceneOrder();
	virtual void setupTransition();
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressHorizontal {
	// CCTransitionProgressHorizontal(cocos2d::CCTransitionProgressHorizontal const&);
	// CCTransitionProgressHorizontal();
	static cocos2d::CCTransitionProgressHorizontal* create(float, cocos2d::CCScene*);
	virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressInOut {
	// CCTransitionProgressInOut(cocos2d::CCTransitionProgressInOut const&);
	// CCTransitionProgressInOut();
	static cocos2d::CCTransitionProgressInOut* create(float, cocos2d::CCScene*);
	virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
	virtual void sceneOrder();
	virtual void setupTransition();
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressOutIn {
	// CCTransitionProgressOutIn(cocos2d::CCTransitionProgressOutIn const&);
	// CCTransitionProgressOutIn();
	static cocos2d::CCTransitionProgressOutIn* create(float, cocos2d::CCScene*);
	virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCCW {
	// CCTransitionProgressRadialCCW(cocos2d::CCTransitionProgressRadialCCW const&);
	// CCTransitionProgressRadialCCW();
	static cocos2d::CCTransitionProgressRadialCCW* create(float, cocos2d::CCScene*);
	virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCW {
	// CCTransitionProgressRadialCW(cocos2d::CCTransitionProgressRadialCW const&);
	// CCTransitionProgressRadialCW();
	static cocos2d::CCTransitionProgressRadialCW* create(float, cocos2d::CCScene*);
	virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressVertical {
	// CCTransitionProgressVertical(cocos2d::CCTransitionProgressVertical const&);
	// CCTransitionProgressVertical();
	static cocos2d::CCTransitionProgressVertical* create(float, cocos2d::CCScene*);
	virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCTransitionRotoZoom {
	// CCTransitionRotoZoom(cocos2d::CCTransitionRotoZoom const&);
	// CCTransitionRotoZoom();
	static cocos2d::CCTransitionRotoZoom* create(float, cocos2d::CCScene*);
	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionScene {
	// CCTransitionScene(cocos2d::CCTransitionScene const&);
	// CCTransitionScene();
	virtual void cleanup();
	static cocos2d::CCTransitionScene* create(float, cocos2d::CCScene*);
	virtual void draw();
	void finish();
	void hideOutShowIn();
	virtual bool initWithDuration(float, cocos2d::CCScene*);
	virtual void onEnter();
	virtual void onExit();
	virtual void sceneOrder();
	void setNewScene(float);
}

[[link(win, android)]]
class cocos2d::CCTransitionSceneOriented {
	// CCTransitionSceneOriented(cocos2d::CCTransitionSceneOriented const&);
	// CCTransitionSceneOriented();
	static cocos2d::CCTransitionSceneOriented* create(float, cocos2d::CCScene*, cocos2d::tOrientation);
	virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::tOrientation);
}

[[link(win, android)]]
class cocos2d::CCTransitionShrinkGrow {
	// CCTransitionShrinkGrow(cocos2d::CCTransitionShrinkGrow const&);
	// CCTransitionShrinkGrow();
	static cocos2d::CCTransitionShrinkGrow* create(float, cocos2d::CCScene*);
	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInB {
	// CCTransitionSlideInB(cocos2d::CCTransitionSlideInB const&);
	// CCTransitionSlideInB();
	virtual cocos2d::CCActionInterval* action();
	static cocos2d::CCTransitionSlideInB* create(float, cocos2d::CCScene*);
	virtual void initScenes();
	virtual void sceneOrder();
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInL {
	// CCTransitionSlideInL(cocos2d::CCTransitionSlideInL const&);
	// CCTransitionSlideInL();
	virtual cocos2d::CCActionInterval* action();
	static cocos2d::CCTransitionSlideInL* create(float, cocos2d::CCScene*);
	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
	virtual void initScenes();
	virtual void onEnter();
	virtual void sceneOrder();
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInR {
	// CCTransitionSlideInR(cocos2d::CCTransitionSlideInR const&);
	// CCTransitionSlideInR();
	virtual cocos2d::CCActionInterval* action();
	static cocos2d::CCTransitionSlideInR* create(float, cocos2d::CCScene*);
	virtual void initScenes();
	virtual void sceneOrder();
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInT {
	// CCTransitionSlideInT(cocos2d::CCTransitionSlideInT const&);
	// CCTransitionSlideInT();
	virtual cocos2d::CCActionInterval* action();
	static cocos2d::CCTransitionSlideInT* create(float, cocos2d::CCScene*);
	virtual void initScenes();
	virtual void sceneOrder();
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitCols {
	// CCTransitionSplitCols(cocos2d::CCTransitionSplitCols const&);
	// CCTransitionSplitCols();
	virtual cocos2d::CCActionInterval* action();
	static cocos2d::CCTransitionSplitCols* create(float, cocos2d::CCScene*);
	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitRows {
	// CCTransitionSplitRows(cocos2d::CCTransitionSplitRows const&);
	// CCTransitionSplitRows();
	virtual cocos2d::CCActionInterval* action();
	static cocos2d::CCTransitionSplitRows* create(float, cocos2d::CCScene*);
}

[[link(win, android)]]
class cocos2d::CCTransitionTurnOffTiles {
	// CCTransitionTurnOffTiles(cocos2d::CCTransitionTurnOffTiles const&);
	// CCTransitionTurnOffTiles();
	static cocos2d::CCTransitionTurnOffTiles* create(float, cocos2d::CCScene*);
	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
	virtual void onEnter();
	virtual void sceneOrder();
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipAngular {
	// CCTransitionZoomFlipAngular(cocos2d::CCTransitionZoomFlipAngular const&);
	// CCTransitionZoomFlipAngular();
	static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);
	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipX {
	// CCTransitionZoomFlipX(cocos2d::CCTransitionZoomFlipX const&);
	// CCTransitionZoomFlipX();
	static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);
	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipY {
	// CCTransitionZoomFlipY(cocos2d::CCTransitionZoomFlipY const&);
	// CCTransitionZoomFlipY();
	static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);
	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTurnOffTiles {
	// CCTurnOffTiles(cocos2d::CCTurnOffTiles const&);
	// CCTurnOffTiles();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&);
	static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&, unsigned int);
	virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int);
	void shuffle(unsigned int*, unsigned int);
	virtual void startWithTarget(cocos2d::CCNode*);
	void turnOffTile(cocos2d::CCPoint const&);
	void turnOnTile(cocos2d::CCPoint const&);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCTwirl {
	// CCTwirl(cocos2d::CCTwirl const&);
	// CCTwirl();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCTwirl* create(float, cocos2d::CCSize const&, cocos2d::CCPoint, unsigned int, float);
	float getAmplitude();
	float getAmplitudeRate();
	cocos2d::CCPoint const& getPosition();
	bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint, unsigned int, float);
	void setAmplitude(float);
	void setAmplitudeRate(float);
	void setPosition(cocos2d::CCPoint const&);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCUserDefault {
	// CCUserDefault();
	static bool createXMLFile();
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
	static gd::string const& getXMLFilePath();
	static void initXMLFilePath();
	static bool isXMLFileExist();
	static void purgeSharedUserDefault();
	void setBoolForKey(char const*, bool);
	void setDoubleForKey(char const*, double);
	void setFloatForKey(char const*, float);
	void setIntegerForKey(char const*, int);
	void setStringForKey(char const*, gd::string const&);
	static cocos2d::CCUserDefault* sharedUserDefault();
}

[[link(win, android)]]
class cocos2d::CCWaves3D {
	// CCWaves3D(cocos2d::CCWaves3D const&);
	// CCWaves3D();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCWaves3D* create(float, cocos2d::CCSize const&, unsigned int, float);
	float getAmplitude();
	float getAmplitudeRate();
	bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);
	void setAmplitude(float);
	void setAmplitudeRate(float);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCWaves {
	// CCWaves(cocos2d::CCWaves const&);
	// CCWaves();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCWaves* create(float, cocos2d::CCSize const&, unsigned int, float, bool, bool);
	float getAmplitude();
	float getAmplitudeRate();
	bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float, bool, bool);
	void setAmplitude(float);
	void setAmplitudeRate(float);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCWavesTiles3D {
	// CCWavesTiles3D(cocos2d::CCWavesTiles3D const&);
	// CCWavesTiles3D();
	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	static cocos2d::CCWavesTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float);
	float getAmplitude();
	float getAmplitudeRate();
	virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);
	void setAmplitude(float);
	void setAmplitudeRate(float);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCZone {
	// CCZone(cocos2d::CCObject*);
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
	gd::vector<gd::string> getAllKeys();
	cocos2d::CCArray* getArrayForKey(char const*, bool);
	bool getBoolForKey(char const*);
	cocos2d::CCDictionary* getDictForKey(char const*, bool);
	float getFloatForKey(char const*);
	unsigned int getIndexOfKey(char const*);
	unsigned int getIndexOfKeyWithClosestAlphaNumericalMatch(char const*);
	int getIntegerForKey(char const*);
	gd::string getKey(unsigned int);
	unsigned int getNumKeys();
	cocos2d::CCObject* getObjectForKey(char const*);
	gd::vector<cocos2d::CCRect> getRectArrayForKey(char const*);
	cocos2d::CCRect getRectForKey(char const*);
	gd::vector<gd::string> getStringArrayForKey(char const*);
	gd::string getStringForKey(char const*);
	gd::vector<cocos2d::CCPoint> getVec2ArrayForKey(char const*);
	cocos2d::CCPoint getVec2ForKey(char const*);
	bool loadRootSubDictFromCompressedFile(char const*);
	bool loadRootSubDictFromFile(char const*);
	bool loadRootSubDictFromString(gd::string const&);
	bool rectFromString(gd::string const&, cocos2d::CCRect&);
	void removeAllKeys();
	void removeKey(unsigned int);
	void removeKey(char const*);
	bool saveRootSubDictToCompressedFile(char const*);
	bool saveRootSubDictToFile(char const*);
	gd::string saveRootSubDictToString();
	void setArrayForKey(char const*, cocos2d::CCArray*);
	void setBoolForKey(char const*, bool, bool);
	void setBoolForKey(char const*, bool);
	void setBoolMapForKey(char const*, gd::map<gd::string, bool>&);
	void setDictForKey(char const*, cocos2d::CCDictionary*);
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
	bool stepIntoSubDictWithKey(char const*);
	void stepOutOfSubDict();
	bool vec2FromString(gd::string const&, cocos2d::CCPoint&);
}

[[link(win, android)]]
class cocos2d::EGLTouchDelegate {
	// EGLTouchDelegate(cocos2d::EGLTouchDelegate const&);
	// EGLTouchDelegate();
}

[[link(win, android)]]
class ObjectDecoder {
	// ObjectDecoder(ObjectDecoder const&);
	// ObjectDecoder();
	cocos2d::CCObject* getDecodedObject(int, DS_Dictionary*);
	ObjectDecoderDelegate* getDelegate() const;
	virtual bool init();
	void setDelegate(ObjectDecoderDelegate*);
	static ObjectDecoder* sharedDecoder();
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
	// static void CCLog(char const*, ...);
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
	static void ccDrawSolidRect(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::_ccColor4F);
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
	// static char* cc_utf16_to_utf8(unsigned short const*, int*);
	static gd::vector<unsigned short> cc_utf16_vec_from_utf16_str(unsigned short const*);
	// static unsigned int cc_utf8_find_last_not_char(gd::vector<unsigned short> const&, unsigned short);
	// static long cc_utf8_strlen(char const*);
	// static unsigned short* cc_utf8_to_utf16(char const*, int*);
	static void cc_utf8_trim_ws(gd::vector<unsigned short>*);
	static int cc_wcslen(unsigned short const*);
	static float ccpAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	static float ccpAngleSigned(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	static cocos2d::CCPoint ccpClamp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	static cocos2d::CCPoint ccpCompMult(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	// static cocos2d::CCPoint ccpCompOp(cocos2d::CCPoint const&, float (__cdecl*)(float));
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
class cocos2d::ZipUtils {
	static gd::string base64DecodeEnc(gd::string const&, gd::string);
	static gd::string base64EncodeEnc(gd::string const&, gd::string);
	static gd::string base64URLDecode(gd::string const&);
	static gd::string base64URLEncode(gd::string const&);
	static unsigned int ccChecksumPvr(unsigned int const*, int);
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
class cocos2d::CCDevice {
	static int getDPI();
}

[[link(win, android)]]
class cocos2d::CCTime {
	static int gettimeofdayCocos2d(cocos2d::cc_timeval*, void*);
	static double timersubCocos2d(cocos2d::cc_timeval*, cocos2d::cc_timeval*);
}
