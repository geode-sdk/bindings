
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

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void keyBackClicked() = win 0xb00ba;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	void incrementForcePrio();
	virtual void registerWithTouchDispatcher();
	bool init(int) = win 0xb00ba;
	bool init(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float, bool, float, float) = win 0xb00ba;
	void show() = win 0xb00ba;
	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*) = win 0xb00ba;
	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float) = win 0xb00ba;
	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float, bool, float, float) = win 0xb00ba;
	void onBtn1(cocos2d::CCObject* sender) = win 0xb00ba;
	void onBtn2(cocos2d::CCObject* sender) = win 0xb00ba;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0xb00ba;
	virtual void onEnter();
	~FLAlertLayer();

    static FLAlertLayer* create(char const* title, const gd::string& desc, char const* btn) {
        return FLAlertLayer::create(nullptr, title, desc, btn, nullptr, 300.0);
    }

    // 2.2 order not tested

    cocos2d::CCMenu* m_buttonMenu;
    int m_controlConnected;
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
	[[docs("
        Create a ButtonSprite with a top sprite and a texture.
        @param topSprite The top sprite to add on top of the sprite
        @param width Sprite width; ignored if `absolute` is false
        @param absolute Whether to use absolute width or not
        @param texture The name of the background sprite file (can't be in a spritesheet)
        @param height The height of the button, leave 0 for automatic
        @param scale Scale of top sprite
    ")]]
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

    [[docs("
        Create a ButtonSprite with text, a font and a texture.
        @param caption The text of the ButtonSprite
        @param width Sprite width; ignored if `absolute` is false
        @param absolute Whether to use absolute width or not
        @param font The name of the BM font file to use
        @param texture The name of the background sprite file (can't be in a spritesheet)
        @param height The height of the button, leave 0 for automatic
        @param scale Scale of text
        @returns Pointer to the created ButtonSprite, or nullptr on error
    ")]]
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

	TodoReturn updateBGImage(char const*) = win 0xb00ba;
	TodoReturn updateSpriteBGSize();
	TodoReturn updateSpriteOffset(cocos2d::CCPoint);
	bool init(char const*, int, int, float, bool, char const*, char const*, float);
	bool init(cocos2d::CCSprite*, int, int, float, float, bool, char const*, bool);
	// static ButtonSprite* create(char const*);
	static ButtonSprite* create(char const*, float) = win 0xb00ba;
	static ButtonSprite* create(char const*, int, int, float, bool) = win 0xb00ba;
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*) = win 0xb00ba;
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*, float) = win 0xb00ba;
	static ButtonSprite* create(cocos2d::CCSprite*) = win 0xb00ba;
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool) = win 0xb00ba;
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool, char const*, bool) = win 0xb00ba;
	/* unverified signature */
	void setColor(cocos2d::_ccColor3B) = win 0xb00ba;
	virtual void setString(char const*);
	~ButtonSprite();
}


[[link(android)]]
class ScrollingLayer : cocos2d::CCLayerColor {
	TodoReturn getViewRect();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	/* unverified signature */
	void setStartOffset(cocos2d::CCPoint);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void draw();
	bool init(cocos2d::CCSize, cocos2d::CCPoint, float);
	virtual void visit();
	static ScrollingLayer* create(cocos2d::CCSize, cocos2d::CCPoint, float);
	~ScrollingLayer();
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
	inline static CCMenuItemSpriteExtra* create(cocos2d::CCNode* sprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) {
        return CCMenuItemSpriteExtra::create(sprite, nullptr, target, callback);
    }

	virtual void unselected();
	/* unverified signature */
	void setSizeMult(float);
	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	static CCMenuItemSpriteExtra* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = win 0xb00ba;
	virtual void activate();
	virtual void selected();
	~CCMenuItemSpriteExtra();

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

	TodoReturn addTextArea(TextArea*);
	TodoReturn forceOffset();
	virtual void textChanged();
	TodoReturn updateLabel(gd::string);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn refreshLabel();
	void setAllowedChars(gd::string) = win 0xb00ba;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
	virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
	TodoReturn onClickTrackNode(bool) = win 0xb00ba;
	/* unverified signature */
	void setMaxLabelScale(float) = win 0xb00ba;
	/* unverified signature */
	void setMaxLabelWidth(float) = win 0xb00ba;
	TodoReturn updateBlinkLabel();
	/* unverified signature */
	void setLabelNormalColor(cocos2d::_ccColor3B);
	TodoReturn updateCursorPosition(cocos2d::CCPoint, cocos2d::CCRect);
	virtual bool onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int, cocos2d::enumKeyCodes);
	TodoReturn updateBlinkLabelToChar(int);
	TodoReturn updateDefaultFontValues(gd::string);
	virtual bool onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF*);
	virtual bool onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF*);
	void setLabelPlaceholderColor(cocos2d::_ccColor3B) = win 0xb00ba;
	void setLabelPlaceholderScale(float) = win 0xb00ba;
	virtual void registerWithTouchDispatcher();
	bool init(float, float, char const*, char const*, int, char const*);
	virtual void visit();
	static CCTextInputNode* create(float, float, char const*, char const*, int, char const*) = win 0xb00ba;
	gd::string getString() = win 0xb00ba;
	void setString(gd::string) = win 0xb00ba;
	~CCTextInputNode();

	// 2.2, very wrong since this class changed a lot
	bool m_numberInput;
    gd::string m_caption;
    int m_unknown1;
    bool m_selected;
    bool m_unknown2;
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
}


