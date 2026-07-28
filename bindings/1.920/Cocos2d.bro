// clang-format off

[[link(win, android)]]
class cocos2d::CCAction : cocos2d::CCObject {
	// CCAction(cocos2d::CCAction const&);
	// CCAction() = imac 0x1df300;
	virtual ~CCAction() = imac 0x1df3a0;

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x1df480;
	virtual void update(float) = imac 0x1df570;
	virtual bool isDone() = imac 0x1df550;
	virtual void startWithTarget(CCNode *pTarget) = imac 0x1df530;
	virtual void stop() = imac 0x1df540;
	virtual void step(float dt) = imac 0x1df560;
}

[[link(win, android)]]
class cocos2d::CCActionManager : cocos2d::CCObject {
	void addAction(CCAction *pAction, CCNode *pTarget, bool paused) = imac 0xab010;
}

[[link(win, android)]]
class cocos2d::CCActionInstant : cocos2d::CCFiniteTimeAction {
	// CCActionInstant(cocos2d::CCActionInstant const&);
	CCActionInstant() = imac 0x2573d0;
	// virtual ~CCActionInstant() = imac 0x258e30;

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x257430;
	virtual void update(float) = imac 0x257500;
	virtual bool isDone() = imac 0x2574d0;
	virtual void step(float) = imac 0x2574e0;
	virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x257510;
}

[[link(win, android)]]
class cocos2d::CCApplication : cocos2d::CCApplicationProtocol {
	static cocos2d::CCApplication* sharedApplication() = imac 0x10bca0;

	virtual ~CCApplication();

	virtual int run();
	virtual void setAnimationInterval(double);
	virtual cocos2d::ccLanguageType getCurrentLanguage();
	virtual cocos2d::TargetPlatform getTargetPlatform();
}

[[link(win, android)]]
class cocos2d::CCCallFunc : cocos2d::CCActionInstant {
  static CCCallFunc * create(CCObject* pSelectorTarget, SEL_CallFunc selector) = imac 0x257fc0;
}

[[link(win, android)]]
class cocos2d::CCDelayTime : cocos2d::CCActionInterval {
	static CCDelayTime* create(float d) = imac 0x12c8f0;
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
	cocos2d::CCObject* objectForKey(const gd::string&) = imac 0xe4eb0;
	cocos2d::CCObject* objectForKey(intptr_t);
	const cocos2d::CCString* valueForKey(const gd::string&) = imac 0xe4de0;
	const cocos2d::CCString* valueForKey(intptr_t);
	void setObject(cocos2d::CCObject*, const gd::string&) = imac 0xe5440;
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
  static CCDirector* sharedDirector() = imac 0x1659b0;

	CCDirector();
	virtual ~CCDirector();

	void pause() = imac 0x167740;
	void drawScene();
	void setContentScaleFactor(float);
	void setupScreenScale(cocos2d::CCSize, cocos2d::CCSize, cocos2d::TextureQuality);
	void updateContentScale(cocos2d::TextureQuality);
	void updateScreenScale(cocos2d::CCSize) = imac 0x166c80;
  cocos2d::CCSize getWinSize() = imac 0x166f10;
	void setProjection(cocos2d::ccDirectorProjection kProjection) = imac 0x166170;
	void setViewport() = imac 0x166f50;

	void replaceScene(cocos2d::CCScene *pScene) = imac 0x167420;
}

[[link(win, android)]]
class cocos2d::CCEaseIn : cocos2d::CCEaseRateAction {
	static cocos2d::CCEaseIn* create(cocos2d::CCActionInterval* pAction, float fRate) = imac 0x1b07d0;
}

[[link(win, android)]]
class cocos2d::CCEGLView {
	protected CCEGLView();
	protected virtual ~CCEGLView();

	static cocos2d::CCEGLView* sharedOpenGLView() = imac 0x1a7ae0;

	[[missing(android, mac, ios)]]
	void toggleFullScreen(bool);

	[[missing(android, mac, ios)]]
	void pollEvents();
	virtual void end();
	virtual void isOpenGLReady();
	virtual void swapBuffers();
	virtual void setIMEKeyboardState(bool) = imac 0x1a7d10;
}

[[link(win, android)]]
class cocos2d::CCEGLViewProtocol {
	CCEGLViewProtocol();
	virtual ~CCEGLViewProtocol();
}

[[link(win, android)]]
class cocos2d::CCFadeTo : cocos2d::CCActionInterval {
	static CCFadeTo* create(float duration, GLubyte opacity) = imac 0x130fb0;
}

[[link(win, android)]]
class cocos2d::CCFileUtils : cocos2d::TypeInfo {
	// CCFileUtils();
	// CCFileUtils(cocos2d::CCFileUtils const&);
	virtual ~CCFileUtils();

	static CCFileUtils* sharedFileUtils() = imac 0x203590;
	static void purgeFileUtils();
	void removeAllPaths();

	virtual long getClassTypeInfo();
	virtual void purgeCachedEntries();
	virtual unsigned char* getFileData(const char*, const char*, unsigned long*);
	virtual unsigned char* getFileDataFromZip(const char*, const char*, unsigned long*);
	virtual gd::string fullPathForFilename(const char*, bool) = imac 0x157010;
	virtual void removeFullPath(const char*);
	virtual void loadFilenameLookupDictionaryFromFile(const char*);
	virtual void setFilenameLookupDictionary(cocos2d::CCDictionary*);
	virtual const char* fullPathFromRelativeFile(const char*, const char*) = imac 0x1582c0;
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
class cocos2d::CCFiniteTimeAction : cocos2d::CCAction {
	// virtual ~CCFiniteTimeAction() = imac 0x1dffe0;

