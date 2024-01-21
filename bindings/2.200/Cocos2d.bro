
[[link(win, android)]]
class cocos2d::CCFileUtils {
	// CCFileUtils();
	// CCFileUtils(cocos2d::CCFileUtils const&);
	virtual void addSearchPath(char const*);
	virtual void addSearchResolutionsOrder(char const*);
	virtual gd::string addSuffix(gd::string, gd::string) = mac 0x419590;
	virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(gd::string const&);
	virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(gd::string const&);
	virtual gd::string fullPathForFilename(char const*, bool);
	virtual char const* fullPathFromRelativeFile(char const*, char const*);
	gd::string getAndroidPath() const;
	virtual unsigned char* getFileData(char const*, char const*, unsigned long*);
	virtual unsigned char* getFileDataFromZip(char const*, char const*, unsigned long*);
	virtual gd::string getFullPathForDirectoryAndFilename(gd::string const&, gd::string const&) = mac 0x41bb20;
	virtual gd::string getNewFilename(char const*) = mac 0x419400;
	virtual gd::string getPathForFilename(gd::string const&, gd::string const&, gd::string const&) = mac 0x4197b0;
	virtual gd::vector<gd::string> const& getSearchPaths();
	virtual gd::vector<gd::string> const& getSearchResolutionsOrder();
	virtual gd::string getWritablePath2() = mac 0x41bd50;
	virtual bool init() = mac 0x4190a0;
	virtual bool isAbsolutePath(gd::string const&) = mac 0x41bc90;
	virtual bool isPopupNotify() = mac 0x41bcc0;
	virtual void loadFilenameLookupDictionaryFromFile(char const*);
	virtual void purgeCachedEntries();
	static void purgeFileUtils();
	void removeAllPaths();
	virtual void removeFullPath(char const*);
	virtual void removeSearchPath(char const*);
	void setAndroidPath(gd::string);
	virtual void setFilenameLookupDictionary(cocos2d::CCDictionary*);
	virtual void setPopupNotify(bool) = mac 0x41bcb0;
	virtual void setSearchPaths(gd::vector<gd::string> const&);
	virtual void setSearchResolutionsOrder(gd::vector<gd::string> const&);
	static cocos2d::CCFileUtils* sharedFileUtils() = mac 0x5d0020;
	virtual bool shouldUseHD() = mac 0x419560;
	virtual bool writeToFile(cocos2d::CCDictionary*, gd::string const&);
}

[[link(win, android)]]
class cocos2d::CCClippingNode {
	static cocos2d::CCClippingNode* create(cocos2d::CCNode*);
	static cocos2d::CCClippingNode* create() = mac 0x6e27c0;

	float getAlphaThreshold() const;
	cocos2d::CCNode* getStencil() const;

	void setAlphaThreshold(float) = mac 0x6e2ed0;
	void setInverted(bool) = mac 0x6e2ef0;
	void setStencil(cocos2d::CCNode*) = mac 0x6e2e80;

	// CCClippingNode();
	// CCClippingNode(cocos2d::CCClippingNode const&);
	bool isInverted() const;