[[link(android)]]
class TextArea : cocos2d::CCSprite {
	TodoReturn finishFade();
	virtual void setOpacity(unsigned char);
	TodoReturn colorAllLabels(cocos2d::_ccColor3B);
	TodoReturn fadeInCharacters(float, float);
	TodoReturn fadeOutAndRemove();
	/* unverified signature */
	void setIgnoreColorCode(bool);
	TodoReturn colorAllCharactersTo(cocos2d::_ccColor3B);
	TodoReturn stopAllCharacterActions();
	virtual void draw();
	bool init(gd::string, char const*, float, float, cocos2d::CCPoint, float, bool);
	static TextArea* create(gd::string, char const*, float, float, cocos2d::CCPoint, float, bool);
	TodoReturn fadeIn(float, bool);
	virtual void update(float);
	TodoReturn fadeOut(float);
	TodoReturn hideAll();
	TodoReturn showAll();
	/* unverified signature */
	void setString(gd::string);
	~TextArea();
}


[[link(android)]]
class Slider : cocos2d::CCLayer {
	TodoReturn hideGroove(bool);
	/* unverified signature */
	void setRotated(bool);
	TodoReturn sliderBegan();
	TodoReturn sliderEnded();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn disableTouch();
	TodoReturn enableSlider();
	/* unverified signature */
	void setMaxOffset(float);
	TodoReturn disableSlider();
	TodoReturn getLiveDragging();
	/* unverified signature */
	void setLiveDragging(bool);
	/* unverified signature */
	void setBarVisibility(bool);
	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float);
	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler) = win 0xb00ba;
	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, float) = win 0xb00ba;
	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float) = win 0xb00ba;
	SliderThumb* getThumb();
	float getValue() = win 0xb00ba;
	/* unverified signature */
	void setValue(float) = win 0xb00ba;
	void updateBar() = win 0xb00ba;
	~Slider();

	// 2.2, not tested
	SliderTouchLogic* m_touchLogic;
    cocos2d::CCSprite* m_sliderBar;
    cocos2d::CCSprite* m_groove;
    float m_width;
    float m_height;
}

[[link(android)]]
class CCIndexPath : cocos2d::CCObject {
	inline CCIndexPath() {}
	~CCIndexPath();
}

[[link(android)]]
class TableView : CCScrollLayerExt, CCScrollLayerExtDelegate {
	TodoReturn claimTouch(cocos2d::CCTouch*);
	TodoReturn reloadData() = win 0xb00ba;
	virtual void scrollWheel(float, float);
	TodoReturn touchFinish(cocos2d::CCTouch*);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn cellForTouch(cocos2d::CCTouch*);
	TodoReturn checkLastCell(TableViewCell*);
	TodoReturn checkFirstCell(TableViewCell*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn scrollToIndexPath(CCIndexPath&);
	TodoReturn initTableViewCells();
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
	virtual void registerWithTouchDispatcher();
	TodoReturn scrollViewDidEndDecelerating(CCScrollLayerExt*);
	/* unverified signature */
	bool isDuplicateInVisibleCellArray(CCIndexPath*);
	TodoReturn scrllViewWillBeginDecelerating(CCScrollLayerExt*);
	TodoReturn dequeueReusableCellWithIdentifier(char const*);
	TodoReturn removeIndexPathFromPathAddedArray(CCIndexPath&);
	static TableView* create(TableViewDelegate*, TableViewDataSource*, TableViewCellDelegate*, cocos2d::CCRect);
	virtual void onExit();
	virtual void onEnter();
	TableView(cocos2d::CCRect);
	~TableView();

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
    int m_unused1;
    int m_unused2;
    void* m_unused3;
    int m_unused4;
    float m_touchLastY;
    bool m_cancellingTouches;
}


[[link(android)]]
class TableViewCell : cocos2d::CCLayer {
	TodoReturn updateVisibility();
	TableViewCell(char const*, float, float) = win 0xb00ba;
	~TableViewCell();