	virtual CCFiniteTimeAction* reverse() = imac 0x1df580;
}

[[link(win, android)]]
class cocos2d::CCLayerGradient : cocos2d::CCLayerColor {
	static cocos2d::CCLayerGradient* create(const cocos2d::ccColor4B& start, const cocos2d::ccColor4B& end, const cocos2d::CCPoint& v) = imac 0x192b20;
}

[[link(win, android)]]
class cocos2d::CCGLProgram : cocos2d::CCObject {
	bool compileShader(unsigned int*, unsigned int, const char*);
}

[[link(win, android)]]
class cocos2d::CCLabelBMFont : cocos2d::CCSpriteBatchNode, cocos2d::CCLabelProtocol, cocos2d::CCRGBAProtocol {
	static CCLabelBMFont * create(const char *str, const char *fntFile) = imac 0x1d4b00;

	virtual ~CCLabelBMFont() = imac 0x1d5190;

	virtual bool init() = imac 0x1d4e30;
	virtual void setScaleX(float scaleX) = imac 0x1d7400;
	virtual void setScaleY(float scaleY) = imac 0x1d7420;
	virtual void setScale(float scale) = imac 0x1d73e0;
	virtual void setAnchorPoint(const CCPoint& var) = imac 0x1d66a0;
	virtual void setString(const char *newString) = imac 0x1d5bd0;
	virtual void setString(const char *newString, bool needUpdateLabel) = imac 0x1d5c20;
	virtual const char* getString() = imac 0x1d5e30;
	virtual void setCString(const char *label) = imac 0x1d5e50;
	virtual void updateLabel() = imac 0x1d66e0;
	virtual void setAlignment(CCTextAlignment alignment) = imac 0x1d7380;
	virtual void setWidth(float width) = imac 0x1d73a0;
	virtual void setLineBreakWithoutSpace(bool breakWithoutSpace) = imac 0x1d73c0;
	virtual bool isOpacityModifyRGB() = imac 0x1d6330;
	virtual void setOpacityModifyRGB(bool isOpacityModifyRGB) = imac 0x1d61b0;
	virtual GLubyte getOpacity() = imac 0x1d6030;
	virtual GLubyte getDisplayedOpacity() = imac 0x1d6050;
	virtual void setOpacity(GLubyte opacity) = imac 0x1d6070;
	virtual void updateDisplayedOpacity(GLubyte parentOpacity) = imac 0x1d6350;
	virtual bool isCascadeOpacityEnabled() = imac 0x1d6660;
	virtual void setCascadeOpacityEnabled(bool cascadeOpacityEnabled) = imac 0x1d6680;
	virtual const ccColor3B& getColor() = imac 0x1d5e70;
	virtual const ccColor3B& getDisplayedColor() = imac 0x1d5e90;
	virtual void setColor(const ccColor3B& color) = imac 0x1d5eb0;
	virtual void updateDisplayedColor(const ccColor3B& parentColor) = imac 0x1d6470;
	virtual bool isCascadeColorEnabled() = imac 0x1d6620;
	virtual void setCascadeColorEnabled(bool cascadeColorEnabled) = imac 0x1d6640;
	virtual void setString(unsigned short *newString, bool needUpdateLabel) = imac 0x1d5ca0;

	void setFntFile(const char* fntFile) = imac 0x1d7440;
	void limitLabelWidth(float width, float defaultScale, float minScale) = imac 0x1d7530;
}

[[link(win, android)]]
class cocos2d::CCLayerColor : cocos2d::CCLayerRGBA, cocos2d::CCBlendProtocol {
	static cocos2d::CCLayerColor* create();
 	static cocos2d::CCLayerColor* create(const cocos2d::ccColor4B&, float, float) = imac 0x1920c0;
 	static cocos2d::CCLayerColor* create(const cocos2d::ccColor4B&) = imac 0x1921c0;

	CCLayerColor() = imac 0x191d80;
	virtual ~CCLayerColor() = imac 0x191ed0;

	void changeWidth(float);
	void changeHeight(float);
	void changeWidthAndHeight(float, float);

	virtual bool init() = imac 0x1922c0;
	virtual void setContentSize(const cocos2d::CCSize&) = imac 0x1924a0;
	virtual void draw() = imac 0x192670;
	virtual void setOpacity(GLubyte) = imac 0x1928d0;
	virtual void setColor(const cocos2d::ccColor3B&) = imac 0x192740;
	virtual bool initWithColor(const cocos2d::ccColor4B&, float, float) = imac 0x192310;
	virtual bool initWithColor(const cocos2d::ccColor4B&) = imac 0x192450;
	virtual cocos2d::ccBlendFunc getBlendFunc() = imac 0x191f70;
	virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x191f90;
	virtual void updateColor() = imac 0x1925a0;
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA : cocos2d::CCLayer, cocos2d::CCRGBAProtocol {
	static cocos2d::CCLayerRGBA* create();

	CCLayerRGBA() = imac 0x1913f0;
	virtual ~CCLayerRGBA() = imac 0x1915a0;

	virtual bool init() = imac 0x191640;
	virtual GLubyte getOpacity() = imac 0x1916e0;
	virtual GLubyte getDisplayedOpacity() = imac 0x191700;
	virtual void setOpacity(GLubyte) = imac 0x191720;
	virtual void updateDisplayedOpacity(GLubyte) = imac 0x191a20;
	virtual bool isCascadeOpacityEnabled() = imac 0x191d00;
	virtual void setCascadeOpacityEnabled(bool) = imac 0x191d20;
	virtual const cocos2d::ccColor3B& getColor() = imac 0x191860;
	virtual const cocos2d::ccColor3B& getDisplayedColor() = imac 0x191880;
	virtual void setColor(const cocos2d::ccColor3B&) = imac 0x1918a0;
	virtual void updateDisplayedColor(const cocos2d::ccColor3B&) = imac 0x191bb0;
	virtual bool isCascadeColorEnabled() = imac 0x191d40;
	virtual void setCascadeColorEnabled(bool) = imac 0x191d60;
	virtual void setOpacityModifyRGB(bool); // = imac 0x9060;
	virtual bool isOpacityModifyRGB(); // = imac 0x9070;
}

[[link(win, android)]]
class cocos2d::CCLayer : cocos2d::CCNode, cocos2d::CCTouchDelegate, cocos2d::CCAccelerometerDelegate, cocos2d::CCKeypadDelegate, cocos2d::CCKeyboardDelegate, cocos2d::CCMouseDelegate {
	static CCLayer *create() = imac 0x190530;