	virtual bool init();
	virtual void onEnter() = mac 0x6e2990;
	virtual void onEnterTransitionDidFinish() = mac 0x6e29c0;
	virtual void onExit() = mac 0x6e2a20;
	virtual void onExitTransitionDidStart() = mac 0x6e29f0;
	virtual void visit() = mac 0x6e2a50;
	virtual bool init(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCCallFunc {
	static cocos2d::CCCallFunc* create(int);
	static cocos2d::CCCallFunc* create(cocos2d::CCObject*, cocos2d::SEL_CallFunc) = mac 0x76e860;

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
class cocos2d::CCFadeTo {
	static cocos2d::CCFadeTo* create(float, unsigned char) = mac 0x398fc0;

	bool initWithDuration(float, unsigned char);

	// CCFadeTo(cocos2d::CCFadeTo const&);
	// CCFadeTo();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCNode {
	static cocos2d::CCNode* create() = mac 0x250d20;
	static void resetGlobalOrderOfArrival();

	// CCNode(cocos2d::CCNode const&);
	CCNode() = mac 0x2501f0;
    ~CCNode() = mac 0x250390;
	
	cocos2d::CCAction* getActionByTag(int);
	cocos2d::CCComponent* getComponent(char const*) const;
	int getScriptHandler();
	cocos2d::CCAffineTransform getTransformTemp();
	bool getUseChildIndex();

	void setAdditionalTransform(cocos2d::CCAffineTransform const&);
	void setUseChildIndex(bool);

	cocos2d::CCRect boundingBox() = mac 0x250cb0;
	void childrenAlloc();
	cocos2d::CCPoint convertToNodeSpace(cocos2d::CCPoint const&) = mac 0x252c70;
	cocos2d::CCPoint convertToNodeSpaceAR(cocos2d::CCPoint const&);
	cocos2d::CCPoint convertToWindowSpace(cocos2d::CCPoint const&);
	cocos2d::CCPoint convertToWorldSpace(cocos2d::CCPoint const&) = mac 0x252cb0;
	cocos2d::CCPoint convertToWorldSpaceAR(cocos2d::CCPoint const&);
	cocos2d::CCPoint convertTouchToNodeSpace(cocos2d::CCTouch*);
	cocos2d::CCPoint convertTouchToNodeSpaceAR(cocos2d::CCTouch*);
	char const* description();
	void detachChild(cocos2d::CCNode*, bool);
	void insertChild(cocos2d::CCNode*, int);
	unsigned int numberOfRunningActions();
	void pauseSchedulerAndActions();
	void qsortAllChildrenWithIndex();
	void resumeSchedulerAndActions() = mac 0x251c40;
	cocos2d::CCAction* runAction(cocos2d::CCAction*) = mac 0x251f90;
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
	void stopActionByTag(int) = mac 0x251fe0;
	void stopAllActions() = mac 0x250e10;
	void transform();
	void transformAncestors();
	void unschedule(cocos2d::SEL_SCHEDULE);
	void unscheduleAllSelectors();
	void unscheduleUpdate();
	void updateChildIndexes();

	virtual unsigned int getChildrenCount() const = mac 0x250900;
	virtual cocos2d::CCSize const& getContentSize() const = mac 0x250a80;
	virtual void update(float) = mac 0x2522a0;
	virtual bool init() = mac 0x250530;
	virtual void setZOrder(int) = mac 0x2505c0;
	virtual void _setZOrder(int) = mac 0x2505b0;
	virtual int getZOrder() = mac 0x2505a0;
	virtual void setVertexZ(float) = mac 0x250610;
	virtual float getVertexZ() = mac 0x250600;
	virtual void setScaleX(float) = mac 0x250730;
	virtual float getScaleX() = mac 0x250720;
	virtual void setScaleY(float) = mac 0x250760;
	virtual float getScaleY() = mac 0x250750;
	virtual void setScale(float) = mac 0x2506e0;
	virtual float getScale() = mac 0x250720;
	virtual void setScale(float, float) = mac 0x250700;
	virtual void setPosition(cocos2d::CCPoint const&) = mac 0x250790;
	virtual cocos2d::CCPoint const& getPosition() = mac 0x250780;
	virtual void setPosition(float, float) = mac 0x2507d0;
	virtual void getPosition(float*, float*) = mac 0x2507b0;
	virtual void setPositionX(float) = mac 0x250830;
	virtual float getPositionX() = mac 0x250810;
	virtual void setPositionY(float) = mac 0x250870;
	virtual float getPositionY() = mac 0x250820;
	virtual void setSkewX(float) = mac 0x250550;
	virtual float getSkewX() = mac 0x250540;
	virtual void setSkewY(float) = mac 0x250580;
	virtual float getSkewY() = mac 0x250570;
	virtual void setAnchorPoint(cocos2d::CCPoint const&) = mac 0x250a00;
	virtual cocos2d::CCPoint const& getAnchorPoint() = mac 0x2509f0;
	virtual cocos2d::CCPoint const& getAnchorPointInPoints() = mac 0x2509e0;
	virtual void setContentSize(cocos2d::CCSize const&) = mac 0x250ac0;
	virtual cocos2d::CCSize getScaledContentSize() = mac 0x250a90;
	virtual void setVisible(bool) = mac 0x2509d0;
	virtual bool isVisible() = mac 0x2509c0;
	virtual void setRotation(float) = mac 0x250630;
	virtual float getRotation() = mac 0x250620;
	virtual void setRotationX(float) = mac 0x250680;
	virtual float getRotationX() = mac 0x250670;
	virtual void setRotationY(float) = mac 0x2506b0;
	virtual float getRotationY() = mac 0x2506a0;
	virtual void setOrderOfArrival(unsigned int) = mac 0x250be0;
	virtual unsigned int getOrderOfArrival() = mac 0x250bd0;
	virtual void setGLServerState(cocos2d::ccGLServerState) = mac 0x250c20;
	virtual cocos2d::ccGLServerState getGLServerState() = mac 0x250c10;
	virtual void ignoreAnchorPointForPosition(bool) = mac 0x250b80;
	virtual bool isIgnoreAnchorPointForPosition() = mac 0x250b70;
	virtual void addChild(cocos2d::CCNode*) = mac 0x251070;
	virtual void addChild(cocos2d::CCNode*, int) = mac 0x251050;
	virtual void addChild(cocos2d::CCNode*, int, int) = mac 0x250f20;
	virtual cocos2d::CCNode* getChildByTag(int) = mac 0x250ea0;
	virtual cocos2d::CCArray* getChildren() = mac 0x2508b0;
	virtual void setParent(cocos2d::CCNode*) = mac 0x250b60;
	virtual cocos2d::CCNode* getParent() = mac 0x250b50;
	virtual void removeFromParent() = mac 0x251090;
	virtual void removeFromParentAndCleanup(bool) = mac 0x2510b0;
	virtual void removeMeAndCleanup() = mac 0x2510e0;
	virtual void removeChild(cocos2d::CCNode*) = mac 0x251100;
	virtual void removeChild(cocos2d::CCNode*, bool) = mac 0x251120;
	virtual void removeChildByTag(int) = mac 0x251270;
	virtual void removeChildByTag(int, bool) = mac 0x251290;
	virtual void removeAllChildren() = mac 0x2512d0;
	virtual void removeAllChildrenWithCleanup(bool) = mac 0x2512f0;
	virtual void reorderChild(cocos2d::CCNode*, int) = mac 0x251410;
	virtual void sortAllChildren() = mac 0x251550;
	virtual cocos2d::CCGridBase* getGrid() = mac 0x250970;
	virtual void setGrid(cocos2d::CCGridBase*) = mac 0x250980;
	virtual void* getUserData() = mac 0x250bb0;
	virtual void setUserData(void*) = mac 0x250bc0;
	virtual cocos2d::CCObject* getUserObject() = mac 0x250c00;
	virtual void setUserObject(cocos2d::CCObject*) = mac 0x250c30;
	virtual cocos2d::CCGLProgram* getShaderProgram() = mac 0x250bf0;
	virtual void setShaderProgram(cocos2d::CCGLProgram*) = mac 0x250c70;
	virtual cocos2d::CCCamera* getCamera() = mac 0x250920;
	virtual bool isRunning() = mac 0x250b40;
	virtual void registerScriptHandler(int) = mac 0x251ec0;
	virtual void unregisterScriptHandler() = mac 0x251ef0;
	virtual void onEnter() = mac 0x251b60;
	virtual void onEnterTransitionDidFinish() = mac 0x251c80;
	virtual void onExit() = mac 0x251da0;
	virtual void onExitTransitionDidStart() = mac 0x251d00;
	virtual void cleanup() = mac 0x250d80;
	virtual void draw() = mac 0x251920;
	virtual void visit() = mac 0x251930;
	virtual void setActionManager(cocos2d::CCActionManager*) = mac 0x251f30;
	virtual cocos2d::CCActionManager* getActionManager() = mac 0x251f80;
	virtual void setScheduler(cocos2d::CCScheduler*) = mac 0x252040;
	virtual cocos2d::CCScheduler* getScheduler() = mac 0x252090;
	virtual void updateTransform() = mac 0x252f00;
	virtual cocos2d::CCAffineTransform const nodeToParentTransform() = mac 0x252310;
	virtual cocos2d::CCAffineTransform const nodeToParentTransformFast() = mac 0x252620;
	virtual cocos2d::CCAffineTransform const parentToNodeTransform() = mac 0x252a90;
	virtual cocos2d::CCAffineTransform nodeToWorldTransform() = mac 0x252b10;
	virtual cocos2d::CCAffineTransform nodeToWorldTransformFast() = mac 0x252ba0;
	virtual cocos2d::CCAffineTransform worldToNodeTransform() = mac 0x252c30;
	virtual bool addComponent(cocos2d::CCComponent*) = mac 0x252f70;
	virtual bool removeComponent(char const*) = mac 0x252f90;
	virtual bool removeComponent(cocos2d::CCComponent*) = mac 0x252fb0;
	virtual void removeAllComponents() = mac 0x252fd0;
	virtual void updateTweenAction(float, char const*) = mac 0x252ee0;
	virtual void updateTweenActionInt(float, int) = mac 0x252ef0;
}

[[link(win, android)]]
class cocos2d::CCString {
	// static cocos2d::CCString* create(gd::string const&);
	static cocos2d::CCString* createWithContentsOfFile(char const*) = mac 0x76cee0;
	static cocos2d::CCString* createWithData(unsigned char const*, unsigned long) = mac 0x76cc10;
	// static cocos2d::CCString* createWithFormat(char const*, ...);

	// bool initWithFormat(char const*, ...);
	// bool initWithFormatAndValist(char const*, char*);

	char const* getCString() const = mac 0x76c510;

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
class cocos2d::CCScene {
	static cocos2d::CCScene* create() = mac 0x26ec40;

	int getHighestChildZ() = mac 0x26ecf0;

	// CCScene(cocos2d::CCScene const&);
	// CCScene();

	virtual bool init();
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

	virtual void update(float) = mac 0x421a70;
}

[[link(win, android)]]
class cocos2d::CCLayer {
	static cocos2d::CCLayer* create() = mac 0x48c2b0;

	// CCLayer(cocos2d::CCLayer const&);
	CCLayer() = mac 0x48bcf0;
    ~CCLayer() = mac 0x48bfe0;

	cocos2d::CCScriptHandlerEntry* getScriptAccelerateHandlerEntry();
	cocos2d::CCScriptHandlerEntry* getScriptKeypadHandlerEntry();
	cocos2d::CCTouchScriptHandlerEntry* getScriptTouchHandlerEntry();

	int excuteScriptTouchHandler(int, cocos2d::CCSet*);
	int excuteScriptTouchHandler(int, cocos2d::CCTouch*);
	void registerScriptAccelerateHandler(int);
	void registerScriptKeypadHandler(int);
	void unregisterScriptAccelerateHandler();
	void unregisterScriptKeypadHandler();

	virtual bool init() = mac 0x48c250;
	virtual void onEnter() = mac 0x48cb40;
	virtual void onEnterTransitionDidFinish() = mac 0x48ccd0;
	virtual void onExit() = mac 0x48cc00;
	virtual void registerWithTouchDispatcher() = mac 0x48c3d0;
	virtual void registerScriptTouchHandler(int, bool, int, bool) = mac 0x48c450;
	virtual void unregisterScriptTouchHandler() = mac 0x48c4b0;
	virtual bool isTouchEnabled() = mac 0x48c560;
	virtual void setTouchEnabled(bool) = mac 0x48c570;
	virtual void setTouchMode(cocos2d::ccTouchesMode) = mac 0x48c5e0;
	virtual int getTouchMode() = mac 0x48c690;
	virtual void setTouchPriority(int) = mac 0x48c630;
	virtual int getTouchPriority() = mac 0x48c680;
	virtual bool isAccelerometerEnabled() = mac 0x48c6a0;
	virtual void setAccelerometerEnabled(bool) = mac 0x48c6b0;
	virtual void setAccelerometerInterval(double) = mac 0x48c6f0;
	virtual bool isKeypadEnabled() = mac 0x48c7f0;
	virtual void setKeypadEnabled(bool) = mac 0x48c800;
	virtual bool isKeyboardEnabled() = mac 0x48c870;
	virtual void setKeyboardEnabled(bool) = mac 0x48c880;
	virtual bool isMouseEnabled() = mac 0x48c8e0;
	virtual void setMouseEnabled(bool) = mac 0x48c8f0;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x48cd10;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x48cda0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x48ce20;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x48cea0;
	virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = mac 0x48cf20;
	virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = mac 0x48cfa0;
	virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = mac 0x48d020;
	virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = mac 0x48d0a0;
	virtual void setPreviousPriority(int) = mac 0xa660;
	virtual int getPreviousPriority() = mac 0xa670;

	virtual void didAccelerate(cocos2d::CCAcceleration*) = mac 0x48c720;

	virtual void keyBackClicked() = mac 0x48c9a0;
	virtual void keyMenuClicked() = mac 0x48ca40;

	virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x48cac0;
}

[[link(win, android)]]
class cocos2d::CCObject {
	static cocos2d::CCObject* createWithCoder(DS_Dictionary*);

	// CCObject(cocos2d::CCObject const&);
	CCObject() = mac 0x467020;
    ~CCObject() = mac 0x467130;

	cocos2d::CCObjectType getObjType() const;

	void setObjType(cocos2d::CCObjectType);

	cocos2d::CCObject* autorelease() = mac 0x467260;
	cocos2d::CCObject* copy();
	bool isSingleReference() const = mac 0x467290;
	void release() = mac 0x467230;
	void retain() = mac 0x467250;
	unsigned int retainCount() const;

	virtual int getTag() const = mac 0x4672e0;
	virtual bool isEqual(cocos2d::CCObject const*) = mac 0x4672b0;
	virtual void acceptVisitor(cocos2d::CCDataVisitor&) = mac 0x4672c0;
	virtual void encodeWithCoder(DS_Dictionary*) = mac 0x467300;
	virtual bool canEncode() = mac 0x467320;
	virtual void setTag(int) = mac 0x4672f0;
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
	static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&) = mac 0x48e8d0;
	static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&, float, float) = mac 0x48e710;
	static cocos2d::CCLayerColor* create();

	// CCLayerColor(cocos2d::CCLayerColor const&);
	CCLayerColor() = mac 0x48dee0;
	~CCLayerColor() = mac 0x48e290;

	void setVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);

	void addToVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);
	void changeHeight(float);
	void changeWidth(float);
	void changeWidthAndHeight(float, float);