	// 2.2, not tested

	bool m_unknown;
    TableView* m_tableView;
    CCIndexPath m_indexPath;
    int m_unknownThing; // don't even know if this is an int, it's always set to 0
    gd::string m_unknownString;
    float m_width;
    float m_height;
    cocos2d::CCLayerColor* m_backgroundLayer;
    cocos2d::CCLayer* m_mainLayer;
}


[[link(android)]]
class TableViewDelegate {
	virtual TodoReturn willTweenToIndexPath(CCIndexPath&, TableViewCell*, TableView*);
	virtual TodoReturn didEndTweenToIndexPath(CCIndexPath&, TableView*);
	virtual TodoReturn TableViewDidDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
	virtual TodoReturn TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
	virtual TodoReturn TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
}

[[link(android)]]
class TextInputDelegate {
	virtual TodoReturn textChanged(CCTextInputNode*);
	virtual TodoReturn enterPressed(CCTextInputNode*);
	virtual TodoReturn allowTextInput(CCTextInputNode*);
	virtual TodoReturn textInputClosed(CCTextInputNode*);
	virtual TodoReturn textInputOpened(CCTextInputNode*);
	virtual TodoReturn textInputReturn(CCTextInputNode*);
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float);
}


[[link(android)]]
class TableViewDataSource {
	virtual unsigned int numberOfSectionsInTableView(TableView*);
	virtual TodoReturn TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&);
}


[[link(android)]]
class TableViewCellDelegate {
	virtual TodoReturn getSelectedCellIdx();
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	virtual TodoReturn shouldSnapToSelected();
}

[[link(android)]]
class CCScrollLayerExt : cocos2d::CCLayer {
	TodoReturn scrollLayer(float) = win 0xb00ba;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0xb00ba;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn scrollingEnd();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	/* unverified signature */
	void setContentOffset(cocos2d::CCPoint, bool);
	TodoReturn updateIndicators(float);
	TodoReturn constraintContent();
	TodoReturn doConstraintContent(bool);
	TodoReturn moveToTopWithOffset(float) = win 0xb00ba;
	/* unverified signature */
	void setContentLayerSize(cocos2d::CCSize);
	TodoReturn preVisitWithClippingRect(cocos2d::CCRect);
	virtual void registerWithTouchDispatcher();
	virtual void visit();
	TodoReturn getMaxY();
	TodoReturn getMinY();
	TodoReturn moveToTop() = win 0xb00ba;
	TodoReturn postVisit();
	CCScrollLayerExt(cocos2d::CCRect) = win 0xb00ba;
	~CCScrollLayerExt();

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
    static CustomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType);
    inline static CustomListView* create(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
        return CustomListView::create(entries, nullptr, width, height, 0, type);
    }
    virtual TableViewCell* getListCell(const char*);
    virtual void loadCell(TableViewCell*, int);
    virtual void setupList(float);
    float getCellHeight(BoomListType);
    TodoReturn reloadAll();
    inline CustomListView() {}

    int m_unknown;
}


[[link(android)]]
class BoomListView : cocos2d::CCLayer, TableViewDelegate, TableViewDataSource {
    BoomListView() {}
    ~BoomListView() {
        CC_SAFE_RELEASE(m_entries);
    }