	CCLayer() = imac 0x190110;
	virtual ~CCLayer() = imac 0x190430;

	void registerScriptAccelerateHandler(int);
	void unregisterScriptAccelerateHandler();
	void registerScriptKeypadHandler(int);
	void unregisterScriptKeypadHandler();

	virtual bool init() = imac 0x1904d0;
	virtual void onEnter() = imac 0x190e20;
	virtual void onEnterTransitionDidFinish() = imac 0x190fb0;
	virtual void onExit() = imac 0x190ee0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x190ff0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x191070;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x1910f0;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x191170;
	virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x1911f0;
	virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x191270;
	virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x1912f0;
	virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x191370;
	virtual void didAccelerate(cocos2d::CCAcceleration*) = imac 0x1909c0;
	virtual void registerWithTouchDispatcher() = imac 0x190660;
	virtual void registerScriptTouchHandler(int, bool, int, bool) = imac 0x1906f0;
	virtual void unregisterScriptTouchHandler() = imac 0x190750;
	virtual bool isTouchEnabled() = imac 0x190800;
	virtual void setTouchEnabled(bool) = imac 0x190810;
	virtual void setTouchMode(cocos2d::ccTouchesMode) = imac 0x190880;
	virtual int getTouchMode() = imac 0x190930;
	virtual void setTouchPriority(int) = imac 0x1908d0;
	virtual int getTouchPriority() = imac 0x190920;
	virtual bool isAccelerometerEnabled() = imac 0x190940;
	virtual void setAccelerometerEnabled(bool) = imac 0x190950;
	virtual void setAccelerometerInterval(double) = imac 0x190990;
	virtual bool isKeypadEnabled() = imac 0x190a90;
	virtual void setKeypadEnabled(bool) = imac 0x190aa0;
	virtual bool isKeyboardEnabled() = imac 0x190b30;
	virtual void setKeyboardEnabled(bool) = imac 0x190b40;
	virtual bool isMouseEnabled() = imac 0x190bb0;
	virtual void setMouseEnabled(bool) = imac 0x190bc0;
 	virtual void keyBackClicked() = imac 0x190c80;
	virtual void keyMenuClicked() = imac 0x190d20;
	virtual void keyDown(cocos2d::enumKeyCodes) = imac 0x190da0;
}

[[link(win, android)]]
class cocos2d::CCMenuItem : cocos2d::CCNodeRGBA {
	virtual ~CCMenuItem() = imac 0x134be0;

	static cocos2d::CCMenuItem* create();
	static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	CCRect rect();
	int getScriptTapHandler();

	// probably imac = 0x134e70 ?
	void setTarget(cocos2d::CCObject* rec, cocos2d::SEL_MenuHandler selector) = imac inline {
		m_pListener = rec;
		m_pfnSelector = selector;
	}

	virtual void activate() = imac 0x134d80;
	virtual void selected() = imac 0x134cf0;
	virtual void unselected() = imac 0x134d00;
	virtual void registerScriptTapHandler(int nHandler) = imac 0x134d10;
	virtual void unregisterScriptTapHandler() = imac 0x134d40;
	virtual bool isEnabled() = imac 0x134e00;
	virtual void setEnabled(bool value) = imac 0x134df0;
	virtual bool isSelected() = imac 0x134e60;
}

[[link(win, android)]]
class cocos2d::CCMenuItemSprite : cocos2d::CCMenuItem {
	// virtual ~CCMenuItemSprite() = imac 0x137d40;

	virtual void selected() = imac 0x1366e0;
	virtual void unselected() = imac 0x136760;
	virtual void setEnabled(bool bEnabled) = imac 0x1367d0;
	virtual cocos2d::CCNode* getNormalImage() = imac 0x1361c0;
	virtual void setNormalImage(cocos2d::CCNode*) = imac 0x1361d0;
	virtual cocos2d::CCNode* getSelectedImage() = imac 0x1362a0;
	virtual void setSelectedImage(cocos2d::CCNode*) = imac 0x1362b0;
	virtual cocos2d::CCNode* getDisabledImage() = imac 0x136350;
	virtual void setDisabledImage(cocos2d::CCNode*) = imac 0x136360;
	virtual void updateImagesVisibility() = imac 0x136800;

	bool initWithNormalSprite(cocos2d::CCNode* normalSprite, cocos2d::CCNode* selectedSprite, cocos2d::CCNode* disabledSprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler selector) = imac 0x1365d0;
}

[[link(win, android)]]
class cocos2d::CCMenu : cocos2d::CCLayerRGBA {
	static cocos2d::CCMenu* create() = imac 0x243540;
	// static CCMenu* create(CCMenuItem* item, ...);
	static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*) = imac 0x243720;
	static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*);
	// static CCMenu* createWithItems(CCMenuItem *firstItem, va_list args);

	bool initWithArray(cocos2d::CCArray*) = imac 0x2437f0;
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

	// virtual ~CCMenu() = imac 0x2450a0;

	virtual bool init() = imac 0x243990;
	virtual void addChild(cocos2d::CCNode*) = imac 0x2439a0;
	virtual void addChild(cocos2d::CCNode*, int) = imac 0x2439b0;
	virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x2439c0;
	virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x243a20;
	virtual void onExit() = imac 0x2439d0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x243b10;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x243e80;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x243da0;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x243e20;
	virtual void registerWithTouchDispatcher() = imac 0x243ac0;
	virtual void setOpacityModifyRGB(bool); // = imac 0xd7ed0;
	virtual bool isOpacityModifyRGB(); // = imac 0xd7ee0;
	virtual bool isEnabled(); // = imac 0xd7ef0;
	virtual void setEnabled(bool); // = imac 0xd7f00;
}