	virtual bool init() = mac 0x48ea90;
	virtual void setContentSize(cocos2d::CCSize const&) = mac 0x48ec80;
	virtual void draw() = mac 0x48edc0;
	virtual bool initWithColor(cocos2d::_ccColor4B const&, float, float) = mac 0x48eae0;
	virtual bool initWithColor(cocos2d::_ccColor4B const&) = mac 0x48ebd0;
	virtual void updateColor() = mac 0x48ed70;

	virtual void setColor(cocos2d::_ccColor3B const&) = mac 0x48ee90;
	virtual void setOpacity(unsigned char) = mac 0x48f010;

	virtual void setBlendFunc(cocos2d::_ccBlendFunc);
	virtual cocos2d::_ccBlendFunc getBlendFunc();
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA {
	static cocos2d::CCLayerRGBA* create();

	// CCLayerRGBA(cocos2d::CCLayerRGBA const&);
	CCLayerRGBA() = mac 0x48d120;
	~CCLayerRGBA() = mac 0x48d490;

	virtual bool init() = mac 0x48d700;

	virtual void setColor(cocos2d::_ccColor3B const&) = mac 0x48d940;
	virtual cocos2d::_ccColor3B const& getColor() = mac 0x48d900;
	virtual cocos2d::_ccColor3B const& getDisplayedColor() = mac 0x48d920;
	virtual unsigned char getDisplayedOpacity() = mac 0x48d7a0;
	virtual unsigned char getOpacity() = mac 0x48d780;
	virtual void setOpacity(unsigned char) = mac 0x48d7c0;
	virtual bool isCascadeColorEnabled() = mac 0x48dea0;
	virtual void setCascadeColorEnabled(bool) = mac 0x48dec0;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = mac 0x48dc40;
	virtual bool isCascadeOpacityEnabled() = mac 0x48de60;
	virtual void setCascadeOpacityEnabled(bool) = mac 0x48de80;
	virtual void updateDisplayedOpacity(unsigned char) = mac 0x48dab0;
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
class cocos2d::CCTouchHandler {
	static cocos2d::CCTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int);

	cocos2d::CCTouchDelegate* getDelegate();
	int getEnabledSelectors();
	int getPriority() = mac 0x45d8e0;

	void setDelegate(cocos2d::CCTouchDelegate*);
	void setEnalbedSelectors(int);
	void setPriority(int);

	// CCTouchHandler(cocos2d::CCTouchHandler const&);
	// CCTouchHandler();

	virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int);
}