    static BoomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType);
    bool init(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = win 0xb00ba;
    virtual void draw() {}

    virtual void setupList(float);
    virtual void TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
    virtual float cellHeightForRowAtIndexPath(CCIndexPath&, TableView*);
    virtual void didSelectRowAtIndexPath(CCIndexPath&, TableView*) {}
    virtual int numberOfRowsInSection(unsigned int, TableView*);
    virtual unsigned int numberOfSectionsInTableView(TableView*);
    virtual TableViewCell* cellForRowAtIndexPath(CCIndexPath&, TableView*);
    virtual void TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&) {}
    virtual void TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
    virtual TableViewCell* getListCell(const char*);
    virtual void loadCell(TableViewCell*, int);
    inline bool init(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
        return this->init(entries, nullptr, height, width, 0, type, 0.0f);
    }
    TodoReturn addObjectToList(cocos2d::CCNode*);
    TodoReturn lockList(bool);

	// 2.2, not tested

    TableView* m_tableView;
    cocos2d::CCArray* m_entries;
    BoomListType m_type;
    float m_itemSeparation;
    int m_currentPage;
	float m_height;
    float m_width;
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

    static CCMenuItemToggler* create(cocos2d::CCNode* offSpr, cocos2d::CCNode* onSpr, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) = win 0xb00ba;
    void setSizeMult(float);
    void toggle(bool) = win 0xb00ba;
    bool init(cocos2d::CCNode* off, cocos2d::CCNode* on, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler handler) = win 0xb00ba;
    virtual void activate();
    virtual void selected();
    virtual void unselected();
    virtual void setEnabled(bool enabled) = win 0xb00ba;

	TodoReturn activeItem();
	TodoReturn normalTouch(cocos2d::CCObject*);
	TodoReturn selectedTouch(cocos2d::CCObject*);

    CCMenuItemSpriteExtra* m_offButton;
    CCMenuItemSpriteExtra* m_onButton;
    bool m_toggled;
    bool m_notClickable;
}

[[link(android)]]
class CCContentLayer : cocos2d::CCLayerColor {
	inline CCContentLayer() {}
	virtual void setPosition(cocos2d::CCPoint const&) = win 0xb00ba;
	static CCContentLayer* create(cocos2d::_ccColor4B const&, float, float);
	~CCContentLayer();
}


[[link(android)]]
class MenuLayer : cocos2d::CCLayer, FLAlertLayerProtocol, GooglePlayDelegate {
	void onFacebook(cocos2d::CCObject* sender);
	void onEveryplay(cocos2d::CCObject* sender);
	void onMoreGames(cocos2d::CCObject* sender);
	void onMyProfile(cocos2d::CCObject* sender);
	TodoReturn openOptions(bool);
	void onFreeLevels(cocos2d::CCObject* sender);
	void onGameCenter(cocos2d::CCObject* sender);
	void onNewgrounds(cocos2d::CCObject* sender);
	void onFullVersion(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
	void onAchievements(cocos2d::CCObject* sender);
	TodoReturn showGCQuestion();
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = win 0xb00ba;
	TodoReturn firstNetworkTest();
	TodoReturn onOptionsInstant();
	void onGooglePlayGames(cocos2d::CCObject* sender);
	TodoReturn showMeltdownPromo();
	TodoReturn googlePlaySignedIn() = win 0xb00ba;
	TodoReturn videoOptionsClosed();
	TodoReturn videoOptionsOpened();
	TodoReturn updateUserProfileButton();
	TodoReturn syncPlatformAchievements(float);
	virtual bool init() = win 0x276700;
	static cocos2d::CCScene* scene(bool) = win 0x12c470;
	void onPlay(cocos2d::CCObject* sender);
	void onQuit(cocos2d::CCObject* sender);
	TodoReturn endGame();
	virtual void keyDown(cocos2d::enumKeyCodes);
	void onDaily(cocos2d::CCObject* sender);
	void onStats(cocos2d::CCObject* sender);
	TodoReturn showTOS();
	void onGarage(cocos2d::CCObject* sender);
	void onRobTop(cocos2d::CCObject* sender);
	void onTwitch(cocos2d::CCObject* sender);
	void onCreator(cocos2d::CCObject* sender);
	void onDiscord(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender);
	void onTrailer(cocos2d::CCObject* sender);
	void onTwitter(cocos2d::CCObject* sender);
	void onYouTube(cocos2d::CCObject* sender);
	TodoReturn tryShowAd(float);
	TodoReturn willClose();
	~MenuLayer();
}

[[link(android)]]
class LoadingLayer : cocos2d::CCLayer {
	void loadAssets() = win 0x272390;
	TodoReturn updateProgress(int);
	void loadingFinished() = win 0x2722A0;
	const char* getLoadingString() = win 0x272A20;
	bool init(bool fromReload) = win 0x271B30;
	static cocos2d::CCScene* scene(bool);
	static LoadingLayer* create(bool fromReload) = win 0x271A90;
	~LoadingLayer();

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
	/* unverified signature */
	void setLabelColor(cocos2d::_ccColor3B);
	/* unverified signature */
	void setAlertPosition(cocos2d::CCPoint, cocos2d::CCPoint);
	bool init(gd::string, float, float, int, gd::string);
	static TextAlertPopup* create(gd::string, float, float, int, gd::string);
	~TextAlertPopup();
}


[[link(android)]]
class GJGarageLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, GameRateDelegate, ListButtonBarDelegate, DialogDelegate, CharacterColorDelegate {
	void onNavigate(cocos2d::CCObject* sender);
	TodoReturn toggleGlow();
	TodoReturn updateRate();
	void onSelectTab(cocos2d::CCObject* sender);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn dialogClosed(DialogLayer*);
	TodoReturn getLockFrame(int, UnlockType);
	void onToggleItem(cocos2d::CCObject* sender);
	virtual void keyBackClicked();
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
	virtual bool init();
	static cocos2d::CCScene* scene();
	void onBack(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onShop(cocos2d::CCObject* sender);
	void onArrow(cocos2d::CCObject* sender);
	void onPaint(cocos2d::CCObject* sender);
	TodoReturn getItems(IconType);
	TodoReturn getItems(int, int, IconType, int);
	void onSelect(cocos2d::CCObject* sender);
	void onShards(cocos2d::CCObject* sender);
	void onSpecial(cocos2d::CCObject* sender);
	TodoReturn selectTab(IconType);
	TodoReturn setupPage(int, IconType);
	~GJGarageLayer();
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
	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int);
	static ListButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int);
	void onLeft(cocos2d::CCObject* sender);
	TodoReturn getPage();
	void onRight(cocos2d::CCObject* sender);
	TodoReturn goToPage(int);
	~ListButtonBar();
}