[[link(win, android)]]
class cocos2d::CCNode : cocos2d::CCObject {
	static cocos2d::CCNode* create() = imac 0xaefa0;

	CCNode() = imac 0xae430;
	virtual ~CCNode() = imac 0xae7d0;

	int getScriptHandler();
	void scheduleUpdateWithPriorityLua(int, int);
	cocos2d::CCRect boundingBox() = imac 0xaef30;
	cocos2d::CCAction* runAction(cocos2d::CCAction* action) = imac 0xafdf0;
	void stopAllActions() = imac 0xaf0b0;
	void stopAction(cocos2d::CCAction*);
	void stopActionByTag(int) = imac 0xafe50;
	cocos2d::CCAction* getActionByTag(int);
	unsigned int numberOfRunningActions();
	void scheduleUpdate() = imac 0xaff10;
	void scheduleUpdateWithPriority(int);
	void unscheduleUpdate();
	void schedule(cocos2d::SEL_SCHEDULE, float, unsigned int, float);
	void schedule(cocos2d::SEL_SCHEDULE, float) = imac 0xb00b0;
	void scheduleOnce(cocos2d::SEL_SCHEDULE, float);
	void schedule(cocos2d::SEL_SCHEDULE) = imac 0xb0040;
	void unschedule(cocos2d::SEL_SCHEDULE);
	void unscheduleAllSelectors();
	void resumeSchedulerAndActions();
	void pauseSchedulerAndActions();
	void transform();
	void transformAncestors();
	cocos2d::CCPoint convertToNodeSpace(const cocos2d::CCPoint&) = imac 0xb0750;
	cocos2d::CCPoint convertToWorldSpace(const cocos2d::CCPoint&) = imac 0xb0790;
	cocos2d::CCPoint convertToNodeSpaceAR(const cocos2d::CCPoint&);
	cocos2d::CCPoint convertToWorldSpaceAR(const cocos2d::CCPoint&);
	cocos2d::CCPoint convertTouchToNodeSpace(cocos2d::CCTouch*);
	cocos2d::CCPoint convertTouchToNodeSpaceAR(cocos2d::CCTouch*);
	void setAdditionalTransform(const cocos2d::CCAffineTransform&);
	cocos2d::CCComponent* getComponent(const char *) const;
	bool isScheduled(cocos2d::SEL_SCHEDULE);

	virtual void update(float) = imac 0xb0130;

	virtual bool init() = imac 0xae810;
	virtual void setZOrder(int) = imac 0xae8a0;
	virtual void _setZOrder(int) = imac 0xae890;
	virtual int getZOrder() = imac 0xae880;
	virtual void setVertexZ(float) = imac 0xae8f0;
	virtual float getVertexZ() = imac 0xae8e0;
	virtual void setScaleX(float) = imac 0xae9f0;
	virtual float getScaleX() = imac 0xae9e0;
	virtual void setScaleY(float) = imac 0xaea20;
	virtual float getScaleY() = imac 0xaea10;
	virtual void setScale(float) = imac 0xae9a0;
	virtual float getScale() = imac 0xae990;
	virtual void setScale(float, float) = imac 0xae9c0;
	virtual void setPosition(const cocos2d::CCPoint&) = imac 0xaea50;
	virtual const cocos2d::CCPoint& getPosition() = imac 0xaea40;
	virtual void setPosition(float, float) = imac 0xaeaa0;
	virtual void getPosition(float*, float*) = imac 0xaea80;
	virtual void setPositionX(float) = imac 0xaeb00;
	virtual float getPositionX() = imac 0xaeae0;
	virtual void setPositionY(float) = imac 0xaeb40;
	virtual float getPositionY() = imac 0xaeaf0;
	virtual void setSkewX(float) = imac 0xae830;
	virtual float getSkewX() = imac 0xae820;
	virtual void setSkewY(float) = imac 0xae860;
	virtual float getSkewY() = imac 0xae850;
	virtual void setAnchorPoint(const cocos2d::CCPoint&) = imac 0xaec90;
	virtual const cocos2d::CCPoint& getAnchorPoint() = imac 0xaec80;
	virtual const cocos2d::CCPoint& getAnchorPointInPoints() = imac 0xaec70;
	virtual void setContentSize(const cocos2d::CCSize&) = imac 0xaed20;
	virtual const cocos2d::CCSize& getContentSize() const = imac 0xaed10;
	virtual void setVisible(bool) = imac 0xaec60;
	virtual bool isVisible() = imac 0xaec50;
	virtual void setRotation(float) = imac 0xae910;
	virtual float getRotation() = imac 0xae900;
	virtual void setRotationX(float) = imac 0xae940;
	virtual float getRotationX() = imac 0xae930;
	virtual void setRotationY(float) = imac 0xae970;
	virtual float getRotationY() = imac 0xae960;
	virtual void setOrderOfArrival(unsigned int) = imac 0xaee60;
	virtual unsigned int getOrderOfArrival() = imac 0xaee50;
	virtual void setGLServerState(cocos2d::ccGLServerState) = imac 0xaeea0;
	virtual cocos2d::ccGLServerState getGLServerState() = imac 0xaee90;
	virtual void ignoreAnchorPointForPosition(bool) = imac 0xaede0;
	virtual bool isIgnoreAnchorPointForPosition() = imac 0xaedd0;
	virtual void addChild(cocos2d::CCNode*) = imac 0xaf310;
	virtual void addChild(cocos2d::CCNode*, int) = imac 0xaf2f0;
	virtual void addChild(cocos2d::CCNode*, int, int) = imac 0xaf1e0;
	virtual cocos2d::CCNode* getChildByTag(int) = imac 0xaf150;
	virtual cocos2d::CCArray* getChildren() = imac 0xaeb80;
	virtual unsigned int getChildrenCount() const = imac 0xaeb90;
	virtual void setParent(cocos2d::CCNode* parent) = imac 0xaedc0;
	virtual cocos2d::CCNode* getParent() = imac 0xaedb0;
	virtual void removeFromParent() = imac 0xaf330;
	virtual void removeFromParentAndCleanup(bool) = imac 0xaf350;
	virtual void removeMeAndCleanup() = imac 0xaf380;
	virtual void removeChild(cocos2d::CCNode*) = imac 0xaf3a0;
	virtual void removeChild(cocos2d::CCNode*, bool) = imac 0xaf3c0;
	virtual void removeChildByTag(int) = imac 0xaf4e0;
	virtual void removeChildByTag(int, bool) = imac 0xaf500;
	virtual void removeAllChildren() = imac 0xaf540;
	virtual void removeAllChildrenWithCleanup(bool) = imac 0xaf560;
	virtual void reorderChild(cocos2d::CCNode*, int) = imac 0xaf6a0;
	virtual void sortAllChildren() = imac 0xaf6f0;
	virtual cocos2d::CCGridBase* getGrid() = imac 0xaec00;
	virtual void setGrid(cocos2d::CCGridBase*) = imac 0xaec10;
	virtual int getTag() const = imac 0xaee10;
	virtual void setTag(int) = imac 0xaee20;
	virtual void* getUserData() = imac 0xaee30;
	virtual void setUserData(void*) = imac 0xaee40;
	virtual cocos2d::CCObject* getUserObject() = imac 0xaee80;
	virtual void setUserObject(cocos2d::CCObject*) = imac 0xaeeb0;
	virtual cocos2d::CCGLProgram* getShaderProgram() = imac 0xaee70;
	virtual void setShaderProgram(cocos2d::CCGLProgram*) = imac 0xaeef0;
	virtual cocos2d::CCCamera* getCamera() = imac 0xaebb0;
	virtual bool isRunning() = imac 0xaeda0;
	virtual void registerScriptHandler(int) = imac 0xafd20;
	virtual void unregisterScriptHandler() = imac 0xafd50;
	virtual void onEnter() = imac 0xaf9e0;
	virtual void onEnterTransitionDidFinish() = imac 0xafae0;
	virtual void onExit() = imac 0xafc20;
	virtual void onExitTransitionDidStart() = imac 0xafb70;
	virtual void cleanup() = imac 0xaf000;
	virtual void draw() = imac 0xaf780;
	virtual void visit() = imac 0xaf790;
	virtual void setActionManager(cocos2d::CCActionManager*) = imac 0xafd90;
	virtual cocos2d::CCActionManager* getActionManager() = imac 0xafde0;
	virtual void setScheduler(cocos2d::CCScheduler*) = imac 0xafeb0;
	virtual cocos2d::CCScheduler* getScheduler() = imac 0xaff00;
	virtual void updateTransform() = imac 0xb09d0;
	virtual cocos2d::CCAffineTransform nodeToParentTransform() = imac 0xb01b0;
	virtual const cocos2d::CCAffineTransform parentToNodeTransform() = imac 0xb05e0;
	virtual cocos2d::CCAffineTransform nodeToWorldTransform() = imac 0xb0670;
	virtual cocos2d::CCAffineTransform worldToNodeTransform() = imac 0xb0710;
	virtual bool addComponent(cocos2d::CCComponent*) = imac 0xb0a60;
	virtual bool removeComponent(const char*) = imac 0xb0a80;
	virtual bool removeComponent(cocos2d::CCComponent*) = imac 0xb0aa0;
	virtual void removeAllComponents() = imac 0xb0ac0;
	virtual void updateTweenAction(float, char const*) = imac 0xb09c0;
}

