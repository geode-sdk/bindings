
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
	void show() = win 0x31c60;

	// doesnt exist on windows, nor android armv8..
	// virtual void onEnter();
	virtual void registerWithTouchDispatcher() = win 0x31df0;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31ac0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31c10;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31b50;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31bc0;

	virtual void keyBackClicked() = win 0x319a0;

	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x31930;

    // 2.2 order not tested

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
	void onSecretVault(cocos2d::CCObject* sender);
	void onWeeklyLevel(cocos2d::CCObject* sender);
	void onAdventureMap(cocos2d::CCObject* sender) = win 0x706C0;
	void onLeaderboards(cocos2d::CCObject* sender);
	void onOnlineLevels(cocos2d::CCObject* sender) = win 0x701E0;
	void onTreasureRoom(cocos2d::CCObject* sender) = win 0x70C50;
	void onFeaturedLevels(cocos2d::CCObject* sender) = win 0x700C0;
	void onOnlyFullVersion(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onPaths(cocos2d::CCObject* sender);

	TodoReturn dialogClosed(DialogLayer*) = win 0x711d0;
	TodoReturn checkQuestsStatus();
	TodoReturn canPlayOnlineLevels();
	TodoReturn scene();

	virtual bool init() = win 0x6F090;

	virtual void keyBackClicked();

	virtual void sceneWillResume();
}

[[link(android)]]
class BoomScrollLayerDelegate {
	TodoReturn scrollLayerMoved(cocos2d::CCPoint);
	TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int);
	TodoReturn scrollLayerScrollingStarted(BoomScrollLayer*);
	TodoReturn scrollLayerWillScrollToPage(BoomScrollLayer*, int);
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
	TodoReturn scrollLayerMoved(cocos2d::CCPoint);
	TodoReturn updatePageWithObject(cocos2d::CCObject*, cocos2d::CCObject*);
	TodoReturn scene(int);
	TodoReturn tryShowAd();

	virtual void keyBackClicked();

	virtual void keyDown(cocos2d::enumKeyCodes);
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
	TodoReturn loadLevelsFailed(char const*, int);
	TodoReturn unlockActiveItem();
	TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int);
	TodoReturn scene(GauntletType);

	virtual void keyBackClicked();
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
	void setSizeMult(float);

	virtual void activate();
	virtual void selected();
	virtual void unselected();

	// 2.2 not tested
	float m_scaleMultiplier;
    float m_baseScale;
    bool m_animationEnabled;
    bool m_colorEnabled;
    float m_unknown;
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

	void onClickTrackNode(bool) = win 0x02f600;

	TodoReturn addTextArea(TextArea*);
	TodoReturn forceOffset();
	void updateLabel(gd::string) = win 0x2eac0;
	void refreshLabel() = win 0x2ede0;
	TodoReturn updateBlinkLabel();
	TodoReturn updateCursorPosition(cocos2d::CCPoint, cocos2d::CCRect);
	TodoReturn updateBlinkLabelToChar(int);
	TodoReturn updateDefaultFontValues(gd::string);

	virtual void visit();
	virtual void registerWithTouchDispatcher();

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);

	virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
	virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);

	virtual bool onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF*);
	virtual bool onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF*);
	virtual bool onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int, cocos2d::enumKeyCodes);
	virtual void textChanged();

	// 2.2, very wrong since this class changed a lot
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
	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler) = win 0x9999999;
	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, float) = win 0x9999999;
	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float) = win 0x04ce90;

	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float);
	~Slider();

	TodoReturn getLiveDragging();
	SliderThumb* getThumb();
	float getValue() = win 0x9999999;

	void setRotated(bool);
	void setMaxOffset(float);
	void setLiveDragging(bool);
	void setBarVisibility(bool);
	void setValue(float) = win 0x9999999;

	TodoReturn hideGroove(bool);
	TodoReturn sliderBegan();
	TodoReturn sliderEnded();
	TodoReturn disableTouch();
	TodoReturn enableSlider();
	TodoReturn disableSlider();
	void updateBar() = win 0x9999999;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);

	// 2.2, not tested
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
	TodoReturn scrollViewTouchMoving(CCScrollLayerExt*);
	TodoReturn checkBoundaryOfContent(float);
	TodoReturn scrollViewDidEndMoving(CCScrollLayerExt*);
	TodoReturn scrollViewDidEndDecelerating(CCScrollLayerExt*);
	/* unverified signature */
	bool isDuplicateInVisibleCellArray(CCIndexPath*);
	TodoReturn scrllViewWillBeginDecelerating(CCScrollLayerExt*);
	TodoReturn dequeueReusableCellWithIdentifier(char const*);
	TodoReturn removeIndexPathFromPathAddedArray(CCIndexPath&);
	TableView(cocos2d::CCRect);

	virtual void onEnter();
	virtual void onExit();
	virtual void registerWithTouchDispatcher();

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);

	virtual void scrollWheel(float, float);

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
	int m_unknown4;
}


[[link(android)]]
class TableViewDelegate {
	virtual void willTweenToIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual void didEndTweenToIndexPath(CCIndexPath&, TableView*) {}
	virtual void TableViewDidDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual void TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual void TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	// these are pure virtuals
	virtual float cellHeightForRowAtIndexPath(CCIndexPath&, TableView*) { return 0; }
    virtual void didSelectRowAtIndexPath(CCIndexPath&, TableView*) {}
}

[[link(android)]]
class TextInputDelegate {
	virtual void textChanged(CCTextInputNode*);
	virtual void enterPressed(CCTextInputNode*);
	virtual void allowTextInput(CCTextInputNode*);
	virtual void textInputClosed(CCTextInputNode*);
	virtual void textInputOpened(CCTextInputNode*);
	virtual void textInputReturn(CCTextInputNode*);
	virtual void textInputShouldOffset(CCTextInputNode*, float);
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
	virtual TodoReturn getSelectedCellIdx();
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
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

	TodoReturn scrollLayer(float) = win 0x9999999;
	TodoReturn scrollingEnd();
	TodoReturn updateIndicators(float);
	TodoReturn constraintContent();
	TodoReturn doConstraintContent(bool);
	void moveToTopWithOffset(float) = win 0x27ae0;
	TodoReturn preVisitWithClippingRect(cocos2d::CCRect);
	void moveToTop() = win 0x27b60;
	TodoReturn postVisit();

	virtual void visit() = win 0x28600;
	virtual void registerWithTouchDispatcher() = win 0x280a0;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x280d0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x281c0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x28410;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x283e0;

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

	virtual TableViewCell* getListCell(char const*);
	float getCellHeight(BoomListType);

    virtual void loadCell(TableViewCell*, int) = win 0x7B2D0;
	TodoReturn reloadAll();
	virtual void setupList(float) = win 0x7B710;

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
    virtual TableViewCell* getListCell(const char*) = win 0x1d6d0;
    virtual void loadCell(TableViewCell*, int) = win 0x1d7b0;
    inline bool init(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
        return this->init(entries, nullptr, height, width, 0, type, 0.0f);
    }
    TodoReturn addObjectToList(cocos2d::CCNode*);
    TodoReturn lockList(bool);

	// 2.2, not tested

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

    virtual void activate() = win 0x26100;
    virtual void selected() = win 0x260d0;
    virtual void unselected() = win 0x26130;
    virtual void setEnabled(bool enabled) = win 0x26160;

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
	static cocos2d::CCScene* scene(bool) = win 0x12c470;

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
	void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x277ea0;
	TodoReturn firstNetworkTest() = mac 0x36fa30, win 0x277900;
	TodoReturn onOptionsInstant();
	TodoReturn showMeltdownPromo(); // empty
	TodoReturn googlePlaySignedIn() = win 0x9999999;
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
	void onToggleItem(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onShop(cocos2d::CCObject* sender);
	void onArrow(cocos2d::CCObject* sender);
	void onPaint(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);
	void onShards(cocos2d::CCObject* sender);
	void onSpecial(cocos2d::CCObject* sender);

	TodoReturn toggleGlow();
	TodoReturn updateRate();
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn dialogClosed(DialogLayer*);
	TodoReturn titleForUnlock(int, UnlockType);
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn setupIconSelect();
	TodoReturn showUnlockPopup(int, UnlockType);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn playShadowEffect();
	TodoReturn setupSpecialPage();
	TodoReturn updatePlayerName(char const*);
	TodoReturn playRainbowEffect();
	TodoReturn playerColorChanged();
	TodoReturn showUnlockPopupNew(int, UnlockType);
	TodoReturn updatePlayerColors();
	TodoReturn achievementForUnlock(int, UnlockType);
	TodoReturn descriptionForUnlock(int, UnlockType);
	TodoReturn listButtonBarSwitchedPage(ListButtonBar*, int);
	TodoReturn scene();
	TodoReturn selectTab(IconType);
	TodoReturn setupPage(int, IconType);

	virtual bool init() = 0x1EAA40;

	virtual void keyBackClicked();
}

[[link(android)]]
class GJBaseGameLayer : cocos2d::CCLayer, TriggerEffectDelegate {
	// ~GJBaseGameLayer();

