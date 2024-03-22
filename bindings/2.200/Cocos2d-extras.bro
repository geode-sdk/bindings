// clang-format off

[[link(win, android)]]
class cocos2d::CCAccelAmplitude {
	static cocos2d::CCAccelAmplitude* create(cocos2d::CCAction*, float);

	bool initWithAction(cocos2d::CCAction*, float);

	float getRate();

	void setRate(float);

	// CCAccelAmplitude(cocos2d::CCAccelAmplitude const&);
	// CCAccelAmplitude();

	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCAccelDeccelAmplitude {
	static cocos2d::CCAccelDeccelAmplitude* create(cocos2d::CCAction*, float);

	bool initWithAction(cocos2d::CCAction*, float);

	float getRate();

	void setRate(float);

	// CCAccelDeccelAmplitude(cocos2d::CCAccelDeccelAmplitude const&);
	// CCAccelDeccelAmplitude();

	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual cocos2d::CCActionInterval* reverse();
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
	static cocos2d::CCAction* create();

	cocos2d::CCNode* getOriginalTarget();
	float getSpeedMod() const;
	int getTag();
	cocos2d::CCNode* getTarget();

	void setOriginalTarget(cocos2d::CCNode*);
	void setSpeedMod(float);
	void setTarget(cocos2d::CCNode*);

	// CCAction(cocos2d::CCAction const&);
	// CCAction();
	char const* description();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void setTag(int);
	virtual bool isDone();
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void stop();
	virtual void step(float);
}

[[link(win, android)]]
class cocos2d::CCActionCamera {
	// CCActionCamera(cocos2d::CCActionCamera const&);
	// CCActionCamera();

	virtual void startWithTarget(cocos2d::CCNode*);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCActionEase {
	static cocos2d::CCActionEase* create(cocos2d::CCActionInterval*);

	bool initWithAction(cocos2d::CCActionInterval*);

	// CCActionEase(cocos2d::CCActionEase const&);
	// CCActionEase();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void stop();
	virtual cocos2d::CCActionInterval* reverse();
	virtual cocos2d::CCActionInterval* getInnerAction();
}

[[link(win, android)]]
class cocos2d::CCActionInstant {
	// CCActionInstant(cocos2d::CCActionInstant const&);
	// CCActionInstant();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual bool isDone();
	virtual void step(float);
	virtual cocos2d::CCFiniteTimeAction* reverse();
}

[[link(win, android)]]
class cocos2d::CCActionInterval {
	static cocos2d::CCActionInterval* create(float);

	bool initWithDuration(float);

	float getAmplitudeRate();
	float getElapsed();
	bool getM_bFirstTick() const;

	void setAmplitudeRate(float);