[[link(win, android)]]
class cocos2d::CCNodeRGBA : cocos2d::CCNode, cocos2d::CCRGBAProtocol {
	CCNodeRGBA() = imac 0xb0ae0;
	virtual ~CCNodeRGBA() = imac 0xb0bd0;

	virtual bool init() = imac 0xb0c10;
	virtual GLubyte getOpacity() = imac 0xb0cf0;
	virtual GLubyte getDisplayedOpacity() = imac 0xb0d10;
	virtual void setOpacity(GLubyte opacity) = imac 0xb0d30;
	virtual void updateDisplayedOpacity(GLubyte parentOpacity) = imac 0xb0e70;
	virtual bool isCascadeOpacityEnabled() = imac 0xb1000;
	virtual void setCascadeOpacityEnabled(bool cascadeOpacityEnabled) = imac 0xb1020;
	virtual const ccColor3B& getColor() = imac 0xb1040;
	virtual const ccColor3B& getDisplayedColor() = imac 0xb1060;
	virtual void setColor(const ccColor3B& color) = imac 0xb1080;
	virtual void updateDisplayedColor(const ccColor3B& parentColor) = imac 0xb11f0;
	virtual bool isCascadeColorEnabled() = imac 0xb1340;
	virtual void setCascadeColorEnabled(bool cascadeColorEnabled) = imac 0xb1360;
	virtual void setOpacityModifyRGB(bool bValue); // = imac 0x4a210;
	virtual bool isOpacityModifyRGB(); // = imac 0x4a220;
}

[[link(win, android)]]
class cocos2d::CCObject : cocos2d::CCCopying {
	// CCObject(cocos2d::CCObject const&);
	CCObject() = imac 0x16d400;
	virtual ~CCObject() = imac 0x16d4f0;

	void release() = imac 0x16d600;
	void retain() = imac 0x16d620;
	cocos2d::CCObject* autorelease() = imac 0x16d630;
	cocos2d::CCObject* copy();
	bool isSingleReference() const;
	unsigned int retainCount() const;

	virtual bool isEqual(cocos2d::CCObject const*) = imac 0x16d680;
	virtual void acceptVisitor(cocos2d::CCDataVisitor&) = imac 0x16d690;
	virtual void update(float dt); // = imac 0x86bf0;
	virtual cocos2d::CCObjectType getObjType() const = imac 0x2690;
	virtual void setObjType(cocos2d::CCObjectType) = imac 0x26a0;
	virtual void encodeWithCoder(DS_Dictionary*) = imac 0x16d6b0;
	virtual bool canEncode() = imac 0x16d6d0;