	// TodoReturn getBumpMod(PlayerObject*, int);
	// TodoReturn getItemValue(int, int);
	// TodoReturn getMaxPortalY();
	// TodoReturn getMinPortalY();
	// TodoReturn getSpecialKey(int, bool, bool);
	// TodoReturn getGroupParent(int);
	// TodoReturn getMinDistance(cocos2d::CCPoint, cocos2d::CCArray*, float, int);
	// TodoReturn getOtherPlayer(PlayerObject*);
	// TodoReturn getParticleKey(int, char const*, int, cocos2d::tCCPositionType);
	// TodoReturn getStaticGroup(int);
	// TodoReturn getStickyGroup(int);
	// TodoReturn getTargetGroup(int, int);
	// TodoReturn getGroundHeight(PlayerObject*, int);
	// TodoReturn getParticleKey2(gd::string);
	// TodoReturn getPortalTarget(TeleportPortalObject*);
	// TodoReturn getRecordString();
	// TodoReturn getModifiedDelta(float);
	// TodoReturn getSavedPosition(int, float);
	// TodoReturn getCapacityString();
	// TodoReturn getEnterEasingKey(int, float);
	// TodoReturn getFollowSpeedVal(GameObject*, int, int, float, float);
	// TodoReturn getOptimizedGroup(int);
	// TodoReturn getPlayerButtonID(int, bool);
	// TodoReturn getPlayTimerMilli();
	// TodoReturn getCameraEdgeValue(int);
	// TodoReturn getMoveTargetDelta(EffectGameObject*, bool);
	// TodoReturn getPortalTargetPos(TeleportPortalObject*, GameObject*, PlayerObject*);
	// TodoReturn getEnterEasingValue(float, int, float, int);
	// TodoReturn getTargetFlyCameraY(GameObject*);
	// TodoReturn getCenterGroupObject(int, int);
	// TodoReturn getSingleGroupObject(int);
	// TodoReturn getTargetGroupOrigin(int, int);
	// TodoReturn getCustomEnterEffects(int, bool);
	// TodoReturn getGroupParentsString(GameObject*);
	// TodoReturn getScaledGroundHeight(float);
	// TodoReturn getGroundHeightForMode(int);
	// TodoReturn getPlayTimerFullSeconds();
	// TodoReturn getRotateCommandTargets(EnhancedTriggerObject*, GameObject*&, GameObject*&, GameObject*&);
	// TodoReturn getActiveOrderSpawnObjects();
	// TodoReturn getGroup(int);

	// /* unverified signature */
	// void setGroupParent(GameObject*, int);
	// /* unverified signature */
	// void setStartPosObject(StartPosObject*);

