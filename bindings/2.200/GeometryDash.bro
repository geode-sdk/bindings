
[[link(android)]]
class FLAlertLayer : cocos2d::CCLayerColor {
	inline FLAlertLayer() {
		m_buttonMenu = nullptr;
		m_controlConnected = -1;
		m_mainLayer = nullptr;
		m_ZOrder = 0;
		m_noElasticity = false;
		m_reverseKeyBack = false;
		m_scene = nullptr;
		m_alertProtocol = nullptr;
		m_scrollingLayer = nullptr;
		m_button2 = nullptr;
		m_button1 = nullptr;
		m_joystickConnected = -1;
		m_containsBorder = 0;
		m_forcePrioRegistered = false;
	}
	static FLAlertLayer* create(char const* title, const gd::string& desc, char const* btn) {
		return FLAlertLayer::create(nullptr, title, desc, btn, nullptr, 300.0);
	}

	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*) = win 0x30c40;
	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float) = win 0x30cf0;
	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float, bool, float, float) = win 0x30da0;

	bool init(int) = win 0x30eb0;
	bool init(FLAlertLayerProtocol*, char const* title, gd::string description, char const* btn1, char const* btn2, float width, bool scrollable, float height, float textScale) = win 0x30f50;
	~FLAlertLayer() = win 0x30b80;

	void onBtn1(cocos2d::CCObject* sender) = win 0x31a40;
	void onBtn2(cocos2d::CCObject* sender) = win 0x31a80;

	// TODO: inlined on windows
	void incrementForcePrio();

	// doesnt exist on windows, nor android armv8..

	// 2.2 order not tested

	// virtual void onEnter();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31ac0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31c10;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31b50;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31bc0;
	virtual void registerWithTouchDispatcher() = win 0x31df0;
	virtual void keyBackClicked() = win 0x319a0;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x31930;
	virtual void show() = win 0x31c60;

	cocos2d::CCMenu* m_buttonMenu;
	FLAlertLayerProtocol* m_alertProtocol;
	cocos2d::CCNode* m_scene;
	bool m_reverseKeyBack;
	cocos2d::ccColor3B m_color;
	cocos2d::CCLayer* m_mainLayer;
	int m_ZOrder;
	bool m_noElasticity;
	cocos2d::ccColor3B m_color2;
	ButtonSprite* m_button1;
	ButtonSprite* m_button2;
	ScrollingLayer* m_scrollingLayer;
	int m_controlConnected;
	bool m_containsBorder;
	bool m_noAction;
	int m_joystickConnected;
	bool m_forcePrioRegistered;
}

[[link(android)]]
class FLAlertLayerProtocol {
	virtual void FLAlert_Clicked(FLAlertLayer*, bool);
}

[[link(android)]]
class ButtonSprite : cocos2d::CCSprite {
	/// Create a ButtonSprite with a top sprite and a texture.
	/// @param topSprite The top sprite to add on top of the sprite
	/// @param width Sprite width; ignored if `absolute` is false
	/// @param absolute Whether to use absolute width or not
	/// @param texture The name of the background sprite file (can't be in a spritesheet)
	/// @param height The height of the button, leave 0 for automatic
	/// @param scale Scale of top sprite
	static ButtonSprite* create(
		cocos2d::CCSprite* topSprite,
		int width,
		bool absolute,
		float height,
		const char* texture,
		float scale
	) {
		return create(topSprite, width, 0, height, scale, absolute, texture, true);
	}

	/// Create a ButtonSprite with text, a font and a texture.
	/// @param caption The text of the ButtonSprite
	/// @param width Sprite width; ignored if `absolute` is false
	/// @param absolute Whether to use absolute width or not
	/// @param font The name of the BM font file to use
	/// @param texture The name of the background sprite file (can't be in a spritesheet)
	/// @param height The height of the button, leave 0 for automatic
	/// @param scale Scale of text
	/// @returns Pointer to the created ButtonSprite, or nullptr on error
	static ButtonSprite* create(const char* caption, int width, bool absolute, const char* font, const char* texture, float height, float scale) {
		return create(caption, width, 0, scale, absolute, font, texture, height);
	}

	static ButtonSprite* create(char const* caption) {
		return ButtonSprite::create(caption, 0, 0, "goldFont.fnt", "GJ_button_01.png", .0f, 1.f);
	}
	static ButtonSprite* create(char const* caption, const char* font, const char* texture) {
		return ButtonSprite::create(caption, 0, 0, font, texture, .0f, 1.f);
	}
	static ButtonSprite* create(char const* caption, const char* font, const char* texture, float scale) {
		return ButtonSprite::create(caption, 0, 0, font, texture, .0f, scale);
	}
	static ButtonSprite* create(char const*, float);
	static ButtonSprite* create(char const*, int, int, float, bool);
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*);
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*, float) = win 0x1feb0;
	static ButtonSprite* create(cocos2d::CCSprite*);
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool);
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool, char const*, bool) = win 0x1fb90;

	bool init(char const*, int, int, float, bool, char const*, char const*, float) = win 0x1ff80;
	bool init(cocos2d::CCSprite*, int, int, float, float, bool, char const*, bool) = win 0x1fc60;
	~ButtonSprite();

	void setColor(cocos2d::ccColor3B) = win 0x20b20;
	void setString(char const*) = win 0x20770;

	TodoReturn updateBGImage(char const*) = win 0x20230;
	TodoReturn updateSpriteBGSize();
	TodoReturn updateSpriteOffset(cocos2d::CCPoint);
}

[[link(android)]]
class ScrollingLayer : cocos2d::CCLayerColor {
	static ScrollingLayer* create(cocos2d::CCSize, cocos2d::CCPoint, float);

	bool init(cocos2d::CCSize, cocos2d::CCPoint, float);
	~ScrollingLayer();

	TodoReturn getViewRect();

	/* unverified signature */
	void setStartOffset(cocos2d::CCPoint);

	virtual void draw();
	virtual void visit();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
}

[[link(android)]]
class CreatorLayer : cocos2d::CCLayer, cocos2d::CCSceneTransitionDelegate, DialogDelegate {
	static CreatorLayer* create();

	~CreatorLayer();

	void onMapPacks(cocos2d::CCObject* sender) = win 0x70250;
	void onMyLevels(cocos2d::CCObject* sender) = win 0x6FE90;
	void onTopLists(cocos2d::CCObject* sender) = win 0x70160;
	void onChallenge(cocos2d::CCObject* sender) = win 0x70910;
	void onGauntlets(cocos2d::CCObject* sender);
	void onDailyLevel(cocos2d::CCObject* sender);
	void onEventLevel(cocos2d::CCObject* sender) = win 0x70740;
	void onFameLevels(cocos2d::CCObject* sender);
	void onMultiplayer(cocos2d::CCObject* sender) = win 0x70330;
	void onSavedLevels(cocos2d::CCObject* sender) = win 0x6FF80;
	void onSecretVault(cocos2d::CCObject* sender) = win 0x70940;
	void onWeeklyLevel(cocos2d::CCObject* sender);
	void onAdventureMap(cocos2d::CCObject* sender) = win 0x706C0;
	void onLeaderboards(cocos2d::CCObject* sender);
	void onOnlineLevels(cocos2d::CCObject* sender) = win 0x701E0;
	void onTreasureRoom(cocos2d::CCObject* sender) = win 0x70C50;
	void onFeaturedLevels(cocos2d::CCObject* sender) = win 0x700C0;
	void onOnlyFullVersion(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onPaths(cocos2d::CCObject* sender);

	TodoReturn checkQuestsStatus() = win 0x71090;
	TodoReturn canPlayOnlineLevels();
	TodoReturn scene();

	virtual bool init() = win 0x6F090;
	virtual void keyBackClicked();
	virtual void sceneWillResume();
	virtual TodoReturn dialogClosed(DialogLayer*) = win 0x711d0;
}

[[link(android)]]
class BoomScrollLayerDelegate {
	virtual TodoReturn scrollLayerScrollingStarted(BoomScrollLayer*);
	virtual TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int);
	virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint);
	virtual TodoReturn scrollLayerWillScrollToPage(BoomScrollLayer*, int);
}

[[link(android)]]
class LevelSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate, DynamicScrollDelegate {
	static LevelSelectLayer* create(int);

	bool init(int);
	~LevelSelectLayer();

	TodoReturn getColorValue(int, int, float);

	void onDownload(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onNext(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onPrev(cocos2d::CCObject* sender);

	TodoReturn colorForPage(int);
	TodoReturn scene(int);
	TodoReturn tryShowAd();

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn updatePageWithObject(cocos2d::CCObject*, cocos2d::CCObject*);
	virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint);
}

[[link(android)]]
class LevelManagerDelegate {
	virtual void loadLevelsFinished(cocos2d::CCArray*, char const*) {}
	virtual void loadLevelsFailed(char const*) {}
	virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) {}
	virtual void loadLevelsFailed(char const*, int) {}
    virtual void setupPageInfo(gd::string, char const*) {}
}

[[link(android)]]
class GauntletLayer : cocos2d::CCLayer, LevelManagerDelegate {
	static GauntletLayer* create(GauntletType);

	bool init(GauntletType) = win 0x183860;
	~GauntletLayer();

	void onBack(cocos2d::CCObject* sender);
	void onLevel(cocos2d::CCObject* sender);

	TodoReturn setupGauntlet(cocos2d::CCArray*);
	TodoReturn unlockActiveItem();
	TodoReturn scene(GauntletType);

	virtual void keyBackClicked();
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	virtual TodoReturn loadLevelsFailed(char const*, int);
}

[[link(android)]]
class CCMenuItemSpriteExtra : cocos2d::CCMenuItemSprite {
	void useAnimationType(MenuAnimationType type) {
		m_startPosition = this->getNormalImage()->getPosition();
		m_animationType = type;
	}
	void setDestination(cocos2d::CCPoint const& pos) {
		m_destPosition = pos;
	}
	void setOffset(cocos2d::CCPoint const& pos) {
		m_offset = pos;
	}
	void setScale(float scale) {
		this->CCMenuItemSprite::setScale(scale);
		m_baseScale = scale;
	}
	static CCMenuItemSpriteExtra* create(cocos2d::CCNode* sprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) {
		return CCMenuItemSpriteExtra::create(sprite, nullptr, target, callback);
	}

	static CCMenuItemSpriteExtra* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = win 0x25830;

	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	~CCMenuItemSpriteExtra();

	/* unverified signature */
	void setSizeMult(float mult) {
		//inlined on windows, member is in CCMenuItemSprite
		m_scaleMultiplier = mult;
	}

	// 2.2 not tested

	virtual void activate();
	virtual void selected();
	virtual void unselected();

	float m_scaleMultiplier;
	float m_baseScale;
	bool m_animationEnabled;
	bool m_colorEnabled;
	float m_unknown1;
	gd::string m_unknown2;
	gd::string m_unknown3;
	float m_colorDip;
	cocos2d::CCPoint m_destPosition;
	cocos2d::CCPoint m_offset;
	MenuAnimationType m_animationType;
	cocos2d::CCPoint m_startPosition;
	int m_unknown4;
}

[[link(android)]]
class CCTextInputNode : cocos2d::CCLayer, cocos2d::CCIMEDelegate, cocos2d::CCTextFieldDelegate {
	inline CCTextInputNode() {}
	inline static CCTextInputNode* create(float width, float height, char const* placeholder, char const* fontPath) {
		return CCTextInputNode::create(width, height, placeholder, 0x18, fontPath);
	}
	inline static CCTextInputNode* create(float width, float height, char const* placeholder, int fontSize, char const* fontPath) {
		return CCTextInputNode::create(width, height, placeholder, "Thonburi", fontSize, fontPath);
	}
	void setDelegate(TextInputDelegate* delegate) {
		m_delegate = delegate;
	}
	inline void setMaxLabelScale(float v) {
		m_maxLabelScale = v;
		this->refreshLabel();
	}
	void setMaxLabelWidth(float v) {
		m_maxLabelWidth = v;
		this->refreshLabel();
	}
	void setLabelPlaceholderScale(float v) {
		m_placeholderScale = v;
		this->refreshLabel();
	}
	void setLabelPlaceholderColor(cocos2d::ccColor3B color) {
		m_placeholderColor = color;
		this->refreshLabel();
	}

	static CCTextInputNode* create(float, float, char const*, char const*, int, char const*) = win 0x2e440;

	bool init(float, float, char const*, char const*, int, char const*) = win 0x2e500;
	~CCTextInputNode();

	gd::string getString() = win 0x2ea50;

	void setAllowedChars(gd::string) = win 0x2e8c0;
	/* unverified signature */
	void setLabelNormalColor(cocos2d::_ccColor3B);
	/* unverified signature */
	void setString(gd::string) = win 0x2e9a0;

	TodoReturn addTextArea(TextArea*);
	TodoReturn forceOffset();
	void updateLabel(gd::string) = win 0x2eac0;
	void refreshLabel() = win 0x2ede0;
	TodoReturn updateBlinkLabel();
	TodoReturn updateCursorPosition(cocos2d::CCPoint, cocos2d::CCRect);
	TodoReturn updateBlinkLabelToChar(int);
	TodoReturn updateDefaultFontValues(gd::string);

	// 2.2, very wrong since this class changed a lot

	virtual void visit();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void textChanged();
	virtual void onClickTrackNode(bool) = win 0x02f600;
	virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
	virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
	virtual bool onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int, cocos2d::enumKeyCodes);
	virtual bool onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF*);
	virtual bool onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF*);

	bool m_numberInput;
	gd::string m_caption;
	int m_unknown1;
	bool m_selected;
	bool m_unknown2;
	PAD = android32 0xc, win 0xc, android64 0x10;
	gd::string m_allowedChars;
	float m_maxLabelWidth;
	float m_maxLabelScale;
	float m_placeholderScale;
	cocos2d::ccColor3B m_placeholderColor;
	cocos2d::ccColor3B m_textColor;
	cocos2d::CCLabelBMFont* m_cursor;
	cocos2d::CCTextFieldTTF* m_textField;
	TextInputDelegate* m_delegate;
	int m_maxLabelLength;
	cocos2d::CCLabelBMFont* m_placeholderLabel;
	bool m_unknown3;
	bool m_usePasswordChar;
	bool m_forceOffset;
	PAD = android32 0x10, android64 0x18;
}

[[link(android)]]
class TextArea : cocos2d::CCSprite {
	static TextArea* create(gd::string, char const*, float, float, cocos2d::CCPoint, float, bool) = win 0x51FB0;

	bool init(gd::string, char const*, float, float, cocos2d::CCPoint, float, bool) = win 0x520B0;
	~TextArea();

	void setIgnoreColorCode(bool);
	void setString(gd::string) = win 0x521C0;

	TodoReturn finishFade();
	TodoReturn colorAllLabels(cocos2d::_ccColor3B);
	TodoReturn fadeInCharacters(float, float);
	TodoReturn fadeOutAndRemove();
	TodoReturn colorAllCharactersTo(cocos2d::_ccColor3B);
	TodoReturn stopAllCharacterActions();
	TodoReturn fadeIn(float, bool);
	TodoReturn fadeOut(float);
	TodoReturn hideAll();
	TodoReturn showAll();

	virtual void update(float);
	virtual void draw();
	virtual void setOpacity(unsigned char);
}

[[link(android)]]
class Slider : cocos2d::CCLayer {
	static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler) {
		return Slider::create(target, handler, 1.f);
	}
	static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler, float idk) {
		return Slider::create(target, handler, "sliderBar.png", "slidergroove.png", "sliderthumb.png", "sliderthumbsel.png", idk);
	}
	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float) = win 0x4ce90;

	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float);
	~Slider();

	TodoReturn getLiveDragging();
	SliderThumb* getThumb() {
		return m_touchLogic->m_thumb;
	}
	float getValue() = win 0x4d250;

	void setRotated(bool);
	void setMaxOffset(float);
	void setLiveDragging(bool);
	void setBarVisibility(bool);
	// inlined on windows
	void setValue(float val) {
		this->getThumb()->setValue(val);
		this->updateBar();
	}

	TodoReturn hideGroove(bool);
	TodoReturn sliderBegan();
	TodoReturn sliderEnded();
	TodoReturn disableTouch();
	TodoReturn enableSlider();
	TodoReturn disableSlider();
	void updateBar() = win 0x4d2f0;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);

	SliderTouchLogic* m_touchLogic;
	cocos2d::CCSprite* m_sliderBar;
	cocos2d::CCSprite* m_groove;
	float m_width;
	float m_height;
	void* m_unknown;
	void* m_unknown2;
}

[[link(android)]]
class CCIndexPath : cocos2d::CCObject {
	inline CCIndexPath() {}
	~CCIndexPath();
}

[[link(android)]]
class TableView : CCScrollLayerExt, CCScrollLayerExtDelegate {
	static TableView* create(TableViewDelegate*, TableViewDataSource*, TableViewCellDelegate*, cocos2d::CCRect);

	TodoReturn initTableViewCells();
	~TableView();

	TodoReturn claimTouch(cocos2d::CCTouch*);
	void reloadData() = win 0x504d0;
	TodoReturn touchFinish(cocos2d::CCTouch*);
	TodoReturn cellForTouch(cocos2d::CCTouch*);
	TodoReturn checkLastCell(TableViewCell*);
	TodoReturn checkFirstCell(TableViewCell*);
	TodoReturn scrollToIndexPath(CCIndexPath&);
	TodoReturn cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn checkBoundaryOfCell(TableViewCell*);
	TodoReturn checkBoundaryOfCell(cocos2d::CCPoint&, float);
	TodoReturn deleteTableViewCell(TableViewCell*);
	/* unverified signature */
	bool isDuplicateIndexPath(CCIndexPath&);
	TodoReturn cellForRowAtIndexPath(CCIndexPath&);
	TodoReturn checkBoundaryOfContent(float);
	/* unverified signature */
	bool isDuplicateInVisibleCellArray(CCIndexPath*);
	TodoReturn dequeueReusableCellWithIdentifier(char const*);
	TodoReturn removeIndexPathFromPathAddedArray(CCIndexPath&);
	TableView(cocos2d::CCRect);

	virtual void onEnter();
	virtual void onExit();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void scrollWheel(float, float) = win 0x50d30;
	virtual TodoReturn scrllViewWillBeginDecelerating(CCScrollLayerExt*);
	virtual TodoReturn scrollViewDidEndDecelerating(CCScrollLayerExt*);
	virtual TodoReturn scrollViewTouchMoving(CCScrollLayerExt*);
	virtual TodoReturn scrollViewDidEndMoving(CCScrollLayerExt*);

	bool m_touchOutOfBoundary;
	cocos2d::CCTouch* m_touchStart;
	cocos2d::CCPoint m_touchStartPosition2;
	cocos2d::CCPoint m_unknown2;
	cocos2d::CCPoint m_touchPosition2;
	void* m_idk;
	bool m_touchMoved;
	cocos2d::CCArray* m_cellArray;
	cocos2d::CCArray* m_array2;
	cocos2d::CCArray* m_array3;
	TableViewDelegate* m_tableDelegate;
	TableViewDataSource* m_dataSource;
	TableViewCellDelegate* m_cellDelegate;
	int m_unused2;
	void* m_unused3;
	int m_unused4;
	float m_touchLastY;
	bool m_cancellingTouches;
}

[[link(android)]]
class TableViewCell : cocos2d::CCLayer {
	TableViewCell(char const*, float, float) = win 0x51b10;
	~TableViewCell();

	TodoReturn updateVisibility();

	// 2.2, not tested

	bool m_unknown;
	TableView* m_tableView;
	CCIndexPath m_indexPath;
	void* m_unknown2;
	void* m_unknown3;
	int m_unknownThing; // don't even know if this is an int, it's always set to 0
	gd::string m_unknownString;
	float m_width;
	float m_height;
	cocos2d::CCLayerColor* m_backgroundLayer;
	cocos2d::CCLayer* m_mainLayer;
	BoomListType m_listType;
}

[[link(android)]]
class TableViewDelegate {
	// these are pure virtuals
	virtual void willTweenToIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual void didEndTweenToIndexPath(CCIndexPath&, TableView*) {}
	virtual void TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual void TableViewDidDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual void TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual float cellHeightForRowAtIndexPath(CCIndexPath&, TableView*) { return 0; }
	virtual void didSelectRowAtIndexPath(CCIndexPath&, TableView*) {}
}

[[link(android)]]
class TextInputDelegate {
	virtual void textChanged(CCTextInputNode*);
	virtual void textInputOpened(CCTextInputNode*);
	virtual void textInputClosed(CCTextInputNode*);
	virtual void textInputShouldOffset(CCTextInputNode*, float);
	virtual void textInputReturn(CCTextInputNode*);
	virtual void allowTextInput(CCTextInputNode*);
	virtual void enterPressed(CCTextInputNode*);
}

[[link(android)]]
class TableViewDataSource {
	virtual int numberOfRowsInSection(unsigned int, TableView*) { return 0; }
	virtual unsigned int numberOfSectionsInTableView(TableView*) { return 0; }
	virtual void TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&) {}
	virtual TableViewCell* cellForRowAtIndexPath(CCIndexPath&, TableView*) { return nullptr; }
}

[[link(android)]]
class TableViewCellDelegate {
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	virtual TodoReturn getSelectedCellIdx();
	virtual TodoReturn shouldSnapToSelected();
}

[[link(android)]]
class CCScrollLayerExt : cocos2d::CCLayer {
	CCScrollLayerExt(cocos2d::CCRect) = win 0x276e0;
	~CCScrollLayerExt();

	TodoReturn getMaxY();
	TodoReturn getMinY();

	/* unverified signature */
	void setContentOffset(cocos2d::CCPoint, bool);
	/* unverified signature */
	void setContentLayerSize(cocos2d::CCSize);

	void scrollLayer(float) = win 0x28550;
	TodoReturn scrollingEnd();
	TodoReturn updateIndicators(float);
	TodoReturn constraintContent();
	TodoReturn doConstraintContent(bool);
	void moveToTopWithOffset(float) = win 0x27ae0;
	void moveToTop() = win 0x27b60;

	virtual void visit() = win 0x28600;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x280d0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x281c0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x28410;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x283e0;
	virtual void registerWithTouchDispatcher() = win 0x280a0;
	virtual TodoReturn preVisitWithClippingRect(cocos2d::CCRect) = win 0x286d0;
	virtual TodoReturn postVisit() = win 0x28760;

	cocos2d::CCTouch* m_touch;
	cocos2d::CCPoint m_touchPosition;
	cocos2d::CCPoint m_touchStartPosition;
	cocos2d::cc_timeval m_timeValue;
	bool m_touchDown;
	bool m_notAtEndOfScroll;
	cocos2d::CCLayerColor* m_verticalScrollbar;
	cocos2d::CCLayerColor* m_horizontalScrollbar;
	CCScrollLayerExtDelegate* m_delegate;
	CCContentLayer* m_contentLayer;
	bool m_cutContent;
	bool m_vScrollbarVisible;
	bool m_hScrollbarVisible;
	bool m_disableHorizontal;
	bool m_disableVertical;
	bool m_disableMovement;
	float m_scrollLimitTop;
	float m_scrollLimitBottom;
	float m_peekLimitTop;
	float m_peekLimitBottom;
}

[[link(android)]]
class CCScrollLayerExtDelegate {
	virtual void scrllViewWillBeginDecelerating(CCScrollLayerExt*) {}
	virtual void scrollViewDidEndDecelerating(CCScrollLayerExt*) {}
	virtual void scrollViewTouchMoving(CCScrollLayerExt*) {}
	virtual void scrollViewDidEndMoving(CCScrollLayerExt*) {}
	virtual void scrollViewTouchBegin(CCScrollLayerExt*) {}
	virtual void scrollViewTouchEnd(CCScrollLayerExt*) {}
}

[[link(android)]]
class CustomListView : BoomListView {
	inline static CustomListView* create(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
		return CustomListView::create(entries, nullptr, width, height, 0, type, 0.0f);
	}

	static CustomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = win 0x7A880;

	inline CustomListView() {}
	~CustomListView();

	float getCellHeight(BoomListType);

	TodoReturn reloadAll();

	virtual void setupList(float) = win 0x7B710;
	virtual TableViewCell* getListCell(char const*);
	virtual void loadCell(TableViewCell*, int) = win 0x7B2D0;

	int m_unknown;
}

[[link(android)]]
class BoomListView : cocos2d::CCLayer, TableViewDelegate, TableViewDataSource {
	static BoomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType);

	bool init(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = win 0x1d400;
	BoomListView() {}
	~BoomListView() {
		CC_SAFE_RELEASE(m_entries);
	}

	inline bool init(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
		return this->init(entries, nullptr, height, width, 0, type, 0.0f);
	}
	TodoReturn addObjectToList(cocos2d::CCNode*);
	TodoReturn lockList(bool);

	// 2.2, not tested

	virtual void draw() {}
	virtual void setupList(float) = win 0x1d5c0;
	virtual void TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual float cellHeightForRowAtIndexPath(CCIndexPath&, TableView*) = win 0x1d650;
	virtual void didSelectRowAtIndexPath(CCIndexPath&, TableView*) {}
	virtual int numberOfRowsInSection(unsigned int, TableView*) = win 0x1d660;
	virtual unsigned int numberOfSectionsInTableView(TableView*) = win 0x1d250;
	virtual TableViewCell* cellForRowAtIndexPath(CCIndexPath&, TableView*) = win 0x1d670;
	virtual void TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&) = win 0x1d230;
	virtual void TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual TableViewCell* getListCell(char const*) = win 0x1d6d0;
	virtual void loadCell(TableViewCell*, int) = win 0x1d7b0;

	TableView* m_tableView;
	cocos2d::CCArray* m_entries;
	BoomListType m_type;
	float m_height;
	float m_width;
	float m_itemSeparation;
	int m_currentPage;
	bool m_locked;
}

[[link(android)]]
class CCMenuItemToggler : cocos2d::CCMenuItem {
	inline CCMenuItemToggler() : CCMenuItem(), m_onButton(nullptr), m_offButton(nullptr), m_toggled(false), m_notClickable(false) {}

	static CCMenuItemToggler* createWithSize(const char* spr1, const char* spr2, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback, float scale) {
		auto sprOff = cocos2d::CCSprite::createWithSpriteFrameName(spr1);
		auto sprOn = cocos2d::CCSprite::createWithSpriteFrameName(spr2);

		sprOff->setScale(scale);
		sprOn->setScale(scale);

		return create(sprOff, sprOn, target, callback);
	}
	static CCMenuItemToggler* createWithStandardSprites(cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback, float scale) {
		auto sprOff = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOff_001.png");
		auto sprOn = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOn_001.png");

		sprOff->setScale(scale);
		sprOn->setScale(scale);

		return create(sprOff, sprOn, target, callback);
	}
	bool isOn() {
		return m_toggled;
	}
	bool isToggled() {
		return m_toggled;
	}
	void setClickable(bool on) {
		m_notClickable = !on;
	}
	void toggleWithCallback(bool on) {
		this->activate();
		this->toggle(on);
	}

	static CCMenuItemToggler* create(cocos2d::CCNode* offSpr, cocos2d::CCNode* onSpr, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) = win 0x25e50;

	bool init(cocos2d::CCNode* off, cocos2d::CCNode* on, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler handler) = win 0x25f30;

	void setSizeMult(float);

	void toggle(bool) = win 0x261e0;
	TodoReturn activeItem();
	TodoReturn normalTouch(cocos2d::CCObject*);
	TodoReturn selectedTouch(cocos2d::CCObject*);

	virtual void setEnabled(bool enabled) = win 0x26160;

	virtual void activate() = win 0x26100;
	virtual void selected() = win 0x260d0;
	virtual void unselected() = win 0x26130;

	CCMenuItemSpriteExtra* m_offButton;
	CCMenuItemSpriteExtra* m_onButton;
	bool m_toggled;
	bool m_notClickable;
}

[[link(android)]]
class CCContentLayer : cocos2d::CCLayerColor {
	static CCContentLayer* create(cocos2d::_ccColor4B const&, float, float);
	inline CCContentLayer() {}
	~CCContentLayer();

	virtual void setPosition(cocos2d::CCPoint const&) = win 0x23b20;
}

[[link(android)]]
class MenuLayer : cocos2d::CCLayer, FLAlertLayerProtocol, GooglePlayDelegate {
	static cocos2d::CCScene* scene(bool) = win 0x276680;
	// MenuLayer::create is inlined on android, but not on windows somehow lol :P

	~MenuLayer();

	void onFacebook(cocos2d::CCObject* sender) = mac 0x36f670, win 0x2779b0;
	void onEveryplay(cocos2d::CCObject* sender); // empty
	void onMoreGames(cocos2d::CCObject* sender) = mac 0x36f710, win 0x277a50;
	void onMyProfile(cocos2d::CCObject* sender) = mac 0x36f860, win 0x277940;
	void onFreeLevels(cocos2d::CCObject* sender);
	void onGameCenter(cocos2d::CCObject* sender) = mac 0x36fac0;
	void onNewgrounds(cocos2d::CCObject* sender) = mac 0x36f580, win 0x277d90;
	void onFullVersion(cocos2d::CCObject* sender);
	void onAchievements(cocos2d::CCObject* sender) = mac 0x36f4c0, win 0x277ae0;
	void onGooglePlayGames(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender) = mac 0x36f310, win 0x277b40;
	void onQuit(cocos2d::CCObject* sender) = mac 0x36f790, win 0x277e20;
	void onDaily(cocos2d::CCObject* sender) = mac 0x36f9d0, win 0x2777b0;
	void onStats(cocos2d::CCObject* sender)  = mac 0x36f540, win 0x277c50;
	void onGarage(cocos2d::CCObject* sender) = mac 0x36f3a0, win 0x277cf0;
	void onRobTop(cocos2d::CCObject* sender) = mac 0x36f650, win 0x277990;
	void onTwitch(cocos2d::CCObject* sender) = mac 0x36f6d0, win 0x277a10;
	void onCreator(cocos2d::CCObject* sender) = mac 0x36f430, win 0x277c80;
	void onDiscord(cocos2d::CCObject* sender) = mac 0x36f6f0, win 0x277a30;
	void onOptions(cocos2d::CCObject* sender) = mac 0x36f500, win 0x277be0;
	void onTrailer(cocos2d::CCObject* sender) = mac 0x36fea0;
	void onTwitter(cocos2d::CCObject* sender) = mac 0x36f690, win 0x2779d6;
	void onYouTube(cocos2d::CCObject* sender) = mac 0x36f6b0, win 0x2779f0;

	TodoReturn openOptions(bool) = mac 0x75bcf0, win 0x2ab400;
	TodoReturn showGCQuestion() = mac 0x36fb10;
	TodoReturn firstNetworkTest() = mac 0x36fa30, win 0x277900;
	TodoReturn onOptionsInstant();
	TodoReturn showMeltdownPromo(); // empty
	TodoReturn videoOptionsClosed();
	TodoReturn videoOptionsOpened();
	TodoReturn updateUserProfileButton();
	TodoReturn syncPlatformAchievements(float);
	TodoReturn endGame();
	TodoReturn showTOS() = mac 0x36f9f0, win 0x277910;
	TodoReturn tryShowAd(float);
	TodoReturn willClose();

	virtual bool init() = mac 0x36dfd0, win 0x276700;
	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void googlePlaySignedIn() = win 0x277b10;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x277ea0;
}

[[link(android)]]
class LoadingLayer : cocos2d::CCLayer {
	static cocos2d::CCScene* scene(bool);
	static LoadingLayer* create(bool fromReload) = win 0x271A90;

	bool init(bool fromReload) = win 0x271B30, mac 0x380350;

	const char* getLoadingString() = win 0x272A20;

	void loadAssets() = win 0x272390;
	TodoReturn updateProgress(int);
	void loadingFinished() = win 0x2722A0;

	// 2.2, not tested

	bool m_unknown;
	bool m_unknown2;
	int m_loadStep;
	cocos2d::CCLabelBMFont* m_caption;
	TextArea* m_textArea;
	cocos2d::CCSprite* m_sliderBar;
	float m_sliderGrooveXPos;
	float m_sliderGrooveHeight;
	bool m_fromRefresh;
}

[[link(android)]]
class GooglePlayDelegate {
	virtual TodoReturn googlePlaySignedIn();
}

[[link(android)]]
class TextAlertPopup : cocos2d::CCNode {
	static TextAlertPopup* create(gd::string, float, float, int, gd::string);

	bool init(gd::string, float, float, int, gd::string);
	~TextAlertPopup();

	/* unverified signature */
	void setLabelColor(cocos2d::_ccColor3B);
	/* unverified signature */
	void setAlertPosition(cocos2d::CCPoint, cocos2d::CCPoint);
}

[[link(android)]]
class GJGarageLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, GameRateDelegate, ListButtonBarDelegate, DialogDelegate, CharacterColorDelegate {
	~GJGarageLayer();

	TodoReturn getLockFrame(int, UnlockType);
	TodoReturn getItems(IconType);
	TodoReturn getItems(int, int, IconType, int);

	void onNavigate(cocos2d::CCObject* sender);
	void onSelectTab(cocos2d::CCObject* sender);
	void onToggleItem(cocos2d::CCObject* sender) = win 0x1ee7d0;
	void onBack(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onShop(cocos2d::CCObject* sender);
	void onArrow(cocos2d::CCObject* sender);
	void onPaint(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender) = win 0x1ee4b0;
	void onShards(cocos2d::CCObject* sender);
	void onSpecial(cocos2d::CCObject* sender);

	TodoReturn toggleGlow();
	TodoReturn titleForUnlock(int, UnlockType);
	TodoReturn setupIconSelect();
	TodoReturn playShadowEffect();
	TodoReturn setupSpecialPage();
	TodoReturn updatePlayerName(char const*);
	TodoReturn playRainbowEffect();
	TodoReturn showUnlockPopupNew(int, UnlockType);
	TodoReturn updatePlayerColors();
	TodoReturn achievementForUnlock(int, UnlockType);
	TodoReturn descriptionForUnlock(int, UnlockType);
	TodoReturn scene();
	TodoReturn selectTab(IconType);
	TodoReturn setupPage(int, IconType);

	virtual bool init() = win 0x1EAA40;
	virtual void keyBackClicked();
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn listButtonBarSwitchedPage(ListButtonBar*, int);
	virtual void showUnlockPopup(int, UnlockType) = win 0x1eea30;
	virtual void updateRate() = win 0x1ef000;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn dialogClosed(DialogLayer*);
	virtual TodoReturn playerColorChanged();
}

[[link(android)]]
class GJGameState {
	TodoReturn tweenValue(float, float, int, float, int, float, int, int) = win 0x18b380;
	TodoReturn stopTweenAction(int);
	TodoReturn updateTweenAction(float, int);
	TodoReturn controlTweenAction(int, int, GJActionCommand);
	TodoReturn updateTweenActions(float);
	TodoReturn getGameObjectPhysics(GameObject*);
	TodoReturn processStateTriggers();
	// GJGameState() = win 0x18a380;
	// ~GJGameState();

	PAD = win 0x490, android32 0x4a8;
}

[[link(android)]]
class GJBaseGameLayer : cocos2d::CCLayer, TriggerEffectDelegate {
	// ~GJBaseGameLayer();

	// TodoReturn getBumpMod(PlayerObject*, int) = win 0x19a5d0;
	// TodoReturn getItemValue(int, int);
	// TodoReturn getMaxPortalY();
	// TodoReturn getMinPortalY();
	// TodoReturn getSpecialKey(int, bool, bool);
	// TodoReturn getGroupParent(int);
	// TodoReturn getMinDistance(cocos2d::CCPoint, cocos2d::CCArray*, float, int) = win 0x1c0c90;
	// TodoReturn getOtherPlayer(PlayerObject*);
	// TodoReturn getParticleKey(int, char const*, int, cocos2d::tCCPositionType) = win 0x1beb20;
	// TodoReturn getStaticGroup(int) = win 0x1a4f10;
	// TodoReturn getStickyGroup(int);
	// TodoReturn getTargetGroup(int, int);
	// TodoReturn getGroundHeight(PlayerObject*, int);
	// TodoReturn getParticleKey2(gd::string);
	// TodoReturn getPortalTarget(TeleportPortalObject*);
	// TodoReturn getRecordString();
	// TodoReturn getModifiedDelta(float);
	// TodoReturn getSavedPosition(int, float);
	// TodoReturn getCapacityString() = win 0x1938e0;
	// TodoReturn getEnterEasingKey(int, float);
	// TodoReturn getFollowSpeedVal(GameObject*, int, int, float, float);
	// TodoReturn getOptimizedGroup(int) = win 0x1a4f70;
	// TodoReturn getPlayerButtonID(int, bool);
	// TodoReturn getPlayTimerMilli();
	// TodoReturn getCameraEdgeValue(int);
	// TodoReturn getMoveTargetDelta(EffectGameObject*, bool);
	// TodoReturn getPortalTargetPos(TeleportPortalObject*, GameObject*, PlayerObject*);
	// TodoReturn getEnterEasingValue(float, int, float, int);
	// TodoReturn getTargetFlyCameraY(GameObject*);
	// TodoReturn getCenterGroupObject(int, int);
	// TodoReturn getSingleGroupObject(int) = win 0x1a4fd0;
	// TodoReturn getTargetGroupOrigin(int, int);
	// TodoReturn getCustomEnterEffects(int, bool);
	// TodoReturn getGroupParentsString(GameObject*);
	// TodoReturn getScaledGroundHeight(float);
	// TodoReturn getGroundHeightForMode(int);
	// TodoReturn getPlayTimerFullSeconds();
	// TodoReturn getRotateCommandTargets(EnhancedTriggerObject*, GameObject*&, GameObject*&, GameObject*&);
	// TodoReturn getActiveOrderSpawnObjects();
	// TodoReturn getGroup(int) = win 0x1a4eb0;

	// /* unverified signature */
	// void setGroupParent(GameObject*, int);
	/* unverified signature */
	void setStartPosObject(StartPosObject*) = win 0x195FC0;