[[link(win, android)]]
class cocos2d::CCTextureCache {
	static void purgeSharedTextureCache();
	static void reloadAllTextures();
	static cocos2d::CCTextureCache* sharedTextureCache() = mac 0x5b1450;

	// CCTextureCache(cocos2d::CCTextureCache const&);
	// CCTextureCache();
	cocos2d::CCTexture2D* addETCImage(char const*);
	cocos2d::CCTexture2D* addImage(char const*, bool) = mac 0x5b2630;
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
class cocos2d::CCTouch {
	cocos2d::CCPoint getDelta() const;
	int getID() const;
	cocos2d::CCPoint getLocation() const = mac 0x5c750;
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

	virtual void setPreviousPriority(int) {}
	virtual int getPreviousPriority() { return 0; }
}

[[link(win, android)]]
class cocos2d::CCTouchDispatcher {
	bool init();

	int getTargetPrio() const;

	void setDispatchEvents(bool);
	void setPriority(int, cocos2d::CCTouchDelegate*);

	// CCTouchDispatcher(cocos2d::CCTouchDispatcher const&);
	// CCTouchDispatcher();
	void addPrioTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = mac 0x4a6ea0;
	void addStandardDelegate(cocos2d::CCTouchDelegate*, int);
	void addTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = mac 0x4a6ec0;
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
	void unregisterForcePrio(cocos2d::CCObject*) = mac 0x4a6e40;

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
	// rest are in extras
}

[[link(win, android)]]
class cocos2d::CCIMEDelegate {
	~CCIMEDelegate() = mac 0x497410;
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
	static cocos2d::CCDirector* sharedDirector() = mac 0x45eba0;

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
	cocos2d::CCSize getWinSize() = mac 0x45ff90;
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
	cocos2d::CCPoint convertToGL(cocos2d::CCPoint const&) = mac 0x4604c0;
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
	bool replaceScene(cocos2d::CCScene*) = mac 0x460950;
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
}


[[link(win, android)]]
class cocos2d::CCNodeRGBA {
	static cocos2d::CCNodeRGBA* create();