	// TodoReturn addToGroup(GameObject*, int, bool);
	// TodoReturn applyRemap(EffectGameObject*, gd::vector<int> const&, gd::unordered_map<int, int>&);
	// TodoReturn applyShake(cocos2d::CCPoint&) = win 0x1BD670;
	// TodoReturn atlasValue(int);
	// TodoReturn bumpPlayer(PlayerObject*, EffectGameObject*);
	// /* unverified signature */
	// bool isFlipping();
	// TodoReturn moveObject(GameObject*, double, double, bool);
	// TodoReturn pauseAudio() = win 0x1B7460;
	// TodoReturn pickupItem(EffectGameObject*);
	// TodoReturn postUpdate(float);
	// TodoReturn resetAudio();
	// TodoReturn sortGroups();
	// TodoReturn spawnGroup(int, bool, double, gd::vector<int> const&, int, int);
	// TodoReturn swapGround(int);
	// TodoReturn updateOBB2(cocos2d::CCRect);
	// TodoReturn updateZoom(float, float, int, float, int, int);
	// TodoReturn addGuideArt(GameObject*);
	// TodoReturn addKeyframe(KeyframeGameObject*);
	// TodoReturn addToGroups(GameObject*, bool);
	// TodoReturn addUIObject(GameObject*);
	// TodoReturn cameraMoveX(float, float, float, bool);
	// TodoReturn cameraMoveY(float, float, float, bool);
	// TodoReturn checkForEnd();
	// TodoReturn flipGravity(PlayerObject*, bool, bool);
	// TodoReturn flipObjects();
	void moveObjects(cocos2d::CCArray*, double, double, bool) = win 0x1ADE90;
	void queueButton(int, bool, bool) = win 0x1B19C0;
	// TodoReturn resetCamera() = win 0x1BE060;
	// TodoReturn resetPlayer() = win 0x195ED5;
	void resumeAudio() = win 0x1B74C0;
	// TodoReturn setupLayers();
	// TodoReturn setupReplay(gd::string);
	// TodoReturn shakeCamera(float, float, float);
	// TodoReturn spawnObject(GameObject*, double, gd::vector<int> const&);
	// TodoReturn toggleGroup(int, bool);
	// TodoReturn updateColor(cocos2d::_ccColor3B&, float, int, bool, float, cocos2d::_ccHSVValue&, int, bool, EffectGameObject*, int, int);
	// TodoReturn addToSection(GameObject*);
	// TodoReturn asyncGLoaded(int);
	// TodoReturn createPlayer();
	// TodoReturn flipFinished();
	// TodoReturn handleButton(bool, int, bool);
	// TodoReturn processItems();
	// TodoReturn recordAction(int, bool, bool);
	// TodoReturn restoreRemap(EffectGameObject*, gd::unordered_map<int, int>&);
	// TodoReturn rotateObject(GameObject*, float);
	// TodoReturn spawnPlayer2();
	// TodoReturn tryGetObject(int);
	// TodoReturn updateCamera(float) = win 0x1BCBEF;
	// TodoReturn updateReplay();
	// TodoReturn addAreaEffect(EnterEffectObject*, gd::vector<EnterEffectInstance>*, GJAreaActionType);
	void applyTimeWarp(float) = win 0x1B5600;
	// TodoReturn asyncBGLoaded(int);
	// TodoReturn asyncMGLoaded(int);
	// TodoReturn canProcessSFX(SFXTriggerState&, gd::unordered_map<int, int>&, gd::unordered_map<int, float>&, gd::vector<SFXTriggerState>&);
	// TodoReturn checkSnapshot();
	// TodoReturn claimParticle(gd::string, int);
	// TodoReturn destroyObject(GameObject*);
	// TodoReturn destroyPlayer(PlayerObject*, GameObject*);
	// TodoReturn enterDualMode(GameObject*, bool);
	// TodoReturn hasUniqueCoin(EffectGameObject*);
	// TodoReturn preResumeGame();
	// TodoReturn removePlayer2();
	// TodoReturn rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint, cocos2d::CCPoint, bool, bool);
	// TodoReturn spawnParticle(char const*, int, cocos2d::tCCPositionType, cocos2d::CCPoint);
	// TodoReturn toggleFlipped(bool, bool);
	// TodoReturn toggleGlitter(bool);
	// TodoReturn updateTimeMod(float, bool, bool);
	// TodoReturn animatePortalY(float, float, float, float);
	// TodoReturn canTouchObject(GameObject*);
	// TodoReturn checkCollision(int, int);
	// TodoReturn createParticle(int, char const*, int, cocos2d::tCCPositionType);
	// TodoReturn gravBumpPlayer(PlayerObject*, EffectGameObject*);
	// TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::_ccColor3B);
	// TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::_ccColor3B, float, float, int, bool, float);
	// TodoReturn removeKeyframe(KeyframeGameObject*);
	// TodoReturn reparentObject(cocos2d::CCNode*, cocos2d::CCNode*);
	// TodoReturn rotateGameplay(RotateGameplayGameObject*);
	// TodoReturn sortAllGroupsX();
	// TodoReturn stopSFXTrigger(SFXTriggerGameObject*);
	// TodoReturn swapBackground(int);
	// TodoReturn syncBGTextures() = win 0x1B98C0;
	// TodoReturn teleportPlayer(TeleportPortalObject*, PlayerObject*);
	// TodoReturn toggleDualMode(GameObject*, bool, PlayerObject*, bool);
	// TodoReturn tryResumeAudio();
	// TodoReturn updateCounters(int, int);
	// TodoReturn updateGuideArt();
	// TodoReturn updateTimeWarp(float);
	// TodoReturn updateTimeWarp(GameObject*, float);
	// TodoReturn addRemapTargets(gd::set<int>&);
	// TodoReturn checkCollisions(PlayerObject*, float, bool);
	// TodoReturn claimMoveAction(int, bool);
	// TodoReturn collectedObject(EffectGameObject*);
	// /* unverified signature */
	// bool isPlayer2Button(int);
	// TodoReturn moveCameraToPos(cocos2d::CCPoint);
	// TodoReturn objectsCollided(int, int);
	// TodoReturn parentForZLayer(int, bool, int, int);
	// TodoReturn playFlashEffect(float, int, float);
	// TodoReturn processCommands(float);
	// TodoReturn processSFXState(SFXTriggerState*, SFXTriggerState*, int, float);
	// TodoReturn removeFromGroup(GameObject*, int);
	// TodoReturn setupLevelStart(LevelSettingsObject*) = win 0x196000;
	// TodoReturn stopCameraShake();
	// TodoReturn switchToFlyMode(PlayerObject*, GameObject*, bool, int);
	// TodoReturn toggleInfoLabel();
	// TodoReturn unclaimParticle(char const*, cocos2d::CCParticleSystemQuad*);
	// TodoReturn unlinkAllEvents();
	// TodoReturn updateMGOffsetY(float, float, int, float, int, int);
	// TodoReturn updateParticles(float);
	// TodoReturn updateTimeLabel(int, int, bool);
	// TodoReturn addObjectCounter(LabelGameObject*);
	// TodoReturn addPickupTrigger(CountTriggerGameObject*);
	// TodoReturn buttonIDToButton(int);
	// TodoReturn controlEventLink(int, int, GJActionCommand);
	// TodoReturn createBackground(int);
	// TodoReturn createTextLayers() = win 0x193A90;
	// TodoReturn exitStaticCamera(bool, bool, float, int, float, bool, float, bool);
	void loadUpToPosition(float, int, int) = win 0x1B4D10;
	// TodoReturn opacityForObject(GameObject*);
	// TodoReturn playerTookDamage(PlayerObject*);
	// TodoReturn processSongState(int, float, float, int, float, float, gd::vector<SongTriggerState>*);
	// TodoReturn removeBackground();
	// TodoReturn removeFromGroups(GameObject*);
	// TodoReturn reverseDirection(EffectGameObject*);
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
	// TodoReturn updateVisibility(float);
	// TodoReturn addToGroupParents(GameObject*);
	// TodoReturn addToSpeedObjects(EffectGameObject*);
	// TodoReturn checkRepellPlayer();
	// TodoReturn checkSpawnObjects();
	// TodoReturn controlAreaEffect(EnterEffectObject*, gd::vector<EnterEffectInstance>*, GJActionCommand);
	// TodoReturn createGroundLayer(int, int);
	// TodoReturn didRotateGameplay();
	// TodoReturn gameEventToString(GJGameEvent);
	// TodoReturn loadLevelSettings();
	// TodoReturn moveObjectsSilent(int, double, double);
	// TodoReturn orderSpawnObjects();
	// TodoReturn playerTouchedRing(PlayerObject*, RingObject*);
	// TodoReturn playGravityEffect(bool);
	// TodoReturn playSpeedParticle(float);
	// TodoReturn positionUIObjects();
	// TodoReturn processSFXObjects();
	// TodoReturn removeGroundLayer();
	// TodoReturn removeGroupParent(int);
	// TodoReturn resetStaticCamera(bool, bool) = win 0x1BE2C0;
	// TodoReturn rotateAreaObjects(GameObject*, cocos2d::CCArray*, float, bool);
	// TodoReturn sortSectionVector() = win 0x1A7F50;
	// TodoReturn switchToRobotMode(PlayerObject*, GameObject*, bool);
	// TodoReturn toggleProgressbar();
	// TodoReturn triggerAreaEffect(EnterEffectObject*);
	// TodoReturn tryGetGroupParent(int);
	// TodoReturn updateAttemptTime(float);
	// TodoReturn updateCameraBGArt(cocos2d::CCPoint, float);
	// TodoReturn updateLevelColors();
	// TodoReturn updateShaderLayer(float) = win 0x1A37B0;
	// TodoReturn updateTimerLabels();
	// TodoReturn activateCustomRing(RingObject*);
	// TodoReturn activateEndTrigger(int, bool, bool);
	// TodoReturn activateSFXTrigger(SFXTriggerGameObject*);
	// TodoReturn animateInGroundNew(bool, float, bool);
	// TodoReturn applyLevelSettings(GameObject*);
	// TodoReturn clearPickedUpItems();
	// TodoReturn createMiddleground(int);
	// TodoReturn gameEventTriggered(GJGameEvent, int, int);
	// TodoReturn generateSpawnRemap();
	// TodoReturn groupStickyObjects(cocos2d::CCArray*);
	void loadStartPosObject() = win 0x1B4BA0;
	// TodoReturn modifyGroupPhysics(AdvancedFollowEditObject*, cocos2d::CCArray*);
	// TodoReturn optimizeMoveGroups();
	// TodoReturn playExitDualEffect(PlayerObject*);
	// TodoReturn processAreaActions(float, bool);
	// TodoReturn processAreaEffects(gd::vector<EnterEffectInstance>*, GJAreaActionType, float, bool);
	void processMoveActions() = win 0x1ADA80;
	// TodoReturn reAddToStickyGroup(GameObject*);
	// TodoReturn registerSpawnRemap(gd::vector<ChanceObject>&);
	// TodoReturn removeMiddleground();
	// TodoReturn resetGroupCounters(bool);
	// TodoReturn switchToSpiderMode(PlayerObject*, GameObject*, bool);
	// TodoReturn toggleHideAttempts(bool);
	// TodoReturn toggleMGVisibility(bool);
	// TodoReturn triggerMoveCommand(EffectGameObject*);
	// TodoReturn updateEnterEffects(float);
	// TodoReturn updateMaxGameplayY();
	// TodoReturn updateQueuedLabels();
	// TodoReturn updateVerifyDamage();
	// TodoReturn activateSongTrigger(SongTriggerGameObject*);
	// TodoReturn animateOutGroundNew(bool);
	// TodoReturn applySFXEditTrigger(int, int, SFXTriggerGameObject*);
	// TodoReturn checkpointActivated(CheckpointGameObject*);
	// TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool);
	// TodoReturn claimRotationAction(int, int, float&, float&, bool, bool);
	// TodoReturn maxZOrderForShaderZ(int);
	// TodoReturn minZOrderForShaderZ(int);
	// TodoReturn modifyObjectPhysics(AdvancedFollowEditObject*, GameObjectPhysics&);
	// TodoReturn performMathRounding(double, int);
	// TodoReturn playerTouchedObject(PlayerObject*, GameObject*);
	// TodoReturn preUpdateVisibility(float);
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
	// TodoReturn updateObjectSection(GameObject*);
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
	// TodoReturn processQueuedButtons();
	// TodoReturn rectIntersectsCircle(cocos2d::CCRect, cocos2d::CCPoint, float);
	// TodoReturn refreshCounterLabels();
	// TodoReturn refreshKeyframeAnims();
	// TodoReturn removeAllCheckpoints();
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
	// TodoReturn ungroupStickyObjects(cocos2d::CCArray*);
	// TodoReturn updateGradientLayers() = win 0x1A1750;
	// TodoReturn updatePlatformerTime() = win 0x1B8BE0;
	// TodoReturn updateScreenRotation(float, bool, bool, float, int, float, int, int);
	// TodoReturn activatedAudioTrigger(SFXTriggerGameObject*);
	// TodoReturn activatedAudioTrigger(SFXTriggerGameObject*, float);
	// TodoReturn assignNewStickyGroups(cocos2d::CCArray*);
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
	// TodoReturn toggleMusicInPractice();
	// TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*);
	// TodoReturn updateAudioVisualizer();
	// TodoReturn updateCollisionBlocks();
	// TodoReturn updateExtraGameLayers();
	// TodoReturn updateGameplayOffsetX(int, bool);
	// TodoReturn updateGameplayOffsetY(int, bool);
	// TodoReturn updateStaticCameraPos(cocos2d::CCPoint, bool, bool, bool, float, int, float);
	// TodoReturn activateSFXEditTrigger(SFXTriggerGameObject*);
	// TodoReturn animateInDualGroundNew(GameObject*, float, bool, float);
	// TodoReturn canBeActivatedByPlayer(PlayerObject*, EffectGameObject*);
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
	// TodoReturn toggleGroundVisibility(bool);
	// TodoReturn togglePlayerVisibility(bool);
	// TodoReturn togglePlayerVisibility(bool, bool);
	// TodoReturn triggerGradientCommand(GradientTriggerObject*);
	// TodoReturn updateAllObjectSection();
	// TodoReturn updateSpecialGroupData();
	// TodoReturn activateItemEditTrigger(ItemTriggerGameObject*);
	// TodoReturn activateSongEditTrigger(SongTriggerGameObject*);
	// TodoReturn controlAreaEffectWithID(int, int, GJActionCommand);
	// TodoReturn playerWasTouchingObject(PlayerObject*, GameObject*);
	// TodoReturn positionForShaderTarget(int);
	// void processTransformActions(bool) = win 0x1ACBA0;
	// TodoReturn removeObjectFromSection(GameObject*);
	// TodoReturn resetActiveEnterEffects();
	// TodoReturn resetMoveOptimizedValue();
	// TodoReturn resetStoppedAreaObjects();
	// TodoReturn testInstantCountTrigger(int, int, int, bool, int, gd::vector<int> const&, int, int);
	// TodoReturn togglePlayerStreakBlend(bool);
	// TodoReturn triggerTransformCommand(TransformTriggerGameObject*);
	// TodoReturn updateActiveEnterEffect(EnterEffectObject*);
	// TodoReturn updateExtendedCollision(GameObject*, bool);
	// TodoReturn addProximityVolumeEffect(int, int, SFXTriggerGameObject*);
	// TodoReturn generateVisibilityGroups();
	// TodoReturn manualUpdateObjectColors(GameObject*);
	// TodoReturn processAreaVisualActions(float);
	// TodoReturn removeCustomEnterEffects(int, bool);
	// TodoReturn removeTemporaryParticles();
	// TodoReturn updateInternalCamOffsetX(float, float, float);
	// TodoReturn updateInternalCamOffsetY(float, float, float);
	// TodoReturn volumeForProximityEffect(SFXTriggerInstance&);
	// TodoReturn controlDynamicMoveCommand(EffectGameObject*, int, GJActionCommand);
	// TodoReturn convertToClosestDirection(float, float);
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
	// TodoReturn processQueuedAudioTriggers();
	// TodoReturn triggerAreaEffectAnimation(EnterEffectObject*);
	// TodoReturn clearActivatedAudioTriggers();
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
	// TodoReturn updateDisabledObjectsLastPos(cocos2d::CCArray*);
	// TodoReturn updateProximityVolumeEffects();
	// TodoReturn updateStaticCameraPosToGroup(int, bool, bool, bool, float, float, int, float, bool, float);
	// TodoReturn activatePersistentItemTrigger(ItemTriggerGameObject*);
	// TodoReturn checkCameraLimitAfterTeleport(PlayerObject*, float);
	// TodoReturn processActivatedAudioTriggers(float);
	// TodoReturn restoreDefaultGameplayOffsetX();
	// TodoReturn restoreDefaultGameplayOffsetY();
	// TodoReturn processAreaTransformGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool);
	// TodoReturn triggerAdvancedFollowEditCommand(AdvancedFollowEditObject*);
	// TodoReturn flipArt(bool);
	// TodoReturn hasItem(int);
	// TodoReturn testTime();
	// TodoReturn addPoints(int);

