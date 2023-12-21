
[[link(android)]]
class FLAlertLayer : cocos2d::CCLayerColor {
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void keyBackClicked();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	void incrementForcePrio();
	virtual void registerWithTouchDispatcher();
	bool init(int);
	bool init(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float, bool, float, float);
	void show();
	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*);
	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float);
	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float, bool, float, float);
	void onBtn1(cocos2d::CCObject* sender);
	void onBtn2(cocos2d::CCObject* sender);
	virtual void keyDown(cocos2d::enumKeyCodes);
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
	TodoReturn updateBGImage(char const*);
	TodoReturn updateSpriteBGSize();
	TodoReturn updateSpriteOffset(cocos2d::CCPoint);
	bool init(char const*, int, int, float, bool, char const*, char const*, float);
	bool init(cocos2d::CCSprite*, int, int, float, float, bool, char const*, bool);
	static ButtonSprite* create(char const*);
	static ButtonSprite* create(char const*, float);
	static ButtonSprite* create(char const*, int, int, float, bool);
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*);
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*, float);
	static ButtonSprite* create(cocos2d::CCSprite*);
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool);
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool, char const*, bool);
	/* unverified signature */
	void setColor(cocos2d::_ccColor3B);
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
	virtual void unselected();
	/* unverified signature */
	void setSizeMult(float);
	TodoReturn useAnimationType(MenuAnimationType);
	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	static CCMenuItemSpriteExtra* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	virtual void activate();
	virtual void selected();
	~CCMenuItemSpriteExtra();
}


[[link(android)]]
class CCTextInputNode : cocos2d::CCLayer, cocos2d::CCIMEDelegate, cocos2d::CCTextFieldDelegate {
	TodoReturn addTextArea(TextArea*);
	TodoReturn forceOffset();
	virtual void textChanged();
	TodoReturn updateLabel(gd::string);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn refreshLabel();
	/* unverified signature */
	void setAllowedChars(gd::string);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
	virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
	TodoReturn onClickTrackNode(bool);
	/* unverified signature */
	void setMaxLabelScale(float);
	/* unverified signature */
	void setMaxLabelWidth(float);
	TodoReturn updateBlinkLabel();
	/* unverified signature */
	void setLabelNormalColor(cocos2d::_ccColor3B);
	TodoReturn updateCursorPosition(cocos2d::CCPoint, cocos2d::CCRect);
	virtual bool onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int, cocos2d::enumKeyCodes);
	TodoReturn updateBlinkLabelToChar(int);
	TodoReturn updateDefaultFontValues(gd::string);
	virtual bool onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF*);
	virtual bool onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF*);
	/* unverified signature */
	void setLabelPlaceholderColor(cocos2d::_ccColor3B);
	/* unverified signature */
	void setLabelPlaceholderScale(float);
	virtual void registerWithTouchDispatcher();
	bool init(float, float, char const*, char const*, int, char const*);
	virtual void visit();
	static CCTextInputNode* create(float, float, char const*, char const*, int, char const*);
	TodoReturn getString();
	/* unverified signature */
	void setString(gd::string);
	~CCTextInputNode();
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
	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler);
	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, float);
	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float);
	TodoReturn getThumb();
	TodoReturn getValue();
	/* unverified signature */
	void setValue(float);
	TodoReturn updateBar();
	~Slider();
}

[[link(android)]]
class CCIndexPath : cocos2d::CCObject {
	~CCIndexPath();
}

[[link(android)]]
class TableView : CCScrollLayerExt, CCScrollLayerExtDelegate {
	TodoReturn claimTouch(cocos2d::CCTouch*);
	TodoReturn reloadData();
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
}


[[link(android)]]
class TableViewCell : cocos2d::CCLayer {
	TodoReturn updateVisibility();
	TableViewCell(char const*, float, float);
	~TableViewCell();
}


[[link(android)]]
class TableViewDelegate {
	TodoReturn willTweenToIndexPath(CCIndexPath&, TableViewCell*, TableView*);
	TodoReturn didEndTweenToIndexPath(CCIndexPath&, TableView*);
	TodoReturn TableViewDidDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
	TodoReturn TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
	TodoReturn TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*);
}

[[link(android)]]
class TextInputDelegate {
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn enterPressed(CCTextInputNode*);
	TodoReturn allowTextInput(CCTextInputNode*);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn textInputOpened(CCTextInputNode*);
	TodoReturn textInputReturn(CCTextInputNode*);
	TodoReturn textInputShouldOffset(CCTextInputNode*, float);
}


[[link(android)]]
class TableViewDataSource {
	TodoReturn numberOfSectionsInTableView(TableView*);
	TodoReturn TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&);
}


[[link(android)]]
class TableViewCellDelegate {
	TodoReturn getSelectedCellIdx();
	TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*);
	TodoReturn shouldSnapToSelected();
}

[[link(android)]]
class CCScrollLayerExt : cocos2d::CCLayer {
	TodoReturn scrollLayer(float);
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn scrollingEnd();
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
	/* unverified signature */
	void setContentOffset(cocos2d::CCPoint, bool);
	TodoReturn updateIndicators(float);
	TodoReturn constraintContent();
	TodoReturn doConstraintContent(bool);
	TodoReturn moveToTopWithOffset(float);
	/* unverified signature */
	void setContentLayerSize(cocos2d::CCSize);
	TodoReturn preVisitWithClippingRect(cocos2d::CCRect);
	virtual void registerWithTouchDispatcher();
	virtual void visit();
	TodoReturn getMaxY();
	TodoReturn getMinY();
	TodoReturn moveToTop();
	TodoReturn postVisit();
	CCScrollLayerExt(cocos2d::CCRect);
	~CCScrollLayerExt();
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
        return CustomListView::create(entries, width, height, 0, type);
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
    bool init(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType);
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
        return this->init(entries, nullptr, height, width, 0, type);
    }
    TodoReturn addObjectToList(cocos2d::CCNode*);
    TodoReturn lockList(bool);

    TableView* m_tableView;
    cocos2d::CCArray* m_entries;
    BoomListType m_type;
    float m_height;
    float m_width;
    float m_itemSeparation;
    int m_currentPage;
}