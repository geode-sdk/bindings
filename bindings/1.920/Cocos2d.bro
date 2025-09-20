// clang-format off

[[link(win, android)]]
class cocos2d::CCAction : cocos2d::CCObject {
	// CCAction(cocos2d::CCAction const&);
	CCAction();
	virtual ~CCAction();
}

[[link(win, android)]]
class cocos2d::CCActionInstant : cocos2d::CCFiniteTimeAction {
	// CCActionInstant(cocos2d::CCActionInstant const&);
	CCActionInstant();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual bool isDone();
	virtual void step(float);
	virtual cocos2d::CCFiniteTimeAction* reverse();
}

[[link(win, android)]]
class cocos2d::CCApplication : cocos2d::CCApplicationProtocol {
	static cocos2d::CCApplication* sharedApplication();

	virtual ~CCApplication();

	virtual int run();
	virtual void setAnimationInterval(double);
	virtual cocos2d::ccLanguageType getCurrentLanguage();
	virtual cocos2d::TargetPlatform getTargetPlatform();
}

[[link(win, android)]]
class cocos2d::CCDictionary : cocos2d::CCObject {
	CCDictionary();
	virtual ~CCDictionary();

	static cocos2d::CCDictionary* create();
	static cocos2d::CCDictionary* createWithDictionary(cocos2d::CCDictionary*);
	static cocos2d::CCDictionary* createWithContentsOfFile(const char*);
	static cocos2d::CCDictionary* createWithContentsOfFileThreadSafe(const char*);

	unsigned int count();
	cocos2d::CCArray* allKeys();
	cocos2d::CCArray* allKeysForObject(cocos2d::CCObject*);
	cocos2d::CCObject* objectForKey(const gd::string&);
	cocos2d::CCObject* objectForKey(intptr_t);
	const cocos2d::CCString* valueForKey(const gd::string&);
	const cocos2d::CCString* valueForKey(intptr_t);
	void setObject(cocos2d::CCObject*, const gd::string&);
	void setObject(cocos2d::CCObject*, intptr_t);
	void removeObjectForKey(const gd::string&);
	void removeObjectForKey(intptr_t key);
	void removeObjectsForKeys(cocos2d::CCArray*);
	void removeObjectForElememt(cocos2d::CCDictElement*);
	void removeAllObjects();
	cocos2d::CCObject* randomObject();
	bool writeToFile(const char*);

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void acceptVisitor(cocos2d::CCDataVisitor &visitor);
}

[[link(win, android)]]
class cocos2d::CCDirector : cocos2d::CCObject, cocos2d::TypeInfo {
	CCDirector();
	virtual ~CCDirector();

	void drawScene();
	void setContentScaleFactor(float);
	void setupScreenScale(cocos2d::CCSize, cocos2d::CCSize, cocos2d::TextureQuality);
	void updateContentScale(cocos2d::TextureQuality);
	void updateScreenScale(cocos2d::CCSize);
}

[[link(win, android)]]
class cocos2d::CCEGLView {
	protected CCEGLView();
	protected virtual ~CCEGLView();

	static cocos2d::CCEGLView* sharedOpenGLView();

	[[missing(android, mac, ios)]]
	void toggleFullScreen(bool);

	[[missing(android, mac, ios)]]
	void pollEvents();
	virtual void end();
	virtual void isOpenGLReady();
	virtual void swapBuffers();
	virtual void setIMEKeyboardState(bool);
}

[[link(win, android)]]
class cocos2d::CCEGLViewProtocol {
	CCEGLViewProtocol();
	virtual ~CCEGLViewProtocol();
}

[[link(win, android)]]
class cocos2d::CCFileUtils : cocos2d::TypeInfo {
	// CCFileUtils();
	// CCFileUtils(cocos2d::CCFileUtils const&);
	virtual ~CCFileUtils();

	static CCFileUtils* sharedFileUtils();
	static void purgeFileUtils();
	void removeAllPaths();