	// virtual void update(float);
	// virtual bool init();
	// virtual void visit();
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
	virtual TodoReturn showUnlockPopup(int, UnlockType);
	virtual TodoReturn playerColorChanged();
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
	TodoReturn fadeInTextFinished(TextArea*);
	TodoReturn animateInRandomSide();
	TodoReturn displayDialogObject(DialogObject*);
	TodoReturn updateChatPlacement(DialogChatPlacement);
	TodoReturn updateNavButtonFrame();
	TodoReturn finishCurrentAnimation();
	TodoReturn animateIn(DialogAnimationType);

	virtual void onEnter();
	virtual void registerWithTouchDispatcher();

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);

	virtual void keyBackClicked();

	virtual void keyDown(cocos2d::enumKeyCodes);
}


[[link(android)]]
class GameManager : GManager {
	static GameManager* get() {
        return GameManager::sharedState();
    }

	static GameManager* sharedState() = win 0x11f720;

	~GameManager();

	TodoReturn addToGJLog(cocos2d::CCString*);
	TodoReturn clearGJLog();
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn joinReddit();
	TodoReturn keyForIcon(int, int);
	TodoReturn loadGround(int);
	TodoReturn printGJLog();
	TodoReturn reloadMenu();
	TodoReturn reorderKey(int, bool);
	TodoReturn subYouTube();
	TodoReturn tryCacheAd();
	TodoReturn unloadIcon(int, int, int);
	TodoReturn unlockIcon(int, IconType);
	cocos2d::ccColor3B colorForIdx(int);
	TodoReturn colorForPos(int);
	TodoReturn doQuickSave();
	TodoReturn fadeInMusic(gd::string);
	TodoReturn getFontFile(int);
	TodoReturn getGTexture(int);
	TodoReturn joinDiscord();
	TodoReturn saveAdTimer();
	TodoReturn startUpdate();
	TodoReturn unloadIcons(int);
	TodoReturn unlockColor(int, UnlockType);
	TodoReturn updateMusic();
	TodoReturn countForType(IconType);
	TodoReturn encodeDataTo(DS_Dictionary*);
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
	TodoReturn loadBackground(int);
	TodoReturn loadDPadLayout(int, bool);
	// TodoReturn playSFXTrigger(SFXTriggerGameObject*);
	TodoReturn reloadAllStep2();
	TodoReturn reloadAllStep3();
	TodoReturn reloadAllStep4();
	TodoReturn reloadAllStep5();
	TodoReturn saveDPadLayout(int, bool);
	TodoReturn shortenAdTimer(float);
	TodoReturn showMainMenuAd();
	TodoReturn addIconDelegate(cocos2d::CCObject*, int);
	TodoReturn fadeInMenuMusic() = win 0x11FBD0;
	TodoReturn getGameVariable(char const*) = win 0x126920;
	/* unverified signature */
	bool isColorUnlocked(int, UnlockType) = win 0x120670;
	TodoReturn loadDeathEffect(int);
	TodoReturn loadGroundAsync(int);
	TodoReturn openEditorGuide();
	TodoReturn queueReloadMenu();
	/* unverified signature */
	void setGameVariable(char const*, bool) = win 0x1266D0;
	TodoReturn unlockedPremium();
	TodoReturn updateCustomFPS();
	TodoReturn addGameAnimation(int, int, float, gd::string, gd::string, int);
	TodoReturn didExitPlayscene();
	TodoReturn getIconRequestID();
	TodoReturn getMenuMusicFile();
	TodoReturn loadMiddleground(int);
	TodoReturn recountUserStats(gd::string);
	TodoReturn resetAchievement(gd::string);
	TodoReturn resetCoinUnlocks();
	TodoReturn resolutionForKey(int);
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
	TodoReturn getIntGameVariable(char const*);
	TodoReturn loadDpadFromString(UIButtonConfig&, gd::string);
	TodoReturn removeCustomObject(int);
	TodoReturn removeIconDelegate(int);
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
	TodoReturn getPracticeMusicFile();
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
	TodoReturn getUGV(char const*);
	/* unverified signature */
	void setUGV(char const*, bool) = win 0x126ac0;
	TodoReturn iconKey(int, IconType);
	TodoReturn colorKey(int, UnlockType);
	TodoReturn loadFont(int);
	TodoReturn loadIcon(int, int, int);
	TodoReturn lockIcon(int, IconType);
	TodoReturn rateGame();
	TodoReturn firstLoad();
	TodoReturn lockColor(int, UnlockType);
	TodoReturn reloadAll(bool, bool, bool) = win 0x9999999;

	virtual bool init() = win 0x11EA00;
	virtual void update(float);
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

	bool init(char const*) = win 0x9999999;
    bool init(const char* title, float height) = win 0x1d2340;
	~GJDropDownLayer();

	TodoReturn enterLayer();
	TodoReturn customSetup();
	TodoReturn layerHidden();
	TodoReturn layerVisible();
	TodoReturn enterAnimFinished();
	TodoReturn enableUI();
	TodoReturn disableUI();
	TodoReturn exitLayer(cocos2d::CCObject*);
	TodoReturn hideLayer(bool);
	TodoReturn showLayer(bool);

	virtual void draw();
	virtual void registerWithTouchDispatcher();