[[link(android)]]
class DialogLayer : cocos2d::CCLayerColor, TextAreaDelegate {
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn addToMainScene();
	virtual void keyBackClicked();
	TodoReturn animateInDialog();
	TodoReturn handleDialogTap();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn createDialogLayer(DialogObject*, cocos2d::CCArray*, int);
	TodoReturn createWithObjects(cocos2d::CCArray*, int);
	TodoReturn displayNextObject();
	TodoReturn fadeInTextFinished(TextArea*);
	TodoReturn animateInRandomSide();
	TodoReturn displayDialogObject(DialogObject*);
	TodoReturn updateChatPlacement(DialogChatPlacement);
	TodoReturn updateNavButtonFrame();
	TodoReturn finishCurrentAnimation();
	virtual void registerWithTouchDispatcher();
	bool init(DialogObject*, cocos2d::CCArray*, int);
	static DialogLayer* create(DialogObject*, int);
	virtual void keyDown(cocos2d::enumKeyCodes);
	TodoReturn onClose();
	virtual void onEnter();
	TodoReturn animateIn(DialogAnimationType);
	~DialogLayer();
}


[[link(android)]]
class GameManager : GManager {
	static GameManager* get() {
        return GameManager::sharedState();
    }

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
	TodoReturn colorForIdx(int);
	TodoReturn colorForPos(int);
	TodoReturn doQuickSave();
	TodoReturn fadeInMusic(gd::string);
	TodoReturn getFontFile(int);
	TodoReturn getGTexture(int);
	TodoReturn joinDiscord();
	TodoReturn saveAdTimer();
	static GameManager* sharedState() = win 0xb00ba;
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
	bool isIconUnlocked(int, IconType);
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
	TodoReturn fadeInMenuMusic();
	TodoReturn getGameVariable(char const*);
	/* unverified signature */
	bool isColorUnlocked(int, UnlockType);
	TodoReturn loadDeathEffect(int);
	TodoReturn loadGroundAsync(int);
	TodoReturn openEditorGuide();
	TodoReturn queueReloadMenu();
	/* unverified signature */
	void setGameVariable(char const*, bool);
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
	TodoReturn returnToLastScene(GJGameLevel*);
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
	TodoReturn reportPercentageForLevel(int, int, bool);
	TodoReturn syncPlatformAchievements();
	TodoReturn verifyAchievementUnlocks();
	TodoReturn getOrderedCustomObjectKeys();
	TodoReturn rewardedVideoHiddenDelayed();
	TodoReturn checkSteamAchievementUnlock();
	TodoReturn applicationDidEnterBackground();
	TodoReturn applicationWillEnterForeground();
	virtual bool init();
	TodoReturn getUGV(char const*);
	/* unverified signature */
	void setUGV(char const*, bool);
	virtual void update(float);
	TodoReturn iconKey(int, IconType);
	TodoReturn colorKey(int, UnlockType);
	TodoReturn loadFont(int);
	TodoReturn loadIcon(int, int, int);
	TodoReturn lockIcon(int, IconType);
	TodoReturn rateGame();
	TodoReturn firstLoad();
	TodoReturn lockColor(int, UnlockType);
	TodoReturn reloadAll(bool, bool, bool) = win 0xb00ba;
	~GameManager();
}