	static cocos2d::CCObject* createWithCoder(DS_Dictionary*);
}

[[link(win, android)]]
class cocos2d::CCRemoveSelf : cocos2d::CCActionInstant {
	static CCRemoveSelf* create(bool isNeedCleanUp) = imac 0x257910;
}

[[link(win, android)]]
class cocos2d::CCRepeatForever : cocos2d::CCActionInterval {
	static CCRepeatForever* create(CCActionInterval *pAction) = imac 0x12bca0;
}

[[link(win, android)]]
class cocos2d::CCRotateBy : cocos2d::CCActionInterval {
  static CCRotateBy* create(float fDuration, float fDeltaAngle) = imac 0x12d2d0;
}

[[link(win, android)]]
class cocos2d::CCScaleTo : cocos2d::CCActionInterval {
	static cocos2d::CCScaleTo* create(float duration, float s) = imac 0x12fc40;
}

[[link(win, android)]]
class cocos2d::CCScene : cocos2d::CCNode {
	CCScene() = imac 0xce4b0;
	virtual ~CCScene() = imac 0xce5a0;

	static cocos2d::CCScene* create() = imac 0xce630;

	int getHighestChildZ() = imac 0xce6e0;

	virtual bool init() = imac 0xce5e0;
}

[[link(win, android)]]
class cocos2d::CCSequence : cocos2d::CCActionInterval {
	static CCSequence* createWithTwoActions(cocos2d::CCFiniteTimeAction *pActionOne, cocos2d::CCFiniteTimeAction *pActionTwo) = imac 0x12a830;
	static CCSequence* createWithVariableList(cocos2d::CCFiniteTimeAction *pAction1, va_list args) = imac 0x12aa60;
	static CCSequence* create(cocos2d::CCArray *arrayOfActions) = imac 0x12ad10;
}

[[link(win, android)]]
class cocos2d::CCScheduler : cocos2d::CCObject {
	virtual ~CCScheduler();

	virtual void update(float dt) = imac 0x15c370;
	void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, unsigned int, float, bool);
	void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, bool);
	void scheduleUpdateForTarget(cocos2d::CCObject*, int, bool);
	void unscheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*);
	void unscheduleUpdateForTarget(const cocos2d::CCObject*);
	void unscheduleAllForTarget(cocos2d::CCObject*);
	void unscheduleAll() = imac 0x15a490;
	void unscheduleAllWithMinPriority(int) = imac 0x15b920;
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
	CCSprite() = imac 0xbdec0;
	virtual ~CCSprite() = imac 0xbe8f0;

	static cocos2d::CCSprite* create() = imac 0xbe320;
	static cocos2d::CCSprite* create(char const*) = imac 0xbe040;
	static cocos2d::CCSprite* createWithSpriteFrameName(char const*) = imac 0xbe2f0;

	void setFlipX(bool bFlipX) = imac 0xbfd00;
	void setFlipY(bool bFlipY) = imac 0xbfd50;

	virtual bool init() = imac 0xbe3f0;
	virtual void setVertexZ(float fVertexZ) = imac 0xbfba0;
	virtual void setScaleX(float fScaleX) = imac 0xbfa20;
	virtual void setScaleY(float fScaleY) = imac 0xbfaa0;
	virtual void setScale(float fScale) = imac 0xbfb20;
	virtual void setPosition(const CCPoint& pos) = imac 0xbf770;
	virtual void setSkewX(float sx) = imac 0xbf940;
	virtual void setSkewY(float sy) = imac 0xbf9b0;
	virtual void setAnchorPoint(const CCPoint& anchor) = imac 0xbfc10;
	virtual void setVisible(bool bVisible) = imac 0xbfc90;
	virtual void setRotation(float fRotation) = imac 0xbf7f0;
	virtual void setRotationX(float fRotationX) = imac 0xbf860;
	virtual void setRotationY(float fRotationY) = imac 0xbf8d0;
	virtual void ignoreAnchorPointForPosition(bool value) = imac 0xbfc80;
	virtual void addChild(CCNode *pChild) = imac 0xbf290;
	virtual void addChild(CCNode *pChild, int zOrder) = imac 0xbf2a0;
	virtual void addChild(CCNode *pChild, int zOrder, int tag) = imac 0xbf2b0;
	virtual void removeChild(CCNode* pChild, bool bCleanup) = imac 0xbf400;
	virtual void removeAllChildrenWithCleanup(bool bCleanup) = imac 0xbf440;
	virtual void reorderChild(CCNode *pChild, int zOrder) = imac 0xbf370;
	virtual void sortAllChildren() = imac 0xbf4f0;
	virtual void draw() = imac 0xbf170;
	virtual void updateTransform() = imac 0xbee20;
	virtual void setOpacity(GLubyte opacity) = imac 0xbfec0;
	virtual void updateDisplayedOpacity(GLubyte parentOpacity) = imac 0xc00c0;
	virtual void setColor(const ccColor3B& color3) = imac 0xbff40;
	virtual void updateDisplayedColor(const ccColor3B& parentColor) = imac 0xc0070;
	virtual void setOpacityModifyRGB(bool modify) = imac 0xbfff0;
	virtual bool isOpacityModifyRGB() = imac 0xc0050;
	virtual bool initWithTexture(CCTexture2D *pTexture) = imac 0xbe610;
	virtual bool initWithTexture(CCTexture2D *pTexture, const CCRect& rect) = imac 0xbe5f0;
	virtual bool initWithTexture(CCTexture2D *pTexture, const CCRect& rect, bool rotated) = imac 0xbe410;
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0xbe760;
	virtual bool initWithSpriteFrameName(char const*) = imac 0xbe7b0;
	virtual bool initWithFile(const char *pszFilename) = imac 0xbe680;
	virtual bool initWithFile(const char *pszFilename, const CCRect& rect) = imac 0xbe710;
	virtual void setTexture(CCTexture2D *texture) = imac 0xc05c0;
	virtual CCTexture2D* getTexture() = imac 0xc0720;
	virtual void setBlendFunc(ccBlendFunc blendFunc); // = imac 0x9180;
	virtual ccBlendFunc getBlendFunc(); // = imac 0x9190;
	virtual CCSpriteBatchNode* getBatchNode() = imac 0xc0430;
	virtual void setBatchNode(CCSpriteBatchNode *pobSpriteBatchNode) = imac 0xc0440;
	virtual void setTextureRect(const CCRect& rect) = imac 0xbe9e0;
	virtual void setTextureRect(const CCRect& rect, bool rotated, const CCSize& untrimmedSize) = imac 0xbea00;
	virtual void setVertexRect(const CCRect& rect) = imac 0xbeb90;
	virtual void setDisplayFrame(CCSpriteFrame *pNewFrame) = imac 0xc0110;
	virtual bool isFrameDisplayed(CCSpriteFrame *pFrame) = imac 0xc01f0;
	virtual CCSpriteFrame* displayFrame() = imac 0xc0280;
	virtual void setDisplayFrameWithAnimationName(const char *animationName, int frameIndex) = imac 0xc0190;
  virtual bool isDirty(); // = imac 0x91a0;
  virtual void setDirty(bool bDirty); // = imac 0x91b0;
	virtual void setTextureCoords(CCRect rect) = imac 0xbebb0;
	virtual void updateBlendFunc() = imac 0xc0550;
	virtual void setReorderChildDirtyRecursively() = imac 0xbf660;
	virtual void setDirtyRecursively(bool bValue) = imac 0xbf6c0;
  virtual bool getDontDraw(); // = imac 0x91c0;
  virtual void setDontDraw(bool); // = imac 0x91d0;
}