    virtual bool ccTouchBegan(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {
        return true;
    }
    virtual void ccTouchMoved(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {}
    virtual void ccTouchEnded(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {}
    virtual void ccTouchCancelled(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {}

	virtual void keyBackClicked();

	// 2.2, untested

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

	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn tryLoadData(DS_Dictionary*, gd::string const&);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn loadFromString(gd::string&);
	TodoReturn loadDataFromFile(gd::string const&);
	TodoReturn loadFromCompressedString(gd::string&);
	TodoReturn load();
	TodoReturn save() = win 0x472f0;
	TodoReturn setup();
	TodoReturn saveData(DS_Dictionary*, gd::string);
	TodoReturn saveGMTo(gd::string);
	TodoReturn firstLoad();

	virtual bool init();
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
	TodoReturn getCoinKey(int);
	TodoReturn getSongName();
	TodoReturn getLengthKey(int, bool);
	/* unverified signature */
	bool isPlatformer();
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
	TodoReturn getUnpackedLevelDescription();

	virtual void encodeWithCoder(DS_Dictionary*) = win 0x114BF0;
	virtual bool canEncode();
	virtual bool init();
}

class UIButtonConfig {

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
	TodoReturn willSwitchToScene(cocos2d::CCScene*) = win 0x9999999;
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

	virtual bool init() = win 0x48240;
	virtual void draw();
	virtual void registerWithTouchDispatcher();

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
}

[[link(android)]]
class AppDelegate : cocos2d::CCApplication, cocos2d::CCSceneDelegate {
	static AppDelegate* get();

	~AppDelegate();

	/* unverified signature */
	void setIdleTimerDisabled(bool);

	TodoReturn checkSound();
	TodoReturn pauseSound();
	TodoReturn resumeSound() = win 0x5b2e0;
	TodoReturn hideLoadingCircle();
	TodoReturn loadingIsFinished();
	TodoReturn showLoadingCircle(bool, bool, bool);
	TodoReturn willSwitchToScene(cocos2d::CCScene*);
	TodoReturn bgScale();
	TodoReturn musicTest() = win 0x5b330;
	TodoReturn pauseGame();

	virtual bool applicationDidFinishLaunching() = win 0x5af40;
	virtual void applicationDidEnterBackground() = win 0x5b110;
	virtual void applicationWillEnterForeground() = win 0x5b150;
	virtual void applicationWillBecomeActive() = win 0x5b0f0;
	virtual void applicationWillResignActive() = win 0x5b200;
	virtual void trySaveGame(bool) = win 0x5b3b0;
	virtual void setupGLView();
	virtual void platformShutdown();
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
	/* unverified signature */
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

	virtual bool init();
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

	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn valueChanged();
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn updateTextInputLabel();
	TodoReturn show();

	virtual void keyBackClicked();
}

[[link(android)]]
class UploadActionPopup : FLAlertLayer {
	static UploadActionPopup* create(UploadPopupDelegate*, gd::string);

	bool init(UploadPopupDelegate*, gd::string);
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
	static GJUserScore* create(cocos2d::CCDictionary*);
	static GJUserScore* create();

	~GJUserScore();

	/* unverified signature */
	bool isCurrentUser();
	TodoReturn mergeWithScore(GJUserScore*);

	virtual bool init();
}

[[link(android)]]
class ProfilePage : FLAlertLayer, FLAlertLayerProtocol, LevelCommentDelegate, CommentUploadDelegate, UserInfoDelegate, UploadActionDelegate, UploadPopupDelegate, LeaderboardManagerDelegate {
	static ProfilePage* create(int, bool) = win 0x2E7270;

	bool init(int, bool) = win 0x2E7320;
	~ProfilePage();

	TodoReturn getUserInfoFailed(int);
	TodoReturn getUserInfoFinished(GJUserScore*);

	void onMessages(cocos2d::CCObject* sender);
	void onMyLevels(cocos2d::CCObject* sender) = win 0x2E9F20;
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onRequests(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onBlockUser(cocos2d::CCObject* sender);
	TodoReturn onClosePopup(UploadActionPopup*);
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
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn userInfoChanged(GJUserScore*);
	TodoReturn updatePageArrows();
	TodoReturn updateLevelsLabel();
	TodoReturn loadCommentsFailed(char const*);
	TodoReturn showNoAccountError();
	TodoReturn uploadActionFailed(int, int);
	TodoReturn commentDeleteFailed(int, int);
	TodoReturn commentUploadFailed(int, CommentError);
	TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*);
	TodoReturn loadPageFromUserInfo(GJUserScore*);
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*);
	TodoReturn uploadActionFinished(int, int);
	TodoReturn commentUploadFinished(int);
	TodoReturn updateUserScoreFailed();
	TodoReturn updateUserScoreFinished();
	TodoReturn toggleMainPageVisibility(bool);
	void show() = win 0x2EB010;
	TodoReturn loadPage(int);
	TodoReturn blockUser();
	/* unverified signature */
	bool isCorrect(char const*);

	virtual void registerWithTouchDispatcher();

	virtual void keyBackClicked();
}

[[link(android)]]
class SliderThumb : cocos2d::CCMenuItemImage {
	static SliderThumb* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*);

	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*);
	~SliderThumb();

	float getValue() = win 0x9999999;

	/* unverified signature */
	void setRotated(bool);
	/* unverified signature */
	void setMaxOffset(float);
	void setValue(float);
}

[[link(android)]]
class ColorChannelSprite : cocos2d::CCSprite {
	static ColorChannelSprite* create() = win 0x9999999;

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

	virtual void registerWithTouchDispatcher();

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);

	// 2.2, not tested

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
	static TodoReturn preVisitWithClippingRect(cocos2d::CCNode*, cocos2d::CCRect);
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
	virtual void registerWithTouchDispatcher();

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
}

[[link(android)]]
class LevelInfoLayer : cocos2d::CCLayer, LevelDownloadDelegate, LevelUpdateDelegate, RateLevelDelegate, LikeItemDelegate, FLAlertLayerProtocol, LevelDeleteDelegate, NumberInputDelegate, SetIDPopupDelegate, TableViewCellDelegate {
	static LevelInfoLayer* create(GJGameLevel*, bool) = win 0x24CCD0;

	bool init(GJGameLevel*, bool) = win 0x24CD80;
	~LevelInfoLayer();

	/* unverified signature */
	void setIDPopupClosed(SetIDPopup*, int);

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
	TodoReturn downloadLevel();
	TodoReturn loadLevelStep();
	TodoReturn tryCloneLevel(cocos2d::CCObject*);
	TodoReturn incrementLikes();
	TodoReturn setupLevelInfo();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn rateLevelClosed();
	TodoReturn showSongWarning();
	TodoReturn showUpdateAlert(UpdateResponse);
	TodoReturn confirmMoveToTop(cocos2d::CCObject*);
	TodoReturn incrementDislikes();
	TodoReturn levelDeleteFailed(int);
	TodoReturn levelUpdateFailed(int);
	TodoReturn numberInputClosed(NumberInputLayer*);
	TodoReturn setupProgressBars();
	TodoReturn updateLabelValues();
	TodoReturn updateSideButtons();
	TodoReturn confirmOwnerDelete(cocos2d::CCObject*);
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	TodoReturn confirmMoveToBottom(cocos2d::CCObject*);
	TodoReturn levelDeleteFinished(int);
	TodoReturn levelDownloadFailed(int) = win 0x250750;
	TodoReturn levelUpdateFinished(GJGameLevel*, UpdateResponse);
	TodoReturn shouldDownloadLevel();
	TodoReturn setupPlatformerStats();
	TodoReturn levelDownloadFinished(GJGameLevel*);
	TodoReturn scene(GJGameLevel*, bool);
	TodoReturn likedItem(LikeItemType, int, bool);
	TodoReturn playStep2();
	TodoReturn playStep3();
	TodoReturn playStep4();
	TodoReturn tryShowAd();

	virtual void keyBackClicked();

	virtual void keyDown(cocos2d::enumKeyCodes);
}


[[link(android)]]
class CCSpritePlus : cocos2d::CCSprite {
	CCSpritePlus();
	~CCSpritePlus();

	TodoReturn getFollower();

	/* unverified signature */
	void setFlipX(bool);
	/* unverified signature */
	void setFlipY(bool);

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
	TodoReturn getRScaleX();
	TodoReturn getRScaleY();
	TodoReturn getColorKey(bool, bool);
	TodoReturn getBallFrame(int);
	TodoReturn getBoxOffset();
	TodoReturn getGlowFrame(gd::string);
	TodoReturn getMainColor();
	TodoReturn getColorFrame(gd::string);
	TodoReturn getColorIndex();
	TodoReturn getObjectRect(float, float) = win 0x138430;
	TodoReturn getObjectRect();
	TodoReturn getParentMode();
	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn getSlopeAngle();
	TodoReturn getGroupString();
	TodoReturn getObjectLabel();
	TodoReturn getObjectRect2(float, float);
	TodoReturn getOrientedBox();
	TodoReturn getTextKerning();
	TodoReturn getBoundingRect();
	TodoReturn getCustomZLayer();
	TodoReturn getLastPosition();
	TodoReturn getObjectRadius();
	TodoReturn getObjectZLayer();
	TodoReturn getObjectZOrder();
	TodoReturn getRealPosition();
	TodoReturn getGroupDisabled();
	TodoReturn getMainColorMode();
	TodoReturn getScalePosDelta();
	TodoReturn getObjectRotation();
	TodoReturn getSecondaryColor();
	TodoReturn getHasRotateAction();
	TodoReturn getObjectDirection();
	TodoReturn getOuterObjectRect();
	TodoReturn getObjectRectPointer();
	TodoReturn getObjectTextureRect();
	TodoReturn getActiveColorForMode(int, bool);
	TodoReturn getHasSyncedAnimation();
	TodoReturn getSecondaryColorMode();
	TodoReturn getUnmodifiedPosition();
	TodoReturn getRelativeSpriteColor(int);
	TodoReturn getStartPos();
	TodoReturn getObjectRectDirty();
	TodoReturn getOrientedRectDirty();
	TodoReturn getType();