	// TodoReturn applyRemap(EffectGameObject*, gd::vector<int> const&, gd::unordered_map<int, int>&);
	// TodoReturn applyShake(cocos2d::CCPoint&) = win 0x1BD670;
	// TodoReturn atlasValue(int);
	// TodoReturn bumpPlayer(PlayerObject*, EffectGameObject*) = win 0x19a6b0;
	// /* unverified signature */
	// bool isFlipping();
	// TodoReturn moveObject(GameObject*, double, double, bool);
	// TodoReturn pauseAudio() = win 0x1B7460;
	// TodoReturn pickupItem(EffectGameObject*);
	// TodoReturn resetAudio();
	// TodoReturn sortGroups();
	// TodoReturn spawnGroup(int, bool, double, gd::vector<int> const&, int, int);
	// TodoReturn swapGround(int);
	// TodoReturn updateOBB2(cocos2d::CCRect);
	// TodoReturn updateZoom(float, float, int, float, int, int);
	// TodoReturn addGuideArt(GameObject*);
	void addToGroups(GameObject*, bool) = win 0x1a4be0;
	// TodoReturn addUIObject(GameObject*);
	// TodoReturn cameraMoveX(float, float, float, bool);
	// TodoReturn cameraMoveY(float, float, float, bool);
	// TodoReturn flipGravity(PlayerObject*, bool, bool) = win 0x196720;
	// TodoReturn flipObjects();
	void moveObjects(cocos2d::CCArray*, double, double, bool) = win 0x1ADE90;
	void queueButton(int, bool, bool) = win 0x1B19C0;
	// TodoReturn resetCamera() = win 0x1BE060;
	// TodoReturn resetPlayer() = win 0x195ED5;
	void resumeAudio() = win 0x1B74C0;
	void setupLayers() = win 0x18ddc0;
	// TodoReturn setupReplay(gd::string);
	// TodoReturn shakeCamera(float, float, float) = win 0x1ba3c0;
	// TodoReturn spawnObject(GameObject*, double, gd::vector<int> const&);
	// TodoReturn toggleGroup(int, bool);
	// TodoReturn asyncGLoaded(int);
	void createPlayer() = win 0x18fed0;
	// TodoReturn flipFinished();
	void handleButton(bool push, int button, bool player1) = win 0x1b2880;
	// TodoReturn processItems() = win 0x1992d0;
	// TodoReturn recordAction(int, bool, bool);
	// TodoReturn restoreRemap(EffectGameObject*, gd::unordered_map<int, int>&);
	// TodoReturn rotateObject(GameObject*, float);
	// TodoReturn spawnPlayer2() = win 0x199990;
	// TodoReturn tryGetObject(int);
	// TodoReturn updateCamera(float) = win 0x1BCBEF;
	// TodoReturn updateReplay();
	// TodoReturn addAreaEffect(EnterEffectObject*, gd::vector<EnterEffectInstance>*, GJAreaActionType);
	// TodoReturn asyncBGLoaded(int);
	// TodoReturn asyncMGLoaded(int);
	// TodoReturn canProcessSFX(SFXTriggerState&, gd::unordered_map<int, int>&, gd::unordered_map<int, float>&, gd::vector<SFXTriggerState>&);
	// TodoReturn claimParticle(gd::string, int);
	// TodoReturn destroyObject(GameObject*);
	// TodoReturn enterDualMode(GameObject*, bool);
	// TodoReturn hasUniqueCoin(EffectGameObject*) = win 0x1995a0;
	// TodoReturn preResumeGame();
	// TodoReturn removePlayer2();
	// TodoReturn rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint, cocos2d::CCPoint, bool, bool);
	// TodoReturn spawnParticle(char const*, int, cocos2d::tCCPositionType, cocos2d::CCPoint);
	// TodoReturn toggleFlipped(bool, bool);
	// TodoReturn updateTimeMod(float, bool, bool);
	// TodoReturn animatePortalY(float, float, float, float);
	// TodoReturn canTouchObject(GameObject*);
	// TodoReturn checkCollision(int, int);
	// TodoReturn createParticle(int, char const*, int, cocos2d::tCCPositionType) = win 0x1bed60;
	// TodoReturn gravBumpPlayer(PlayerObject*, EffectGameObject*) = win 0x19a7b0;
	// TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::_ccColor3B);
	// TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::_ccColor3B, float, float, int, bool, float);
	// TodoReturn removeKeyframe(KeyframeGameObject*);
	// TodoReturn reparentObject(cocos2d::CCNode*, cocos2d::CCNode*);
	// TodoReturn sortAllGroupsX();
	// TodoReturn stopSFXTrigger(SFXTriggerGameObject*);
	// TodoReturn swapBackground(int);
	// TodoReturn syncBGTextures() = win 0x1B98C0;
	// TodoReturn teleportPlayer(TeleportPortalObject*, PlayerObject*);
	// TodoReturn toggleDualMode(GameObject*, bool, PlayerObject*, bool) = win 0x1996c0;
	// TodoReturn tryResumeAudio();
	// TodoReturn updateCounters(int, int);
	// TodoReturn updateGuideArt();
	// TodoReturn addRemapTargets(gd::set<int>&);
	// void checkCollisions(PlayerObject*, float, bool) = win 0x1973f0;
	// TodoReturn claimMoveAction(int, bool);
	// TodoReturn collectedObject(EffectGameObject*);
	// /* unverified signature */
	// bool isPlayer2Button(int);
	// TodoReturn moveCameraToPos(cocos2d::CCPoint);
	// TodoReturn parentForZLayer(int, bool, int, int);
	// TodoReturn playFlashEffect(float, int, float);
	// TodoReturn processCommands(float);
	// TodoReturn processSFXState(SFXTriggerState*, SFXTriggerState*, int, float);
	// TodoReturn setupLevelStart(LevelSettingsObject*) = win 0x196000;
	// TodoReturn stopCameraShake();
	// TodoReturn switchToFlyMode(PlayerObject*, GameObject*, bool, int);
	// TodoReturn unclaimParticle(char const*, cocos2d::CCParticleSystemQuad*);
	// TodoReturn unlinkAllEvents();
	// TodoReturn updateMGOffsetY(float, float, int, float, int, int);
	// TodoReturn updateParticles(float);
	void addObjectCounter(LabelGameObject*) = win 0x1b3350;
	// TodoReturn addPickupTrigger(CountTriggerGameObject*);
	// TodoReturn buttonIDToButton(int);
	// TodoReturn controlEventLink(int, int, GJActionCommand);
	void createBackground(int);
	// TodoReturn createTextLayers() = win 0x193A90;
	// TodoReturn exitStaticCamera(bool, bool, float, int, float, bool, float, bool);
	void loadUpToPosition(float, int, int) = win 0x1B4D10;
	// TodoReturn processSongState(int, float, float, int, float, float, gd::vector<SongTriggerState>*);
	void removeBackground();
	// TodoReturn removeFromGroups(GameObject*);
	// TodoReturn sortStickyGroups();
	// TodoReturn swapMiddleground(int);
	// TodoReturn switchToRollMode(PlayerObject*, GameObject*, bool);
	// TodoReturn toggleLockPlayer(bool, bool);
	// TodoReturn tryGetMainObject(int) = win 0x1A4FD0;
	// TodoReturn updateBGArtSpeed(float, float);
	// TodoReturn updateCameraEdge(int, int);
	// TodoReturn updateCameraMode(EffectGameObject*, bool);
	// TodoReturn updateDualGround(PlayerObject*, int, bool, float);
	// TodoReturn updateMGArtSpeed(float, float);
	// TodoReturn addToGroupParents(GameObject*);
	// TodoReturn checkRepellPlayer();
	void checkSpawnObjects() = win 0x19d320;
	// TodoReturn controlAreaEffect(EnterEffectObject*, gd::vector<EnterEffectInstance>*, GJActionCommand);
	void createGroundLayer(int, int);
	// TodoReturn gameEventToString(GJGameEvent);
	// TodoReturn loadLevelSettings();
	// TodoReturn moveObjectsSilent(int, double, double);
	// TodoReturn orderSpawnObjects() = win 0x1c37e0;
	// TodoReturn playerTouchedRing(PlayerObject*, RingObject*) = win 0x19acd0;
	// TodoReturn playSpeedParticle(float);
	// TodoReturn positionUIObjects();
	// TodoReturn processSFXObjects();
	void removeGroundLayer();
	// TodoReturn removeGroupParent(int) = win 0x1a54b0;
	// TodoReturn resetStaticCamera(bool, bool) = win 0x1BE2C0;
	// TodoReturn rotateAreaObjects(GameObject*, cocos2d::CCArray*, float, bool);
	// TodoReturn sortSectionVector() = win 0x1A7F50;
	// TodoReturn switchToRobotMode(PlayerObject*, GameObject*, bool);
	// TodoReturn triggerAreaEffect(EnterEffectObject*);
	// TodoReturn tryGetGroupParent(int);
	// TodoReturn updateCameraBGArt(cocos2d::CCPoint, float);
	// TodoReturn updateLevelColors() = win 0x190db0;
	// TodoReturn updateShaderLayer(float) = win 0x1A37B0;
	// TodoReturn updateTimerLabels();
	// TodoReturn activateCustomRing(RingObject*);
	// TodoReturn activateSFXTrigger(SFXTriggerGameObject*) = win 0x1bfff0;
	// TodoReturn animateInGroundNew(bool, float, bool);
	// TodoReturn applyLevelSettings(GameObject*);
	// TodoReturn clearPickedUpItems();
	void createMiddleground(int);
	TodoReturn gameEventTriggered(GJGameEvent, int, int)  = win 0x1b1ac0;
	// TodoReturn generateSpawnRemap();
	void groupStickyObjects(cocos2d::CCArray*);
	void loadStartPosObject() = win 0x1B4BA0;
	// TodoReturn modifyGroupPhysics(AdvancedFollowEditObject*, cocos2d::CCArray*);
	// TodoReturn optimizeMoveGroups();
	// TodoReturn playExitDualEffect(PlayerObject*) = win 0x199ab0;
	// TodoReturn processAreaActions(float, bool);
	// TodoReturn processAreaEffects(gd::vector<EnterEffectInstance>*, GJAreaActionType, float, bool);
	void processMoveActions() = win 0x1ADA80;
	// TodoReturn reAddToStickyGroup(GameObject*);
	// TodoReturn registerSpawnRemap(gd::vector<ChanceObject>&);
	void removeMiddleground();
	// TodoReturn resetGroupCounters(bool);
	// TodoReturn switchToSpiderMode(PlayerObject*, GameObject*, bool);
	// TodoReturn triggerMoveCommand(EffectGameObject*);
	// TodoReturn updateEnterEffects(float);
	// TodoReturn updateMaxGameplayY() = win 0x1b97a0;
	// TodoReturn updateQueuedLabels();
	// TodoReturn activateSongTrigger(SongTriggerGameObject*) = win 0x1bfba0;
	// TodoReturn animateOutGroundNew(bool);
	// TodoReturn applySFXEditTrigger(int, int, SFXTriggerGameObject*) = win 0x1c03b0;
	// TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool);
	// TodoReturn claimRotationAction(int, int, float&, float&, bool, bool);
	// TodoReturn maxZOrderForShaderZ(int);
	// TodoReturn minZOrderForShaderZ(int);
	// TodoReturn modifyObjectPhysics(AdvancedFollowEditObject*, GameObjectPhysics&);
	// TodoReturn performMathRounding(double, int);
	// TodoReturn playerTouchedObject(PlayerObject*, GameObject*);
	// TodoReturn preUpdateVisibility(float) = win 0x1b5660;
	// TodoReturn processCameraObject(GameObject*, PlayerObject*);
	// TodoReturn processStateObjects();
	// TodoReturn registerStateObject(EffectGameObject*);
	// TodoReturn resetGradientLayers();
	// TodoReturn resetLevelVariables() = win 0x1B9950;
	// TodoReturn restoreAllUIObjects();
	// TodoReturn spawnGroupTriggered(int, float, bool, gd::vector<int> const&, int, int);
	// TodoReturn spawnObjectsInOrder(cocos2d::CCArray*, double, gd::vector<int> const&, int, int);
	// TodoReturn staticObjectsInRect(cocos2d::CCRect, bool);
	// TodoReturn updateCameraOffsetX(float, float, int, float, int, int);
	// TodoReturn updateCameraOffsetY(float, float, int, float, int, int);
	// TodoReturn updateGroundShadows();
	// TodoReturn updateKeyframeOrder(int);
	// TodoReturn updateLayerCapacity(gd::string);
	// TodoReturn updateSpecialLabels() = win 0x1B8A0E;
	// TodoReturn visitWithColorFlash();
	// TodoReturn activateEventTrigger(EventLinkTrigger*, gd::vector<int> const&);
	// TodoReturn activateResetTrigger(EffectGameObject*);
	// TodoReturn activateTimerTrigger(TimerTriggerGameObject*, gd::vector<int> const&);
	// TodoReturn addCustomEnterEffect(EnterEffectObject*, bool);
	// TodoReturn calculateColorGroups();
	// TodoReturn checkCollisionBlocks(EffectGameObject*, gd::vector<EffectGameObject*>*, int);
	// TodoReturn createCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, bool);
	// TodoReturn generateTargetGroups();
	// TodoReturn performMathOperation(double, double, int);
	// TodoReturn playAnimationCommand(int, int);
	// TodoReturn playerTouchedTrigger(PlayerObject*, EffectGameObject*);
	// TodoReturn playerWillSwitchMode(PlayerObject*, GameObject*);
	// TodoReturn processFollowActions();
	// TodoReturn processQueuedButtons() = win 0x1b1a10;
	// TodoReturn rectIntersectsCircle(cocos2d::CCRect, cocos2d::CCPoint, float);
	void refreshCounterLabels() = win 0x1b4630;
	// TodoReturn refreshKeyframeAnims();
	// TodoReturn reorderObjectSection(GameObject*);
	// TodoReturn spawnParticleTrigger(int, cocos2d::CCPoint, float, float);
	// TodoReturn spawnParticleTrigger(SpawnParticleGameObject*);
	// TodoReturn speedForShaderTarget(int);
	// TodoReturn stopAllGroundActions();
	// TodoReturn toggleGroupTriggered(int, bool, gd::vector<int> const&, int, int);
	// TodoReturn transformAreaObjects(GameObject*, cocos2d::CCArray*, float, float, bool);
	// TodoReturn triggerGravityChange(EffectGameObject*, int);
	// TodoReturn triggerRotateCommand(EnhancedTriggerObject*);
	// TodoReturn triggerShaderCommand(ShaderGameObject*);
	void ungroupStickyObjects(cocos2d::CCArray*);
	// TodoReturn updateGradientLayers() = win 0x1A1750;
	// TodoReturn updatePlatformerTime() = win 0x1B8BE0;
	// TodoReturn activatedAudioTrigger(SFXTriggerGameObject*, float);
	void assignNewStickyGroups(cocos2d::CCArray*);
	// TodoReturn collisionCheckObjects(PlayerObject*, gd::vector<GameObject*>*, int, float);
	// TodoReturn controlDynamicCommand(EffectGameObject*, int, gd::vector<DynamicObjectAction>&, GJActionCommand);
	// TodoReturn createNewKeyframeAnim();
	// TodoReturn damagingObjectsInRect(cocos2d::CCRect, bool);
	// TodoReturn objectTypeToGameEvent(int);
	// TodoReturn playerCircleCollision(PlayerObject*, GameObject*);
	// TodoReturn playKeyframeAnimation(KeyframeAnimTriggerObject*, gd::vector<int> const&);
	// TodoReturn processOptionsTrigger(GameOptionsTrigger*);
	// TodoReturn removeFromStickyGroup(GameObject*);
	// TodoReturn shouldExitHackedLevel() = win 0x18FE20;
	// TodoReturn stopCustomEnterEffect(EnterEffectObject*);
	// TodoReturn stopCustomEnterEffect(EnterEffectObject*, bool);
	// TodoReturn toggleAudioVisualizer(bool);
	// TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*);
	// TodoReturn updateAudioVisualizer();
	// TodoReturn updateCollisionBlocks();
	// TodoReturn updateExtraGameLayers();
	// TodoReturn updateGameplayOffsetX(int, bool);
	// TodoReturn updateGameplayOffsetY(int, bool);
	// TodoReturn updateStaticCameraPos(cocos2d::CCPoint, bool, bool, bool, float, int, float) = win 0x1bda60;
	// TodoReturn activateSFXEditTrigger(SFXTriggerGameObject*) = win 0x1c0160;
	// TodoReturn animateInDualGroundNew(GameObject*, float, bool, float);
	// TodoReturn canBeActivatedByPlayer(PlayerObject*, EffectGameObject*) = win 0x19a4b0;
	// TodoReturn controlGradientTrigger(GradientTriggerObject*, GJActionCommand);
	// TodoReturn controlTriggersInGroup(int, GJActionCommand);
	// TodoReturn objectIntersectsCircle(GameObject*, GameObject*);
	// TodoReturn playerIntersectsCircle(PlayerObject*, GameObject*);
	// TodoReturn prepareTransformParent(bool);
	// void processMoveActionsStep(float, bool) = win 0x1ABBB0;
	// TodoReturn processRotationActions();
	// TodoReturn removeFromGroupParents(GameObject*);
	// TodoReturn resetSongTriggerValues();
	// TodoReturn resetSpawnChannelIndex() = win 0x1C3A00;
	// TodoReturn togglePlayerVisibility(bool);
	// TodoReturn togglePlayerVisibility(bool, bool);
	// TodoReturn triggerGradientCommand(GradientTriggerObject*);
	// TodoReturn updateAllObjectSection();
	// TodoReturn updateSpecialGroupData();
	// TodoReturn activateItemEditTrigger(ItemTriggerGameObject*);
	// TodoReturn activateSongEditTrigger(SongTriggerGameObject*);
	// TodoReturn controlAreaEffectWithID(int, int, GJActionCommand);
	// TodoReturn playerWasTouchingObject(PlayerObject*, GameObject*) = win 0x19a570;
	// TodoReturn positionForShaderTarget(int);
	// void processTransformActions(bool) = win 0x1ACBA0;
	void removeObjectFromSection(GameObject*) = win 0x1a7d80;
	// TodoReturn resetActiveEnterEffects() = win 0x192c70;
	// TodoReturn resetMoveOptimizedValue();
	// TodoReturn resetStoppedAreaObjects();
	// TodoReturn testInstantCountTrigger(int, int, int, bool, int, gd::vector<int> const&, int, int);
	// TodoReturn togglePlayerStreakBlend(bool);
	// TodoReturn triggerTransformCommand(TransformTriggerGameObject*);
	// TodoReturn updateActiveEnterEffect(EnterEffectObject*);
	// TodoReturn updateExtendedCollision(GameObject*, bool);
	// TodoReturn addProximityVolumeEffect(int, int, SFXTriggerGameObject*) = win 0x1c0820;
	// TodoReturn generateVisibilityGroups();
	// TodoReturn processAreaVisualActions(float);
	// TodoReturn removeCustomEnterEffects(int, bool);
	// TodoReturn removeTemporaryParticles() = win 0x1bfae0;
	// TodoReturn updateInternalCamOffsetX(float, float, float);
	// TodoReturn updateInternalCamOffsetY(float, float, float);
	// TodoReturn volumeForProximityEffect(SFXTriggerInstance&) = win 0x1c08e0;
	// TodoReturn controlDynamicMoveCommand(EffectGameObject*, int, GJActionCommand);
	// TodoReturn convertToClosestDirection(float, float) = win 0x1aeb00;
	// TodoReturn generateEnterEasingBuffer(int, float);
	// TodoReturn generatePickupAnimRandVal(GameObject*, float&, float&);
	// TodoReturn increaseBatchNodeCapacity();
	// TodoReturn triggerDynamicMoveCommand(EffectGameObject*);
	// TodoReturn updateLegacyLayerCapacity(int, int, int, int);
	// TodoReturn updateSavePositionObjects();
	// TodoReturn activateItemCompareTrigger(ItemTriggerGameObject*, gd::vector<int> const&);
	// TodoReturn createPlayerCollisionBlock() = win 0x19B1C0;
	// TodoReturn generateEnterEasingBuffers(EnterEffectObject*);
	// TodoReturn loadGroupParentsFromString(GameObject*, gd::string);
	// TodoReturn prepareSavePositionObjects();
	// TodoReturn processAreaFadeGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, bool);
	// TodoReturn processAreaMoveGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool);
	// TodoReturn processAreaTintGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, bool);
	void processPlayerFollowActions(float) = win 0x1AE2F0;
	// TodoReturn processQueuedAudioTriggers() = win 0x1ba310;
	// TodoReturn triggerAreaEffectAnimation(EnterEffectObject*);
	// TodoReturn clearActivatedAudioTriggers() = win 0x1c1380;
	// TodoReturn controlDynamicRotateCommand(EffectGameObject*, int, GJActionCommand);
	// TodoReturn processAdvancedFollowAction(AdvancedFollowInstance&, bool, float);
	void processDynamicObjectActions(int, float) = win 0x1AE630;
	// TodoReturn triggerDynamicRotateCommand(EnhancedTriggerObject*);
	// TodoReturn updatePlayerCollisionBlocks();
	// TodoReturn activateObjectControlTrigger(ObjectControlGameObject*);
	// TodoReturn activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&);
	// TodoReturn activatePlayerControlTrigger(PlayerControlGameObject*);
	// TodoReturn controlAdvancedFollowCommand(AdvancedFollowTriggerObject*, int, GJActionCommand);
	// TodoReturn controlTriggersWithControlID(int, GJActionCommand);
	// TodoReturn processAdvancedFollowActions(float);
	// TodoReturn processAreaRotateGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool);
	// TodoReturn regenerateEnterEasingBuffers();
	// TodoReturn triggerAdvancedFollowCommand(AdvancedFollowTriggerObject*);
	// TodoReturn updateProximityVolumeEffects();
	// TodoReturn updateStaticCameraPosToGroup(int, bool, bool, bool, float, float, int, float, bool, float);
	// TodoReturn activatePersistentItemTrigger(ItemTriggerGameObject*);
	// TodoReturn checkCameraLimitAfterTeleport(PlayerObject*, float);
	// TodoReturn processActivatedAudioTriggers(float) = win 0x1c1750;
	// TodoReturn restoreDefaultGameplayOffsetX();
	// TodoReturn restoreDefaultGameplayOffsetY();
	// TodoReturn processAreaTransformGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool);
	// TodoReturn triggerAdvancedFollowEditCommand(AdvancedFollowEditObject*);
	// TodoReturn hasItem(int);
	// TodoReturn addPoints(int);

	virtual void update(float) = win 0x1B75E0;
	virtual bool init() = win 0x18CC80;
	virtual void visit() = win 0x1c4a60;
	virtual TodoReturn postUpdate(float);
	virtual TodoReturn checkForEnd();
	virtual TodoReturn testTime();
	virtual TodoReturn updateVerifyDamage();
	virtual TodoReturn updateAttemptTime(float);
	virtual TodoReturn updateVisibility(float);
	virtual TodoReturn playerTookDamage(PlayerObject*);
	virtual TodoReturn opacityForObject(GameObject*);
	virtual TodoReturn addToSpeedObjects(EffectGameObject*);
	virtual TodoReturn objectsCollided(int, int) = win 0x19ba50;
	virtual TodoReturn updateColor(cocos2d::_ccColor3B&, float, int, bool, float, cocos2d::_ccHSVValue&, int, bool, EffectGameObject*, int, int) = win 0x1a46f0;
	virtual TodoReturn activateEndTrigger(int, bool, bool);
	virtual TodoReturn toggleGlitter(bool);
	virtual TodoReturn destroyPlayer(PlayerObject*, GameObject*);
	virtual void addToSection(GameObject*) = win 0x1a76e0;
	virtual TodoReturn addToGroup(GameObject*, int, bool) = win 0x1a4c40;
	virtual TodoReturn removeFromGroup(GameObject*, int) = win 0x1a4d60;
	virtual TodoReturn updateObjectSection(GameObject*) = win 0x1a8c20;
	virtual TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*);
	virtual TodoReturn toggleGroundVisibility(bool);
	virtual TodoReturn toggleMGVisibility(bool);
	virtual TodoReturn toggleHideAttempts(bool);
	virtual TodoReturn updateScreenRotation(float, bool, bool, float, int, float, int, int) = win 0x1b52e0;
	virtual TodoReturn reverseDirection(EffectGameObject*) = win 0x19afc0;
	virtual TodoReturn rotateGameplay(RotateGameplayGameObject*) = win 0x19b020;
	virtual TodoReturn didRotateGameplay();
	virtual TodoReturn updateTimeWarp(float);
	virtual TodoReturn updateTimeWarp(GameObject*, float);
	virtual void applyTimeWarp(float) = win 0x1B5600;
	virtual TodoReturn playGravityEffect(bool) = win 0x2df4c0;
	virtual TodoReturn manualUpdateObjectColors(GameObject*);
	virtual TodoReturn activatedAudioTrigger(SFXTriggerGameObject*);
	virtual TodoReturn checkpointActivated(CheckpointGameObject*);
	virtual TodoReturn flipArt(bool);
	virtual TodoReturn addKeyframe(KeyframeGameObject*);
	virtual TodoReturn updateTimeLabel(int, int, bool);
	virtual TodoReturn checkSnapshot();
	virtual TodoReturn toggleProgressbar();
	virtual TodoReturn toggleInfoLabel();
	virtual TodoReturn removeAllCheckpoints();
	virtual TodoReturn toggleMusicInPractice();

	PAD = win 0xc, android32 0xc;
	GJGameState m_gameState;
	GJGameLevel* m_level;
	PlaybackMode m_playbackMode;
	PAD = win 0x290, android32 0x28c;
	PlayerObject* m_player1;
	PlayerObject* m_player2;
	LevelSettingsObject* m_levelSettings;
	PAD = win 0x134, android32 0x134;
	cocos2d::CCLayer* m_objectLayer; 
	PAD = win 0x20c0, android32 0x20c4;
	bool m_isPracticeMode;
	bool m_practiceMusicSync;
	PAD = win 0xd2, android32 0xba;
	gd::vector<PlayerButtonCommand*> m_queuedButtons; 
	PAD = win 0x20b, android32 0x1ea;
}

[[link(android)]]
class GameRateDelegate {
	virtual TodoReturn updateRate();
}

[[link(android)]]
class ListButtonBarDelegate {
	virtual TodoReturn listButtonBarSwitchedPage(ListButtonBar*, int);
}

[[link(android)]]
class DialogDelegate {
	virtual TodoReturn dialogClosed(DialogLayer*);
}

[[link(android)]]
class CharacterColorDelegate {
	virtual TodoReturn playerColorChanged();
	virtual TodoReturn showUnlockPopup(int, UnlockType);
}

[[link(android)]]
class ListButtonBar : cocos2d::CCNode {
	static ListButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int);

	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int);
	~ListButtonBar();

	TodoReturn getPage();

	void onLeft(cocos2d::CCObject* sender);
	void onRight(cocos2d::CCObject* sender);

	TodoReturn goToPage(int);
}

[[link(android)]]
class DialogLayer : cocos2d::CCLayerColor, TextAreaDelegate {
	static DialogLayer* create(DialogObject*, int) = win 0x99d60;

	bool init(DialogObject*, cocos2d::CCArray*, int) = win 0x99e10;
	~DialogLayer();

	TodoReturn onClose();

	TodoReturn addToMainScene();
	TodoReturn animateInDialog();
	TodoReturn handleDialogTap();
	TodoReturn createDialogLayer(DialogObject*, cocos2d::CCArray*, int);
	TodoReturn createWithObjects(cocos2d::CCArray*, int);
	TodoReturn displayNextObject();
	TodoReturn animateInRandomSide();
	TodoReturn displayDialogObject(DialogObject*);
	TodoReturn updateChatPlacement(DialogChatPlacement);
	TodoReturn updateNavButtonFrame();
	TodoReturn finishCurrentAnimation();
	TodoReturn animateIn(DialogAnimationType) = win 0x9a9d0;

	virtual void onEnter();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn fadeInTextFinished(TextArea*);
}

class UIButtonConfig {
	PAD = win 0x28, android32 0x28, android64 0x28;
}

[[link(android)]]
class GameManager : GManager {
	static GameManager* get() {
		return GameManager::sharedState();
	}

	static GameManager* sharedState() = win 0x11f720;

	int getPlayerFrame() {
        return m_playerFrame;
    }
    int getPlayerShip() {
        return m_playerShip;
    }
    int getPlayerBall() {
        return m_playerBall;
    }
    int getPlayerBird() {
        return m_playerBird;
    }
    int getPlayerDart() {
        return m_playerDart;
    }
    int getPlayerRobot() {
        return m_playerRobot;
    }
    int getPlayerSpider() {
        return m_playerSpider;
    }
    int getPlayerSwing() {
        return m_playerSwing;
    }
    int getPlayerGlowColor() {
        return m_playerGlowColor;
    }
    int getPlayerStreak() {
        return m_playerStreak;
    }
	int getPlayerShipFire() {
		return m_playerShipFire;
	}
    int getPlayerDeathEffect() {
        return m_playerDeathEffect;
    }
	int getPlayerJetpack() {
		return m_playerJetpack;
	}
    int getPlayerColor() {
        return m_playerColor;
    }
    int getPlayerColor2() {
        return m_playerColor2;
    }
    bool getPlayerGlow() {
        return m_playerGlow;
    }
    void setPlayerFrame(int id) {
        m_playerFrame = id;
    }
    void setPlayerShip(int id) {
        m_playerShip = id;
    }
    void setPlayerBall(int id) {
        m_playerBall = id;
    }
    void setPlayerBird(int id) {
        m_playerBird = id;
    }
    void setPlayerDart(int id) {
        m_playerDart = id;
    }
    void setPlayerRobot(int id) {
        m_playerRobot = id;
    }
    void setPlayerSpider(int id) {
        m_playerSpider = id;
    }
	void setPlayerSwing(int id) {
		m_playerSwing = id;
	}
	void setPlayerGlowColor(int id) {
		m_playerGlowColor = id;
	}
    void setPlayerStreak(int id) {
        m_playerStreak = id;
    }
    void setPlayerShipFire(int id) {
        m_playerShipFire = id;
    }
    void setPlayerDeathEffect(int id) {
        m_playerDeathEffect = id;
    }
	void setPlayerJetpack(int id) {
		m_playerJetpack = id;
	}
    void setPlayerColor(int id) {
        m_playerColor = id;
    }
    void setPlayerColor2(int id) {
        m_playerColor2 = id;
    }
    void setPlayerGlow(bool v) {
        m_playerGlow = v;
    }
    bool getGameVariableDefault(const char* key, bool defaultValue) {
		//helper function
        auto object = static_cast<cocos2d::CCString*>(m_valueKeeper->objectForKey(std::string("gv_") + key));
        if (object == nullptr)
            return defaultValue;
        return object->boolValue();
    }
    int getIntGameVariableDefault(const char* key, int defaultValue) {
		//helper function
        auto object = static_cast<cocos2d::CCString*>(m_valueKeeper->objectForKey(std::string("gv_") + key));
        if (object == nullptr)
            return defaultValue;
        return object->intValue();
    }

	~GameManager();

	TodoReturn addToGJLog(cocos2d::CCString*);
	TodoReturn clearGJLog();
	TodoReturn joinReddit();
	TodoReturn keyForIcon(int, int);
	void loadGround(int);
	TodoReturn printGJLog();
	void reloadMenu() = win 0x12c510;
	TodoReturn reorderKey(int, bool);
	TodoReturn subYouTube();
	TodoReturn tryCacheAd();
	TodoReturn unloadIcon(int, int, int);
	TodoReturn unlockIcon(int, IconType);
	cocos2d::ccColor3B colorForIdx(int) = win 0x124270;
	TodoReturn colorForPos(int);
	void doQuickSave() = win 0x12bf00;
	TodoReturn fadeInMusic(gd::string);
	TodoReturn getFontFile(int);
	TodoReturn getGTexture(int);
	TodoReturn joinDiscord();
	TodoReturn saveAdTimer();
	TodoReturn startUpdate();
	TodoReturn unloadIcons(int) = win 0x125a60;
	TodoReturn unlockColor(int, UnlockType);
	TodoReturn updateMusic();
	TodoReturn countForType(IconType);
	TodoReturn followTwitch();
	TodoReturn getBGTexture(int);
	TodoReturn getMGTexture(int);
	/* unverified signature */
	bool isIconLoaded(int, int);
	TodoReturn likeFacebook();
	TodoReturn resetAdTimer();
	TodoReturn safePopScene();
	TodoReturn followTwitter();
	TodoReturn itemPurchased(char const*);
	TodoReturn loadIconAsync(int, int, int, cocos2d::CCObject*);
	TodoReturn playMenuMusic();
	TodoReturn resetAllIcons();
	TodoReturn videoAdHidden();
	TodoReturn videoAdShowed();
	TodoReturn checkUsedIcons();
	TodoReturn getFontTexture(int);
	TodoReturn getNextUsedKey(int, bool);
	/* unverified signature */
	bool isIconUnlocked(int, IconType) = win 0x120170;
	TodoReturn levelIsPremium(int, int);
	void loadBackground(int);
	TodoReturn loadDPadLayout(int, bool);
	// TodoReturn playSFXTrigger(SFXTriggerGameObject*) = win 0x11fd20;
	void reloadAllStep2() = win 0x12c620;
	void reloadAllStep3() = win 0x12c780;
	void reloadAllStep4() = win 0x12c820;
	void reloadAllStep5() = win 0x12c890;
	TodoReturn saveDPadLayout(int, bool);
	TodoReturn shortenAdTimer(float);
	TodoReturn showMainMenuAd();
	TodoReturn addIconDelegate(cocos2d::CCObject*, int);
	TodoReturn fadeInMenuMusic() = win 0x11FBD0;
	bool getGameVariable(char const*) = win 0x126920;
	/* unverified signature */
	bool isColorUnlocked(int, UnlockType) = win 0x120670;
	TodoReturn loadDeathEffect(int);
	TodoReturn loadGroundAsync(int);
	TodoReturn openEditorGuide();
	void queueReloadMenu() = win 0x12c4c0;
	/* unverified signature */
	void setGameVariable(char const*, bool) = win 0x1266D0;
	TodoReturn unlockedPremium();
	TodoReturn updateCustomFPS() = win 0x12cd40;
	TodoReturn addGameAnimation(int, int, float, gd::string, gd::string, int);
	TodoReturn didExitPlayscene();
	TodoReturn getIconRequestID();
	TodoReturn getMenuMusicFile();
	void loadMiddleground(int);
	TodoReturn recountUserStats(gd::string);
	TodoReturn resetAchievement(gd::string);
	TodoReturn resetCoinUnlocks();
	void resolutionForKey(int) = win 0x12c8e0;
	TodoReturn sheetNameForIcon(int, int);
	TodoReturn showInterstitial();
	TodoReturn switchScreenMode(bool, bool);
	TodoReturn unloadBackground();
	TodoReturn activeIconForType(IconType);
	TodoReturn iconAndTypeForKey(int, int&, int&);
	TodoReturn loadVideoSettings();
	TodoReturn logLoadedIconInfo();
	TodoReturn resetDPadSettings(bool);
	TodoReturn returnToLastScene(GJGameLevel*) = win 0x12C1F0;
	TodoReturn verifyCoinUnlocks();
	TodoReturn verifyStarUnlocks();
	TodoReturn verifySyncedCoins();
	TodoReturn addNewCustomObject(gd::string);
	TodoReturn claimItemsResponse(gd::string);
	TodoReturn dpadConfigToString(UIButtonConfig&);
	TodoReturn eventUnlockFeature(char const*);
	TodoReturn framesForAnimation(int);
	int getIntGameVariable(char const*) = win 0x126e70;
	TodoReturn loadDpadFromString(UIButtonConfig&, gd::string);
	TodoReturn removeCustomObject(int);
	TodoReturn removeIconDelegate(int) = win 0x125560;
	/* unverified signature */
	void setIntGameVariable(char const*, int);
	TodoReturn toggleGameVariable(char const*);
	TodoReturn loadBackgroundAsync(int);
	TodoReturn prepareDPadSettings();
	TodoReturn rewardedVideoHidden();
	TodoReturn setupGameAnimations();
	TodoReturn switchCustomObjects(int, int);
	TodoReturn tryShowInterstitial(int, int, int);
	TodoReturn accountStatusChanged();
	TodoReturn canShowRewardedVideo();
	TodoReturn completedAchievement(gd::string);
	TodoReturn defaultYOffsetForBG2(int);
	TodoReturn generateSecretNumber();
	gd::string getPracticeMusicFile() = win 0x11f990;
	TodoReturn iconTypeToUnlockType(IconType);
	TodoReturn unlockTypeToIconType(int);
	TodoReturn addDuplicateLastFrame(int);
	TodoReturn finishedLoadingGAsync(int);
	TodoReturn frameTimeForAnimation(int);
	TodoReturn loadMiddlegroundAsync(int);
	TodoReturn stringForCustomObject(int);
	TodoReturn finishedLoadingBGAsync(cocos2d::CCObject*);
	TodoReturn finishedLoadingGAsync1(cocos2d::CCObject*);
	TodoReturn finishedLoadingGAsync2(cocos2d::CCObject*);
	TodoReturn finishedLoadingMGAsync(int);
	TodoReturn getNextUniqueObjectKey();
	TodoReturn shouldShowInterstitial(int, int, int);
	TodoReturn showInterstitialForced();
	TodoReturn addCustomAnimationFrame(int, int, gd::string, gd::string);
	TodoReturn finishedLoadingMGAsync1(cocos2d::CCObject*);
	TodoReturn finishedLoadingMGAsync2(cocos2d::CCObject*);
	TodoReturn getUnlockForAchievement(gd::string, int&, UnlockType&);
	TodoReturn groundHasSecondaryColor(int);
	TodoReturn reportAchievementWithID(char const*, int, bool);
	TodoReturn rewardedVideoAdFinished(int);
	TodoReturn calculateBaseKeyForIcons();
	TodoReturn defaultFrameForAnimation(int);
	TodoReturn finishedLoadingIconAsync(cocos2d::CCObject*);
	TodoReturn reportPercentageForLevel(int, int, bool) = win 0x120f30;
	TodoReturn syncPlatformAchievements();
	TodoReturn verifyAchievementUnlocks();
	TodoReturn getOrderedCustomObjectKeys();
	TodoReturn rewardedVideoHiddenDelayed();
	TodoReturn checkSteamAchievementUnlock();
	TodoReturn applicationDidEnterBackground();
	TodoReturn applicationWillEnterForeground() = win 0x12bfb0;
	bool getUGV(char const*) = win 0x126C10;
	/* unverified signature */
	void setUGV(char const*, bool) = win 0x126ac0;
	TodoReturn iconKey(int, IconType);
	TodoReturn colorKey(int, UnlockType);
	TodoReturn loadFont(int);
	TodoReturn loadIcon(int, int, int) = win 0x125630;
	TodoReturn lockIcon(int, IconType);
	TodoReturn rateGame();
	TodoReturn lockColor(int, UnlockType);
	void reloadAll(bool, bool, bool) = win 0x12c590;

	virtual void update(float);
	virtual bool init() = win 0x11EA00;
	virtual TodoReturn encodeDataTo(DS_Dictionary*);
	virtual TodoReturn dataLoaded(DS_Dictionary*);
	virtual TodoReturn firstLoad();