	// CCNodeRGBA(cocos2d::CCNodeRGBA const&);
	CCNodeRGBA() = mac 0x252ff0;
	~CCNodeRGBA() = mac 0x2530a0;

	virtual bool init() = mac 0x2530d0;

	virtual void setColor(cocos2d::_ccColor3B const&) = mac 0x2534f0;
	virtual cocos2d::_ccColor3B const& getColor() = mac 0x2534b0;
	virtual cocos2d::_ccColor3B const& getDisplayedColor() = mac 0x2534d0;
	virtual unsigned char getDisplayedOpacity() = mac 0x253180;
	virtual unsigned char getOpacity() = mac 0x253160;
	virtual void setOpacity(unsigned char) = mac 0x2531a0;
	virtual bool isCascadeColorEnabled() = mac 0x253880;
	virtual void setCascadeColorEnabled(bool) = mac 0x2538a0;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = mac 0x253660;
	virtual bool isCascadeOpacityEnabled() = mac 0x253470;
	virtual void setCascadeOpacityEnabled(bool) = mac 0x253490;
	virtual void updateDisplayedOpacity(unsigned char) = mac 0x2532e0;
}

[[link(win, android)]]
class cocos2d::CCRepeatForever {
	static cocos2d::CCRepeatForever* create(cocos2d::CCActionInterval*) = mac 0x394830;

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
class cocos2d::CCRotateBy {
	static cocos2d::CCRotateBy* create(float, float) = mac 0x395c00;
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
class cocos2d::CCSpriteFrameCache {
	static void purgeSharedSpriteFrameCache();
	static cocos2d::CCSpriteFrameCache* sharedSpriteFrameCache() = mac 0x2f85f0;

	bool init();