	/* unverified signature */
	void setRScaleX(float);
	/* unverified signature */
	void setRScaleY(float);
	/* unverified signature */
	void setStartPos(cocos2d::CCPoint);
	/* unverified signature */
	void setGlowColor(cocos2d::_ccColor3B const&);
	/* unverified signature */
	void setRRotation(float);
	/* unverified signature */
	void setAreaOpacity(float, float, int);
	/* unverified signature */
	void setGlowOpacity(unsigned char);
	/* unverified signature */
	void setObjectColor(cocos2d::_ccColor3B const&);
	/* unverified signature */
	void setObjectLabel(cocos2d::CCLabelBMFont*);
	/* unverified signature */
	void setCustomZLayer(int);
	/* unverified signature */
	void setLastPosition(cocos2d::CCPoint const&);
	/* unverified signature */
	void setMainColorMode(int);
	/* unverified signature */
	void setObjectRectDirty(bool);
	/* unverified signature */
	void setOrientedRectDirty(bool);
	/* unverified signature */
	void setSecondaryColorMode(int);
	/* unverified signature */
	void setDefaultMainColorMode(int);
	/* unverified signature */
	void setDefaultSecondaryColorMode(int);
	/* unverified signature */
	void setType(GameObjectType);
	/* unverified signature */
	void setFlipX(bool);
	/* unverified signature */
	void setFlipY(bool);
	/* unverified signature */
	void setRScale(float);

	TodoReturn addToGroup(int);
	TodoReturn canReverse();
	TodoReturn copyGroups(GameObject*);
	TodoReturn createGlow(gd::string);
	TodoReturn firstSetup();
	TodoReturn groupColor(cocos2d::_ccColor3B const&, bool);
	TodoReturn ignoreFade();
	TodoReturn removeGlow();
	TodoReturn addRotation(float);
	TodoReturn addRotation(float, float);
	TodoReturn commonSetup();
	TodoReturn customSetup();
	TodoReturn ignoreEnter();
	TodoReturn resetGroups();
	TodoReturn resetObject();
	TodoReturn shouldLockX();
	TodoReturn addEmptyGlow();
	TodoReturn canBeOrdered();
	TodoReturn colorForMode(int, bool);
	/* unverified signature */
	bool isFacingDown();
	/* unverified signature */
	bool isFacingLeft();
	TodoReturn selectObject(cocos2d::_ccColor3B);
	TodoReturn addNewSlope01(bool);
	TodoReturn addNewSlope02(bool);
	TodoReturn canRotateFree();
	TodoReturn claimParticle();
	TodoReturn createWithKey(int);
	TodoReturn destroyObject();
	TodoReturn disableObject();
	/* unverified signature */
	bool isColorObject();
	/* unverified signature */
	bool isSpeedObject();
	TodoReturn makeInvisible();
	TodoReturn restoreObject();
	TodoReturn slopeFloorTop();
	TodoReturn slopeWallLeft();
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x1D230;
	TodoReturn activateObject();
	TodoReturn addColorSprite(gd::string);
	TodoReturn addCustomChild(gd::string, cocos2d::CCPoint, int);
	TodoReturn assignUniqueID();
	TodoReturn belongsToGroup(int);
	TodoReturn deselectObject();
	/* unverified signature */
	bool isBasicTrigger();
	/* unverified signature */
	bool isColorTrigger();
	TodoReturn spawnXPosition();
	TodoReturn updateHSVState();
	TodoReturn updateStartPos();
	TodoReturn addToColorGroup(int);
	TodoReturn addToTempOffset(double, double);
	TodoReturn createWithFrame(char const*);
	TodoReturn didScaleXChange();
	TodoReturn didScaleYChange();
	TodoReturn duplicateValues(GameObject*);
	TodoReturn groupOpacityMod();
	TodoReturn groupWasEnabled();
	/* unverified signature */
	bool isSpecialObject();
	TodoReturn parentForZLayer(int, bool, int);
	TodoReturn playShineEffect();
	TodoReturn removeFromGroup(int);
	TodoReturn resetMoveOffset();
	TodoReturn setupPixelScale();
	TodoReturn setupSpriteSize();
	TodoReturn unclaimParticle();
	TodoReturn updateBlendMode();
	TodoReturn updateMainColor(cocos2d::_ccColor3B const&);
	TodoReturn updateMainColor();
	TodoReturn addInternalChild(cocos2d::CCSprite*, gd::string, cocos2d::CCPoint, int);
	TodoReturn blendModeChanged();
	TodoReturn canMultiActivate(bool);
	TodoReturn deactivateObject(bool) = win 0x131860;
	TodoReturn dirtifyObjectPos();
	TodoReturn fastRotateObject(float);
	TodoReturn groupWasDisabled();
	TodoReturn hasBeenActivated();
	/* unverified signature */
	bool isSettingsObject();
	TodoReturn objectFromVector(gd::vector<gd::string>&, gd::vector<void*>&, GJBaseGameLayer*, bool);
	TodoReturn perspectiveFrame(char const*, int);
	TodoReturn resetColorGroups();
	TodoReturn saveActiveColors();
	TodoReturn setupColorSprite(int, bool);
	TodoReturn shouldBlendColor(GJSpriteColor*, bool);
	TodoReturn triggerActivated(float);
	TodoReturn updateIsOriented();
	// TodoReturn activatedByPlayer(PlayerObject*);
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
	TodoReturn updateOrientedBox();
	TodoReturn updateStartValues();
	TodoReturn updateTextKerning(int);
	TodoReturn animationTriggered();
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
	TodoReturn transferObjectRect(cocos2d::CCRect&) = win 0x1383E0;
	TodoReturn updateCustomScaleX(float);
	TodoReturn updateCustomScaleY(float);
	TodoReturn addCustomBlackChild(gd::string, float, bool);
	TodoReturn addCustomColorChild(gd::string);
	TodoReturn duplicateAttributes(GameObject*);
	TodoReturn playPickupAnimation(cocos2d::CCSprite*, float, float, float, float);
	TodoReturn playPickupAnimation(cocos2d::CCSprite*, float, float, float, float, float, float, float, float, bool, float, float);
	TodoReturn quickUpdatePosition();
	TodoReturn updateMainColorOnly();
	TodoReturn updateParticleColor(cocos2d::_ccColor3B const&);
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
	/* unverified signature */
	bool isSpecialSpawnObject();
	TodoReturn loadGroupsFromString(gd::string);
	TodoReturn particleWasActivated();
	TodoReturn quickUpdatePosition2();
	TodoReturn updateSecondaryColor(cocos2d::_ccColor3B const&);
	TodoReturn updateSecondaryColor();
	TodoReturn usesSpecialAnimation();
	TodoReturn addMainSpriteToParent(bool) = win 0x13AE30;
	TodoReturn canAllowMultiActivate();
	TodoReturn dontCountTowardsLimit();
	TodoReturn perspectiveColorFrame(char const*, int);
	TodoReturn playDestroyObjectAnim(GJBaseGameLayer*);
	TodoReturn updateCustomColorType(short);
	TodoReturn updateParticleOpacity(unsigned char);
	TodoReturn addColorSpriteToParent(bool);
	TodoReturn commonInteractiveSetup();
	TodoReturn shouldDrawEditorHitbox();
	TodoReturn updateSecondaryOpacity();
	TodoReturn canChangeSecondaryColor();
	TodoReturn determineSlopeDirection();
	TodoReturn resetSecondaryColorMode();
	TodoReturn shouldNotHideAnimFreeze();
	TodoReturn shouldShowPickupEffects();
	TodoReturn updateObjectEditorColor();
	TodoReturn editorColorForCustomMode(int);
	// TodoReturn hasBeenActivatedByPlayer(PlayerObject*);
	/* unverified signature */
	bool isEditorSpawnableTrigger();
	TodoReturn updateSecondaryColorOnly();
	TodoReturn createColorGroupContainer(int);
	TodoReturn updateMainParticleOpacity(unsigned char);
	TodoReturn updateUnmodifiedPositions();
	TodoReturn spawnDefaultPickupParticle(GJBaseGameLayer*);
	TodoReturn addInternalCustomColorChild(gd::string, cocos2d::CCPoint, int);
	TodoReturn createOpacityGroupContainer(int);
	TodoReturn updateSecondaryParticleOpacity(unsigned char);
	TodoReturn addGlow(gd::string);
	/* unverified signature */
	bool isFlipX();
	/* unverified signature */
	bool isFlipY();
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
	virtual bool initWithTexture(cocos2d::CCTexture2D*);
	virtual void setChildColor(cocos2d::_ccColor3B const&);