[[link(win, android)]]
class cocos2d::CCSpriteBatchNode : cocos2d::CCNode, cocos2d::CCTextureProtocol {
	CCSpriteBatchNode() = imac 0x7c060;
	virtual ~CCSpriteBatchNode() = imac 0x7c420;

	virtual bool init() = imac 0x7c310;
	virtual void addChild(CCNode * child) = imac 0x7c7b0;
	virtual void addChild(CCNode * child, int zOrder) = imac 0x7c7c0;
	virtual void addChild(CCNode * child, int zOrder, int tag) = imac 0x7c5b0;
	virtual void removeChild(CCNode* child, bool cleanup) = imac 0x7c820;
	virtual void removeAllChildrenWithCleanup(bool cleanup) = imac 0x7c9c0;
	virtual void reorderChild(CCNode * child, int zOrder) = imac 0x7c7d0;
	virtual void sortAllChildren() = imac 0x7ca70;
	virtual void draw() = imac 0x7d090;
	virtual void visit() = imac 0x7c510;
	virtual CCTexture2D* getTexture() = imac 0x7d7b0;
	virtual void setTexture(CCTexture2D *texture) = imac 0x7d7e0;
	virtual void setBlendFunc(ccBlendFunc blendFunc) = imac 0x7d770;
	virtual ccBlendFunc getBlendFunc() = imac 0x7d790;
	protected virtual bool getManualSortChildren() const = imac 0x7db10;
	protected virtual void setManualSortChildren(bool) = imac 0x7db20;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrame : cocos2d::CCObject {
	CCTexture2D* getTexture() = imac 0x117a00;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrameCache : cocos2d::CCObject {
	static CCSpriteFrameCache* sharedSpriteFrameCache() = imac 0xed310;

	bool init();
	void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*);
	void addSpriteFramesWithFile(const char*) = imac 0xeec00;
	void addSpriteFramesWithFile(const char*, const char*);
	void addSpriteFramesWithFile(const char*, cocos2d::CCTexture2D*);
	void addSpriteFrame(cocos2d::CCSpriteFrame*, const char*);
	void removeSpriteFrames();
	void removeUnusedSpriteFrames();
	void removeSpriteFrameByName(const char*);
	void removeSpriteFramesFromFile(const char*);
	void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*);
	void removeSpriteFramesFromTexture(cocos2d::CCTexture2D* texture);
	cocos2d::CCSpriteFrame* spriteFrameByName(const char *pszName) = imac 0xefc20;
}

[[link(win, android)]]
class cocos2d::CCString : cocos2d::CCObject {
	static cocos2d::CCString* createWithData(const unsigned char* pData, unsigned long nLen) = imac 0x249590;

	CCString() = imac 0x248d90, win inline;
	// virtual ~CCString() = imac 0x249140;

	virtual CCObject* copyWithZone(CCZone* pZone) = imac 0x249420;
	virtual bool isEqual(const CCObject* pObject) = imac 0x2494a0;
	virtual void acceptVisitor(CCDataVisitor &visitor) = imac 0x249890;

	const char* getCString() const = imac 0x249010;
}

[[link(win, android)]]
class cocos2d::CCTextFieldTTF : cocos2d::CCLabelTTF, cocos2d::CCIMEDelegate {
	virtual bool attachWithIME() = imac 0xb7260;
	virtual bool detachWithIME() = imac 0xb72e0;
}

[[link(win, android)]]
class cocos2d::CCTextureCache : cocos2d::CCObject {
	static CCTextureCache* sharedTextureCache() = imac 0x1db730;

	cocos2d::CCTexture2D* addImage(char const*, bool) = imac 0x1dcb90;
	cocos2d::CCTexture2D* textureForKey(const char* key) = imac 0x1ddc40;
}

[[link(win, android)]]
class cocos2d::CCTexture2D : cocos2d::CCObject {
	// CCTexture2D(cocos2d::CCTexture2D const&);
	virtual ~CCTexture2D() = imac 0x1615a0;
	CCTexture2D() = imac 0x1614d0;