	cocos2d::CCDictionary* m_unkAnimationDict;
	cocos2d::CCDictionary* m_unkAnimationDict2;
	cocos2d::CCDictionary* m_frameTimeForAnimation;
	cocos2d::CCDictionary* m_framesForAnimation;
	cocos2d::CCDictionary* m_defaultFrames;
	bool m_switchModes;
	bool m_toFullscreen;
	bool m_reloading;
	bool m_unkBool1;
	bool m_unkBool2;
	bool m_vsyncEnabled;
	cocos2d::CCDictionary* m_valueKeeper;
	cocos2d::CCDictionary* m_unlockValueKeeper;
	cocos2d::CCDictionary* m_customObjectDict;
	double m_adTimer;
	double m_adCache;
	bool m_unkBool3;
	int m_unkSize4_1;
	double m_unkDouble2;
	int m_unkSize4_2;
	int m_unkSize4_3;
	bool m_loaded;
	bool m_googlePlaySignedIn;
	gd::string m_unknownString;
	int m_unkSize4_4;
	PlayLayer* m_playLayer;
	LevelEditorLayer* m_levelEditorLayer;
	GJBaseGameLayer* m_gameLayer;
	void* m_unkPtr;
	MenuLayer* m_menuLayer;
	bool m_inMenuLayer;
	void* m_unknownVariable;
	bool m_unknownBool3;
	bool m_unknownPlayLayerBool;
	bool m_unknownBool4;
	bool m_unknownBool5;
	gd::string m_playerUDID;
	gd::string m_playerName;
	bool m_commentsEnabled;
	int m_playerUserID_a;
	int m_playerUserID_b;
	int m_playerUserID;
	float m_bgVolume;
	float m_sfxVolume;
	float m_timeOffset;
	bool m_ratedGame;
	bool m_clickedFacebook;
	bool m_clickedTwitter;
	bool m_clickedYouTube;
	bool m_clickedTwitch;
	bool m_clickedDiscord_;
	bool m_clickedReddit;
	double m_socialsDuration;
	bool m_showedAd;
	bool m_unknownBool;
	bool m_editorEnabled;
	int m_sceneEnum;
	bool m_searchObjectBool;
	geode::SeedValueRSV m_playerFrame;
	geode::SeedValueRSV m_playerShip;
	geode::SeedValueRSV m_playerBall;
	geode::SeedValueRSV m_playerBird;
	geode::SeedValueRSV m_playerDart;
	geode::SeedValueRSV m_playerRobot;
	geode::SeedValueRSV m_playerSpider;
	geode::SeedValueRSV m_playerSwing;
	geode::SeedValueRSV m_playerColor;
	geode::SeedValueRSV m_playerColor2;
	geode::SeedValueRSV m_playerGlowColor;
	geode::SeedValueRSV m_playerStreak;
	geode::SeedValueRSV m_playerShipFire;
	geode::SeedValueRSV m_playerDeathEffect;
	geode::SeedValueRSV m_playerJetpack;
	geode::SeedValueSR m_chk;
	geode::SeedValueSR m_secretNumber;
	bool m_playerGlow;
	int m_playerIconType;
	bool m_everyPlaySetup;
	bool m_showSongMarkers;
	bool m_showBPMMarkers;
	bool m_recordGameplay;
	bool m_showProgressBar;
	bool m_performanceMode;
	bool m_unkBool4;
	bool m_clickedGarage;
	bool m_clickedEditor;
	bool m_clickedName;
	bool m_clickedPractice;
	bool m_showedEditorGuide;
	bool m_showedRateDiffDialog;
	bool m_showedRateStarDialog;
	bool m_showedLowDetailDialog;
	void* m_unkPtr2;
	void* m_unkPtr3;
	int m_unkSize4_5;
	int m_unkSize4_6;
	int m_unkSize4_7;
	int m_unkSize4_8;
	int m_loadedBgID;
	int m_loadedGroundID;
	int m_loadedMG;
	int m_loadedFont;
	int m_loadedDeathEffect;
	bool m_loadingBG;
	bool m_loadingG;
	bool m_loadingG1;
	bool m_finishedLoadingG1;
	bool m_shouldLoadG1;
	bool m_finishedLoadingMG1;
	bool m_finishedLoadingMG2;
	bool m_unkBool5;
	int m_unkSize4_9;
	int m_unkSize4_10;
	int m_unkSize4_11;
	int m_bootups;
	bool m_hasRatedGame;
	bool m_unkBool6;
	bool m_shouldLoadUnlockValueKeeper;
	bool m_unkBool7;
	bool m_unkBool8;
	int m_hasRP_b;
	int m_hasRP_a;
	int m_hasRP;
	bool m_canGetLevelSaveData;
	int m_resolution;
	int m_texQuality;
	bool m_somethingInMenuLayer;
	void* m_unkPtr4;
	bool m_unkBool9;
	int m_unkSize4_12;
	int m_unkSize4_13;
	bool m_unkBool10;
	int m_unkSize4_14;
	bool m_disableThumbstick;
	float m_customFPSTarget;
	bool m_unkBool11;
	int m_customMenuSongID;
	int m_customPracticeSongID;
	gd::map<int, int> m_loadIcon;
	gd::map<int, gd::map<int, int>> m_loadIcon2;
	gd::map<int, bool> m_probablyIsIconLoaded;
	void* m_somethingIconAndTypeForKey;
	void* m_somethingKeyForIcon;
	void* m_idk;
	gd::map<int, cocos2d::CCObject*> m_iconDelegates;
	int m_iconRequestID;
	cocos2d::CCArray* m_unkArray;
	void* m_someAdPointer;
	int m_unkSize4_15;
	int m_unkSize4_16;
	int m_unkSize4_17;
	UIButtonConfig m_dpad1;
	UIButtonConfig m_dpad2;
	UIButtonConfig m_dpad3;
	UIButtonConfig m_dpad4;
	UIButtonConfig m_dpad5;
	gd::string m_dpadLayout1;
	gd::string m_dpadLayout2;
	gd::string m_dpadLayout3;
	gd::string m_dpadLayoutDual1;
	gd::string m_dpadLayoutDual2;
	gd::string m_dpadLayoutDual3;
	int m_unkSize4_18;
	int m_unkSize4_19;
	int m_unkSize4_20;
	bool m_unkBool12;
}

[[link(android)]]
class GJDropDownLayer : cocos2d::CCLayerColor {
	inline GJDropDownLayer() {
		m_endPosition = cocos2d::CCPointMake(0.f, 0.f);
		m_startPosition = cocos2d::CCPointMake(0.f, 0.f);
		m_buttonMenu = nullptr;
		m_listLayer = nullptr;
		m_controllerEnabled = false;
		m_mainLayer = nullptr;
		m_hidden = false;
		m_delegate = nullptr;
	}

	static GJDropDownLayer* create(char const*);
	static GJDropDownLayer* create(char const*, float);

	// inlined on windows
	bool init(char const* title) {
		return GJDropDownLayer::init(title, 220.f);
	}
	bool init(const char* title, float height) = win 0x1d2340;
	~GJDropDownLayer();