	virtual void setOpacity(unsigned char);

    PAD = android32 0xf;

	// property 511
    bool m_hasExtendedCollision;
	PAD = android32 0x84;

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
    void* m_mainColorStruct;
	// property 22, also used with 42 and 44
    void* m_detailColorStruct;
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

	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn getHasRotateAction();
	TodoReturn getHasSyncedAnimation();

	TodoReturn customSetup();
	TodoReturn resetObject();
	TodoReturn updateState(int);
	TodoReturn powerOnObject(int);
	TodoReturn restoreObject();
	TodoReturn powerOffObject();
	TodoReturn updateUserCoin();
	TodoReturn canMultiActivate(bool);
	TodoReturn deactivateObject(bool);
	TodoReturn hasBeenActivated();
	TodoReturn saveActiveColors();
	TodoReturn triggerActivated(float);
	TodoReturn triggerAnimation();
	// TodoReturn activatedByPlayer(PlayerObject*);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn stateSensitiveOff(GJBaseGameLayer*);
	TodoReturn animationTriggered();
	TodoReturn createRotateAction(float, int);
	TodoReturn updateRotateAction(float);
	TodoReturn refreshRotateAction();
	TodoReturn resetSyncedAnimation();
	TodoReturn canAllowMultiActivate();
	TodoReturn updateSyncedAnimation(float, int);
	TodoReturn updateAnimateOnTrigger(bool);
	TodoReturn previewAnimateOnTrigger();
	TodoReturn setupAnimationVariables();
	TodoReturn waitForAnimationTrigger();
	// TodoReturn hasBeenActivatedByPlayer(PlayerObject*);

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

	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn getObjectLabel();
	TodoReturn getTargetColorIndex();

	/* unverified signature */
	void setRScaleX(float);
	/* unverified signature */
	void setRScaleY(float);
	/* unverified signature */
	void setTargetID(int);
	/* unverified signature */
	void setTargetID2(int);
	/* unverified signature */
	void setObjectLabel(cocos2d::CCLabelBMFont*);

	TodoReturn canReverse();
	TodoReturn firstSetup();
	TodoReturn customSetup();
	TodoReturn canBeOrdered();
	TodoReturn restoreObject();
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*);
	TodoReturn spawnXPosition();
	TodoReturn triggerActivated(float);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn playTriggerEffect();
	TodoReturn resetSpawnTrigger();
	TodoReturn stateSensitiveOff(GJBaseGameLayer*);
	TodoReturn updateSpecialColor();
	TodoReturn updateSpeedModType();
	/* unverified signature */
	bool isSpecialSpawnObject();
	TodoReturn triggerEffectFinished();
	TodoReturn updateInteractiveHover(float);
	EffectGameObject();

	virtual void setOpacity(unsigned char);

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

	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn getTextKerning();

	TodoReturn updateTextObject(gd::string, bool);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn updateTextKerning(int);

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

	TodoReturn getSaveString(GJBaseGameLayer*);

	TodoReturn updateSmartFrame();
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);

	// property 157
	bool m_property157;
	PAD = android32 0x9;
}


[[link(android)]]
class ParticleGameObject : EnhancedGameObject {
	static ParticleGameObject* create();

	~ParticleGameObject();

	TodoReturn getSaveString(GJBaseGameLayer*);

	/* unverified signature */
	void setObjectColor(cocos2d::_ccColor3B const&);
	/* unverified signature */
	void setParticleString(gd::string);

	// TodoReturn customSetup();
	// TodoReturn resetObject();
	// TodoReturn claimParticle();
	// TodoReturn updateParticle();
	// TodoReturn unclaimParticle();
	// TodoReturn blendModeChanged();
	// TodoReturn deactivateObject(bool);
	// TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	// TodoReturn updateParticleAngle(float, cocos2d::CCParticleSystemQuad*);
	// TodoReturn updateParticleColor(cocos2d::_ccColor3B const&);
	// TodoReturn updateParticleScale(float);
	// TodoReturn particleWasActivated();
	// TodoReturn updateParticleStruct();
	// TodoReturn addMainSpriteToParent(bool);
	// TodoReturn applyParticleSettings(cocos2d::CCParticleSystemQuad*);
	// TodoReturn updateParticleOpacity(unsigned char);
	// TodoReturn updateSyncedAnimation(float, int);
	// TodoReturn updateAnimateOnTrigger(bool);
	// TodoReturn createParticlePreviewArt();
	// TodoReturn updateMainParticleOpacity(unsigned char);
	// TodoReturn createAndAddCustomParticle();
	// TodoReturn updateSecondaryParticleOpacity(unsigned char);
	// TodoReturn updateParticlePreviewArtOpacity(float);

	virtual bool init();
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setScale(float);
	virtual void setRotation(float);
	virtual void setRotationX(float);
	virtual void setRotationY(float);
	virtual void setChildColor(cocos2d::_ccColor3B const&);

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

	TodoReturn getSaveString(GJBaseGameLayer*);

	TodoReturn resetObject();
	TodoReturn updateMainColor(cocos2d::_ccColor3B const&);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn updateSecondaryColor(cocos2d::_ccColor3B const&);
	TodoReturn updateSyncedAnimation(float, int);
}

[[link(android)]]
class RingObject : EffectGameObject {
	static RingObject* create(char const*);

	bool init(char const*);
	~RingObject();

	TodoReturn getSaveString(GJBaseGameLayer*);

	/* unverified signature */
	void setRScale(float);

	TodoReturn resetObject();
	TodoReturn spawnCircle();
	TodoReturn powerOnObject(int);
	TodoReturn triggerActivated(float);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn shouldDrawEditorHitbox();

	virtual void setScale(float);
	virtual void setRotation(float);

	// property 445
	bool m_claimTouch;
	// property 504
	bool m_isSpawnOnly;
}


[[link(android)]]
class StartPosObject : EffectGameObject {
	static StartPosObject* create();

	~StartPosObject();

	TodoReturn getSaveString(GJBaseGameLayer*);

	// TODO: move LevelSettingsObject
	// void setSettings(LevelSettingsObject*);

	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn loadSettingsFromString(gd::string);

	virtual bool init();

	int m_unknown;
}


[[link(android)]]
class LabelGameObject : EffectGameObject {
	static LabelGameObject* create();

	~LabelGameObject();

	TodoReturn getSaveString(GJBaseGameLayer*);
	TodoReturn getTextKerning();

	/* unverified signature */
	void setObjectColor(cocos2d::_ccColor3B const&);

	TodoReturn createLabel(gd::string);
	TodoReturn removeLabel();
	TodoReturn resetObject();
	TodoReturn updateLabel(float);
	TodoReturn updateLabel(gd::string);
	TodoReturn queueUpdateLabel(gd::string);
	TodoReturn unlockLabelColor();
	TodoReturn updateLabelAlign(int);
	TodoReturn customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn updateTextKerning(int);
	TodoReturn setupCustomSprites(gd::string);
	TodoReturn updateLabelIfDirty();
	TodoReturn updatePreviewLabel();
	TodoReturn addMainSpriteToParent(bool);

	virtual bool init();

