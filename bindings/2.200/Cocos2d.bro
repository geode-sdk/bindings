
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
	// CCNode(cocos2d::CCNode const&);
	CCNode() = win 0x5eef0;
    ~CCNode() = win 0x5f160;
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
class cocos2d::CCLayer {
	// CCLayer(cocos2d::CCLayer const&);
	CCLayer() = win 0xa3370;
    ~CCLayer() = win 0xa36d0;
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
class cocos2d::CCObject {
	// CCObject(cocos2d::CCObject const&);
	CCObject() = win 0x6a180;
    ~CCObject() = win 0x6a1f0;
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
class cocos2d::CCLayerColor {
	// CCLayerColor(cocos2d::CCLayerColor const&);
	// CCLayerColor();
    ~CCLayerColor();
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
class cocos2d::CCLayerRGBA {
	// CCLayerRGBA(cocos2d::CCLayerRGBA const&);
	// CCLayerRGBA();
    ~CCLayerRGBA();
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

[[link(win)]]
class cocos2d::CCEGLView {
	// CCEGLView();
	// CCEGLView(cocos2d::CCEGLView const&);
	virtual void swapBuffers();
	// rest are in extras
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