	virtual bool ccTouchBegan(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {
		return true;
	}
	virtual void ccTouchMoved(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {}
	virtual void ccTouchEnded(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {}
	virtual void ccTouchCancelled(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {}

	// 2.2, untested

	virtual void draw();
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void customSetup();
	virtual TodoReturn enterLayer();
	virtual TodoReturn exitLayer(cocos2d::CCObject*);
	virtual TodoReturn showLayer(bool);
	virtual TodoReturn hideLayer(bool);
	virtual TodoReturn layerVisible();
	virtual TodoReturn layerHidden();
	virtual TodoReturn enterAnimFinished();
	virtual TodoReturn disableUI();
	virtual TodoReturn enableUI();

	cocos2d::CCPoint m_endPosition;
	cocos2d::CCPoint m_startPosition;
	cocos2d::CCMenu* m_buttonMenu;
	GJListLayer* m_listLayer;
	bool m_controllerEnabled;
	cocos2d::CCLayer* m_mainLayer;
	bool m_hidden;
	GJDropDownLayerDelegate* m_delegate;
	int m_unknown;
}

[[link(android)]]
class TextAreaDelegate {
	virtual TodoReturn fadeInTextFinished(TextArea*);
}

[[link(android)]]
class GManager : cocos2d::CCNode {
	~GManager();

	TodoReturn getSaveString();
	TodoReturn getCompressedSaveString();

	TodoReturn tryLoadData(DS_Dictionary*, gd::string const&);
	TodoReturn loadFromString(gd::string&);
	TodoReturn loadDataFromFile(gd::string const&);
	TodoReturn loadFromCompressedString(gd::string&);
	TodoReturn load();
	void save() {
        saveGMTo(m_fileName);
    }
	TodoReturn saveData(DS_Dictionary*, gd::string);
	void saveGMTo(gd::string) = win 0x472f0;
    inline GManager() {}

	virtual bool init();
	virtual TodoReturn setup() = win 0x47030;
	virtual TodoReturn encodeDataTo(DS_Dictionary*);
	virtual TodoReturn dataLoaded(DS_Dictionary*);
	virtual TodoReturn firstLoad();

	gd::string m_fileName;
	bool m_setup;
	bool m_saved;
	bool m_quickSave;
}

[[link(android)]]
class GJGameLevel : cocos2d::CCNode {
	static GJGameLevel* createWithCoder(DS_Dictionary* dict) {
		//inlined on windows
		auto level = GJGameLevel::create();
		level->dataLoaded(dict);
		return level;
	}

	static GJGameLevel* create(cocos2d::CCDictionary*, bool);
	static GJGameLevel* create() = win 0x112540;

	~GJGameLevel();

	void dataLoaded(DS_Dictionary*) = win 0x113B90;
	char const* getCoinKey(int) = win 0x112D00;
	TodoReturn getSongName();
	char const* getLengthKey(int, bool) = win 0x112BA0;
	inline bool isPlatformer() {
		return m_levelLength == 5;
	}
	TodoReturn saveNewScore(int, int);
	TodoReturn copyLevelInfo(GJGameLevel*);
	TodoReturn unverifyCoins();
	TodoReturn savePercentage(int, bool, int, int, bool) = win 0x112850;
	TodoReturn getListSnapshot();
	TodoReturn levelWasAltered();
	bool areCoinsVerified() = win 0x115850;
	TodoReturn getAudioFileName();
	TodoReturn getNormalPercent();
	/* unverified signature */
	void setNormalPercent(int);
	TodoReturn lengthKeyToString(int);
	TodoReturn levelWasSubmitted();
	TodoReturn storeNewLocalScore(int, int);
	TodoReturn handleStatsConflict(GJGameLevel*);
	TodoReturn parseSettingsString(gd::string);
	TodoReturn scoreStringToVector(gd::string&, gd::vector<int>&);
	TodoReturn scoreVectorToString(gd::vector<int>&, int);
	TodoReturn getAverageDifficulty();
	TodoReturn demonIconForDifficulty(DemonDifficultyType);
	TodoReturn generateSettingsString();
	TodoReturn getLastBuildPageForTab(int);
	/* unverified signature */
	void setLastBuildPageForTab(int, int);
	gd::string getUnpackedLevelDescription() = win 0x115960;

	virtual void encodeWithCoder(DS_Dictionary*) = win 0x114BF0;
	virtual bool canEncode();
	virtual bool init() = win 0x1125e0;

	cocos2d::CCDictionary* m_lastBuildSave;
	geode::SeedValueRSV m_levelID;
	gd::string m_levelName;
	gd::string m_levelDesc;
	gd::string m_levelString;
	gd::string m_creatorName;
	gd::string m_recordString;
	gd::string m_uploadDate;
	gd::string m_updateDate;
	gd::string m_unkString1;
	gd::string m_unkString2;

	cocos2d::CCPoint m_unkPoint;
	geode::SeedValueRSV m_userID;
	geode::SeedValueRSV m_accountID;
	GJDifficulty m_difficulty;
	int m_audioTrack;
	int m_songID;
	int m_levelRev;
	bool m_unlisted;
	geode::SeedValueRSV m_objectCount;
	int m_levelIndex;
	int m_ratings;
	int m_ratingsSum;
	int m_downloads;
	bool m_isEditable;
	bool m_gauntletLevel;
	bool m_gauntletLevel2;
	int m_workingTime;
	int m_workingTime2;
	bool m_lowDetailMode;
	bool m_lowDetailModeToggled;
	bool m_selected;
	bool m_localOrSaved;
	geode::SeedValueRS m_isVerified;
	bool m_isVerifiedRaw;
	bool m_isUploaded;
	bool m_hasBeenModified;
	int m_levelVersion;
	int m_gameVersion;

	geode::SeedValueRSV m_attempts;
	geode::SeedValueRSV m_jumps;
	geode::SeedValueRSV m_clicks;
	geode::SeedValueRSV m_attemptTime;
	int m_chk;
	bool m_isChkValid;
	bool m_isCompletionLegitimate;
	geode::SeedValueVSR m_normalPercent;
	geode::SeedValueRSV m_orbCompletion;
	geode::SeedValueRSV m_newNormalPercent2;
	int m_practicePercent;
	int m_likes;
	int m_dislikes;
	int m_levelLength;
	int m_featured;
	int m_isEpic;
	bool m_levelFavorited;
	int m_levelFolder;
	geode::SeedValueRSV m_dailyID;
	geode::SeedValueRSV m_demon;
	int m_demonDifficulty;
	geode::SeedValueRSV m_stars;
	bool m_autoLevel;
	int m_coins;
	geode::SeedValueRSV m_coinsVerified;
	geode::SeedValueRS m_password;
	geode::SeedValueRSV m_originalLevel;
	bool m_twoPlayerMode;
	int m_failedPasswordAttempts;
	geode::SeedValueRSV m_firstCoinVerified;
	geode::SeedValueRSV m_secondCoinVerified;
	geode::SeedValueRSV m_thirdCoinVerified;
	int m_starsRequested;
	bool m_showedSongWarning;
	int m_starRatings;
	int m_starRatingsSum;
	int m_maxStarRatings;
	int m_minStarRatings;
	int m_demonVotes;
	int m_rateStars;
	int m_rateFeature;
	gd::string m_rateUser;
	bool m_dontSave;
	bool m_levelNotDownloaded;
	int m_requiredCoins;
	bool m_isUnlocked;
	cocos2d::CCPoint m_lastCameraPos;
	float m_fastEditorZoom;
	int m_lastBuildTab;
	int m_lastBuildPage;
	int m_lastBuildGroupID;
	GJLevelType m_levelType;
	int m_M_ID;
	gd::string m_tempName;
	gd::string m_capacityString;
	bool m_highObjectsEnabled;
	gd::string m_personalBests;

	PAD = android32 0x78, win 0x78;
}

[[link(android)]]
class DialogObject : cocos2d::CCObject {
	static DialogObject* create(gd::string, gd::string, int, float, bool, cocos2d::_ccColor3B) = win 0x99a90;

	bool init(gd::string, gd::string, int, float, bool, cocos2d::_ccColor3B) = win 0x99bd0;
	~DialogObject();
}

[[link(android)]]
class AchievementNotifier : cocos2d::CCNode {
	static AchievementNotifier* sharedState();

	~AchievementNotifier();

	TodoReturn notifyAchievement(char const*, char const*, char const*, bool);
	void willSwitchToScene(cocos2d::CCScene*) = win 0x1c200;
	TodoReturn showNextAchievement();
	TodoReturn achievementDisplayFinished();

	virtual bool init();
}

[[link(android)]]
class GJListLayer : cocos2d::CCLayerColor {
	static GJListLayer* create(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, int) = win 0x1f4000;

	bool init(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, int) = win 0x1f40f0;
	~GJListLayer();

	// 2.2 not tested
	BoomListView* m_listView;
}

[[link(android)]]
class LoadingCircle : cocos2d::CCLayerColor {
    static LoadingCircle* create() = win 0x48140;

    ~LoadingCircle();

    TodoReturn fadeAndRemove() = win 0x483E0;
    TodoReturn show() = win 0x48300;

    void setParentLayer(cocos2d::CCLayer* layer) {
        m_parentLayer = layer;
    }
    void setFade(bool fade) {
        m_fade = fade;
    }

    virtual bool init() = win 0x48240;
    virtual void draw();
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void registerWithTouchDispatcher();

    cocos2d::CCSprite* m_sprite;
    cocos2d::CCLayer* m_parentLayer;
    bool m_fade;
}

[[link(android)]]
class AppDelegate : cocos2d::CCApplication, cocos2d::CCSceneDelegate {
	static AppDelegate* get() {
        return static_cast<AppDelegate*>(cocos2d::CCApplication::sharedApplication());
    }

	~AppDelegate();

	/* unverified signature */
	void setIdleTimerDisabled(bool);

	TodoReturn checkSound();
	TodoReturn pauseSound();
	TodoReturn resumeSound() = win 0x5b2e0;
	TodoReturn hideLoadingCircle();
	TodoReturn loadingIsFinished();
	TodoReturn showLoadingCircle(bool, bool, bool);
	TodoReturn bgScale();
	TodoReturn musicTest() = win 0x5b330;
	TodoReturn pauseGame();

	virtual void setupGLView();
	virtual void platformShutdown();

	virtual bool applicationDidFinishLaunching() = win 0x5af40;
	virtual void applicationDidEnterBackground() = win 0x5b110;
	virtual void applicationWillEnterForeground() = win 0x5b150;
	virtual void applicationWillBecomeActive() = win 0x5b0f0;
	virtual void applicationWillResignActive() = win 0x5b200;
	virtual void trySaveGame(bool) = win 0x5b3b0;
	virtual void willSwitchToScene(cocos2d::CCScene*) = win 0x5b550;

    PAD = win 0xC, android32 0xC, android64 0x18;
    cocos2d::CCScene* m_runningScene;
}

[[link(android)]]
class PlatformToolbox {
	static TodoReturn getRawPath(char const*);
	static TodoReturn hideCursor();
	static TodoReturn showCursor();
	static void gameDidSave();
	static TodoReturn openAppPage();
	static TodoReturn onGameLaunch();
	static TodoReturn resizeWindow(float, float);
	static TodoReturn doesFileExist(gd::string);
	static TodoReturn onNativePause();
	static TodoReturn refreshWindow();
	static TodoReturn getDisplaySize();
	static TodoReturn onNativeResume();
	static TodoReturn copyToClipboard(gd::string);
	static TodoReturn getUniqueUserID();
	static TodoReturn toggleSmoothFix(bool);
	static TodoReturn onToggleKeyboard();
	static void platformShutdown();
	/* unverified signature */
	static void setKeyboardState(bool);
	static TodoReturn showAchievements();
	static TodoReturn signInGooglePlay();
	static TodoReturn toggleForceTimer(bool);
	static TodoReturn toggleFullScreen(bool);
	static TodoReturn toggleLockCursor(bool);
	/* unverified signature */
	static bool isLowMemoryDevice();
	static TodoReturn shouldResumeSound();
	static TodoReturn signOutGooglePlay();
	static TodoReturn tryShowRateDialog(gd::string);
	static TodoReturn activateGameCenter();
	/* unverified signature */
	static bool isNetworkAvailable();
	/* unverified signature */
	void setBlockBackButton(bool);
	static TodoReturn toggleCallGLFinish(bool);
	static TodoReturn toggleCPUSleepMode(bool);
	static TodoReturn toggleMouseControl(bool);
	static TodoReturn toggleVerticalSync(bool);
	static TodoReturn updateMouseControl();
	static TodoReturn updateWindowedSize(float, float);
	static TodoReturn spriteFromSavedFile(gd::string);
	static TodoReturn getDeviceRefreshRate();
	/* unverified signature */
	static bool isSignedInGooglePlay();
	static bool isControllerConnected() {
		// TODO:
		return false;
	}
	static TodoReturn reportLoadingFinished();
	static TodoReturn reportAchievementWithID(char const*, int);
	static TodoReturn downloadAndSavePromoImage(gd::string, gd::string);
	/* unverified signature */
	static bool isLocalPlayerAuthenticated();
	static TodoReturn loadAndDecryptFileToString(char const*, char const*);
	static TodoReturn saveAndEncryptStringToFile(gd::string, char const*, char const*);
	/* unverified signature */
	static bool isHD();
	static TodoReturn logEvent(char const*);
	static TodoReturn sendMail(char const*, char const*, char const*);
	static TodoReturn getUserID();
}

[[link(android)]]
class LevelCommentDelegate {
	virtual TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadCommentsFailed(char const*);
	virtual TodoReturn updateUserScoreFinished();
    virtual TodoReturn setupPageInfo(gd::string, char const*);
}

[[link(android)]]
class CommentUploadDelegate {
	virtual TodoReturn commentUploadFinished(int);
	virtual TodoReturn commentUploadFailed(int, CommentError);
	virtual TodoReturn commentDeleteFailed(int, int);
}

[[link(android)]]
class UserInfoDelegate {
	virtual TodoReturn getUserInfoFinished(GJUserScore*);
	virtual TodoReturn getUserInfoFailed(int);
	virtual TodoReturn userInfoChanged(GJUserScore*);
}

[[link(android)]]
class UploadActionDelegate {
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
}

[[link(android)]]
class UploadPopupDelegate {
	virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class LevelDownloadDelegate {
	virtual TodoReturn levelDownloadFinished(GJGameLevel*);
	virtual TodoReturn levelDownloadFailed(int);
}

[[link(android)]]
class LevelUploadDelegate {
	virtual TodoReturn levelUploadFinished(GJGameLevel*);
	virtual TodoReturn levelUploadFailed(GJGameLevel*);
}

[[link(android)]]
class ListUploadDelegate {
	virtual TodoReturn listUploadFinished(GJLevelList*) {}
	virtual TodoReturn listUploadFailed(GJLevelList*, int) {}
}

[[link(android)]]
class LevelUpdateDelegate {
	virtual TodoReturn levelUpdateFinished(GJGameLevel*, UpdateResponse);
	virtual TodoReturn levelUpdateFailed(int);
}

[[link(android)]]
class RateLevelDelegate {
	virtual TodoReturn rateLevelClosed();
}

[[link(android)]]
class LikeItemDelegate {
	virtual void likedItem(LikeItemType, int, bool) {}
}

[[link(android)]]
class LevelDeleteDelegate {
	virtual TodoReturn levelDeleteFinished(int);
	virtual TodoReturn levelDeleteFailed(int);
}

[[link(android)]]
class LevelListDeleteDelegate {
	virtual TodoReturn levelListDeleteFinished(int) {}
	virtual TodoReturn levelListDeleteFailed(int) {}
}

[[link(android)]]
class NumberInputDelegate {
	virtual TodoReturn numberInputClosed(NumberInputLayer*);
}

[[link(android)]]
class SetIDPopupDelegate {
	virtual void setIDPopupClosed(SetIDPopup*, int);
}

[[link(android)]]
class OnlineListDelegate {
	virtual void loadListFinished(cocos2d::CCArray*, char const*) {}
	virtual void loadListFailed(char const*) {}
    virtual void setupPageInfo(gd::string, char const*) {}
}

[[link(android)]]
class NumberInputLayer : FLAlertLayer {
	static NumberInputLayer* create();

	~NumberInputLayer();

	void onDone(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onNumber(cocos2d::CCObject* sender);

	TodoReturn deleteLast();
	TodoReturn inputNumber(int);
	TodoReturn updateNumberState();

	virtual bool init() = win 0x285e60;
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
}

[[link(android)]]
class SetIDPopup : FLAlertLayer, TextInputDelegate {
	static SetIDPopup* create(int, int, int, gd::string, gd::string, bool, int, float, bool, bool);

	bool init(int, int, int, gd::string, gd::string, bool, int, float, bool, bool);
	~SetIDPopup();

	void onResetValue(cocos2d::CCObject* sender);
	void onItemIDArrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onCancel(cocos2d::CCObject* sender);

	TodoReturn updateTextInputLabel();

	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn valueChanged();
}

[[link(android)]]
class UploadActionPopup : FLAlertLayer {
	static UploadActionPopup* create(UploadPopupDelegate*, gd::string);

	bool init(UploadPopupDelegate*, gd::string) = win 0x206290;
	~UploadActionPopup();

	void onClose(cocos2d::CCObject* sender);

	TodoReturn closePopup();
	TodoReturn showFailMessage(gd::string);
	TodoReturn showSuccessMessage(gd::string);

	virtual void keyBackClicked();
}

[[link(android)]]
class LeaderboardManagerDelegate {
	virtual TodoReturn updateUserScoreFinished();
	virtual TodoReturn updateUserScoreFailed();
	virtual TodoReturn loadLeaderboardFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadLeaderboardFailed(char const*);
}

[[link(android)]]
class GJUserScore : cocos2d::CCNode {
	static GJUserScore* create(cocos2d::CCDictionary*) = win 0x1168C0;
	static GJUserScore* create() = win 0x117860;

	~GJUserScore();

	/* unverified signature */
	bool isCurrentUser() = win 0x117960;
	TodoReturn mergeWithScore(GJUserScore*);

	virtual bool init();

	gd::string m_userName;
	gd::string m_userUDID;
	int m_scoreType;
	int m_userID;
	int m_accountID;
	int m_stars;
	int m_moons;
	int m_diamonds;
	int m_demons;
	int m_playerRank;
	int m_creatorPoints;
	int m_secretCoins;
	int m_userCoins;
	int m_iconID;
	int m_color1;
	int m_color2;
	int m_color3;
	int m_special;
	IconType m_iconType;
	int m_messageState;
	int m_friendStatus;
	int m_commentHistoryStatus;
	gd::string m_youtubeURL;
	gd::string m_twitterURL;
	gd::string m_twitchURL;
	int m_playerCube;
	int m_playerShip;
	int m_playerBall;
	int m_playerUfo;
	int m_playerWave;
	int m_playerRobot;
	int m_playerSpider;
	int m_playerSwing;
	int m_playerJetpack;
	int m_playerStreak;
	bool m_glowEnabled;
	int m_playerExplosion;
	int m_modBadge;
	int m_globalRank;
	int m_friendReqStatus;
	int m_newMsgCount;
	int m_friendReqCount;
	bool m_isBlocked;
}

[[link(android)]]
class ProfilePage : FLAlertLayer, FLAlertLayerProtocol, LevelCommentDelegate, CommentUploadDelegate, UserInfoDelegate, UploadActionDelegate, UploadPopupDelegate, LeaderboardManagerDelegate {
	static ProfilePage* create(int, bool) = win 0x2E7270;

	bool init(int, bool) = win 0x2E7320;
	~ProfilePage();

	void onMessages(cocos2d::CCObject* sender);
	void onMyLevels(cocos2d::CCObject* sender) = win 0x2E9F20;
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onRequests(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onBlockUser(cocos2d::CCObject* sender);
	void onSendMessage(cocos2d::CCObject* sender);
	void onCommentHistory(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onFollow(cocos2d::CCObject* sender);
	void onFriend(cocos2d::CCObject* sender);
	void onTwitch(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	void onComment(cocos2d::CCObject* sender);
	void onFriends(cocos2d::CCObject* sender);
	void onMyLists(cocos2d::CCObject* sender);
	void onTwitter(cocos2d::CCObject* sender);
	void onYouTube(cocos2d::CCObject* sender);

	/* unverified signature */
	bool isOnWatchlist(int);
	TodoReturn setupComments();
	TodoReturn setupPageInfo(gd::string, char const*);
	TodoReturn updatePageArrows();
	TodoReturn updateLevelsLabel();
	TodoReturn showNoAccountError();
	TodoReturn loadPageFromUserInfo(GJUserScore*) = win 0x2e8040;
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*) = win 0x2EB980;
	TodoReturn toggleMainPageVisibility(bool);
	TodoReturn loadPage(int);
	TodoReturn blockUser();
	/* unverified signature */
	bool isCorrect(char const*);

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void show() = win 0x2EB010;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn updateUserScoreFinished();
	virtual TodoReturn updateUserScoreFailed();
	virtual TodoReturn getUserInfoFinished(GJUserScore*);
	virtual TodoReturn getUserInfoFailed(int);
	virtual TodoReturn userInfoChanged(GJUserScore*) = win 0x2EB6B0;
	virtual TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadCommentsFailed(char const*);
	virtual TodoReturn commentUploadFinished(int);
	virtual TodoReturn commentUploadFailed(int, CommentError);
	virtual TodoReturn commentDeleteFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
}

[[link(android)]]
class SliderThumb : cocos2d::CCMenuItemImage {
	static SliderThumb* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*) = win 0x4c680;

	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*);
	~SliderThumb();

	// inlined on windows
	float getValue() {
		return (this->getScaleX() * m_length * .5f +
				(m_vertical ?
					this->getPositionY() :
					this->getPositionX())
			) / (this->getScaleX() * m_length);
	}

	/* unverified signature */
	void setRotated(bool);
	/* unverified signature */
	void setMaxOffset(float);
	void setValue(float) = win 0x4c950;

	float m_length;
	bool m_vertical;
}

[[link(android)]]
class ColorChannelSprite : cocos2d::CCSprite {
	static ColorChannelSprite* create() = win 0x1d41d0;

	~ColorChannelSprite();

	// TodoReturn updateValues(ColorAction*);
	TodoReturn updateOpacity(float) = win 0x1d4450;
	TodoReturn updateBlending(bool);
	TodoReturn updateCopyLabel(int, bool);

	virtual bool init();
}

[[link(android)]]
class GJDropDownLayerDelegate {
	virtual void dropDownLayerWillClose(GJDropDownLayer*) {}
}

[[link(android)]]
class StatsCell : TableViewCell {
	StatsCell(char const*, float, float);
	~StatsCell();

	TodoReturn getTitleFromKey(char const*);

	TodoReturn updateBGColor(int) = win 0x7D0A0;
	TodoReturn loadFromObject(StatsObject*) = win 0x81BD0;

	virtual bool init();
	virtual void draw() = win 0x7d0f0;
}

[[link(android)]]
class StatsObject : cocos2d::CCObject {
	static StatsObject* create(char const*, int);
	bool init(char const*, int);
	~StatsObject();
}

[[link(android)]]
class SliderTouchLogic : cocos2d::CCMenu {
	static SliderTouchLogic* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float);

	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float);
	~SliderTouchLogic();

	/* unverified signature */
	void setRotated(bool);
	/* unverified signature */
	void setMaxOffset(float);

	// 2.2, not tested

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();

	float m_unknownUnused;
	float m_length;
	SliderThumb* m_thumb;
	Slider* m_slider;
	bool m_activateThumb;
	cocos2d::CCPoint m_position;
	bool m_rotated;
}

[[link(android)]]
class GameToolbox {
	static TodoReturn bounceTime(float);
	static TodoReturn easeToText(int);
	static TodoReturn fast_srand(unsigned long);
	static TodoReturn gen_random(int);
	static TodoReturn getResponse(cocos2d::extension::CCHttpResponse*);
	static TodoReturn intToString(int) = win 0x45060;
	static TodoReturn openAppPage();
	static TodoReturn openRateURL(gd::string, gd::string);
	static TodoReturn strongColor(cocos2d::_ccColor3B);
	static TodoReturn colorToSepia(cocos2d::_ccColor3B, float);
	/* unverified signature */
	static bool isRateEasing(int);
	static TodoReturn addBackButton(cocos2d::CCLayer*, cocos2d::CCMenuItem*);
	static TodoReturn fast_rand_0_1();
	static TodoReturn getEasedValue(float, int, float);
	static TodoReturn getfast_srand();
	static TodoReturn getTimeString(int);
	static TodoReturn hsvFromString(gd::string const&, char const*);
	static TodoReturn postClipVisit();
	static TodoReturn stringFromHSV(cocos2d::_ccHSVValue, char const*);
	static TodoReturn getEasedAction(cocos2d::CCActionInterval*, int, float);
	static TodoReturn msToTimeString(int, int);
	static TodoReturn pointsToString(int);
	static TodoReturn transformColor(cocos2d::_ccColor3B const&, float, float, float);
	static TodoReturn transformColor(cocos2d::_ccColor3B const&, cocos2d::_ccHSVValue);
	static TodoReturn createHashString(gd::string const&, int);
	static TodoReturn doWeHaveInternet();
	static TodoReturn getMultipliedHSV(cocos2d::_ccHSVValue const&, float);
	static TodoReturn intToShortString(int);
	static TodoReturn saveStringToFile(gd::string const&, gd::string const&);
	static TodoReturn stringSetupToMap(gd::string const&, char const*, gd::map<gd::string, gd::string>&);
	static TodoReturn getDropActionWEnd(float, float, float, cocos2d::CCAction*, float);
	static TodoReturn getInvertedEasing(int);
	// static TodoReturn getRelativeOffset(GameObject*, cocos2d::CCPoint);
	static TodoReturn stringSetupToDict(gd::string const&, char const*);
	static CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, float, float, float, cocos2d::CCPoint, char const*, bool, int, cocos2d::CCArray*) = win 0x040d40;
	static CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCArray*) = win 0x040c40;
	static TodoReturn fast_rand_minus1_1();
	static TodoReturn particleFromString(gd::string const&, cocos2d::CCParticleSystemQuad*, bool);
	static TodoReturn particleFromStruct(cocos2d::ParticleStruct const&, cocos2d::CCParticleSystemQuad*, bool);
	static TodoReturn getDropActionWDelay(float, float, float, cocos2d::CCNode*, cocos2d::SEL_CallFunc);
	static TodoReturn alignItemsVertically(cocos2d::CCArray*, float, cocos2d::CCPoint);
	static TodoReturn contentScaleClipRect(cocos2d::CCRect&);
	static TodoReturn multipliedColorValue(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float) = win 0x41a40;
	static TodoReturn preVisitWithClipRect(cocos2d::CCRect);
	static TodoReturn saveParticleToString(cocos2d::CCParticleSystemQuad*);
	static TodoReturn addRThumbScrollButton(cocos2d::CCLayer*);
	static TodoReturn alignItemsHorisontally(cocos2d::CCArray*, float, cocos2d::CCPoint, bool);
	static TodoReturn mergeDictsSkipConflict(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
	static TodoReturn particleStringToStruct(gd::string const&, cocos2d::ParticleStruct&);
	static TodoReturn getLargestMergedIntDicts(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
	static TodoReturn mergeDictsSaveLargestInt(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
	static void preVisitWithClippingRect(cocos2d::CCNode*, cocos2d::CCRect) = win 0x40bc0;
	static TodoReturn timestampToHumanReadable(long);
	/* unverified signature */
	static bool isIOS();
	static TodoReturn fast_rand();
}

[[link(android)]]
class BoomScrollLayer : cocos2d::CCLayer {
	static BoomScrollLayer* create(cocos2d::CCArray*, int, bool);
	static BoomScrollLayer* create(cocos2d::CCArray*, int, bool, cocos2d::CCArray*, DynamicScrollDelegate*);

	bool init(cocos2d::CCArray*, int, bool, cocos2d::CCArray*, DynamicScrollDelegate*);
	~BoomScrollLayer();

	TodoReturn getTotalPages();
	TodoReturn getRelativePageForNum(int);
	TodoReturn getRelativePosForPage(int);
	TodoReturn getPage(int);

	/* unverified signature */
	void setDotScale(float);
	/* unverified signature */
	void setPagesIndicatorPosition(cocos2d::CCPoint);

	TodoReturn claimTouch(cocos2d::CCTouch*);
	TodoReturn moveToPage(int);
	TodoReturn removePage(cocos2d::CCLayer*);
	TodoReturn selectPage(int);
	TodoReturn updateDots(float);
	TodoReturn quickUpdate();
	TodoReturn updatePages();
	TodoReturn moveToPageEnded();
	TodoReturn instantMoveToPage(int);
	TodoReturn cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn removePageWithNumber(int);
	TodoReturn togglePageIndicators(bool);
	TodoReturn pageNumberForPosition(cocos2d::CCPoint);
	TodoReturn repositionPagesLooped();
	TodoReturn setupDynamicScrolling(cocos2d::CCArray*, DynamicScrollDelegate*);
	TodoReturn positionForPageWithNumber(int);
	TodoReturn addPage(cocos2d::CCLayer*);
	TodoReturn addPage(cocos2d::CCLayer*, int);

	virtual void visit();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
}

[[link(android)]]
class LevelInfoLayer : cocos2d::CCLayer, LevelDownloadDelegate, LevelUpdateDelegate, RateLevelDelegate, LikeItemDelegate, FLAlertLayerProtocol, LevelDeleteDelegate, NumberInputDelegate, SetIDPopupDelegate, TableViewCellDelegate {
	static LevelInfoLayer* create(GJGameLevel*, bool) = win 0x24CCD0, mac 0x2973f0;

	bool init(GJGameLevel*, bool) = win 0x24CD80;
	~LevelInfoLayer();

	void onFavorite(cocos2d::CCObject* sender)= win 0x24EFC0;
	void onFeatured(cocos2d::CCObject* sender);
	void onAddToList(cocos2d::CCObject* sender) = win 0x24EDA0;
	void onLevelInfo(cocos2d::CCObject* sender) = win 0x2521E0;
	void onRateDemon(cocos2d::CCObject* sender) = win 0x251E00;
	void onRateStars(cocos2d::CCObject* sender) = win 0x251CD0;
	void onSetFolder(cocos2d::CCObject* sender) = win 0x24EEE0;
	void onPlayReplay(cocos2d::CCObject* sender);
	void onOwnerDelete(cocos2d::CCObject* sender) = win 0x251B50;
	void onViewProfile(cocos2d::CCObject* sender) = win 0x252180;
	void onRateStarsMod(cocos2d::CCObject* sender) = win 0x251DB0;
	void onLowDetailMode(cocos2d::CCObject* sender) = win 0x252150;
	void onLevelLeaderboard(cocos2d::CCObject* sender) = win 0x24F030;
	void onBack(cocos2d::CCObject* sender) = win 0x2533E0;
	void onInfo(cocos2d::CCObject* sender) = win 0x2516C0;
	void onLike(cocos2d::CCObject* sender) = win 0x251E40;
	void onPlay(cocos2d::CCObject* sender) = win 0x250DA0;
	void onRate(cocos2d::CCObject* sender) = win 0x251CD0;
	void onClone(cocos2d::CCObject* sender) = win 0x2516F0;
	void onDelete(cocos2d::CCObject* sender) = win 0x251AA0;
	void onGarage(cocos2d::CCObject* sender) = win 0x24F090;
	void onUpdate(cocos2d::CCObject* sender) = win 0x252090;

	void confirmClone(cocos2d::CCObject*) = win 0x2518D0;
	TodoReturn confirmDelete(cocos2d::CCObject*);
	void downloadLevel() = win 0x1b950;
	TodoReturn loadLevelStep();
	void tryCloneLevel(cocos2d::CCObject*) = win 0x2516f0;
	TodoReturn incrementLikes();
	TodoReturn setupLevelInfo();
	TodoReturn showSongWarning();
	TodoReturn showUpdateAlert(UpdateResponse);
	TodoReturn confirmMoveToTop(cocos2d::CCObject*);
	TodoReturn incrementDislikes();
	TodoReturn setupProgressBars();
	TodoReturn updateLabelValues() = win 0x252490;
	TodoReturn updateSideButtons();
	TodoReturn confirmOwnerDelete(cocos2d::CCObject*);
	TodoReturn confirmMoveToBottom(cocos2d::CCObject*);
	TodoReturn shouldDownloadLevel();
	TodoReturn setupPlatformerStats();
	TodoReturn scene(GJGameLevel*, bool);
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn playStep4();
	TodoReturn tryShowAd();

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn numberInputClosed(NumberInputLayer*);
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	virtual void levelDownloadFinished(GJGameLevel*) = win 0x250750;
	virtual TodoReturn levelDownloadFailed(int) = win 0x250750;
	virtual TodoReturn levelUpdateFinished(GJGameLevel*, UpdateResponse);
	virtual TodoReturn levelUpdateFailed(int);
	virtual TodoReturn levelDeleteFinished(int);
	virtual TodoReturn levelDeleteFailed(int);
	virtual TodoReturn rateLevelClosed();
	virtual TodoReturn likedItem(LikeItemType, int, bool);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual void setIDPopupClosed(SetIDPopup*, int);

	void* m_unk0;
	cocos2d::CCMenu* m_playBtnMenu;
	GJGameLevel* m_level;
	cocos2d::CCArray* m_coins;
	CCMenuItemSpriteExtra* m_likeBtn;
	CCMenuItemSpriteExtra* m_starRateBtn;
	CCMenuItemSpriteExtra* m_demonRateBtn;
	void* m_unk2;
	CCMenuItemToggler* m_ldmToggler;
	cocos2d::CCLabelBMFont* m_ldmLabel;
	cocos2d::CCLabelBMFont* m_lengthLabel;
	cocos2d::CCLabelBMFont* m_downloadsLabel;
	cocos2d::CCLabelBMFont* m_likesLabel;
	cocos2d::CCLabelBMFont* m_orbsLabel;
	cocos2d::CCLabelBMFont* m_folderLabel;
	CCMenuItemSpriteExtra* m_cloneBtn;
	void* m_unk3;
	cocos2d::CCSprite* m_likesIcon;
	cocos2d::CCSprite* m_orbsIcon;
	int m_unk6; // always 3, maybe level type?
	void* m_unk7;
	LoadingCircle* m_circle;
	CCNode* m_difficultySprite; // actually GJDifficultySprite
	cocos2d::CCSprite* m_starsIcon;
	cocos2d::CCLabelBMFont* m_starsLabel;
	cocos2d::CCArray* m_icons;
	PAD = win 0x10, android32 0x10;
	bool m_challenge;
	PAD = win 0x4, android32 0x4;
	cocos2d::CCSprite* m_playSprite;
	void* m_unk11;
	CCNode* m_songWidget; // actually CustomSongWidget
}

[[link(android)]]
class GJSpriteColor {
    int m_colorID;
    int m_defaultColorID;
    float m_opacity;
    cocos2d::ccHSVValue m_hsv;
    bool m_usesHSV;
    float unk_10C;
    bool unk_110;

    TodoReturn getColorMode();
}

[[link(android)]]
class CCSpritePlus : cocos2d::CCSprite {
	CCSpritePlus();
	~CCSpritePlus();

	TodoReturn getFollower();

	TodoReturn stopFollow();
	TodoReturn addFollower(cocos2d::CCNode*);
	TodoReturn followSprite(CCSpritePlus*);
	TodoReturn removeFollower(cocos2d::CCNode*);
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(char const*);

	virtual void setScaleX(float) = win 0x28C10;
	virtual void setScaleY(float) = win 0x28C90;
	virtual void setScale(float) = win 0x28D10;
	virtual void setPosition(cocos2d::CCPoint const&) = win 0x288F0;
	virtual void setRotation(float);
	virtual void setRotationX(float);
	virtual void setRotationY(float);
	virtual bool initWithTexture(cocos2d::CCTexture2D*);
	virtual bool initWithSpriteFrameName(char const*);
	virtual void setFlipX(bool);
	virtual void setFlipY(bool);

	cocos2d::CCArray* m_followers;
	CCSpritePlus* m_followingSprite;
	bool m_hasFollower;
	bool m_propagateScaleChanges;
	bool m_propagateFlipChanges;
}

[[link(android)]]
class GameObject : CCSpritePlus {
	bool init(char const*);
	GameObject();
	~GameObject();

	TodoReturn getGroupID(int);
	TodoReturn getColorKey(bool, bool) = win 0x13be40;
	TodoReturn getBallFrame(int);
	TodoReturn getBoxOffset();
	TodoReturn getGlowFrame(gd::string);
	TodoReturn getMainColor();
	TodoReturn getColorFrame(gd::string);
	TodoReturn getColorIndex();
	TodoReturn getParentMode();
	TodoReturn getSlopeAngle();
	TodoReturn getGroupString();
	TodoReturn getBoundingRect();
	TodoReturn getCustomZLayer();
	TodoReturn getLastPosition();
	TodoReturn getObjectRadius();
	TodoReturn getObjectZLayer();
	TodoReturn getObjectZOrder();
	TodoReturn getGroupDisabled();
	TodoReturn getMainColorMode();
	TodoReturn getScalePosDelta();
	TodoReturn getSecondaryColor();
	TodoReturn getObjectDirection();
	TodoReturn getOuterObjectRect();
	TodoReturn getObjectRectPointer();
	TodoReturn getActiveColorForMode(int, bool) = win 0x140ba0;
	TodoReturn getSecondaryColorMode();
	TodoReturn getUnmodifiedPosition();
	TodoReturn getRelativeSpriteColor(int);
	TodoReturn getStartPos();
	TodoReturn getObjectRectDirty();
	TodoReturn getOrientedRectDirty();
	TodoReturn getType();

	/* unverified signature */
	void setAreaOpacity(float, float, int);
	/* unverified signature */
	void setGlowOpacity(unsigned char);
	/* unverified signature */
	void setCustomZLayer(int);
	/* unverified signature */
	void setLastPosition(cocos2d::CCPoint const&);
	/* unverified signature */
	void setMainColorMode(int);
	/* unverified signature */
	void setSecondaryColorMode(int);
	/* unverified signature */
	void setDefaultMainColorMode(int);
	/* unverified signature */
	void setDefaultSecondaryColorMode(int);

	TodoReturn copyGroups(GameObject*);
	TodoReturn createGlow(gd::string);
	TodoReturn groupColor(cocos2d::_ccColor3B const&, bool);
	TodoReturn ignoreFade();
	TodoReturn removeGlow();
	TodoReturn addRotation(float);
	TodoReturn addRotation(float, float);
	TodoReturn commonSetup() = win 0x12f1a0;
	TodoReturn ignoreEnter();
	TodoReturn resetGroups();
	TodoReturn shouldLockX();
	TodoReturn addEmptyGlow();
	TodoReturn colorForMode(int, bool) = win 0x1408c0;
	/* unverified signature */
	bool isFacingDown() = win 0x13fff0;
	/* unverified signature */
	bool isFacingLeft();
	TodoReturn addNewSlope01(bool);
	TodoReturn addNewSlope02(bool);
	TodoReturn canRotateFree();
	TodoReturn createWithKey(int) = win 0x12e410;
	TodoReturn destroyObject();
	TodoReturn disableObject();
	/* unverified signature */
	bool isColorObject();
	/* unverified signature */
	bool isSpeedObject() = win 0x1417e0;
	TodoReturn makeInvisible();
	TodoReturn slopeFloorTop();
	TodoReturn slopeWallLeft();
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x1D230;
	TodoReturn addColorSprite(gd::string);
	TodoReturn addCustomChild(gd::string, cocos2d::CCPoint, int);
	TodoReturn assignUniqueID();
	TodoReturn belongsToGroup(int);
	TodoReturn deselectObject();
	/* unverified signature */
	bool isBasicTrigger();
	/* unverified signature */
	bool isColorTrigger();
	TodoReturn updateHSVState();
	TodoReturn updateStartPos();
	TodoReturn addToColorGroup(int);
	TodoReturn addToTempOffset(double, double);
	TodoReturn createWithFrame(char const*) = win 0x12f0a0;
	TodoReturn didScaleXChange();
	TodoReturn didScaleYChange();
	TodoReturn duplicateValues(GameObject*);
	TodoReturn groupOpacityMod() = win 0x13bc10;
	TodoReturn groupWasEnabled();
	/* unverified signature */
	bool isSpecialObject();
	TodoReturn parentForZLayer(int, bool, int);
	TodoReturn playShineEffect();
	TodoReturn resetMoveOffset();
	TodoReturn setupPixelScale();
	TodoReturn setupSpriteSize();
	TodoReturn updateBlendMode() = win 0x13add0;
	TodoReturn updateMainColor();
	TodoReturn addInternalChild(cocos2d::CCSprite*, gd::string, cocos2d::CCPoint, int);
	TodoReturn dirtifyObjectPos();
	TodoReturn fastRotateObject(float);
	TodoReturn groupWasDisabled();
	/* unverified signature */
	bool isSettingsObject();
	TodoReturn objectFromVector(gd::vector<gd::string>&, gd::vector<void*>&, GJBaseGameLayer*, bool) = win 0x13c2d0;
	TodoReturn perspectiveFrame(char const*, int);
	TodoReturn resetColorGroups();
	TodoReturn setupColorSprite(int, bool);
	TodoReturn shouldBlendColor(GJSpriteColor*, bool) = win 0x131950;
	void updateIsOriented() = win 0x13fe50;
	TodoReturn addNewSlope01Glow(bool);
	TodoReturn addNewSlope02Glow(bool);
	TodoReturn addToCustomScaleX(float);
	TodoReturn addToCustomScaleY(float);
	TodoReturn addToOpacityGroup(int);
	TodoReturn createSpriteColor(int);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn dirtifyObjectRect();
	TodoReturn hasSecondaryColor();
	TodoReturn opacityModForMode(int, bool);
	TodoReturn removeColorSprite();
	TodoReturn resetRScaleForced();
	TodoReturn updateMainOpacity();
	TodoReturn canChangeMainColor();
	TodoReturn duplicateColorMode(GameObject*);
	TodoReturn editorColorForMode(int);
	/* unverified signature */
	bool isBasicEnterEffect(int);
	/* unverified signature */
	bool isSpawnableTrigger();
	/* unverified signature */
	bool isStoppableTrigger();
	TodoReturn reorderColorSprite();
	TodoReturn resetGroupDisabled();
	TodoReturn resetMainColorMode();
	TodoReturn setupCustomSprites(gd::string) = win 0x14BC10;
	TodoReturn updateCustomScaleX(float);
	TodoReturn updateCustomScaleY(float);
	TodoReturn addCustomBlackChild(gd::string, float, bool);
	TodoReturn addCustomColorChild(gd::string);
	TodoReturn duplicateAttributes(GameObject*);
	TodoReturn playPickupAnimation(cocos2d::CCSprite*, float, float, float, float);
	TodoReturn playPickupAnimation(cocos2d::CCSprite*, float, float, float, float, float, float, float, float, bool, float, float);
	TodoReturn quickUpdatePosition();
	TodoReturn updateMainColorOnly();
	TodoReturn usesFreezeAnimation();
	TodoReturn addColorSpriteToSelf();
	TodoReturn addInternalGlowChild(gd::string, cocos2d::CCPoint);
	TodoReturn calculateOrientedBox();
	TodoReturn canChangeCustomColor();
	TodoReturn createAndAddParticle(int, char const*, int, cocos2d::tCCPositionType) = win 0x139650;
	TodoReturn createGroupContainer(int);
	TodoReturn ignoreEditorDuration();
	/* unverified signature */
	bool isConfigurablePortal();
	TodoReturn loadGroupsFromString(gd::string);
	TodoReturn quickUpdatePosition2();
	TodoReturn updateSecondaryColor();
	TodoReturn usesSpecialAnimation();
	TodoReturn dontCountTowardsLimit();
	TodoReturn perspectiveColorFrame(char const*, int);
	TodoReturn playDestroyObjectAnim(GJBaseGameLayer*);
	TodoReturn updateCustomColorType(short);
	TodoReturn addColorSpriteToParent(bool);
	TodoReturn commonInteractiveSetup();
	TodoReturn updateSecondaryOpacity();
	TodoReturn canChangeSecondaryColor();
	void determineSlopeDirection() = win 0x13b260;
	TodoReturn resetSecondaryColorMode();
	TodoReturn shouldNotHideAnimFreeze();
	TodoReturn shouldShowPickupEffects();
	TodoReturn updateObjectEditorColor();
	TodoReturn editorColorForCustomMode(int);
	/* unverified signature */
	bool isEditorSpawnableTrigger();
	TodoReturn updateSecondaryColorOnly();
	TodoReturn createColorGroupContainer(int);
	TodoReturn updateUnmodifiedPositions();
	TodoReturn spawnDefaultPickupParticle(GJBaseGameLayer*);
	TodoReturn addInternalCustomColorChild(gd::string, cocos2d::CCPoint, int);
	TodoReturn createOpacityGroupContainer(int);
	TodoReturn addGlow(gd::string);
	TodoReturn resetMID();
	/* unverified signature */
	bool isTrigger();
	TodoReturn slopeYPos(float);
	TodoReturn slopeYPos(cocos2d::CCRect);
	TodoReturn slopeYPos(GameObject*);

	virtual void update(float);
	virtual void setScaleX(float) = win 0x138E40;
	virtual void setScaleY(float) = win 0x138ED0;
	virtual void setScale(float) = win 0x138F60;
	virtual void setPosition(cocos2d::CCPoint const&) = win 0x138900;
	virtual void setVisible(bool);
	virtual void setRotation(float);
	virtual void setRotationX(float);
	virtual void setRotationY(float);
	virtual void setOpacity(unsigned char);
	virtual bool initWithTexture(cocos2d::CCTexture2D*);
	virtual void setChildColor(cocos2d::_ccColor3B const&);
	virtual void setFlipX(bool) = win 0x138dc0;
	virtual void setFlipY(bool) = win 0x138e00;
	virtual TodoReturn firstSetup();
	virtual TodoReturn customSetup();
	virtual TodoReturn addMainSpriteToParent(bool) = win 0x13AE30;
	virtual TodoReturn resetObject();
	virtual TodoReturn activateObject();
	virtual TodoReturn deactivateObject(bool) = win 0x131860;
	virtual TodoReturn transferObjectRect(cocos2d::CCRect&) = win 0x1383E0;
	virtual TodoReturn getObjectRect();
	virtual TodoReturn getObjectRect(float, float) = win 0x138430;
	virtual TodoReturn getObjectRect2(float, float);
	virtual TodoReturn getObjectTextureRect();
	virtual TodoReturn getRealPosition();
	virtual void setStartPos(cocos2d::CCPoint);
	virtual TodoReturn updateStartValues();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
	virtual TodoReturn claimParticle();
	virtual TodoReturn unclaimParticle();
	virtual TodoReturn particleWasActivated();
	virtual bool isFlipX();
	virtual bool isFlipY();
	virtual void setRScaleX(float);
	virtual void setRScaleY(float);
	virtual void setRScale(float);
	virtual TodoReturn getRScaleX();
	virtual TodoReturn getRScaleY();
	virtual void setRRotation(float);
	virtual TodoReturn triggerActivated(float);
	virtual void setObjectColor(cocos2d::_ccColor3B const&);
	virtual void setGlowColor(cocos2d::_ccColor3B const&);
	virtual TodoReturn restoreObject();
	virtual TodoReturn animationTriggered();
	virtual TodoReturn selectObject(cocos2d::_ccColor3B);
	// virtual TodoReturn activatedByPlayer(PlayerObject*);
	// virtual TodoReturn hasBeenActivatedByPlayer(PlayerObject*);
	virtual TodoReturn hasBeenActivated();
	virtual TodoReturn getOrientedBox();
	virtual TodoReturn updateOrientedBox();
	virtual TodoReturn getObjectRotation();
	virtual TodoReturn updateMainColor(cocos2d::_ccColor3B const&);
	virtual TodoReturn updateSecondaryColor(cocos2d::_ccColor3B const&);
	virtual TodoReturn addToGroup(int);
	virtual TodoReturn removeFromGroup(int);
	virtual TodoReturn saveActiveColors();
	virtual TodoReturn spawnXPosition();
	virtual TodoReturn canAllowMultiActivate();
	virtual TodoReturn blendModeChanged();
	virtual TodoReturn updateParticleColor(cocos2d::_ccColor3B const&);
	virtual TodoReturn updateParticleOpacity(unsigned char);
	virtual TodoReturn updateMainParticleOpacity(unsigned char);
	virtual TodoReturn updateSecondaryParticleOpacity(unsigned char);
	virtual TodoReturn canReverse();
	virtual bool isSpecialSpawnObject();
	virtual TodoReturn canBeOrdered();
	virtual TodoReturn getObjectLabel();
	virtual void setObjectLabel(cocos2d::CCLabelBMFont*);
	virtual TodoReturn shouldDrawEditorHitbox();
	virtual TodoReturn getHasSyncedAnimation();
	virtual TodoReturn getHasRotateAction();
	virtual TodoReturn canMultiActivate(bool);
	virtual TodoReturn updateTextKerning(int);
	virtual TodoReturn getTextKerning();
	virtual void setObjectRectDirty(bool);
	virtual void setOrientedRectDirty(bool);
	virtual void setType(GameObjectType);

	PAD = android32 0xf;

	// property 511
	bool m_hasExtendedCollision;
	PAD = android32 0x13;

	cocos2d::CCSprite* m_baseSprite;
    cocos2d::CCSprite* m_detailSprite;

	PAD = android32 0x69;

	// property 146
	bool m_particleUseObjectColor;
	PAD = android32 0x3e;

	// property 108
	int m_linkedGroup;
	PAD = android32 0x27;

	GameObjectType m_objectType;
	PAD = android32 0x2d;

	// property 372
	bool m_hasNoAudioScale;
	PAD = android32 0x2a;

	// property 343
	short m_enterChannel;
	// property 446
	short m_objectMaterial;
	PAD = android32 0x4;

	// property 96
	bool m_hasNoGlow;
	PAD = android32 0x3;

	// property 23
	int m_targetColor;

	// property 1
	int m_objectID;
	PAD = android32 0x8;

	// property 497
	short m_property497;
	// property 67
	bool m_isDontEnter;
	// property 64
	bool m_isDontFade;
	// property 116
	bool m_hasNoEffects;
	// property 507
	bool m_hasNoParticles;
	PAD = android32 0x16;

	// property 53
	int m_property53;
	PAD = android32 0x18;

	// property 21, also used with 41 and 43
	GJSpriteColor* m_baseColor;
	// property 22, also used with 42 and 44
    GJSpriteColor* m_detailColor;
	PAD = android32 0xc;

	// property 24
	ZLayer m_zLayer;
	// property 25
	int m_zOrder;
	PAD = android32 0x12;

	// property 34
	bool m_hasGroupParent;
	// property 279
	bool m_hasAreaParent;
	// property 128
	float m_scaleX;
	// property 129
	float m_scaleY;
	PAD = android 0x4;

	// used with property 57
	short m_groupCount;
	// used with property 274
	bool m_hasGroupParentsString;
	PAD = android32 0xf;

	// property 20
	short m_editorLayer;
	// property 61
	short m_editorLayer2;
	PAD = android32 0x8;

	// property 121
	bool m_isNoTouch;
	PAD = android32 0x2c;

	// property 103
	bool m_isHighDetail;
	PAD = android32 0x11;

	// property 134
	bool m_isPassable;
	// property 135
	bool m_isHide;
	// property 136
	bool m_isNonStickX;
	// property 289
	bool m_isNonStickY;
	// property 137
	bool m_isIceBlock;
	// property 193
	bool m_isGripSlope;
	// property 356
	bool m_isScaleStick;
	// property 495
	bool m_isExtraSticky;
	// property 496
	bool m_isDontBoostY;
	// property 510
	bool m_property510;
	PAD = android32 0x11;

	// property 155
	int m_property155;
	// property 156
	int m_property156;

	PAD = android32 0x12;
}

[[link(android)]]
class EnhancedGameObject : GameObject {
	static EnhancedGameObject* create(char const*);

	bool init(char const*);
	~EnhancedGameObject();
	EnhancedGameObject();

	TodoReturn updateState(int);
	TodoReturn updateUserCoin() = win 0x145220;
	TodoReturn triggerAnimation();
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn createRotateAction(float, int);
	TodoReturn updateRotateAction(float);
	TodoReturn refreshRotateAction();
	TodoReturn resetSyncedAnimation();
	TodoReturn previewAnimateOnTrigger();
	TodoReturn setupAnimationVariables();
	TodoReturn waitForAnimationTrigger();

	virtual TodoReturn customSetup();
	virtual void resetObject() = win 0x143380;
	virtual TodoReturn deactivateObject(bool);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
	virtual TodoReturn triggerActivated(float);
	virtual TodoReturn restoreObject();
	virtual TodoReturn animationTriggered();
	// virtual TodoReturn activatedByPlayer(PlayerObject*);
	// virtual TodoReturn hasBeenActivatedByPlayer(PlayerObject*);
	virtual TodoReturn hasBeenActivated();
	virtual TodoReturn saveActiveColors();
	virtual TodoReturn canAllowMultiActivate();
	virtual TodoReturn getHasSyncedAnimation();
	virtual TodoReturn getHasRotateAction();
	virtual TodoReturn canMultiActivate(bool);
	virtual TodoReturn powerOnObject(int);
	virtual TodoReturn powerOffObject();
	virtual TodoReturn stateSensitiveOff(GJBaseGameLayer*);
	virtual TodoReturn updateSyncedAnimation(float, int);
	virtual TodoReturn updateAnimateOnTrigger(bool);

	// apparently this class has alignment of 8,
	// please move this somewhere else in the class
	// when you find members from here
	double m_alignmentDouble;

	PAD = android32 0x1d;

	bool m_hasCustomAnimation;
	bool m_hasCustomRotation;
	// property 98
	bool m_disableRotation;
	PAD = android32 0x3;

	// property 97
	float m_rotationSpeed;
	PAD = android32 0xc;

	// property 106
	bool m_animationRandomizedStart;
	// property 107
	float m_animationSpeed;
	// property 122
	bool m_animationShouldUseSpeed;
	// property 123
	bool m_animateOnTrigger;
	// property 126
	bool m_disableDelayedLoop;
	// property 127
	bool m_property127;
	// property 462
	int m_singleFrame;
	// property 592
	bool m_animationOffset;
	PAD = android32 0xf;

	// property 214
	bool m_animateOnlyWhenActive;
	// property 444
	bool m_property444;
	// property 99
	bool m_isMultiActivate;
	PAD = android32 0x4;
}

[[link(android)]]
class EffectGameObject : EnhancedGameObject {
	static EffectGameObject* create(char const*);

	bool init(char const*);
	~EffectGameObject();

	TodoReturn getTargetColorIndex();

	/* unverified signature */
	void setTargetID(int);
	/* unverified signature */
	void setTargetID2(int);

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x3960d0;
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn playTriggerEffect() = win 0x395e50;
	TodoReturn resetSpawnTrigger();
	TodoReturn updateSpecialColor();
	TodoReturn updateSpeedModType();
	TodoReturn triggerEffectFinished() = win 0x396080;
	TodoReturn updateInteractiveHover(float);
	EffectGameObject();

	virtual void setOpacity(unsigned char);
	virtual TodoReturn firstSetup();
	virtual void customSetup() = win 0x397d30;
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
	virtual void setRScaleX(float);
	virtual void setRScaleY(float);
	virtual TodoReturn triggerActivated(float);
	virtual TodoReturn restoreObject();
	virtual TodoReturn spawnXPosition();
	virtual TodoReturn canReverse();
	virtual bool isSpecialSpawnObject();
	virtual TodoReturn canBeOrdered();
	virtual TodoReturn getObjectLabel();
	virtual void setObjectLabel(cocos2d::CCLabelBMFont*);
	virtual TodoReturn stateSensitiveOff(GJBaseGameLayer*);

	// property 7, 8, 9
	cocos2d::ccColor3B m_triggerTargetColor;
	// property 10
	float m_duration;
	// property 35
	float m_opacity;
	PAD = android32 0x4;
	// property 51
	int m_targetGroupID;
	// property 71
	int m_centerGroupID;
	// property 11
	bool m_isTouchTriggered;
	// property 62
	bool m_isSpawnTriggered;
	// property 369
	bool m_hasCenterEffect;
	// property 75
	float m_shakeStrength;
	// property 84
	float m_shakeInterval;
	// property 14
	bool m_tintGround;
	// property 15
	bool m_usesPlayerColor1;
	// property 16
	bool m_usesPlayerColor2;
	// property 17
	bool m_usesBlending;
	// property 28
	float m_moveOffsetX;
	// property 29
	float m_moveOffsetY;
	// property 30
	EasingType m_easingType;
	// property 85
	float m_easingRate;
	// property 58
	bool m_lockToPlayerX;
	// property 59
	bool m_lockToPlayerY;
	// property 141
	bool m_lockToCameraX;
	// property 142
	bool m_lockToCameraY;
	// property 100
	bool m_useMoveTarget;
	// property 101
	MoveTargetType m_moveTargetMode;
	// property 143
	float m_moveModX;
	// property 144
	float m_moveModY;
	// property 393
	bool m_property393;
	// property 394
	bool m_isDirectionFollowSnap360; // TODO: pls find a better name for this why rob
	// property 395
	int m_targetModCenterID;
	// property 396
	float m_directionModeDistance;
	// property 397
	bool m_isDynamicMode;
	// property 544
	bool m_isSilent;
	PAD = android32 0x6;
	// property 68
	float m_rotationDegrees;
	// property 69
	int m_times360;
	// property 70
	bool m_lockObjectRotation;
	// property 401
	int m_rotationTargetID;
	// property 402
	float m_rotationOffset;
	// property 403
	EasingType m_dynamicModeEasing;
	// property 72
	float m_followXMod;
	// property 73
	float m_followYMod;
	// property 90
	float m_followYSpeed;
	// property 91
	float m_followYDelay;
	// property 92
	int m_followYOffset;
	// property 105
	float m_followYMaxSpeed;
	// property 45
	float m_fadeInDuration;
	// property 46
	float m_holdDuration;
	// property 47
	float m_fadeOutDuration;
	// property 48
	int m_pulseMode;
	// property 52
	int m_pulseTargetType;
	// property 49
	cocos2d::ccHSVValue m_hsvValue;
	// property 50
	int m_copyColorID;
	// property 60
	bool m_copyOpacity;
	// property 65
	bool m_pulseMainOnly;
	// property 66
	bool m_pulseDetailOnly;
	// property 86
	bool m_pulseExclusive;
	// property 210
	bool m_property210;
	// property 56
	bool m_activateGroup;
	// property 81
	bool m_touchHoldMode;
	// property 82
	TouchToggleMode m_touchToggleMode;
	// property 198
	int m_touchPlayerMode; // TODO: add enum
	// property 89
	bool m_isDualMode;
	// property 76
	int m_animationID;
	PAD = android32 0x8;
	// property 87
	bool m_isMultiActivate;
	PAD = android32 0x2;
	// property 93
	bool m_triggerOnExit;
	// property 95
	int m_itemID2;
	// property 534
	int m_property534;
	PAD = android32 0x4;
	// property 80
	int m_itemID;
	// property 138
	bool m_targetPlayer1;
	// property 200
	bool m_targetPlayer2;
	// property 201
	bool m_followCPP;
	// property 78
	bool m_subtractCount;
	// property 381
	bool m_collectibleIsPickupItem;
	// property 382
	bool m_collectibleIsToggleTrigger;
	// property 440
	int m_collectibleParticleID;
	// property 383
	int m_collectiblePoints;
	// property 463
	bool m_hasNoAnimation;
	PAD = android32 0x1f;
	// property 148
	float m_gravityValue;
	// property 284
	bool m_isSinglePTouch;
	PAD = android32 0x3;
	// property 371
	float m_zoomValue;
	// property 111
	bool m_cameraIsFreeMode;
	// property 112
	bool m_cameraEditCameraSettings;
	// property 113
	float m_cameraEasingValue;
	// property 114
	float m_cameraPaddingValue;
	// property 370
	bool m_cameraDisableGridSnap;
	// property 118
	bool m_property118;
	// property 120
	float m_timeWarpTimeMod;
	// property 13
	bool m_isEdp;
	// property 115
	int m_ordValue;
	// property 170
	int m_channelValue;
	// property 117
	bool m_isReverse;
	PAD = android32 0xb;
	// property 12
	int m_secretCoinID;
	PAD = android32 0x1c;
	// property 280
	bool m_ignoreGroupParent;
	// property 281
	bool m_ignoreLinkedObjects;
	PAD = android32 0x1;
}

[[link(android)]]
class TextGameObject : GameObject {
	static TextGameObject* create(cocos2d::CCTexture2D*);

	bool init(cocos2d::CCTexture2D*);
	~TextGameObject();

	TodoReturn updateTextObject(gd::string, bool);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
	virtual TodoReturn updateTextKerning(int);
	virtual TodoReturn getTextKerning();

	// property 31
	char* m_text;
	// property 488
	int m_kerning;
}

[[link(android)]]
class SmartGameObject : GameObject {
	static SmartGameObject* create(char const*);

	bool init(char const*);
	~SmartGameObject();

	TodoReturn updateSmartFrame();
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);

	// property 157
	bool m_property157;
	PAD = android32 0x9;
}

[[link(android)]]
class ParticleGameObject : EnhancedGameObject {
	static ParticleGameObject* create();

	~ParticleGameObject();

	/* unverified signature */
	void setParticleString(gd::string);

	// TodoReturn updateParticle();
	// TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	// TodoReturn updateParticleAngle(float, cocos2d::CCParticleSystemQuad*);
	// TodoReturn updateParticleScale(float);
	// TodoReturn updateParticleStruct();
	// TodoReturn applyParticleSettings(cocos2d::CCParticleSystemQuad*);
	// TodoReturn createParticlePreviewArt();
	// TodoReturn createAndAddCustomParticle();
	// TodoReturn updateParticlePreviewArtOpacity(float);

	virtual bool init();
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setScale(float);
	virtual void setRotation(float);
	virtual void setRotationX(float);
	virtual void setRotationY(float);
	virtual void setChildColor(cocos2d::_ccColor3B const&);
	// virtual TodoReturn customSetup();
	// virtual TodoReturn addMainSpriteToParent(bool);
	// virtual TodoReturn resetObject();
	// virtual TodoReturn deactivateObject(bool);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
	// virtual TodoReturn claimParticle();
	// virtual TodoReturn unclaimParticle();
	// virtual TodoReturn particleWasActivated();
	virtual void setObjectColor(cocos2d::_ccColor3B const&);
	// virtual TodoReturn blendModeChanged();
	// virtual TodoReturn updateParticleColor(cocos2d::_ccColor3B const&);
	// virtual TodoReturn updateParticleOpacity(unsigned char);
	// virtual TodoReturn updateMainParticleOpacity(unsigned char);
	// virtual TodoReturn updateSecondaryParticleOpacity(unsigned char);
	// virtual TodoReturn updateSyncedAnimation(float, int);
	// virtual TodoReturn updateAnimateOnTrigger(bool);

	// property 145
	char* m_particleData;
	PAD = android32 0x110;

	// property 147
	bool m_hasUniformObjectColor;
	PAD = android32 0x7;

	// property 211
	bool m_shouldQuickStart;
	PAD = android32 0xf;
}

[[link(android)]]
class SpecialAnimGameObject : EnhancedGameObject {
	static SpecialAnimGameObject* create(char const*);

	bool init(char const*);
	~SpecialAnimGameObject();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual TodoReturn resetObject();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
	virtual TodoReturn updateMainColor(cocos2d::_ccColor3B const&);
	virtual TodoReturn updateSecondaryColor(cocos2d::_ccColor3B const&);
	virtual TodoReturn updateSyncedAnimation(float, int);
}

[[link(android)]]
class RingObject : EffectGameObject {
	static RingObject* create(char const*);

	bool init(char const*);
	~RingObject();

	TodoReturn spawnCircle();
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual void setScale(float);
	virtual void setRotation(float);
	virtual TodoReturn resetObject();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
	virtual void setRScale(float);
	virtual TodoReturn triggerActivated(float);
	virtual TodoReturn shouldDrawEditorHitbox();
	virtual TodoReturn powerOnObject(int);

	// property 445
	bool m_claimTouch;
	// property 504
	bool m_isSpawnOnly;
}

[[link(android)]]
class StartPosObject : EffectGameObject {
	static StartPosObject* create();

	~StartPosObject();

	void setSettings(LevelSettingsObject*);

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn loadSettingsFromString(gd::string);

	virtual bool init() = win 0x3A0D10;
	virtual TodoReturn getSaveString(GJBaseGameLayer*);

	int m_unknown;
}

[[link(android)]]
class LabelGameObject : EffectGameObject {
	static LabelGameObject* create();

	~LabelGameObject();

	TodoReturn createLabel(gd::string);
	TodoReturn removeLabel();
	TodoReturn updateLabel(float);
	TodoReturn updateLabel(gd::string);
	TodoReturn queueUpdateLabel(gd::string);
	TodoReturn unlockLabelColor();
	TodoReturn updateLabelAlign(int);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn setupCustomSprites(gd::string) = win 0x14bc10;
	TodoReturn updateLabelIfDirty();
	TodoReturn updatePreviewLabel();

	virtual bool init();
	virtual void setOpacity(unsigned char);
	virtual TodoReturn addMainSpriteToParent(bool);
	virtual TodoReturn resetObject();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
	virtual void setObjectColor(cocos2d::_ccColor3B const&);
	virtual TodoReturn updateTextKerning(int);
	virtual TodoReturn getTextKerning();

	PAD = android32 0x11;

	// property 391
	int m_alignment;

	// property 389
	bool m_showSecondsOnly;

	// property 390
	int m_shownSpecial;

	// property 466
	bool m_isTimeCounter;

	// property 488
	int m_kerning;

	PAD = android32 0x8;
}

[[link(android)]]
class SearchButton : cocos2d::CCSprite {
	static SearchButton* create(char const* texture, char const* text, float size, char const* icon) = win 0x2608A0;

	bool init(char const*, char const*, float, char const*) = win 0x260990;
	~SearchButton();

	cocos2d::CCLabelBMFont* m_label;
	cocos2d::CCSprite* m_icon;
}

[[link(android)]]
class GameLevelManager : cocos2d::CCNode {
	~GameLevelManager();

	static GameLevelManager* sharedState() = win 0xF2D90;
	inline static GameLevelManager* get() {
		return GameLevelManager::sharedState();
	}

	TodoReturn getDailyID(GJTimedLevelType);
	TodoReturn getDescKey(int);
	TodoReturn getDiffKey(int);
	TodoReturn getDiffVal(int);
	TodoReturn getLevelKey(int);
	TodoReturn getMapPacks(GJSearchObject*);
	TodoReturn getPageInfo(char const*);
	TodoReturn getTimeLeft(char const*, float);
	TodoReturn getUserList(UserListType);
	TodoReturn getGauntlets();
	TodoReturn getGJRewards(int);
	TodoReturn getIntForKey(char const*);
	TodoReturn getLengthStr(bool, bool, bool, bool, bool, bool);
	TodoReturn getMainLevel(int, bool) = win 0xF40E0;
	TodoReturn getReportKey(int);
	TodoReturn getBoolForKey(char const*);
	TodoReturn getCommentKey(int, int, int, CommentKeyType);
	TodoReturn getDailyTimer(GJTimedLevelType);
	TodoReturn getFolderName(int, bool);
	TodoReturn getGJUserInfo(int) = win 0x105270;
	TodoReturn getLevelLists(GJSearchObject*);
	TodoReturn getLocalLevel(int);
	TodoReturn getMapPackKey(int);
	TodoReturn getMessageKey(int);
	TodoReturn getSavedLevel(int);
	TodoReturn getSavedLevel(GJGameLevel*);
	TodoReturn getTopArtists(int, int);
	TodoReturn getGauntletKey(int);
	TodoReturn getLikeItemKey(LikeItemType, int, bool, int);
	TodoReturn getMessagesKey(bool, int);
	cocos2d::CCArray* getSavedLevels(bool, int) = win 0xF6620;
	TodoReturn getSearchScene(char const*);
	TodoReturn getUserInfoKey(int);
	TodoReturn getGJChallenges();
	TodoReturn getLevelListKey(int);
	void getOnlineLevels(GJSearchObject*) = win 0xFBAB0;
	TodoReturn getRateStarsKey(int);
	TodoReturn getSavedMapPack(int);
	TodoReturn getUserMessages(bool, int, int);
	TodoReturn getActiveDailyID(GJTimedLevelType);
	TodoReturn getDifficultyStr(bool, bool, bool, bool, bool, bool, bool, bool);
	TodoReturn getLevelComments(int, int, int, int, CommentKeyType);
	TodoReturn getLevelSaveData();
	TodoReturn getNextLevelName(gd::string);
	TodoReturn getSavedGauntlet(int);
	TodoReturn getTopArtistsKey(int);
	TodoReturn getAllUsedSongIDs();
	TodoReturn getBasePostString() = win 0xfa3b0;
	TodoReturn getFriendRequests(bool, int, int);
	TodoReturn getGauntletLevels(int) = win 0xFF660;
	TodoReturn getLocalLevelList(int);
	TodoReturn getPostCommentKey(int);
	TodoReturn getSavedLevelList(int);
	TodoReturn getStoredUserList(UserListType);
	TodoReturn getAccountComments(int, int, int);
	cocos2d::CCArray* getCompletedLevels(bool);
	TodoReturn getSavedDailyLevel(int);
	TodoReturn getSavedLevelLists(int) = win 0xF6A70;
	TodoReturn getSplitIntFromKey(char const*, int);
	TodoReturn getDeleteCommentKey(int, int, int);
	TodoReturn getDeleteMessageKey(int, bool);
	TodoReturn getFriendRequestKey(bool, int);
	TodoReturn getLevelDownloadKey(int, bool);
	void getLevelLeaderboard(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = win 0x103E80;
	TodoReturn getLocalLevelByName(gd::string);
	TodoReturn getLowestLevelOrder();
	TodoReturn getUploadMessageKey(int);
	TodoReturn getAccountCommentKey(int, int);
	TodoReturn getAllSmartTemplates();
	TodoReturn getGauntletSearchKey(int) = win 0xfee80;
	TodoReturn getGJDailyLevelState(GJTimedLevelType) = win 0x10f150;
	TodoReturn getHighestLevelOrder();
	TodoReturn getLeaderboardScores(char const*);
	TodoReturn getStoredUserMessage(int);
	TodoReturn getLikeAccountItemKey(LikeItemType, int, bool, int);
	TodoReturn getNextFreeTemplateID();
	TodoReturn getSavedGauntletLevel(int);
	cocos2d::CCArray* getStoredOnlineLevels(char const*) = win 0xF76F0;
	TodoReturn getActiveSmartTemplate();
	TodoReturn getLevelLeaderboardKey(int, LevelLeaderboardType, LevelLeaderboardMode);
	TodoReturn getStoredLevelComments(char const*);
	TodoReturn getStoredUserMessageReply(int);
	TodoReturn getSavedDailyLevelFromLevelID(int);
	TodoReturn getNews();
	TodoReturn getUsers(GJSearchObject*);
	TodoReturn getLenKey(int);
	TodoReturn getLenVal(int);

	/* unverified signature */
	void setDiffVal(int, bool);
	/* unverified signature */
	void setIntForKey(int, char const*);
	/* unverified signature */
	void setBoolForKey(bool, char const*);
	/* unverified signature */
	void setFolderName(int, gd::string, bool);
	/* unverified signature */
	void setLevelStars(int, int, bool);
	/* unverified signature */
	void setLevelFeatured(int, int, bool);
	/* unverified signature */
	// void setActiveSmartTemplate(GJSmartTemplate*);
	/* unverified signature */
	void setLenVal(int, bool);

	TodoReturn onBanUserCompleted(gd::string, gd::string);
	TodoReturn onGetNewsCompleted(gd::string, gd::string) = win 0x106c00;
	TodoReturn onGetUsersCompleted(gd::string, gd::string);
	TodoReturn onLikeItemCompleted(gd::string, gd::string) = win 0x10d0f0;
	TodoReturn onBlockUserCompleted(gd::string, gd::string);
	TodoReturn onRateDemonCompleted(gd::string, gd::string);
	TodoReturn onRateStarsCompleted(gd::string, gd::string);
	TodoReturn onGetMapPacksCompleted(gd::string, gd::string) = win 0xfd080;
	TodoReturn onGetUserListCompleted(gd::string, gd::string);
	TodoReturn onReportLevelCompleted(gd::string, gd::string);
	TodoReturn onUnblockUserCompleted(gd::string, gd::string);
	TodoReturn onUpdateLevelCompleted(gd::string, gd::string);
	TodoReturn onUploadLevelCompleted(gd::string, gd::string) = win 0xfb1b0;
	TodoReturn onGetGauntletsCompleted(gd::string, gd::string) = win 0xff060;
	TodoReturn onGetGJRewardsCompleted(gd::string, gd::string);
	TodoReturn onRemoveFriendCompleted(gd::string, gd::string);
	TodoReturn onRestoreItemsCompleted(gd::string, gd::string);
	TodoReturn onDeleteCommentCompleted(gd::string, gd::string) = win 0x109740;
	TodoReturn onDownloadLevelCompleted(gd::string, gd::string) = win 0xffe90;
	TodoReturn onGetGJUserInfoCompleted(gd::string, gd::string) = win 0x1053D0;
	TodoReturn onGetLevelListsCompleted(gd::string, gd::string) = win 0xfe7f0;
	TodoReturn onGetTopArtistsCompleted(gd::string, gd::string) = win 0x104a50;
	TodoReturn onSetLevelStarsCompleted(gd::string, gd::string);
	TodoReturn onUploadCommentCompleted(gd::string, gd::string) = win 0x108c30;
	TodoReturn onSubmitUserInfoCompleted(gd::string, gd::string);
	TodoReturn onGetGJChallengesCompleted(gd::string, gd::string);
	TodoReturn onGetOnlineLevelsCompleted(gd::string, gd::string) = win 0xFC270;
	TodoReturn onGetUserMessagesCompleted(gd::string, gd::string);
	TodoReturn onUpdateUserScoreCompleted(gd::string, gd::string);
	TodoReturn onUploadLevelListCompleted(gd::string, gd::string) = win 0xfe120;
	TodoReturn onGetLevelCommentsCompleted(gd::string, gd::string) = win 0x106f20;
	TodoReturn onGetLevelSaveDataCompleted(gd::string, gd::string);
	TodoReturn onSetLevelFeaturedCompleted(gd::string, gd::string);
	TodoReturn onDeleteServerLevelCompleted(gd::string, gd::string);
	TodoReturn onGetFriendRequestsCompleted(gd::string, gd::string);
	TodoReturn onReadFriendRequestCompleted(gd::string, gd::string);
	TodoReturn onRequestUserAccessCompleted(gd::string, gd::string);
	TodoReturn onSuggestLevelStarsCompleted(gd::string, gd::string);
	TodoReturn onUpdateDescriptionCompleted(gd::string, gd::string);
	TodoReturn onUploadUserMessageCompleted(gd::string, gd::string);
	TodoReturn onDeleteUserMessagesCompleted(gd::string, gd::string);
	TodoReturn onGetAccountCommentsCompleted(gd::string, gd::string);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onAcceptFriendRequestCompleted(gd::string, gd::string);
	TodoReturn onDeleteFriendRequestCompleted(gd::string, gd::string);
	TodoReturn onDownloadUserMessageCompleted(gd::string, gd::string);
	TodoReturn onGetLevelLeaderboardCompleted(gd::string, gd::string);
	TodoReturn onUploadFriendRequestCompleted(gd::string, gd::string);
	TodoReturn onGetGJDailyLevelStateCompleted(gd::string, gd::string) = win 0x10f350;
	TodoReturn onGetLeaderboardScoresCompleted(gd::string, gd::string);
	TodoReturn onDeleteServerLevelListCompleted(gd::string, gd::string) = win 0xfe490;

	TodoReturn dataLoaded(DS_Dictionary*);
	void firstSetup() = win 0x397d10;
	TodoReturn followUser(int);
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	/* unverified signature */
	bool isDLActive(char const*) = win 0xf7910;
	TodoReturn deleteLevel(GJGameLevel*);
	/* unverified signature */
	bool isTimeValid(char const*, float);
	TodoReturn keyHasTimer(char const*);
	TodoReturn reportLevel(int);
	// TodoReturn saveMapPack(GJMapPack*);
	TodoReturn unblockUser(int);
	TodoReturn updateLevel(GJGameLevel*);
	void uploadLevel(GJGameLevel*) = win 0xFA560;
	TodoReturn encodeDataTo(DS_Dictionary*) = win 0xF8F90;
	TodoReturn hasLikedItem(LikeItemType, int, bool, int);
	TodoReturn removeFriend(int);
	TodoReturn restoreItems();
	// TodoReturn saveGauntlet(GJMapPack*) = win 0xff920;
	TodoReturn unfollowUser(int);
	TodoReturn addDLToActive(char const*) = win 0xf79d0;
	TodoReturn deleteComment(int, CommentType, int) = win 0x1093f0;
	TodoReturn downloadLevel(int, bool) = win 0xffa20;
	TodoReturn gotoLevelPage(GJGameLevel*);
	TodoReturn hasRatedDemon(int);
	/* unverified signature */
	bool isUpdateValid(int);
	TodoReturn makeTimeStamp(char const*);
	// TodoReturn saveLevelList(GJLevelList*);
	TodoReturn storeUserInfo(GJUserScore*);
	void storeUserName(int, int, gd::string) = win 0xF54C0;
	TodoReturn uploadComment(gd::string, CommentType, int, int) = win 0x108540;
	GJGameLevel* createNewLevel();
	TodoReturn createPageInfo(int, int, int);
	TodoReturn resetAllTimers();
	TodoReturn resetGauntlets();
	TodoReturn responseToDict(gd::string, bool);
	TodoReturn saveLocalScore(int, int, int);
	TodoReturn storeUserNames(gd::string);
	TodoReturn submitUserInfo();
	TodoReturn tryGetUsername(int) = win 0xf56f0;
	// TodoReturn deleteLevelList(GJLevelList*);
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	/* unverified signature */
	bool isFollowingUser(int);
	TodoReturn likeFromLikeKey(char const*);
	TodoReturn markItemAsLiked(LikeItemType, int, bool, int);
	TodoReturn typeFromLikeKey(char const*);
	TodoReturn updateUsernames();
	void updateUserScore() = win 0x1028A0;
	// TodoReturn uploadLevelList(GJLevelList*);
	TodoReturn hasReportedLevel(int);
	TodoReturn limitSavedLevels() = win 0xF7FD0;
	TodoReturn parseRestoreData(gd::string);
	TodoReturn resetTimerForKey(char const*);
	// TodoReturn storeUserMessage(GJUserMessage*);
	TodoReturn verifyLevelState(GJGameLevel*);
	TodoReturn deleteServerLevel(int);
	TodoReturn hasDownloadedList(int);
	TodoReturn itemIDFromLikeKey(char const*);
	TodoReturn messageWasRemoved(int, bool);
	TodoReturn purgeUnusedLevels();
	TodoReturn readFriendRequest(int);
	TodoReturn requestUserAccess();
	TodoReturn saveFetchedLevels(cocos2d::CCArray*);
	TodoReturn storeSearchResult(cocos2d::CCArray*, gd::string, char const*);
	TodoReturn suggestLevelStars(int, int, int);
	TodoReturn updateDescription(int, gd::string);
	TodoReturn updateLevelOrders() = win 0xF68D0;
	TodoReturn uploadUserMessage(int, gd::string, gd::string);
	gd::string userNameForUserID(int) = win 0xF5610;
	TodoReturn accountIDForUserID(int);
	TodoReturn areGauntletsLoaded();
	TodoReturn cleanupDailyLevels() = win 0xF8430;
	TodoReturn createAndGetLevels(gd::string);
	TodoReturn createAndGetScores(gd::string, GJScoreType);
	TodoReturn createNewLevelList();
	TodoReturn deleteLevelComment(int, int);
	// TodoReturn deleteUserMessages(GJUserMessage*, cocos2d::CCArray*, bool);
	TodoReturn hasDownloadedLevel(int);
	TodoReturn hasRatedLevelStars(int);
	TodoReturn invalidateMessages(bool, bool) = win 0x106ad0;
	TodoReturn invalidateRequests(bool, bool) = win 0x10c630;
	TodoReturn invalidateUserList(UserListType, bool);
	TodoReturn pageFromCommentKey(char const*);
	TodoReturn performNetworkTest() = win 0xF2E10;
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType) = win 0xf2f80;
	TodoReturn removeDLFromActive(char const*) = win 0xf7a80;
	TodoReturn removeUserFromList(int, UserListType);
	TodoReturn specialFromLikeKey(char const*);
	// TodoReturn storeFriendRequest(GJFriendRequest*);
	TodoReturn typeFromCommentKey(char const*);
	TodoReturn updateLevelRewards(GJGameLevel*);
	TodoReturn uploadLevelComment(int, gd::string, int) = win 0x108420;
	TodoReturn userIDForAccountID(int);
	TodoReturn acceptFriendRequest(int, int);
	TodoReturn createSmartTemplate();
	// TodoReturn deleteSmartTemplate(GJSmartTemplate*);
	TodoReturn downloadUserMessage(int, bool);
	TodoReturn hasLikedAccountItem(LikeItemType, int, bool, int);
	TodoReturn markLevelAsReported(int);
	TodoReturn resetStoredUserInfo(int);
	TodoReturn resetStoredUserList(UserListType);
	TodoReturn saveFetchedMapPacks(cocos2d::CCArray*);
	TodoReturn storeCommentsResult(cocos2d::CCArray*, gd::string, char const*);
	TodoReturn uploadFriendRequest(int, gd::string) = win 0x109f10;
	TodoReturn writeSpecialFilters(GJSearchObject*);
	TodoReturn createAndGetMapPacks(gd::string);
	TodoReturn deleteAccountComment(int, int);
	TodoReturn deleteFriendRequests(int, cocos2d::CCArray*, bool);
	TodoReturn markListAsDownloaded(int);
	TodoReturn removeDelimiterChars(gd::string, bool);
	TodoReturn resetAccountComments(int);
	TodoReturn resetDailyLevelState(GJTimedLevelType) = win 0x10f810;
	TodoReturn storeDailyLevelState(int, int, GJTimedLevelType);
	// TodoReturn updateSavedLevelList(GJLevelList*);
	TodoReturn uploadAccountComment(gd::string) = win 0x1084b0;
	TodoReturn userInfoForAccountID(int);
	TodoReturn deleteServerLevelList(int);
	bool hasLikedItemFullCheck(LikeItemType, int, int) = win 0x10D7F0;
	TodoReturn levelIDFromCommentKey(char const*);
	TodoReturn markLevelAsDownloaded(int);
	TodoReturn markLevelAsRatedDemon(int);
	TodoReturn markLevelAsRatedStars(int);
	TodoReturn saveFetchedLevelLists(cocos2d::CCArray*);
	// TodoReturn storeUserMessageReply(int, GJUserMessage*);
	TodoReturn createAndGetLevelLists(gd::string);
	TodoReturn deleteSentFriendRequest(int);
	TodoReturn friendRequestWasRemoved(int, bool);
	TodoReturn hasDailyStateBeenLoaded(GJTimedLevelType);
	TodoReturn createAndGetCommentsFull(gd::string, int, bool);
	TodoReturn createAndGetLevelComments(gd::string, int);
	TodoReturn levelIDFromPostCommentKey(char const*);
	TodoReturn friendRequestFromAccountID(int);
	TodoReturn createAndGetAccountComments(gd::string, int);
	TodoReturn resetCommentTimersForLevelID(int, CommentKeyType) = win 0x1091B0;
	TodoReturn processOnDownloadLevelCompleted(gd::string, gd::string, bool);
	TodoReturn removeLevelDownloadedKeysFromDict(cocos2d::CCDictionary*);
	TodoReturn banUser(int);
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType) = win 0xF3220;
	TodoReturn likeItem(LikeItemType, int, bool, int);
	TodoReturn blockUser(int);
	TodoReturn rateDemon(int, int, bool);
	TodoReturn rateStars(int, int);
	TodoReturn saveLevel(GJGameLevel*);

	virtual bool init();

	PAD = win 0x8, android32 0x18;
	cocos2d::CCDictionary* m_mainLevels;
	cocos2d::CCDictionary* m_searchFilters;
	cocos2d::CCDictionary* m_onlineLevels;
	cocos2d::CCDictionary* m_unkDict;
	cocos2d::CCDictionary* m_followedCreators;
	cocos2d::CCDictionary* m_GLM21;
	cocos2d::CCDictionary* m_downloadedLevels;
	cocos2d::CCDictionary* m_likedLevels;
	cocos2d::CCDictionary* m_ratedLevels;
	cocos2d::CCDictionary* m_ratedDemons;
	cocos2d::CCDictionary* m_reportedLevels;
	cocos2d::CCDictionary* m_onlineFolders;
	cocos2d::CCDictionary* m_localLevelsFolders;
	cocos2d::CCDictionary* m_dailyLevels;
    int m_dailyTimeLeft;
    int m_dailyID;
    int m_dailyIDUnk;
    int m_weeklyTimeLeft;
    int m_weeklyID;
    int m_weeklyIDUnk;
	int m_eventTimeLeft;
	int m_eventID;
	int m_eventIDUnk;
	cocos2d::CCDictionary* m_gauntletLevels;
	gd::map<gd::string, bool> m_availableFilters;
	cocos2d::CCDictionary* m_timerDict;
	cocos2d::CCDictionary* m_knownUsers;
	cocos2d::CCDictionary* m_accountIDtoUserIDDict;
	cocos2d::CCDictionary* m_userIDtoAccountIDDict;
	cocos2d::CCDictionary* m_storedLevels;
	cocos2d::CCDictionary* m_pageInfo;
	cocos2d::CCDictionary* m_unkDict20;
	cocos2d::CCDictionary* m_savedPacks;
	cocos2d::CCDictionary* m_savedGauntlets;
	cocos2d::CCDictionary* m_downloadObjects;
	cocos2d::CCDictionary* m_unkDict24;
	cocos2d::CCDictionary* m_storedUserInfo;
	cocos2d::CCDictionary* m_friendRequests;
	cocos2d::CCDictionary* m_userMessages;
	cocos2d::CCDictionary* m_userReplies;
	gd::string m_unkStr1;
	gd::string m_unkStr2;
	LeaderboardState m_leaderboardState;
	bool m_unkEditLevelLayerOnBack;
	LevelManagerDelegate* m_levelManagerDelegate;
	LevelDownloadDelegate* m_levelDownloadDelegate;
	LevelCommentDelegate* m_levelCommentDelegate;
	CommentUploadDelegate* m_commentUploadDelegate;
	LevelUploadDelegate* m_levelUploadDelegate;
	ListUploadDelegate* m_listUploadDelegate;
	LevelUpdateDelegate* m_levelUpdateDelegate;
	LeaderboardManagerDelegate* m_leaderboardManagerDelegate;
	LevelDeleteDelegate* m_levelDeleteDelegate;
	LevelListDeleteDelegate* m_levelListDeleteDelegate;
	UserInfoDelegate* m_userInfoDelegate;
	void* m_unkDelegate;
	/*UserListDelegate* m_userListDelegate;
	FriendRequestDelegate* m_friendRequestDelegate;
	MessageListDelegate* m_messageListDelegate;
	DownloadMessageDelegate* m_downloadMessageDelegate;
	UploadMessageDelegate* m_uploadMessageDelegate;
	GJRewardDelegate* m_GJRewardDelegate;
	GJChallengeDelegate* m_GJChallengeDelegate;
	GJDailyLevelDelegate* m_GJDailyLevelDelegate;
	OnlineListDelegate* m_onlineListDelegate;
	int m_unkDownload;
	PAD = win 0x4;
	gd::string m_unkStr3;
	cocos2d::CCString* m_unkStr4;*/
}

[[link(android)]]
class GJSearchObject : cocos2d::CCNode {
	static GJSearchObject* create(SearchType) = win 0x118C50;
	static GJSearchObject* create(SearchType, gd::string) = win 0x118D40;
	static GJSearchObject* create(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int) = win 0x118E40;

	bool init(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int) = win 0x118FF0;
	~GJSearchObject();

	char const* getSearchKey(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int) = win 0x1195C0;
	TodoReturn getPageObject(int);
	TodoReturn getNextPageKey();
	TodoReturn getNextPageObject();
	TodoReturn getPrevPageObject();
	char const* getKey() = win 0x119190;

	static GJSearchObject* createFromKey(char const*) = win 0x1188A0;
	/* unverified signature */
	bool isLevelSearchObject() = win 0x1197A0;

    SearchType m_searchType;
    gd::string m_searchQuery;
    gd::string m_difficulty;
    gd::string m_length;
    int m_page;
    bool m_starFilter;
    bool m_noStarFilter;
    int m_total;
    bool m_uncompletedFilter;
    bool m_completedFilter;
    bool m_featuredFilter;
    bool m_originalFilter;
    bool m_twoPlayerFilter;
    bool m_coinsFilter;
    bool m_epicFilter;
    bool m_legendaryFilter;
    bool m_mythicFilter;
    GJDifficulty m_demonFilter;
    int m_folder;
    int m_songID;
    bool m_customSongFilter;
    bool m_songFilter;
    bool m_searchIsOverlay;
    int m_searchMode;
}

[[link(android)]]
class GJLevelList : cocos2d::CCNode {
	static GJLevelList* create(cocos2d::CCDictionary*);
	static GJLevelList* create();

	~GJLevelList();

	TodoReturn getListLevelsArray(cocos2d::CCArray*);
	TodoReturn getUnpackedDescription();

	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn totalLevels();
	TodoReturn reorderLevel(int, int);
	TodoReturn showListInfo();
	TodoReturn orderForLevel(int);
	TodoReturn addLevelToList(GJGameLevel*);
	TodoReturn completedLevels();
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn parseListLevels(gd::string);
	TodoReturn reorderLevelStep(int, bool);
	TodoReturn updateLevelsString();
	TodoReturn duplicateListLevels(GJLevelList*);
	TodoReturn removeLevelFromList(int);
	TodoReturn frameForListDifficulty(int, DifficultyIconType);

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();
	virtual bool init();
}

[[link(android)]]
class LikeItemLayer : FLAlertLayer {
	static LikeItemLayer* create(LikeItemType, int, int) = win 0x2714E0;

	bool init(LikeItemType, int, int) = win 0x271590;
	~LikeItemLayer();

	void onLike(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onDislike(cocos2d::CCObject* sender);

	TodoReturn triggerLike(bool);

	virtual void keyBackClicked();

    LikeItemType m_itemType;
    int m_itemID;
    int m_commentSourceID;
    LikeItemDelegate* m_likeDelegate;
}

[[link(android)]]
class LevelTools {
	TodoReturn posForTime(float, cocos2d::CCArray*, int, bool, int&);
	TodoReturn timeForPos(cocos2d::CCPoint, cocos2d::CCArray*, int, int, int, bool, bool, bool, bool, int) = win 0x26fba0;
	TodoReturn getAudioBPM(int);
	TodoReturn urlForAudio(int);
	TodoReturn getLevelList();
	static gd::string getAudioTitle(int) = win 0x26E860;
	TodoReturn getSongObject(int);
	TodoReturn nameForArtist(int);
	TodoReturn artistForAudio(int);
	TodoReturn fbURLForArtist(int);
	TodoReturn getAudioString(int);
	TodoReturn ngURLForArtist(int);
	TodoReturn ytURLForArtist(int);
	TodoReturn getLastTimewarp();
	TodoReturn getAudioFileName(int);
	TodoReturn sortSpeedObjects(cocos2d::CCArray*, GJBaseGameLayer*) = win 0x270fe0;
	TodoReturn valueForSpeedMod(int) = win 0x26fb50;
	TodoReturn offsetBPMForTrack(int);
	static gd::string base64DecodeString(gd::string) = win 0x270BA0;
	TodoReturn base64EncodeString(gd::string);
	TodoReturn createStarPackDict();
	TodoReturn posForTimeInternal(float, cocos2d::CCArray*, int, bool, bool, bool, int&, int) = win 0x270220;
	TodoReturn toggleDebugLogging(bool);
	TodoReturn verifyLevelIntegrity(gd::string, int);
	TodoReturn getLastGameplayRotated();
	TodoReturn getLastGameplayReversed();
	TodoReturn sortChannelOrderObjects(cocos2d::CCArray*, cocos2d::CCDictionary*, bool) = win 0x270dc0;
	TodoReturn moveTriggerObjectsToArray(cocos2d::CCArray*, cocos2d::CCDictionary*, int);
	static GJGameLevel* getLevel(int, bool) = win 0x26DDA0;
}

[[link(android)]]
class GameStatsManager : cocos2d::CCNode {
	~GameStatsManager();

	TodoReturn getItemKey(int, int);
	gd::string getLevelKey(int, bool, bool, bool) = win 0x16D350;
	gd::string getLevelKey(GJGameLevel*) = win 0x16D2E0;
	GJChallengeItem* getChallenge(int) = win 0x170BD0;
	TodoReturn getRewardKey(GJRewardType, int);
	TodoReturn getStoreItem(int);
	TodoReturn getStoreItem(int, int);
	TodoReturn getMapPackKey(int);
	TodoReturn getRewardItem(GJRewardType);
	TodoReturn getCurrencyKey(GJGameLevel*) = win 0x16f440;
	TodoReturn getStatFromKey(StatKey);
	TodoReturn getBaseCurrency(int, bool, int);
	TodoReturn getBaseDiamonds(int);
	//TodoReturn getChallengeKey(GJChallengeItem*);
	TodoReturn getStarLevelKey(GJGameLevel*) = win 0x16d4e0;
	TodoReturn getBonusDiamonds(int);
	TodoReturn getDailyLevelKey(int) = win 0x171530;
	TodoReturn getDemonLevelKey(GJGameLevel*) = win 0x16d480;
	TodoReturn getListRewardKey(GJLevelList*);
	TodoReturn getPathRewardKey(int);
	TodoReturn getSecretCoinKey(char const*);
	TodoReturn getItemUnlockState(int, UnlockType);
	TodoReturn getQueuedChallenge(int);
	TodoReturn getCompletedMapPacks();
	TodoReturn getGauntletRewardKey(int);
	TodoReturn getNextVideoAdReward();
	TodoReturn getSecretChestForItem(int, UnlockType);
	TodoReturn getItemUnlockStateLite(int, UnlockType);
	int getBaseCurrencyForLevel(GJGameLevel*) = win 0x16F560;
	TodoReturn getRewardForSecretChest(int);
	TodoReturn getRewardForSpecialChest(gd::string);
	int getCollectedCoinsForLevel(GJGameLevel*) = win 0x16d240;
	TodoReturn getSpecialChestKeyForItem(int, UnlockType);
	TodoReturn getTotalCollectedCurrency();
	TodoReturn getTotalCollectedDiamonds();
	int getAwardedCurrencyForLevel(GJGameLevel*) = win 0x16F680;
	TodoReturn getAwardedDiamondsForLevel(GJGameLevel*);
	TodoReturn getSecondaryQueuedChallenge(int);
	TodoReturn getSpecialRewardDescription(gd::string, bool);
	TodoReturn getSpecialUnlockDescription(int, UnlockType, bool);
	TodoReturn getStat(char const*) = win 0x168680;

	/* unverified signature */
	void setStatIfHigher(char const*, int);
	/* unverified signature */
	void setStarsForMapPack(int, int);
	/* unverified signature */
	void setStat(char const*, int) = win 0x168760;

	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn hasUserCoin(char const*) = win 0x16ecd0;
	static GameStatsManager* sharedState() = win 0x165df0;
	TodoReturn addStoreItem(int, int, int, int, ShopType) = win 0x167FB0;
	TodoReturn encodeDataTo(DS_Dictionary*) = win 0x17DE70;
	/* unverified signature */
	bool isSecretCoin(gd::string);
	TodoReturn purchaseItem(int) = win 0x168160;
	TodoReturn resetPreSync();
	//TodoReturn collectReward(GJRewardType, GJRewardItem*);
	TodoReturn hasSecretCoin(char const*) = win 0x16efb0;
	TodoReturn incrementStat(char const*);
	TodoReturn incrementStat(char const*, int) = win 0x1682C0;
	/* unverified signature */
	bool isItemEnabled(UnlockType, int) = win 0x173f90;
	TodoReturn storeUserCoin(char const*);
	TodoReturn awardSecretKey() = win 0x17d860;
	TodoReturn completedLevel(GJGameLevel*);
	/* unverified signature */
	bool isItemUnlocked(UnlockType, int) = win 0x173D10;
	/* unverified signature */
	bool isPathUnlocked(StatKey);
	TodoReturn resetUserCoins();
	//TodoReturn storeChallenge(int, GJChallengeItem*);
	TodoReturn claimListReward(GJLevelList*);
	TodoReturn removeChallenge(int);
	TodoReturn restorePostSync();
	TodoReturn starsForMapPack(int);
	TodoReturn storeSecretCoin(char const*);
	TodoReturn uncompleteLevel(GJGameLevel*);
	TodoReturn unlockPathChest(int);
	TodoReturn verifyUserCoins();
	TodoReturn accountIDForIcon(int, UnlockType);
	TodoReturn areRewardsLoaded();
	TodoReturn checkAchievement(char const*) = win 0x168870;
	//TodoReturn completedMapPack(GJMapPack*);
	TodoReturn createStoreItems();
	//TodoReturn preProcessReward(GJRewardItem*) = win 0x170450;
	TodoReturn preSaveGameStats();
	TodoReturn recountUserCoins(bool);
	TodoReturn setupIconCredits();
	TodoReturn storeRewardState(GJRewardType, int, int, gd::string);
	TodoReturn toggleEnableItem(UnlockType, int, bool) = win 0x174030;
	TodoReturn updateActivePath(StatKey);
	TodoReturn countSecretChests(GJRewardType);
	bool hasCompletedLevel(GJGameLevel* level) {
		return m_completedLevels->objectForKey(this->getLevelKey(level)) != nullptr;
	}
	/* unverified signature */
	bool isSecretCoinValid(gd::string);
	TodoReturn postLoadGameStats();
	TodoReturn shopTypeForItemID(int);
	TodoReturn unlockSecretChest(int) = win 0x1780B0;
	TodoReturn checkCoinsForLevel(GJGameLevel*);
	TodoReturn collectVideoReward(int);
	//TodoReturn completedChallenge(GJChallengeItem*);
	TodoReturn completedStarLevel(GJGameLevel*) = win 0x16d970;
	TodoReturn hasPendingUserCoin(char const*) = win 0x16ee40;
	TodoReturn incrementChallenge(GJChallengeType, int) = win 0x170E40;
	TodoReturn storeChallengeTime(int);
	TodoReturn unlockSpecialChest(gd::string) = win 0x177940;
	TodoReturn areChallengesLoaded();
	TodoReturn completedDailyLevel(GJGameLevel*);
	TodoReturn completedDemonLevel(GJGameLevel*) = win 0x16d880;
	TodoReturn hasCompletedMapPack(int);
	TodoReturn incrementActivePath(int) = win 0x168560;
	/* unverified signature */
	bool isPathChestUnlocked(int);
	/* unverified signature */
	bool isStoreItemUnlocked(int) = win 0x168080;
	TodoReturn recountSpecialStats();
	TodoReturn resetChallengeTimer();
	TodoReturn trySelectActivePath();
	TodoReturn unlockGauntletChest(int);
	TodoReturn checkCoinAchievement(GJGameLevel*);
	TodoReturn hasClaimedListReward(GJLevelList*);
	TodoReturn shouldAwardSecretKey();
	TodoReturn storePendingUserCoin(char const*);
	//TodoReturn storeQueuedChallenge(int, GJChallengeItem*);
	TodoReturn usernameForAccountID(int) = win 0x15c8b0;
	TodoReturn awardCurrencyForLevel(GJGameLevel*) = win 0x16F850;
	TodoReturn awardDiamondsForLevel(GJGameLevel*) = win 0x16FD70;
	//TodoReturn hasCompletedChallenge(GJChallengeItem*);
	TodoReturn hasCompletedMainLevel(int);
	TodoReturn hasCompletedStarLevel(GJGameLevel*) = win 0x16d690;
	/* unverified signature */
	bool isSecretChestUnlocked(int);
	TodoReturn keyCostForSecretChest(int) = win 0x1781C0;
	TodoReturn processChallengeQueue(int);
	TodoReturn removeQueuedChallenge(int);
	TodoReturn createSecretChestItems();
	TodoReturn hasCompletedDailyLevel(int) = win 0x1715b0;
	TodoReturn hasCompletedDemonLevel(GJGameLevel*);
	TodoReturn hasRewardBeenCollected(GJRewardType, int);
	/* unverified signature */
	bool isSpecialChestUnlocked(gd::string) = win 0x177860;
	TodoReturn createSpecialChestItems();
	TodoReturn hasCompletedOnlineLevel(int);
	/* unverified signature */
	bool isGauntletChestUnlocked(int);
	//TodoReturn registerRewardsFromItem(GJRewardItem*) = win 0x17D700;
	TodoReturn createSecretChestRewards();
	TodoReturn countUnlockedSecretChests(GJRewardType);
	TodoReturn hasCompletedGauntletLevel(int);
	TodoReturn generateItemUnlockableData();
	TodoReturn addSimpleSpecialChestReward(gd::string, UnlockType, int, bool);
	TodoReturn addSpecialRewardDescription(gd::string, gd::string);
	/* unverified signature */
	bool isSpecialChestLiteUnlockable(gd::string);
	TodoReturn removeErrorFromSpecialChests();
	TodoReturn resetSpecialStatAchievements();
	//TodoReturn storeSecondaryQueuedChallenge(int, GJChallengeItem*);
	TodoReturn markLevelAsCompletedAndClaimed(GJGameLevel*);
	TodoReturn removeQueuedSecondaryChallenge(int);
	TodoReturn logCoins();
	TodoReturn tempClear();

	virtual bool init();

	// non-windows pads not tested on 2.2
	PAD = win 0x18;
	PAD = mac 0x50, win 0x24, android32 0x24;
	cocos2d::CCDictionary* m_dailyChests;
	cocos2d::CCDictionary* m_worldAdvertChests;
	cocos2d::CCDictionary* m_activeChallenges;
	cocos2d::CCDictionary* m_upcomingChallenges;
	PAD = mac 0x18, win 0xc, android32 0xc;
	cocos2d::CCDictionary* m_playerStats;
	PAD = mac 0x50, win 0x10, android32 0x34;
	cocos2d::CCDictionary* m_completedLevels;
	cocos2d::CCDictionary* m_verifiedUserCoins;
	cocos2d::CCDictionary* m_pendingUserCoins;
	cocos2d::CCDictionary* m_purchasedItems;
	cocos2d::CCDictionary* m_onlineCurrencyScores;
	cocos2d::CCDictionary* m_mainCurrencyScores;
	cocos2d::CCDictionary* m_gauntletCurrencyScores;
	cocos2d::CCDictionary* m_timelyCurrencyScores;
	cocos2d::CCDictionary* m_onlineStars;
	cocos2d::CCDictionary* m_timelyStars;
	cocos2d::CCDictionary* m_gauntletDiamondScores;
	cocos2d::CCDictionary* m_timelyDiamondScores;
	cocos2d::CCDictionary* m_unusedCurrencyAwardDict;
	cocos2d::CCDictionary* m_challengeDiamonds;
	cocos2d::CCDictionary* m_completedMappacks;
	cocos2d::CCDictionary* m_completedLists;
	cocos2d::CCDictionary* m_weeklyChest;
	cocos2d::CCDictionary* m_treasureRoomChests;
	geode::SeedValueSRV m_bonusKey;
	cocos2d::CCDictionary* m_miscChests;
	cocos2d::CCDictionary* m_GS28;
	  PAD = win 0x1C;
	int m_GS26;
}

[[link(android)]]
class LevelSearchLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DemonFilterDelegate {
	static LevelSearchLayer* create(int) = win 0x25C4E0;

	bool init(int) = win 0x25C580;
	~LevelSearchLayer();

	TodoReturn getDiffKey(int);
	TodoReturn getTimeKey(int);
	TodoReturn getLevelLenKey();
	GJSearchObject* getSearchObject(SearchType, gd::string) = win 0x25F210;
	TodoReturn getSearchDiffKey();

	void onFollowed(cocos2d::CCObject* sender);
	void onTrending(cocos2d::CCObject* sender);
	void onMostLikes(cocos2d::CCObject* sender);
	void onStarAward(cocos2d::CCObject* sender);
	void onSuggested(cocos2d::CCObject* sender);
	void onMostRecent(cocos2d::CCObject* sender);
	void onSearchMode(cocos2d::CCObject* sender);
	void onSearchUser(cocos2d::CCObject* sender);
	void onLatestStars(cocos2d::CCObject* sender);
	void onMoreOptions(cocos2d::CCObject* sender);
	void onSpecialDemon(cocos2d::CCObject* sender);
	void onMostDownloaded(cocos2d::CCObject* sender);
	void onClearFreeSearch(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onMagic(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	void onFriends(cocos2d::CCObject* sender);

	TodoReturn toggleStar(cocos2d::CCObject*);
	TodoReturn toggleTime(cocos2d::CCObject*);
	TodoReturn clearFilters();
	TodoReturn toggleTimeNum(int, bool);
	TodoReturn toggleDifficulty(cocos2d::CCObject*);
	TodoReturn updateSearchLabel(char const*);
	TodoReturn confirmClearFilters(cocos2d::CCObject*);
	TodoReturn toggleDifficultyNum(int, bool);
	TodoReturn scene(int);
	TodoReturn checkDiff(int);
	TodoReturn checkTime(int);

	virtual void keyBackClicked();
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn demonFilterSelectClosed(int);

	int m_type;
	CCTextInputNode* m_searchInput;
	cocos2d::CCSprite* m_starsSprite;
	cocos2d::CCArray* m_difficultySprites;
	cocos2d::CCArray* m_lengthSprites;
	cocos2d::CCDictionary* m_difficultyDict;
	cocos2d::CCSprite* m_lastDifficultySprite;
	CCMenuItemSpriteExtra* m_demonTypeButton;
}

[[link(android)]]
class DemonFilterDelegate {
	virtual void demonFilterSelectClosed(int) {}
}

[[link(android)]]
class GJComment : cocos2d::CCNode {
	static GJComment* create(cocos2d::CCDictionary*);
	static GJComment* create();

	~GJComment();

	virtual bool init();

	gd::string m_commentString;
	gd::string m_userName;
	int m_commentID;
	int m_userID;
	int m_likeCount;
	int m_levelID;
	bool m_isSpam;
	int m_accountID;
	gd::string m_uploadDate;
	bool m_commentDeleted;
	int m_percentage;
	int m_modBadge;
	cocos2d::ccColor3B m_color;
	bool m_hasLevelID;
	PAD = win 0x4, android32 0x4;
	GJUserScore* m_userScore;
}

[[link(android)]]
class CommentCell : TableViewCell, LikeItemDelegate, FLAlertLayerProtocol {
	~CommentCell();

	TodoReturn onUndelete();
	void onGoToLevel(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void onConfirmDelete(cocos2d::CCObject* sender) = win 0x85BC0;
	void onLike(cocos2d::CCObject* sender) = win 0x85A10;
	TodoReturn onDelete() = win 0x85c60;
	void onUnhide(cocos2d::CCObject* sender) = win 0x85D10;

	void updateBGColor(int) = win 0x85990;
	TodoReturn incrementLikes();
	void loadFromComment(GJComment*) = win 0x83E20;
	TodoReturn incrementDislikes();
	TodoReturn updateLabelValues();
	CommentCell(char const*, float, float);

	virtual bool init();
	virtual void draw();
	virtual TodoReturn likedItem(LikeItemType, int, bool) = win 0x85AF0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = win 0x85CD0;
    
	cocos2d::CCSprite* m_iconSprite;
	cocos2d::CCLabelBMFont* m_likeLabel;
	GJComment* m_comment;
	bool m_accountComment;
}

[[link(android)]]
class ShaderGameObject : EffectGameObject {
	static ShaderGameObject* create(char const*);

	bool init(char const*);
	~ShaderGameObject();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual TodoReturn customSetup();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class KeyframeGameObject : EffectGameObject {
	static KeyframeGameObject* create();

	~KeyframeGameObject();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	// TodoReturn updateShadowObjects(GJBaseGameLayer*, EditorUI*);

	virtual bool init();
	virtual void setOpacity(unsigned char);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class ArtTriggerGameObject : EffectGameObject {
	static ArtTriggerGameObject* create(char const*);

	bool init(char const*);
	~ArtTriggerGameObject();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class EndTriggerGameObject : EffectGameObject {
	static EndTriggerGameObject* create();

	~EndTriggerGameObject();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual bool init();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class ForceBlockGameObject : EffectGameObject {
	static ForceBlockGameObject* create(char const*);

	bool init(char const*);
	~ForceBlockGameObject();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn calculateForceToTarget(GameObject*);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class SFXTriggerGameObject : EffectGameObject {
	static SFXTriggerGameObject* create(char const*);

	bool init(char const*);
	~SFXTriggerGameObject();

	TodoReturn getSFXRefID();
	TodoReturn getUniqueSFXID();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class UISettingsGameObject : EffectGameObject {
	static UISettingsGameObject* create();

	~UISettingsGameObject();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual bool init();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class ItemTriggerGameObject : EffectGameObject {
	static ItemTriggerGameObject* create(char const*);

	bool init(char const*);
	~ItemTriggerGameObject();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual TodoReturn customSetup();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class RandTriggerGameObject : ChanceTriggerGameObject {
	static RandTriggerGameObject* create();

	~RandTriggerGameObject();

	TodoReturn getTotalChance();
	TodoReturn getRandomGroupID();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual bool init();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class SongTriggerGameObject : SFXTriggerGameObject {
	static SongTriggerGameObject* create(char const*);

	bool init(char const*);
	~SongTriggerGameObject();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class CountTriggerGameObject : EffectGameObject {
	static CountTriggerGameObject* create(char const*);

	bool init(char const*);
	~CountTriggerGameObject();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class SpawnTriggerGameObject : EffectGameObject {
	static SpawnTriggerGameObject* create();

	~SpawnTriggerGameObject();

	TodoReturn changeRemap(int, int, bool);
	TodoReturn removeRemap(int, int);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn updateRemapKeys(gd::vector<int> const&);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn addRemap(int, int);

	virtual bool init();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class TimerTriggerGameObject : EffectGameObject {
	static TimerTriggerGameObject* create(char const*);

	bool init(char const*);
	~TimerTriggerGameObject();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class CameraTriggerGameObject : EffectGameObject {
	static CameraTriggerGameObject* create(char const*);

	bool init(char const*);
	~CameraTriggerGameObject();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x3abfb0;
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class ChanceTriggerGameObject : EffectGameObject {
	bool init(char const*);
	~ChanceTriggerGameObject();

	TodoReturn editChanceObject(int, int);
	TodoReturn revertChanceRemap();
	TodoReturn remapChanceObjects(gd::unordered_map<int, int> const*);
}

[[link(android)]]
class ObjectControlGameObject : EffectGameObject {
	static ObjectControlGameObject* create();

	~ObjectControlGameObject();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual bool init();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class PlayerControlGameObject : EffectGameObject {
	static PlayerControlGameObject* create();

	~PlayerControlGameObject();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual bool init();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class SpawnParticleGameObject : EffectGameObject {
	static SpawnParticleGameObject* create();

	~SpawnParticleGameObject();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual bool init();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class AudioLineGuideGameObject : EffectGameObject {
	static AudioLineGuideGameObject* create();

	~AudioLineGuideGameObject();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual bool init();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class RotateGameplayGameObject : EffectGameObject {
	static RotateGameplayGameObject* create();

	~RotateGameplayGameObject();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn updateGameplayRotation();

	virtual bool init();
	virtual TodoReturn updateStartValues();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class TriggerControlGameObject : EffectGameObject {
	static TriggerControlGameObject* create(char const*);

	bool init(char const*);
	~TriggerControlGameObject();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn updateTriggerControlFrame();

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class SequenceTriggerGameObject : ChanceTriggerGameObject {
	static SequenceTriggerGameObject* create();

	~SequenceTriggerGameObject();

	TodoReturn deleteTarget(int);
	TodoReturn reorderTarget(int, bool);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn updateSequenceTotalCount();
	TodoReturn addCount(int, int);
	TodoReturn addTarget(int, int);

	virtual bool init();
	virtual TodoReturn resetObject();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class TransformTriggerGameObject : EffectGameObject {
	static TransformTriggerGameObject* create(char const*);

	bool init(char const*);
	~TransformTriggerGameObject();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class AdvancedFollowTriggerObject : EffectGameObject {
	static AdvancedFollowTriggerObject* create(char const*);

	bool init(char const*);
	~AdvancedFollowTriggerObject();

	TodoReturn getAdvancedFollowID();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class EventLinkTrigger : EffectGameObject {
	static EventLinkTrigger* create();

	~EventLinkTrigger();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual bool init();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class EnterEffectObject : EffectGameObject {
	static EnterEffectObject* create(char const*);

	bool init(char const*);
	~EnterEffectObject();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn resetEnterAnimValues();

	virtual TodoReturn customSetup();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class GameOptionsTrigger : EffectGameObject {
	static GameOptionsTrigger* create(char const*);

	bool init(char const*);
	~GameOptionsTrigger();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class EnhancedTriggerObject : EffectGameObject {
	static EnhancedTriggerObject* create(char const*);

	bool init(char const*);
	~EnhancedTriggerObject();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class GradientTriggerObject : EffectGameObject {
	static GradientTriggerObject* create();

	~GradientTriggerObject();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual bool init();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class KeyframeAnimTriggerObject : EffectGameObject {
	static KeyframeAnimTriggerObject* create();

	~KeyframeAnimTriggerObject();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual bool init();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class DashRingObject : RingObject {
	static DashRingObject* create(char const*);

	bool init(char const*);
	~DashRingObject();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}

[[link(android)]]
class LevelSettingsObject : cocos2d::CCNode {
	static LevelSettingsObject* create();

	~LevelSettingsObject();

	gd::string getSaveString();

	static LevelSettingsObject* objectFromDict(cocos2d::CCDictionary*);
	static LevelSettingsObject* objectFromString(gd::string const&);
	bool shouldUseYSection();
	void setupColorsFromLegacyMode(cocos2d::CCDictionary*);

	virtual bool init();

	GJEffectManager* m_effectManager;
    // property kA2
    int m_startMode;
	// property kA4
    Speed m_startSpeed;
	// property kA3
    bool m_startMini;
	// property kA8
    bool m_startDual;
	// property kA28
	bool m_propertykA28;
	// property kA29
	bool m_propertykA29;
	// property kA10
    bool m_twoPlayerMode;
	// property kA22
	bool m_platformerMode;
	// property kA13
    float m_songOffset;
	// property kA15
    bool m_fadeIn;
	// property kA16
    bool m_fadeOut;
	// property kA6
    int m_backgroundIndex;
	// property kA7
    int m_groundIndex;
	// property kA18
    int m_fontIndex;
	// property kA25
	int m_middleGroundIndex;
	// property kA9
    bool m_startsWithStartPos;
	// property kA11
    bool m_isFlipped;
	// property kA20
	bool m_propertykA20;
	// property kA21
	bool m_propertykA21;
	// property kA19
	int m_propertykA19;
	// property kA26
	int m_propertykA26;

    GJGameLevel* m_level;
	// property kA14
    gd::string m_guidelineString;

    int m_defaultSongID;
	// property kS39
    int m_colorPage;
	// property kA17
    int m_groundLineIndex;
	// property kA23
	bool m_propertykA23;
	// property kA24
	bool m_propertykA24;
	// property kA43
	bool m_propertykA43;
	// property kA44
	int m_propertykA44;
	// property kA35
	bool m_propertykA35;
	// property kA36
	int m_propertykA36;
	// property kA27
	bool m_propertykA27;
	// property kA31
	bool m_propertykA31;
	// property kA32
	bool m_propertykA32;	
	// property kA33
	bool m_propertykA33;
	// property kA34
	bool m_propertykA34;
	// property kA37
	bool m_propertykA37;
	// property kA38
	bool m_propertykA38;
	// property kA39
	bool m_propertykA39;
	// property kA40
	bool m_propertykA40;
	// property kA41
	bool m_propertykA41;
	// property kA42
	bool m_propertykA42;
}

[[link(android)]]
class TeleportPortalObject : RingObject {
	static TeleportPortalObject* create(char const*, bool) = win 0x3a0e50;

	bool init(char const*, bool);
	~TeleportPortalObject();

	TodoReturn getTeleportXOff(cocos2d::CCNode*);

	/* unverified signature */
	void setPositionOverride(cocos2d::CCPoint);
	/* unverified signature */
	void setStartPosOverride(cocos2d::CCPoint);

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setRotation(float);
	virtual void setStartPos(cocos2d::CCPoint);
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
	virtual TodoReturn addToGroup(int);
	virtual TodoReturn removeFromGroup(int);
	virtual void setRotation2(float);
	virtual TodoReturn addToGroup2(int);
	virtual TodoReturn removeFromGroup2(int);

	void* m_unknown;
    TeleportPortalObject* m_orangePortal;
    bool m_isYellowPortal;
    float m_teleportYOffset;
	// property 55
    bool m_teleportEase;
	// property 345
	bool m_staticForceEnabled;
	// property 346
	int m_staticForce;
	// property 347
	bool m_redirectForceEnabled;
	// property 350
	float m_redirectForceMod;
	// property 348
	float m_redirectForceMin;
	// property 349
	float m_redirectForceMax;
	// property 351
	bool m_saveOffset;
	// property 352
	bool m_ignoreX;
	// property 353
	bool m_ignoreY;
	// property 354
	int m_gravityMode;
	// property 443
	bool m_property443;
	// property 464
	bool m_property464;
	// property 510
	bool m_property510;
	// property 591
	bool m_property591;
}

[[link(android)]]
class AdvancedFollowEditObject : AdvancedFollowTriggerObject {
	static AdvancedFollowEditObject* create(char const*);

	bool init(char const*);
	~AdvancedFollowEditObject();

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	virtual TodoReturn getSaveString(GJBaseGameLayer*);
}


[[link(android)]]
class LevelEditorLayer : GJBaseGameLayer, LevelSettingsDelegate {
	static LevelEditorLayer* create(GJGameLevel*, bool);

	bool init(GJGameLevel*, bool) = win 0x2349d0;
	~LevelEditorLayer();

	// TodoReturn getGridPos(cocos2d::CCPoint);
	// TodoReturn getSongIDs(bool&);
	// TodoReturn getAllObjects();
	// TodoReturn getObjectRect(GameObject*, bool, bool);
	// TodoReturn getLastObjectX();
	// TodoReturn getLevelString();
	// TodoReturn getLockedLayers();
	// TodoReturn getSectionCount();
	// TodoReturn getTriggerGroup(int);
	// TodoReturn getNextFreeSFXID(cocos2d::CCArray*);
	// TodoReturn getNextFreeItemID(cocos2d::CCArray*);
	// TodoReturn getRelativeOffset(GameObject*);
	// TodoReturn getNextFreeBlockID(cocos2d::CCArray*);
	// TodoReturn getNextFreeGroupID(cocos2d::CCArray*);
	// TodoReturn getDelayedSpawnNode();
	// TodoReturn getNextColorChannel();
	// TodoReturn getSelectedEffectPos();
	// TodoReturn getNextFreeGradientID(cocos2d::CCArray*);
	// TodoReturn getNextFreeSFXGroupID(cocos2d::CCArray*);
	// TodoReturn getNextFreeEditorLayer(cocos2d::CCArray*);
	// TodoReturn getSavedEditorPosition(int);
	// TodoReturn getSelectedEditorOrder();
	// TodoReturn getNextFreeAreaEffectID(cocos2d::CCArray*);
	// TodoReturn getNextFreeEnterChannel(cocos2d::CCArray*);
	// TodoReturn getNextFreeOrderChannel(cocos2d::CCArray*);
	// TodoReturn getSavedEditorPositions();
	// TodoReturn getSelectedOrderChannel();
	// TodoReturn getSFXIDs();

	// TodoReturn onPlaytest();
	// TodoReturn onStopPlaytest();
	// TodoReturn onPausePlaytest();
	// TodoReturn onResumePlaytest();

	void addSpecial(GameObject*);
	// TodoReturn toggleGrid(bool);
	// TodoReturn validGroup(GameObject*, bool);
	// TodoReturn objectMoved(GameObject*);
	// TodoReturn shouldBlend(int);
	GameObject* createObject(int, cocos2d::CCPoint, bool);
	void handleAction(bool, cocos2d::CCArray*);
	// TodoReturn removeObject(GameObject*, bool);
	// TodoReturn stopPlayback();
	// TodoReturn toggleGround(bool);
	// TodoReturn updateEditor(float);
	void addToRedoList(UndoObject*);
	// TodoReturn addTouchPoint(cocos2d::CCPoint) = win 0x24c0a0;
	void addToUndoList(UndoObject*, bool);
	// TodoReturn canPasteState();
	// /* unverified signature */
	// bool isLayerLocked(int);
	// TodoReturn objectsInRect(cocos2d::CCRect, bool);
	void removeSpecial(GameObject*);
	// TodoReturn resetPlayback();
	// TodoReturn updateOptions();
	// TodoReturn addPlayerPoint(cocos2d::CCPoint);
	// TodoReturn findGameObject(int);
	// TodoReturn recreateGroups();
	// TodoReturn redoLastAction();
	// TodoReturn refreshSpecial(GameObject*);
	// TodoReturn runColorEffect(EffectGameObject*, int, float, float, bool);
	// TodoReturn undoLastAction();
	// TodoReturn addDelayedSpawn(EffectGameObject*, float);
	// TodoReturn addPlayer2Point(cocos2d::CCPoint, bool);
	// TodoReturn applyGroupState(GameObject*, GameObject*);
	// TodoReturn copyObjectState(GameObject*);
	// TodoReturn dirtifyTriggers();
	// TodoReturn pasteColorState(GameObject*, cocos2d::CCArray*);
	// TodoReturn pasteGroupState(GameObject*, cocos2d::CCArray*);
	// TodoReturn unlockAllLayers();
	// TodoReturn updateDebugDraw();
	// TodoReturn updateGridLayer();
	void updateLevelFont(int);
	// TodoReturn addExclusionList(cocos2d::CCArray*, cocos2d::CCDictionary*);
	// TodoReturn addObjectsInRect(cocos2d::CCRect, bool, cocos2d::CCArray*, cocos2d::CCArray*);
	// TodoReturn addObjectToGroup(GameObject*, int);
	// TodoReturn clearTouchPoints();
	// TodoReturn objectAtPosition(cocos2d::CCPoint);
	// TodoReturn removeAllObjects();
	// TodoReturn toggleBackground(bool);
	// TodoReturn updateEditorMode();
	// TodoReturn clearPlayerPoints();
	// TodoReturn copyParticleState(ParticleGameObject*);
	// TodoReturn objectsAtPosition(cocos2d::CCPoint);
	// TodoReturn resetObjectVector();
	// TodoReturn spawnGroupPreview(int, float, float, float, float, float, bool, bool);
	// TodoReturn timeObjectChanged();
	// TodoReturn updateBlendValues();
	// TodoReturn updateGameObjects();
	// TodoReturn updateObjectLabel(GameObject*);
	// TodoReturn updatePreviewAnim();
	// TodoReturn findStartPosObject();
	// TodoReturn pasteParticleState(ParticleGameObject*, cocos2d::CCArray*);
	// TodoReturn resetMovingObjects();
	// TodoReturn resetToggledGroups();
	// TodoReturn saveEditorPosition(cocos2d::CCPoint&, int);
	// TodoReturn toggleGroupPreview(int, bool);
	// TodoReturn updateObjectColors(cocos2d::CCArray*);
	// TodoReturn addObjectFromVector(gd::vector<gd::string>&, gd::vector<void*>&);
	// TodoReturn applyAttributeState(GameObject*, GameObject*);
	// TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool);
	// TodoReturn pasteAttributeState(GameObject*, cocos2d::CCArray*);
	// TodoReturn stopTriggersInGroup(int, float);
	// TodoReturn updateToggledGroups();
	// TodoReturn addObjectsAtPosition(cocos2d::CCPoint, cocos2d::CCArray*, cocos2d::CCArray*);
	// TodoReturn breakApartTextObject(TextGameObject*);
	// TodoReturn reverseObjectChanged(EffectGameObject*);
	// TodoReturn triggerFollowCommand(EffectGameObject*);
	// TodoReturn triggerRotateCommand(EffectGameObject*);
	// TodoReturn tryUpdateSpeedObject(EffectGameObject*, bool);
	// TodoReturn typeExistsAtPosition(int, cocos2d::CCPoint, bool, bool, float);
	// TodoReturn activateTriggerEffect(EffectGameObject*, float, float, float, bool);
	// TodoReturn sortBatchnodeChildren(float);
	// TodoReturn toggleLockActiveLayer();
	// TodoReturn transferDefaultColors(GJEffectManager*, GJEffectManager*);
	// TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*);
	// TodoReturn updateGridLayerParent();
	// TodoReturn updateKeyframeObjects();
	// TodoReturn updatePreviewParticle(ParticleGameObject*);
	// TodoReturn createObjectsFromSetup(gd::string&);
	// TodoReturn removeAllObjectsOfType(int);
	// TodoReturn resetDelayedSpawnNodes();
	// TodoReturn updatePreviewParticles();
	// TodoReturn addPlayerCollisionBlock();
	void createObjectsFromString(gd::string const&, bool, bool);
	// TodoReturn quickUpdateAllPositions();
	// TodoReturn resetEffectTriggerOptim(GameObject*, cocos2d::CCArray*);
	// TodoReturn fastUpdateDisabledGroups();
	// TodoReturn forceShowSelectedObjects(bool);
	// TodoReturn fullUpdateDisabledGroups();
	// TodoReturn processLoadedMoveActions();
	// TodoReturn resetUnusedColorChannels();
	// TodoReturn updateKeyframeVisibility(bool);
	// TodoReturn duplicateKeyframeAnimation(int);
	// TodoReturn removePlayerCollisionBlock();
	// TodoReturn rotationForSlopeNearObject(GameObject*);
	// TodoReturn triggerPlayerFollowCommand(EffectGameObject*);
	// TodoReturn resetToggledGroupsAndObjects();
	// TodoReturn reverseKeyframeAnimationOrder(int);
	// TodoReturn updateAnimateOnTriggerObjects(bool);
	static cocos2d::CCScene* scene(GJGameLevel*, bool);
	// TodoReturn hasAction(bool);
	// TodoReturn updateArt(float);

	virtual void draw();
	virtual TodoReturn postUpdate(float) = win 0x242560;
	virtual TodoReturn updateVisibility(float);
	virtual TodoReturn playerTookDamage(PlayerObject*);
	virtual TodoReturn updateColor(cocos2d::_ccColor3B&, float, int, bool, float, cocos2d::_ccHSVValue&, int, bool, EffectGameObject*, int, int);
	virtual TodoReturn addToGroup(GameObject*, int, bool);
	virtual TodoReturn removeFromGroup(GameObject*, int);
	virtual TodoReturn updateObjectSection(GameObject*);
	virtual TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*);
	virtual TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, int);
	virtual TodoReturn posForTime(float);
	virtual TodoReturn resetSPTriggered();
	virtual TodoReturn didRotateGameplay() = win 0x241020;
	virtual TodoReturn manualUpdateObjectColors(GameObject*);
	virtual TodoReturn activatedAudioTrigger(SFXTriggerGameObject*);
	virtual TodoReturn checkpointActivated(CheckpointGameObject*);
	virtual TodoReturn addKeyframe(KeyframeGameObject*);
	virtual void levelSettingsUpdated();

	PAD = android32 0x64;

	geode::SeedValueRSV m_coinCount;

	PAD = android32 0x38;

	cocos2d::CCArray* m_undoObjects;
    cocos2d::CCArray* m_redoObjects;
}



[[link(android)]]
class LevelSettingsDelegate {
	virtual TodoReturn levelSettingsUpdated();
}


[[link(android)]]
class ColorSelectDelegate {
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*);
}

[[link(android)]]
class GJRotationControlDelegate {
	virtual TodoReturn angleChanged(float);
	virtual TodoReturn angleChangeBegin();
	virtual TodoReturn angleChangeEnded();
}

[[link(android)]]
class GJScaleControlDelegate {
	virtual TodoReturn scaleXChanged(float);
	virtual TodoReturn scaleYChanged(float);
	virtual TodoReturn scaleXYChanged(float, float);
	virtual TodoReturn scaleChangeBegin();
	virtual TodoReturn scaleChangeEnded();
	virtual TodoReturn updateScaleControl();
	virtual TodoReturn anchorPointMoved(cocos2d::CCPoint);
}


[[link(android)]]
class GJTransformControlDelegate {
	virtual TodoReturn transformScaleXChanged(float);
	virtual TodoReturn transformScaleYChanged(float);
	virtual TodoReturn transformScaleXYChanged(float, float);
	virtual TodoReturn transformRotationXChanged(float);
	virtual TodoReturn transformRotationYChanged(float);
	virtual TodoReturn transformRotationChanged(float);
	virtual TodoReturn transformResetRotation();
	virtual TodoReturn transformRestoreRotation();
	virtual TodoReturn transformSkewXChanged(float);
	virtual TodoReturn transformSkewYChanged(float);
	virtual TodoReturn transformChangeBegin();
	virtual TodoReturn transformChangeEnded();
	virtual TodoReturn updateTransformControl();
	virtual TodoReturn anchorPointMoved(cocos2d::CCPoint);
	virtual TodoReturn getTransformNode();
	virtual TodoReturn getUI();
}


[[link(android)]]
class MusicDownloadDelegate {
	virtual TodoReturn loadSongInfoFinished(SongInfoObject*);
	virtual TodoReturn loadSongInfoFailed(int, GJSongError);
	virtual TodoReturn downloadSongFinished(int);
	virtual TodoReturn downloadSongFailed(int, GJSongError);
	virtual TodoReturn songStateChanged();
	virtual TodoReturn downloadSFXFinished(int);
	virtual TodoReturn downloadSFXFailed(int, GJSongError);
	virtual TodoReturn musicActionFinished(GJMusicAction);
	virtual TodoReturn musicActionFailed(GJMusicAction);
}


[[link(android)]]
class EditorUI : cocos2d::CCLayer, FLAlertLayerProtocol, ColorSelectDelegate, GJRotationControlDelegate, GJScaleControlDelegate, GJTransformControlDelegate, MusicDownloadDelegate, SetIDPopupDelegate {
	static EditorUI* create(LevelEditorLayer*);

	bool init(LevelEditorLayer*) = win 0xa36f0;
	~EditorUI();

	// TodoReturn getModeBtn(char const*, int);
	// TodoReturn getNeighbor(int, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*);
	// TodoReturn getCreateBtn(int, int);
	// TodoReturn getGroupInfo(GameObject*, cocos2d::CCArray*, int&, int&, int&);
	// TodoReturn getSnapAngle(GameObject*, cocos2d::CCArray*);
	// TodoReturn getTouchPoint(cocos2d::CCTouch*, cocos2d::CCEvent*);
	// TodoReturn getGroupCenter(cocos2d::CCArray*, bool);
	// TodoReturn getCycledObject(cocos2d::CCArray*, bool);
	// TodoReturn getSimpleButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);
	// TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
	// TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	// TodoReturn getSpriteButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	// TodoReturn getSmartNeighbor(SmartGameObject*, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*);
	// TodoReturn getGridSnappedPos(cocos2d::CCPoint);
	// TodoReturn getRandomStartKey(int);
	// TodoReturn getRelativeOffset(GameObject*);
	// TodoReturn getSmartObjectKey(int, GJSmartDirection);
	// TodoReturn getTransformState();
	// TodoReturn getLimitedPosition(cocos2d::CCPoint);
	TodoReturn getSelectedObjects();
	// TodoReturn getEditColorTargets(ColorAction*&, ColorAction*&, EffectGameObject*&);
	// TodoReturn getCreateMenuItemButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	// TodoReturn getXMin(int) = win 0xd7470;
	// TodoReturn getButton(char const*, int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);

	void onPlayback(cocos2d::CCObject* sender) = win 0xc9130;
	void onPlaytest(cocos2d::CCObject* sender) = mac 0x10160, win 0xc9480;
	void onSettings(cocos2d::CCObject* sender) = win 0xa5570;
	void onCopyState(cocos2d::CCObject* sender) = win 0xcb0c0;
	void onDeleteAll(cocos2d::CCObject* sender);
	void onDuplicate(cocos2d::CCObject* sender);
	void onEditColor(cocos2d::CCObject* sender) = win 0xd3370;
	void onGoToLayer(cocos2d::CCObject* sender) = win 0xcb200;
	// void onGroupDown(cocos2d::CCObject* sender);
	// void onLockLayer(cocos2d::CCObject* sender);
	// void onDeleteInfo(cocos2d::CCObject* sender);
	// void onFindObject(cocos2d::CCObject* sender);
	void onPasteColor(cocos2d::CCObject* sender);
	void onPasteState(cocos2d::CCObject* sender);
	// void onColorFilter(cocos2d::CCObject* sender);
	void onDeselectAll(cocos2d::CCObject* sender);
	// void onGroupSticky(cocos2d::CCObject* sender);
	// TodoReturn onToggleGuide(EffectGameObject*);
	// void onCreateButton(cocos2d::CCObject* sender);
	// TodoReturn onCreateObject(int);
	void onPasteInPlace(cocos2d::CCObject* sender);
	void onStopPlaytest(cocos2d::CCObject* sender) = win 0xc95f0;
	// void onGoToBaseLayer(cocos2d::CCObject* sender);
	// void onGroupIDFilter(cocos2d::CCObject* sender);
	void onNewCustomItem(cocos2d::CCObject* sender) = win 0xa7650;
	// void onUngroupSticky(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onDeleteStartPos(cocos2d::CCObject* sender);
	// void onSelectBuildTab(cocos2d::CCObject* sender);
	// TodoReturn onTargetIDChange(int);
	// TodoReturn onAssignNewGroupID();
	void onDeleteCustomItem(cocos2d::CCObject* sender);
	void onDeleteSelectedType(cocos2d::CCObject* sender);
	// void onResetSpecialFilter(cocos2d::CCObject* sender);
	// void onUpdateDeleteFilter(cocos2d::CCObject* sender);
	// TodoReturn onToggleSelectedOrder(EffectGameObject*);
	void onCopy(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onPause(cocos2d::CCObject* sender) = win 0xa55c0;
	bool onCreate();
	void onDelete(cocos2d::CCObject* sender);
	// void onGroupUp(cocos2d::CCObject* sender);

	// TodoReturn createGlow();
	// TodoReturn createLoop();
	// TodoReturn editObject(cocos2d::CCObject*);
	void moveObject(GameObject*, cocos2d::CCPoint);
	// TodoReturn shouldSnap(GameObject*);
	// TodoReturn toggleMode(cocos2d::CCObject*);
	// TodoReturn toggleSnap(cocos2d::CCObject*);
	// TodoReturn updateZoom(float) = win 0xc97c0;
	// TodoReturn applyOffset(GameObject*);
	// TodoReturn copyObjects(cocos2d::CCArray*, bool, bool);
	void deselectAll();
	// TodoReturn editObject2(cocos2d::CCObject*);
	// TodoReturn editObject3(cocos2d::CCObject*);
	// TodoReturn toggleSwipe(cocos2d::CCObject*);
	// TodoReturn alignObjects(cocos2d::CCArray*, bool);
	// TodoReturn createExtras(cocos2d::CCArray*);
	GameObject* createObject(int, cocos2d::CCPoint);
	// TodoReturn createPrefab(GJSmartTemplate*, gd::string, int);
	TodoReturn deleteObject(GameObject*, bool);
	// TodoReturn enableButton(CreateMenuItem*);
	// TodoReturn flipObjectsX(cocos2d::CCArray*);
	// TodoReturn flipObjectsY(cocos2d::CCArray*);
	// TodoReturn offsetForKey(int);
	// TodoReturn pasteObjects(gd::string, bool);
	// TodoReturn removeOffset(GameObject*);
	void scaleObjects(cocos2d::CCArray*, float, float, cocos2d::CCPoint, ObjectScaleType) = win 0xd5910;
	void selectObject(GameObject*, bool);
	// TodoReturn showMaxError();
	// TodoReturn toggleLockUI(bool);
	// TodoReturn updateSlider();
	// TodoReturn disableButton(CreateMenuItem*);
	// TodoReturn doCopyObjects(bool);
	// TodoReturn edgeForObject(int, int);
	// TodoReturn moveGamelayer(cocos2d::CCPoint);
	void rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint);
	void selectObjects(cocos2d::CCArray*, bool);
	// TodoReturn setupEditMenu();
	// TodoReturn sliderChanged(cocos2d::CCObject*);
	void updateButtons();
	// TodoReturn valueFromXPos(float) = win 0xa62b0;
	// TodoReturn xPosFromValue(float);
	// TodoReturn zoomGameLayer(bool);
	// TodoReturn createMoveMenu();
	// TodoReturn createOutlines(cocos2d::CCArray*);
	TodoReturn deselectObject(GameObject*);
	TodoReturn deselectObject();
	// TodoReturn doPasteInPlace(bool);
	// TodoReturn doPasteObjects(bool);
	// TodoReturn findSnapObject(cocos2d::CCPoint, float);
	// TodoReturn findSnapObject(cocos2d::CCArray*, float);
	// TodoReturn moveForCommand(EditCommand);
	// TodoReturn moveObjectCall(EditCommand);
	// TodoReturn moveObjectCall(cocos2d::CCObject*);
	// TodoReturn playCircleAnim(cocos2d::CCPoint, float, float);
	// TodoReturn redoLastAction(cocos2d::CCObject*);
	// TodoReturn replaceGroupID(GameObject*, int, int);
	// TodoReturn selectBuildTab(int);
	// TodoReturn toggleFreeMove(cocos2d::CCObject*);
	// TodoReturn undoLastAction(cocos2d::CCObject*);
	// TodoReturn updateEditMenu();
	// TodoReturn addSnapPosition(cocos2d::CCPoint);
	// TodoReturn assignNewGroups(bool);
	// TodoReturn canSelectObject(GameObject*);
	// TodoReturn clickOnPosition(cocos2d::CCPoint);
	// TodoReturn createRockBases(cocos2d::CCArray*);
	// TodoReturn createRockEdges(cocos2d::CCArray*);
	// TodoReturn findTriggerTest();
	// TodoReturn playtestStopped() = win 0xc9630;
	void setupCreateMenu();
	void setupDeleteMenu();
	// TodoReturn smartTypeForKey(int);
	// TodoReturn transformObject(GameObject*, EditCommand, bool);
	// TodoReturn convertToBaseKey(int);
	// TodoReturn createUndoObject(UndoCommand, bool);
	// TodoReturn editButtonUsable();
	// TodoReturn playerTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	// TodoReturn playerTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	// TodoReturn showMaxCoinError();
	// TodoReturn transformObjects(cocos2d::CCArray*, cocos2d::CCPoint, float, float, float, float, float, float);
	// TodoReturn triggerSwipeMode();
	// TodoReturn updateCreateMenu(bool);
	// TodoReturn updateDeleteMenu();
	// TodoReturn colorSelectClosed(cocos2d::_ccColor3B);
	cocos2d::CCArray* createCustomItems();
	// TodoReturn createExtraObject(int, cocos2d::CCPoint, GameObject*, cocos2d::CCArray*, int, int);
	// TodoReturn editButton2Usable();
	// TodoReturn editObjectSpecial(int);
	// TodoReturn orderUpCustomItem(cocos2d::CCObject*);
	// TodoReturn reloadCustomItems();
	// TodoReturn showMaxBasicError();
	// TodoReturn updateGroupIDBtn2();
	// TodoReturn updatePlaybackBtn() = win 0xc9370;
	// TodoReturn applySpecialOffset(cocos2d::CCPoint, GameObject*, cocos2d::CCPoint);
	// TodoReturn arrayContainsClass(cocos2d::CCArray*, int);
	// TodoReturn closeLiveHSVSelect();
	// TodoReturn dynamicGroupUpdate(bool);
	// TodoReturn recreateButtonTabs();
	// TodoReturn rotationforCommand(EditCommand);
	// TodoReturn shouldDeleteObject(GameObject*);
	// TodoReturn toggleEnableRotate(cocos2d::CCObject*);
	// TodoReturn updateGridNodeSize(int);
	// TodoReturn updateGridNodeSize();
	// TodoReturn updateGroupIDLabel();
	// TodoReturn copyObjectsDetailed(cocos2d::CCArray*);
	// TodoReturn createEdgeForObject(GameObject*, int);
	// TodoReturn editorLayerForArray(cocos2d::CCArray*, bool);
	// TodoReturn findAndSelectObject(int, bool);
	// /* unverified signature */
	// bool isSpecialSnapObject(int);
	// TodoReturn liveEditColorUsable();
	// TodoReturn orderDownCustomItem(cocos2d::CCObject*);
	// TodoReturn positionIsInSnapped(cocos2d::CCPoint);
	// TodoReturn selectObjectsInRect(cocos2d::CCRect);
	// TodoReturn transformObjectCall(EditCommand);
	// TodoReturn transformObjectCall(cocos2d::CCObject*);
	// TodoReturn updateDeleteButtons();
	// TodoReturn activateScaleControl(cocos2d::CCObject*);
	// TodoReturn centerCameraOnObject(GameObject*);
	// TodoReturn checkLiveColorSelect();
	// TodoReturn closeLiveColorSelect();
	// TodoReturn deselectObjectsColor();
	// TodoReturn processSelectObjects(cocos2d::CCArray*);
	// TodoReturn toggleStickyControls(bool);
	void tryUpdateTimeMarkers();
	// TodoReturn canAllowMultiActivate(GameObject*, cocos2d::CCArray*);
	// TodoReturn changeSelectedObjects(cocos2d::CCArray*, bool);
	// TodoReturn createExtrasForObject(int, GameObject*, cocos2d::CCArray*);
	// TodoReturn createNewKeyframeAnim();
	// TodoReturn deleteTypeFromObjects(int, cocos2d::CCArray*);
	// TodoReturn deselectTargetPortals();
	// TodoReturn editColorButtonUsable();
	// TodoReturn positionWithoutOffset(GameObject*);
	// TodoReturn setupTransformControl();
	// TodoReturn toggleDuplicateButton();
	// TodoReturn toggleObjectInfoLabel();
	// TodoReturn transformObjectsReset();
	// TodoReturn updateEditButtonColor(int, cocos2d::_ccColor3B);
	// TodoReturn updateEditColorButton();
	// TodoReturn updateObjectInfoLabel();
	// TodoReturn createUndoSelectObject(bool);
	// TodoReturn deactivateScaleControl();
	// TodoReturn selectAllWithDirection(bool);
	// TodoReturn showDeleteConfirmation();
	// TodoReturn spriteFromObjectString(gd::string, bool, bool, int, cocos2d::CCArray*, cocos2d::CCArray*, GameObject*);
	// TodoReturn toggleEditObjectButton();
	// TodoReturn transformObjectsActive();
	// TodoReturn activateRotationControl(cocos2d::CCObject*);
	// TodoReturn resetObjectEditorValues(cocos2d::CCArray*);
	// TodoReturn updateSpecialUIElements();
	// TodoReturn activateTransformControl(cocos2d::CCObject*);
	// /* unverified signature */
	// bool isLiveColorSelectTrigger(GameObject*);
	// TodoReturn menuItemFromObjectString(gd::string, int);
	// TodoReturn toggleSpecialEditButtons();
	// TodoReturn addObjectsToSmartTemplate(GJSmartTemplate*, cocos2d::CCArray*);
	// TodoReturn deactivateRotationControl();
	// TodoReturn repositionObjectsToCenter(cocos2d::CCArray*, cocos2d::CCPoint, bool);
	// TodoReturn resetSelectedObjectsColor();
	// TodoReturn constrainGameLayerPosition(float, float);
	// TodoReturn constrainGameLayerPosition();
	// TodoReturn convertKeyBasedOnNeighbors(int, int, cocos2d::CCPoint, cocos2d::CCArray*);
	// TodoReturn createSmartObjectsFromType(int, cocos2d::CCArray*, bool, bool);
	// TodoReturn deactivateTransformControl();
	// TodoReturn showLiveColorSelectForMode(int);
	// TodoReturn processSmartObjectsFromType(int, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*);
	// TodoReturn deleteSmartBlocksFromObjects(cocos2d::CCArray*);
	// TodoReturn checkDiffAfterTransformAnchor(cocos2d::CCPoint, cocos2d::CCArray*);
	// TodoReturn createSmartObjectsFromTemplate(GJSmartTemplate*, cocos2d::CCArray*, bool, bool, bool, bool);
	// TodoReturn showLiveColorSelectForModeSpecial(int);
	TodoReturn showUI(bool);
	// TodoReturn zoomIn(cocos2d::CCObject*);
	// TodoReturn editHSV();
	// TodoReturn resetUI();
	// TodoReturn zoomOut(cocos2d::CCObject*);
	// TodoReturn editColor();
	// TodoReturn editGroup(cocos2d::CCObject*);
	// TodoReturn selectAll();

	virtual void draw();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn getUI();
	virtual void setIDPopupClosed(SetIDPopup*, int);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn updateTransformControl();
	virtual TodoReturn transformChangeBegin();
	virtual TodoReturn transformChangeEnded();
	virtual TodoReturn getTransformNode();
	virtual TodoReturn transformScaleXChanged(float);
	virtual TodoReturn transformScaleYChanged(float);
	virtual TodoReturn transformScaleXYChanged(float, float);
	virtual TodoReturn transformSkewXChanged(float);
	virtual TodoReturn transformSkewYChanged(float);
	virtual TodoReturn transformRotationXChanged(float);
	virtual TodoReturn transformRotationYChanged(float);
	virtual TodoReturn transformRotationChanged(float);
	virtual TodoReturn transformResetRotation();
	virtual TodoReturn transformRestoreRotation();
	virtual TodoReturn songStateChanged();
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*);
	virtual void keyUp(cocos2d::enumKeyCodes);
	virtual void scrollWheel(float, float);
	virtual TodoReturn angleChangeBegin();
	virtual TodoReturn angleChangeEnded();
	virtual TodoReturn angleChanged(float);
	virtual TodoReturn updateScaleControl();
	virtual TodoReturn anchorPointMoved(cocos2d::CCPoint);
	virtual TodoReturn scaleChangeBegin();
	virtual TodoReturn scaleChangeEnded();
	virtual TodoReturn scaleXChanged(float);
	virtual TodoReturn scaleYChanged(float);
	virtual void scaleXYChanged(float, float) = win 0xcb9b0;

	PAD = android32 0xd4;
    EditButtonBar* m_editButtonBar;

	PAD = android32 0x30;

	cocos2d::CCArray* m_selectedObjects;

	// all of these are not tested
    cocos2d::CCMenu* m_deleteMenu;
    cocos2d::CCArray* m_unknownArray4;
    CCMenuItemSpriteExtra* m_deleteModeBtn;
    CCMenuItemSpriteExtra* m_buildModeBtn;
    CCMenuItemSpriteExtra* m_editModeBtn;
    CCMenuItemSpriteExtra* m_swipeBtn;
    CCMenuItemSpriteExtra* m_freeMoveBtn;
    CCMenuItemSpriteExtra* m_deselectBtn;
    CCMenuItemSpriteExtra* m_snapBtn;
    CCMenuItemSpriteExtra* m_rotateBtn;
    CCMenuItemSpriteExtra* m_playbackBtn;
    CCMenuItemSpriteExtra* m_playtestBtn;
    CCMenuItemSpriteExtra* m_playtestStopBtn;
    CCMenuItemSpriteExtra* m_trashBtn;
    CCMenuItemSpriteExtra* m_linkBtn;
    CCMenuItemSpriteExtra* m_unlinkBtn;
    CCMenuItemSpriteExtra* m_undoBtn;
    CCMenuItemSpriteExtra* m_redoBtn;
    CCMenuItemSpriteExtra* m_editObjectBtn;
    CCMenuItemSpriteExtra* m_editGroupBtn;
    CCMenuItemSpriteExtra* m_editHSVBtn;
    CCMenuItemSpriteExtra* m_editSpecialBtn;
    CCMenuItemSpriteExtra* m_copyPasteBtn;
    CCMenuItemSpriteExtra* m_copyBtn;
    CCMenuItemSpriteExtra* m_pasteBtn;
    CCMenuItemSpriteExtra* m_copyValuesBtn;
    CCMenuItemSpriteExtra* m_pasteStateBtn;
    CCMenuItemSpriteExtra* m_pasteColorBtn;
    CCMenuItemSpriteExtra* m_goToLayerBtn;
    CCMenuItemToggler* m_guideToggle;
    cocos2d::CCArray* m_createButtonBars;
    cocos2d::CCMenu* m_tabsMenu;
    cocos2d::CCArray* m_tabsArray;
    cocos2d::CCSprite* m_idkSprite0;
    cocos2d::CCSprite* m_idkSprite1;
    CCMenuItemSpriteExtra* m_button27;
    CCMenuItemSpriteExtra* m_button28;
    CCMenuItemSpriteExtra* m_deleteFilterNone;
    CCMenuItemSpriteExtra* m_deleteFilterStatic;
    CCMenuItemSpriteExtra* m_deleteFilterDetails;
    CCMenuItemSpriteExtra* m_deleteFilterCustom;
    cocos2d::CCLabelBMFont* m_currentLayerLabel;
    CCMenuItemSpriteExtra* m_layerNextBtn;
    CCMenuItemSpriteExtra* m_layerPrevBtn;
    CCMenuItemSpriteExtra* m_goToBaseBtn;
    PAD = mac 0x10, win 0x8, android32 0x8;
    int m_selectedCreateObjectID;
    cocos2d::CCArray* m_createButtonArray;
    cocos2d::CCArray* m_customObjectButtonArray;
    cocos2d::CCArray* m_unknownArray9;
    int m_selectedMode;
    LevelEditorLayer* m_editorLayer;
    cocos2d::CCPoint m_swipeStart;
    cocos2d::CCPoint m_swipeEnd;
    PAD = mac 0x8, win 0x8, android32 0x8;
    cocos2d::CCPoint m_lastTouchPoint;
    cocos2d::CCPoint m_cameraTest;
    PAD = mac 0x8, win 0x8, android32 0x8;

	PAD = android32 0x8;
    GameObject* m_selectedObject;
}

[[link(android)]]
class CCCircleWave : cocos2d::CCNode {
	static CCCircleWave* create(float, float, float, bool);
	static CCCircleWave* create(float, float, float, bool, bool) = win 0x23220;

	bool init(float, float, float, bool, bool) = win 0x232F0;
	~CCCircleWave();

	TodoReturn followObject(cocos2d::CCNode*, bool) = win 0x23540;
	TodoReturn updatePosition(float);
	TodoReturn baseSetup(float);

	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void removeMeAndCleanup();
	virtual void draw();
	virtual void updateTweenAction(float, char const*);
}


[[link(android)]]
class CurrencyRewardLayer : cocos2d::CCLayer {
	static CurrencyRewardLayer* create(int, int, int, int, CurrencySpriteType, int, CurrencySpriteType, int, cocos2d::CCPoint, CurrencyRewardType, float, float) = win 0x71780;

	bool init(int, int, int, int, CurrencySpriteType, int, CurrencySpriteType, int, cocos2d::CCPoint, CurrencyRewardType, float, float) = win 0x71870;
	~CurrencyRewardLayer();

	TodoReturn pulseSprite(cocos2d::CCSprite*);
	TodoReturn createObjects(CurrencySpriteType, int, cocos2d::CCPoint, float);
	TodoReturn incrementCount(int);
	TodoReturn createObjectsFull(CurrencySpriteType, int, cocos2d::CCSprite*, cocos2d::CCPoint, float);
	TodoReturn createUnlockObject(cocos2d::CCSprite*, cocos2d::CCPoint, float);
	TodoReturn incrementMoonsCount(int);
	TodoReturn incrementStarsCount(int);
	TodoReturn incrementDiamondsCount(int);
	TodoReturn incrementSpecialCount1(int);
	TodoReturn incrementSpecialCount2(int);

	virtual void update(float);
}

[[link(android)]]
class CCCircleWaveDelegate {
	virtual TodoReturn circleWaveWillBeRemoved(CCCircleWave*);
}

[[link(android)]]
class CurrencyRewardDelegate {
	virtual TodoReturn currencyWillExit(CurrencyRewardLayer*);
}

[[link(android)]]
class PlayLayer : GJBaseGameLayer, CCCircleWaveDelegate, CurrencyRewardDelegate, DialogDelegate {
	static PlayLayer* create(GJGameLevel*, bool, bool) = win 0x2D68F0;

	bool init(GJGameLevel*, bool, bool) = mac 0xa5db0, win 0x2d69a0;
	~PlayLayer() = win 0x2D6580;

	// TodoReturn getEndPosition();
	// TodoReturn getRelativeMod(cocos2d::CCPoint, float, float, float);
	// TodoReturn getTempMilliTime();
	// TodoReturn getCurrentPercent();
	// TodoReturn getLastCheckpoint() = win 0x2e3000;
	// TodoReturn getRelativeModNew(cocos2d::CCPoint, float, float, bool, bool);
	TodoReturn getCurrentPercentInt() = win 0x2e09e0;

	TodoReturn onQuit() = win 0x2e5650;

	// TodoReturn playReplay(gd::string);
	TodoReturn resetLevel() = win 0x2E42B0;
	TodoReturn startMusic() = win 0x2E5570;
	// TodoReturn colorObject(int, cocos2d::_ccColor3B);
	// TodoReturn commitJumps();
	// TodoReturn shouldBlend(int);
	TodoReturn showNewBest(bool, int, int, bool, bool, bool) = win 0x2D9100;
	// TodoReturn spawnCircle();
	// TodoReturn canPauseGame();
	TodoReturn prepareMusic(bool) = win 0x2E5480;
	// TodoReturn showEndLayer();
	// TodoReturn addToGroupOld(GameObject*);
	void levelComplete() = win 0x2d7f30;
	// TodoReturn spawnFirework();
	// TodoReturn stopRecording();
	TodoReturn incrementJumps() = win 0x2e4e50;
	TodoReturn markCheckpoint() = win 0x2e2880;
	// TodoReturn showRetryLayer();
	// TodoReturn startRecording();
	// TodoReturn tryStartRecord();
	TodoReturn updateAttempts() = win 0x2E4CC0;
	// TodoReturn updateTimeWarp(EffectGameObject*, float);
	// TodoReturn queueCheckpoint();
	// TodoReturn storeCheckpoint(CheckpointObject*) = win 0x2e27d0;
	TodoReturn updateInfoLabel() = win 0x2dfe30;
	// TodoReturn applyEnterEffect(GameObject*, int, bool);
	// TodoReturn checkpointWithID(int);
	CheckpointObject* createCheckpoint() = win 0x2e1a20;
	// TodoReturn delayedFullReset();
	// /* unverified signature */
	// bool isGameplayActive();
	TodoReturn removeAllObjects() = win 0x2E5750;
	// TodoReturn removeCheckpoint(bool);
	TodoReturn resumeAndRestart(bool) = win 0x2E5160;
	void showCompleteText() = win 0x2d8770;
	TodoReturn startGameDelayed() = win 0x2D7EC0;
	TodoReturn delayedResetLevel() = win 0x2E4200;
	// TodoReturn loadDefaultColors();
	TodoReturn setupHasCompleted() = win 0x2d71b0;
	// TodoReturn takeStateSnapshot();
	TodoReturn toggleGhostEffect(int) = win 0x2D20D0;
	TodoReturn updateProgressbar() = win 0x2df7a0;
	void loadFromCheckpoint(CheckpointObject*) = win 0x2e28d0;
	// TodoReturn loadLastCheckpoint();
	// TodoReturn removeFromGroupOld(GameObject*);
	// TodoReturn showCompleteEffect();
	// TodoReturn showTwoPlayerGuide();
	void togglePracticeMode(bool) = win 0x2e4eb0;
	TodoReturn optimizeColorGroups() = win 0x2DC8B0;
	TodoReturn resetLevelFromStart() = win 0x2E4210;
	// TodoReturn compareStateSnapshot();
	// TodoReturn updateScreenRotation(int, bool, bool, float, int, float, int, int);
	// TodoReturn gravityEffectFinished();
	// TodoReturn loadActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&);
	TodoReturn optimizeOpacityGroups() = win 0x2DCB10;
	TodoReturn playEndAnimationToPos(cocos2d::CCPoint) = win 0x2da140;
	// TodoReturn saveActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&) = win 0x2e3d60;
	// TodoReturn scanActiveSaveObjects();
	// TodoReturn startRecordingDelayed();
	TodoReturn updateEffectPositions() = win 0x2e1470;
	// TodoReturn applyCustomEnterEffect(GameObject*, bool);
	// TodoReturn loadDynamicSaveObjects(gd::vector<SavedObjectStateRef>&);
	// TodoReturn saveDynamicSaveObjects(gd::vector<SavedObjectStateRef>&) = win 0x2e38c0;
	// TodoReturn scanDynamicSaveObjects();
	// TodoReturn processLoadedMoveActions();
	// TodoReturn toggleBGEffectVisibility(bool);
	void prepareCreateObjectsFromSetup(gd::string&) = win 0x2dafd0;
	void processCreateObjectsFromSetup() = win 0x2db250;
	// TodoReturn createObjectsFromSetupFinished() = win 0x2dbab0;
	TodoReturn playPlatformerEndAnimationToPos(cocos2d::CCPoint, bool) = win 0x2da920;
	TodoReturn scene(GJGameLevel*, bool, bool) = win 0x2D68A0;
	// TodoReturn resume();
	TodoReturn showHint() = win 0x2e12d0;
	// TodoReturn addCircle(CCCircleWave*);
	TodoReturn addObject(GameObject*) = win 0x2DBD30;
	void fullReset() = win 0x2E40C0;
	TodoReturn pauseGame(bool) = win 0x2e4fc0;
	TodoReturn startGame() = win 0x2d7e80;

	virtual void onEnterTransitionDidFinish() = win 0x2e58e0;
	virtual void onExit() = win 0x2e5910;
	virtual TodoReturn postUpdate(float) = win 0x2E1560;
	virtual TodoReturn checkForEnd() = win 0x2e1810;
	virtual TodoReturn testTime();
	virtual TodoReturn updateVerifyDamage() = win 0x2e18f0;
	virtual TodoReturn updateAttemptTime(float) = win 0x2e1970;
	virtual TodoReturn updateVisibility(float) = win 0x2dcf70;
	virtual TodoReturn opacityForObject(GameObject*) = win 0x2ddc80;
	virtual TodoReturn updateColor(cocos2d::_ccColor3B&, float, int, bool, float, cocos2d::_ccHSVValue&, int, bool, EffectGameObject*, int, int) = win 0x2df440;
	virtual TodoReturn activateEndTrigger(int, bool, bool);
	virtual void activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&) = win 0x2da810;
	virtual TodoReturn toggleGlitter(bool) = win 0x2e0990;
	virtual void destroyPlayer(PlayerObject*, GameObject*) = mac 0xb40f0, win 0x2e0a90;
	virtual TodoReturn toggleGroundVisibility(bool) = win 0x2e0840;
	virtual TodoReturn toggleMGVisibility(bool) = win 0x2e08c0;
	virtual TodoReturn toggleHideAttempts(bool) = win 0x2e0910;
	virtual TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, int) = win 0x2e0740;
	virtual TodoReturn posForTime(float) = win 0x2e07b0;
	virtual TodoReturn resetSPTriggered() = win 0x2e0800;
	virtual TodoReturn updateTimeWarp(float) = win 0x1b5590;
	virtual TodoReturn playGravityEffect(bool);
	virtual TodoReturn manualUpdateObjectColors(GameObject*) = win 0x2ddca0;
	virtual TodoReturn checkpointActivated(CheckpointGameObject*);
	virtual TodoReturn flipArt(bool);
	virtual TodoReturn updateTimeLabel(int, int, bool);
	virtual TodoReturn checkSnapshot();
	virtual TodoReturn toggleProgressbar();
	virtual TodoReturn toggleInfoLabel();
	virtual TodoReturn removeAllCheckpoints();
	virtual TodoReturn toggleMusicInPractice();
	virtual TodoReturn currencyWillExit(CurrencyRewardLayer*);
	virtual TodoReturn circleWaveWillBeRemoved(CCCircleWave*);
	virtual void dialogClosed(DialogLayer*) = win 0x2e12b0;

	PAD = win 0x1ec, android32 0x1ec;
}


[[link(android)]]
class EditButtonBar : cocos2d::CCNode {
	static EditButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint, int, bool, int, int);

	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, bool, int, int);
	~EditButtonBar();

	TodoReturn getPage();

	void onLeft(cocos2d::CCObject* sender);
	void onRight(cocos2d::CCObject* sender);

	TodoReturn reloadItems(int, int);
	TodoReturn loadFromItems(cocos2d::CCArray*, int, int, bool);
	TodoReturn goToPage(int);
}


[[link(android)]]
class PlayerObject : GameObject, AnimatedSpriteDelegate {
	static PlayerObject* create(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool) = win 0x2BCFD0;

	bool init(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool) = win 0x2BD080;
	~PlayerObject();

	// TodoReturn getYVelocity();
	// TodoReturn getActiveMode();
	// TodoReturn getOldPosition(float);
	// TodoReturn getSecondColor();
	// TodoReturn getCurrentXVelocity();
	float getModifiedSlopeYVel() = win 0x2c4560;

	/* unverified signature */
	void setYVelocity(double, int) = win 0x2BEC70;
	/* unverified signature */
	// void setSecondColor(cocos2d::_ccColor3B const&) = win 0x2d0c30;

	// TodoReturn bumpPlayer(float, int, bool, GameObject*) = win 0x2d2600;
	// TodoReturn buttonDown(PlayerButton);
	// TodoReturn didHitHead();
	// /* unverified signature */
	// bool isSafeFlip(float);
	// /* unverified signature */
	// bool isSafeMode(float);
	TodoReturn lockPlayer() = win 0x2d2290;
	// TodoReturn pushButton(PlayerButton) = win 0x2cc4d0;
	// TodoReturn pushPlayer(float);
	// TodoReturn reverseMod();
	TodoReturn updateJump(float) = win 0x2c1290;
	TodoReturn updateMove(float) = win 0x2BFC30;
	// TodoReturn yStartDown();
	void boostPlayer(float) = win 0x2d2d30;
	// TodoReturn createRobot(int);
	// TodoReturn flashPlayer(float, float, cocos2d::_ccColor3B, cocos2d::_ccColor3B);
	TodoReturn flipGravity(bool, bool) = win 0x2CDDB0;
	// TodoReturn gravityDown();
	// TodoReturn resetStreak();
	// TodoReturn setupStreak();
	// TodoReturn spawnCircle();
	TodoReturn stopDashing() = win 0x2CB080;
	// TodoReturn stopStreak2();
	// TodoReturn createSpider(int);
	/* unverified signature */
	bool isBoostValid(float) = win 0x2c4500;
	void preCollision() = win 0x2c2c10;
	TodoReturn redirectDash(float) = win 0x2CA320;
	// TodoReturn spawnCircle2();
	// TodoReturn startDashing(DashRingObject*);
	// TodoReturn stopRotation(bool, int);
	// /* unverified signature */
	// bool isInBasicMode();
	TodoReturn levelFlipping() = win 0x2CEF50;
	// TodoReturn levelWillFlip();
	// TodoReturn modeDidChange();
	void postCollision(float) = win 0x2C2D50;
	TodoReturn propellPlayer(float, bool, int) = win 0x2d2700;
	TodoReturn releaseButton(PlayerButton) = win 0x2cc710;
	TodoReturn reversePlayer(EffectGameObject*) = win 0x2CC810;
	// TodoReturn stopParticles();
	// TodoReturn switchedDirTo(PlayerButton) = win 0x2cc3e0;
	// TodoReturn testForMoving(float, GameObject*);
	TodoReturn toggleFlyMode(bool, bool) = win 0x2CE170;
	// TodoReturn touchedObject(GameObject*);
	TodoReturn updateCollide(PlayerCollisionDirection, GameObject*) = win 0x2C8CC0;
	TodoReturn updateDashArt() = win 0x2cac70;
	// TodoReturn updateEffects(float);
	// TodoReturn updateSpecial(float);
	// TodoReturn updateStreaks(float);
	TodoReturn updateTimeMod(float, bool) = win 0x2D3B00;
	TodoReturn activateStreak() = win 0x2d2ed0;
	void addToYVelocity(double, int) = win 0x2bece0;
	// TodoReturn copyAttributes(PlayerObject*);
	TodoReturn fadeOutStreak2(float) = win 0x2D2FD0;
	TodoReturn incrementJumps() = win 0x2c2250;
	/* unverified signature */
	bool isInNormalMode() = win 0x2cfe00;
	/* unverified signature */
	// bool isSafeHeadTest();
	// TodoReturn playBumpEffect(int, GameObject*) = win 0x2d28d0;
	TodoReturn rotateGameplay(int, int, bool, float, float, bool, bool) = win 0x2CDA10;
	// TodoReturn spiderTestJump(bool);
	TodoReturn storeCollision(PlayerCollisionDirection, int) = win 0x2C2B70;
	TodoReturn switchedToMode(GameObjectType) = win 0x2CF6A0;
	TodoReturn toggleBirdMode(bool, bool) = win 0x2CE400;
	TodoReturn toggleDartMode(bool, bool) = win 0x2CE9C0;
	TodoReturn toggleRollMode(bool, bool) = win 0x2CEF90;
	TodoReturn updateRotation(float) = win 0x2C64E0;
	// TodoReturn updateRotation(float, float);
	// TodoReturn addAllParticles() = win 0x2be6d0;
	TodoReturn doReversePlayer(bool) = win 0x2CC8F0;
	// TodoReturn hardFlipGravity();
	TodoReturn hitGroundNoJump(GameObject*, bool) = win 0x2CF730;
	// TodoReturn playBurstEffect();
	// TodoReturn playDeathEffect();
	TodoReturn playerDestroyed(bool) = win 0x2CC2D0;
	// TodoReturn playerIsFalling(float);
	// TodoReturn playSpawnEffect();
	TodoReturn resetPlayerIcon() = win 0x2cec80;
	TodoReturn runBallRotation(float) = win 0x2C2890;
	TodoReturn runRotateAction(bool, int) = win 0x2C26F0;
	// TodoReturn spawnDualCircle();
	// TodoReturn spawnFromPlayer(PlayerObject*, bool) = win 0x2d34b0;
	// TodoReturn spiderTestJumpX(bool);
	// TodoReturn spiderTestJumpY(bool);
	// TodoReturn stopBurstEffect();
	TodoReturn toggleRobotMode(bool, bool) = win 0x2CF0C0;
	TodoReturn toggleSwingMode(bool, bool) = win 0x2CE680;
	// TodoReturn updateGlowColor() = win 0x2d0ca0;
	TodoReturn updatePlayerArt() = win 0x2CCAC0;
	// TodoReturn updateSwingFire() = win 0x2ce8b0;
	// TodoReturn canStickToGround();
	// TodoReturn deactivateStreak(bool);
	// TodoReturn disableSwingFire();
	/* unverified signature */
	// bool isSafeSpiderFlip(float);
	TodoReturn placeStreakPoint() = win 0x2D3630;
	// TodoReturn playerIsMovingUp();
	// TodoReturn playerTeleported();
	// TodoReturn playingEndEffect();
	// TodoReturn runBallRotation2() = win 0x2c29d0;
	// TodoReturn saveToCheckpoint(PlayerCheckpoint*) = win 0x2d4140;
	// TodoReturn spawnScaleCircle();
	// TodoReturn specialGroundHit();
	TodoReturn toggleSpiderMode(bool, bool) = win 0x2CF3B0;
	// TodoReturn toggleVisibility(bool);
	TodoReturn updateCollideTop(float, GameObject*) = win 0x2C8EB0;
	TodoReturn updatePlayerGlow() = win 0x2D3170;
	// TodoReturn addToTouchedRings(RingObject*);
	// TodoReturn collidedWithSlope(float, GameObject*, bool);
	// TodoReturn levelFlipFinished();
	// TodoReturn performSlideCheck();
	TodoReturn preSlopeCollision(float, GameObject*) = win 0x2C46F0;
	// TodoReturn releaseAllButtons();
	// TodoReturn resetAllParticles();
	// TodoReturn resetCollisionLog(bool);
	// TodoReturn resetTouchedRings();
	TodoReturn runNormalRotation(bool, float) = win 0x2C2750;
	// TodoReturn runNormalRotation();
	TodoReturn spawnPortalCircle(cocos2d::_ccColor3B, float) = win 0x2CBF20;
	// TodoReturn toggleGhostEffect(GhostType) = win 0x2d20d0;
	TodoReturn togglePlayerScale(bool, bool) = win 0x2D3690;
	TodoReturn updateCollideLeft(float, GameObject*) = win 0x2C8F30;
	TodoReturn updatePlayerForce(cocos2d::CCPoint, bool);
	TodoReturn updatePlayerFrame(int) = win 0x2D1220;
	TodoReturn updatePlayerScale() = win 0x2d3110;
	TodoReturn updateStaticForce(float, float, bool) = win 0x2D2A00;
	// TodoReturn updateStreakBlend(bool);
	// TodoReturn collidedWithObject(float, GameObject*);
	// TodoReturn collidedWithObject(float, GameObject*, cocos2d::CCRect, bool);
	// TodoReturn deactivateParticle();
	// TodoReturn destroyFromHitHead();
	TodoReturn gameEventTriggered(int, int) = win 0x1B1AC0;
	void loadFromCheckpoint(PlayerCheckpoint*) = win 0x2d4370;
	// TodoReturn playCompleteEffect(bool, bool);
	// TodoReturn removeAllParticles();
	// TodoReturn rotateGameplayOnly(bool);
	// TodoReturn tryPlaceCheckpoint() = win 0x2d4730;
	TodoReturn updateCollideRight(float, GameObject*) = win 0x2C8FB0;
	// TodoReturn updateShipRotation(float);
	// TodoReturn handlePlayerCommand(int);
	TodoReturn redirectPlayerForce(float, float, float, float) = win 0x2D2B40;
	// TodoReturn resetStateVariables();
	TodoReturn updateCollideBottom(float, GameObject*) = win 0x2C8E30;
	// TodoReturn updateDashAnimation();
	// TodoReturn updateJumpVariables();
	// TodoReturn updateSlopeRotation(float);
	// TodoReturn enablePlayerControls();
	// TodoReturn playDynamicSpiderRun();
	// TodoReturn playSpiderDashEffect(cocos2d::CCPoint, cocos2d::CCPoint);
	// TodoReturn resetCollisionValues();
	// TodoReturn rotateGameplayObject(GameObject*);
	// TodoReturn togglePlatformerMode(bool);
	// TodoReturn updateCheckpointMode(bool);
	// TodoReturn updateCheckpointTest() = win 0x2c0df0;
	// TodoReturn updateSlopeYVelocity(float);
	// TodoReturn updateStateVariables();
	// TodoReturn usingWallLimitedMode();
	// TodoReturn animatePlatformerJump(float);
	// TodoReturn checkSnapJumpToObject(GameObject*);
	// TodoReturn disablePlayerControls();
	// TodoReturn enableCustomGlowColor(cocos2d::_ccColor3B const&);
	// TodoReturn playerIsFallingBugged();
	// TodoReturn rotatePreSlopeObjects();
	// TodoReturn updateInternalActions(float);
	TodoReturn updatePlayerBirdFrame(int) = win 0x2D1770;
	TodoReturn updatePlayerDartFrame(int) = win 0x2D1D10;
	TodoReturn updatePlayerRollFrame(int) = win 0x2D1990;
	TodoReturn updatePlayerShipFrame(int) = win 0x2D13F0;
	TodoReturn updateShipSpriteExtra(gd::string) = win 0x2D1FD0;
	// TodoReturn disableCustomGlowColor();
	// TodoReturn removePlacedCheckpoint();
	// TodoReturn spiderTestJumpInternal(bool);
	// TodoReturn unrotateGameplayObject(GameObject*);
	// TodoReturn updateLastGroundObject(GameObject*);
	// TodoReturn updatePlayerRobotFrame(int);
	TodoReturn updatePlayerSwingFrame(int) = win 0x2D1B50;
	// TodoReturn createFadeOutDartStreak();
	TodoReturn removePendingCheckpoint() = win 0x2d46d0;
	// TodoReturn unrotatePreSlopeObjects();
	// TodoReturn updatePlayerSpiderFrame(int);
	TodoReturn updatePlayerSpriteExtra(gd::string) = win 0x2D1ED0;
	// TodoReturn convertToClosestRotation(float);
	TodoReturn updatePlayerJetpackFrame(int) = win 0x2D15B0;
	TodoReturn collidedWithSlopeInternal(float, GameObject*, bool) = win 0x2C4C50;
	// TodoReturn exitPlatformerAnimateJump();
	// TodoReturn updateRobotAnimationSpeed();
	TodoReturn collidedWithObjectInternal(float, GameObject*, cocos2d::CCRect, bool) = win 0x2C6C10;
	// TodoReturn handleRotatedSlopeCollision(float, GameObject*, bool);
	// TodoReturn stopPlatformerJumpAnimation();
	// TodoReturn handleRotatedObjectCollision(float, GameObject*, cocos2d::CCRect, bool);
	// TodoReturn handleRotatedCollisionInternal(float, GameObject*, cocos2d::CCRect, bool, bool, bool);
	// TodoReturn flipMod();
	// TodoReturn speedUp();
	/* unverified signature */
	bool isFlying() = win 0x2ce0f0;
	// TodoReturn pushDown();
	TodoReturn ringJump(RingObject*, bool) = win 0x2CCEA0;
	// TodoReturn yStartUp();
	// TodoReturn gravityUp();
	TodoReturn hitGround(GameObject*, bool) = win 0x2CF760;
	// TodoReturn logValues();
	// TodoReturn speedDown();

	virtual void update(float) = win 0x2bed60;
	virtual void setScaleX(float) = win 0x2D4C10;
	virtual void setScaleY(float) = win 0x2D4C30;
	virtual void setScale(float) = win 0x2D4C50;
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void setVisible(bool);
	virtual void setRotation(float);
	virtual void setOpacity(unsigned char);
	virtual void setColor(cocos2d::_ccColor3B const&);
	virtual void setFlipX(bool) = win 0x2D4B80;
	virtual void setFlipY(bool) = win 0x138E00;
	virtual TodoReturn resetObject() = win 0x2cb840;
	virtual TodoReturn getRealPosition();
	virtual TodoReturn getOrientedBox();
	virtual TodoReturn getObjectRotation();
	virtual TodoReturn animationFinished(char const*);

	PAD = win 0xa0;
	uint8_t m_playerNum; //0x318
	PAD = win 0x2bf;
	float m_rotationSpeed; //0x5d8
	PAD = win 0x5;
	bool m_isRotating; //0x5e1
	PAD = win 0x1b6;
	double m_yVelocity; //0x798
	PAD = win 0x9;
	bool m_isShip; //0x7a9
	bool m_isBird; //0x7aa
	bool m_isBall; //0x7ab
	bool m_isDart; //0x7ac
	bool m_isRobot; //0x7ad
	bool m_isSpider; //0x7ae
	bool m_isUpsideDown; //0x7af
	bool m_isDead; //0x7b0
	bool m_isOnGround; //0x7b1
	bool m_isGoingLeft; //0x7b2
	PAD = win 0x1;
	bool m_isSwing; //0x7b4
	PAD = win 0x1f;
	bool m_isDashing; //0x7d4
	PAD = win 0xf;
	float m_speed; //0x7e4
	PAD = win 0x17;
	bool m_isLocked; //0x7ff
	PAD = win 0x1c;
	cocos2d::CCPoint m_position; //0x81c
	PAD = win 0x4c;
	double m_platformerXVelocity; //0x870
	PAD = win 0x70;
	bool m_isPlatformer; //0x8e8
	PAD = win 0x13;
	float m_gravityMod; //0x8fc
	PAD = win 0x80;
}


[[link(android)]]
class CheckpointGameObject : EffectGameObject {
	static CheckpointGameObject* create();

	~CheckpointGameObject();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn resetCheckpoint();
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn setupCustomSprites(gd::string);
	TodoReturn updateCheckpointSpriteVisibility();

	virtual bool init();
	virtual TodoReturn resetObject();
	virtual TodoReturn getSaveString(GJBaseGameLayer*);
	virtual TodoReturn triggerActivated(float);
	virtual TodoReturn restoreObject();
	virtual TodoReturn updateSyncedAnimation(float, int);
}

[[link(android)]]
class SongInfoObject : cocos2d::CCNode {
	static SongInfoObject* create(int);
	static SongInfoObject* create(int, gd::string, gd::string, int, float, gd::string, gd::string, gd::string, int);
	static SongInfoObject* create(cocos2d::CCDictionary*);

	bool init(int, gd::string, gd::string, int, float, gd::string, gd::string, gd::string, int);
	~SongInfoObject();

	TodoReturn getTagsString();

	TodoReturn containsTag(int);
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn addTags(gd::string);

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();
}


[[link(android)]]
class AnimatedSpriteDelegate {
	virtual TodoReturn animationFinished(char const*);
}


[[link(android)]]
class PlayerCheckpoint : cocos2d::CCNode {
	static PlayerCheckpoint* create();

	~PlayerCheckpoint();

	virtual bool init();
}


[[link(android)]]
class CheckpointObject : cocos2d::CCNode {
	static CheckpointObject* create();

	~CheckpointObject();

	TodoReturn getObject();

	/* unverified signature */
	void setObject(GameObject*);

	virtual bool init();
}


[[link(android)]]
class EditorPauseLayer : CCBlockLayer, FLAlertLayerProtocol {
	static EditorPauseLayer* create(LevelEditorLayer*);

	bool init(LevelEditorLayer*);
	~EditorPauseLayer();

	// void onNewGroupX(cocos2d::CCObject* sender);
	// void onNewGroupY(cocos2d::CCObject* sender);
	// void onSelectAll(cocos2d::CCObject* sender);
	// void onCopyWColor(cocos2d::CCObject* sender);
	// void onCreateLoop(cocos2d::CCObject* sender);
	// void onExitEditor(cocos2d::CCObject* sender);
	void onExitNoSave(cocos2d::CCObject* sender);
	// void onBuildHelper(cocos2d::CCObject* sender);
	// void onKeybindings(cocos2d::CCObject* sender);
	// void onPasteWColor(cocos2d::CCObject* sender);
	void onSaveAndExit(cocos2d::CCObject* sender);
	void onSaveAndPlay(cocos2d::CCObject* sender);
	// void onCreateExtras(cocos2d::CCObject* sender);
	// void onSelectAllLeft(cocos2d::CCObject* sender);
	// void onCreateTemplate(cocos2d::CCObject* sender);
	// void onSelectAllRight(cocos2d::CCObject* sender);
	// void onUnlockAllLayers(cocos2d::CCObject* sender);
	// void onResetUnusedColors(cocos2d::CCObject* sender);
	// void onHelp(cocos2d::CCObject* sender);
	void onSave(cocos2d::CCObject* sender);
	// void onSong(cocos2d::CCObject* sender);
	// void onAlignX(cocos2d::CCObject* sender);
	// void onAlignY(cocos2d::CCObject* sender);
	void onResume(cocos2d::CCObject* sender);
	// void onOptions(cocos2d::CCObject* sender);
	// void onReGroup(cocos2d::CCObject* sender);

	// TodoReturn doResetUnused();
	// TodoReturn toggleDebugDraw(cocos2d::CCObject*);
	// TodoReturn toggleGridOnTop(cocos2d::CCObject*);
	// TodoReturn toggleEditorGrid(cocos2d::CCObject*);
	// TodoReturn updateSongButton();
	// TodoReturn toggleEffectLines(cocos2d::CCObject*);
	// TodoReturn togglePreviewAnim(cocos2d::CCObject*);
	// TodoReturn toggleRecordOrder(cocos2d::CCObject*);
	// TodoReturn uncheckAllPortals(cocos2d::CCObject*);
	// TodoReturn toggleEditorGround(cocos2d::CCObject*);
	// TodoReturn toggleFollowPlayer(cocos2d::CCObject*);
	// TodoReturn toggleIgnoreDamage(cocos2d::CCObject*);
	// TodoReturn toggleSelectFilter(cocos2d::CCObject*);
	// TodoReturn toggleHideInvisible(cocos2d::CCObject*);
	// TodoReturn togglePlaytestMusic(cocos2d::CCObject*);
	// TodoReturn toggleEffectDuration(cocos2d::CCObject*);
	// TodoReturn togglePreviewShaders(cocos2d::CCObject*);
	// TodoReturn toggleShowObjectInfo(cocos2d::CCObject*);
	// TodoReturn toggleEditorColorMode(cocos2d::CCObject*);
	// TodoReturn toggleEditorBackground(cocos2d::CCObject*);
	// TodoReturn togglePreviewParticles(cocos2d::CCObject*);
	// TodoReturn playStep2();
	// TodoReturn playStep3();
	TodoReturn saveLevel();

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn customSetup();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
}


[[link(android)]]
class CCBlockLayer : cocos2d::CCLayerColor {
	static CCBlockLayer* create();

	~CCBlockLayer();

	TodoReturn decrementForcePrio();
	TodoReturn incrementForcePrio();

	virtual bool init();
	virtual void draw();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn customSetup();
	virtual TodoReturn enterLayer();
	virtual TodoReturn exitLayer();
	virtual TodoReturn showLayer(bool);
	virtual TodoReturn hideLayer(bool);
	virtual TodoReturn layerVisible();
	virtual TodoReturn layerHidden();
	virtual TodoReturn enterAnimFinished();
	virtual TodoReturn disableUI();
	virtual TodoReturn enableUI();

	void* m_unknown;
}


[[link(android)]]
class PauseLayer : CCBlockLayer {
	static PauseLayer* create(bool) = win 0x2b3690;

	bool init(bool) = win 0x2b3740;
	~PauseLayer();

	void onSettings(cocos2d::CCObject* sender) = win 0x2b41e0;
	void onNormalMode(cocos2d::CCObject* sender) = win 0x2b4be0;
	void onRestartFull(cocos2d::CCObject* sender) = win 0x2b4d30;
	void onPracticeMode(cocos2d::CCObject* sender) = win 0x2b4b70;
	void onRecordReplays(cocos2d::CCObject* sender);
	void onEdit(cocos2d::CCObject* sender) = win 0x2b4d80;
	void onHelp(cocos2d::CCObject* sender);
	void onQuit(cocos2d::CCObject* sender) = win 0x2b4ed0;
	void onTime(cocos2d::CCObject* sender);
	void onReplay(cocos2d::CCObject* sender);
	void onResume(cocos2d::CCObject* sender) = win 0x2b4c90;
	void onRestart(cocos2d::CCObject* sender) = win 0x2b4ce0;

	TodoReturn tryShowBanner(float);
	TodoReturn sfxSliderChanged(cocos2d::CCObject*);
	TodoReturn setupProgressBars();
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	void musicSliderChanged(cocos2d::CCObject*) = win 0x2B4AB0;
	void goEdit() = win 0x2b4e70;

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x2b4fa0;
	virtual void customSetup() = win 0x2B3740;
	virtual void keyUp(cocos2d::enumKeyCodes);
}


[[link(android)]]
class LevelBrowserLayer : cocos2d::CCLayerColor, LevelManagerDelegate, FLAlertLayerProtocol, SetIDPopupDelegate, SetTextPopupDelegate, TableViewCellDelegate, ShareCommentDelegate {
	static LevelBrowserLayer* create(GJSearchObject*) = win 0x22DD50;

	bool init(GJSearchObject*) = win 0x22DE00;
	~LevelBrowserLayer();

	TodoReturn getSearchTitle();
	TodoReturn getItemsMatchingSearch(cocos2d::CCArray*, gd::string, GJSearchObject*);

	/* unverified signature */
	void setSearchObject(GJSearchObject*);

	void onGoToPage(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onDeleteAll(cocos2d::CCObject* sender);
	void onFavorites(cocos2d::CCObject* sender);
	void onLocalMode(cocos2d::CCObject* sender);
	void onSavedMode(cocos2d::CCObject* sender);
	void onGoToFolder(cocos2d::CCObject* sender);
	void onClearSearch(cocos2d::CCObject* sender);
	void onGoToLastPage(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onMyOnlineLevels(cocos2d::CCObject* sender);
	void onToggleAllObjects(cocos2d::CCObject* sender);
	void onRemoveAllFavorites(cocos2d::CCObject* sender);
	void onNew(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onSaved(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	void onRefresh(cocos2d::CCObject* sender);

	TodoReturn createNewList(cocos2d::CCObject*);
	TodoReturn createNewLevel(cocos2d::CCObject*);
	TodoReturn deleteSelected();
	TodoReturn updatePageLabel();
	TodoReturn reloadAllObjects();
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	TodoReturn updateLevelsLabel();
	TodoReturn createNewSmartTemplate(cocos2d::CCObject*);
	TodoReturn show();
	static cocos2d::CCScene* scene(GJSearchObject* search) {
        auto scene = cocos2d::CCScene::create();
        scene->addChild(LevelBrowserLayer::create(search));

        AppDelegate::get()->m_runningScene = scene;
        return scene;
    }
	void loadPage(GJSearchObject*) = win 0x22F480;
	TodoReturn exitLayer(cocos2d::CCObject*);
	/* unverified signature */
	bool isCorrect(char const*) = win 0x22F340;

	virtual void onEnter();
	virtual void onEnterTransitionDidFinish();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	virtual TodoReturn loadLevelsFailed(char const*, int);
	virtual void setupPageInfo(gd::string, char const*) = win 0x230980;
	virtual void shareCommentClosed(gd::string, ShareCommentLayer*);
	virtual void setTextPopupClosed(SetTextPopup*, gd::string);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2326E0;
	virtual void setIDPopupClosed(SetIDPopup*, int);
	virtual TodoReturn updateResultArray(cocos2d::CCArray*);
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);

	bool m_unk;
	bool m_allSelected;
    TextArea* m_noInternet;
    GJListLayer* m_list;
    CCMenuItemSpriteExtra* m_rightArrow;
    CCMenuItemSpriteExtra* m_leftArrow;
    CCMenuItemSpriteExtra* m_lastBtn;
    CCMenuItemSpriteExtra* m_cancelSearchBtn;
    CCMenuItemSpriteExtra* m_refreshBtn;
    cocos2d::CCArray* m_selected;
    GJSearchObject* m_searchObject;
    cocos2d::CCLabelBMFont* m_countText;
    cocos2d::CCLabelBMFont* m_pageText;
    CCMenuItemSpriteExtra* m_pageBtn;
    cocos2d::CCLabelBMFont* m_folderText;
    CCMenuItemSpriteExtra* m_folderBtn;
	CCMenuItemToggler* m_allObjectsToggler;
    int m_itemCount;
    int m_pageStartIdx;
    int m_pageEndIdx;
	LoadingCircle* m_circle;
	int m_lastPage;
	bool m_isOverlay;
	PAD = win 0x4, android32 0x4;
	int m_zOffset;
	bool m_unk2;
	int m_listHeight;
	PAD = win 0x16, android32 0x16;

}

[[link(android)]]
class SetTextPopupDelegate {
	/* unverified signature */
	virtual void setTextPopupClosed(SetTextPopup*, gd::string);
}


[[link(android)]]
class ShareCommentDelegate {
	virtual TodoReturn shareCommentClosed(gd::string, ShareCommentLayer*);
}


[[link(android)]]
class SetTextPopup : FLAlertLayer, TextInputDelegate {
	static SetTextPopup* create(gd::string, gd::string, int, gd::string, gd::string, bool, float);

	bool init(gd::string, gd::string, int, gd::string, gd::string, bool, float);
	~SetTextPopup();

	void onResetValue(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onCancel(cocos2d::CCObject* sender);

	TodoReturn updateTextInputLabel();

	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}


[[link(android)]]
class ShareCommentLayer : FLAlertLayer, TextInputDelegate, UploadActionDelegate, UploadPopupDelegate {
	static ShareCommentLayer* create(gd::string, int, CommentType, int, gd::string);

	bool init(gd::string, int, CommentType, int, gd::string);
	~ShareCommentLayer();

	void onClear(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender) = win 0x380130;
	void onPercent(cocos2d::CCObject* sender);

	TodoReturn updateDescText(gd::string);
	TodoReturn updatePercentLabel();
	TodoReturn updateCharCountLabel();

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);
}

[[link(android)]]
class GameObjectCopy : cocos2d::CCObject {
	static GameObjectCopy* create(GameObject*);

	bool init(GameObject*);
	~GameObjectCopy();

	TodoReturn resetObject();

	GameObject* m_object;
}

[[link(android)]]
class UndoObject : cocos2d::CCObject {
	static UndoObject* create(GameObject*, UndoCommand);

	TodoReturn initWithTransformObjects(cocos2d::CCArray*, UndoCommand);
	bool init(GameObject*, UndoCommand);
	bool init(cocos2d::CCArray*, UndoCommand);
	~UndoObject();

	void setObjects(cocos2d::CCArray*);

	TodoReturn createWithArray(cocos2d::CCArray*, UndoCommand);
	TodoReturn createWithTransformObjects(cocos2d::CCArray*, UndoCommand);

	GameObjectCopy* m_objectCopy;
    UndoCommand m_command;
    cocos2d::CCArray* m_objects;
    bool m_redo;
}


[[link(android)]]
class EndLevelLayer : GJDropDownLayer {
	static EndLevelLayer* create();

	~EndLevelLayer();

	char const* getEndText() = win 0xE96B0;
	char const* getCoinString() = win 0xE7D10;

	void onEveryplay(cocos2d::CCObject* sender);
	void onLevelLeaderboard(cocos2d::CCObject* sender);
	void onEdit(cocos2d::CCObject* sender);
	void onMenu(cocos2d::CCObject* sender) = win 0xe81d0;
	void onReplay(cocos2d::CCObject* sender);

	void playEndEffect();
	TodoReturn tryShowBanner(float);
	TodoReturn playCoinEffect(float);
	TodoReturn playStarEffect(float);
	TodoReturn coinEnterFinished(cocos2d::CCPoint);
	TodoReturn playDiamondEffect(float);
	TodoReturn starEnterFinished();
	TodoReturn coinEnterFinishedO(cocos2d::CCObject*);
	TodoReturn playCurrencyEffect(float);
	TodoReturn diamondEnterFinished();
	TodoReturn currencyEnterFinished();
	TodoReturn goEdit();

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void customSetup() = win 0xE67B0;
	virtual TodoReturn showLayer(bool);
	virtual TodoReturn enterAnimFinished();
	virtual void keyUp(cocos2d::enumKeyCodes);
}


[[link(android)]]
class DailyLevelPage : FLAlertLayer, FLAlertLayerProtocol, GJDailyLevelDelegate, LevelDownloadDelegate {
	static DailyLevelPage* create(GJTimedLevelType) = win 0x96B30;

	bool init(GJTimedLevelType) = win 0x96BD0;
	~DailyLevelPage();

	TodoReturn getDailyTime() = win 0x98200;
	TodoReturn getDailyTimeString(int) = win 0x982b0;

	void onClose(cocos2d::CCObject* sender);
	void onTheSafe(cocos2d::CCObject* sender);

	callback void updateTimers(float) = win 0x98630;
	TodoReturn exitDailyNode(DailyLevelNode*, float) = win 0x98150;
	TodoReturn skipDailyLevel(DailyLevelNode*, GJGameLevel*);
	TodoReturn createDailyNode(GJGameLevel*, bool, float, bool);
	TodoReturn claimLevelReward(DailyLevelNode*, GJGameLevel*, cocos2d::CCPoint);
	TodoReturn refreshDailyPage();
	TodoReturn tryGetDailyStatus() = win 0x97e10;
	TodoReturn createNodeIfLoaded() = win 0x97ec0;
	TodoReturn downloadAndCreateNode() = win 0x97e60;

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn show() = win 0x5D2C0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn dailyStatusFinished(GJTimedLevelType);
	virtual TodoReturn dailyStatusFailed(GJTimedLevelType, GJErrorCode);
	virtual TodoReturn levelDownloadFinished(GJGameLevel*);
	virtual TodoReturn levelDownloadFailed(int);

	cocos2d::CCLabelBMFont* m_timeLabel;
	LoadingCircle* m_timeCircle;
	LoadingCircle* m_nodeCircle;
	PAD = win 0x4, android32 0x4;
	DailyLevelNode* m_dailyNode;
	PAD = win 0x4, android32 0x4;
	GJTimedLevelType m_type;

}


[[link(android)]]
class EditLevelLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, SetIDPopupDelegate {
	static EditLevelLayer* create(GJGameLevel*);

	bool init(GJGameLevel*) = win 0x09BDF0;
	~EditLevelLayer();

	void onLevelInfo(cocos2d::CCObject* sender);
	TodoReturn onMoveToTop();
	void onSetFolder(cocos2d::CCObject* sender);
	void onGuidelines(cocos2d::CCObject* sender);
	void onLowDetailMode(cocos2d::CCObject* sender);
	void onLevelLeaderboard(cocos2d::CCObject* sender);
	void onUpdateDescription(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onEdit(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onTest(cocos2d::CCObject* sender);
	TodoReturn onClone();
	void onShare(cocos2d::CCObject* sender);
	TodoReturn onDelete();

	TodoReturn confirmClone(cocos2d::CCObject*);
	TodoReturn confirmDelete(cocos2d::CCObject*);
	TodoReturn setupLevelInfo();
	TodoReturn updateDescText(char const*);
	TodoReturn closeTextInputs();
	TodoReturn verifyLevelName();
	TodoReturn confirmMoveToTop(cocos2d::CCObject*);
	TodoReturn scene(GJGameLevel*);
	TodoReturn playStep2();
	TodoReturn playStep3();

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes);
	virtual void setIDPopupClosed(SetIDPopup*, int);
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn uploadActionFinished(int, int);
	virtual TodoReturn uploadActionFailed(int, int);
	virtual TodoReturn onClosePopup(UploadActionPopup*);

	cocos2d::CCMenu* m_buttonMenu;
	GJGameLevel* m_level;
	TextArea* m_descriptionInput;
	cocos2d::CCArray* m_someArray;
	cocos2d::CCLabelBMFont* m_folderLabel;
	bool m_unk;
	bool m_lowDetailModeTriggered;
	GJLevelType m_levelType;
}


[[link(android)]]
class GJAccountManager : cocos2d::CCNode {
	~GJAccountManager();

	TodoReturn getDLObject(char const*);
	TodoReturn getShaPassword(gd::string);
	TodoReturn getAccountSyncURL();
	TodoReturn getAccountBackupURL();

	TodoReturn onSyncAccountCompleted(gd::string, gd::string);
	TodoReturn onLoginAccountCompleted(gd::string, gd::string);
	TodoReturn onBackupAccountCompleted(gd::string, gd::string);
	TodoReturn onRegisterAccountCompleted(gd::string, gd::string);
	TodoReturn onGetAccountSyncURLCompleted(gd::string, gd::string);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onGetAccountBackupURLCompleted(gd::string, gd::string);
	TodoReturn onUpdateAccountSettingsCompleted(gd::string, gd::string);

	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	/* unverified signature */
	bool isDLActive(char const*);
	static GJAccountManager* sharedState() = win 0x186ff0;
	TodoReturn syncAccount(gd::string);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn loginAccount(gd::string, gd::string);
	TodoReturn addDLToActive(char const*);
	TodoReturn addDLToActive(char const*, cocos2d::CCObject*) = win 0x187680;
	TodoReturn backupAccount(gd::string);
	TodoReturn linkToAccount(gd::string, gd::string, int, int);
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	TodoReturn registerAccount(gd::string, gd::string, gd::string);
	TodoReturn unlinkFromAccount();
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn updateAccountSettings(int, int, int, gd::string, gd::string, gd::string) = win 0x1896b0;
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType);

	virtual bool init();

	PAD = win 0x4, android32 0x4;
	gd::string m_username;
	int m_accountID;
	PAD = win 0x8, android32 0x8;
	gd::string m_gjp2;
}

[[link(android)]]
class GJDailyLevelDelegate {
	virtual TodoReturn dailyStatusFinished(GJTimedLevelType);
	virtual TodoReturn dailyStatusFailed(GJTimedLevelType, GJErrorCode);
}


[[link(android)]]
class DailyLevelNode : cocos2d::CCNode, FLAlertLayerProtocol {
	static DailyLevelNode* create(GJGameLevel*, DailyLevelPage*, bool);

	bool init(GJGameLevel*, DailyLevelPage*, bool) = win 0x98BD0;
	~DailyLevelNode();

	void onSkipLevel(cocos2d::CCObject* sender);
	void onClaimReward(cocos2d::CCObject* sender);

	TodoReturn showSkipButton();
	TodoReturn updateTimeLabel(gd::string) = win 0x997a0;

	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = win 0x99770;

	GJGameLevel* m_level;
	DailyLevelPage* m_page;
	cocos2d::CCLabelBMFont* m_timeLabel;
	PAD = win 0x8, android32 0x8;
	CCMenuItemSpriteExtra* m_skipButton;
	bool m_unkBool;
	bool m_needsDownloading;
}


[[link(android)]]
class ColorAction : cocos2d::CCObject {
	static ColorAction* create(cocos2d::_ccColor3B, bool, int);
	static ColorAction* create(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float, double, bool);
	static ColorAction* create(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float, double, bool, int, float, float) = win 0x1d49d0;
	static ColorAction* create() = win 0x1d4980;

	bool init(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float, double, bool, int, float, float);
	~ColorAction();

	TodoReturn getCopy();

	TodoReturn resetAction();
	TodoReturn saveToState(CAState&);
	TodoReturn setupFromMap(gd::map<gd::string, gd::string>&);
	TodoReturn loadFromState(CAState&);
	TodoReturn setupFromString(gd::string);
	// TodoReturn writeSaveString(fmt::BasicWriter<char>&);
	TodoReturn updateCustomColor(cocos2d::_ccColor3B, cocos2d::_ccColor3B);
	void step(float);
	/* unverified signature */
	bool isInUse();

	bool m_stepFinished;
	// property 19
	bool m_property19;
    cocos2d::ccColor3B m_color;
    float m_currentOpacity;
    float m_deltaTime;
    cocos2d::ccColor3B m_fromColor;
    cocos2d::ccColor3B m_toColor;
    float m_duration;
    bool m_blending;
    int m_playerColor;
    int m_colorID;
    float m_fromOpacity;
    float m_toOpacity;
    cocos2d::ccHSVValue m_copyHSV;
    int m_copyID;
    bool m_unknown;
    bool m_copyOpacity;
    ColorActionSprite* m_colorSprite;
	// more stuff
}


[[link(android)]]
class CAState {
	cocos2d::ccColor3B m_fromColor;
    cocos2d::ccColor3B m_toColor;
	cocos2d::ccColor3B m_color;
	bool m_property19;
	bool m_blending;
	bool m_copyOpacity;
	bool m_unknown;
	int m_playerColor;
    int m_colorID;
	int m_copyID;
	int m_unknown2;
	float m_duration;
	float m_fromOpacity;
    float m_toOpacity;
	float m_deltaTime;
	float m_unknown3;
	cocos2d::ccHSVValue m_copyHSV;
}


[[link(android)]]
class ColorSelectPopup : SetupTriggerPopup, cocos2d::extension::ColorPickerDelegate, GJSpecialColorSelectDelegate {
	static ColorSelectPopup* create(cocos2d::_ccColor3B);
	static ColorSelectPopup* create(ColorAction*);
	static ColorSelectPopup* create(EffectGameObject*, cocos2d::CCArray*);
	static ColorSelectPopup* create(EffectGameObject*, cocos2d::CCArray*, ColorAction*);

	bool init(EffectGameObject*, cocos2d::CCArray*, ColorAction*);
	~ColorSelectPopup();

	TodoReturn getColorValue();

	// void onTintGround(cocos2d::CCObject* sender);
	// void onCopyOpacity(cocos2d::CCObject* sender);
	// void onPlayerColor1(cocos2d::CCObject* sender);
	// void onPlayerColor2(cocos2d::CCObject* sender);
	// void onHSVLegacyMode(cocos2d::CCObject* sender);
	// void onToggleHSVMode(cocos2d::CCObject* sender);
	// void onToggleTintMode(cocos2d::CCObject* sender);
	// void onUpdateCopyColor(cocos2d::CCObject* sender);
	// void onUpdateCustomColor(cocos2d::CCObject* sender);
	// void onSelectSpecialColor(cocos2d::CCObject* sender);
	// void onCopy(cocos2d::CCObject* sender);
	// void onPaste(cocos2d::CCObject* sender);
	// void onDefault(cocos2d::CCObject* sender);

	// TodoReturn colorToHex(cocos2d::_ccColor3B);
	// TodoReturn hexToColor(gd::string);
	// TodoReturn selectColor(cocos2d::_ccColor3B);
	// TodoReturn sliderChanged(cocos2d::CCObject*);
	// TodoReturn updateHSVMode();
	// TodoReturn updateOpacity();
	// TodoReturn updateDuration();
	// TodoReturn updateDurLabel();
	// TodoReturn updateHSVValue();
	// TodoReturn updateCopyColor();
	void closeColorSelect(cocos2d::CCObject*);
	// TodoReturn updateColorValue();
	// TodoReturn updateColorLabels();
	// TodoReturn updateOpacityLabel();
	// TodoReturn updateCustomColorIdx();
	// TodoReturn updateTextInputLabel();
	// TodoReturn updateCopyColorTextInputLabel();

	virtual TodoReturn show();
	virtual TodoReturn determineStartValues();
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn colorValueChanged(cocos2d::_ccColor3B);
	virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);

	PAD = android32 0x40;
	ColorAction* m_colorAction;
}

[[link(android)]]
class ColorActionSprite : cocos2d::CCNode {
	static ColorActionSprite* create() = win 0x1d4800;

	~ColorActionSprite();

	virtual bool init();
}

[[link(android)]]
class GJSpecialColorSelect : FLAlertLayer {
	static GJSpecialColorSelect* create(int, GJSpecialColorSelectDelegate*, ColorSelectType);

	bool init(int, GJSpecialColorSelectDelegate*, ColorSelectType);
	~GJSpecialColorSelect();

	TodoReturn getButtonByTag(int);

	void onSelectColor(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn textForColorIdx(int);
	TodoReturn highlightSelected(ButtonSprite*);

	virtual void keyBackClicked();
}


[[link(android)]]
class GJSpecialColorSelectDelegate {
	virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int);
}


[[link(android)]]
class ColorSelectLiveOverlay : FLAlertLayer {
	static ColorSelectLiveOverlay* create(ColorAction*, ColorAction*, EffectGameObject*);

	bool init(ColorAction*, ColorAction*, EffectGameObject*);
	~ColorSelectLiveOverlay();

	TodoReturn getColorValue();

	void onSelectTab(cocos2d::CCObject* sender);

	// TodoReturn selectColor(cocos2d::_ccColor3B);
	// TodoReturn textChanged(CCTextInputNode*);
	// TodoReturn sliderChanged(cocos2d::CCObject*);
	// TodoReturn updateOpacity();
	// TodoReturn toggleControls(bool);
	// TodoReturn textInputClosed(CCTextInputNode*);
	// TodoReturn closeColorSelect(cocos2d::CCObject*);
	// TodoReturn createWithObject(EffectGameObject*);
	// TodoReturn updateColorLabel();
	// TodoReturn updateColorValue();
	// TodoReturn colorValueChanged(cocos2d::_ccColor3B);
	// TodoReturn createWithActions(ColorAction*, ColorAction*);
	// TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	// TodoReturn determineStartValues();

	virtual void keyBackClicked();
	virtual TodoReturn show();

	EffectGameObject* m_effectGameObject;
    cocos2d::CCArray* m_barSprites;
    cocos2d::CCArray* m_12buttons;
    ColorAction* m_baseColorAction;
    ColorAction* m_detailColorAction;
}


[[link(android)]]
class SetupTriggerPopup : FLAlertLayer, TextInputDelegate, ConfigureValuePopupDelegate, SliderDelegate {
	static SetupTriggerPopup* create(float, float);
	static SetupTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*, float, float, int);

	bool init(EffectGameObject*, cocos2d::CCArray*, float, float, int);
	~SetupTriggerPopup();

	// TodoReturn getObjects();
	// TodoReturn getTriggerValue(int, GameObject*);
	// TodoReturn getPageContainer(int);
	// TodoReturn getGroupContainer(int);
	// TodoReturn getMaxSliderValue(int);
	// TodoReturn getMinSliderValue(int);
	// TodoReturn getTruncatedValue(float, int);
	// TodoReturn getTruncatedValueByTag(int, float);

	// /* unverified signature */
	// void setMaxSliderValue(float, int);
	// /* unverified signature */
	// void setMinSliderValue(float, int);

	// void onEaseRate(cocos2d::CCObject* sender);
	// void onPlusButton(cocos2d::CCObject* sender);
	// void onCustomButton(cocos2d::CCObject* sender);
	// void onDisableValue(cocos2d::CCObject* sender);
	// void onMultiTrigger(cocos2d::CCObject* sender);
	// void onCustomEaseRate(cocos2d::CCObject* sender);
	// void onTouchTriggered(cocos2d::CCObject* sender);
	// TodoReturn onCustomEaseArrow(int, bool);
	// void onSpawnedByTrigger(cocos2d::CCObject* sender);
	// void onCustomEaseArrowUp(cocos2d::CCObject* sender);
	// void onToggleTriggerValue(cocos2d::CCObject* sender);
	// void onCustomEaseArrowDown(cocos2d::CCObject* sender);
	// void onCustomToggleTriggerValue(cocos2d::CCObject* sender);
	// void onEase(cocos2d::CCObject* sender);
	// void onPage(cocos2d::CCObject* sender);
	// void onClose(cocos2d::CCObject* sender);

	// TodoReturn updateLabel(int, gd::string);
	// TodoReturn updateValue(int, float);
	// TodoReturn addInfoLabel(gd::string, float, cocos2d::CCPoint, int, int);
	// TodoReturn updateSlider(int);
	// TodoReturn updateSlider(int, float);
	// TodoReturn valueChanged(int, float);
	// TodoReturn addHelpButton(gd::string, gd::string, float);
	// TodoReturn addCloseButton(gd::string);
	// TodoReturn addObjectToPage(cocos2d::CCObject*, int);
	// TodoReturn closeInputNodes();
	// TodoReturn updateEaseLabel();
	// TodoReturn addObjectsToPage(cocos2d::CCArray*, int);
	// TodoReturn addObjectToGroup(cocos2d::CCObject*, int);
	// TodoReturn createPlusButton(int, cocos2d::CCPoint, float, gd::string, int, int);
	// TodoReturn shouldLimitValue(int);
	// TodoReturn toggleLimitValue(int, bool);
	// TodoReturn togglePageArrows(bool);
	// TodoReturn triggerArrowLeft(cocos2d::CCObject*);
	// TodoReturn addObjectsToGroup(cocos2d::CCArray*, int);
	// TodoReturn createPageButtons(float, int);
	// TodoReturn triggerArrowRight(cocos2d::CCObject*);
	// TodoReturn updateEditorLabel();
	// TodoReturn createCustomButton(int, gd::string, gd::string, cocos2d::CCPoint, float, float, bool, int, int);
	// TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCPoint);
	// TodoReturn createValueControl(int, gd::string, cocos2d::CCPoint, float, float, float);
	// TodoReturn resetDisabledValues();
	// TodoReturn triggerArrowChanged(int, bool);
	// TodoReturn updateEaseRateLabel();
	// TodoReturn updateValueControls(int, float);
	// TodoReturn createEasingControls(cocos2d::CCPoint, float, int, int);
	// TodoReturn removeObjectFromPage(cocos2d::CCObject*, int);
	// TodoReturn toggleDisableButtons(bool);
	// TodoReturn triggerSliderChanged(cocos2d::CCObject*);
	// TodoReturn updateInputNodeLabel(int, gd::string);
	// TodoReturn updateTouchTriggered();
	// TodoReturn removeObjectFromGroup(cocos2d::CCObject*, int);
	// TodoReturn updateCustomEaseLabel(int, int);
	// TodoReturn updateMultiTriggerBtn();
	// TodoReturn refreshGroupVisibility();
	// TodoReturn updateSpawnedByTrigger();
	// TodoReturn createMultiTriggerItems(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);
	// TodoReturn createToggleValueControl(int, gd::string, cocos2d::CCPoint, bool, int, int, float);
	// TodoReturn toggleEaseRateVisibility();
	// TodoReturn createValueControlWArrows(int, gd::string, cocos2d::CCPoint, float);
	// TodoReturn updateCustomEaseRateLabel(int, float);
	// TodoReturn updateCustomToggleTrigger(int, bool);
	// TodoReturn createCustomEasingControls(gd::string, cocos2d::CCPoint, float, int, int, int, int);
	// TodoReturn createValueControlAdvanced(int, gd::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float, float, int, int, GJInputStyle, int, bool);
	// TodoReturn createMultiTriggerItemsCorner();
	// TodoReturn createCustomToggleValueControl(int, bool, bool, gd::string, cocos2d::CCPoint, bool, int, int);
	// TodoReturn createMultiTriggerItemsDefault();
	// TodoReturn toggleCustomEaseRateVisibility(int, int);
	// TodoReturn createToggleValueControlAdvanced(int, gd::string, cocos2d::CCPoint, bool, int, int, float, float, float, cocos2d::CCPoint);
	// TodoReturn createMultiTriggerItemsDefaultVertical();
	// TodoReturn createMultiTriggerItemsDefaultHorizontal();
	// TodoReturn hideAll();
	// TodoReturn addTitle(gd::string);
	// TodoReturn goToPage(int, bool);
	// TodoReturn preSetup();
	// TodoReturn toggleBG(bool);
	// TodoReturn postSetup();

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void keyBackClicked();
	virtual TodoReturn show();
	virtual TodoReturn pageChanged();
	virtual TodoReturn toggleGroup(int, bool);
	virtual TodoReturn determineStartValues();
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
	virtual TodoReturn updateInputValue(int, float&);
	virtual TodoReturn sliderBegan(Slider*);
	virtual TodoReturn sliderEnded(Slider*);
	virtual TodoReturn updateDefaultTriggerValues();
	virtual TodoReturn updateInputNode(int, float);
	virtual TodoReturn updateToggleItem(int, bool);
	virtual TodoReturn valueDidChange(int, float);
	virtual TodoReturn getValue(int);
	virtual TodoReturn triggerValueFromSliderValue(int, float);
	virtual TodoReturn triggerSliderValueFromValue(int, float);
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float);

	PAD = android32 0xac;
}


[[link(android)]]
class ConfigureValuePopupDelegate {
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float);
}


[[link(android)]]
class SliderDelegate {
	virtual TodoReturn sliderBegan(Slider*);
	virtual TodoReturn sliderEnded(Slider*);
}


[[link(android)]]
class ConfigureValuePopup : FLAlertLayer, TextInputDelegate {
	static ConfigureValuePopup* create(ConfigureValuePopupDelegate*, float, float, float, gd::string, gd::string);

	bool init(ConfigureValuePopupDelegate*, float, float, float, gd::string, gd::string);
	~ConfigureValuePopup();

	void onClose(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateTextInputLabel();

	virtual void keyBackClicked();
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class SelectArtDelegate {
	virtual TodoReturn selectArtClosed(SelectArtLayer*);
}


[[link(android)]]
class SelectArtLayer : FLAlertLayer {
	static SelectArtLayer* create(SelectArtType, int);

	bool init(SelectArtType, int);
	~SelectArtLayer();

	void onSelectCustom(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateSelectedCustom(int);
	TodoReturn selectArt(cocos2d::CCObject*);

	virtual void keyBackClicked();
}

[[link(android)]]
class SelectSettingDelegate {
	virtual TodoReturn selectSettingClosed(SelectSettingLayer*);
}


[[link(android)]]
class SelectSettingLayer : FLAlertLayer {
	static SelectSettingLayer* create(SelectSettingType, int);

	bool init(SelectSettingType, int);
	~SelectSettingLayer();

	TodoReturn getSelectedFrame();
	TodoReturn getSelectedValue();

	void onClose(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);

	TodoReturn idxToValue(SelectSettingType, int);
	TodoReturn valueToIdx(SelectSettingType, int);
	TodoReturn frameForItem(SelectSettingType, int);
	TodoReturn frameForValue(SelectSettingType, int);

	virtual void keyBackClicked();
}

[[link(android)]]
class CustomSongLayerDelegate {
	virtual TodoReturn customSongLayerClosed();
}

[[link(android)]]
class LevelSettingsLayer : FLAlertLayer, ColorSelectDelegate, SelectArtDelegate, SelectSettingDelegate, FLAlertLayerProtocol, CustomSongLayerDelegate, TextInputDelegate {
	static LevelSettingsLayer* create(LevelSettingsObject*, LevelEditorLayer*);

	bool init(LevelSettingsObject*, LevelEditorLayer*);
	~LevelSettingsLayer();

	void onLiveEdit(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onSelectFont(cocos2d::CCObject* sender);
	void onSelectMode(cocos2d::CCObject* sender);
	void onShowPicker(cocos2d::CCObject* sender);
	void onSelectSpeed(cocos2d::CCObject* sender);
	void onGameplayMode(cocos2d::CCObject* sender);
	void onOptionToggle(cocos2d::CCObject* sender);
	void onCol(cocos2d::CCObject* sender);
	void onGArt(cocos2d::CCObject* sender);
	void onMode(cocos2d::CCObject* sender);
	void onBGArt(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onFGArt(cocos2d::CCObject* sender);
	void onSpeed(cocos2d::CCObject* sender);
	void onDisable(cocos2d::CCObject* sender);

	TodoReturn showPicker(ColorAction*);
	TodoReturn updateColorSprite(ColorChannelSprite*);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn updateColorSprites();
	TodoReturn updateGameplayModeButtons();

	virtual void registerWithTouchDispatcher();
	virtual void keyBackClicked();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*);
	virtual TodoReturn selectArtClosed(SelectArtLayer*);
	virtual TodoReturn selectSettingClosed(SelectSettingLayer*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textChanged(CCTextInputNode*);
}

[[link(android)]]
class GJChallengeItem : cocos2d::CCObject {
	static GJChallengeItem* create(GJChallengeType, int, int, int, gd::string);
	static GJChallengeItem* create();

	bool init(GJChallengeType, int, int, int, gd::string);
	~GJChallengeItem();

	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn incrementCount(int);
	TodoReturn createWithCoder(DS_Dictionary*);
	TodoReturn createFromString(gd::string);

	virtual void encodeWithCoder(DS_Dictionary*);
	virtual bool canEncode();

    GJChallengeType m_challengeType;
    geode::SeedValueSRV m_count;
    geode::SeedValueSRV m_reward;
    geode::SeedValueSRV m_goal;
    int m_timeLeft;
    bool m_canClaim;
    int m_position;
    gd::string m_name;
}

[[link(android)]]
class LocalLevelManager : GManager {
	~LocalLevelManager();

	TodoReturn getCreatedLists(int);
	TodoReturn getCreatedLevels(int);
	cocos2d::CCDictionary* getAllLevelsInDict();
	gd::string getMainLevelString(int) = win 0x273230;
	TodoReturn getAllLevelsWithName(gd::string);
	TodoReturn getLevelsInNameGroups();

    inline static LocalLevelManager* get() {
        return LocalLevelManager::sharedState();
    }
	static LocalLevelManager* sharedState() = win 0x272F00;
	TodoReturn reorderLevels();
	TodoReturn moveLevelToTop(GJGameLevel*);
	TodoReturn updateLevelOrder();
	TodoReturn updateLevelRevision();
	TodoReturn markLevelsAsUnmodified();
	TodoReturn tryLoadMainLevelString(int) = win 0x2730A0;

	virtual bool init();
	virtual TodoReturn encodeDataTo(DS_Dictionary*);
	virtual TodoReturn dataLoaded(DS_Dictionary*);
	virtual TodoReturn firstLoad();

	cocos2d::CCArray* m_localLevels;
	cocos2d::CCArray* m_LLM03;
	gd::map<int, gd::string> m_mainLevels;
}


[[link(android)]]
class GJEffectManager : cocos2d::CCNode {
	static GJEffectManager* create();

	~GJEffectManager();

	// TodoReturn getMixedColor(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float);
	// TodoReturn getSaveString();
	TodoReturn getColorAction(int) = win 0x1d7a60;
	TodoReturn getColorSprite(int) = win 0x1d7ae0;
	// TodoReturn getAllColorActions();
	// TodoReturn getAllColorSprites();
	// TodoReturn getMoveCommandNode(GroupCommandObject2*);
	// TodoReturn getLoadedMoveOffset(gd::unordered_map<int, std::pair<double, double>>&);
	// TodoReturn getTempGroupCommand();
	// TodoReturn getMoveCommandObject();
	// TodoReturn getOpacityActionForGroup(int);

	// void setFollowing(int, int, bool);
	// void setColorAction(ColorAction*, int);

	// TodoReturn pauseTimer(int);
	TodoReturn playerDied() = win 0x1de560;
	// TodoReturn spawnGroup(int, float, bool, gd::vector<int> const&, int, int);
	// TodoReturn startTimer(int, double, double, bool, bool, bool, float, bool, int, gd::vector<int> const&, int, int);
	// TodoReturn colorExists(int);
	// TodoReturn resumeTimer(int);
	// TodoReturn saveToState(EffectManagerState&) = win 0x1dfe50;
	// TodoReturn shouldBlend(int);
	// TodoReturn spawnObject(GameObject*, float, gd::vector<int> const&, int, int);
	// TodoReturn timeForItem(int);
	// TodoReturn timerExists(int);
	// TodoReturn toggleGroup(int, bool);
	// TodoReturn updateTimer(int, double);
	// TodoReturn countForItem(int);
	// TodoReturn playerButton(bool, bool);
	// TodoReturn resetEffects();
	// TodoReturn updateColors(cocos2d::_ccColor3B, cocos2d::_ccColor3B);
	// TodoReturn updateTimers(float, float);
	// TodoReturn wasFollowing(int, int);
	// TodoReturn colorForIndex(int);
	// TodoReturn loadFromState(EffectManagerState&);
	// TodoReturn processColors();
	// TodoReturn updateEffects(float);
	// TodoReturn addCountToItem(int, int);
	// TodoReturn checkCollision(int const&, int const&);
	// TodoReturn colorForEffect(cocos2d::_ccColor3B, cocos2d::_ccHSVValue);
	// /* unverified signature */
	// bool isGroupEnabled(int);
	// TodoReturn runPulseEffect(int, bool, float, float, float, PulseEffectType, cocos2d::_ccColor3B, cocos2d::_ccHSVValue, int, bool, bool, bool, bool, int, int);
	// TodoReturn colorForGroupID(int, cocos2d::_ccColor3B const&, bool);
	TodoReturn objectsCollided(int, int) = win 0x1d7fa0;
	// TodoReturn opacityForIndex(int);
	// TodoReturn postMoveActions();
	// TodoReturn runCountTrigger(int, int, bool, int, bool, gd::vector<int> const&, int, int);
	// TodoReturn runDeathTrigger(int, bool, gd::vector<int> const&, int, int);
	// TodoReturn runTimerTrigger(int, double, bool, int, gd::vector<int> const&, int, int);
	// TodoReturn setupFromString(gd::string);
	// TodoReturn wouldCreateLoop(InheritanceNode*, int) = win 0x1d7a30;
	// TodoReturn hasBeenTriggered(int, int);
	// TodoReturn resetMoveActions();
	// TodoReturn storeTriggeredID(int, int);
	// TodoReturn createMoveCommand(cocos2d::CCPoint, int, float, int, float, bool, bool, bool, bool, float, float, int, int);
	// TodoReturn preCollisionCheck();
	// TodoReturn removeColorAction(int);
	// TodoReturn removeTriggeredID(int, int);
	// TodoReturn resetTriggeredIDs();
	// TodoReturn saveCompletedMove(int, double, double);
	// TodoReturn updateColorAction(ColorAction*);
	// TodoReturn addMoveCalculation(CCMoveCNode*, cocos2d::CCPoint, GameObject*);
	// TodoReturn colorActionChanged(ColorAction*);
	// TodoReturn hasActiveDualTouch();
	// TodoReturn keyForGroupIDColor(int, cocos2d::_ccColor3B const&, bool);
	// TodoReturn opacityModForGroup(int);
	// TodoReturn postCollisionCheck();
	// TodoReturn prepareMoveActions(float, bool);
	// TodoReturn resetToggledGroups();
	// TodoReturn updateColorEffects(float);
	// TodoReturn updateCountForItem(int, int);
	// TodoReturn updatePulseEffects(float);
	TodoReturn activeColorForIndex(int) = win 0x1d7390;
	// TodoReturn colorForPulseEffect(cocos2d::_ccColor3B const&, PulseEffectAction*) = win 0x1ddbc0;
	// TodoReturn createFollowCommand(float, float, float, int, int, int, int);
	// TodoReturn createRotateCommand(float, float, int, int, int, float, bool, bool, bool, int, int);
	TodoReturn processPulseActions() = win 0x1dd8e0;
	// TodoReturn updateOpacityAction(OpacityEffectAction*);
	// TodoReturn updateSpawnTriggers(float);
	// TodoReturn toggleItemPersistent(int, bool);
	// TodoReturn updateOpacityEffects(float);
	// TodoReturn activeOpacityForIndex(int);
	TodoReturn calculateLightBGColor(cocos2d::_ccColor3B) = win 0x1df6c0;
	// TodoReturn createKeyframeCommand(int, cocos2d::CCArray*, GameObject*, int, int, bool, float, float, float, float, float, float, gd::vector<int> const&);
	// TodoReturn handleObjectCollision(bool, int, int);
	// TodoReturn removeAllPulseActions();
	// TodoReturn toggleTimerPersistent(int, bool);
	// TodoReturn tryGetMoveCommandNode(int);
	// TodoReturn createTransformCommand(double, double, double, double, bool, float, int, int, int, float, bool, bool, int, int);
	TodoReturn processInheritedColors() = win 0x1d74e0;
	// TodoReturn resetTempGroupCommands(bool);
	// TodoReturn runTouchTriggerCommand(int, bool, TouchTriggerType, TouchTriggerControl, bool, gd::vector<int> const&, int, int);
	// TodoReturn calculateInheritedColor(int, ColorAction*);
	// TodoReturn processMoveCalculations();
	// TodoReturn registerRotationCommand(GroupCommandObject2*, bool);
	// TodoReturn runOpacityActionOnGroup(int, float, float, int, int);
	// TodoReturn transferPersistentItems();
	// TodoReturn controlActionsForTrigger(EffectGameObject*, GJActionCommand);
	// TodoReturn hasPulseEffectForGroupID(int);
	// TodoReturn registerCollisionTrigger(int, int, int, bool, bool, gd::vector<int> const&, int, int);
	// TodoReturn traverseInheritanceChain(InheritanceNode*) = win 0x1d7730;
	TodoReturn calculateBaseActiveColors() = win 0x1d7410;
	// TodoReturn createPlayerFollowCommand(float, float, int, float, float, int, int, int);
	// TodoReturn controlActionsForControlID(int, GJActionCommand);
	// TodoReturn updateActiveOpacityEffects();
	// TodoReturn addAllInheritedColorActions(cocos2d::CCArray*);
	TodoReturn processCopyColorPulseActions() = win 0x1dd9a0;
	// TodoReturn removePersistentFromAllItems();
	// TodoReturn removePersistentFromAllTimers();
	// TodoReturn reset();

	virtual bool init() = win 0x1d6f50;
}