	virtual void setOpacity(unsigned char);

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
	TodoReturn getGJUserInfo(int);
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
	TodoReturn getSavedLevels(bool, int) = win 0xF6620;
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
	TodoReturn getBasePostString();
	TodoReturn getFriendRequests(bool, int, int);
	TodoReturn getGauntletLevels(int) = win 0xFF660;
	TodoReturn getLocalLevelList(int);
	TodoReturn getPostCommentKey(int);
	TodoReturn getSavedLevelList(int);
	TodoReturn getStoredUserList(UserListType);
	TodoReturn getAccountComments(int, int, int);
	TodoReturn getCompletedLevels(bool) = win 0xF6A70;
	TodoReturn getSavedDailyLevel(int);
	TodoReturn getSavedLevelLists(int);
	TodoReturn getSplitIntFromKey(char const*, int);
	TodoReturn getDeleteCommentKey(int, int, int);
	TodoReturn getDeleteMessageKey(int, bool);
	TodoReturn getFriendRequestKey(bool, int);
	TodoReturn getLevelDownloadKey(int, bool);
	TodoReturn getLevelLeaderboard(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode);
	TodoReturn getLocalLevelByName(gd::string);
	TodoReturn getLowestLevelOrder();
	TodoReturn getUploadMessageKey(int);
	TodoReturn getAccountCommentKey(int, int);
	TodoReturn getAllSmartTemplates();
	TodoReturn getGauntletSearchKey(int);
	TodoReturn getGJDailyLevelState(GJTimedLevelType);
	TodoReturn getHighestLevelOrder();
	TodoReturn getLeaderboardScores(char const*);
	TodoReturn getStoredUserMessage(int);
	TodoReturn getLikeAccountItemKey(LikeItemType, int, bool, int);
	TodoReturn getNextFreeTemplateID();
	TodoReturn getSavedGauntletLevel(int);
	TodoReturn getStoredOnlineLevels(char const*);
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
	TodoReturn onGetNewsCompleted(gd::string, gd::string);
	TodoReturn onGetUsersCompleted(gd::string, gd::string);
	TodoReturn onLikeItemCompleted(gd::string, gd::string);
	TodoReturn onBlockUserCompleted(gd::string, gd::string);
	TodoReturn onRateDemonCompleted(gd::string, gd::string);
	TodoReturn onRateStarsCompleted(gd::string, gd::string);
	TodoReturn onGetMapPacksCompleted(gd::string, gd::string);
	TodoReturn onGetUserListCompleted(gd::string, gd::string);
	TodoReturn onReportLevelCompleted(gd::string, gd::string);
	TodoReturn onUnblockUserCompleted(gd::string, gd::string);
	TodoReturn onUpdateLevelCompleted(gd::string, gd::string);
	TodoReturn onUploadLevelCompleted(gd::string, gd::string);
	TodoReturn onGetGauntletsCompleted(gd::string, gd::string);
	TodoReturn onGetGJRewardsCompleted(gd::string, gd::string);
	TodoReturn onRemoveFriendCompleted(gd::string, gd::string);
	TodoReturn onRestoreItemsCompleted(gd::string, gd::string);
	TodoReturn onDeleteCommentCompleted(gd::string, gd::string);
	TodoReturn onDownloadLevelCompleted(gd::string, gd::string);
	TodoReturn onGetGJUserInfoCompleted(gd::string, gd::string);
	TodoReturn onGetLevelListsCompleted(gd::string, gd::string);
	TodoReturn onGetTopArtistsCompleted(gd::string, gd::string);
	TodoReturn onSetLevelStarsCompleted(gd::string, gd::string);
	TodoReturn onUploadCommentCompleted(gd::string, gd::string);
	TodoReturn onSubmitUserInfoCompleted(gd::string, gd::string);
	TodoReturn onGetGJChallengesCompleted(gd::string, gd::string);
	TodoReturn onGetOnlineLevelsCompleted(gd::string, gd::string) = win 0xFC270;
	TodoReturn onGetUserMessagesCompleted(gd::string, gd::string);
	TodoReturn onUpdateUserScoreCompleted(gd::string, gd::string);
	TodoReturn onUploadLevelListCompleted(gd::string, gd::string);
	TodoReturn onGetLevelCommentsCompleted(gd::string, gd::string);
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
	TodoReturn onGetGJDailyLevelStateCompleted(gd::string, gd::string);
	TodoReturn onGetLeaderboardScoresCompleted(gd::string, gd::string);
	TodoReturn onDeleteServerLevelListCompleted(gd::string, gd::string);

	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn followUser(int);
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	/* unverified signature */
	bool isDLActive(char const*);
	TodoReturn deleteLevel(GJGameLevel*);
	/* unverified signature */
	bool isTimeValid(char const*, float);
	TodoReturn keyHasTimer(char const*);
	TodoReturn reportLevel(int);
	// TodoReturn saveMapPack(GJMapPack*);
	static GameLevelManager* sharedState() = win 0xF2D90;
	TodoReturn unblockUser(int);
	TodoReturn updateLevel(GJGameLevel*);
	void uploadLevel(GJGameLevel*) = win 0xFA560;
	TodoReturn encodeDataTo(DS_Dictionary*) = win 0xF8F90;
	TodoReturn hasLikedItem(LikeItemType, int, bool, int);
	TodoReturn removeFriend(int);
	TodoReturn restoreItems();
	// TodoReturn saveGauntlet(GJMapPack*);
	TodoReturn unfollowUser(int);
	TodoReturn addDLToActive(char const*);
	TodoReturn deleteComment(int, CommentType, int);
	TodoReturn downloadLevel(int, bool);
	TodoReturn gotoLevelPage(GJGameLevel*);
	TodoReturn hasRatedDemon(int);
	/* unverified signature */
	bool isUpdateValid(int);
	TodoReturn makeTimeStamp(char const*);
	// TodoReturn saveLevelList(GJLevelList*);
	TodoReturn storeUserInfo(GJUserScore*);
	TodoReturn storeUserName(int, int, gd::string);
	TodoReturn uploadComment(gd::string, CommentType, int, int);
	TodoReturn createNewLevel();
	TodoReturn createPageInfo(int, int, int);
	TodoReturn resetAllTimers();
	TodoReturn resetGauntlets();
	TodoReturn responseToDict(gd::string, bool);
	TodoReturn saveLocalScore(int, int, int);
	TodoReturn storeUserNames(gd::string);
	TodoReturn submitUserInfo();
	TodoReturn tryGetUsername(int);
	// TodoReturn deleteLevelList(GJLevelList*);
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	/* unverified signature */
	bool isFollowingUser(int);
	TodoReturn likeFromLikeKey(char const*);
	TodoReturn markItemAsLiked(LikeItemType, int, bool, int);
	TodoReturn typeFromLikeKey(char const*);
	TodoReturn updateUsernames();
	TodoReturn updateUserScore();
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
	TodoReturn userNameForUserID(int);
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
	TodoReturn invalidateMessages(bool, bool);
	TodoReturn invalidateRequests(bool, bool);
	TodoReturn invalidateUserList(UserListType, bool);
	TodoReturn pageFromCommentKey(char const*);
	TodoReturn performNetworkTest() = win 0xF2E10;
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn removeUserFromList(int, UserListType);
	TodoReturn specialFromLikeKey(char const*);
	// TodoReturn storeFriendRequest(GJFriendRequest*);
	TodoReturn typeFromCommentKey(char const*);
	TodoReturn updateLevelRewards(GJGameLevel*);
	TodoReturn uploadLevelComment(int, gd::string, int);
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
	TodoReturn uploadFriendRequest(int, gd::string);
	TodoReturn writeSpecialFilters(GJSearchObject*);
	TodoReturn createAndGetMapPacks(gd::string);
	TodoReturn deleteAccountComment(int, int);
	TodoReturn deleteFriendRequests(int, cocos2d::CCArray*, bool);
	TodoReturn markListAsDownloaded(int);
	TodoReturn removeDelimiterChars(gd::string, bool);
	TodoReturn resetAccountComments(int);
	TodoReturn resetDailyLevelState(GJTimedLevelType);
	TodoReturn storeDailyLevelState(int, int, GJTimedLevelType);
	// TodoReturn updateSavedLevelList(GJLevelList*);
	TodoReturn uploadAccountComment(gd::string);
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
	TodoReturn resetCommentTimersForLevelID(int, CommentKeyType);
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

	PAD = win 0x8;
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
    PAD = mac 0x10, win 0x4, android 0x4;
    int m_weeklyTimeLeft;
    int m_weeklyID;
    int m_weeklyIDUnk;
	PAD = win 0x8;
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

	TodoReturn getSearchKey(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int);
	TodoReturn getPageObject(int);
	TodoReturn getNextPageKey();
	TodoReturn getNextPageObject();
	TodoReturn getPrevPageObject();
	TodoReturn getKey();

	TodoReturn createFromKey(char const*);
	/* unverified signature */
	bool isLevelSearchObject();
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
}

[[link(android)]]
class LevelTools {
	TodoReturn posForTime(float, cocos2d::CCArray*, int, bool, int&);
	TodoReturn timeForPos(cocos2d::CCPoint, cocos2d::CCArray*, int, int, int, bool, bool, bool, bool, int) = win 0x26fba0;
	TodoReturn getAudioBPM(int);
	TodoReturn urlForAudio(int);
	TodoReturn getLevelList();
	TodoReturn getAudioTitle(int);
	TodoReturn getSongObject(int);
	TodoReturn nameForArtist(int);
	TodoReturn artistForAudio(int);
	TodoReturn fbURLForArtist(int);
	TodoReturn getAudioString(int);
	TodoReturn ngURLForArtist(int);
	TodoReturn ytURLForArtist(int);
	TodoReturn getLastTimewarp();
	TodoReturn getAudioFileName(int);
	TodoReturn sortSpeedObjects(cocos2d::CCArray*, GJBaseGameLayer*);
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
	TodoReturn sortChannelOrderObjects(cocos2d::CCArray*, cocos2d::CCDictionary*, bool);
	TodoReturn moveTriggerObjectsToArray(cocos2d::CCArray*, cocos2d::CCDictionary*, int);
	TodoReturn getLevel(int, bool);
}