	// CCSpriteFrameCache();
	// CCSpriteFrameCache(cocos2d::CCSpriteFrameCache const&);
	void addSpriteFrame(cocos2d::CCSpriteFrame*, char const*);
	void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*) = mac 0x2f88d0;
	void addSpriteFramesWithFile(char const*, char const*);
	void addSpriteFramesWithFile(char const*) = mac 0x2f9470;
	void addSpriteFramesWithFile(char const*, cocos2d::CCTexture2D*);
	void removeSpriteFrameByName(char const*);
	void removeSpriteFrames();
	void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*);
	void removeSpriteFramesFromFile(char const*);
	void removeSpriteFramesFromTexture(cocos2d::CCTexture2D*);
	void removeUnusedSpriteFrames();
	cocos2d::CCSpriteFrame* spriteFrameByName(char const*) = mac 0x2fa330;
}


[[link(win, android)]]
class cocos2d::CCSpriteBatchNode {
	static cocos2d::CCSpriteBatchNode* create(char const*);
	static cocos2d::CCSpriteBatchNode* create(char const*, unsigned int);
	static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*);
	static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int);

	bool initWithFile(char const*, unsigned int);
	bool initWithTexture(cocos2d::CCTexture2D*, unsigned int) = mac 0x167320;

	int getAtlasCapacity();
	cocos2d::CCArray* getDescendants();
	bool getManualSortChildren() const;
	cocos2d::CCTextureAtlas* getTextureAtlas();
	int getUsedAtlasCapacity();

	void setManualSortChildren(bool);
	void setTextureAtlas(cocos2d::CCTextureAtlas*);

	// CCSpriteBatchNode(cocos2d::CCSpriteBatchNode const&);
	// CCSpriteBatchNode();
	~CCSpriteBatchNode() = mac 0x1676a0;
	cocos2d::CCSpriteBatchNode* addSpriteWithoutQuad(cocos2d::CCSprite*, unsigned int, int);
	void appendChild(cocos2d::CCSprite*) = mac 0x1678a0;
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
class cocos2d::CCSprite {
	static cocos2d::CCSprite* create(char const*) = mac 0x266400;
	static cocos2d::CCSprite* create(char const*, cocos2d::CCRect const&);
	static cocos2d::CCSprite* create();
	static cocos2d::CCSprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*) = mac 0x2665e0;
	static cocos2d::CCSprite* createWithSpriteFrameName(char const*) = mac 0x2666d0;
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
	void setFlipX(bool) = mac 0x2683b0;
	void setFlipY(bool) = mac 0x268400;
	void setTextureAtlas(cocos2d::CCTextureAtlas*);
	void setTlVertexMod(float);
	void setTrVertexMod(float);
	void setUseVertexMod(bool);

	// CCSprite(cocos2d::CCSprite const&);
	CCSprite() = mac 0x266b90;
	~CCSprite() = mac 0x266c90;
	bool isFlipX();
	bool isFlipY();
	bool isTextureRectRotated();
	void updateColor();

	virtual bool init() = mac 0x2667e0;
	virtual void setVertexZ(float) = mac 0x268250;
	virtual void setScaleX(float) = mac 0x2680f0;
	virtual void setScaleY(float) = mac 0x268160;
	virtual void setScale(float) = mac 0x2681d0;
	virtual void setPosition(cocos2d::CCPoint const&) = mac 0x267e40;
	virtual void setSkewX(float) = mac 0x268010;
	virtual void setSkewY(float) = mac 0x268080;
	virtual void setAnchorPoint(cocos2d::CCPoint const&) = mac 0x2682c0;
	virtual void setVisible(bool) = mac 0x268340;
	virtual void setRotation(float) = mac 0x267ec0;
	virtual void setRotationX(float) = mac 0x267f30;
	virtual void setRotationY(float) = mac 0x267fa0;
	virtual void ignoreAnchorPointForPosition(bool) = mac 0x268330;
	virtual void addChild(cocos2d::CCNode*) = mac 0x267980;
	virtual void addChild(cocos2d::CCNode*, int) = mac 0x267990;
	virtual void addChild(cocos2d::CCNode*, int, int) = mac 0x2679a0;
	virtual void removeChild(cocos2d::CCNode*, bool) = mac 0x267ae0;
	virtual void removeAllChildrenWithCleanup(bool) = mac 0x267b20;
	virtual void reorderChild(cocos2d::CCNode*, int) = mac 0x267a60;
	virtual void sortAllChildren() = mac 0x267be0;
	virtual void draw() = mac 0x267860;
	virtual void updateTransform() = mac 0x2673a0;
	virtual bool initWithTexture(cocos2d::CCTexture2D*) = mac 0x2669a0;
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = mac 0x266980;
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = mac 0x266800;
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = mac 0x266b00;
	virtual bool initWithSpriteFrameName(char const*) = mac 0x266b50;
	virtual bool initWithFile(char const*) = mac 0x266a10;
	virtual bool initWithFile(char const*, cocos2d::CCRect const&) = mac 0x266aa0;
	virtual void setChildColor(cocos2d::_ccColor3B const&) = mac 0x268950;
	virtual void setChildOpacity(unsigned char) = mac 0x268720;
	virtual cocos2d::CCSpriteBatchNode* getBatchNode() = mac 0x269140;
	virtual void setBatchNode(cocos2d::CCSpriteBatchNode*) = mac 0x269150;
	virtual void refreshTextureRect() = mac 0x266d50;
	virtual void setTextureRect(cocos2d::CCRect const&) = mac 0x266de0;
	virtual void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&) = mac 0x266e00;
	virtual void setVertexRect(cocos2d::CCRect const&) = mac 0x267140;
	virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = mac 0x268e30;
	virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = mac 0x268f00;
	virtual cocos2d::CCSpriteFrame* displayFrame() = mac 0x268f90;
	virtual void setDisplayFrameWithAnimationName(char const*, int);
	virtual void setTextureCoords(cocos2d::CCRect const&) = mac 0x267160;
	virtual void updateBlendFunc() = mac 0x2691c0;
	virtual void setReorderChildDirtyRecursively() = mac 0x267d60;
	virtual void setDirtyRecursively(bool) = mac 0x267dc0;

	virtual void setColor(cocos2d::_ccColor3B const&) = mac 0x2687d0;
	virtual void setOpacity(unsigned char) = mac 0x268570;
	virtual void setOpacityModifyRGB(bool) = mac 0x268a00;
	virtual bool isOpacityModifyRGB() = mac 0x268b50;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = mac 0x268b70;
	virtual void updateDisplayedOpacity(unsigned char) = mac 0x268cd0;

	virtual cocos2d::CCTexture2D* getTexture() = mac 0x269390;
	virtual void setTexture(cocos2d::CCTexture2D*) = mac 0x269220;
}