	virtual long getClassTypeInfo();
	virtual void purgeCachedEntries();
	virtual unsigned char* getFileData(const char*, const char*, unsigned long*);
	virtual unsigned char* getFileDataFromZip(const char*, const char*, unsigned long*);
	virtual gd::string fullPathForFilename(const char*, bool);
	virtual void removeFullPath(const char*);
	virtual void loadFilenameLookupDictionaryFromFile(const char*);
	virtual void setFilenameLookupDictionary(cocos2d::CCDictionary*);
	virtual const char* fullPathFromRelativeFile(const char*, const char*);
	virtual void setSearchResolutionsOrder(gd::vector<gd::string> const&);
	virtual void addSearchResolutionsOrder(const char*);
	virtual const gd::vector<gd::string>& getSearchResolutionsOrder();
	virtual void setSearchPaths(const gd::vector<gd::string>&);
	virtual void addSearchPath(const char* path);
	virtual void removeSearchPath(const char *path);
	virtual const gd::vector<gd::string>& getSearchPaths();
	virtual gd::string getWritablePath2();
	virtual bool isAbsolutePath(const gd::string&);
	virtual void setPopupNotify(bool);
	virtual bool isPopupNotify();
	virtual bool init();
	virtual gd::string getNewFilename(const char*);
	virtual bool shouldUseHD();
	virtual gd::string addSuffix(gd::string, gd::string);
	virtual gd::string getPathForFilename(const gd::string&, const gd::string&, const gd::string&);
	virtual gd::string getFullPathForDirectoryAndFilename(const gd::string&, const gd::string&);
	virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(const gd::string&);
	virtual bool writeToFile(cocos2d::CCDictionary*, const gd::string&);
	virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(const gd::string& filename);
	virtual gd::string getAndroidPath() const;
	virtual void setAndroidPath(gd::string);
}

[[link(win, android)]]
class cocos2d::CCGLProgram : cocos2d::CCObject {
	bool compileShader(unsigned int*, unsigned int, const char*);
}

[[link(win, android)]]
class cocos2d::CCLayerColor : cocos2d::CCLayerRGBA, cocos2d::CCBlendProtocol {
	static cocos2d::CCLayerColor* create();
 	static cocos2d::CCLayerColor* create(const cocos2d::ccColor4B&, float, float);
 	static cocos2d::CCLayerColor* create(const cocos2d::ccColor4B&);

	CCLayerColor();
	virtual ~CCLayerColor();

	void changeWidth(float);
	void changeHeight(float);
	void changeWidthAndHeight(float, float);

	virtual void draw();
	virtual void setContentSize(const cocos2d::CCSize&);
	virtual bool init();
	virtual bool initWithColor(const cocos2d::ccColor4B&, float, float);
	virtual bool initWithColor(const cocos2d::ccColor4B&);
	virtual void setBlendFunc(cocos2d::ccBlendFunc);
	virtual cocos2d::ccBlendFunc getBlendFunc();
	virtual void setColor(const cocos2d::ccColor3B&);
	virtual void setOpacity(GLubyte);
	virtual void updateColor();
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA : cocos2d::CCLayer, cocos2d::CCRGBAProtocol {
	static cocos2d::CCLayerRGBA* create();

	CCLayerRGBA();
	virtual ~CCLayerRGBA();

	virtual bool init();
	virtual GLubyte getOpacity();
	virtual GLubyte getDisplayedOpacity();
	virtual void setOpacity(GLubyte);
	virtual void updateDisplayedOpacity(GLubyte);
	virtual bool isCascadeOpacityEnabled();
	virtual void setCascadeOpacityEnabled(bool);
	virtual const cocos2d::ccColor3B& getColor();
	virtual const cocos2d::ccColor3B& getDisplayedColor();
	virtual void setColor(const cocos2d::ccColor3B&);
	virtual void updateDisplayedColor(const cocos2d::ccColor3B&);
	virtual bool isCascadeColorEnabled();
	virtual void setCascadeColorEnabled(bool);
	virtual void setOpacityModifyRGB(bool);
	virtual bool isOpacityModifyRGB();
}

[[link(win, android)]]
class cocos2d::CCLayer : cocos2d::CCNode, cocos2d::CCTouchDelegate, cocos2d::CCAccelerometerDelegate, cocos2d::CCKeypadDelegate, cocos2d::CCKeyboardDelegate, cocos2d::CCMouseDelegate {
	static CCLayer *create();

	CCLayer();
	virtual ~CCLayer();

	void registerScriptAccelerateHandler(int);
	void unregisterScriptAccelerateHandler();
	void registerScriptKeypadHandler(int);
	void unregisterScriptKeypadHandler();