	virtual CCTexture2DPixelFormat getPixelFormat() = imac 0x161670;
	virtual unsigned int getPixelsWide() = imac 0x161680;
	virtual unsigned int getPixelsHigh() = imac 0x161690;
	virtual GLuint getName() = imac 0x1616a0;
	virtual GLfloat getMaxS() = imac 0x161730;
	virtual void setMaxS(GLfloat) = imac 0x161740;
	virtual GLfloat getMaxT() = imac 0x161750;
	virtual void setMaxT(GLfloat) = imac 0x161760;
	virtual cocos2d::CCSize getContentSize() = imac 0x1616b0;
  virtual cocos2d::CCGLProgram* getShaderProgram() = imac 0x161770;
  virtual void setShaderProgram(cocos2d::CCGLProgram*) = imac 0x161780;

	void setTexParameters(ccTexParams* texParams) = imac 0x162860;
	bool initWithImage(cocos2d::CCImage * uiImage) = imac 0x161b60;
}

[[link(win, android)]]
class cocos2d::CCTouch : cocos2d::CCObject {
  cocos2d::CCPoint getLocation() const = imac 0xb5e0;
}

[[link(win, android)]]
class cocos2d::CCTouchDispatcher : cocos2d::CCObject, cocos2d::EGLTouchDelegate {
	void touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int);

	void incrementForcePrio() = imac 0x197650;
	void decrementForcePrio() = imac 0x197660;
	void setPriority(int nPriority, cocos2d::CCTouchDelegate *pDelegate) = imac 0x197f30;
	cocos2d::CCTouchHandler* findHandler(cocos2d::CCTouchDelegate *pDelegate) = imac 0x197b20;
	void addStandardDelegate(cocos2d::CCTouchDelegate *pDelegate, int nPriority) = imac 0x197760;
	void addTargetedDelegate(cocos2d::CCTouchDelegate *pDelegate, int nPriority, bool bSwallowsTouches) = imac 0x1977e0;

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
class cocos2d::CCTransitionScene : cocos2d::CCScene {
	virtual ~CCTransitionScene() = imac 0x6d3e0;

	virtual void onEnter() = imac 0x6d880;
	virtual void onExit() = imac 0x6d8d0;
	virtual void cleanup() = imac 0x6d930;
	virtual void draw() = imac 0x6d630;
	virtual bool initWithDuration(float t,CCScene* scene) = imac 0x6d590;
	virtual void sceneOrder() = imac 0x6d620;
}

[[link(win, android)]]
class cocos2d::CCTransitionFade : cocos2d::CCTransitionScene {
	static cocos2d::CCTransitionFade* create(float duration,cocos2d::CCScene* scene) = imac 0x72130;
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

class cocos2d::extension::CCControlColourPicker : cocos2d::CCControl {
	static CCControlColourPicker* colourPicker() = imac 0x114dd0;
}

[[link(win, android)]]
class cocos2d::CCImage : cocos2d::CCObject {
	CCImage() = imac 0x16c1d0;
	virtual ~CCImage() = imac 0x16c250;

	virtual unsigned short getWidth() const; // = imac 0x16d370;
	virtual unsigned short getHeight() const; // = imac 0x16d380;
	virtual int getBitsPerComponent() const; // = imac 0x16d390;

	bool initWithImageData(void * pData, int nDataLen, EImageFormat eFmt, int nWidth, int nHeight, int nBitsPerComponent) = imac 0x16c490;
}

[[link(win, android)]]
class cocos2d::CCIMEDelegate {
	CCIMEDelegate() = imac 0x194e30;
	virtual ~CCIMEDelegate() = imac 0x1951a0;
}

[[link(win, android)]]
class cocos2d::CCIMEDispatcher {
	static cocos2d::CCIMEDispatcher* sharedDispatcher() = imac 0x194f20;

	// CCIMEDispatcher();

	void addDelegate(cocos2d::CCIMEDelegate*);
	bool attachDelegateWithIME(cocos2d::CCIMEDelegate*);
	bool detachDelegateWithIME(cocos2d::CCIMEDelegate*);
	void dispatchDeleteBackward() = imac 0x195670;
	void dispatchInsertText(char const*, int) = imac 0x195640;
	void dispatchKeyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&);
	void dispatchKeyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&);
	void dispatchKeyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
	void dispatchKeyboardWillHide();
	void dispatchKeyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
	char const* getContentText();
	bool hasDelegate() = imac 0x195620;
	void removeDelegate(cocos2d::CCIMEDelegate*);
}

[[link(win, android)]]
class cocos2d::CCKeyboardDispatcher : cocos2d::CCObject {
	bool dispatchKeyboardMSG(cocos2d::enumKeyCodes, bool) = imac 0x8b200;
	const char* keyToString(cocos2d::enumKeyCodes key) = imac 0x8b4b0;
	void updateModifierKeys(bool shft, bool ctrl, bool alt, bool cmd) = imac 0x8b490;
}

[[link(win, android)]]
class cocos2d::CCMouseDispatcher : cocos2d::CCObject {
	// CCMouseDispatcher(cocos2d::CCMouseDispatcher const&);
	// CCMouseDispatcher();
	void addDelegate(cocos2d::CCMouseDelegate*);
	bool dispatchScrollMSG(float, float) = imac 0x1d0210;
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

[[link(win, android)]]
class cocos2d::extension::CCScale9Sprite : cocos2d::CCNodeRGBA {
	static cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect) = imac 0x146160;
	static cocos2d::extension::CCScale9Sprite* create(const char* file) = imac 0x146340;
	static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(const char*spriteFrameName, CCRect capInsets) = imac 0x146520;
	static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(const char*spriteFrameName) = imac 0x1466e0;
}

[[link(win, android)]]
class cocos2d {
	static void ccDrawLine(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x91060;
	static void ccDrawColor4B( GLubyte r, GLubyte g, GLubyte b, GLubyte a ) = imac 0x92150;
	static void ccGLBlendFunc(GLenum sfactor, GLenum dfactor) = imac 0x118db0;
	static void ccDrawSolidRect( cocos2d::CCPoint origin, cocos2d::CCPoint destination, cocos2d::ccColor4F color ) = imac 0x912b0;

}

// [[link(win, android)]]
// class pugi::xml_document {
//	gd::string save_string(const char*, unsigned int, pugi::xml_encoding) const;
// }