	// CCActionInterval(cocos2d::CCActionInterval const&);
	// CCActionInterval();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual bool isDone();
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void step(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCActionManager {
	cocos2d::CCAction* getActionByTag(unsigned int, cocos2d::CCObject*);

	// CCActionManager(cocos2d::CCActionManager const&);
	// CCActionManager();
	void actionAllocWithHashElement(cocos2d::_hashElement*);
	void addAction(cocos2d::CCAction*, cocos2d::CCNode*, bool);
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
class cocos2d::CCActionTween {
	static cocos2d::CCActionTween* create(float, int, float, float);
	static cocos2d::CCActionTween* create(float, char const*, float, float);

	bool initWithDuration(float, char const*, float, float);

	// CCActionTween(cocos2d::CCActionTween const&);
	// CCActionTween();
	void updateTargetValue(float);

	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCActionTweenDelegate {
	// CCActionTweenDelegate(cocos2d::CCActionTweenDelegate const&);
	// CCActionTweenDelegate();
}

[[link(win, android)]]
class cocos2d::CCAnimate {
	static cocos2d::CCAnimate* create(cocos2d::CCAnimation*);

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
	static cocos2d::CCAnimation* create(cocos2d::CCArray*, float);
	static cocos2d::CCAnimation* create(cocos2d::CCArray*, float, unsigned int);
	static cocos2d::CCAnimation* create();
	static cocos2d::CCAnimation* createWithSpriteFrames(cocos2d::CCArray*, float);

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
class cocos2d::CCAnimationCache {
	static void purgeSharedAnimationCache();
	static cocos2d::CCAnimationCache* sharedAnimationCache();

	bool init();

	// CCAnimationCache(cocos2d::CCAnimationCache const&);
	// CCAnimationCache();
	void addAnimation(cocos2d::CCAnimation*, char const*);
	void addAnimationsWithDictionary(cocos2d::CCDictionary*, char const*);
	void addAnimationsWithFile(char const*);
	cocos2d::CCAnimation* animationByName(char const*);
	void parseVersion1(cocos2d::CCDictionary*);
	void parseVersion2(cocos2d::CCDictionary*);
	void removeAnimationByName(char const*);
}

[[link(win, android)]]
class cocos2d::CCAnimationFrame {
	bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, float, cocos2d::CCDictionary*);

	float getDelayUnits() const;
	cocos2d::CCSpriteFrame* getSpriteFrame() const;
	cocos2d::CCDictionary* getUserInfo() const;

	void setDelayUnits(float);
	void setSpriteFrame(cocos2d::CCSpriteFrame*);
	void setUserInfo(cocos2d::CCDictionary*);

	// CCAnimationFrame(cocos2d::CCAnimationFrame const&);
	// CCAnimationFrame();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
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
	virtual void trySaveGame(bool);
	virtual void gameDidSave();
	virtual void openURL(char const*);
}

[[link(win, android)]]
class cocos2d::CCAtlasNode {
	static cocos2d::CCAtlasNode* create(char const*, unsigned int, unsigned int, unsigned int);

	bool initWithTexture(cocos2d::CCTexture2D*, unsigned int, unsigned int, unsigned int);
	bool initWithTileFile(char const*, unsigned int, unsigned int, unsigned int);

	void setIgnoreContentScaleFactor(bool);

	// CCAtlasNode(cocos2d::CCAtlasNode const&);
	// CCAtlasNode();
	void calculateMaxItems();
	void updateBlendFunc();
	void updateOpacityModifyRGB();

	virtual void draw();
	virtual cocos2d::CCTextureAtlas* getTextureAtlas();
	virtual void setTextureAtlas(cocos2d::CCTextureAtlas*);
	virtual unsigned int getQuadsToDraw();
	virtual void setQuadsToDraw(unsigned int);
	virtual void updateAtlasValues();

	virtual void setColor(cocos2d::_ccColor3B const&);
	virtual cocos2d::_ccColor3B const& getColor();
	virtual void setOpacity(unsigned char);
	virtual void setOpacityModifyRGB(bool);
	virtual bool isOpacityModifyRGB();

	virtual void setBlendFunc(cocos2d::_ccBlendFunc);
	virtual cocos2d::_ccBlendFunc getBlendFunc();
	virtual cocos2d::CCTexture2D* getTexture();
	virtual void setTexture(cocos2d::CCTexture2D*);
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
	static cocos2d::CCBMFontConfiguration* create(char const*);

	bool initWithFNTfile(char const*);

	char const* getAtlasName();
	gd::set<unsigned int>* getCharacterSet() const;

	void setAtlasName(char const*);

	// CCBMFontConfiguration(cocos2d::CCBMFontConfiguration const&);
	// CCBMFontConfiguration();
	char const* description();
	void parseCharacterDefinition(gd::string, cocos2d::_BMFontDef*);
	void parseCommonArguments(gd::string);
	gd::set<unsigned int>* parseConfigFile(char const*);
	void parseImageFileName(gd::string, char const*);
	void parseInfoArguments(gd::string);
	void parseKerningEntry(gd::string);
	void purgeFontDefDictionary();
	void purgeKerningDictionary();
}

[[link(win, android)]]
class cocos2d::CCBezierBy {
	static cocos2d::CCBezierBy* create(float, cocos2d::_ccBezierConfig const&);

	bool initWithDuration(float, cocos2d::_ccBezierConfig const&);

	// CCBezierBy(cocos2d::CCBezierBy const&);
	// CCBezierBy();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCBezierTo {
	static cocos2d::CCBezierTo* create(float, cocos2d::_ccBezierConfig const&);

	bool initWithDuration(float, cocos2d::_ccBezierConfig const&);

	// CCBezierTo(cocos2d::CCBezierTo const&);
	// CCBezierTo();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCBlendProtocol {
	// CCBlendProtocol(cocos2d::CCBlendProtocol const&);
	// CCBlendProtocol();
}

[[link(win, android)]]
class cocos2d::CCBlink {
	static cocos2d::CCBlink* create(float, unsigned int);

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
class cocos2d::CCBool {
	static cocos2d::CCBool* create(bool);

	bool getValue() const;

	void setValue(bool);

	// CCBool(cocos2d::CCBool const&);
	// CCBool(bool);

	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
}

[[link(win, android)]]
class cocos2d::CCCallFunc {
	static cocos2d::CCCallFunc* create(int);
	static cocos2d::CCCallFunc* create(cocos2d::CCObject*, cocos2d::SEL_CallFunc);

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
class cocos2d::CCCallFuncN {
	static cocos2d::CCCallFuncN* create(int);
	static cocos2d::CCCallFuncN* create(cocos2d::CCObject*, cocos2d::SEL_CallFuncN);

	bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncN);

	// CCCallFuncN(cocos2d::CCCallFuncN const&);
	// CCCallFuncN();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void execute();
}

[[link(win, android)]]
class cocos2d::CCCallFuncND {
	static cocos2d::CCCallFuncND* create(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*);

	bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*);

	// CCCallFuncND(cocos2d::CCCallFuncND const&);
	// CCCallFuncND();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void execute();
}

[[link(win, android)]]
class cocos2d::CCCallFuncO {
	static cocos2d::CCCallFuncO* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*);

	bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*);

	cocos2d::CCObject* getObject();

	void setObject(cocos2d::CCObject*);

	// CCCallFuncO(cocos2d::CCCallFuncO const&);
	// CCCallFuncO();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void execute();
}

[[link(win, android)]]
class cocos2d::CCCamera {
	static float getZEye();

	void init();

	void getCenterXYZ(float*, float*, float*);
	void getEyeXYZ(float*, float*, float*);
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
class cocos2d::CCCardinalSplineBy {
	static cocos2d::CCCardinalSplineBy* create(float, cocos2d::CCPointArray*, float);

	// CCCardinalSplineBy(cocos2d::CCCardinalSplineBy const&);
	// CCCardinalSplineBy();

	virtual void startWithTarget(cocos2d::CCNode*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void updatePosition(cocos2d::CCPoint&);
}

[[link(win, android)]]
class cocos2d::CCCardinalSplineTo {
	static cocos2d::CCCardinalSplineTo* create(float, cocos2d::CCPointArray*, float);

	bool initWithDuration(float, cocos2d::CCPointArray*, float);

	cocos2d::CCPointArray* getPoints();

	void setPoints(cocos2d::CCPointArray*);

	// CCCardinalSplineTo(cocos2d::CCCardinalSplineTo const&);
	// CCCardinalSplineTo();

	virtual cocos2d::CCCardinalSplineTo* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual void updatePosition(cocos2d::CCPoint&);
}

[[link(win, android)]]
class cocos2d::CCCatmullRomBy {
	static cocos2d::CCCatmullRomBy* create(float, cocos2d::CCPointArray*);

	bool initWithDuration(float, cocos2d::CCPointArray*);

	// CCCatmullRomBy(cocos2d::CCCatmullRomBy const&);
	// CCCatmullRomBy();
}

[[link(win, android)]]
class cocos2d::CCCatmullRomTo {
	static cocos2d::CCCatmullRomTo* create(float, cocos2d::CCPointArray*);

	bool initWithDuration(float, cocos2d::CCPointArray*);

	// CCCatmullRomTo(cocos2d::CCCatmullRomTo const&);
	// CCCatmullRomTo();
}

[[link(win, android)]]
class cocos2d::CCClippingNode {
	static cocos2d::CCClippingNode* create(cocos2d::CCNode*);
	static cocos2d::CCClippingNode* create();

	float getAlphaThreshold() const;
	cocos2d::CCNode* getStencil() const;

	void setAlphaThreshold(float);
	void setInverted(bool);
	void setStencil(cocos2d::CCNode*);

	// CCClippingNode();
	// CCClippingNode(cocos2d::CCClippingNode const&);
	bool isInverted() const;

	virtual bool init();
	virtual void onEnter();
	virtual void onEnterTransitionDidFinish();
	virtual void onExit();
	virtual void onExitTransitionDidStart();
	virtual void visit();
	virtual bool init(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCComponent {
	static cocos2d::CCComponent* create();

	char const* getName() const;
	cocos2d::CCNode* getOwner() const;

	void setName(char const*);
	void setOwner(cocos2d::CCNode*);

	// CCComponent();
	// CCComponent(cocos2d::CCComponent const&);

	virtual bool isEnabled() const;
	virtual void update(float);
	virtual bool init();
	virtual void onEnter();
	virtual void onExit();
	virtual bool serialize(void*);
	virtual void setEnabled(bool);
}

[[link(win, android)]]
class cocos2d::CCComponentContainer {
	// CCComponentContainer(cocos2d::CCNode*);
	// CCComponentContainer(cocos2d::CCComponentContainer const&);
	void alloc();
	bool isEmpty() const;

	virtual cocos2d::CCComponent* get(char const*) const;
	virtual bool add(cocos2d::CCComponent*);
	virtual bool remove(char const*);
	virtual bool remove(cocos2d::CCComponent*);
	virtual void removeAll();
	virtual void visit(float);
}

[[link(win, android)]]
class cocos2d::CCConfiguration {
	static void purgeConfiguration();
	static cocos2d::CCConfiguration* sharedConfiguration();

	bool init();

	bool getBool(char const*, bool) const;
	char const* getCString(char const*, char const*) const;
	int getMaxModelviewStackDepth() const;
	int getMaxTextureSize() const;
	int getMaxTextureUnits() const;
	double getNumber(char const*, double) const;
	cocos2d::CCObject* getObject(char const*) const;

	void setObject(char const*, cocos2d::CCObject*);

	// CCConfiguration();
	// CCConfiguration(cocos2d::CCConfiguration const&);
	bool checkForGLExtension(gd::string const&) const;
	void dumpInfo() const;
	void gatherGPUInfo();
	void loadConfigFile(char const*);
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

	virtual void visit(cocos2d::CCBool const*);
	virtual void visit(cocos2d::CCInteger const*);
	virtual void visit(cocos2d::CCFloat const*);
	virtual void visit(cocos2d::CCDouble const*);
	virtual void visit(cocos2d::CCString const*);
	virtual void visit(cocos2d::CCArray const*);
	virtual void visit(cocos2d::CCDictionary const*);
	virtual void visit(cocos2d::CCSet const*);
}

[[link(win, android)]]
class cocos2d::CCDeccelAmplitude {
	static cocos2d::CCDeccelAmplitude* create(cocos2d::CCAction*, float);

	bool initWithAction(cocos2d::CCAction*, float);

	float getRate();

	void setRate(float);

	// CCDeccelAmplitude(cocos2d::CCDeccelAmplitude const&);
	// CCDeccelAmplitude();

	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual cocos2d::CCActionInterval* reverse();
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
class cocos2d::CCDictElement {
	// CCDictElement(int, cocos2d::CCObject*);
	// CCDictElement(char const*, cocos2d::CCObject*);
	int getIntKey() const;
	cocos2d::CCObject* getObject() const;
	char const* getStrKey() const;
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
	float getScaleX() const;
	float getScaleY() const;
	void getSetOfTouchesEndOrCancel(cocos2d::CCSet&, int, int* const, float* const, float* const);
	char const* getViewName();
	cocos2d::CCRect const& getViewPortRect() const;

	// CCEGLViewProtocol(cocos2d::CCEGLViewProtocol const&);
	// CCEGLViewProtocol();
	void handleTouchesBegin(int, int* const, float* const, float* const);
	void handleTouchesCancel(int, int* const, float* const, float* const);
	void handleTouchesEnd(int, int* const, float* const, float* const);
	void handleTouchesMove(int, int* const, float* const, float* const);
	void updateDesignResolutionSize();

	virtual void setFrameSize(float, float);
	virtual void setDesignResolutionSize(float, float, ResolutionPolicy);
	virtual void setTouchDelegate(cocos2d::EGLTouchDelegate*);
	virtual void setViewPortInPoints(float, float, float, float);
	virtual void setScissorInPoints(float, float, float, float);
	virtual bool isScissorEnabled();
	virtual cocos2d::CCRect getScissorRect();
	virtual void setViewName(char const*);
	virtual void pollInputEvents();
	virtual cocos2d::CCSize const& getDesignResolutionSize() const;
	virtual cocos2d::CCSize const& getFrameSize() const;
	virtual cocos2d::CCPoint getVisibleOrigin() const;
	virtual cocos2d::CCSize getVisibleSize() const;
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
class cocos2d::CCEaseBackInOut {
	static cocos2d::CCEaseBackInOut* create(cocos2d::CCActionInterval*);

	// CCEaseBackInOut(cocos2d::CCEaseBackInOut const&);
	// CCEaseBackInOut();

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
class cocos2d::CCEaseBounce {
	static cocos2d::CCEaseBounce* create(cocos2d::CCActionInterval*);

	// CCEaseBounce(cocos2d::CCEaseBounce const&);
	// CCEaseBounce();
	float bounceTime(float);

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBounceIn {
	static cocos2d::CCEaseBounceIn* create(cocos2d::CCActionInterval*);

	// CCEaseBounceIn(cocos2d::CCEaseBounceIn const&);
	// CCEaseBounceIn();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBounceInOut {
	static cocos2d::CCEaseBounceInOut* create(cocos2d::CCActionInterval*);

	// CCEaseBounceInOut(cocos2d::CCEaseBounceInOut const&);
	// CCEaseBounceInOut();

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
class cocos2d::CCEaseElastic {
	static cocos2d::CCEaseElastic* create(cocos2d::CCActionInterval*);
	static cocos2d::CCEaseElastic* create(cocos2d::CCActionInterval*, float);

	bool initWithAction(cocos2d::CCActionInterval*, float);

	float getPeriod();

	void setPeriod(float);

	// CCEaseElastic(cocos2d::CCEaseElastic const&);
	// CCEaseElastic();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
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
class cocos2d::CCEaseElasticInOut {
	static cocos2d::CCEaseElasticInOut* create(cocos2d::CCActionInterval*);
	static cocos2d::CCEaseElasticInOut* create(cocos2d::CCActionInterval*, float);

	// CCEaseElasticInOut(cocos2d::CCEaseElasticInOut const&);
	// CCEaseElasticInOut();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseElasticOut {
	static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*);
	static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*, float) = mac 0x4EE060;

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
class cocos2d::CCEaseIn {
	static cocos2d::CCEaseIn* create(cocos2d::CCActionInterval*, float);

	// CCEaseIn(cocos2d::CCEaseIn const&);
	// CCEaseIn();

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
class cocos2d::CCEaseOut {
	static cocos2d::CCEaseOut* create(cocos2d::CCActionInterval*, float);

	// CCEaseOut(cocos2d::CCEaseOut const&);
	// CCEaseOut();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseRateAction {
	static cocos2d::CCEaseRateAction* create(cocos2d::CCActionInterval*, float);

	bool initWithAction(cocos2d::CCActionInterval*, float);

	float getRate();

	void setRate(float);

	// CCEaseRateAction(cocos2d::CCEaseRateAction const&);
	// CCEaseRateAction();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
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
class cocos2d::CCEvent {
	// CCEvent(cocos2d::CCEvent const&);
	// CCEvent();
}

[[link(win, android)]]
class cocos2d::CCFadeOutBLTiles {
	static cocos2d::CCFadeOutBLTiles* create(float, cocos2d::CCSize const&);

	// CCFadeOutBLTiles(cocos2d::CCFadeOutBLTiles const&);
	// CCFadeOutBLTiles();

	virtual float testFunc(cocos2d::CCSize const&, float);
}

[[link(win, android)]]
class cocos2d::CCFadeOutDownTiles {
	static cocos2d::CCFadeOutDownTiles* create(float, cocos2d::CCSize const&);

	// CCFadeOutDownTiles(cocos2d::CCFadeOutDownTiles const&);
	// CCFadeOutDownTiles();

	virtual float testFunc(cocos2d::CCSize const&, float);
}

[[link(win, android)]]
class cocos2d::CCFadeOutTRTiles {
	static cocos2d::CCFadeOutTRTiles* create(float, cocos2d::CCSize const&);

	// CCFadeOutTRTiles(cocos2d::CCFadeOutTRTiles const&);
	// CCFadeOutTRTiles();
	void turnOffTile(cocos2d::CCPoint const&);
	void turnOnTile(cocos2d::CCPoint const&);

	virtual void update(float);
	virtual float testFunc(cocos2d::CCSize const&, float);
	virtual void transformTile(cocos2d::CCPoint const&, float);
}

[[link(win, android)]]
class cocos2d::CCFadeOutUpTiles {
	static cocos2d::CCFadeOutUpTiles* create(float, cocos2d::CCSize const&);

	// CCFadeOutUpTiles(cocos2d::CCFadeOutUpTiles const&);
	// CCFadeOutUpTiles();

	virtual float testFunc(cocos2d::CCSize const&, float);
	virtual void transformTile(cocos2d::CCPoint const&, float);
}

[[link(win, android)]]
class cocos2d::CCFadeTo {
	static cocos2d::CCFadeTo* create(float, unsigned char);

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
	float getDuration();

	void setDuration(float);

	// CCFiniteTimeAction(cocos2d::CCFiniteTimeAction const&);
	// CCFiniteTimeAction();

	virtual cocos2d::CCFiniteTimeAction* reverse();
}

[[link(win, android)]]
class cocos2d::CCFlipX3D {
	static cocos2d::CCFlipX3D* create(float);

	// CCFlipX3D(cocos2d::CCFlipX3D const&);
	// CCFlipX3D();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual bool initWithDuration(float);
	virtual bool initWithSize(cocos2d::CCSize const&, float);
}

[[link(win, android)]]
class cocos2d::CCFlipX {
	static cocos2d::CCFlipX* create(bool);

	bool initWithFlipX(bool);

	// CCFlipX(cocos2d::CCFlipX const&);
	// CCFlipX();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCFiniteTimeAction* reverse();
}

[[link(win, android)]]
class cocos2d::CCFlipY3D {
	static cocos2d::CCFlipY3D* create(float);

	// CCFlipY3D(cocos2d::CCFlipY3D const&);
	// CCFlipY3D();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCFlipY {
	static cocos2d::CCFlipY* create(bool);

	bool initWithFlipY(bool);

	// CCFlipY(cocos2d::CCFlipY const&);
	// CCFlipY();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCFiniteTimeAction* reverse();
}

[[link(win, android)]]
class cocos2d::CCFloat {
	static cocos2d::CCFloat* create(float);

	float getValue() const;

	// CCFloat(cocos2d::CCFloat const&);
	// CCFloat(float);

	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
}

[[link(win, android)]]
class cocos2d::CCFollow {
	static cocos2d::CCFollow* create(cocos2d::CCNode*, cocos2d::CCRect const&);

	bool initWithTarget(cocos2d::CCNode*, cocos2d::CCRect const&);

	void setBoudarySet(bool);

	// CCFollow(cocos2d::CCFollow const&);
	// CCFollow();
	bool isBoundarySet();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual bool isDone();
	virtual void stop();
	virtual void step(float);
}

[[link(win, android)]]
class cocos2d::CCFontSprite {
	// CCFontSprite(cocos2d::CCFontSprite const&);
	// CCFontSprite();
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
	void setUniformsForBuiltins();

	// CCGLProgram(cocos2d::CCGLProgram const&);
	// CCGLProgram();
	void addAttribute(char const*, unsigned int);
	bool compileShader(unsigned int*, unsigned int, char const*);
	char const* description();
	char const* fragmentShaderLog();
	bool link();
	// char const* logForOpenGLObject(unsigned int, void (__cdecl*)(unsigned int, unsigned int, int*), void (__cdecl*)(unsigned int, int, int*, char*));
	char const* programLog();
	void reset();
	bool updateUniformLocation(int, void*, unsigned int);
	void updateUniforms();
	void use();
	char const* vertexShaderLog();
}

[[link(win, android)]]
class cocos2d::CCGrid3D {
	static cocos2d::CCGrid3D* create(cocos2d::CCSize const&);
	static cocos2d::CCGrid3D* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool);

	void setVertex(cocos2d::CCPoint const&, cocos2d::_ccVertex3F const&);

	// CCGrid3D(cocos2d::CCGrid3D const&);
	// CCGrid3D();
	cocos2d::_ccVertex3F originalVertex(cocos2d::CCPoint const&);
	cocos2d::_ccVertex3F vertex(cocos2d::CCPoint const&);

	virtual void blit();
	virtual void reuse();
	virtual void calculateVertexPoints();
}

[[link(win, android)]]
class cocos2d::CCGrid3DAction {
	void setVertex(cocos2d::CCPoint const&, cocos2d::_ccVertex3F const&);

	// CCGrid3DAction(cocos2d::CCGrid3DAction const&);
	// CCGrid3DAction();
	cocos2d::_ccVertex3F originalVertex(cocos2d::CCPoint const&);
	cocos2d::_ccVertex3F vertex(cocos2d::CCPoint const&);

	virtual cocos2d::CCGridBase* getGrid();
}

[[link(win, android)]]
class cocos2d::CCGridAction {
	static cocos2d::CCGridAction* create(float, cocos2d::CCSize const&);

	// CCGridAction(cocos2d::CCGridAction const&);
	// CCGridAction();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual bool initWithDuration(float, cocos2d::CCSize const&);
	virtual cocos2d::CCGridBase* getGrid();
}

[[link(win, android)]]
class cocos2d::CCGridBase {
	static cocos2d::CCGridBase* create(cocos2d::CCSize const&);
	static cocos2d::CCGridBase* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool);

	bool initWithSize(cocos2d::CCSize const&);
	bool initWithSize(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool);

	cocos2d::CCSize const& getGridSize();
	int getReuseGrid();
	cocos2d::CCPoint const& getStep();

	void setActive(bool);
	void setGridSize(cocos2d::CCSize const&);
	void setReuseGrid(int);
	void setStep(cocos2d::CCPoint const&);
	void setTextureFlipped(bool);

	// CCGridBase(cocos2d::CCGridBase const&);
	// CCGridBase();
	void afterDraw(cocos2d::CCNode*);
	void beforeDraw();
	bool isActive();
	bool isTextureFlipped();
	void set2DProjection();

	virtual void blit();
	virtual void reuse();
	virtual void calculateVertexPoints();
}

[[link(win, android)]]
class cocos2d::CCHide {
	static cocos2d::CCHide* create();

	// CCHide(cocos2d::CCHide const&);
	// CCHide();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCFiniteTimeAction* reverse();
}

[[link(win, android)]]
class cocos2d::CCIMEDelegate {
	// CCIMEDelegate();
	// CCIMEDelegate(cocos2d::CCIMEDelegate const&);

	virtual bool attachWithIME();
	virtual bool detachWithIME();
	virtual bool canAttachWithIME();
	virtual void didAttachWithIME();
	virtual bool canDetachWithIME();
	virtual void didDetachWithIME();
	virtual void insertText(char const*, int, cocos2d::enumKeyCodes);
	virtual void deleteBackward();
	virtual void deleteForward();
	virtual char const* getContentText();
	virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
	virtual void keyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&);
	virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
	virtual void keyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&);
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
class cocos2d::CCInteger {
	static cocos2d::CCInteger* create(int);

	int getValue() const;

	void setValue(int);

	// CCInteger(cocos2d::CCInteger const&);
	// CCInteger(int);

	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
}

[[link(win, android)]]
class cocos2d::CCJumpBy {
	static cocos2d::CCJumpBy* create(float, cocos2d::CCPoint const&, float, unsigned int);

	bool initWithDuration(float, cocos2d::CCPoint const&, float, unsigned int);

	// CCJumpBy(cocos2d::CCJumpBy const&);
	// CCJumpBy();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCJumpTiles3D {
	static cocos2d::CCJumpTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float);

	bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);

	float getAmplitude();
	float getAmplitudeRate();

	void setAmplitude(float);
	void setAmplitudeRate(float);

	// CCJumpTiles3D(cocos2d::CCJumpTiles3D const&);
	// CCJumpTiles3D();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCJumpTo {
	static cocos2d::CCJumpTo* create(float, cocos2d::CCPoint const&, float, int);

	// CCJumpTo(cocos2d::CCJumpTo const&);
	// CCJumpTo();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
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
class cocos2d::CCKeyboardHandler {
	static cocos2d::CCKeyboardHandler* handlerWithDelegate(cocos2d::CCKeyboardDelegate*);

	cocos2d::CCKeyboardDelegate* getDelegate();

	void setDelegate(cocos2d::CCKeyboardDelegate*);

	// CCKeyboardHandler(cocos2d::CCKeyboardHandler const&);
	// CCKeyboardHandler();

	virtual bool initWithDelegate(cocos2d::CCKeyboardDelegate*);
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
	static cocos2d::CCKeypadHandler* handlerWithDelegate(cocos2d::CCKeypadDelegate*);

	cocos2d::CCKeypadDelegate* getDelegate();

	void setDelegate(cocos2d::CCKeypadDelegate*);

	// CCKeypadHandler(cocos2d::CCKeypadHandler const&);
	// CCKeypadHandler();

	virtual bool initWithDelegate(cocos2d::CCKeypadDelegate*);
}

[[link(win, android)]]
class cocos2d::CCLabelAtlas {
	static cocos2d::CCLabelAtlas* create(char const*, char const*);
	static cocos2d::CCLabelAtlas* create(char const*, char const*, unsigned int, unsigned int, unsigned int);

	bool initWithString(char const*, char const*);
	bool initWithString(char const*, char const*, unsigned int, unsigned int, unsigned int);
	bool initWithString(char const*, cocos2d::CCTexture2D*, unsigned int, unsigned int, unsigned int);

	// CCLabelAtlas(cocos2d::CCLabelAtlas const&);
	// CCLabelAtlas();

	virtual void updateAtlasValues();

	virtual void setString(char const*);
	virtual char const* getString();
}

[[link(win, android)]]
class cocos2d::CCLabelProtocol {
	// CCLabelProtocol(cocos2d::CCLabelProtocol const&);
	// CCLabelProtocol();
}

[[link(win, android)]]
class cocos2d::CCLabelTTF {
	static cocos2d::CCLabelTTF* create(char const*, char const*, float);
	static cocos2d::CCLabelTTF* create(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment);
	static cocos2d::CCLabelTTF* create(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment);
	static cocos2d::CCLabelTTF* create();
	static cocos2d::CCLabelTTF* createWithFontDefinition(char const*, cocos2d::_ccFontDefinition&);

	bool initWithString(char const*, char const*, float);
	bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment);
	bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment);
	bool initWithStringAndTextDefinition(char const*, cocos2d::_ccFontDefinition&);

	cocos2d::CCSize getDimensions();
	char const* getFontName();
	float getFontSize();
	cocos2d::CCTextAlignment getHorizontalAlignment();
	cocos2d::_ccFontDefinition* getTextDefinition();
	cocos2d::CCVerticalTextAlignment getVerticalAlignment();

	void setDimensions(cocos2d::CCSize const&);
	void setFontFillColor(cocos2d::_ccColor3B const&, bool);
	void setFontName(char const*);
	void setFontSize(float);
	void setHorizontalAlignment(cocos2d::CCTextAlignment);
	void setTextDefinition(cocos2d::_ccFontDefinition*);
	void setVerticalAlignment(cocos2d::CCVerticalTextAlignment);

	// CCLabelTTF(cocos2d::CCLabelTTF const&);
	// CCLabelTTF();
	cocos2d::_ccFontDefinition _prepareTextDefinition(bool);
	void _updateWithTextDefinition(cocos2d::_ccFontDefinition&, bool);
	char const* description();
	void disableShadow(bool);
	void disableStroke(bool);
	void enableShadow(cocos2d::CCSize const&, float, float, bool);
	void enableStroke(cocos2d::_ccColor3B const&, float, bool);
	bool updateTexture();

	virtual bool init();

	virtual void setString(char const*);
	virtual char const* getString();
}

[[link(win, android)]]
class cocos2d::CCLayer {
	static cocos2d::CCLayer* create();

	cocos2d::CCScriptHandlerEntry* getScriptAccelerateHandlerEntry();
	cocos2d::CCScriptHandlerEntry* getScriptKeypadHandlerEntry();
	cocos2d::CCTouchScriptHandlerEntry* getScriptTouchHandlerEntry();

	// CCLayer(cocos2d::CCLayer const&);
	// CCLayer();
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
class cocos2d::CCLayerMultiplex {
	// static cocos2d::CCLayerMultiplex* create(cocos2d::CCLayer*, ...);
	static cocos2d::CCLayerMultiplex* create();
	static cocos2d::CCLayerMultiplex* createWithArray(cocos2d::CCArray*);
	static cocos2d::CCLayerMultiplex* createWithLayer(cocos2d::CCLayer*);

	bool initWithArray(cocos2d::CCArray*);
	// bool initWithLayers(cocos2d::CCLayer*, char*);

	// CCLayerMultiplex(cocos2d::CCLayerMultiplex const&);
	// CCLayerMultiplex();
	void addLayer(cocos2d::CCLayer*);
	void switchTo(unsigned int);
	void switchToAndReleaseMe(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA {
	static cocos2d::CCLayerRGBA* create();

	// CCLayerRGBA(cocos2d::CCLayerRGBA const&);
	// CCLayerRGBA();

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
class cocos2d::CCLens3D {
	static cocos2d::CCLens3D* create(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float);

	bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float);

	float getLensEffect();
	cocos2d::CCPoint const& getPosition();

	void setConcave(bool);
	void setLensEffect(float);
	void setPosition(cocos2d::CCPoint const&);

	// CCLens3D(cocos2d::CCLens3D const&);
	// CCLens3D();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCLiquid {
	static cocos2d::CCLiquid* create(float, cocos2d::CCSize const&, unsigned int, float);

	bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);

	float getAmplitude();
	float getAmplitudeRate();

	void setAmplitude(float);
	void setAmplitudeRate(float);

	// CCLiquid(cocos2d::CCLiquid const&);
	// CCLiquid();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
}


[[link(win, android)]]
class cocos2d::CCMenuItem {
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
	virtual void registerScriptTapHandler(int);
	virtual void unregisterScriptTapHandler();
	virtual bool isEnabled();
	virtual void setEnabled(bool);
	virtual bool isSelected();
}

[[link(win, android)]]
class cocos2d::CCMenuItemAtlasFont {
	static cocos2d::CCMenuItemAtlasFont* create(char const*, char const*, int, int, char);
	static cocos2d::CCMenuItemAtlasFont* create(char const*, char const*, int, int, char, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	bool initWithString(char const*, char const*, int, int, char, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	// CCMenuItemAtlasFont(cocos2d::CCMenuItemAtlasFont const&);
	// CCMenuItemAtlasFont();
}

[[link(win, android)]]
class cocos2d::CCMenuItemFont {
	static cocos2d::CCMenuItemFont* create(char const*);
	static cocos2d::CCMenuItemFont* create(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	static char const* fontName();
	static unsigned int fontSize();
	static void setFontName(char const*);
	static void setFontSize(unsigned int);

	bool initWithString(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	void setFontNameObj(char const*);
	void setFontSizeObj(unsigned int);

	// CCMenuItemFont(cocos2d::CCMenuItemFont const&);
	// CCMenuItemFont();
	char const* fontNameObj();
	unsigned int fontSizeObj();
	void recreateLabel();
}

[[link(win, android)]]
class cocos2d::CCMenuItemImage {
	static cocos2d::CCMenuItemImage* create(char const*, char const*, char const*);
	static cocos2d::CCMenuItemImage* create(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	static cocos2d::CCMenuItemImage* create(char const*, char const*);
	static cocos2d::CCMenuItemImage* create(char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	static cocos2d::CCMenuItemImage* create();

	bool initWithNormalImage(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	void setDisabledSpriteFrame(cocos2d::CCSpriteFrame*);
	void setNormalSpriteFrame(cocos2d::CCSpriteFrame*);
	void setSelectedSpriteFrame(cocos2d::CCSpriteFrame*);

	// CCMenuItemImage(cocos2d::CCMenuItemImage const&);
	// CCMenuItemImage();

	virtual bool init();
}

[[link(win, android)]]
class cocos2d::CCMenuItemLabel {
	static cocos2d::CCMenuItemLabel* create(cocos2d::CCNode*);
	static cocos2d::CCMenuItemLabel* create(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	bool initWithLabel(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	void setString(char const*);

	// CCMenuItemLabel(cocos2d::CCMenuItemLabel const&);
	// CCMenuItemLabel();

	virtual void activate();
	virtual void selected();
	virtual void unselected();
	virtual void setEnabled(bool);
	virtual cocos2d::_ccColor3B const& getDisabledColor();
	virtual void setDisabledColor(cocos2d::_ccColor3B const&);
	virtual cocos2d::CCNode* getLabel();
	virtual void setLabel(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCMenuItemSprite {
	static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*);
	static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	bool initWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	// CCMenuItemSprite(cocos2d::CCMenuItemSprite const&);
	// CCMenuItemSprite();

	virtual void selected();
	virtual void unselected();
	virtual void setEnabled(bool);
	virtual cocos2d::CCNode* getNormalImage();
	virtual void setNormalImage(cocos2d::CCNode*);
	virtual cocos2d::CCNode* getSelectedImage();
	virtual void setSelectedImage(cocos2d::CCNode*);
	virtual cocos2d::CCNode* getDisabledImage();
	virtual void setDisabledImage(cocos2d::CCNode*);
	virtual void updateImagesVisibility();
}

[[link(win, android)]]
class cocos2d::CCMenuItemToggle {
	static cocos2d::CCMenuItemToggle* create(cocos2d::CCMenuItem*);
	static cocos2d::CCMenuItemToggle* create();
	static cocos2d::CCMenuItemToggle* createWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCArray*);
	// static cocos2d::CCMenuItemToggle* createWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCMenuItem*, ...);

	bool initWithItem(cocos2d::CCMenuItem*);
	// bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCMenuItem*, char*);

	// CCMenuItemToggle(cocos2d::CCMenuItemToggle const&);
	// CCMenuItemToggle();
	void addSubItem(cocos2d::CCMenuItem*);
	cocos2d::CCMenuItem* selectedItem();

	virtual void activate();
	virtual void selected();
	virtual void unselected();
	virtual void setEnabled(bool);
	virtual unsigned int getSelectedIndex();
	virtual void setSelectedIndex(unsigned int);
	virtual cocos2d::CCArray* getSubItems();
	virtual void setSubItems(cocos2d::CCArray*);
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
	static cocos2d::CCMouseHandler* handlerWithDelegate(cocos2d::CCMouseDelegate*);

	cocos2d::CCMouseDelegate* getDelegate();

	void setDelegate(cocos2d::CCMouseDelegate*);

	// CCMouseHandler(cocos2d::CCMouseHandler const&);
	// CCMouseHandler();

	virtual bool initWithDelegate(cocos2d::CCMouseDelegate*);
}

[[link(win, android)]]
class cocos2d::CCMoveBy {
	static cocos2d::CCMoveBy* create(float, cocos2d::CCPoint const&);

	bool initWithDuration(float, cocos2d::CCPoint const&);

	// CCMoveBy(cocos2d::CCMoveBy const&);
	// CCMoveBy();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCNode {
	static cocos2d::CCNode* create();
	static void resetGlobalOrderOfArrival();

	cocos2d::CCAction* getActionByTag(int);
	cocos2d::CCComponent* getComponent(char const*) const;
	int getScriptHandler();
	cocos2d::CCAffineTransform getTransformTemp();
	bool getUseChildIndex();

	void setAdditionalTransform(cocos2d::CCAffineTransform const&);
	void setUseChildIndex(bool);

	// CCNode(cocos2d::CCNode const&);
	// CCNode();
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
class cocos2d::CCNotificationCenter {
	static void purgeNotificationCenter();
	static cocos2d::CCNotificationCenter* sharedNotificationCenter();

	int getObserverHandlerByName(char const*);
	int getScriptHandler();

	// CCNotificationCenter(cocos2d::CCNotificationCenter const&);
	// CCNotificationCenter();
	void addObserver(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, char const*, cocos2d::CCObject*);
	bool observerExisted(cocos2d::CCObject*, char const*);
	void postNotification(char const*);
	void postNotification(char const*, cocos2d::CCObject*);
	void registerScriptObserver(cocos2d::CCObject*, int, char const*);
	int removeAllObservers(cocos2d::CCObject*);
	void removeObserver(cocos2d::CCObject*, char const*);
	void unregisterScriptObserver(cocos2d::CCObject*, char const*);
}

[[link(win, android)]]
class cocos2d::CCNotificationObserver {
	// CCNotificationObserver(cocos2d::CCNotificationObserver const&);
	// CCNotificationObserver(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, char const*, cocos2d::CCObject*);
	void performSelector(cocos2d::CCObject*);

	virtual cocos2d::CCObject* getTarget();
	virtual SEL_SCHEDULE getSelector();
	virtual char* getName();
	virtual cocos2d::CCObject* getObject();
	virtual int getHandler();
	virtual void setHandler(int);
}

[[link(win, android)]]
class cocos2d::CCObject {
	static cocos2d::CCObject* createWithCoder(DS_Dictionary*);

	cocos2d::CCObjectType getObjType() const;

	void setObjType(cocos2d::CCObjectType);

	// CCObject(cocos2d::CCObject const&);
	// CCObject();
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
class cocos2d::CCPageTurn3D {
	static cocos2d::CCPageTurn3D* create(float, cocos2d::CCSize const&);

	// CCPageTurn3D(cocos2d::CCPageTurn3D const&);
	// CCPageTurn3D();

	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCParallaxNode {
	static cocos2d::CCParallaxNode* create();

	cocos2d::_ccArray* getParallaxArray() const;

	void setParallaxArray(cocos2d::_ccArray*);

	// CCParallaxNode(cocos2d::CCParallaxNode const&);
	// CCParallaxNode();
	cocos2d::CCPoint absolutePosition();

	virtual void removeChild(cocos2d::CCNode*, bool);
	virtual void removeAllChildrenWithCleanup(bool);
	virtual void visit();
	virtual void addChild(cocos2d::CCNode*, unsigned int, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
	virtual void addChild(cocos2d::CCNode*, unsigned int, int);
}

[[link(win, android)]]
class cocos2d::CCParticleBatchNode {
	static cocos2d::CCParticleBatchNode* create(char const*, unsigned int);
	static cocos2d::CCParticleBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int);

	bool initWithFile(char const*, unsigned int);
	bool initWithTexture(cocos2d::CCTexture2D*, unsigned int);

	void getCurrentIndex(unsigned int*, unsigned int*, cocos2d::CCNode*, int);
	cocos2d::CCTextureAtlas* getTextureAtlas() const;

	void setTextureAtlas(cocos2d::CCTextureAtlas*);

	// CCParticleBatchNode(cocos2d::CCParticleBatchNode const&);
	// CCParticleBatchNode();
	unsigned int addChildHelper(cocos2d::CCParticleSystem*, int, int);
	void disableParticle(unsigned int);
	void increaseAtlasCapacityTo(unsigned int);
	void insertChild(cocos2d::CCParticleSystem*, unsigned int);
	void removeChildAtIndex(unsigned int, bool);
	unsigned int searchNewPositionInChildrenForZ(int);
	void updateAllAtlasIndexes();
	void updateBlendFunc();

	virtual void addChild(cocos2d::CCNode*);
	virtual void addChild(cocos2d::CCNode*, int);
	virtual void addChild(cocos2d::CCNode*, int, int);
	virtual void removeChild(cocos2d::CCNode*, bool);
	virtual void removeAllChildrenWithCleanup(bool);
	virtual void reorderChild(cocos2d::CCNode*, int);
	virtual void draw();
	virtual void visit();

	virtual void setBlendFunc(cocos2d::_ccBlendFunc);
	virtual cocos2d::_ccBlendFunc getBlendFunc();
	virtual cocos2d::CCTexture2D* getTexture();
	virtual void setTexture(cocos2d::CCTexture2D*);
}

[[link(win, android)]]
class cocos2d::CCParticleExplosion {
	static cocos2d::CCParticleExplosion* create();
	static cocos2d::CCParticleExplosion* createWithTotalParticles(unsigned int);

	// CCParticleExplosion(cocos2d::CCParticleExplosion const&);
	// CCParticleExplosion();

	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleFire {
	static cocos2d::CCParticleFire* create();
	static cocos2d::CCParticleFire* createWithTotalParticles(unsigned int);

	// CCParticleFire(cocos2d::CCParticleFire const&);
	// CCParticleFire();

	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleFireworks {
	static cocos2d::CCParticleFireworks* create();
	static cocos2d::CCParticleFireworks* createWithTotalParticles(unsigned int);

	// CCParticleFireworks(cocos2d::CCParticleFireworks const&);
	// CCParticleFireworks();

	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleFlower {
	static cocos2d::CCParticleFlower* create();
	static cocos2d::CCParticleFlower* createWithTotalParticles(unsigned int);

	// CCParticleFlower(cocos2d::CCParticleFlower const&);
	// CCParticleFlower();

	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleGalaxy {
	static cocos2d::CCParticleGalaxy* create();
	static cocos2d::CCParticleGalaxy* createWithTotalParticles(unsigned int);

	// CCParticleGalaxy(cocos2d::CCParticleGalaxy const&);
	// CCParticleGalaxy();

	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleMeteor {
	static cocos2d::CCParticleMeteor* create();
	static cocos2d::CCParticleMeteor* createWithTotalParticles(unsigned int);

	// CCParticleMeteor(cocos2d::CCParticleMeteor const&);
	// CCParticleMeteor();

	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleRain {
	static cocos2d::CCParticleRain* create();
	static cocos2d::CCParticleRain* createWithTotalParticles(unsigned int);

	// CCParticleRain(cocos2d::CCParticleRain const&);
	// CCParticleRain();

	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleSmoke {
	static cocos2d::CCParticleSmoke* create();
	static cocos2d::CCParticleSmoke* createWithTotalParticles(unsigned int);

	// CCParticleSmoke(cocos2d::CCParticleSmoke const&);
	// CCParticleSmoke();

	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleSnow {
	static cocos2d::CCParticleSnow* create();
	static cocos2d::CCParticleSnow* createWithTotalParticles(unsigned int);

	// CCParticleSnow(cocos2d::CCParticleSnow const&);
	// CCParticleSnow();

	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleSpiral {
	static cocos2d::CCParticleSpiral* create();
	static cocos2d::CCParticleSpiral* createWithTotalParticles(unsigned int);

	// CCParticleSpiral(cocos2d::CCParticleSpiral const&);
	// CCParticleSpiral();

	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleSun {
	static cocos2d::CCParticleSun* create();
	static cocos2d::CCParticleSun* createWithTotalParticles(unsigned int);

	// CCParticleSun(cocos2d::CCParticleSun const&);
	// CCParticleSun();

	virtual bool init();
	virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCPlace {
	static cocos2d::CCPlace* create(cocos2d::CCPoint const&);

	bool initWithPosition(cocos2d::CCPoint const&);

	// CCPlace(cocos2d::CCPlace const&);
	// CCPlace();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
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
	static cocos2d::CCPointArray* create(unsigned int);

	bool initWithCapacity(unsigned int);

	cocos2d::CCPoint getControlPointAtIndex(unsigned int);
	gd::vector<cocos2d::CCPoint*> const* getControlPoints();

	void setControlPoints(gd::vector<cocos2d::CCPoint*>*);

	// CCPointArray(cocos2d::CCPointArray const&);
	// CCPointArray();
	void addControlPoint(cocos2d::CCPoint);
	unsigned int count();
	void insertControlPoint(cocos2d::CCPoint&, unsigned int);
	void removeControlPointAtIndex(unsigned int);
	void replaceControlPoint(cocos2d::CCPoint&, unsigned int);
	cocos2d::CCPointArray* reverse();
	void reverseInline();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
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
	void setIndentLevel(int);

	// CCPrettyPrinter(cocos2d::CCPrettyPrinter const&);
	// CCPrettyPrinter(int);

	virtual void visitObject(cocos2d::CCObject const*);
	virtual void visit(cocos2d::CCBool const*);
	virtual void visit(cocos2d::CCInteger const*);
	virtual void visit(cocos2d::CCFloat const*);
	virtual void visit(cocos2d::CCDouble const*);
	virtual void visit(cocos2d::CCString const*);
	virtual void visit(cocos2d::CCArray const*);
	virtual void visit(cocos2d::CCDictionary const*);
	virtual void visit(cocos2d::CCSet const*);
	virtual void clear();
	virtual gd::string getResult();
}

[[link(win, android)]]
class cocos2d::CCProfiler {
	static cocos2d::CCProfiler* sharedProfiler();

	bool init();

	// CCProfiler(cocos2d::CCProfiler const&);
	// CCProfiler();
	cocos2d::CCProfilingTimer* createAndAddTimerWithName(char const*);
	void displayTimers();
	void releaseAllTimers();
	void releaseTimer(char const*);
}

[[link(win, android)]]
class cocos2d::CCProgressFromTo {
	static cocos2d::CCProgressFromTo* create(float, float, float);

	bool initWithDuration(float, float, float);

	// CCProgressFromTo(cocos2d::CCProgressFromTo const&);
	// CCProgressFromTo();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCProgressTimer {
	static cocos2d::CCProgressTimer* create(cocos2d::CCSprite*);

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
class cocos2d::CCProgressTo {
	static cocos2d::CCProgressTo* create(float, float);

	bool initWithDuration(float, float);

	// CCProgressTo(cocos2d::CCProgressTo const&);
	// CCProgressTo();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
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
	static cocos2d::CCRemoveSelf* create(bool);

	bool init(bool);

	// CCRemoveSelf(cocos2d::CCRemoveSelf const&);
	// CCRemoveSelf();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCFiniteTimeAction* reverse();
}

[[link(win, android)]]
class cocos2d::CCRenderTexture {
	static cocos2d::CCRenderTexture* create(int, int);
	static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat);
	static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int);

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
	// CCRenderTexture();
	void begin();
	void beginWithClear(float, float, float, float, float, int, unsigned int);
	void beginWithClear(float, float, float, float);
	void beginWithClear(float, float, float, float, float);
	void beginWithClear(float, float, float, float, float, int);
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

	virtual void draw();
	virtual void visit();
	virtual cocos2d::CCSprite* getSprite();
	virtual void setSprite(cocos2d::CCSprite*);
}

[[link(win, android)]]
class cocos2d::CCRepeat {
	static cocos2d::CCRepeat* create(cocos2d::CCFiniteTimeAction*, unsigned int);

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
class cocos2d::CCReuseGrid {
	static cocos2d::CCReuseGrid* create(int);

	bool initWithTimes(int);

	// CCReuseGrid(cocos2d::CCReuseGrid const&);
	// CCReuseGrid();

	virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCReverseTime {
	static cocos2d::CCReverseTime* create(cocos2d::CCFiniteTimeAction*);

	bool initWithAction(cocos2d::CCFiniteTimeAction*);

	// CCReverseTime(cocos2d::CCReverseTime const&);
	// CCReverseTime();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void stop();
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCRipple3D {
	static cocos2d::CCRipple3D* create(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float);

	bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float);

	float getAmplitude();
	float getAmplitudeRate();
	cocos2d::CCPoint const& getPosition();

	void setAmplitude(float);
	void setAmplitudeRate(float);
	void setPosition(cocos2d::CCPoint const&);

	// CCRipple3D(cocos2d::CCRipple3D const&);
	// CCRipple3D();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCRotateBy {
	static cocos2d::CCRotateBy* create(float, float);
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
	static cocos2d::CCRotateTo* create(float, float);
	static cocos2d::CCRotateTo* create(float, float, float);

	bool initWithDuration(float, float);

	// CCRotateTo(cocos2d::CCRotateTo const&);
	// CCRotateTo();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual bool initWithDuration(float, float, float);
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
	static cocos2d::CCScaleBy* create(float, float);
	static cocos2d::CCScaleBy* create(float, float, float);

	// CCScaleBy(cocos2d::CCScaleBy const&);
	// CCScaleBy();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual cocos2d::CCActionInterval* reverse();
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
class cocos2d::CCSceneTransitionDelegate {
	// CCSceneTransitionDelegate(cocos2d::CCSceneTransitionDelegate const&);
	// CCSceneTransitionDelegate();

	virtual void sceneWillResume();
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
	static cocos2d::CCSequence* create(cocos2d::CCArray*);
	// static cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, ...) = mac 0x393740;
	static cocos2d::CCSequence* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);
	// static cocos2d::CCSequence* createWithVariableList(cocos2d::CCFiniteTimeAction*, char*) = mac 0x3937f0;

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
class cocos2d::CCSet {
	static cocos2d::CCSet* create();

	// CCSet(cocos2d::CCSet const&);
	// CCSet();
	void addObject(cocos2d::CCObject*);
	cocos2d::CCObject* anyObject();
	cocos2d::CCSetIterator begin();
	bool containsObject(cocos2d::CCObject*);
	cocos2d::CCSet* copy();
	int count();
	cocos2d::CCSetIterator end();
	cocos2d::CCSet* mutableCopy();
	void removeAllObjects();
	void removeObject(cocos2d::CCObject*);

	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
}

[[link(win, android)]]
class cocos2d::CCShaderCache {
	static void purgeSharedShaderCache();
	static cocos2d::CCShaderCache* sharedShaderCache();

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
class cocos2d::CCShaky3D {
	static cocos2d::CCShaky3D* create(float, cocos2d::CCSize const&, int, bool);

	bool initWithDuration(float, cocos2d::CCSize const&, int, bool);

	// CCShaky3D(cocos2d::CCShaky3D const&);
	// CCShaky3D();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCShakyTiles3D {
	static cocos2d::CCShakyTiles3D* create(float, cocos2d::CCSize const&, int, bool);

	// CCShakyTiles3D(cocos2d::CCShakyTiles3D const&);
	// CCShakyTiles3D();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool);
}

[[link(win, android)]]
class cocos2d::CCShatteredTiles3D {
	static cocos2d::CCShatteredTiles3D* create(float, cocos2d::CCSize const&, int, bool);

	// CCShatteredTiles3D(cocos2d::CCShatteredTiles3D const&);
	// CCShatteredTiles3D();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool);
}

[[link(win, android)]]
class cocos2d::CCShow {
	static cocos2d::CCShow* create();

	// CCShow(cocos2d::CCShow const&);
	// CCShow();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCFiniteTimeAction* reverse();
}

[[link(win, android)]]
class cocos2d::CCShuffleTiles {
	static cocos2d::CCShuffleTiles* create(float, cocos2d::CCSize const&, unsigned int);

	cocos2d::CCSize getDelta(cocos2d::CCSize const&);

	// CCShuffleTiles(cocos2d::CCShuffleTiles const&);
	// CCShuffleTiles();
	void placeTile(cocos2d::CCPoint const&, cocos2d::Tile*);
	void shuffle(unsigned int*, unsigned int);

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int);
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
	static cocos2d::CCSkewBy* create(float, float, float);

	// CCSkewBy(cocos2d::CCSkewBy const&);
	// CCSkewBy();

	virtual void startWithTarget(cocos2d::CCNode*);
	virtual cocos2d::CCActionInterval* reverse();
	virtual bool initWithDuration(float, float, float);
}

[[link(win, android)]]
class cocos2d::CCSkewTo {
	static cocos2d::CCSkewTo* create(float, float, float);

	// CCSkewTo(cocos2d::CCSkewTo const&);
	// CCSkewTo();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual bool initWithDuration(float, float, float);
}

[[link(win, android)]]
class cocos2d::CCSpawn {
	static cocos2d::CCSpawn* create(cocos2d::CCArray*);
	// static cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction*, ...);
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
	static cocos2d::CCSpeed* create(cocos2d::CCActionInterval*, float);

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
class cocos2d::CCSplitCols {
	static cocos2d::CCSplitCols* create(float, unsigned int);

	// CCSplitCols(cocos2d::CCSplitCols const&);
	// CCSplitCols();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual bool initWithDuration(float, unsigned int);
}

[[link(win, android)]]
class cocos2d::CCSplitRows {
	static cocos2d::CCSplitRows* create(float, unsigned int);

	// CCSplitRows(cocos2d::CCSplitRows const&);
	// CCSplitRows();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual bool initWithDuration(float, unsigned int);
}


[[link(win, android)]]
class cocos2d::CCSpriteBatchNode {
	static cocos2d::CCSpriteBatchNode* create(char const*);
	static cocos2d::CCSpriteBatchNode* create(char const*, unsigned int);
	static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*);
	static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int);

	bool initWithFile(char const*, unsigned int);
	bool initWithTexture(cocos2d::CCTexture2D*, unsigned int);

	int getAtlasCapacity();
	cocos2d::CCArray* getDescendants();
	bool getManualSortChildren() const;
	cocos2d::CCTextureAtlas* getTextureAtlas();
	int getUsedAtlasCapacity();

	void setManualSortChildren(bool);
	void setTextureAtlas(cocos2d::CCTextureAtlas*);

	// CCSpriteBatchNode(cocos2d::CCSpriteBatchNode const&);
	// CCSpriteBatchNode();
	cocos2d::CCSpriteBatchNode* addSpriteWithoutQuad(cocos2d::CCSprite*, unsigned int, int);
	void appendChild(cocos2d::CCSprite*);
	unsigned int atlasIndexForChild(cocos2d::CCSprite*, int);
	unsigned int highestAtlasIndexInChild(cocos2d::CCSprite*);
	void increaseAtlasCapacity(unsigned int);
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

	virtual bool init();
	virtual void addChild(cocos2d::CCNode*);
	virtual void addChild(cocos2d::CCNode*, int);
	virtual void addChild(cocos2d::CCNode*, int, int);
	virtual void removeChild(cocos2d::CCNode*, bool);
	virtual void removeAllChildrenWithCleanup(bool);
	virtual void reorderChild(cocos2d::CCNode*, int);
	virtual void sortAllChildren();
	virtual void draw();
	virtual void visit();

	virtual void setBlendFunc(cocos2d::_ccBlendFunc);
	virtual cocos2d::_ccBlendFunc getBlendFunc();
	virtual cocos2d::CCTexture2D* getTexture();
	virtual void setTexture(cocos2d::CCTexture2D*);
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
	cocos2d::CCTexture2D* getTexture();

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
	static cocos2d::CCSpriteFrameCache* sharedSpriteFrameCache();

	bool init();

	// CCSpriteFrameCache();
	// CCSpriteFrameCache(cocos2d::CCSpriteFrameCache const&);
	void addSpriteFrame(cocos2d::CCSpriteFrame*, char const*);
	void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*);
	void addSpriteFramesWithFile(char const*, char const*);
	void addSpriteFramesWithFile(char const*);
	void addSpriteFramesWithFile(char const*, cocos2d::CCTexture2D*);
	void removeSpriteFrameByName(char const*);
	void removeSpriteFrames();
	void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*);
	void removeSpriteFramesFromFile(char const*);
	void removeSpriteFramesFromTexture(cocos2d::CCTexture2D*);
	void removeUnusedSpriteFrames();
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
	static cocos2d::CCStandardTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int);

	// CCStandardTouchHandler(cocos2d::CCStandardTouchHandler const&);
	// CCStandardTouchHandler();

	virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int);
}

[[link(win, android)]]
class cocos2d::CCStopGrid {
	static cocos2d::CCStopGrid* create();

	// CCStopGrid(cocos2d::CCStopGrid const&);
	// CCStopGrid();

	virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCString {
	// static cocos2d::CCString* create(gd::string const&);
	static cocos2d::CCString* createWithContentsOfFile(char const*);
	static cocos2d::CCString* createWithData(unsigned char const*, unsigned long);
	// static cocos2d::CCString* createWithFormat(char const*, ...);

	// bool initWithFormat(char const*, ...);
	// bool initWithFormatAndValist(char const*, char*);

	char const* getCString() const;

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
class cocos2d::CCTMXLayer {
	static cocos2d::CCTMXLayer* create(cocos2d::CCTMXTilesetInfo*, cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);

	bool initWithTilesetInfo(cocos2d::CCTMXTilesetInfo*, cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);

	char const* getLayerName();
	unsigned int getLayerOrientation() const;
	cocos2d::CCSize const& getLayerSize() const;
	cocos2d::CCSize const& getMapTileSize() const;
	unsigned int* getTiles() const;

	void setLayerName(char const*);
	void setLayerOrientation(unsigned int);
	void setLayerSize(cocos2d::CCSize const&);
	void setMapTileSize(cocos2d::CCSize const&);
	void setTileGID(unsigned int, cocos2d::CCPoint const&);
	void setTileGID(unsigned int, cocos2d::CCPoint const&, cocos2d::ccTMXTileFlags_);
	void setTiles(unsigned int*);

	// CCTMXLayer(cocos2d::CCTMXLayer const&);
	// CCTMXLayer();
	cocos2d::CCSprite* appendTileForGID(unsigned int, cocos2d::CCPoint const&);
	unsigned int atlasIndexForExistantZ(unsigned int);
	unsigned int atlasIndexForNewZ(int);
	cocos2d::CCPoint calculateLayerOffset(cocos2d::CCPoint const&);
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
	void setupTileSprite(cocos2d::CCSprite*, cocos2d::CCPoint, unsigned int);
	void setupTiles();
	cocos2d::CCSprite* tileAt(cocos2d::CCPoint const&);
	unsigned int tileGIDAt(cocos2d::CCPoint const&);
	unsigned int tileGIDAt(cocos2d::CCPoint const&, cocos2d::ccTMXTileFlags_*);
	cocos2d::CCSprite* updateTileForGID(unsigned int, cocos2d::CCPoint const&);
	int vertexZForPos(cocos2d::CCPoint const&);

	virtual void addChild(cocos2d::CCNode*, int, int);
	virtual void removeChild(cocos2d::CCNode*, bool);
	virtual cocos2d::CCTMXTilesetInfo* getTileSet();
	virtual void setTileSet(cocos2d::CCTMXTilesetInfo*);
	virtual cocos2d::CCDictionary* getProperties();
	virtual void setProperties(cocos2d::CCDictionary*);
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
	static cocos2d::CCTMXMapInfo* formatWithTMXFile(char const*);
	static cocos2d::CCTMXMapInfo* formatWithXML(char const*, char const*);

	bool initWithTMXFile(char const*);
	bool initWithXML(char const*, char const*);

	char const* getCurrentString();
	int getLayerAttribs() const;
	cocos2d::CCSize const& getMapSize() const;
	int getOrientation() const;
	int getParentElement() const;
	unsigned int getParentGID() const;
	bool getStoringCharacters() const;
	char const* getTMXFileName();
	cocos2d::CCDictionary* getTileProperties();
	cocos2d::CCSize const& getTileSize() const;

	void setCurrentString(char const*);
	void setLayerAttribs(int);
	void setMapSize(cocos2d::CCSize const&);
	void setOrientation(int);
	void setParentElement(int);
	void setParentGID(unsigned int);
	void setStoringCharacters(bool);
	void setTMXFileName(char const*);
	void setTileProperties(cocos2d::CCDictionary*);
	void setTileSize(cocos2d::CCSize const&);

	// CCTMXMapInfo(cocos2d::CCTMXMapInfo const&);
	// CCTMXMapInfo();
	void internalInit(char const*, char const*);
	bool parseXMLFile(char const*);
	bool parseXMLString(char const*);

	virtual cocos2d::CCArray* getLayers();
	virtual void setLayers(cocos2d::CCArray*);
	virtual cocos2d::CCArray* getTilesets();
	virtual void setTilesets(cocos2d::CCArray*);
	virtual cocos2d::CCArray* getObjectGroups();
	virtual void setObjectGroups(cocos2d::CCArray*);
	virtual cocos2d::CCDictionary* getProperties();
	virtual void setProperties(cocos2d::CCDictionary*);

	virtual void startElement(void*, char const*, char const**);
	virtual void endElement(void*, char const*);
	virtual void textHandler(void*, char const*, int);
}

[[link(win, android)]]
class cocos2d::CCTMXObjectGroup {
	char const* getGroupName();
	cocos2d::CCPoint const& getPositionOffset() const;

	void setGroupName(char const*);
	void setPositionOffset(cocos2d::CCPoint const&);

	// CCTMXObjectGroup(cocos2d::CCTMXObjectGroup const&);
	// CCTMXObjectGroup();
	cocos2d::CCDictionary* objectNamed(char const*);
	cocos2d::CCString* propertyNamed(char const*);

	virtual cocos2d::CCDictionary* getProperties();
	virtual void setProperties(cocos2d::CCDictionary*);
	virtual cocos2d::CCArray* getObjects();
	virtual void setObjects(cocos2d::CCArray*);
}

[[link(win, android)]]
class cocos2d::CCTMXTiledMap {
	static cocos2d::CCTMXTiledMap* create(char const*);
	static cocos2d::CCTMXTiledMap* createWithXML(char const*, char const*);

	bool initWithTMXFile(char const*);
	bool initWithXML(char const*, char const*);

	int getMapOrientation() const;
	cocos2d::CCSize const& getMapSize() const;
	cocos2d::CCSize const& getTileSize() const;

	void setMapOrientation(int);
	void setMapSize(cocos2d::CCSize const&);
	void setTileSize(cocos2d::CCSize const&);

	// CCTMXTiledMap(cocos2d::CCTMXTiledMap const&);
	// CCTMXTiledMap();
	void buildWithMapInfo(cocos2d::CCTMXMapInfo*);
	cocos2d::CCTMXLayer* layerNamed(char const*);
	cocos2d::CCTMXObjectGroup* objectGroupNamed(char const*);
	cocos2d::CCTMXLayer* parseLayer(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);
	cocos2d::CCDictionary* propertiesForGID(int);
	cocos2d::CCString* propertyNamed(char const*);
	cocos2d::CCTMXTilesetInfo* tilesetForLayer(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);

	virtual cocos2d::CCArray* getObjectGroups();
	virtual void setObjectGroups(cocos2d::CCArray*);
	virtual cocos2d::CCDictionary* getProperties();
	virtual void setProperties(cocos2d::CCDictionary*);
}

[[link(win, android)]]
class cocos2d::CCTMXTilesetInfo {
	// CCTMXTilesetInfo(cocos2d::CCTMXTilesetInfo const&);
	// CCTMXTilesetInfo();
	cocos2d::CCRect rectForGID(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCTargetedAction {
	static cocos2d::CCTargetedAction* create(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*);

	bool initWithTarget(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*);

	cocos2d::CCNode* getForcedTarget() const;

	void setForcedTarget(cocos2d::CCNode*);

	// CCTargetedAction(cocos2d::CCTargetedAction const&);
	// CCTargetedAction();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual void stop();
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
	static cocos2d::CCTargetedTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int, bool);

	bool initWithDelegate(cocos2d::CCTouchDelegate*, int, bool);

	cocos2d::CCSet* getClaimedTouches();

	void setSwallowsTouches(bool);

	// CCTargetedTouchHandler(cocos2d::CCTargetedTouchHandler const&);
	// CCTargetedTouchHandler();
	bool isSwallowsTouches();
}

[[link(win, android)]]
class cocos2d::CCTextFieldDelegate {
	// CCTextFieldDelegate(cocos2d::CCTextFieldDelegate const&);
	// CCTextFieldDelegate();

	virtual bool onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF*);
	virtual bool onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF*);
	virtual bool onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int, cocos2d::enumKeyCodes);
	virtual bool onTextFieldDeleteBackward(cocos2d::CCTextFieldTTF*, char const*, int);
	virtual bool onDraw(cocos2d::CCTextFieldTTF*);
	virtual void textChanged();
}

[[link(win, android)]]
class cocos2d::CCTextFieldTTF {
	static cocos2d::CCTextFieldTTF* textFieldWithPlaceHolder(char const*, char const*, float);
	static cocos2d::CCTextFieldTTF* textFieldWithPlaceHolder(char const*, cocos2d::CCSize const&, cocos2d::CCTextAlignment, char const*, float);

	bool initWithPlaceHolder(char const*, char const*, float);
	bool initWithPlaceHolder(char const*, cocos2d::CCSize const&, cocos2d::CCTextAlignment, char const*, float);

	int getCharCount() const;
	cocos2d::CCTextFieldDelegate* getDelegate() const;

	void setDelegate(cocos2d::CCTextFieldDelegate*);

	// CCTextFieldTTF(cocos2d::CCTextFieldTTF const&);
	// CCTextFieldTTF();

	virtual void draw();
	virtual cocos2d::_ccColor3B const& getColorSpaceHolder();
	virtual void setColorSpaceHolder(cocos2d::_ccColor3B const&);
	virtual void setPlaceHolder(char const*);
	virtual char const* getPlaceHolder();
	virtual void setSecureTextEntry(bool);
	virtual bool isSecureTextEntry();

	virtual void setString(char const*);
	virtual char const* getString();

	virtual bool attachWithIME();
	virtual bool detachWithIME();
	virtual bool canAttachWithIME();
	virtual bool canDetachWithIME();
	virtual void insertText(char const*, int, cocos2d::enumKeyCodes);
	virtual void deleteBackward();
	virtual void deleteForward();
	virtual char const* getContentText();
}

[[link(win, android)]]
class cocos2d::CCTexture2D {
	static void PVRImagesHavePremultipliedAlpha(bool);
	static cocos2d::CCTexture2DPixelFormat defaultAlphaPixelFormat();
	static void setDefaultAlphaPixelFormat(cocos2d::CCTexture2DPixelFormat);

	bool initPremultipliedATextureWithImage(cocos2d::CCImage*, unsigned int, unsigned int);
	bool initWithData(void const*, cocos2d::CCTexture2DPixelFormat, unsigned int, unsigned int, cocos2d::CCSize const&);
	bool initWithETCFile(char const*);
	bool initWithImage(cocos2d::CCImage*);
	bool initWithPVRFile(char const*);
	bool initWithString(char const*, char const*, float);
	bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment);
	bool initWithString(char const*, cocos2d::_ccFontDefinition*);

	cocos2d::CCSize const& getContentSizeInPixels();

	void setAliasTexParameters();
	void setAntiAliasTexParameters();
	void setTexParameters(cocos2d::_ccTexParams*);

	// CCTexture2D(cocos2d::CCTexture2D const&);
	// CCTexture2D();
	unsigned int bitsPerPixelForFormat(cocos2d::CCTexture2DPixelFormat);
	unsigned int bitsPerPixelForFormat();
	char const* description();
	void drawAtPoint(cocos2d::CCPoint const&);
	void drawInRect(cocos2d::CCRect const&);
	void generateMipmap();
	bool hasMipmaps();
	bool hasPremultipliedAlpha();
	void* keepData(void*, unsigned int);
	void releaseData(void*);
	void releaseGLTexture();
	char const* stringForFormat();

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
class cocos2d::CCTextureAtlas {
	static cocos2d::CCTextureAtlas* create(char const*, unsigned int);
	static cocos2d::CCTextureAtlas* createWithTexture(cocos2d::CCTexture2D*, unsigned int);

	bool initWithFile(char const*, unsigned int);
	bool initWithTexture(cocos2d::CCTexture2D*, unsigned int);

	void setDirty(bool);

	// CCTextureAtlas(cocos2d::CCTextureAtlas const&);
	// CCTextureAtlas();
	char const* description();
	void drawNumberOfQuads(unsigned int);
	void drawNumberOfQuads(unsigned int, unsigned int);
	void drawQuads();
	void fillWithEmptyQuadsFromIndex(unsigned int, unsigned int);
	void increaseTotalQuadsWith(unsigned int);
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
	void setupIndices();
	void setupVBO();
	void updateQuad(cocos2d::_ccV3F_C4B_T2F_Quad*, unsigned int);

	virtual unsigned int getTotalQuads();
	virtual unsigned int getCapacity();
	virtual cocos2d::CCTexture2D* getTexture();
	virtual void setTexture(cocos2d::CCTexture2D*);
	virtual cocos2d::_ccV3F_C4B_T2F_Quad* getQuads();
	virtual void setQuads(cocos2d::_ccV3F_C4B_T2F_Quad*);
}

[[link(win, android)]]
class cocos2d::CCTextureCache {
	static void purgeSharedTextureCache();
	static void reloadAllTextures();
	static cocos2d::CCTextureCache* sharedTextureCache();

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
	bool reloadTexture(char const*);
	void removeAllTextures();
	void removeTexture(cocos2d::CCTexture2D*);
	void removeTextureForKey(char const*);
	void removeUnusedTextures();
	cocos2d::CCDictionary* snapshotTextures();
	cocos2d::CCTexture2D* textureForKey(char const*);
}

[[link(win, android)]]
class cocos2d::CCTextureETC {
	bool initWithFile(char const*);

	unsigned int getHeight() const;
	unsigned int getName() const;
	unsigned int getWidth() const;

	// CCTextureETC(cocos2d::CCTextureETC const&);
	// CCTextureETC();
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
	static cocos2d::CCTileMapAtlas* create(char const*, char const*, int, int);

	bool initWithTileFile(char const*, char const*, int, int);

	void setTile(cocos2d::_ccColor3B const&, cocos2d::CCPoint const&);

	// CCTileMapAtlas(cocos2d::CCTileMapAtlas const&);
	// CCTileMapAtlas();
	void calculateItemsToRender();
	void loadTGAfile(char const*);
	void releaseMap();
	cocos2d::_ccColor3B tileAt(cocos2d::CCPoint const&);
	void updateAtlasValueAt(cocos2d::CCPoint const&, cocos2d::_ccColor3B const&, unsigned int);

	virtual void updateAtlasValues();
	virtual cocos2d::sImageTGA* getTGAInfo();
	virtual void setTGAInfo(cocos2d::sImageTGA*);
}

[[link(win, android)]]
class cocos2d::CCTiledGrid3D {
	static cocos2d::CCTiledGrid3D* create(cocos2d::CCSize const&);
	static cocos2d::CCTiledGrid3D* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool);

	void setTile(cocos2d::CCPoint const&, cocos2d::_ccQuad3 const&);

	// CCTiledGrid3D(cocos2d::CCTiledGrid3D const&);
	// CCTiledGrid3D();
	cocos2d::_ccQuad3 originalTile(cocos2d::CCPoint const&);
	cocos2d::_ccQuad3 tile(cocos2d::CCPoint const&);

	virtual void blit();
	virtual void reuse();
	virtual void calculateVertexPoints();
}

[[link(win, android)]]
class cocos2d::CCTiledGrid3DAction {
	static cocos2d::CCTiledGrid3DAction* create(float, cocos2d::CCSize const&);

	void setTile(cocos2d::CCPoint const&, cocos2d::_ccQuad3 const&);

	// CCTiledGrid3DAction(cocos2d::CCTiledGrid3DAction const&);
	// CCTiledGrid3DAction();
	cocos2d::_ccQuad3 originalTile(cocos2d::CCPoint const&);
	cocos2d::_ccQuad3 tile(cocos2d::CCPoint const&);

	virtual cocos2d::CCGridBase* getGrid();
}

[[link(win, android)]]
class cocos2d::CCTimer {
	static cocos2d::CCTimer* timerWithScriptHandler(int, float);
	static cocos2d::CCTimer* timerWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE);
	static cocos2d::CCTimer* timerWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE, float);

	bool initWithScriptHandler(int, float);
	bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE);
	bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE, float, unsigned int, float);

	float getInterval() const;
	int getScriptHandler();
	SEL_SCHEDULE getSelector() const;

	void setInterval(float);

	// CCTimer(cocos2d::CCTimer const&);
	// CCTimer();

	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCTintBy {
	static cocos2d::CCTintBy* create(float, short, short, short);

	bool initWithDuration(float, short, short, short);

	// CCTintBy(cocos2d::CCTintBy const&);
	// CCTintBy();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCTintTo {
	static cocos2d::CCTintTo* create(float, unsigned char, unsigned char, unsigned char);

	bool initWithDuration(float, unsigned char, unsigned char, unsigned char);

	// CCTintTo(cocos2d::CCTintTo const&);
	// CCTintTo();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCToggleVisibility {
	static cocos2d::CCToggleVisibility* create();

	// CCToggleVisibility(cocos2d::CCToggleVisibility const&);
	// CCToggleVisibility();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCTouch {
	cocos2d::CCPoint getDelta() const;
	int getID() const;
	cocos2d::CCPoint getLocation() const;
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
class cocos2d::CCTouchDelegate {
	// CCTouchDelegate(cocos2d::CCTouchDelegate const&);
	// CCTouchDelegate();

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

[[link(win, android)]]
class cocos2d::CCTouchHandler {
	static cocos2d::CCTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int);

	cocos2d::CCTouchDelegate* getDelegate();
	int getEnabledSelectors();
	int getPriority();

	void setDelegate(cocos2d::CCTouchDelegate*);
	void setEnalbedSelectors(int);
	void setPriority(int);

	// CCTouchHandler(cocos2d::CCTouchHandler const&);
	// CCTouchHandler();

	virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int);
}

[[link(win, android)]]
class cocos2d::CCTransitionCrossFade {
	static cocos2d::CCTransitionCrossFade* create(float, cocos2d::CCScene*);

	// CCTransitionCrossFade(cocos2d::CCTransitionCrossFade const&);
	// CCTransitionCrossFade();

	virtual void onEnter();
	virtual void onExit();
	virtual void draw();
}

[[link(win, android)]]
class cocos2d::CCTransitionEaseScene {
	// CCTransitionEaseScene(cocos2d::CCTransitionEaseScene const&);
	// CCTransitionEaseScene();
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeBL {
	static cocos2d::CCTransitionFadeBL* create(float, cocos2d::CCScene*);

	// CCTransitionFadeBL(cocos2d::CCTransitionFadeBL const&);
	// CCTransitionFadeBL();

	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeDown {
	static cocos2d::CCTransitionFadeDown* create(float, cocos2d::CCScene*);

	// CCTransitionFadeDown(cocos2d::CCTransitionFadeDown const&);
	// CCTransitionFadeDown();

	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeTR {
	static cocos2d::CCTransitionFadeTR* create(float, cocos2d::CCScene*);

	// CCTransitionFadeTR(cocos2d::CCTransitionFadeTR const&);
	// CCTransitionFadeTR();

	virtual void onEnter();
	virtual void sceneOrder();
	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeUp {
	static cocos2d::CCTransitionFadeUp* create(float, cocos2d::CCScene*);

	// CCTransitionFadeUp(cocos2d::CCTransitionFadeUp const&);
	// CCTransitionFadeUp();

	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipAngular {
	static cocos2d::CCTransitionFlipAngular* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionFlipAngular(cocos2d::CCTransitionFlipAngular const&);
	// CCTransitionFlipAngular();

	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipX {
	static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionFlipX(cocos2d::CCTransitionFlipX const&);
	// CCTransitionFlipX();

	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipY {
	static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionFlipY(cocos2d::CCTransitionFlipY const&);
	// CCTransitionFlipY();

	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionJumpZoom {
	static cocos2d::CCTransitionJumpZoom* create(float, cocos2d::CCScene*);

	// CCTransitionJumpZoom(cocos2d::CCTransitionJumpZoom const&);
	// CCTransitionJumpZoom();

	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInB {
	static cocos2d::CCTransitionMoveInB* create(float, cocos2d::CCScene*);

	// CCTransitionMoveInB(cocos2d::CCTransitionMoveInB const&);
	// CCTransitionMoveInB();

	virtual void initScenes();
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInL {
	static cocos2d::CCTransitionMoveInL* create(float, cocos2d::CCScene*);

	// CCTransitionMoveInL(cocos2d::CCTransitionMoveInL const&);
	// CCTransitionMoveInL();

	virtual void onEnter();
	virtual void initScenes();
	virtual cocos2d::CCActionInterval* action();

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInR {
	static cocos2d::CCTransitionMoveInR* create(float, cocos2d::CCScene*);

	// CCTransitionMoveInR(cocos2d::CCTransitionMoveInR const&);
	// CCTransitionMoveInR();

	virtual void initScenes();
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInT {
	static cocos2d::CCTransitionMoveInT* create(float, cocos2d::CCScene*);

	// CCTransitionMoveInT(cocos2d::CCTransitionMoveInT const&);
	// CCTransitionMoveInT();

	virtual void initScenes();
}

[[link(win, android)]]
class cocos2d::CCTransitionPageTurn {
	static cocos2d::CCTransitionPageTurn* create(float, cocos2d::CCScene*, bool);

	// CCTransitionPageTurn(cocos2d::CCTransitionPageTurn const&);
	// CCTransitionPageTurn();
	cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);

	virtual void onEnter();
	virtual void sceneOrder();
	virtual bool initWithDuration(float, cocos2d::CCScene*, bool);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgress {
	static cocos2d::CCTransitionProgress* create(float, cocos2d::CCScene*);

	// CCTransitionProgress(cocos2d::CCTransitionProgress const&);
	// CCTransitionProgress();

	virtual void onEnter();
	virtual void onExit();
	virtual void sceneOrder();
	virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
	virtual void setupTransition();
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressHorizontal {
	static cocos2d::CCTransitionProgressHorizontal* create(float, cocos2d::CCScene*);

	// CCTransitionProgressHorizontal(cocos2d::CCTransitionProgressHorizontal const&);
	// CCTransitionProgressHorizontal();

	virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressInOut {
	static cocos2d::CCTransitionProgressInOut* create(float, cocos2d::CCScene*);

	// CCTransitionProgressInOut(cocos2d::CCTransitionProgressInOut const&);
	// CCTransitionProgressInOut();

	virtual void sceneOrder();
	virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
	virtual void setupTransition();
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressOutIn {
	static cocos2d::CCTransitionProgressOutIn* create(float, cocos2d::CCScene*);

	// CCTransitionProgressOutIn(cocos2d::CCTransitionProgressOutIn const&);
	// CCTransitionProgressOutIn();

	virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCCW {
	static cocos2d::CCTransitionProgressRadialCCW* create(float, cocos2d::CCScene*);

	// CCTransitionProgressRadialCCW(cocos2d::CCTransitionProgressRadialCCW const&);
	// CCTransitionProgressRadialCCW();

	virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCW {
	static cocos2d::CCTransitionProgressRadialCW* create(float, cocos2d::CCScene*);

	// CCTransitionProgressRadialCW(cocos2d::CCTransitionProgressRadialCW const&);
	// CCTransitionProgressRadialCW();

	virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressVertical {
	static cocos2d::CCTransitionProgressVertical* create(float, cocos2d::CCScene*);

	// CCTransitionProgressVertical(cocos2d::CCTransitionProgressVertical const&);
	// CCTransitionProgressVertical();

	virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCTransitionRotoZoom {
	static cocos2d::CCTransitionRotoZoom* create(float, cocos2d::CCScene*);

	// CCTransitionRotoZoom(cocos2d::CCTransitionRotoZoom const&);
	// CCTransitionRotoZoom();

	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionSceneOriented* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionSceneOriented(cocos2d::CCTransitionSceneOriented const&);
	// CCTransitionSceneOriented();

	virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::tOrientation);
}

[[link(win, android)]]
class cocos2d::CCTransitionShrinkGrow {
	static cocos2d::CCTransitionShrinkGrow* create(float, cocos2d::CCScene*);

	// CCTransitionShrinkGrow(cocos2d::CCTransitionShrinkGrow const&);
	// CCTransitionShrinkGrow();

	virtual void onEnter();

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInB {
	static cocos2d::CCTransitionSlideInB* create(float, cocos2d::CCScene*);

	// CCTransitionSlideInB(cocos2d::CCTransitionSlideInB const&);
	// CCTransitionSlideInB();

	virtual void sceneOrder();
	virtual void initScenes();
	virtual cocos2d::CCActionInterval* action();
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInL {
	static cocos2d::CCTransitionSlideInL* create(float, cocos2d::CCScene*);

	// CCTransitionSlideInL(cocos2d::CCTransitionSlideInL const&);
	// CCTransitionSlideInL();

	virtual void onEnter();
	virtual void sceneOrder();
	virtual void initScenes();
	virtual cocos2d::CCActionInterval* action();

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInR {
	static cocos2d::CCTransitionSlideInR* create(float, cocos2d::CCScene*);

	// CCTransitionSlideInR(cocos2d::CCTransitionSlideInR const&);
	// CCTransitionSlideInR();

	virtual void sceneOrder();
	virtual void initScenes();
	virtual cocos2d::CCActionInterval* action();
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInT {
	static cocos2d::CCTransitionSlideInT* create(float, cocos2d::CCScene*);

	// CCTransitionSlideInT(cocos2d::CCTransitionSlideInT const&);
	// CCTransitionSlideInT();

	virtual void sceneOrder();
	virtual void initScenes();
	virtual cocos2d::CCActionInterval* action();
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitCols {
	static cocos2d::CCTransitionSplitCols* create(float, cocos2d::CCScene*);

	// CCTransitionSplitCols(cocos2d::CCTransitionSplitCols const&);
	// CCTransitionSplitCols();

	virtual void onEnter();
	virtual cocos2d::CCActionInterval* action();

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitRows {
	static cocos2d::CCTransitionSplitRows* create(float, cocos2d::CCScene*);

	// CCTransitionSplitRows(cocos2d::CCTransitionSplitRows const&);
	// CCTransitionSplitRows();

	virtual cocos2d::CCActionInterval* action();
}

[[link(win, android)]]
class cocos2d::CCTransitionTurnOffTiles {
	static cocos2d::CCTransitionTurnOffTiles* create(float, cocos2d::CCScene*);

	// CCTransitionTurnOffTiles(cocos2d::CCTransitionTurnOffTiles const&);
	// CCTransitionTurnOffTiles();

	virtual void onEnter();
	virtual void sceneOrder();

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipAngular {
	static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionZoomFlipAngular(cocos2d::CCTransitionZoomFlipAngular const&);
	// CCTransitionZoomFlipAngular();

	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipX {
	static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionZoomFlipX(cocos2d::CCTransitionZoomFlipX const&);
	// CCTransitionZoomFlipX();

	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipY {
	static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionZoomFlipY(cocos2d::CCTransitionZoomFlipY const&);
	// CCTransitionZoomFlipY();

	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTurnOffTiles {
	static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&);
	static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&, unsigned int);

	// CCTurnOffTiles(cocos2d::CCTurnOffTiles const&);
	// CCTurnOffTiles();
	void shuffle(unsigned int*, unsigned int);
	void turnOffTile(cocos2d::CCPoint const&);
	void turnOnTile(cocos2d::CCPoint const&);

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int);
}

[[link(win, android)]]
class cocos2d::CCTwirl {
	static cocos2d::CCTwirl* create(float, cocos2d::CCSize const&, cocos2d::CCPoint, unsigned int, float);

	bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint, unsigned int, float);

	float getAmplitude();
	float getAmplitudeRate();
	cocos2d::CCPoint const& getPosition();

	void setAmplitude(float);
	void setAmplitudeRate(float);
	void setPosition(cocos2d::CCPoint const&);

	// CCTwirl(cocos2d::CCTwirl const&);
	// CCTwirl();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
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
	static cocos2d::CCWaves3D* create(float, cocos2d::CCSize const&, unsigned int, float);

	bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);

	float getAmplitude();
	float getAmplitudeRate();

	void setAmplitude(float);
	void setAmplitudeRate(float);

	// CCWaves3D(cocos2d::CCWaves3D const&);
	// CCWaves3D();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCWaves {
	static cocos2d::CCWaves* create(float, cocos2d::CCSize const&, unsigned int, float, bool, bool);

	bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float, bool, bool);

	float getAmplitude();
	float getAmplitudeRate();

	void setAmplitude(float);
	void setAmplitudeRate(float);

	// CCWaves(cocos2d::CCWaves const&);
	// CCWaves();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCWavesTiles3D {
	static cocos2d::CCWavesTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float);

	float getAmplitude();
	float getAmplitudeRate();

	void setAmplitude(float);
	void setAmplitudeRate(float);

	// CCWavesTiles3D(cocos2d::CCWavesTiles3D const&);
	// CCWavesTiles3D();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);
}

[[link(win, android)]]
class cocos2d::CCZone {
	// CCZone(cocos2d::CCObject*);
}

[[link(win, android)]]
class cocos2d::EGLTouchDelegate {
	// EGLTouchDelegate(cocos2d::EGLTouchDelegate const&);
	// EGLTouchDelegate();
}

[[link(win, android)]]
class ObjectDecoder {
	static ObjectDecoder* sharedDecoder();

	cocos2d::CCObject* getDecodedObject(int, DS_Dictionary*);
	ObjectDecoderDelegate* getDelegate() const;

	void setDelegate(ObjectDecoderDelegate*);

	// ObjectDecoder(ObjectDecoder const&);
	// ObjectDecoder();

	virtual bool init();
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
class cocos2d::CCDevice {
	static int getDPI();
}