	virtual bool init();
	virtual void onEnter();
	virtual void onExit();
	virtual void onEnterTransitionDidFinish();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void didAccelerate(cocos2d::CCAcceleration*);
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
 	virtual void keyBackClicked();
	virtual void keyMenuClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
}

[[link(win, android)]]
class cocos2d::CCMenuItem : cocos2d::CCNodeRGBA {
	virtual ~CCMenuItem();

	static cocos2d::CCMenuItem* create();
	static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	CCRect rect();
	int getScriptTapHandler();

	virtual void activate();
	virtual void selected();
	virtual void unselected();
	virtual void registerScriptTapHandler(int nHandler);
	virtual void unregisterScriptTapHandler();
	virtual bool isEnabled();
	virtual void setEnabled(bool value);
	virtual bool isSelected();
	void setTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
}

[[link(win, android)]]
class cocos2d::CCMenu : cocos2d::CCLayerRGBA {
	static cocos2d::CCMenu* create();
	// static CCMenu* create(CCMenuItem* item, ...);
	static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*);
	static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*);
	// static CCMenu* createWithItems(CCMenuItem *firstItem, va_list args);

	bool init();
	bool initWithArray(cocos2d::CCArray*);
	void alignItemsVertically();
	void alignItemsVerticallyWithPadding(float);
	void alignItemsHorizontally();
	void alignItemsHorizontallyWithPadding(float);
	// void alignItemsInColumns(unsigned int columns, ...);
	// void alignItemsInColumns(unsigned int columns, va_list args);
	void alignItemsInColumnsWithArray(cocos2d::CCArray*);
	// void alignItemsInRows(unsigned int rows, ...);
	// void alignItemsInRows(unsigned int rows, va_list args);
	void alignItemsInRowsWithArray(cocos2d::CCArray*);
	void setHandlerPriority(int);
	virtual void addChild(cocos2d::CCNode*);
	virtual void addChild(cocos2d::CCNode*, int);
	virtual void addChild(cocos2d::CCNode*, int, int);
	virtual void registerWithTouchDispatcher();
	virtual void removeChild(cocos2d::CCNode*, bool);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void onExit();
	virtual void setOpacityModifyRGB(bool);
	virtual bool isOpacityModifyRGB();
	virtual bool isEnabled();
	virtual void setEnabled(bool);
}

[[link(win, android)]]
class cocos2d::CCNode : cocos2d::CCObject {
	static cocos2d::CCNode* create();

	CCNode();
	virtual ~CCNode();

	int getScriptHandler();
	void scheduleUpdateWithPriorityLua(int, int);
	cocos2d::CCRect boundingBox();
	cocos2d::CCAction* runAction(cocos2d::CCAction* action);
	void stopAllActions();
	void stopAction(cocos2d::CCAction*);
	void stopActionByTag(int);
	cocos2d::CCAction* getActionByTag(int);
	unsigned int numberOfRunningActions();
	void scheduleUpdate();
	void scheduleUpdateWithPriority(int);
	void unscheduleUpdate();
	void schedule(cocos2d::SEL_SCHEDULE, float, unsigned int, float);
	void schedule(cocos2d::SEL_SCHEDULE, float);
	void scheduleOnce(cocos2d::SEL_SCHEDULE, float);
	void schedule(cocos2d::SEL_SCHEDULE);
	void unschedule(cocos2d::SEL_SCHEDULE);
	void unscheduleAllSelectors();
	void resumeSchedulerAndActions();
	void pauseSchedulerAndActions();
	void transform();
	void transformAncestors();
	cocos2d::CCPoint convertToNodeSpace(const cocos2d::CCPoint&);
	cocos2d::CCPoint convertToWorldSpace(const cocos2d::CCPoint&);
	cocos2d::CCPoint convertToNodeSpaceAR(const cocos2d::CCPoint&);
	cocos2d::CCPoint convertToWorldSpaceAR(const cocos2d::CCPoint&);
	cocos2d::CCPoint convertTouchToNodeSpace(cocos2d::CCTouch*);
	cocos2d::CCPoint convertTouchToNodeSpaceAR(cocos2d::CCTouch*);
	void setAdditionalTransform(const cocos2d::CCAffineTransform&);
	cocos2d::CCComponent* getComponent(const char *) const;
	bool isScheduled(cocos2d::SEL_SCHEDULE);

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
	virtual void setPosition(const cocos2d::CCPoint&);
	virtual const cocos2d::CCPoint& getPosition();
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
	virtual void setAnchorPoint(const cocos2d::CCPoint&);
	virtual const cocos2d::CCPoint& getAnchorPoint();
	virtual const cocos2d::CCPoint& getAnchorPointInPoints();
	virtual void setContentSize(const cocos2d::CCSize&);
	virtual const cocos2d::CCSize& getContentSize() const;
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
	virtual unsigned int getChildrenCount() const;
	virtual void setParent(cocos2d::CCNode* parent);
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
	virtual int getTag() const;
	virtual void setTag(int);
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
	virtual void update(float);
	virtual void updateTransform();
	virtual cocos2d::CCAffineTransform nodeToParentTransform();
	virtual const cocos2d::CCAffineTransform parentToNodeTransform();
	virtual cocos2d::CCAffineTransform nodeToWorldTransform();
	virtual cocos2d::CCAffineTransform worldToNodeTransform();
	virtual bool addComponent(cocos2d::CCComponent*);
	virtual bool removeComponent(const char*);
	virtual bool removeComponent(cocos2d::CCComponent*);
	virtual void removeAllComponents();
	virtual void updateTweenAction(float, char const*);
}