[[link(win, android)]]
class cocos2d::CCLabelBMFont {
	~CCLabelBMFont() = mac 0x59d2f0;
	static cocos2d::CCLabelBMFont* create(char const*, char const*) = mac 0x59cc60;
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float);
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment);
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint);
	static cocos2d::CCLabelBMFont* create();
	static cocos2d::CCLabelBMFont* createBatched(char const*, char const*, cocos2d::CCArray*, int);
	static void purgeCachedData();

	bool initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = mac 0x59cd10;

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
	void createFontChars() = mac 0x59d440;
	int kerningAmountForFirst(unsigned short, unsigned short);
	void limitLabelWidth(float, float, float) = mac 0x5a09b0;

	virtual bool init() = mac 0x59d090;
	virtual void setScaleX(float) = mac 0x5a0850;
	virtual void setScaleY(float) = mac 0x5a0870;
	virtual void setScale(float) = mac 0x5a0830;
	virtual void setAnchorPoint(cocos2d::CCPoint const&) = mac 0x59e910;
	virtual void setString(char const*, bool) = mac 0x59de40;
	virtual void setCString(char const*) = mac 0x59e0e0;
	virtual void updateLabel() = mac 0x59e950;
	virtual void setAlignment(cocos2d::CCTextAlignment) = mac 0x5a07d0;
	virtual void setWidth(float) = mac 0x5a07f0;
	virtual void setLineBreakWithoutSpace(bool) = mac 0x5a0810;
	virtual void setString(unsigned short*, bool) = mac 0x59dec0;

	virtual void setString(char const*) = mac 0x59ddf0;
	virtual char const* getString() = mac 0x59e090;

	virtual void setColor(cocos2d::_ccColor3B const&) = mac 0x59e140;
	virtual cocos2d::_ccColor3B const& getColor() = mac 0x59e100;
	virtual cocos2d::_ccColor3B const& getDisplayedColor() = mac 0x59e120;
	virtual unsigned char getDisplayedOpacity() = mac 0x59e2d0;
	virtual unsigned char getOpacity() = mac 0x59e2b0;
	virtual void setOpacity(unsigned char) = mac 0x59e2f0;
	virtual void setOpacityModifyRGB(bool) = mac 0x59e430;
	virtual bool isOpacityModifyRGB() = mac 0x59e5b0;
	virtual bool isCascadeColorEnabled() = mac 0x59e890;
	virtual void setCascadeColorEnabled(bool) = mac 0x59e8b0;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = mac 0x59e6e0;
	virtual bool isCascadeOpacityEnabled() = mac 0x59e8d0;
	virtual void setCascadeOpacityEnabled(bool) = mac 0x59e8f0;
	virtual void updateDisplayedOpacity(unsigned char) = mac 0x59e5d0;
}

[[link(win, android)]]
class cocos2d::CCActionManager {
	cocos2d::CCAction* getActionByTag(unsigned int, cocos2d::CCObject*);

	// CCActionManager(cocos2d::CCActionManager const&);
	// CCActionManager();
	void actionAllocWithHashElement(cocos2d::_hashElement*);
	void addAction(cocos2d::CCAction*, cocos2d::CCNode*, bool) = mac 0x212f20;
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
class cocos2d::CCApplication {
	static cocos2d::CCApplication* sharedApplication() = mac 0x3065c0;
	virtual void openURL(char const*);
}

[[link(win, android)]]
class cocos2d::CCArray {
	// static cocos2d::CCArray* create(cocos2d::CCObject*, ...);
	static cocos2d::CCArray* create() = mac 0x6e3140;
	static cocos2d::CCArray* createWithArray(cocos2d::CCArray*);
	static cocos2d::CCArray* createWithCapacity(unsigned int) = mac 0x6e3450;
	static cocos2d::CCArray* createWithContentsOfFile(char const*);
	static cocos2d::CCArray* createWithContentsOfFileThreadSafe(char const*);
	static cocos2d::CCArray* createWithObject(cocos2d::CCObject*);

	bool init();
	bool initWithArray(cocos2d::CCArray*);
	bool initWithCapacity(unsigned int) = mac 0x6e30b0;
	bool initWithObject(cocos2d::CCObject*);
	// bool initWithObjects(cocos2d::CCObject*, ...);

	// CCArray(cocos2d::CCArray const&);
	// CCArray(unsigned int);
	// CCArray();
	// ~CCArray() = mac 0x6e3bb0;
	void addObject(cocos2d::CCObject*) = mac 0x6e3420;
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
	void insertObject(cocos2d::CCObject*, unsigned int) = mac 0x6e3930;
	bool isEqualToArray(cocos2d::CCArray*);
	cocos2d::CCObject* lastObject();
	cocos2d::CCObject* objectAtIndex(unsigned int) = mac 0x6e37f0;
	cocos2d::CCObject* randomObject();
	void recreateNewIndexes();
	void reduceMemoryFootprint();
	void removeAllObjects();
	void removeLastObject(bool);
	void removeObject(cocos2d::CCObject*, bool) = mac 0x6e3960;
	void removeObjectAtIndex(unsigned int, bool);
	void removeObjectAtIndexChild(unsigned int, bool) = mac 0x6e3980;
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
class cocos2d::CCDelayTime {
	static cocos2d::CCDelayTime* create(float) = mac 0x395330;

	// CCDelayTime(cocos2d::CCDelayTime const&);
	// CCDelayTime();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCSequence {
	static cocos2d::CCSequence* create(cocos2d::CCArray*) = mac 0x393740;
	// static cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, ...);
	static cocos2d::CCSequence* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);
	static cocos2d::CCSequence* createWithVariableList(cocos2d::CCFiniteTimeAction*, va_list) = mac 0x3937f0;

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

	bool initWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = mac 0x39e2b0;

	// CCMenuItemSprite(cocos2d::CCMenuItemSprite const&);
	// CCMenuItemSprite();

	virtual void selected() = mac 0x39e3a0;
	virtual void unselected();
	virtual void setEnabled(bool) = mac 0x39e4c0;
	virtual cocos2d::CCNode* getNormalImage() = mac 0x39def0;
	virtual void setNormalImage(cocos2d::CCNode*) = mac 0x39df00;
	virtual cocos2d::CCNode* getSelectedImage() = mac 0x39dfc0;
	virtual void setSelectedImage(cocos2d::CCNode*) = mac 0x39dfd0;
	virtual cocos2d::CCNode* getDisabledImage() = mac 0x39e060;
	virtual void setDisabledImage(cocos2d::CCNode*) = mac 0x39e070;
	virtual void updateImagesVisibility() = mac 0x39e4e0;
}

[[link(win, android)]]
class cocos2d::CCMenuItem {
	~CCMenuItem() = mac 0x39cc20;
	static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	static cocos2d::CCMenuItem* create();

	bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = mac 0x39cb40;

	int getScriptTapHandler();

	void setTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = mac 0x39ce70;

	// CCMenuItem(cocos2d::CCMenuItem const&);
	// CCMenuItem();
	cocos2d::CCRect rect();

	virtual void activate() = mac 0x39cd80;
	virtual void selected() = mac 0x39ccf0;
	virtual void unselected() = mac 0x39cd00;
	virtual void registerScriptTapHandler(int) = mac 0x39cd10;
	virtual void unregisterScriptTapHandler() = mac 0x39cd40;
	virtual bool isEnabled() = mac 0x39ce00;
	virtual void setEnabled(bool) = mac 0x39cdf0;
	virtual bool isSelected() = mac 0x39ce60;
}

[[link(win, android)]]
class cocos2d::extension::CCScale9Sprite {
	static cocos2d::extension::CCScale9Sprite* create() = mac 0x3d7240;
	static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const*) = mac 0x3d7120;
	static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const*, cocos2d::CCRect) = mac 0x3d7190;
	static cocos2d::extension::CCScale9Sprite* create(char const*) = mac 0x3d6d90; // prolly correct
	static cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect) = mac 0x3d6bc0;
}

[[link(win, android)]]
class cocos2d::extension::CCControlColourPicker {
	static cocos2d::extension::CCControlColourPicker* colourPicker() = mac 0x334940; // unsure, two identical funcs
}

[[link(win, android)]]
class cocos2d::CCTransitionFade {
	static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*) = mac 0xd4dd0;
	static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&) = mac 0xd4cd0;

	// CCTransitionFade(cocos2d::CCTransitionFade const&);
	// CCTransitionFade();

	virtual void onEnter();
	virtual void onExit();
	virtual bool initWithDuration(float, cocos2d::CCScene*);
	virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&);
}


[[link(win, android)]]
class cocos2d::CCMenu {
	// static cocos2d::CCMenu* create(cocos2d::CCMenuItem*, ...);
	static cocos2d::CCMenu* create() = mac 0x754580;
	static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*);
	static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*);
	// static cocos2d::CCMenu* createWithItems(cocos2d::CCMenuItem*, char*);

	bool initWithArray(cocos2d::CCArray*) = mac 0x754850;

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

	virtual bool init() = mac 0x7549e0;
	virtual void addChild(cocos2d::CCNode*);
	virtual void addChild(cocos2d::CCNode*, int);
	virtual void addChild(cocos2d::CCNode*, int, int);
	virtual void removeChild(cocos2d::CCNode*, bool);
	virtual void onExit();
	virtual void registerWithTouchDispatcher();

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x754e00;
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
	static cocos2d::CCPoint __CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&) = mac 0x21f1b0;
	static cocos2d::CCSize __CCSizeApplyAffineTransform(cocos2d::CCSize const&, cocos2d::CCAffineTransform const&);
	static cocos2d::CCPoint ccCardinalSplineAt(cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, float, float);
	static void ccDrawCardinalSpline(cocos2d::CCPointArray*, float, unsigned int);
	static void ccDrawCatmullRom(cocos2d::CCPointArray*, unsigned int);
	static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool);
	static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool, float, float);
	static void ccDrawCircleSegment(cocos2d::CCPoint const&, float, float, float, unsigned int, bool, float, float);
	static void ccDrawColor4B(unsigned char, unsigned char, unsigned char, unsigned char) = mac 0x1e8870;
	static void ccDrawColor4F(float, float, float, float);
	static void ccDrawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
	static void ccDrawFilledCircle(cocos2d::CCPoint const&, float, float, unsigned int);
	static void ccDrawFree();
	static void ccDrawInit();
	static void ccDrawLine(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = mac 0x1e7020;
	static void ccDrawLines(cocos2d::CCPoint const*, unsigned int);
	static void ccDrawPoint(cocos2d::CCPoint const&);
	static void ccDrawPoints(cocos2d::CCPoint const*, unsigned int);
	static void ccDrawPoly(cocos2d::CCPoint const*, unsigned int, bool);
	static void ccDrawQuadBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
	static void ccDrawRect(cocos2d::CCPoint, cocos2d::CCPoint);
	static void ccDrawSolidPoly(cocos2d::CCPoint const*, unsigned int, cocos2d::_ccColor4F);
	static void ccDrawSolidRect(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::_ccColor4F) = mac 0x1e7250;
	static void ccGLBindTexture2D(unsigned int);
	static void ccGLBindTexture2DN(unsigned int, unsigned int);
	static void ccGLBindVAO(unsigned int);
	static void ccGLBlendFunc(unsigned int, unsigned int) = mac 0x33a370;
	static void ccGLBlendResetToCache();
	static void ccGLDeleteProgram(unsigned int);
	static void ccGLDeleteTexture(unsigned int);
	static void ccGLDeleteTextureN(unsigned int, unsigned int);
	static void ccGLEnable(cocos2d::ccGLServerState) = mac 0x33a540;
	static void ccGLEnableVertexAttribs(unsigned int) = mac 0x33a550;
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
	static cocos2d::CCPoint ccpFromSize(cocos2d::CCSize const&) = mac 0x334fd0;
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