[[link(android)]]
class GJDropDownLayer : cocos2d::CCLayerColor {
	bool init(char const*) = win 0xb00ba;
	static GJDropDownLayer* create(char const*);
	static GJDropDownLayer* create(char const*, float);
	~GJDropDownLayer();

	virtual void customSetup() {}
    virtual void enterLayer();
    virtual void exitLayer(cocos2d::CCObject*);
    virtual void showLayer(bool);
    virtual void hideLayer(bool);
    virtual void layerVisible();
    virtual void layerHidden();
    virtual void enterAnimFinished() {}
    virtual void disableUI();
    virtual void enableUI();
    
    virtual bool ccTouchBegan(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {
        return true;
    }
    virtual void ccTouchMoved(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {}
    virtual void ccTouchEnded(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {}
    virtual void ccTouchCancelled(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {}

    virtual void draw();
    bool init(const char* title, float height) = win 0xb00ba;
    virtual void registerWithTouchDispatcher();
    virtual void keyBackClicked();
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
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn tryLoadData(DS_Dictionary*, gd::string const&);
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn getSaveString();
	TodoReturn loadFromString(gd::string&);
	TodoReturn loadDataFromFile(gd::string const&);
	TodoReturn getCompressedSaveString();
	TodoReturn loadFromCompressedString(gd::string&);
	virtual bool init();
	TodoReturn load();
	TodoReturn save();
	TodoReturn setup();
	TodoReturn saveData(DS_Dictionary*, gd::string);
	TodoReturn saveGMTo(gd::string);
	TodoReturn firstLoad();
	~GManager();
}


[[link(android)]]
class GJGameLevel : cocos2d::CCNode {
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn getCoinKey(int);
	TodoReturn getSongName();
	TodoReturn getLengthKey(int, bool);
	/* unverified signature */
	bool isPlatformer();
	TodoReturn saveNewScore(int, int);
	TodoReturn copyLevelInfo(GJGameLevel*);
	TodoReturn unverifyCoins();
	TodoReturn savePercentage(int, bool, int, int, bool);
	TodoReturn createWithCoder(DS_Dictionary*);
	virtual void encodeWithCoder(DS_Dictionary*);
	TodoReturn getListSnapshot();
	TodoReturn levelWasAltered();
	TodoReturn areCoinsVerified();
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
	virtual bool init();
	static GJGameLevel* create(cocos2d::CCDictionary*, bool);
	static GJGameLevel* create();
	virtual bool canEncode();
	~GJGameLevel();
}


class UIButtonConfig {
    
}

[[link(android)]]
class DialogObject : cocos2d::CCObject {
	bool init(gd::string, gd::string, int, float, bool, cocos2d::_ccColor3B);
	static DialogObject* create(gd::string, gd::string, int, float, bool, cocos2d::_ccColor3B);
	~DialogObject();
}


[[link(android)]]
class AchievementNotifier : cocos2d::CCNode {
	static AchievementNotifier* sharedState();
	TodoReturn notifyAchievement(char const*, char const*, char const*, bool);
	TodoReturn willSwitchToScene(cocos2d::CCScene*) = win 0xb00ba;
	TodoReturn showNextAchievement();
	TodoReturn achievementDisplayFinished();
	virtual bool init();
	~AchievementNotifier();
}

[[link(android)]]
class GJListLayer : cocos2d::CCLayerColor {
	bool init(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, int);
	static GJListLayer* create(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, int) = win 0xb00ba;
	~GJListLayer();

	// 2.2 not tested
	BoomListView* m_listView;
}

[[link(android)]]
class LoadingCircle : cocos2d::CCLayerColor {
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn fadeAndRemove() = win 0xb00ba;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void registerWithTouchDispatcher();
	virtual void draw();
	virtual bool init();
	TodoReturn show() = win 0xb00ba;
	static LoadingCircle* create() = win 0xb00ba;
	~LoadingCircle();
}


[[link(android)]]
class AppDelegate : cocos2d::CCApplication, cocos2d::CCSceneDelegate {
	TodoReturn checkSound();
	TodoReturn pauseSound();
	TodoReturn resumeSound();
	virtual void setupGLView();
	virtual void trySaveGame(bool) = win 0xb00ba;
	virtual void platformShutdown();
	TodoReturn hideLoadingCircle();
	TodoReturn loadingIsFinished();
	TodoReturn showLoadingCircle(bool, bool, bool);
	TodoReturn willSwitchToScene(cocos2d::CCScene*);
	/* unverified signature */
	void setIdleTimerDisabled(bool);
	virtual void applicationWillBecomeActive();
	virtual void applicationWillResignActive();
	virtual void applicationDidEnterBackground();
	virtual bool applicationDidFinishLaunching();
	virtual void applicationWillEnterForeground();
	static AppDelegate* get();
	TodoReturn bgScale();
	TodoReturn musicTest();
	TodoReturn pauseGame();
	~AppDelegate();
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
	/* unverified signature */
	static bool isControllerConnected() = win 0xb00ba;
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
class SliderThumb : cocos2d::CCMenuItemImage {
	/* unverified signature */
	void setRotated(bool);
	/* unverified signature */
	void setMaxOffset(float);
	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*);
	static SliderThumb* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*);
	float getValue() = win 0xb00ba;
	void setValue(float);
	~SliderThumb();
}

[[link(android)]]
class ColorChannelSprite : cocos2d::CCSprite {
	// TodoReturn updateValues(ColorAction*);
	TodoReturn updateOpacity(float) = win 0xb00ba;
	TodoReturn updateBlending(bool);
	TodoReturn updateCopyLabel(int, bool);
	virtual bool init();
	static ColorChannelSprite* create() = win 0xb00ba;
	~ColorChannelSprite();
}

[[link(android)]]
class GJDropDownLayerDelegate {
    virtual void dropDownLayerWillClose(GJDropDownLayer*) {}
}

[[link(android)]]
class StatsCell : TableViewCell {
	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(StatsObject*);
	TodoReturn getTitleFromKey(char const*);
	virtual void draw() = win 0xb00ba;
	virtual bool init();
	StatsCell(char const*, float, float);
	~StatsCell();
}


[[link(android)]]
class StatsObject : cocos2d::CCObject {
	bool init(char const*, int);
	static StatsObject* create(char const*, int);
	~StatsObject();
}

[[link(android)]]
class SliderTouchLogic : cocos2d::CCMenu {
	/* unverified signature */
	void setRotated(bool);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	/* unverified signature */
	void setMaxOffset(float);
	virtual void registerWithTouchDispatcher();
	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float);
	static SliderTouchLogic* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float);
	~SliderTouchLogic();

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
	static TodoReturn intToString(int);
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
	static CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, float, float, float, cocos2d::CCPoint, char const*, bool, int, cocos2d::CCArray*) = win 0xb00ba;
	static CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCArray*) = win 0xb00ba;
	static TodoReturn fast_rand_minus1_1();
	static TodoReturn particleFromString(gd::string const&, cocos2d::CCParticleSystemQuad*, bool);
	static TodoReturn particleFromStruct(cocos2d::ParticleStruct const&, cocos2d::CCParticleSystemQuad*, bool);
	static TodoReturn getDropActionWDelay(float, float, float, cocos2d::CCNode*, cocos2d::SEL_CallFunc);
	static TodoReturn alignItemsVertically(cocos2d::CCArray*, float, cocos2d::CCPoint);
	static TodoReturn contentScaleClipRect(cocos2d::CCRect&);
	static TodoReturn multipliedColorValue(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float);
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