[[link(win, android)]]
class cocos2d::CCNodeRGBA : cocos2d::CCNode, cocos2d::CCRGBAProtocol {
	CCNodeRGBA();
	virtual ~CCNodeRGBA();
}

[[link(win, android)]]
class cocos2d::CCObject : cocos2d::CCCopying {
	// CCObject(cocos2d::CCObject const&);
	CCObject();
	virtual ~CCObject();

	void release();
	void retain();
	cocos2d::CCObject* autorelease();
	cocos2d::CCObject* copy();
	bool isSingleReference() const;
	unsigned int retainCount() const;

	virtual bool isEqual(cocos2d::CCObject const*);
	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
	virtual void update(float dt);
	virtual cocos2d::CCObjectType getObjType() const;
	virtual void setObjType(cocos2d::CCObjectType);
	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();

	static cocos2d::CCObject* createWithCoder(DS_Dictionary*);
}

[[link(win, android)]]
class cocos2d::CCScene : cocos2d::CCNode {
	CCScene();
	virtual ~CCScene();

	int getHighestChildZ();
}

[[link(win, android)]]
class cocos2d::CCScheduler : cocos2d::CCObject {
	virtual ~CCScheduler();

	virtual void update(float dt);
	void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, unsigned int, float, bool);
	void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, bool);
	void scheduleUpdateForTarget(cocos2d::CCObject*, int, bool);
	void unscheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*);
	void unscheduleUpdateForTarget(const cocos2d::CCObject*);
	void unscheduleAllForTarget(cocos2d::CCObject*);
	void unscheduleAll();
	void unscheduleAllWithMinPriority(int);
	unsigned int scheduleScriptFunc(unsigned int, float, bool);
	void unscheduleScriptEntry(unsigned int);
	void pauseTarget(cocos2d::CCObject*);
	void resumeTarget(cocos2d::CCObject*);
	bool isTargetPaused(cocos2d::CCObject*);
	cocos2d::CCSet* pauseAllTargets();
	cocos2d::CCSet* pauseAllTargetsWithMinPriority(int);
	void resumeTargets(cocos2d::CCSet*);
}

[[link(win, android)]]
class cocos2d::CCSprite : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
	CCSprite();
	virtual ~CCSprite();

	static cocos2d::CCSprite* create(char const*);
	static cocos2d::CCSprite* createWithSpriteFrameName(char const*);

	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*);
	virtual bool initWithSpriteFrameName(char const*);
}

[[link(win, android)]]
class cocos2d::CCSpriteFrameCache : cocos2d::CCObject {
	bool init();
	void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*);
	void addSpriteFramesWithFile(const char*);
	void addSpriteFramesWithFile(const char*, const char*);
	void addSpriteFramesWithFile(const char*, cocos2d::CCTexture2D*);
	void addSpriteFrame(cocos2d::CCSpriteFrame*, const char*);
	void removeSpriteFrames();
	void removeUnusedSpriteFrames();
	void removeSpriteFrameByName(const char*);
	void removeSpriteFramesFromFile(const char*);
	void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*);
	void removeSpriteFramesFromTexture(cocos2d::CCTexture2D* texture);
	cocos2d::CCSpriteFrame* spriteFrameByName(const char *pszName);
}

[[link(win, android)]]
class cocos2d::CCTexture2D : cocos2d::CCObject {
	// CCTexture2D(cocos2d::CCTexture2D const&);
	virtual ~CCTexture2D();
	CCTexture2D();
}

[[link(win, android)]]
class cocos2d::CCTouchDispatcher : cocos2d::CCObject, cocos2d::EGLTouchDelegate {
	void touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int);

	virtual void touchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void touchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void touchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual void touchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*);
	virtual bool getForcePrio() const;
	virtual void setForcePrio(bool);
	virtual int getTargetPrio() const;
	virtual void setTargetPrio(int);
}

[[link(win, android)]]
class cocos2d::extension::CCHttpClient : cocos2d::CCObject {
	void send(cocos2d::extension::CCHttpRequest*);
}

[[link(win, android)]]
class cocos2d::extension::CCControlUtils {
	static cocos2d::extension::HSV HSVfromRGB(cocos2d::extension::RGBA);
	static cocos2d::extension::RGBA RGBfromHSV(cocos2d::extension::HSV);
}

[[link(win, android)]]
class cocos2d::CCImage : cocos2d::CCObject {
	CCImage();
	virtual ~CCImage();
}

[[link(win, android)]]
class cocos2d::CCIMEDispatcher {
	static cocos2d::CCIMEDispatcher* sharedDispatcher();

	// CCIMEDispatcher();

	void addDelegate(cocos2d::CCIMEDelegate*);
	bool attachDelegateWithIME(cocos2d::CCIMEDelegate*);
	bool detachDelegateWithIME(cocos2d::CCIMEDelegate*);
	void dispatchDeleteBackward();
	void dispatchInsertText(char const*, int);
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
class cocos2d::CCKeyboardDispatcher : cocos2d::CCObject {
	bool dispatchKeyboardMSG(cocos2d::enumKeyCodes, bool);
}

[[link(win, android)]]
class cocos2d::CCMouseDispatcher : cocos2d::CCObject {
	// CCMouseDispatcher(cocos2d::CCMouseDispatcher const&);
	// CCMouseDispatcher();
	void addDelegate(cocos2d::CCMouseDelegate*);
	bool dispatchScrollMSG(float, float);
	void forceAddDelegate(cocos2d::CCMouseDelegate*);
	void forceRemoveDelegate(cocos2d::CCMouseDelegate*);
	void removeDelegate(cocos2d::CCMouseDelegate*);
}

[[link(win, android)]]
class cocos2d::ZipUtils {
	static gd::string decompressString(gd::string, bool);
	static gd::string decompressString2(unsigned char* data, bool decrypt, int size);
}

[[link(win, android)]]
class DS_Dictionary {
	bool getBoolForKey(const char*);
	float getFloatForKey(const char*);
	int getIntegerForKey(const char*);
	gd::string getKey(const char*);
	gd::string getStringForKey(const char*);
	void setBoolForKey(const char*, bool, bool);
	void setBoolForKey(const char*, bool);
	void setFloatForKey(const char*, float, bool);
	void setFloatForKey(const char*, float);
	void setIntegerForKey(const char*, int, bool);
	void setIntegerForKey(const char*, int);
	void setStringForKey(const char*, gd::string const&, bool);
	void setStringForKey(const char*, gd::string const&);
	cocos2d::CCArray* getArrayForKey(const char*);
	void setArrayForKey(const char*, cocos2d::CCArray*);
	cocos2d::CCObject* getObjectForKey(const char*);
	void setObjectForKey(const char*, cocos2d::CCObject*);

	bool loadRootSubDictFromFile(const char*);
	bool loadRootSubDictFromString(gd::string);
	bool loadRootSubDictFromCompressedFile(const char*);

	bool saveRootSubDictToCompressedFile(const char*);
	bool saveRootSubDictToFile(const char*);
	gd::string saveRootSubDictToString();
}

[[link(win, android)]]
class ObjectDecoder : cocos2d::CCNode {
	// virtual ~ObjectDecoder();

	static ObjectDecoder* sharedDecoder();

	cocos2d::CCObject* getDecodedObject(int, DS_Dictionary*);

	virtual bool init();
	virtual ObjectDecoderDelegate* getDelegate() const;
	virtual void setDelegate(ObjectDecoderDelegate*);

	// ObjectDecoderDelegate* m_delegate;
}

// [[link(win, android)]]
// class pugi::xml_document {
//	gd::string save_string(const char*, unsigned int, pugi::xml_encoding) const;
// }
