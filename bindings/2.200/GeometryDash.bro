[[link(android)]]
class FLAlertLayer : cocos2d::CCLayerColor {
	~FLAlertLayer() {
		if (m_forcePrioRegistered) {
			cocos2d::CCTouchDispatcher::get()->unregisterForcePrio(this);
		}
	}
	FLAlertLayer() {
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

	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*) = win 0x30c40, mac 0x476e40;
	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float) = win 0x30cf0, mac 0x4770a0;
	static FLAlertLayer* create(FLAlertLayerProtocol*, char const*, gd::string, char const*, char const*, float, bool, float, float) = win 0x30da0, mac 0x476ee0;

	bool init(int) = win 0x30eb0, mac 0x477b50;
	bool init(FLAlertLayerProtocol*, char const* title, gd::string description, char const* btn1, char const* btn2, float width, bool scrollable, float height, float textScale) = win 0x30f50, mac 0x477140;

	void onBtn1(cocos2d::CCObject* sender) = win 0x31a40, mac 0x477c50;
	void onBtn2(cocos2d::CCObject* sender) = win 0x31a80, mac 0x477cb0;

	// TODO: inlined on windows
	void incrementForcePrio() = mac 0x477c00;

	// doesnt exist on windows, nor android armv8..

	// 2.2 order not tested

	// this func doesnt exist outside of armv7, for some reason:
	// virtual void onEnter();
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31ac0, mac 0x477ee0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31c10, mac 0x478120;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31b50, mac 0x478000;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x31bc0, mac 0x4780a0;
	virtual void registerWithTouchDispatcher() = win 0x31df0, mac 0x478350;
	virtual void keyBackClicked() = win 0x319a0, mac 0x477dc0;
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x31930, mac 0x477d10;
	virtual void show() = win 0x31c60, mac 0x4781a0;

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
	static ButtonSprite* create(char const*, float) = mac 0x8c590;
	static ButtonSprite* create(char const*, int, int, float, bool);
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*);
	static ButtonSprite* create(char const*, int, int, float, bool, char const*, char const*, float) = win 0x1feb0, mac 0x8c5c0;
	static ButtonSprite* create(cocos2d::CCSprite*);
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool);
	static ButtonSprite* create(cocos2d::CCSprite*, int, int, float, float, bool, char const*, bool) = win 0x1fb90, mac 0x8bd40;

	bool init(char const*, int, int, float, bool, char const*, char const*, float) = win 0x1ff80;
	bool init(cocos2d::CCSprite*, int, int, float, float, bool, char const*, bool) = win 0x1fc60;
	~ButtonSprite();

	void setColor(cocos2d::ccColor3B) = win 0x20b20, mac 0x8cf20;
	void setString(char const*) = win 0x20770, mac 0x8c9e0;

	TodoReturn updateBGImage(char const*) = win 0x20230, mac 0x8cdd0;
	TodoReturn updateSpriteBGSize();
	TodoReturn updateSpriteOffset(cocos2d::CCPoint) = mac 0x8cef0;

	PAD = mac 0x18, win 0x18;
    cocos2d::CCLabelBMFont* m_label;
    cocos2d::CCSprite* m_subSprite;
    cocos2d::CCSprite* m_subBGSprite;
    cocos2d::extension::CCScale9Sprite* m_BGSprite;
    PAD = mac 0xC, win 0x8;
    cocos2d::CCPoint m_spritePosition;
}

[[link(android)]]
class ScrollingLayer : cocos2d::CCLayerColor {
	static ScrollingLayer* create(cocos2d::CCSize, cocos2d::CCPoint, float);

	bool init(cocos2d::CCSize, cocos2d::CCPoint, float);
	~ScrollingLayer();

	TodoReturn getViewRect();

	/* unverified signature */
	void setStartOffset(cocos2d::CCPoint);

	virtual void draw() = mac 0x6e4030;
	virtual void visit() = mac 0x6e4120;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x6e4270;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x6e4410;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x6e4530;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x6e4570;
}

[[link(android)]]
class CreatorLayer : cocos2d::CCLayer, cocos2d::CCSceneTransitionDelegate, DialogDelegate {
	static CreatorLayer* create() = mac 0x2752e0;

	~CreatorLayer();

	void onMapPacks(cocos2d::CCObject* sender) = mac 0x2769d0, win 0x70250;
	void onMyLevels(cocos2d::CCObject* sender) = mac 0x276a70, win 0x6FE90;
	void onTopLists(cocos2d::CCObject* sender) = mac 0x276970, win 0x70160;
	void onChallenge(cocos2d::CCObject* sender) = mac 0x2766b0, win 0x70910;
	void onGauntlets(cocos2d::CCObject* sender) = mac 0x2768a0;
	void onDailyLevel(cocos2d::CCObject* sender) = mac 0x2766e0;
	void onEventLevel(cocos2d::CCObject* sender) = mac 0x276720, win 0x70740;
	void onFameLevels(cocos2d::CCObject* sender);
	void onMultiplayer(cocos2d::CCObject* sender) = mac 0x276310, win 0x70330;
	void onSavedLevels(cocos2d::CCObject* sender) = mac 0x276200, win 0x6FF80;
	void onSecretVault(cocos2d::CCObject* sender) = mac 0x276e10, win 0x70940;
	void onWeeklyLevel(cocos2d::CCObject* sender) = mac 0x276700;
	void onAdventureMap(cocos2d::CCObject* sender) = mac 0x276640, win 0x706C0;
	void onLeaderboards(cocos2d::CCObject* sender) = mac 0x2762d0;
	void onOnlineLevels(cocos2d::CCObject* sender) = mac 0x276a30, win 0x701E0;
	void onTreasureRoom(cocos2d::CCObject* sender) = mac 0x277020, win 0x70C50;
	void onFeaturedLevels(cocos2d::CCObject* sender) = mac 0x2768f0, win 0x700C0;
	void onOnlyFullVersion(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender) = mac 0x2775e0;
	void onPaths(cocos2d::CCObject* sender) = mac 0x276950;

	TodoReturn checkQuestsStatus() = mac 0x276d10, win 0x71090;
	TodoReturn canPlayOnlineLevels();
	TodoReturn scene() = mac 0x2751c0;

	virtual bool init() = mac 0x2753c0, win 0x6F090;
	virtual void keyBackClicked() = mac 0x277830;
	virtual void sceneWillResume() = mac 0x2777b0;
	virtual TodoReturn dialogClosed(DialogLayer*) = win 0x711d0, mac 0x2776b0;
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
	static LevelSelectLayer* create(int) = mac 0x410b80;

	bool init(int) = mac 0x410c70;
	~LevelSelectLayer() = mac 0x4109e0;

	TodoReturn getColorValue(int, int, float) = mac 0x4133f0;

	void onDownload(cocos2d::CCObject* sender) = mac 0x411980;
	void onBack(cocos2d::CCObject* sender) = mac 0x411a30;
	void onInfo(cocos2d::CCObject* sender) = mac 0x411a80;
	void onNext(cocos2d::CCObject* sender) = mac 0x411a00;
	void onPlay(cocos2d::CCObject* sender);
	void onPrev(cocos2d::CCObject* sender) = mac 0x4119d0;

	TodoReturn colorForPage(int);
	TodoReturn scene(int) = mac 0x410a60;
	TodoReturn tryShowAd();

	virtual void keyBackClicked() = mac 0x413710;
	virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x4137b0;
	virtual TodoReturn updatePageWithObject(cocos2d::CCObject*, cocos2d::CCObject*) = mac 0x411ac0;
	virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint) = mac 0x413280;
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

	bool init(GauntletType) = mac 0x3708e0, win 0x183860;
	~GauntletLayer();

	void onBack(cocos2d::CCObject* sender);
	void onLevel(cocos2d::CCObject* sender) = mac 0x3724b0;

	TodoReturn setupGauntlet(cocos2d::CCArray*) = mac 0x370fb0;
	TodoReturn unlockActiveItem();
	TodoReturn scene(GauntletType) = mac 0x3706f0;

	virtual void keyBackClicked() = mac 0x372af0;
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int) = mac 0x372050;
	virtual TodoReturn loadLevelsFailed(char const*, int) = mac 0x372210;
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

	static CCMenuItemSpriteExtra* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = win 0x25830, mac 0x254900;

	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = mac 0x254990;

	~CCMenuItemSpriteExtra() {}
	CCMenuItemSpriteExtra() {
		m_scaleMultiplier = 1.0f;
		m_baseScale = 1.0f;
		m_animationEnabled = true;
		m_colorEnabled = false;
		m_unknown1 = 0.0f;
		m_colorDip = 0.0f;
		m_animationType = MenuAnimationType::Scale;
		m_unknown4 = 0;
	}

	/* unverified signature */
	void setSizeMult(float mult) {
		//inlined on windows, member is in CCMenuItemSprite
		m_fSizeMult = mult;
	}

	// 2.2 not tested

	virtual void activate() = mac 0x254b20;
	virtual void selected() = mac 0x254c90;
	virtual void unselected() = mac 0x254f00;

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
	CCTextInputNode() {
		m_numberInput = false;
		m_caption = "";
		m_unknown1 = 0;
		m_selected = false;
		m_unknown2 = false;
		m_fontValue1 = -0.5f;
		m_fontValue2 = 8.0f;
		m_isChatFont = false;
		m_allowedChars = "";
		m_maxLabelWidth = 0.0f;
		m_maxLabelScale = 0.0f;
		m_placeholderScale = 0.0f;
		m_placeholderColor = cocos2d::ccc3(0, 0, 0);
		m_textColor = cocos2d::ccc3(0, 0, 0);
		m_cursor = nullptr;
		m_textField = nullptr;
		m_delegate = nullptr;
		m_maxLabelLength = 0;
		m_placeholderLabel = nullptr;
		m_filterSwearWords = false;
		m_usePasswordChar = false;
		m_forceOffset = false;
		m_textArea = nullptr;
	}

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
	void setMaxLabelLength(int v) {
		m_maxLabelLength = v;
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

	static CCTextInputNode* create(float, float, char const*, char const*, int, char const*) = win 0x2e440, mac 0x97e10;

	bool init(float, float, char const*, char const*, int, char const*) = win 0x2e500, mac 0x97fc0;
	~CCTextInputNode() = mac 0x97d40;

	gd::string getString() = win 0x2ea50, mac 0x98980;

	void setAllowedChars(gd::string) = win 0x2e8c0, mac 0x98860;
	/* unverified signature */
	void setLabelNormalColor(cocos2d::_ccColor3B);
	/* unverified signature */
	void setString(gd::string) = win 0x2e9a0, mac 0x988e0;

	TodoReturn addTextArea(TextArea*) = mac 0x98350;
	TodoReturn forceOffset() = mac 0x9a490;
	void updateLabel(gd::string) = win 0x2eac0, mac 0x98560;
	void refreshLabel() = win 0x2ede0, mac 0x98a20;
	TodoReturn updateBlinkLabel();
	TodoReturn updateCursorPosition(cocos2d::CCPoint, cocos2d::CCRect) = mac 0x9a4a0;
	TodoReturn updateBlinkLabelToChar(int);
	TodoReturn updateDefaultFontValues(gd::string);

	// 2.2, very wrong since this class changed a lot

	virtual void visit() = mac 0x98880;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x9a9d0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x9ac00;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x9abc0;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x9abe0;
	virtual void registerWithTouchDispatcher() = mac 0x9ac20;
	virtual void textChanged() = mac 0x993a0;
	virtual void onClickTrackNode(bool) = win 0x02f600, mac 0x99380;
	virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&) = mac 0x99120;
	virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&) = mac 0x99270;
	virtual bool onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int, cocos2d::enumKeyCodes) = mac 0x994b0;
	virtual bool onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF*) = mac 0x99a30;
	virtual bool onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF*) = mac 0x99d50;

	bool m_numberInput;
	gd::string m_caption;
	int m_unknown1;
	bool m_selected;
	bool m_unknown2;
	float m_fontValue1;
	float m_fontValue2;
	bool m_isChatFont;
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
	bool m_filterSwearWords;
	bool m_usePasswordChar;
	bool m_forceOffset;
	TextArea* m_textArea;
	PAD = android32 0xc, android64 0x10, mac 0x10;
}

[[link(android)]]
class TextArea : cocos2d::CCSprite {
	static TextArea* create(gd::string, char const*, float, float, cocos2d::CCPoint, float, bool) = mac 0x2fecb0, win 0x51FB0;

	bool init(gd::string, char const*, float, float, cocos2d::CCPoint, float, bool) = mac 0x2fee50, win 0x520B0;
	~TextArea();

	void setIgnoreColorCode(bool);
	void setString(gd::string) = mac 0x2fef40, win 0x521C0;

	TodoReturn finishFade();
	TodoReturn colorAllLabels(cocos2d::_ccColor3B);
	TodoReturn fadeInCharacters(float, float) = mac 0x2ffae0;
	TodoReturn fadeOutAndRemove();
	TodoReturn colorAllCharactersTo(cocos2d::_ccColor3B);
	TodoReturn stopAllCharacterActions();
	TodoReturn fadeIn(float, bool);
	TodoReturn fadeOut(float);
	TodoReturn hideAll();
	TodoReturn showAll();

	virtual void update(float) = mac 0x2ff930;
	virtual void draw() = mac 0x2ff920;
	virtual void setOpacity(unsigned char) = mac 0x2ff780;

	bool m_disableColor;            // 0x1e4
    MultilineBitmapFont* m_label;   // 0x1e8
    float m_width;                  // 0x1ec
    int m_unknown;                  // 0x1f0
    gd::string m_fontFile;          // 0x1f4
    float m_height;                 // 0x20c
	PAD = win 0x4;
	cocos2d::CCPoint m_anchorPoint;
}

[[link(android)]]
class Slider : cocos2d::CCLayer {
	static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler) {
		return Slider::create(target, handler, 1.f);
	}
	static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler handler, float idk) {
		return Slider::create(target, handler, "sliderBar.png", "slidergroove.png", "sliderthumb.png", "sliderthumbsel.png", idk);
	}
	static Slider* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float) = win 0x4ce90, mac 0x2e1100;

	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, char const*, char const*, float) = mac 0x2e1340;
	~Slider();

	TodoReturn getLiveDragging();
	SliderThumb* getThumb() {
		return m_touchLogic->m_thumb;
	}
	float getValue() = win 0x4d250;

	void setRotated(bool);
	void setMaxOffset(float);
	void setLiveDragging(bool);
	void setBarVisibility(bool) = mac 0x2e1920;
	// inlined on windows
	void setValue(float val) {
		this->getThumb()->setValue(val);
		this->updateBar();
	}

	TodoReturn hideGroove(bool);
	TodoReturn sliderBegan();
	TodoReturn sliderEnded();
	void disableTouch() = mac 0x2e1830;
	TodoReturn enableSlider();
	TodoReturn disableSlider();

	void updateBar() {
		float local_8;
		auto thumb = this->getThumb();
		if (!thumb->m_vertical) {
			local_8 = thumb->getPositionX();
		} else {
			local_8 = thumb->getPositionY();
		}

		float local_c = thumb->getScale() * thumb->m_length * 0.5f + local_8;
		float fVar6 = m_width;
		local_c = local_c / (thumb->getScale() * thumb->m_length);
		if (fVar6 * local_c <= fVar6) {
			fVar6 = fVar6 * local_c;
		}

		this->m_sliderBar->setTextureRect(cocos2d::CCRect(0.0f, 0.0f, fVar6, m_height));
	}

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2e1980;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2e1a00;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2e19c0;

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
	~CCIndexPath() = mac 0x4670c0;
}

[[link(android), depends(CCIndexPath)]]
class TableView : CCScrollLayerExt, CCScrollLayerExtDelegate {
	static TableView* create(TableViewDelegate*, TableViewDataSource*, TableViewCellDelegate*, cocos2d::CCRect) = mac 0x5e4240;

	TodoReturn initTableViewCells();
	~TableView();

	TodoReturn claimTouch(cocos2d::CCTouch*);
	void reloadData() = win 0x504d0, mac 0x5e5020;
	TodoReturn touchFinish(cocos2d::CCTouch*);
	TodoReturn cellForTouch(cocos2d::CCTouch*);
	TodoReturn checkLastCell(TableViewCell*);
	TodoReturn checkFirstCell(TableViewCell*);
	TodoReturn scrollToIndexPath(CCIndexPath&);
	TodoReturn cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn checkBoundaryOfCell(TableViewCell*);
	TodoReturn checkBoundaryOfCell(cocos2d::CCPoint&, float);
	TodoReturn deleteTableViewCell(TableViewCell*) = mac 0x5e4cf0;
	/* unverified signature */
	bool isDuplicateIndexPath(CCIndexPath&);
	TodoReturn cellForRowAtIndexPath(CCIndexPath&);
	TodoReturn checkBoundaryOfContent(float);
	/* unverified signature */
	bool isDuplicateInVisibleCellArray(CCIndexPath*);
	TodoReturn dequeueReusableCellWithIdentifier(char const*) = mac 0x5e4f80;
	TodoReturn removeIndexPathFromPathAddedArray(CCIndexPath&);
	TableView(cocos2d::CCRect);

	virtual void onEnter() = mac 0x5e55c0;
	virtual void onExit() = mac 0x5e55d0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x5e5770;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x5e62b0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x5e6070;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x5e61f0;
	virtual void registerWithTouchDispatcher() = mac 0x5e55e0;
	virtual void scrollWheel(float, float) = win 0x50d30, mac 0x5e63a0;
	virtual TodoReturn scrllViewWillBeginDecelerating(CCScrollLayerExt*) = mac 0x5e6fa0;
	virtual TodoReturn scrollViewDidEndDecelerating(CCScrollLayerExt*) = mac 0x5e6fc0;
	virtual TodoReturn scrollViewTouchMoving(CCScrollLayerExt*) = mac 0x5e6fe0;
	virtual TodoReturn scrollViewDidEndMoving(CCScrollLayerExt*) = mac 0x5e7000;

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
	TableViewCell(char const*, float, float) = win 0x51b10, mac 0x5eb040;
	~TableViewCell() = mac 0x5eb320;

	TodoReturn updateVisibility() = mac 0x5eb5b0;

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
	virtual void textChanged(CCTextInputNode*) {}
	virtual void textInputOpened(CCTextInputNode*) {}
	virtual void textInputClosed(CCTextInputNode*) {}
	virtual void textInputShouldOffset(CCTextInputNode*, float) {}
	virtual void textInputReturn(CCTextInputNode*) {}
	virtual bool allowTextInput(CCTextInputNode*) { return true; }
	virtual void enterPressed(CCTextInputNode*) {}
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
	CCScrollLayerExt(cocos2d::CCRect) = win 0x276e0, mac 0x40cf00;
	~CCScrollLayerExt();

	TodoReturn getMaxY();
	TodoReturn getMinY();

	/* unverified signature */
	void setContentOffset(cocos2d::CCPoint, bool);
	/* unverified signature */
	void setContentLayerSize(cocos2d::CCSize);

	void scrollLayer(float) = win 0x28550, mac 0x40e1e0;
	TodoReturn scrollingEnd();
	TodoReturn updateIndicators(float);
	TodoReturn constraintContent();
	TodoReturn doConstraintContent(bool);
	void moveToTopWithOffset(float) = win 0x27ae0, mac 0x40d580;
	void moveToTop() = win 0x27b60, mac 0x40d620;

	virtual void visit() = win 0x28600, mac 0x40e2a0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x280d0, mac 0x40dc30;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x28410, mac 0x40e060;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x281c0, mac 0x40dd60;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = win 0x283e0, mac 0x40e000;
	virtual void registerWithTouchDispatcher() = win 0x280a0, mac 0x40dbf0;
	virtual TodoReturn preVisitWithClippingRect(cocos2d::CCRect) = win 0x286d0, mac 0x40e3a0;
	virtual TodoReturn postVisit() = win 0x28760, mac 0x40e420;

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

	static CustomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = win 0x7A880, mac 0x21f7d0;

	inline CustomListView() {}
	~CustomListView() = mac 0x21f750;

	float getCellHeight(BoomListType) = mac 0x2209d0;

	TodoReturn reloadAll() = mac 0x22c700;

	virtual void setupList(float) = win 0x7B710, mac 0x22bed0;
	virtual TableViewCell* getListCell(char const*) = mac 0x21f910;
	virtual void loadCell(TableViewCell*, int) = win 0x7B2D0, mac 0x2214a0;

	int m_unknown;
}

[[link(android)]]
class BoomListView : cocos2d::CCLayer, TableViewDelegate, TableViewDataSource {
	static BoomListView* create(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType);

	bool init(cocos2d::CCArray*, TableViewCellDelegate*, float, float, int, BoomListType, float) = win 0x1d400, mac 0x2e9890;
	BoomListView() {}
	~BoomListView() {
		CC_SAFE_RELEASE(m_entries);
	}

	inline bool init(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
		return this->init(entries, nullptr, height, width, 0, type, 0.0f);
	}
	TodoReturn addObjectToList(cocos2d::CCNode*);
	TodoReturn lockList(bool) = mac 0x2e9a40;

	// 2.2, not tested

	virtual void draw() {}
	virtual void setupList(float) = win 0x1d5c0, mac 0x2e9ac0;
	virtual void TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual float cellHeightForRowAtIndexPath(CCIndexPath&, TableView*) = win 0x1d650, mac 0x2e9ba0;
	virtual void didSelectRowAtIndexPath(CCIndexPath&, TableView*) {}
	virtual int numberOfRowsInSection(unsigned int, TableView*) = win 0x1d660, mac 0x2e9be0;
	virtual unsigned int numberOfSectionsInTableView(TableView*) = win 0x1d250, mac 0x2e9c10;
	virtual TableViewCell* cellForRowAtIndexPath(CCIndexPath&, TableView*) = win 0x1d670, mac 0x2e9c30;
	virtual void TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&) = win 0x1d230, mac 0x2ea4a0;
	virtual void TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
	virtual TableViewCell* getListCell(char const*) = win 0x1d6d0, mac 0x2e9d40;
	virtual void loadCell(TableViewCell*, int) = mac 0x2e9f80, win 0x1d7b0;

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

	static CCMenuItemToggler* create(cocos2d::CCNode* offSpr, cocos2d::CCNode* onSpr, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) = win 0x25e50, mac 0x5c8b0;

	bool init(cocos2d::CCNode* off, cocos2d::CCNode* on, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler handler) = win 0x25f30, mac 0x5c980;

	void setSizeMult(float) = mac 0x5ce30;

	void toggle(bool) = win 0x261e0, mac 0x5cd60;
	TodoReturn activeItem();
	TodoReturn normalTouch(cocos2d::CCObject*);
	TodoReturn selectedTouch(cocos2d::CCObject*);

	virtual void setEnabled(bool enabled) = win 0x26160, mac 0x5cfd0;

	virtual void activate() = win 0x26100, mac 0x5cf70;
	virtual void selected() = win 0x260d0, mac 0x5cf40;
	virtual void unselected() = win 0x26130, mac 0x5cfa0;

	CCMenuItemSpriteExtra* m_offButton;
	CCMenuItemSpriteExtra* m_onButton;
	bool m_toggled;
	bool m_notClickable;
}

[[link(android)]]
class CCContentLayer : cocos2d::CCLayerColor {
	static CCContentLayer* create(cocos2d::_ccColor4B const&, float, float) = mac 0x77f270;
	inline CCContentLayer() {}
	~CCContentLayer();

	virtual void setPosition(cocos2d::CCPoint const&) = win 0x23b20, mac 0x77f370;
}

[[link(android)]]
class MenuLayer : cocos2d::CCLayer, FLAlertLayerProtocol, GooglePlayDelegate {
	static cocos2d::CCScene* scene(bool) = win 0x276680, mac 0x36de10;
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
	void onStats(cocos2d::CCObject* sender) = mac 0x36f540, win 0x277c50;
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
	virtual void keyBackClicked() = mac 0x36fee0;
	virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x3701a0;
	virtual void googlePlaySignedIn() = win 0x277b10, mac 0x36fc50;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x277ea0, mac 0x36ff10;
}

[[link(android)]]
class LoadingLayer : cocos2d::CCLayer {
	static cocos2d::CCScene* scene(bool);
	static LoadingLayer* create(bool fromReload) = win 0x271A90, mac 0x380170;

	bool init(bool fromReload) = win 0x271B30, mac 0x380350;

	const char* getLoadingString() = win 0x272A20;

	void loadAssets() = win 0x272390, mac 0x380ba0;
	TodoReturn updateProgress(int);
	void loadingFinished() = win 0x2722A0, mac 0x381310;

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
	static TextAlertPopup* create(gd::string, float, float, int, gd::string) = mac 0x28b290;

	bool init(gd::string, float, float, int, gd::string) = mac 0x28b3c0;
	~TextAlertPopup();

	void setLabelColor(cocos2d::_ccColor3B) = mac 0x28b6d0;
	void setAlertPosition(cocos2d::CCPoint, cocos2d::CCPoint) = mac 0x28b710;
}

[[link(android)]]
class GJGarageLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, GameRateDelegate, ListButtonBarDelegate, DialogDelegate, CharacterColorDelegate {
	~GJGarageLayer();

	TodoReturn getLockFrame(int, UnlockType);
	TodoReturn getItems(IconType);
	TodoReturn getItems(int, int, IconType, int) = mac 0x34c160;

	void onNavigate(cocos2d::CCObject* sender);
	void onSelectTab(cocos2d::CCObject* sender) = mac 0x34b150;
	void onToggleItem(cocos2d::CCObject* sender) = win 0x1ee7d0, mac 0x34cde0;
	void onBack(cocos2d::CCObject* sender) = mac 0x34a9f0;
	void onInfo(cocos2d::CCObject* sender) = mac 0x34ac40;
	void onShop(cocos2d::CCObject* sender) = mac 0x34ab50;
	void onArrow(cocos2d::CCObject* sender);
	void onPaint(cocos2d::CCObject* sender) = mac 0x34abe0;
	void onSelect(cocos2d::CCObject* sender) = win 0x1ee4b0, mac 0x34c580;
	void onShards(cocos2d::CCObject* sender) = mac 0x34abb0;
	void onSpecial(cocos2d::CCObject* sender);

	TodoReturn toggleGlow();
	TodoReturn titleForUnlock(int, UnlockType);
	TodoReturn setupIconSelect() = mac 0x349ee0;
	TodoReturn playShadowEffect();
	TodoReturn setupSpecialPage() = mac 0x34baa0;
	TodoReturn updatePlayerName(char const*);
	TodoReturn playRainbowEffect();
	TodoReturn showUnlockPopupNew(int, UnlockType);
	TodoReturn updatePlayerColors() = mac 0x3498d0;
	TodoReturn achievementForUnlock(int, UnlockType);
	TodoReturn descriptionForUnlock(int, UnlockType);
	TodoReturn scene() = mac 0x347bd0;
	TodoReturn selectTab(IconType) = mac 0x34b2e0;
	TodoReturn setupPage(int, IconType) = mac 0x34b420;

	virtual bool init() = win 0x1EAA40, mac 0x347d60;
	virtual void keyBackClicked() = mac 0x34df30;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = mac 0x34ae00;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x34af60;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x34b0f0;
	virtual TodoReturn listButtonBarSwitchedPage(ListButtonBar*, int) = mac 0x34d510;
	virtual void showUnlockPopup(int, UnlockType) = win 0x1eea30, mac 0x34d6a0;
	virtual void updateRate() = win 0x1ef000, mac 0x34dce0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x34da70;
	virtual TodoReturn dialogClosed(DialogLayer*) = mac 0x34db80;
	virtual TodoReturn playerColorChanged() = mac 0x34d410;
}

[[link(android), depends(EventTriggerInstance), depends(SongChannelState), depends(DynamicObjectAction), depends(AdvancedFollowInstance), depends(EnterEffectInstance), depends(GameObjectPhysics), depends(GJValueTween), depends(SFXTriggerInstance)]]
class GJGameState {
	TodoReturn tweenValue(float, float, int, float, int, float, int, int) = win 0x18b380, mac 0x1525d0;
	TodoReturn stopTweenAction(int) = mac 0x152c50;
	TodoReturn updateTweenAction(float, int);
	TodoReturn controlTweenAction(int, int, GJActionCommand);
	TodoReturn updateTweenActions(float);
	TodoReturn getGameObjectPhysics(GameObject*);
	TodoReturn processStateTriggers();
	// GJGameState() = win 0x18a380;
	// ~GJGameState();

	// the hex offsets in member names are from android32 2.200
	float m_unk0;
	float m_unk4;
	cocos2d::CCPoint m_unk8;
	cocos2d::CCPoint m_unk10;
	cocos2d::CCPoint m_unk18;
	cocos2d::CCPoint m_unk20;
	cocos2d::CCPoint m_unk28;
	cocos2d::CCPoint m_unk30;
	cocos2d::CCPoint m_unk38;
	cocos2d::CCPoint m_unk40;
	cocos2d::CCPoint m_unk48;
	cocos2d::CCPoint m_unk50;
	cocos2d::CCPoint m_unk58;
	cocos2d::CCPoint m_unk60;
	cocos2d::CCPoint m_unk68;
	cocos2d::CCPoint m_unk70;
	cocos2d::CCPoint m_unk78;
	cocos2d::CCPoint m_unk80;
	cocos2d::CCPoint m_unk88;
	cocos2d::CCPoint m_unk90;
	cocos2d::CCPoint m_unk98;
	cocos2d::CCPoint m_unka0;
	cocos2d::CCPoint m_unka8;
	cocos2d::CCPoint m_unkb0;
	cocos2d::CCPoint m_unkb8;
	cocos2d::CCPoint m_unkc0;
	cocos2d::CCPoint m_unkc8;
	cocos2d::CCPoint m_unkd0;
	cocos2d::CCPoint m_unkd8;
	cocos2d::CCPoint m_unke0;
	cocos2d::CCPoint m_unke8;
	cocos2d::CCPoint m_unkf0;
	bool m_unkf8;
	PAD = win 0x7, android32 0x7, android64 0x7, mac 0x7;
	bool m_unk100;
	PAD = win 0x7, android32 0x7, android64 0x7, mac 0x7;
	bool m_unk108;
	cocos2d::CCPoint m_unk10c;
	PAD = win 0x10, android32 0x10, android64 0x10, mac 0x10;
	float m_unk124;
	float m_unk128;
	PAD = win 0x1c, android32 0x1c, android64 0x1c, mac 0x1c;
	float m_unk148;
	PAD = win 0x20, android32 0x20, android64 0x20, mac 0x20;
	float m_unk16c;
	float m_unk170;
	float m_unk174;
	float m_unk178;
	PAD = win 0xc, android32 0xc, android64 0xc, mac 0xc;
	float m_unk188;
	float m_unk18c;
	PAD = win 0x8, android32 0x8, android64 0x8, mac 0x8;
	gd::unordered_map<int, int> m_unk198;
	gd::unordered_map<int, bool> m_unk1b4;
	float m_unk1d0; // unsure types of all 4 floats
	float m_unk1d4;
	float m_unk1d8;
	float m_unk1dc;
	double m_unk1e0; // unsure type
	PAD = win 0x24, android32 0x24, android64 0x30, mac 0x30;
	cocos2d::CCPoint m_unk20c;
	PAD = win 0xa, android32 0xa, android64 0xa, mac 0xa;
	bool m_isDualMode;
	PAD = win 0x5, android32 0x5, android64 0x5, mac 0x5;
	gd::unordered_map<int, GJValueTween> m_unk224;
	PAD = win 0x10, android32 0x10, android64 0x10, mac 0x10;
	gd::unordered_map<int, GameObjectPhysics> m_unk250;
	PAD = win 0x18, android32 0x18, android64 0x24, mac 0x24;
	cocos2d::CCPoint m_unk284;
	PAD = win 0x10, android32 0x10, android64 0x10, mac 0x10;
	gd::map<std::pair<int, int>, int> m_unk29c;
	PAD = win 0x4, android32 0x4, android64 0x4, mac 0x4;
	cocos2d::CCPoint m_unk2b8;
	cocos2d::CCPoint m_unk2c0;
	bool m_unk2c8;
	bool m_unk2c9;
	bool m_unk2ca;
	PAD = win 0x6, android32 0x6, android64 0x6, mac 0x6;
	bool m_unk2d0;
	bool m_unk2d1;
	PAD = win 0x10, android32 0x10, android64 0x10, mac 0x10;
	void* m_unk2e4;
	cocos2d::CCPoint m_unk2e8;
	PAD = win 0x4, android32 0x4, android64 0x4, mac 0x4;
	gd::unordered_map<int, EnhancedGameObject*> m_unk2f4;
	gd::map<std::pair<GJGameEvent, int>, gd::vector<EventTriggerInstance>> m_unk310;
	gd::map<std::pair<GJGameEvent, int>, int> m_unk328;
	gd::unordered_map<int, gd::vector<EnterEffectInstance>> m_unk340;
	gd::unordered_map<int, gd::vector<EnterEffectInstance>> m_unk35c;
	gd::vector<int> m_unk378;
	gd::vector<int> m_unk384;
	gd::vector<EnterEffectInstance> m_unk390;
	gd::vector<EnterEffectInstance> m_unk39c;
	gd::vector<EnterEffectInstance> m_unk3a8;
	gd::vector<EnterEffectInstance> m_unk3b4;
	gd::vector<EnterEffectInstance> m_unk3c0;
	gd::unordered_set<int> m_unk3cc;
	bool m_unk3e8;
	gd::vector<AdvancedFollowInstance> m_unk3ec;
	gd::vector<DynamicObjectAction> m_unk3f8;
	gd::vector<DynamicObjectAction> m_unk404;
	bool m_unk410;
	bool m_unk411;
	PAD = win 0x4, android32 0x4, android64 0x4, mac 0x4;
	gd::unordered_map<int, gd::vector<int>> m_unk418;
	gd::map<std::pair<int, int>, SFXTriggerInstance> m_unk434;
	gd::unordered_map<int, SongChannelState> m_unk44c;
	gd::unordered_map<int, gd::vector<SongTriggerState>> m_unk468;
	gd::vector<SFXTriggerState> m_unk484;
	PAD = win 0x14, android32 0x14, android64 0x14, mac 0x14;
}

[[link(android)]]
class TriggerEffectDelegate {
	virtual TodoReturn pure_virtual_00a1b9c0() {} // TODO: figure out what function this is
	virtual TodoReturn pure_virtual_00a1b9c4() {} // TODO: figure out what function this is
	virtual TodoReturn pure_virtual_00a1b9c8() {} // TODO: figure out what function this is
}

[[link(android), depends(GJGameState), depends(PlayerButtonCommand)]]
class GJBaseGameLayer : cocos2d::CCLayer, TriggerEffectDelegate {
	// ~GJBaseGameLayer() = mac 0xf96c0;

	TodoReturn getBumpMod(PlayerObject*, int) = win 0x19a5d0;
	TodoReturn getItemValue(int, int);
	TodoReturn getMaxPortalY();
	TodoReturn getMinPortalY();
	TodoReturn getSpecialKey(int, bool, bool);
	TodoReturn getGroupParent(int);
	TodoReturn getMinDistance(cocos2d::CCPoint, cocos2d::CCArray*, float, int) = win 0x1c0c90;
	TodoReturn getOtherPlayer(PlayerObject*) = mac 0x10e1c0;
	TodoReturn getParticleKey(int, char const*, int, cocos2d::tCCPositionType) = win 0x1beb20;
	TodoReturn getStaticGroup(int) = win 0x1a4f10;
	TodoReturn getStickyGroup(int);
	TodoReturn getTargetGroup(int, int);
	TodoReturn getGroundHeight(PlayerObject*, int) = mac 0x3e29d0;
	TodoReturn getParticleKey2(gd::string);
	TodoReturn getPortalTarget(TeleportPortalObject*);
	TodoReturn getRecordString();
	float getModifiedDelta(float) = mac 0x13eb50;
	TodoReturn getSavedPosition(int, float);
	TodoReturn getCapacityString() = win 0x1938e0;
	TodoReturn getEnterEasingKey(int, float);
	TodoReturn getFollowSpeedVal(GameObject*, int, int, float, float);
	TodoReturn getOptimizedGroup(int) = win 0x1a4f70;
	TodoReturn getPlayerButtonID(int, bool);
	TodoReturn getPlayTimerMilli();
	TodoReturn getCameraEdgeValue(int);
	TodoReturn getMoveTargetDelta(EffectGameObject*, bool);
	TodoReturn getPortalTargetPos(TeleportPortalObject*, GameObject*, PlayerObject*);
	TodoReturn getEnterEasingValue(float, int, float, int);
	TodoReturn getTargetFlyCameraY(GameObject*);
	TodoReturn getCenterGroupObject(int, int);
	TodoReturn getSingleGroupObject(int) = win 0x1a4fd0;
	TodoReturn getTargetGroupOrigin(int, int);
	TodoReturn getCustomEnterEffects(int, bool);
	TodoReturn getGroupParentsString(GameObject*);
	TodoReturn getScaledGroundHeight(float);
	TodoReturn getGroundHeightForMode(int);
	TodoReturn getPlayTimerFullSeconds();
	TodoReturn getRotateCommandTargets(EnhancedTriggerObject*, GameObject*&, GameObject*&, GameObject*&);
	TodoReturn getActiveOrderSpawnObjects();
	TodoReturn getGroup(int) = win 0x1a4eb0;

	void setGroupParent(GameObject*, int);
	void setStartPosObject(StartPosObject*) = win 0x195FC0;

	TodoReturn applyRemap(EffectGameObject*, gd::vector<int> const&, gd::unordered_map<int, int>&);
	TodoReturn applyShake(cocos2d::CCPoint&) = win 0x1BD670;
	TodoReturn atlasValue(int);
	TodoReturn bumpPlayer(PlayerObject*, EffectGameObject*) = win 0x19a6b0;
	bool isFlipping();
	TodoReturn moveObject(GameObject*, double, double, bool);
	TodoReturn pauseAudio() = win 0x1B7460, mac 0x13ea60;
	TodoReturn pickupItem(EffectGameObject*);
	TodoReturn resetAudio() = mac 0x13eac0;
	TodoReturn sortGroups() = mac 0x102770;
	TodoReturn swapGround(int);
	TodoReturn updateOBB2(cocos2d::CCRect);
	TodoReturn updateZoom(float, float, int, float, int, int);
	TodoReturn addGuideArt(GameObject*);
	void addToGroups(GameObject*, bool) = win 0x1a4be0;
	TodoReturn addUIObject(GameObject*);
	TodoReturn cameraMoveX(float, float, float, bool);
	TodoReturn cameraMoveY(float, float, float, bool);
	TodoReturn flipGravity(PlayerObject*, bool, bool) = win 0x196720;
	void flipObjects() = win 0x1c4540;
	void moveObjects(cocos2d::CCArray*, double, double, bool) = win 0x1ADE90;
	void queueButton(int, bool, bool) = win 0x1B19C0, mac 0x1375f0;
	void resetCamera() = win 0x1BE060, mac 0x145830;
	void resetPlayer() = win 0x195ED5, mac 0x10e540;
	void resumeAudio() = win 0x1B74C0;
	void setupLayers() = win 0x18ddc0;
	TodoReturn setupReplay(gd::string);
	TodoReturn shakeCamera(float, float, float) = win 0x1ba3c0, mac 0x146e40;
	TodoReturn toggleGroup(int, bool);
	TodoReturn asyncGLoaded(int);
	void createPlayer() = win 0x18fed0, mac 0xfee30;
	TodoReturn flipFinished();
	void handleButton(bool push, int button, bool player1) = win 0x1b2880, mac 0x137800;
	TodoReturn processItems() = win 0x1992d0;
	TodoReturn recordAction(int, bool, bool);
	TodoReturn restoreRemap(EffectGameObject*, gd::unordered_map<int, int>&);
	TodoReturn rotateObject(GameObject*, float);
	TodoReturn spawnPlayer2() = win 0x199990;
	TodoReturn tryGetObject(int);
	void updateCamera(float) = win 0x1BCBEF, mac 0x140660;
	TodoReturn updateReplay();
	TodoReturn addAreaEffect(EnterEffectObject*, gd::vector<EnterEffectInstance>*, GJAreaActionType);
	TodoReturn asyncBGLoaded(int);
	TodoReturn asyncMGLoaded(int);
	TodoReturn canProcessSFX(SFXTriggerState&, gd::unordered_map<int, int>&, gd::unordered_map<int, float>&, gd::vector<SFXTriggerState>&);
	TodoReturn claimParticle(gd::string, int);
	TodoReturn destroyObject(GameObject*);
	TodoReturn enterDualMode(GameObject*, bool);
	TodoReturn hasUniqueCoin(EffectGameObject*) = win 0x1995a0;
	TodoReturn preResumeGame() = mac 0x13ea50;
	TodoReturn removePlayer2();
	TodoReturn rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint, cocos2d::CCPoint, bool, bool);
	TodoReturn spawnParticle(char const*, int, cocos2d::tCCPositionType, cocos2d::CCPoint);
	TodoReturn toggleFlipped(bool, bool);
	TodoReturn updateTimeMod(float, bool, bool);
	TodoReturn animatePortalY(float, float, float, float);
	TodoReturn canTouchObject(GameObject*);
	TodoReturn checkCollision(int, int);
	TodoReturn createParticle(int, char const*, int, cocos2d::tCCPositionType) = win 0x1bed60;
	TodoReturn gravBumpPlayer(PlayerObject*, EffectGameObject*) = win 0x19a7b0;
	TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::_ccColor3B);
	TodoReturn lightningFlash(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::_ccColor3B, float, float, int, bool, float);
	TodoReturn removeKeyframe(KeyframeGameObject*);
	TodoReturn reparentObject(cocos2d::CCNode*, cocos2d::CCNode*);
	TodoReturn sortAllGroupsX();
	TodoReturn stopSFXTrigger(SFXTriggerGameObject*);
	TodoReturn swapBackground(int);
	TodoReturn syncBGTextures() = win 0x1B98C0;
	TodoReturn teleportPlayer(TeleportPortalObject*, PlayerObject*);
	TodoReturn toggleDualMode(GameObject*, bool, PlayerObject*, bool) = win 0x1996c0, mac 0x10f070;
	TodoReturn tryResumeAudio() = mac 0x13eaf0;
	TodoReturn updateCounters(int, int);
	TodoReturn updateGuideArt();
	TodoReturn addRemapTargets(gd::set<int>&) = mac 0x101730;
	void checkCollisions(PlayerObject*, float, bool) = win 0x1973f0, mac 0x110890;
	TodoReturn claimMoveAction(int, bool);
	TodoReturn collectedObject(EffectGameObject*);
	// /* unverified signature */
	bool isPlayer2Button(int);
	TodoReturn moveCameraToPos(cocos2d::CCPoint);
	TodoReturn parentForZLayer(int, bool, int, int);
	TodoReturn playFlashEffect(float, int, float);
	TodoReturn processCommands(float);
	TodoReturn processSFXState(SFXTriggerState*, SFXTriggerState*, int, float);
	TodoReturn setupLevelStart(LevelSettingsObject*) = win 0x196000, mac 0x10e7f0;
	TodoReturn stopCameraShake();
	TodoReturn switchToFlyMode(PlayerObject*, GameObject*, bool, int);
	TodoReturn unclaimParticle(char const*, cocos2d::CCParticleSystemQuad*);
	TodoReturn unlinkAllEvents();
	TodoReturn updateMGOffsetY(float, float, int, float, int, int);
	TodoReturn updateParticles(float);
	void addObjectCounter(LabelGameObject*) = win 0x1b3350;
	TodoReturn addPickupTrigger(CountTriggerGameObject*);
	TodoReturn buttonIDToButton(int);
	TodoReturn controlEventLink(int, int, GJActionCommand);
	void createBackground(int) = mac 0xff150;
	TodoReturn createTextLayers() = win 0x193A90, mac 0x10b4b0;
	TodoReturn exitStaticCamera(bool, bool, float, int, float, bool, float, bool);
	void loadUpToPosition(float, int, int) = win 0x1B4D10;
	TodoReturn processSongState(int, float, float, int, float, float, gd::vector<SongTriggerState>*);
	void removeBackground();
	TodoReturn removeFromGroups(GameObject*);
	TodoReturn sortStickyGroups() = mac 0x105ba0;
	TodoReturn swapMiddleground(int);
	TodoReturn switchToRollMode(PlayerObject*, GameObject*, bool);
	TodoReturn toggleLockPlayer(bool, bool);
	TodoReturn tryGetMainObject(int) = win 0x1A4FD0;
	TodoReturn updateBGArtSpeed(float, float) = mac 0x1454f0;
	TodoReturn updateCameraEdge(int, int);
	TodoReturn updateCameraMode(EffectGameObject*, bool);
	TodoReturn updateDualGround(PlayerObject*, int, bool, float) = mac 0x10f730;
	TodoReturn updateMGArtSpeed(float, float);
	TodoReturn addToGroupParents(GameObject*);
	TodoReturn checkRepellPlayer();
	void checkSpawnObjects() = win 0x19d320;
	TodoReturn controlAreaEffect(EnterEffectObject*, gd::vector<EnterEffectInstance>*, GJActionCommand);
	void createGroundLayer(int, int);
	TodoReturn gameEventToString(GJGameEvent);
	TodoReturn loadLevelSettings() = mac 0x144400;
	TodoReturn moveObjectsSilent(int, double, double);
	TodoReturn orderSpawnObjects() = win 0x1c37e0, mac 0x14e270;
	TodoReturn playerTouchedRing(PlayerObject*, RingObject*) = win 0x19acd0;
	TodoReturn playSpeedParticle(float);
	void positionUIObjects() = mac 0x107bf0;
	void processSFXObjects() = mac 0x109360;
	void removeGroundLayer();
	TodoReturn removeGroupParent(int) = win 0x1a54b0;
	TodoReturn resetStaticCamera(bool, bool) = win 0x1BE2C0;
	TodoReturn rotateAreaObjects(GameObject*, cocos2d::CCArray*, float, bool);
	TodoReturn sortSectionVector() = win 0x1A7F50;
	TodoReturn switchToRobotMode(PlayerObject*, GameObject*, bool);
	TodoReturn triggerAreaEffect(EnterEffectObject*);
	TodoReturn tryGetGroupParent(int);
	TodoReturn updateCameraBGArt(cocos2d::CCPoint, float) = mac 0x147180;
	TodoReturn updateLevelColors() = win 0x190db0, mac 0xff3c0;
	TodoReturn updateShaderLayer(float) = win 0x1A37B0, mac 0x127c40;
	TodoReturn updateTimerLabels();
	TodoReturn activateCustomRing(RingObject*);
	TodoReturn activateSFXTrigger(SFXTriggerGameObject*) = win 0x1bfff0, mac 0x146380;
	TodoReturn animateInGroundNew(bool, float, bool) = mac 0x10fda0;
	TodoReturn applyLevelSettings(GameObject*);
	TodoReturn clearPickedUpItems();
	void createMiddleground(int);
	TodoReturn gameEventTriggered(GJGameEvent, int, int) = win 0x1b1ac0, mac 0x10d070;
	TodoReturn generateSpawnRemap() = mac 0x1023a0;
	void groupStickyObjects(cocos2d::CCArray*) = mac 0x12a680;
	void loadStartPosObject() = win 0x1B4BA0;
	TodoReturn modifyGroupPhysics(AdvancedFollowEditObject*, cocos2d::CCArray*);
	TodoReturn optimizeMoveGroups() = mac 0x102c20;
	TodoReturn playExitDualEffect(PlayerObject*) = win 0x199ab0, mac 0x114c50;
	TodoReturn processAreaActions(float, bool);
	TodoReturn processAreaEffects(gd::vector<EnterEffectInstance>*, GJAreaActionType, float, bool);
	void processMoveActions() = win 0x1ADA80;
	TodoReturn reAddToStickyGroup(GameObject*);
	TodoReturn registerSpawnRemap(gd::vector<ChanceObject>&) = mac 0x122620;
	void removeMiddleground();
	TodoReturn resetGroupCounters(bool);
	TodoReturn switchToSpiderMode(PlayerObject*, GameObject*, bool);
	TodoReturn triggerMoveCommand(EffectGameObject*);
	TodoReturn updateEnterEffects(float);
	TodoReturn updateMaxGameplayY() = win 0x1b97a0, mac 0x1445f0;
	TodoReturn updateQueuedLabels();
	TodoReturn activateSongTrigger(SongTriggerGameObject*) = win 0x1bfba0, mac 0x145d60;
	TodoReturn animateOutGroundNew(bool) = mac 0x110090;
	TodoReturn applySFXEditTrigger(int, int, SFXTriggerGameObject*) = win 0x1c03b0;
	TodoReturn claimRotationAction(int, int, float&, float&, bool, bool);
	TodoReturn maxZOrderForShaderZ(int);
	TodoReturn minZOrderForShaderZ(int);
	TodoReturn modifyObjectPhysics(AdvancedFollowEditObject*, GameObjectPhysics&);
	TodoReturn performMathRounding(double, int);
	TodoReturn playerTouchedObject(PlayerObject*, GameObject*);
	TodoReturn preUpdateVisibility(float) = win 0x1b5660;
	TodoReturn processCameraObject(GameObject*, PlayerObject*);
	TodoReturn processStateObjects();
	TodoReturn registerStateObject(EffectGameObject*);
	TodoReturn resetGradientLayers();
	TodoReturn resetLevelVariables() = mac 0x144860, win 0x1B9950;
	TodoReturn restoreAllUIObjects();
	TodoReturn spawnGroupTriggered(int, float, bool, gd::vector<int> const&, int, int);
	TodoReturn spawnObjectsInOrder(cocos2d::CCArray*, double, gd::vector<int> const&, int, int);
	TodoReturn staticObjectsInRect(cocos2d::CCRect, bool);
	TodoReturn updateCameraOffsetX(float, float, int, float, int, int);
	TodoReturn updateCameraOffsetY(float, float, int, float, int, int);
	TodoReturn updateGroundShadows();
	TodoReturn updateKeyframeOrder(int);
	TodoReturn updateLayerCapacity(gd::string) = mac 0x100360;
	TodoReturn updateSpecialLabels() = win 0x1B8A0E;
	TodoReturn visitWithColorFlash();
	TodoReturn activateEventTrigger(EventLinkTrigger*, gd::vector<int> const&);
	TodoReturn activateResetTrigger(EffectGameObject*);
	TodoReturn activateTimerTrigger(TimerTriggerGameObject*, gd::vector<int> const&);
	TodoReturn addCustomEnterEffect(EnterEffectObject*, bool);
	TodoReturn calculateColorGroups();
	TodoReturn checkCollisionBlocks(EffectGameObject*, gd::vector<EffectGameObject*>*, int);
	TodoReturn generateTargetGroups() = mac 0x105cf0;
	TodoReturn performMathOperation(double, double, int);
	TodoReturn playAnimationCommand(int, int);
	TodoReturn playerTouchedTrigger(PlayerObject*, EffectGameObject*);
	TodoReturn playerWillSwitchMode(PlayerObject*, GameObject*);
	TodoReturn processFollowActions();
	TodoReturn processQueuedButtons() = win 0x1b1a10, mac 0x137790;
	TodoReturn rectIntersectsCircle(cocos2d::CCRect, cocos2d::CCPoint, float);
	void refreshCounterLabels() = win 0x1b4630;
	TodoReturn refreshKeyframeAnims() = mac 0x109170;
	TodoReturn reorderObjectSection(GameObject*) = mac 0x1161e0;
	TodoReturn spawnParticleTrigger(int, cocos2d::CCPoint, float, float);
	TodoReturn spawnParticleTrigger(SpawnParticleGameObject*);
	TodoReturn speedForShaderTarget(int) = mac 0x128de0;
	TodoReturn stopAllGroundActions();
	TodoReturn transformAreaObjects(GameObject*, cocos2d::CCArray*, float, float, bool);
	TodoReturn triggerGravityChange(EffectGameObject*, int);
	TodoReturn triggerRotateCommand(EnhancedTriggerObject*);
	TodoReturn triggerShaderCommand(ShaderGameObject*);
	void ungroupStickyObjects(cocos2d::CCArray*) = mac 0x12a7a0;
	TodoReturn updateGradientLayers() = win 0x1A1750, mac 0x125fd0;
	TodoReturn updatePlatformerTime() = win 0x1B8BE0;
	TodoReturn activatedAudioTrigger(SFXTriggerGameObject*, float);
	void assignNewStickyGroups(cocos2d::CCArray*);
	TodoReturn collisionCheckObjects(PlayerObject*, gd::vector<GameObject*>*, int, float);
	TodoReturn controlDynamicCommand(EffectGameObject*, int, gd::vector<DynamicObjectAction>&, GJActionCommand);
	TodoReturn createNewKeyframeAnim();
	TodoReturn damagingObjectsInRect(cocos2d::CCRect, bool);
	TodoReturn objectTypeToGameEvent(int);
	TodoReturn playerCircleCollision(PlayerObject*, GameObject*);
	TodoReturn playKeyframeAnimation(KeyframeAnimTriggerObject*, gd::vector<int> const&);
	TodoReturn processOptionsTrigger(GameOptionsTrigger*);
	TodoReturn removeFromStickyGroup(GameObject*);
	TodoReturn shouldExitHackedLevel() = win 0x18FE20;
	TodoReturn stopCustomEnterEffect(EnterEffectObject*);
	TodoReturn stopCustomEnterEffect(EnterEffectObject*, bool);
	void toggleAudioVisualizer(bool);
	TodoReturn updateAudioVisualizer();
	TodoReturn updateCollisionBlocks();
	TodoReturn updateExtraGameLayers() = mac 0x129020;
	TodoReturn updateGameplayOffsetX(int, bool);
	TodoReturn updateGameplayOffsetY(int, bool);
	TodoReturn updateStaticCameraPos(cocos2d::CCPoint, bool, bool, bool, float, int, float) = win 0x1bda60, mac 0x110240;
	TodoReturn activateSFXEditTrigger(SFXTriggerGameObject*) = win 0x1c0160, mac 0x1468d0;
	TodoReturn animateInDualGroundNew(GameObject*, float, bool, float);
	TodoReturn canBeActivatedByPlayer(PlayerObject*, EffectGameObject*) = win 0x19a4b0;
	TodoReturn controlGradientTrigger(GradientTriggerObject*, GJActionCommand);
	TodoReturn controlTriggersInGroup(int, GJActionCommand);
	TodoReturn objectIntersectsCircle(GameObject*, GameObject*);
	TodoReturn playerIntersectsCircle(PlayerObject*, GameObject*);
	TodoReturn prepareTransformParent(bool);
	void processMoveActionsStep(float, bool) = win 0x1ABBB0;
	TodoReturn processRotationActions();
	TodoReturn removeFromGroupParents(GameObject*);
	TodoReturn resetSongTriggerValues();
	TodoReturn resetSpawnChannelIndex() = win 0x1C3A00;
	TodoReturn togglePlayerVisibility(bool);
	TodoReturn togglePlayerVisibility(bool, bool);
	TodoReturn triggerGradientCommand(GradientTriggerObject*);
	TodoReturn updateAllObjectSection();
	TodoReturn updateSpecialGroupData() = mac 0x102330;
	TodoReturn activateItemEditTrigger(ItemTriggerGameObject*);
	TodoReturn activateSongEditTrigger(SongTriggerGameObject*) = mac 0x1460d0;
	TodoReturn controlAreaEffectWithID(int, int, GJActionCommand);
	TodoReturn playerWasTouchingObject(PlayerObject*, GameObject*) = win 0x19a570;
	TodoReturn positionForShaderTarget(int) = mac 0x128cc0;
	void processTransformActions(bool) = win 0x1ACBA0;
	void removeObjectFromSection(GameObject*) = win 0x1a7d80, mac 0x12adc0;
	TodoReturn resetActiveEnterEffects() = mac 0x109840, win 0x192c70;
	TodoReturn resetMoveOptimizedValue();
	TodoReturn resetStoppedAreaObjects();
	TodoReturn testInstantCountTrigger(int, int, int, bool, int, gd::vector<int> const&, int, int);
	TodoReturn togglePlayerStreakBlend(bool);
	TodoReturn triggerTransformCommand(TransformTriggerGameObject*);
	TodoReturn updateActiveEnterEffect(EnterEffectObject*);
	TodoReturn updateExtendedCollision(GameObject*, bool);
	TodoReturn addProximityVolumeEffect(int, int, SFXTriggerGameObject*) = win 0x1c0820;
	TodoReturn generateVisibilityGroups() = mac 0x1081b0;
	TodoReturn processAreaVisualActions(float);
	TodoReturn removeCustomEnterEffects(int, bool);
	TodoReturn removeTemporaryParticles() = win 0x1bfae0;
	TodoReturn updateInternalCamOffsetX(float, float, float);
	TodoReturn updateInternalCamOffsetY(float, float, float);
	TodoReturn volumeForProximityEffect(SFXTriggerInstance&) = win 0x1c08e0;
	TodoReturn controlDynamicMoveCommand(EffectGameObject*, int, GJActionCommand);
	TodoReturn convertToClosestDirection(float, float) = win 0x1aeb00;
	TodoReturn generateEnterEasingBuffer(int, float) = mac 0x10abb0;
	TodoReturn generatePickupAnimRandVal(GameObject*, float&, float&);
	TodoReturn increaseBatchNodeCapacity() = mac 0x1001c0;
	TodoReturn triggerDynamicMoveCommand(EffectGameObject*);
	TodoReturn updateLegacyLayerCapacity(int, int, int, int);
	TodoReturn updateSavePositionObjects();
	TodoReturn activateItemCompareTrigger(ItemTriggerGameObject*, gd::vector<int> const&);
	TodoReturn createPlayerCollisionBlock() = win 0x19B1C0;
	TodoReturn generateEnterEasingBuffers(EnterEffectObject*);
	TodoReturn loadGroupParentsFromString(GameObject*, gd::string);
	TodoReturn prepareSavePositionObjects() = mac 0x103270;
	TodoReturn processAreaFadeGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, bool);
	TodoReturn processAreaMoveGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool);
	TodoReturn processAreaTintGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, bool);
	void processPlayerFollowActions(float) = win 0x1AE2F0;
	TodoReturn processQueuedAudioTriggers() = win 0x1ba310, mac 0x145c90;
	TodoReturn triggerAreaEffectAnimation(EnterEffectObject*);
	TodoReturn clearActivatedAudioTriggers() = win 0x1c1380;
	TodoReturn controlDynamicRotateCommand(EffectGameObject*, int, GJActionCommand);
	TodoReturn processAdvancedFollowAction(AdvancedFollowInstance&, bool, float);
	void processDynamicObjectActions(int, float) = win 0x1AE630;
	TodoReturn triggerDynamicRotateCommand(EnhancedTriggerObject*);
	TodoReturn updatePlayerCollisionBlocks();
	TodoReturn activateObjectControlTrigger(ObjectControlGameObject*);
	TodoReturn activatePlayerControlTrigger(PlayerControlGameObject*);
	TodoReturn controlAdvancedFollowCommand(AdvancedFollowTriggerObject*, int, GJActionCommand);
	TodoReturn controlTriggersWithControlID(int, GJActionCommand);
	TodoReturn processAdvancedFollowActions(float);
	TodoReturn processAreaRotateGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool);
	TodoReturn regenerateEnterEasingBuffers() = mac 0x1025b0;
	TodoReturn triggerAdvancedFollowCommand(AdvancedFollowTriggerObject*);
	TodoReturn updateProximityVolumeEffects();
	TodoReturn updateStaticCameraPosToGroup(int, bool, bool, bool, float, float, int, float, bool, float);
	TodoReturn activatePersistentItemTrigger(ItemTriggerGameObject*);
	TodoReturn checkCameraLimitAfterTeleport(PlayerObject*, float);
	TodoReturn processActivatedAudioTriggers(float) = win 0x1c1750;
	TodoReturn restoreDefaultGameplayOffsetX();
	TodoReturn restoreDefaultGameplayOffsetY();
	TodoReturn processAreaTransformGroupAction(cocos2d::CCArray*, EnterEffectInstance*, cocos2d::CCPoint, int, int, int, int, int, bool, bool);
	TodoReturn triggerAdvancedFollowEditCommand(AdvancedFollowEditObject*);
	TodoReturn hasItem(int);
	TodoReturn addPoints(int);

	virtual void update(float) = win 0x1B75E0, mac 0x13ec00;
	virtual bool init() = win 0x18CC80, mac 0xfa710;
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
	virtual TodoReturn toggleGroupTriggered(int, bool, gd::vector<int> const&, int, int);
	virtual TodoReturn spawnGroup(int, bool, double, gd::vector<int> const&, int, int);
	virtual TodoReturn spawnObject(GameObject*, double, gd::vector<int> const&);
	virtual TodoReturn activateEndTrigger(int, bool, bool);
	virtual TodoReturn activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&);
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
	virtual TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, int) {}
	virtual TodoReturn posForTime(float) {}
	virtual TodoReturn resetSPTriggered() {}
	virtual TodoReturn updateScreenRotation(float, bool, bool, float, int, float, int, int) = win 0x1b52e0;
	virtual TodoReturn reverseDirection(EffectGameObject*) = win 0x19afc0;
	virtual TodoReturn rotateGameplay(RotateGameplayGameObject*) = win 0x19b020;
	virtual TodoReturn didRotateGameplay();
	virtual TodoReturn updateTimeWarp(float);
	virtual TodoReturn updateTimeWarp(GameObject*, float);
	virtual void applyTimeWarp(float) = win 0x1B5600;
	virtual TodoReturn playGravityEffect(bool);
	virtual TodoReturn manualUpdateObjectColors(GameObject*);
	virtual TodoReturn createCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, bool);
	virtual TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool);
	virtual TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*);
	virtual TodoReturn activatedAudioTrigger(SFXTriggerGameObject*);
	virtual void checkpointActivated(CheckpointGameObject*) = win 0x1c4610;
	virtual TodoReturn flipArt(bool);
	virtual TodoReturn addKeyframe(KeyframeGameObject*);
	virtual TodoReturn updateTimeLabel(int, int, bool);
	virtual TodoReturn checkSnapshot();
	virtual TodoReturn toggleProgressbar();
	virtual TodoReturn toggleInfoLabel();
	virtual TodoReturn removeAllCheckpoints();
	virtual TodoReturn toggleMusicInPractice();


	PAD = win 0x8, android32 0x8, android64 0x8, mac 0x8;
	GJGameState m_gameState;
	GJGameLevel* m_level;
	PlaybackMode m_playbackMode;
	PAD = win 0x290, android32 0x28c, android64 0x510, mac 0x500;
	PlayerObject* m_player1;
	PlayerObject* m_player2;
	LevelSettingsObject* m_levelSettings;
	PAD = win 0x134, android32 0x134, android64 0x21c, mac 0x1fc;
	cocos2d::CCLayer* m_objectLayer;
	PAD = win 0x70, android32 0x70, android64 0xec, mac 0xb4;
	std::array<float, 2000> m_massiveFloatArray;
	PAD = win 0x110, android32 0x114, android64 0x1ec, mac 0x1a4;
	bool m_isPracticeMode;
	bool m_practiceMusicSync;
	float m_unk2a80;
	cocos2d::CCNode* m_unk2a84;
	int m_unk2a88;
	float m_unk2a8c;
	int m_unk2a90;
	int m_unk2a94;
	int m_unk2a98;
	cocos2d::CCDictionary* m_unk2a9c;
	float m_levelLength;
	int m_unk2aa4;
	EndPortalObject* m_endPortal;
	bool m_isTestMode;
	PAD = win 0xd2, android32 0xba, android64 0xf0, mac 0xc0;
	gd::vector<PlayerButtonCommand> m_queuedButtons;
	PAD = mac 0x128;
	UILayer* m_uiLayer;
	PAD = win 0x20a, android32 0x1ea, android64 0x340, mac 0x1f0;
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
	static ListButtonBar* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int) = mac 0x3d12d0;

	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float, float, int) = mac 0x3d13a0;
	~ListButtonBar();

	TodoReturn getPage();

	void onLeft(cocos2d::CCObject* sender);
	void onRight(cocos2d::CCObject* sender);

	TodoReturn goToPage(int);
}

[[link(android)]]
class DialogLayer : cocos2d::CCLayerColor, TextAreaDelegate {
	static DialogLayer* create(DialogObject*, int) = mac 0x3a5600, win 0x99d60;

	bool init(DialogObject*, cocos2d::CCArray*, int) = mac 0x3a5770, win 0x99e10;
	~DialogLayer();

	TodoReturn onClose();

	TodoReturn addToMainScene();
	TodoReturn animateInDialog();
	TodoReturn handleDialogTap();
	TodoReturn createDialogLayer(DialogObject*, cocos2d::CCArray*, int) = mac 0x3a5610;
	TodoReturn createWithObjects(cocos2d::CCArray*, int) = mac 0x3a5750;
	TodoReturn displayNextObject() = mac 0x3a5c50;
	TodoReturn animateInRandomSide() = mac 0x3a6830;
	TodoReturn displayDialogObject(DialogObject*) = mac 0x3a5d00;
	TodoReturn updateChatPlacement(DialogChatPlacement) = mac 0x3a6100;
	TodoReturn updateNavButtonFrame();
	TodoReturn finishCurrentAnimation();
	TodoReturn animateIn(DialogAnimationType) = mac 0x3a6880, win 0x9a9d0;

	virtual void onEnter() = mac 0x3a6730;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x3a65e0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x3a6680;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x3a6640;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x3a66a0;
	virtual void registerWithTouchDispatcher() = mac 0x3a66f0;
	virtual void keyBackClicked() = mac 0x3a64b0;
	virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x3a6ad0;
	virtual TodoReturn fadeInTextFinished(TextArea*) = mac 0x3a6740;
}

class UIButtonConfig {
	PAD = win 0x28, android32 0x28, android64 0x28;
}

[[link(android), depends(UIButtonConfig)]]
class GameManager : GManager {
	static GameManager* get() {
		return GameManager::sharedState();
	}

	static GameManager* sharedState() = win 0x11f720, mac 0x354920;

	PlayLayer* getPlayLayer() {
		return m_playLayer;
	}

	LevelEditorLayer* getEditorLayer() {
		return m_levelEditorLayer;
	}

	GJBaseGameLayer* getGameLayer() {
		return m_gameLayer;
	}

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
	TodoReturn joinReddit() = mac 0x35e270;
	int keyForIcon(int iconIdx, int iconEnum) {
		return m_keyStartForIcon->at(iconEnum) + iconIdx - 1;
	}
	void loadGround(int) = mac 0x360e10;
	TodoReturn printGJLog();
	void reloadMenu() = win 0x12c510;
	TodoReturn reorderKey(int, bool);
	TodoReturn subYouTube() = mac 0x35e120;
	TodoReturn tryCacheAd();
	TodoReturn unloadIcon(int, int, int) = mac 0x35fde0;
	TodoReturn unlockIcon(int, IconType);
	cocos2d::ccColor3B colorForIdx(int) = win 0x124270, mac 0x35d5b0;
	TodoReturn colorForPos(int);
	void doQuickSave() = win 0x12bf00;
	TodoReturn fadeInMusic(gd::string) = mac 0x355220;
	TodoReturn getFontFile(int);
	TodoReturn getGTexture(int) = mac 0x3611f0;
	TodoReturn joinDiscord() = mac 0x35e200;
	TodoReturn saveAdTimer();
	TodoReturn startUpdate() = mac 0x354bc0;
	TodoReturn unloadIcons(int) = win 0x125a60;
	void unlockColor(int, UnlockType) = mac 0x3560d0;
	TodoReturn updateMusic();
	TodoReturn countForType(IconType) = mac 0x35e6a0;
	TodoReturn followTwitch() = mac 0x35e190;
	TodoReturn getBGTexture(int) = mac 0x361150;
	TodoReturn getMGTexture(int);
	/* unverified signature */
	bool isIconLoaded(int, int) = mac 0x35e8a0;
	TodoReturn likeFacebook() = mac 0x35e040;
	TodoReturn resetAdTimer();
	TodoReturn safePopScene() = mac 0x368b40;
	TodoReturn followTwitter() = mac 0x35e0b0;
	TodoReturn itemPurchased(char const*);
	TodoReturn loadIconAsync(int, int, int, cocos2d::CCObject*);
	TodoReturn playMenuMusic();
	TodoReturn resetAllIcons();
	TodoReturn videoAdHidden();
	TodoReturn videoAdShowed();
	TodoReturn checkUsedIcons() = mac 0x35c8f0;
	TodoReturn getFontTexture(int);
	TodoReturn getNextUsedKey(int, bool);
	/* unverified signature */
	bool isIconUnlocked(int, IconType) = win 0x120170, mac 0x3559c0;
	TodoReturn levelIsPremium(int, int);
	void loadBackground(int) = mac 0x360930;
	TodoReturn loadDPadLayout(int, bool);
	TodoReturn playSFXTrigger(SFXTriggerGameObject*) = win 0x11fd20;
	void reloadAllStep2() = win 0x12c620, mac 0x368d80;
	void reloadAllStep3() = win 0x12c780, mac 0x368e90;
	void reloadAllStep4() = win 0x12c820, mac 0x368f00;
	void reloadAllStep5() = win 0x12c890, mac 0x368f60;
	TodoReturn saveDPadLayout(int, bool);
	TodoReturn shortenAdTimer(float);
	TodoReturn showMainMenuAd();
	TodoReturn addIconDelegate(cocos2d::CCObject*, int);
	void fadeInMenuMusic() = win 0x11FBD0, mac 0x355150;
	bool getGameVariable(char const*) = win 0x126920, mac 0x355010;
	/* unverified signature */
	bool isColorUnlocked(int, UnlockType) = win 0x120670, mac 0x356020;
	TodoReturn loadDeathEffect(int) = mac 0x3607b0;
	TodoReturn loadGroundAsync(int);
	TodoReturn openEditorGuide() = mac 0x35e2e0;
	void queueReloadMenu() = win 0x12c4c0, mac 0x368bb0;
	/* unverified signature */
	void setGameVariable(char const*, bool) = win 0x1266D0, mac 0x361260;
	TodoReturn unlockedPremium();
	void updateCustomFPS() = win 0x12cd40, mac 0x369260;
	TodoReturn addGameAnimation(int, int, float, gd::string, gd::string, int);
	TodoReturn didExitPlayscene() = mac 0x3683a0;
	TodoReturn getIconRequestID() = mac 0x360540;
	TodoReturn getMenuMusicFile();
	void loadMiddleground(int);
	TodoReturn recountUserStats(gd::string);
	TodoReturn resetAchievement(gd::string);
	TodoReturn resetCoinUnlocks();
	void resolutionForKey(int) = win 0x12c8e0;
	gd::string sheetNameForIcon(int, int) = mac 0x35ec30;
	TodoReturn showInterstitial();
	TodoReturn switchScreenMode(bool, bool);
	TodoReturn unloadBackground();
	int activeIconForType(IconType) = mac 0x35e430;
	TodoReturn iconAndTypeForKey(int, int&, int&);
	TodoReturn loadVideoSettings() = mac 0x365ad0;
	TodoReturn logLoadedIconInfo();
	TodoReturn resetDPadSettings(bool);
	TodoReturn returnToLastScene(GJGameLevel*) = win 0x12C1F0, mac 0x368830;
	TodoReturn verifyCoinUnlocks();
	TodoReturn verifyStarUnlocks();
	TodoReturn verifySyncedCoins();
	TodoReturn addNewCustomObject(gd::string);
	TodoReturn claimItemsResponse(gd::string);
	TodoReturn dpadConfigToString(UIButtonConfig&);
	TodoReturn eventUnlockFeature(char const*);
	TodoReturn framesForAnimation(int);
	int getIntGameVariable(char const*) = mac 0x361960, win 0x126e70;
	TodoReturn loadDpadFromString(UIButtonConfig&, gd::string);
	TodoReturn removeCustomObject(int);
	TodoReturn removeIconDelegate(int) = win 0x125560;
	/* unverified signature */
	void setIntGameVariable(char const*, int);
	TodoReturn toggleGameVariable(char const*) = mac 0x3614e0;
	TodoReturn loadBackgroundAsync(int);
	TodoReturn prepareDPadSettings() = mac 0x365370;
	TodoReturn rewardedVideoHidden();
	TodoReturn setupGameAnimations();
	TodoReturn switchCustomObjects(int, int);
	TodoReturn tryShowInterstitial(int, int, int);
	TodoReturn accountStatusChanged();
	TodoReturn canShowRewardedVideo();
	TodoReturn completedAchievement(gd::string) = mac 0x356be0;
	TodoReturn defaultYOffsetForBG2(int);
	TodoReturn generateSecretNumber();
	gd::string getPracticeMusicFile() = mac 0x354d60, win 0x11f990;
	TodoReturn iconTypeToUnlockType(IconType) = mac 0x355a80;
	TodoReturn unlockTypeToIconType(int) = mac 0x355c90;
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
	TodoReturn getUnlockForAchievement(gd::string, int&, UnlockType&) = mac 0x3561c0;
	TodoReturn groundHasSecondaryColor(int);
	TodoReturn reportAchievementWithID(char const*, int, bool) = mac 0x357900;
	TodoReturn rewardedVideoAdFinished(int);
	TodoReturn calculateBaseKeyForIcons();
	TodoReturn defaultFrameForAnimation(int);
	TodoReturn finishedLoadingIconAsync(cocos2d::CCObject*);
	TodoReturn reportPercentageForLevel(int, int, bool) = win 0x120f30, mac 0x356ec0;
	TodoReturn syncPlatformAchievements();
	TodoReturn verifyAchievementUnlocks();
	TodoReturn getOrderedCustomObjectKeys();
	TodoReturn rewardedVideoHiddenDelayed();
	TodoReturn checkSteamAchievementUnlock();
	TodoReturn applicationDidEnterBackground();
	TodoReturn applicationWillEnterForeground() = win 0x12bfb0, mac 0x368490;
	bool getUGV(char const*) = mac 0x361700, win 0x126C10;
	/* unverified signature */
	void setUGV(char const*, bool) = win 0x126ac0, mac 0x3615a0;
	TodoReturn iconKey(int, IconType);
	TodoReturn colorKey(int, UnlockType);
	TodoReturn loadFont(int);
	cocos2d::CCTexture2D* loadIcon(int, int, int) = win 0x125630, mac 0x35f7a0;
	TodoReturn lockIcon(int, IconType);
	TodoReturn rateGame();
	TodoReturn lockColor(int, UnlockType);
	void reloadAll(bool switchingModes, bool toFullscreen, bool unused) = win 0x12c590, mac 0x368ce0;

	virtual void update(float) = mac 0x368430;
	virtual bool init() = win 0x11EA00, mac 0x354980;
	virtual TodoReturn encodeDataTo(DS_Dictionary*) = mac 0x367900;
	virtual TodoReturn dataLoaded(DS_Dictionary*) = mac 0x365be0;
	virtual TodoReturn firstLoad() = mac 0x367010;

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
	geode::SeedValueRSV m_playerUserID;
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
	geode::SeedValueRSV m_hasRP;
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
	gd::map<int, bool> m_isIconBeingLoaded;
	std::array<int, 9>* m_keyStartForIcon;
	void* m_somethingKeyForIcon;
	void* m_idk;
	gd::map<int, gd::vector<cocos2d::CCObject*>> m_iconDelegates;
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
		m_mainLayer = nullptr;
		m_hidden = false;
		m_delegate = nullptr;
	}

	static GJDropDownLayer* create(char const*);
	static GJDropDownLayer* create(char const*, float) = mac 0x5acc30;

	// inlined on windows
	bool init(char const* title) {
		return GJDropDownLayer::init(title, 220.f);
	}
	bool init(const char* title, float height) = win 0x1d2340, mac 0x5acd70;
	~GJDropDownLayer() = mac 0x5ac980;

	virtual bool ccTouchBegan(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {
		return true;
	}
	virtual void ccTouchMoved(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {}
	virtual void ccTouchEnded(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {}
	virtual void ccTouchCancelled(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {}

	// 2.2, untested

	virtual void draw() = mac 0x5ad550;
	virtual void registerWithTouchDispatcher() = mac 0x5ad240;
	virtual void keyBackClicked() = mac 0x5ad280;
	virtual void customSetup() = mac 0x5ad1c0;
	virtual TodoReturn enterLayer() = mac 0x5ad210;
	virtual TodoReturn exitLayer(cocos2d::CCObject*) = mac 0x5ad2c0;
	virtual void showLayer(bool) = win 0x1D27C0, mac 0x5ad300;
	virtual TodoReturn hideLayer(bool) = mac 0x5ad3f0;
	virtual TodoReturn layerVisible() = mac 0x5ad4f0;
	virtual TodoReturn layerHidden() = mac 0x5ad510;
	virtual TodoReturn enterAnimFinished() = mac 0x5ad4e0;
	virtual TodoReturn disableUI() = mac 0x5ad1d0;
	virtual TodoReturn enableUI() = mac 0x5ad1f0;

	cocos2d::CCPoint m_endPosition;
	cocos2d::CCPoint m_startPosition;
	cocos2d::CCMenu* m_buttonMenu;
	GJListLayer* m_listLayer;
	bool m_controllerEnabled;
	cocos2d::CCLayer* m_mainLayer;
	bool m_hidden;
	GJDropDownLayerDelegate* m_delegate;
	bool m_unknown;
}

[[link(android)]]
class TextAreaDelegate {
	virtual TodoReturn fadeInTextFinished(TextArea*);
}

[[link(android)]]
class GManager : cocos2d::CCNode {
	~GManager();

	gd::string getSaveString();
	TodoReturn getCompressedSaveString();

	TodoReturn tryLoadData(DS_Dictionary*, gd::string const&);
	TodoReturn loadFromString(gd::string&);
	TodoReturn loadDataFromFile(gd::string const&) = mac 0x488350;
	TodoReturn loadFromCompressedString(gd::string&);
	TodoReturn load();
	void save() {
        saveGMTo(m_fileName);
    }
	TodoReturn saveData(DS_Dictionary*, gd::string) = mac 0x488290;
	void saveGMTo(gd::string) = mac 0x4881c0, win 0x472f0;
    inline GManager() {}

	virtual bool init() = mac 0x487ec0;
	virtual TodoReturn setup() = mac 0x487ee0, win 0x47030;
	virtual TodoReturn encodeDataTo(DS_Dictionary*) = mac 0x488340;
	virtual TodoReturn dataLoaded(DS_Dictionary*) = mac 0x488910;
	virtual TodoReturn firstLoad() = mac 0x488920;

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

	static GJGameLevel* create(cocos2d::CCDictionary*, bool) = mac 0x503c90;
	static GJGameLevel* create() = win 0x112540, mac 0x501aa0;

	~GJGameLevel();

	void dataLoaded(DS_Dictionary*) = mac 0x52a700, win 0x113B90;
	char const* getCoinKey(int) = mac 0x51ad20, win 0x112D00;
	TodoReturn getSongName() = mac 0x5291e0;
	char const* getLengthKey(int, bool) = win 0x112BA0, mac 0x528db0;
	inline bool isPlatformer() {
		return m_levelLength == 5;
	}
	TodoReturn saveNewScore(int, int);
	TodoReturn copyLevelInfo(GJGameLevel*);
	TodoReturn unverifyCoins();
	void savePercentage(int, bool, int, int, bool) = win 0x112850, mac 0x528990;
	TodoReturn getListSnapshot();
	TodoReturn levelWasAltered() = mac 0x5287c0;
	bool areCoinsVerified() = win 0x115850;
	gd::string getAudioFileName() = win 0x112f20, mac 0x5290d0;
	TodoReturn getNormalPercent() = mac 0x5022b0;
	/* unverified signature */
	void setNormalPercent(int);
	TodoReturn lengthKeyToString(int) = mac 0x528df0;
	TodoReturn levelWasSubmitted();
	TodoReturn storeNewLocalScore(int, int);
	TodoReturn handleStatsConflict(GJGameLevel*);
	TodoReturn parseSettingsString(gd::string);
	TodoReturn scoreStringToVector(gd::string&, gd::vector<int>&) = mac 0x529780;
	TodoReturn scoreVectorToString(gd::vector<int>&, int);
	int getAverageDifficulty() = mac 0x528e90, win 0x112c60;
	TodoReturn demonIconForDifficulty(DemonDifficultyType) = mac 0x52c310;
	TodoReturn generateSettingsString();
	TodoReturn getLastBuildPageForTab(int);
	/* unverified signature */
	void setLastBuildPageForTab(int, int);
	gd::string getUnpackedLevelDescription() = mac 0x52c280, win 0x115960;

	virtual void encodeWithCoder(DS_Dictionary*) = mac 0x52b6f0, win 0x114BF0;
	virtual bool canEncode() = mac 0x52c210;
	virtual bool init() = win 0x1125e0, mac 0x5285a0;

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
	bool m_friendsOnly;
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
	bool m_unlimitedObjectsEnabled;
	gd::string m_personalBests;
	int m_timestamp;
	int m_unkInt;
	gd::string m_songIDs;
	gd::string m_sfxIDs;
	int m_54;
	int m_bestTime;
	int m_bestPoints;
	int m_k111;
	gd::string m_unkString3;
	gd::string m_unkString4;
}

[[link(android)]]
class DialogObject : cocos2d::CCObject {
	static DialogObject* create(gd::string, gd::string, int, float, bool, cocos2d::_ccColor3B) = mac 0x3a50f0, win 0x99a90;

	bool init(gd::string, gd::string, int, float, bool, cocos2d::_ccColor3B) = win 0x99bd0;
	~DialogObject();
}

[[link(android)]]
class AchievementNotifier : cocos2d::CCNode {
	static AchievementNotifier* sharedState() = mac 0x77f4c0;

	~AchievementNotifier();

	TodoReturn notifyAchievement(char const*, char const*, char const*, bool);
	void willSwitchToScene(cocos2d::CCScene*) = win 0x1c200, mac 0x77f730;
	TodoReturn showNextAchievement();
	TodoReturn achievementDisplayFinished();

	virtual bool init() = mac 0x77f550;
}

[[link(android)]]
class GJListLayer : cocos2d::CCLayerColor {
	static GJListLayer* create(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, int) = win 0x1f4000, mac 0x597b70;

	bool init(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, int) = win 0x1f40f0, mac 0x597c80;
	~GJListLayer();

	// 2.2 not tested
	BoomListView* m_listView;
}

[[link(android)]]
class LoadingCircle : cocos2d::CCLayerColor {
    static LoadingCircle* create() = win 0x48140, mac 0x49a640;

    ~LoadingCircle();

    TodoReturn fadeAndRemove() = win 0x483E0, mac 0x49a970;
    TodoReturn show() = win 0x48300, mac 0x49a880;

    void setParentLayer(cocos2d::CCLayer* layer) {
        m_parentLayer = layer;
    }
    void setFade(bool fade) {
        m_fade = fade;
    }

    virtual bool init() = win 0x48240, mac 0x49a7b0;
    virtual void draw() = mac 0x49aa00;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x49ac80;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x49ac90;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x49aca0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x49acb0;
    virtual void registerWithTouchDispatcher() = mac 0x49aa20;

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
	void loadingIsFinished() = mac 0x61f6f0;
	TodoReturn showLoadingCircle(bool, bool, bool);
	TodoReturn bgScale() = mac 0x61f6c0;
	TodoReturn musicTest() = win 0x5b330;
	TodoReturn pauseGame();

	virtual void setupGLView();
	virtual void platformShutdown();

	virtual bool applicationDidFinishLaunching() = win 0x5af40, mac 0x61f560;
	virtual void applicationDidEnterBackground() = win 0x5b110, mac 0x61f800;
	virtual void applicationWillEnterForeground() = win 0x5b150, mac 0x61f940;
	virtual void applicationWillBecomeActive() = win 0x5b0f0, mac 0x61f700;
	virtual void applicationWillResignActive() = win 0x5b200, mac 0x61f720;
	virtual void trySaveGame(bool) = win 0x5b3b0, mac 0x61fbd0;
	virtual void willSwitchToScene(cocos2d::CCScene*) = win 0x5b550, mac 0x61fcb0; //there is also a thunk at 0x61fcd0 which is identical, keep the one at 0x61fcb0 here

    PAD = win 0xC, android32 0xC, android64 0x18, mac 0x18;
    cocos2d::CCScene* m_runningScene;
}

[[link(android)]]
class PlatformToolbox {
	static TodoReturn getRawPath(char const*);
	static TodoReturn hideCursor();
	static TodoReturn showCursor() =  mac 0x49f030;
	static void gameDidSave() = mac 0x49fd80;
	static TodoReturn openAppPage();
	static TodoReturn onGameLaunch();
	static TodoReturn resizeWindow(float, float);
	static TodoReturn doesFileExist(gd::string);
	static TodoReturn onNativePause();
	static TodoReturn refreshWindow();
	static TodoReturn getDisplaySize();
	static TodoReturn onNativeResume() = mac 0x49ef00;
	static TodoReturn copyToClipboard(gd::string);
	static TodoReturn getUniqueUserID();
	static TodoReturn toggleSmoothFix(bool);
	static TodoReturn onToggleKeyboard() = mac 0x49ef10;
	static void platformShutdown();
	/* unverified signature */
	static void setKeyboardState(bool);
	static TodoReturn showAchievements();
	static TodoReturn signInGooglePlay();
	static TodoReturn toggleForceTimer(bool);
	static TodoReturn toggleFullScreen(bool);
	static TodoReturn toggleLockCursor(bool) = mac 0x49fe30;
	/* unverified signature */
	static bool isLowMemoryDevice();
	static TodoReturn shouldResumeSound();
	static TodoReturn signOutGooglePlay();
	static TodoReturn tryShowRateDialog(gd::string);
	static TodoReturn activateGameCenter();
	/* unverified signature */
	static bool isNetworkAvailable() = mac 0x49eec0;
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
		// TODO: mat
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
	static NumberInputLayer* create() = mac 0x46e490;

	~NumberInputLayer();

	void onDone(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onNumber(cocos2d::CCObject* sender);

	TodoReturn deleteLast();
	TodoReturn inputNumber(int);
	TodoReturn updateNumberState();

	virtual bool init() = mac 0x46e5f0, win 0x285e60;
	virtual void registerWithTouchDispatcher() = mac 0x46efc0;
	virtual void keyBackClicked() = mac 0x46ef50;
}

[[link(android)]]
class SetIDPopup : FLAlertLayer, TextInputDelegate {
	static SetIDPopup* create(int, int, int, gd::string, gd::string, bool, int, float, bool, bool) = mac 0x2874a0;

	bool init(int, int, int, gd::string, gd::string, bool, int, float, bool, bool) = mac 0x2876f0;
	~SetIDPopup();

	void onResetValue(cocos2d::CCObject* sender);
	void onItemIDArrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onCancel(cocos2d::CCObject* sender);

	TodoReturn updateTextInputLabel() = mac 0x288130;

	virtual void keyBackClicked() = mac 0x288440;
	virtual void show() = mac 0x2883c0;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x288260;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x2882a0;
	virtual TodoReturn valueChanged() = mac 0x2883b0;

	CCTextInputNode* m_inputNode;
	int m_value;
	bool m_unkBool;
	bool m_cancelled;
	int m_minimum;
	int m_maximum;
	int m_default;
	SetIDPopupDelegate* m_delegate;
}

[[link(android)]]
class UploadActionPopup : FLAlertLayer {
	static UploadActionPopup* create(UploadPopupDelegate*, gd::string) = mac 0x280050;

	bool init(UploadPopupDelegate*, gd::string) = win 0x206290;
	~UploadActionPopup();

	void onClose(cocos2d::CCObject* sender);

	TodoReturn closePopup() = mac 0x280910;
	TodoReturn showFailMessage(gd::string) = mac 0x2807d0;
	TodoReturn showSuccessMessage(gd::string) = mac 0x280680;

	virtual void keyBackClicked() = mac 0x280940;
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
	static GJUserScore* create(cocos2d::CCDictionary*) = mac 0x5077a0, win 0x1168C0;
	static GJUserScore* create() = mac 0x52cbd0, win 0x117860;

	~GJUserScore();

	/* unverified signature */
	bool isCurrentUser() = win 0x117960;
	TodoReturn mergeWithScore(GJUserScore*);

	virtual bool init() = mac 0x52cd10;

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
	int m_newFriendCount;
	bool m_newFriendRequest;
}

[[link(android)]]
class ProfilePage : FLAlertLayer, FLAlertLayerProtocol, LevelCommentDelegate, CommentUploadDelegate, UserInfoDelegate, UploadActionDelegate, UploadPopupDelegate, LeaderboardManagerDelegate {
	static ProfilePage* create(int, bool) = win 0x2E7270, mac 0x778c80;

	bool init(int, bool) = win 0x2E7320, mac 0x778e90;
	~ProfilePage();

	void onMessages(cocos2d::CCObject* sender) = mac 0x77d2e0;
	void onMyLevels(cocos2d::CCObject* sender) = mac 0x77cf40, win 0x2E9F20;
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onRequests(cocos2d::CCObject* sender) = mac 0x77d400;
	void onSettings(cocos2d::CCObject* sender) = mac 0x77d490;
	void onBlockUser(cocos2d::CCObject* sender) = mac 0x77cc20;
	void onSendMessage(cocos2d::CCObject* sender) = mac 0x77c770;
	void onCommentHistory(cocos2d::CCObject* sender) = mac 0x77c730;
	void onClose(cocos2d::CCObject* sender) = mac 0x779940, win 0x2eae90;
	void onFollow(cocos2d::CCObject* sender) = mac 0x779bc0;
	void onFriend(cocos2d::CCObject* sender) = mac 0x77c880;
	void onTwitch(cocos2d::CCObject* sender) = mac 0x77c5f0;
	void onUpdate(cocos2d::CCObject* sender) = mac 0x779e30, win 0x2e7db0;
	void onComment(cocos2d::CCObject* sender) = mac 0x77d4b0;
	void onFriends(cocos2d::CCObject* sender) = mac 0x77d370;
	void onMyLists(cocos2d::CCObject* sender) = mac 0x77d110;
	void onTwitter(cocos2d::CCObject* sender) = mac 0x77c490;
	void onYouTube(cocos2d::CCObject* sender) = mac 0x77c340;

	/* unverified signature */
	bool isOnWatchlist(int);
	TodoReturn setupComments() = mac 0x7799c0;
	TodoReturn updatePageArrows();
	TodoReturn updateLevelsLabel();
	TodoReturn showNoAccountError();
	void loadPageFromUserInfo(GJUserScore*) = mac 0x77a170, win 0x2e8040;
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*) = win 0x2EB980, mac 0x77a030;
	TodoReturn toggleMainPageVisibility(bool);
	TodoReturn loadPage(int) = mac 0x77e370;
	TodoReturn blockUser() = mac 0x77d730;
	/* unverified signature */
	bool isCorrect(char const*) = mac 0x77e7a0;

	virtual void registerWithTouchDispatcher() = mac 0x77f1b0;
	virtual void keyBackClicked() = win 0x2EAEF0, mac 0x77dd50;
	virtual void show() = win 0x2EB010, mac 0x77dfd0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x77d810;
	virtual TodoReturn updateUserScoreFinished() = mac 0x77de60;
	virtual TodoReturn updateUserScoreFailed() = mac 0x77df30;
	virtual TodoReturn getUserInfoFinished(GJUserScore*) = win 0x2EB5D0, mac 0x77e2c0;
	virtual TodoReturn getUserInfoFailed(int) = win 0x2EB660, mac 0x77e5f0;
	virtual TodoReturn userInfoChanged(GJUserScore*) = win 0x2EB6B0, mac 0x77e6b0;
	virtual TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*) = win 0x2EBAB0, mac 0x77e8d0;
	virtual TodoReturn loadCommentsFailed(char const*) = win 0x2EBB10, mac 0x77e9c0;
	virtual TodoReturn setupPageInfo(gd::string, char const*) = win 0x2EBB70, mac 0x77ea90;
	virtual TodoReturn commentUploadFinished(int) = mac 0x77eec0;
	virtual TodoReturn commentUploadFailed(int, CommentError) = mac 0x77ef50;
	virtual TodoReturn commentDeleteFailed(int, int) = mac 0x77f020;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = mac 0x77d9f0;
	virtual TodoReturn uploadActionFinished(int, int) = mac 0x77da70;
	virtual TodoReturn uploadActionFailed(int, int) = mac 0x77dc30;

	GJUserScore* m_score;
	int m_accountID;
	bool m_ownProfile;
	gd::string m_profileKey;
	cocos2d::CCLabelBMFont* m_somethingWentWrong;
	cocos2d::CCLabelBMFont* m_usernameLabel;
	GJCommentListLayer* m_list;
	CCMenuItemSpriteExtra* m_rightArrow;
	CCMenuItemSpriteExtra* m_leftArrow;
	CCMenuItemSpriteExtra* m_followBtn;
	void* m_unk;
	cocos2d::CCArray* m_buttons;
	cocos2d::CCArray* m_arrayWithUsernameLabel;
	int m_itemCount;
	int m_pageStartIdx;
	int m_pageEndIdx;
	int m_page;
	LoadingCircle* m_circle;
	void* m_popupDelegate;
	CCMenuItemSpriteExtra* m_refreshBtn;
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
	void setValue(float) = win 0x4c950, mac 0x2e0390;

	float m_length;
	bool m_vertical;
}

[[link(android)]]
class ColorChannelSprite : cocos2d::CCSprite {
	static ColorChannelSprite* create() = win 0x1d41d0, mac 0x2b1e60;

	~ColorChannelSprite();

	TodoReturn updateValues(ColorAction*) = mac 0x2b2340;
	TodoReturn updateOpacity(float) = win 0x1d4450, mac 0x2b20e0;
	TodoReturn updateBlending(bool) = mac 0x2b2230;
	TodoReturn updateCopyLabel(int, bool) = mac 0x2b1f20;

	virtual bool init() = mac 0x2b1f00;
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
	TodoReturn loadFromObject(StatsObject*) = mac 0x225a30, win 0x81BD0;

	virtual bool init() = mac 0x231150;
	virtual void draw() = win 0x7d0f0, mac 0x231bf0; //correct one is 0x231bf0, there is also 0x234ca0 which is identical but its actually from GJUserCell
}

[[link(android)]]
class StatsObject : cocos2d::CCObject {
	static StatsObject* create(char const*, int);
	bool init(char const*, int);
	~StatsObject();
}

[[link(android)]]
class SliderTouchLogic : cocos2d::CCMenu {
	static SliderTouchLogic* create(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float) = mac 0x2e05b0;

	bool init(cocos2d::CCNode*, cocos2d::SEL_MenuHandler, char const*, char const*, float);
	~SliderTouchLogic();

	/* unverified signature */
	void setRotated(bool);
	/* unverified signature */
	void setMaxOffset(float);

	// 2.2, not tested

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2e0a60;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2e0c90;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2e0bd0;
	virtual void registerWithTouchDispatcher() = mac 0x2e0fa0;

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
	static TodoReturn fast_srand(unsigned long) = mac 0x4ccc30;
	static TodoReturn gen_random(int);
	static TodoReturn getResponse(cocos2d::extension::CCHttpResponse*) = mac 0x4c9fa0;
	static TodoReturn intToString(int) = win 0x45060, mac 0x4d2190;
	static TodoReturn openAppPage();
	static TodoReturn openRateURL(gd::string, gd::string);
	static TodoReturn strongColor(cocos2d::_ccColor3B) = mac 0x4cc700;
	static TodoReturn colorToSepia(cocos2d::_ccColor3B, float);
	/* unverified signature */
	static bool isRateEasing(int);
	static TodoReturn addBackButton(cocos2d::CCLayer*, cocos2d::CCMenuItem*) = mac 0x4cae40;
	static TodoReturn fast_rand_0_1();
	static TodoReturn getEasedValue(float, int, float);
	static TodoReturn getfast_srand();
	static gd::string getTimeString(int) = mac 0x4cc860;
	static TodoReturn hsvFromString(gd::string const&, char const*);
	static TodoReturn postClipVisit();
	static TodoReturn stringFromHSV(cocos2d::_ccHSVValue, char const*);
	static TodoReturn getEasedAction(cocos2d::CCActionInterval*, int, float);
	static TodoReturn msToTimeString(int, int);
	static TodoReturn pointsToString(int) = mac 0x4d2c60;
	static TodoReturn transformColor(cocos2d::_ccColor3B const&, float, float, float) = mac 0x4cb0a0;
	static TodoReturn transformColor(cocos2d::_ccColor3B const&, cocos2d::_ccHSVValue) = mac 0x4cb0d0;
	static TodoReturn createHashString(gd::string const&, int);
	static TodoReturn doWeHaveInternet() = mac 0x4c9d70;
	static TodoReturn getMultipliedHSV(cocos2d::_ccHSVValue const&, float);
	static TodoReturn intToShortString(int) = mac 0x4d2490;
	static TodoReturn saveStringToFile(gd::string const&, gd::string const&);
	static TodoReturn stringSetupToMap(gd::string const&, char const*, gd::map<gd::string, gd::string>&);
	static TodoReturn getDropActionWEnd(float, float, float, cocos2d::CCAction*, float);
	static TodoReturn getInvertedEasing(int);
	// static TodoReturn getRelativeOffset(GameObject*, cocos2d::CCPoint);
	static TodoReturn stringSetupToDict(gd::string const&, char const*);
	static CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, float, float, float, cocos2d::CCPoint, char const*, bool, int, cocos2d::CCArray*) = win 0x040d40, mac 0x4ca4a0;
	static CCMenuItemToggler* createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCArray*) = win 0x040c40, mac 0x4ca390;
	static TodoReturn fast_rand_minus1_1();
	static TodoReturn particleFromString(gd::string const&, cocos2d::CCParticleSystemQuad*, bool);
	static TodoReturn particleFromStruct(cocos2d::ParticleStruct const&, cocos2d::CCParticleSystemQuad*, bool);
	static TodoReturn getDropActionWDelay(float, float, float, cocos2d::CCNode*, cocos2d::SEL_CallFunc);
	static TodoReturn alignItemsVertically(cocos2d::CCArray*, float, cocos2d::CCPoint);
	static TodoReturn contentScaleClipRect(cocos2d::CCRect&);
	static TodoReturn multipliedColorValue(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float) = win 0x41a40;
	static TodoReturn preVisitWithClipRect(cocos2d::CCRect);
	static TodoReturn saveParticleToString(cocos2d::CCParticleSystemQuad*);
	static TodoReturn addRThumbScrollButton(cocos2d::CCLayer*) = mac 0x4caf10;
	static TodoReturn alignItemsHorisontally(cocos2d::CCArray*, float, cocos2d::CCPoint, bool) = mac 0x4c9860;
	static TodoReturn mergeDictsSkipConflict(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
	static TodoReturn particleStringToStruct(gd::string const&, cocos2d::ParticleStruct&);
	static TodoReturn getLargestMergedIntDicts(cocos2d::CCDictionary*, cocos2d::CCDictionary*);
	static TodoReturn mergeDictsSaveLargestInt(cocos2d::CCDictionary*, cocos2d::CCDictionary*) = mac 0x4ca980;
	static void preVisitWithClippingRect(cocos2d::CCNode*, cocos2d::CCRect) = win 0x40bc0;
	static TodoReturn timestampToHumanReadable(long);
	/* unverified signature */
	static bool isIOS();
	static TodoReturn fast_rand();
}

[[link(android)]]
class BoomScrollLayer : cocos2d::CCLayer {
	static BoomScrollLayer* create(cocos2d::CCArray*, int, bool) = mac 0x382bc0;
	static BoomScrollLayer* create(cocos2d::CCArray*, int, bool, cocos2d::CCArray*, DynamicScrollDelegate*) = mac 0x3827d0;

	bool init(cocos2d::CCArray*, int, bool, cocos2d::CCArray*, DynamicScrollDelegate*) = mac 0x382860;
	~BoomScrollLayer();

	TodoReturn getTotalPages() = mac 0x383740;
	TodoReturn getRelativePageForNum(int);
	TodoReturn getRelativePosForPage(int);
	TodoReturn getPage(int) = mac 0x383ae0;

	/* unverified signature */
	void setDotScale(float);
	/* unverified signature */
	void setPagesIndicatorPosition(cocos2d::CCPoint) = mac 0x382d00;

	TodoReturn claimTouch(cocos2d::CCTouch*);
	TodoReturn moveToPage(int);
	TodoReturn removePage(cocos2d::CCLayer*);
	TodoReturn selectPage(int);
	TodoReturn updateDots(float) = mac 0x383770;
	TodoReturn quickUpdate();
	TodoReturn updatePages() = mac 0x382d30;
	TodoReturn moveToPageEnded() = mac 0x384070;
	TodoReturn instantMoveToPage(int) = mac 0x384200;
	TodoReturn cancelAndStoleTouch(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn removePageWithNumber(int);
	TodoReturn togglePageIndicators(bool) = mac 0x383fa0;
	TodoReturn pageNumberForPosition(cocos2d::CCPoint);
	TodoReturn repositionPagesLooped() = mac 0x382e50;
	TodoReturn setupDynamicScrolling(cocos2d::CCArray*, DynamicScrollDelegate*) = mac 0x3834f0;
	TodoReturn positionForPageWithNumber(int);
	TodoReturn addPage(cocos2d::CCLayer*);
	TodoReturn addPage(cocos2d::CCLayer*, int);

	virtual void visit() = mac 0x384010;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x384b40;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x384c30;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x384f50;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x384980;
	virtual void registerWithTouchDispatcher() = mac 0x3847f0;
}

[[link(android)]]
class LevelInfoLayer : cocos2d::CCLayer, LevelDownloadDelegate, LevelUpdateDelegate, RateLevelDelegate, LikeItemDelegate, FLAlertLayerProtocol, LevelDeleteDelegate, NumberInputDelegate, SetIDPopupDelegate, TableViewCellDelegate {
	static LevelInfoLayer* create(GJGameLevel*, bool) = win 0x24CCD0, mac 0x297220;

	bool init(GJGameLevel* level, bool challenge) = win 0x24CD80, mac 0x2973f0;
	~LevelInfoLayer();

	void onFavorite(cocos2d::CCObject* sender)= win 0x24EFC0, mac 0x29c320;
	void onFeatured(cocos2d::CCObject* sender);
	void onAddToList(cocos2d::CCObject* sender) = win 0x24EDA0, mac 0x29c620;
	void onLevelInfo(cocos2d::CCObject* sender) = win 0x2521E0, mac 0x29c030;
	void onRateDemon(cocos2d::CCObject* sender) = win 0x251E00, mac 0x29ba30;
	void onRateStars(cocos2d::CCObject* sender) = mac 0x29b8d0, win 0x251CD0;
	void onSetFolder(cocos2d::CCObject* sender) = win 0x24EEE0, mac 0x29c580;
	void onPlayReplay(cocos2d::CCObject* sender);
	void onOwnerDelete(cocos2d::CCObject* sender) = win 0x251B50;
	void onViewProfile(cocos2d::CCObject* sender) = win 0x252180, mac 0x299740;
	void onRateStarsMod(cocos2d::CCObject* sender) = mac 0x29bc30, win 0x251DB0;
	void onLowDetailMode(cocos2d::CCObject* sender) = win 0x252150;
	void onLevelLeaderboard(cocos2d::CCObject* sender) = mac 0x29b7e0, win 0x24F030;
	void onBack(cocos2d::CCObject* sender) = mac 0x29bfb0, win 0x2533E0;
	void onInfo(cocos2d::CCObject* sender) = mac 0x29b7b0, win 0x2516C0;
	void onLike(cocos2d::CCObject* sender) = mac 0x29b850, win 0x251E40;
	void onPlay(cocos2d::CCObject* sender) = win 0x250DA0, mac 0x2997c0;
	void onRate(cocos2d::CCObject* sender) = win 0x251CD0;
	void onClone(cocos2d::CCObject* sender) = win 0x2516F0;
	void onDelete(cocos2d::CCObject* sender) = win 0x251AA0;
	void onGarage(cocos2d::CCObject* sender) = mac 0x29c2c0, win 0x24F090;
	void onUpdate(cocos2d::CCObject* sender) = mac 0x29b6e0, win 0x252090;

	void confirmClone(cocos2d::CCObject*) = mac 0x29bd60, win 0x2518D0;
	TodoReturn confirmDelete(cocos2d::CCObject*) = mac 0x29b5f0;
	void downloadLevel() = mac 0x299f40, win 0x1b950;
	TodoReturn loadLevelStep() = mac 0x29deb0;
	void tryCloneLevel(cocos2d::CCObject*) = mac 0x29be90, win 0x2516f0;
	TodoReturn incrementLikes();
	TodoReturn setupLevelInfo() = mac 0x29a030;
	TodoReturn showSongWarning() = mac 0x29dc90;
	TodoReturn showUpdateAlert(UpdateResponse) = mac 0x29d7f0;
	TodoReturn confirmMoveToTop(cocos2d::CCObject*) = mac 0x29c3a0;
	TodoReturn incrementDislikes();
	TodoReturn setupProgressBars() = mac 0x29aec0;
	TodoReturn updateLabelValues() = mac 0x29c920, win 0x252490;
	TodoReturn updateSideButtons() = mac 0x29ba90;
	TodoReturn confirmOwnerDelete(cocos2d::CCObject*) = mac 0x29bc80;
	TodoReturn confirmMoveToBottom(cocos2d::CCObject*) = mac 0x29c480;
	TodoReturn shouldDownloadLevel();
	TodoReturn setupPlatformerStats() = mac 0x29ab80;
	TodoReturn scene(GJGameLevel*, bool);
	TodoReturn playStep2() = mac 0x29dd60;
	TodoReturn playStep3() = mac 0x29de20;
	TodoReturn playStep4() = mac 0x29df60;
	TodoReturn tryShowAd();

	virtual void keyBackClicked() = mac 0x29e8f0;
	virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x29e920;
	virtual TodoReturn numberInputClosed(NumberInputLayer*) = mac 0x29e130;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = mac 0x29c680;
	virtual void levelDownloadFinished(GJGameLevel*) = win 0x250750, mac 0x29d300;
	virtual TodoReturn levelDownloadFailed(int) = win 0x250750, mac 0x29d690;
	virtual TodoReturn levelUpdateFinished(GJGameLevel*, UpdateResponse) = mac 0x29d780;
	virtual TodoReturn levelUpdateFailed(int) = mac 0x29d970;
	virtual TodoReturn levelDeleteFinished(int) = mac 0x29da70;
	virtual TodoReturn levelDeleteFailed(int) = mac 0x29db80;
	virtual TodoReturn rateLevelClosed() = mac 0x29e5e0;
	virtual TodoReturn likedItem(LikeItemType, int, bool) = mac 0x29e610;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x29e720;
	virtual void setIDPopupClosed(SetIDPopup*, int) = mac 0x29c7b0;

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
	int m_unk7;
	LoadingCircle* m_circle;
	GJDifficultySprite* m_difficultySprite;
	cocos2d::CCSprite* m_starsIcon;
	cocos2d::CCLabelBMFont* m_starsLabel;
	cocos2d::CCArray* m_icons;
	PAD = win 0x10, android32 0x10, android64 0x10, mac 0x10;
	bool m_challenge;
	PAD = win 0x4, android32 0x4, android64 0x8, mac 0x8;
	cocos2d::CCSprite* m_playSprite;
	void* m_unk11;
	CustomSongWidget* m_songWidget;
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
	TodoReturn addFollower(cocos2d::CCNode*) = mac 0x45e810;
	TodoReturn followSprite(CCSpritePlus*);
	TodoReturn removeFollower(cocos2d::CCNode*);
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(char const*);

	virtual void setScaleX(float) = win 0x28C10, mac 0x45e690;
	virtual void setScaleY(float) = win 0x28C90, mac 0x45e710;
	virtual void setScale(float) = win 0x28D10, mac 0x45e790;
	virtual void setPosition(cocos2d::CCPoint const&) = win 0x288F0, mac 0x45e2f0;
	virtual void setRotation(float) = mac 0x45e370;
	virtual void setRotationX(float) = mac 0x45e3f0;
	virtual void setRotationY(float) = mac 0x45e470;
	virtual bool initWithTexture(cocos2d::CCTexture2D*) = mac 0x45e2d0;
	virtual bool initWithSpriteFrameName(char const*) = mac 0x45e2b0;
	virtual void setFlipX(bool) = mac 0x45e4f0;
	virtual void setFlipY(bool) = mac 0x45e5c0;

	cocos2d::CCArray* m_followers;
	CCSpritePlus* m_followingSprite;
	bool m_hasFollower;
	bool m_propagateScaleChanges;
	bool m_propagateFlipChanges;
}

[[link(android)]]
class GameObject : CCSpritePlus {
	bool init(char const*) = mac 0x569ef0;
	GameObject() = mac 0x1d3710;
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
	TodoReturn getLastPosition() = mac 0x590f00;
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
	TodoReturn getStartPos() = mac 0x1d2af0;

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
	TodoReturn removeGlow() = mac 0x56c6f0;
	TodoReturn addRotation(float);
	TodoReturn addRotation(float, float);
	TodoReturn commonSetup() = win 0x12f1a0, mac 0x569f20;
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
	TodoReturn createWithKey(int) = win 0x12e410, mac 0x565320;
	TodoReturn destroyObject();
	TodoReturn disableObject();
	/* unverified signature */
	bool isColorObject();
	/* unverified signature */
	bool isSpeedObject() = win 0x1417e0;
	TodoReturn makeInvisible();
	TodoReturn slopeFloorTop();
	TodoReturn slopeWallLeft();

	TodoReturn addColorSprite(gd::string);
	TodoReturn addCustomChild(gd::string, cocos2d::CCPoint, int);
	TodoReturn assignUniqueID();
	TodoReturn belongsToGroup(int);
	TodoReturn deselectObject() = mac 0x58f330;
	/* unverified signature */
	bool isBasicTrigger();
	/* unverified signature */
	bool isColorTrigger();
	TodoReturn updateHSVState();
	TodoReturn updateStartPos() = mac 0x571590;
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
	GameObject* addColorSpriteToSelf() = mac 0x585840;
	TodoReturn addInternalGlowChild(gd::string, cocos2d::CCPoint);
	TodoReturn calculateOrientedBox();
	TodoReturn canChangeCustomColor();
	TodoReturn createAndAddParticle(int, char const*, int, cocos2d::tCCPositionType) = win 0x139650, mac 0x57ce00;
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
	GameObject* addColorSpriteToParent(bool) = mac 0x571da0;
	TodoReturn commonInteractiveSetup();
	TodoReturn updateSecondaryOpacity();
	TodoReturn canChangeSecondaryColor();
	void determineSlopeDirection() = win 0x13b260;
	TodoReturn resetSecondaryColorMode();
	TodoReturn shouldNotHideAnimFreeze();
	TodoReturn shouldShowPickupEffects();
	TodoReturn updateObjectEditorColor() = mac 0x58f350;
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

	virtual void update(float) = mac 0x572160;
	virtual void setScaleX(float) = win 0x138E40, mac 0x583940;
	virtual void setScaleY(float) = win 0x138ED0, mac 0x5839e0;
	virtual void setScale(float) = win 0x138F60, mac 0x583a80;
	virtual void setPosition(cocos2d::CCPoint const&) = win 0x138900, mac 0x5833c0;
	virtual void setVisible(bool) = mac 0x584180;
	virtual void setRotation(float) = mac 0x583630;
	virtual void setRotationX(float) = mac 0x583700;
	virtual void setRotationY(float) = mac 0x5837c0;
	virtual void setOpacity(unsigned char) = mac 0x583de0;
	virtual bool initWithTexture(cocos2d::CCTexture2D*) = mac 0x56a0b0;
	virtual void setChildColor(cocos2d::_ccColor3B const&) = mac 0x58eec0;
	virtual void setFlipX(bool) = win 0x138dc0, mac 0x5838a0;
	virtual void setFlipY(bool) = win 0x138e00, mac 0x5838f0;
	virtual TodoReturn firstSetup() = mac 0x1a3ba0;
	virtual TodoReturn customSetup() = mac 0x572170;
	virtual TodoReturn setupCustomSprites(gd::string) = win 0x14BC10, mac 0x4220f0;
	virtual TodoReturn addMainSpriteToParent(bool) = win 0x13AE30, mac 0x585650;
	virtual TodoReturn resetObject() = mac 0x571620;
	virtual TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x1D230, mac 0x1a3820;
	virtual TodoReturn activateObject() = mac 0x571c40;
	virtual TodoReturn deactivateObject(bool) = win 0x131860, mac 0x571fb0;
	virtual TodoReturn transferObjectRect(cocos2d::CCRect&) = win 0x1383E0, mac 0x582cb0;
	virtual cocos2d::CCRect const& getObjectRect() = mac 0x582d20;
	virtual cocos2d::CCRect getObjectRect(float, float) = win 0x138430, mac 0x582d50;
	virtual TodoReturn getObjectRect2(float, float) = mac 0x582f90;
	virtual TodoReturn getObjectTextureRect() = mac 0x583060;
	virtual TodoReturn getRealPosition() = mac 0x583300;
	virtual void setStartPos(cocos2d::CCPoint) = mac 0x571510;
	virtual TodoReturn updateStartValues() = mac 0x571a70;
	virtual void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x37a860;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x588f50;
	virtual TodoReturn claimParticle() = mac 0x5842e0;
	virtual TodoReturn unclaimParticle() = mac 0x5848d0;
	virtual TodoReturn particleWasActivated() = mac 0x584940;
	virtual bool isFlipX() = mac 0x583880;
	virtual bool isFlipY() = mac 0x583890;
	virtual void setRScaleX(float) = mac 0x583b20;
	virtual void setRScaleY(float) = mac 0x583b60;
	virtual void setRScale(float) = mac 0x583ba0;
	virtual TodoReturn getRScaleX() = mac 0x583c20;
	virtual TodoReturn getRScaleY() = mac 0x583c50;
	virtual void setRRotation(float) = mac 0x5835b0;
	virtual TodoReturn triggerActivated(float) = mac 0x1d2940;
	virtual void setObjectColor(cocos2d::_ccColor3B const&) = mac 0x58ebe0;
	virtual void setGlowColor(cocos2d::_ccColor3B const&) = mac 0x58ee70;
	virtual TodoReturn restoreObject() = mac 0x584980;
	virtual TodoReturn animationTriggered() = mac 0x1d2950;
	virtual TodoReturn selectObject(cocos2d::_ccColor3B) = mac 0x58ef30;
	virtual TodoReturn activatedByPlayer(PlayerObject*) = mac 0x1d2960;
	virtual TodoReturn hasBeenActivatedByPlayer(PlayerObject*) = mac 0x1d2970;
	virtual TodoReturn hasBeenActivated() = mac 0x1d2980;
	virtual TodoReturn getOrientedBox() = mac 0x58f940;
	virtual TodoReturn updateOrientedBox() = mac 0x58f9c0;
	virtual TodoReturn getObjectRotation() = mac 0x5979f0;
	virtual TodoReturn updateMainColor(cocos2d::_ccColor3B const&) = mac 0x5905c0;
	virtual TodoReturn updateSecondaryColor(cocos2d::_ccColor3B const&) = mac 0x590ad0;
	virtual TodoReturn addToGroup(int) = mac 0x585db0;
	virtual TodoReturn removeFromGroup(int) = mac 0x585e60;
	virtual TodoReturn saveActiveColors() = mac 0x58ea40;
	virtual TodoReturn spawnXPosition() = mac 0x1d2990;
	virtual TodoReturn canAllowMultiActivate() = mac 0x1d29b0;
	virtual TodoReturn blendModeChanged() = mac 0x1d29c0;
	virtual TodoReturn updateParticleColor(cocos2d::_ccColor3B const&) = mac 0x58edb0;
	virtual TodoReturn updateParticleOpacity(unsigned char) = mac 0x584100;
	virtual TodoReturn updateMainParticleOpacity(unsigned char) = mac 0x1d29d0;
	virtual TodoReturn updateSecondaryParticleOpacity(unsigned char) = mac 0x1d29e0;
	virtual TodoReturn canReverse() = mac 0x1d29f0;
	virtual bool isSpecialSpawnObject() = mac 0x1d2a00;
	virtual TodoReturn canBeOrdered() = mac 0x1d2a10;
	virtual TodoReturn getObjectLabel() = mac 0x1d2a20;
	virtual void setObjectLabel(cocos2d::CCLabelBMFont*) = mac 0x1d2a30;
	virtual TodoReturn shouldDrawEditorHitbox() = mac 0x591c30;
	virtual TodoReturn getHasSyncedAnimation() = mac 0x1d2a40;
	virtual TodoReturn getHasRotateAction() = mac 0x1d2a50;
	virtual TodoReturn canMultiActivate(bool) = mac 0x1d2a60;
	virtual TodoReturn updateTextKerning(int) = mac 0x1d2a70;
	virtual TodoReturn getTextKerning() = mac 0x1d2a80;
	virtual TodoReturn getObjectRectDirty() const = mac 0x1d2a90;
	virtual void setObjectRectDirty(bool) = mac 0x1d2aa0;
	virtual TodoReturn getOrientedRectDirty() const = mac 0x1d2ab0;
	virtual void setOrientedRectDirty(bool) = mac 0x1d2ac0;
	virtual TodoReturn getType() const = mac 0x1d2ad0;
	virtual void setType(GameObjectType) = mac 0x1d2ae0;

	// most are untested and copied from android64 2.205 bindings
	PAD = mac 0x11;

	// property 511
	bool m_hasExtendedCollision;
	PAD = mac 0x13;

	// somehow related to property 155 and 156 if anyone wants to reverse engineer
	int m_activeMainColorID;
	int m_activeDetailColorID;

	PAD = mac 0x54;

	cocos2d::CCSprite* m_glowSprite;

	PAD = mac 0x4;

	float m_unk288;
	float m_unk28c;

	PAD = mac 0x8;

	gd::string m_particleString;

	PAD = mac 0x1;

	// property 146
	bool m_particleUseObjectColor;
	PAD = mac 0x3e;

	// property 108
	int m_linkedGroup;

	PAD = mac 0xc;

	cocos2d::CCSprite* m_colorSprite;

	PAD = mac 0x13;

	int m_uniqueID;
	GameObjectType m_objectType;

	PAD = mac 0x10;
	double m_realXPosition;
	double m_realYPosition;
	cocos2d::CCPoint m_startPosition;
	PAD = mac 0x1;

	// property 372
	bool m_hasNoAudioScale;
	PAD = mac 0x2a;

	// property 343
	short m_enterChannel;
	// property 446
	short m_objectMaterial;
	PAD = mac 0x4;

	// property 96
	bool m_hasNoGlow;

	// property 23
	int m_targetColor;

	// property 1
	int m_objectID;
	PAD = mac 0x8;

	// property 497
	short m_customColorType;
	// property 67
	bool m_isDontEnter;
	// property 64
	bool m_isDontFade;
	// property 116
	bool m_hasNoEffects;
	// property 507
	bool m_hasNoParticles;
	PAD = mac 0x16;

	// property 53
	int m_property53;
	PAD = mac 0x18;

	// property 21, also used with 41 and 43
	GJSpriteColor* m_baseColor;
	// property 22, also used with 42 and 44
	GJSpriteColor* m_detailColor;
	PAD = mac 0xc;

	// property 24
	ZLayer m_zLayer;
	// property 25
	int m_zOrder;
	PAD = mac 0x10;

	bool m_shouldUpdateColorSprite; // m_shouldUpdateColorSprite
	PAD = mac 0x1;

	// property 34
	bool m_hasGroupParent;
	// property 279
	bool m_hasAreaParent;
	// property 128
	float m_scaleX;
	// property 129
	float m_scaleY;

	// property 57
	std::array<short, 10>* m_groups;
	// used with property 57
	short m_groupCount;
	// used with property 274
	bool m_hasGroupParentsString;

	std::array<short, 10>* m_colorGroups;
	short m_colorGroupCount;
	std::array<short, 10>* m_opacityGroups;
	short m_opacityGroupCount;

	// property 20
	short m_editorLayer;
	// property 61
	short m_editorLayer2;
	PAD = mac 0x8;

	// property 121
	bool m_isNoTouch;
	PAD = mac 0x9;

	cocos2d::CCPoint m_lastPosition;

	PAD = mac 0x1b;

	// property 103
	bool m_isHighDetail;
	PAD = mac 0x21;

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
	// property 509
	bool m_isDontBoostX;
	PAD = mac 0x11;

	// property 155
	int m_property155;
	// property 156
	int m_property156;

	PAD = mac 0x12;
}

[[link(android)]]
class EnhancedGameObject : GameObject {
	static EnhancedGameObject* create(char const*);

	bool init(char const*);
	~EnhancedGameObject();
	EnhancedGameObject();

	TodoReturn updateState(int);
	TodoReturn updateUserCoin() = win 0x145220, mac 0x588e40;
	TodoReturn triggerAnimation();
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x592260;
	TodoReturn createRotateAction(float, int);
	TodoReturn updateRotateAction(float);
	TodoReturn refreshRotateAction();
	TodoReturn resetSyncedAnimation();
	TodoReturn previewAnimateOnTrigger();
	TodoReturn setupAnimationVariables();
	TodoReturn waitForAnimationTrigger();

	virtual TodoReturn customSetup() = mac 0x592740;
	virtual void resetObject() = win 0x143380, mac 0x591f80;
	virtual TodoReturn deactivateObject(bool) = mac 0x595600;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x595660;
	virtual TodoReturn triggerActivated(float) = mac 0x5920f0;
	virtual TodoReturn restoreObject() = mac 0x592020;
	virtual TodoReturn animationTriggered() = mac 0x5921c0;
	virtual TodoReturn activatedByPlayer(PlayerObject*) = mac 0x592100;
	virtual TodoReturn hasBeenActivatedByPlayer(PlayerObject*) = mac 0x592150;
	virtual TodoReturn hasBeenActivated() = mac 0x5921a0;
	virtual TodoReturn saveActiveColors() = mac 0x5921e0;
	virtual TodoReturn canAllowMultiActivate() = mac 0x591c80;
	virtual TodoReturn getHasSyncedAnimation() = mac 0x1d2c10;
	virtual TodoReturn getHasRotateAction() = mac 0x1d2c20;
	virtual TodoReturn canMultiActivate(bool) = mac 0x5920d0;
	virtual TodoReturn powerOnObject(int) = mac 0x592060;
	virtual TodoReturn powerOffObject() = mac 0x592080;
	virtual TodoReturn stateSensitiveOff(GJBaseGameLayer*) = mac 0x1a38c0;
	virtual TodoReturn updateSyncedAnimation(float, int) = mac 0x239c80;
	virtual TodoReturn updateAnimateOnTrigger(bool) = mac 0x23bba0;

	PAD = android32 0x25;

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
	bool m_disableAnimShine;
	// property 462
	int m_singleFrame;
	// property 592
	bool m_animationOffset;
	PAD = android32 0xf;

	// property 214
	bool m_animateOnlyWhenActive;
	// property 444
	bool m_isNoMultiActivate; // used in platformer stuff
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

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x3960d0, mac 0x1a1ca0;
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x186dc0;
	TodoReturn playTriggerEffect() = win 0x395e50;
	TodoReturn resetSpawnTrigger();
	TodoReturn updateSpecialColor();
	TodoReturn updateSpeedModType();
	TodoReturn triggerEffectFinished() = win 0x396080;
	TodoReturn updateInteractiveHover(float);
	EffectGameObject();

	virtual void setOpacity(unsigned char) = mac 0x1a1c20;
	virtual TodoReturn firstSetup() = mac 0x1a3b80;
	virtual void customSetup() = win 0x397d30, mac 0x185c50;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x17b7a0;
	virtual void setRScaleX(float) = mac 0x1a18b0;
	virtual void setRScaleY(float) = mac 0x1a18d0;
	virtual TodoReturn triggerActivated(float) = mac 0x1a3b10;
	virtual TodoReturn restoreObject() = mac 0x1a38d0;
	virtual TodoReturn spawnXPosition() = mac 0x1a3ad0;
	virtual TodoReturn canReverse() = mac 0x1a3c70;
	virtual bool isSpecialSpawnObject() = mac 0x1a3ce0;
	virtual TodoReturn canBeOrdered() = mac 0x1a3cf0;
	virtual TodoReturn getObjectLabel() = mac 0x1d2c60;
	virtual void setObjectLabel(cocos2d::CCLabelBMFont*) = mac 0x1d2c70;
	virtual TodoReturn stateSensitiveOff(GJBaseGameLayer*) = mac 0x1a3830;

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
	bool m_showGamemodeBorders;
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
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x597170;

	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x597280;
	virtual TodoReturn updateTextKerning(int) = mac 0x596ee0;
	virtual TodoReturn getTextKerning() = mac 0x597b00;

	// property 31
	gd::string m_text;
	// property 488
	int m_kerning;
}

[[link(android)]]
class SmartGameObject : GameObject {
	static SmartGameObject* create(char const*);

	bool init(char const*);
	~SmartGameObject();

	TodoReturn updateSmartFrame();
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x19a5d0;

	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x19a110;

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

	TodoReturn updateParticle();
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x19a850;
	TodoReturn updateParticleAngle(float, cocos2d::CCParticleSystemQuad*);
	TodoReturn updateParticleScale(float);
	TodoReturn updateParticleStruct();
	TodoReturn applyParticleSettings(cocos2d::CCParticleSystemQuad*);
	TodoReturn createParticlePreviewArt();
	TodoReturn createAndAddCustomParticle();
	TodoReturn updateParticlePreviewArtOpacity(float);

	virtual bool init() = mac 0x19a820;
	virtual void setScaleX(float) = mac 0x19b8a0;
	virtual void setScaleY(float) = mac 0x19b910;
	virtual void setScale(float) = mac 0x19b980;
	virtual void setRotation(float) = mac 0x19b7e0;
	virtual void setRotationX(float) = mac 0x19b820;
	virtual void setRotationY(float) = mac 0x19b860;
	virtual void setChildColor(cocos2d::_ccColor3B const&) = mac 0x19bae0;
	virtual TodoReturn customSetup() = mac 0x19aa90;
	virtual TodoReturn addMainSpriteToParent(bool) = mac 0x19ab60;
	virtual TodoReturn resetObject() = mac 0x19bcd0;
	virtual TodoReturn deactivateObject(bool) = mac 0x19bc90;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x19bed0;
	virtual TodoReturn claimParticle() = mac 0x19ac40;
	virtual TodoReturn unclaimParticle() = mac 0x19b1f0;
	virtual TodoReturn particleWasActivated() = mac 0x19b270;
	virtual void setObjectColor(cocos2d::_ccColor3B const&) = mac 0x19b9f0;
	virtual TodoReturn blendModeChanged() = mac 0x19ab20;
	virtual TodoReturn updateParticleColor(cocos2d::_ccColor3B const&) = mac 0x1d2bf0;
	virtual TodoReturn updateParticleOpacity(unsigned char) = mac 0x1d2c00;
	virtual TodoReturn updateMainParticleOpacity(unsigned char) = mac 0x19bbd0;
	virtual TodoReturn updateSecondaryParticleOpacity(unsigned char) = mac 0x19bc30;
	virtual TodoReturn updateSyncedAnimation(float, int) = mac 0x19bd30;
	virtual TodoReturn updateAnimateOnTrigger(bool) = mac 0x19be80;

	// property 145
	gd::string m_particleData;
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

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x19c940;

	virtual TodoReturn resetObject() = mac 0x19c920;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x19c9a0;
	virtual TodoReturn updateMainColor(cocos2d::_ccColor3B const&) = mac 0x19c8e0;
	virtual TodoReturn updateSecondaryColor(cocos2d::_ccColor3B const&) = mac 0x19c900;
	virtual TodoReturn updateSyncedAnimation(float, int) = mac 0x23ba50;
}

[[link(android)]]
class RingObject : EffectGameObject {
	static RingObject* create(char const*);

	bool init(char const*);
	~RingObject();

	TodoReturn spawnCircle();
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x19d110;

	virtual void setScale(float) = mac 0x19d080;
	virtual void setRotation(float) = mac 0x19d0e0;
	virtual TodoReturn resetObject() = mac 0x19d060;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x19d260;
	virtual void setRScale(float) = mac 0x19d0b0;
	virtual TodoReturn triggerActivated(float) = mac 0x19cf00;
	virtual TodoReturn shouldDrawEditorHitbox() = mac 0x19d0f0;
	virtual TodoReturn powerOnObject(int) = mac 0x19cf10;

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

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1a59d0;
	TodoReturn loadSettingsFromString(gd::string);

	virtual bool init() = win 0x3A0D10, mac 0x1a5880;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1a59e0;

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
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1a8eb0;
	TodoReturn setupCustomSprites(gd::string) = win 0x14bc10, mac 0x1a8490;
	TodoReturn updateLabelIfDirty();
	TodoReturn updatePreviewLabel();

	virtual bool init() = mac 0x1a8460;
	virtual void setOpacity(unsigned char) = mac 0x1a8840;
	virtual TodoReturn addMainSpriteToParent(bool) = mac 0x1a9120;
	virtual TodoReturn resetObject() = mac 0x1a9d40;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1a9180;
	virtual void setObjectColor(cocos2d::_ccColor3B const&) = mac 0x1a90d0;
	virtual TodoReturn updateTextKerning(int) = mac 0x1a88c0;
	virtual TodoReturn getTextKerning() = mac 0x1d2e30;

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
	static SearchButton* create(char const* texture, char const* text, float size, char const* icon) = win 0x2608A0, mac 0x5ee970;

	bool init(char const*, char const*, float, char const*) = mac 0x5f0c10, win 0x260990;
	~SearchButton();

	cocos2d::CCLabelBMFont* m_label;
	cocos2d::CCSprite* m_icon;
}

[[link(android)]]
class GameLevelManager : cocos2d::CCNode {
	~GameLevelManager();

	static GameLevelManager* sharedState() = win 0xF2D90, mac 0x4f3030;
	inline static GameLevelManager* get() {
		return GameLevelManager::sharedState();
	}

	TodoReturn getDailyID(GJTimedLevelType) = mac 0x527160;
	TodoReturn getDescKey(int);
	TodoReturn getDiffKey(int);
	TodoReturn getDiffVal(int);
	TodoReturn getLevelKey(int);
	TodoReturn getMapPacks(GJSearchObject*) = mac 0x511a30;
	TodoReturn getPageInfo(char const*) = mac 0x50a2f0;
	TodoReturn getTimeLeft(char const*, float) = mac 0x50a700;
	TodoReturn getUserList(UserListType) = mac 0x524400;
	TodoReturn getGauntlets() = mac 0x513af0;
	TodoReturn getGJRewards(int) = mac 0x525ff0;
	TodoReturn getIntForKey(char const*) = mac 0x527ee0;
	TodoReturn getLengthStr(bool, bool, bool, bool, bool, bool);
	GJGameLevel* getMainLevel(int, bool) = win 0xF40E0, mac 0x5011a0;
	TodoReturn getReportKey(int);
	bool getBoolForKey(char const*) = mac 0x5280b0, win 0x110820;
	gd::string getCommentKey(int, int, int, CommentKeyType) = mac 0x51e1d0;
	TodoReturn getDailyTimer(GJTimedLevelType) = mac 0x5271c0;
	TodoReturn getFolderName(int, bool) = mac 0x50bf00;
	TodoReturn getGJUserInfo(int) = win 0x105270, mac 0x51b4d0;
	TodoReturn getLevelLists(GJSearchObject*) = mac 0x512dd0;
	TodoReturn getLocalLevel(int);
	TodoReturn getMapPackKey(int);
	TodoReturn getMessageKey(int);
	GJGameLevel* getSavedLevel(int) = mac 0x509370;
	GJGameLevel* getSavedLevel(GJGameLevel*);
	TodoReturn getTopArtists(int, int);
	TodoReturn getGauntletKey(int);
	TodoReturn getLikeItemKey(LikeItemType, int, bool, int);
	TodoReturn getMessagesKey(bool, int) = mac 0x51c0b0;
	cocos2d::CCArray* getSavedLevels(bool, int) = mac 0x5089a0, win 0xF6620;
	TodoReturn getSearchScene(char const*) = mac 0x50aa00;
	TodoReturn getUserInfoKey(int);
	TodoReturn getGJChallenges() = mac 0x5267e0;
	TodoReturn getLevelListKey(int);
	void getOnlineLevels(GJSearchObject*) = mac 0x5108d0, win 0xFBAB0;
	TodoReturn getRateStarsKey(int);
	TodoReturn getSavedMapPack(int) = mac 0x511d60;
	TodoReturn getUserMessages(bool, int, int) = mac 0x51bd80;
	TodoReturn getActiveDailyID(GJTimedLevelType) = mac 0x527190;
	TodoReturn getDifficultyStr(bool, bool, bool, bool, bool, bool, bool, bool);
	TodoReturn getLevelComments(int, int, int, int, CommentKeyType) = mac 0x51dcc0;
	TodoReturn getLevelSaveData();
	TodoReturn getNextLevelName(gd::string);
	TodoReturn getSavedGauntlet(int);
	TodoReturn getTopArtistsKey(int);
	TodoReturn getAllUsedSongIDs();
	gd::string getBasePostString() = win 0xfa3b0, mac 0x50e2f0;
	TodoReturn getFriendRequests(bool, int, int) = mac 0x5219a0;
	TodoReturn getGauntletLevels(int) = mac 0x513e90, win 0xFF660;
	TodoReturn getLocalLevelList(int);
	TodoReturn getPostCommentKey(int);
	TodoReturn getSavedLevelList(int);
	TodoReturn getStoredUserList(UserListType) = mac 0x5239b0;
	TodoReturn getAccountComments(int, int, int) = mac 0x51e3f0;
	cocos2d::CCArray* getCompletedLevels(bool) = mac 0x508ef0;
	GJGameLevel* getSavedDailyLevel(int) = mac 0x5091b0;
	TodoReturn getSavedLevelLists(int) = mac 0x508b90, win 0xF6A70;
	TodoReturn getSplitIntFromKey(char const*, int);
	TodoReturn getDeleteCommentKey(int, int, int);
	TodoReturn getDeleteMessageKey(int, bool);
	TodoReturn getFriendRequestKey(bool, int) = mac 0x51f6f0;
	TodoReturn getLevelDownloadKey(int, bool);
	void getLevelLeaderboard(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = mac 0x519f00, win 0x103E80;
	TodoReturn getLocalLevelByName(gd::string);
	TodoReturn getLowestLevelOrder() = mac 0x508cb0;
	TodoReturn getUploadMessageKey(int);
	TodoReturn getAccountCommentKey(int, int) = mac 0x51e710;
	TodoReturn getAllSmartTemplates() = mac 0x50c310;
	TodoReturn getGauntletSearchKey(int) = mac 0x513a50, win 0xfee80;
	TodoReturn getGJDailyLevelState(GJTimedLevelType) = mac 0x526c80, win 0x10f150;
	TodoReturn getHighestLevelOrder() = mac 0x508c70;
	TodoReturn getLeaderboardScores(char const*) = mac 0x5196a0;
	TodoReturn getStoredUserMessage(int);
	TodoReturn getLikeAccountItemKey(LikeItemType, int, bool, int);
	TodoReturn getNextFreeTemplateID();
	TodoReturn getSavedGauntletLevel(int) = mac 0x509290;
	cocos2d::CCArray* getStoredOnlineLevels(char const*) = mac 0x50a0d0, win 0xF76F0;
	TodoReturn getActiveSmartTemplate();
	TodoReturn getLevelLeaderboardKey(int, LevelLeaderboardType, LevelLeaderboardMode) = mac 0x51acf0;
	TodoReturn getStoredLevelComments(char const*) = mac 0x51fa70;
	TodoReturn getStoredUserMessageReply(int) = mac 0x51bd60;
	TodoReturn getSavedDailyLevelFromLevelID(int) = mac 0x509450;
	TodoReturn getNews();
	TodoReturn getUsers(GJSearchObject*) = mac 0x51b140;
	TodoReturn getLenKey(int);
	TodoReturn getLenVal(int);

	/* unverified signature */
	void setDiffVal(int, bool) = mac 0x527ac0;
	/* unverified signature */
	void setIntForKey(int, char const*);
	/* unverified signature */
	void setBoolForKey(bool, char const*) = win 0x110760;
	/* unverified signature */
	void setFolderName(int, gd::string, bool);
	/* unverified signature */
	void setLevelStars(int, int, bool);
	/* unverified signature */
	void setLevelFeatured(int, int, bool);
	/* unverified signature */
	void setActiveSmartTemplate(GJSmartTemplate*);
	/* unverified signature */
	void setLenVal(int, bool) = mac 0x527ce0;

	TodoReturn onBanUserCompleted(gd::string, gd::string);
	TodoReturn onGetNewsCompleted(gd::string, gd::string) = win 0x106c00;
	TodoReturn onGetUsersCompleted(gd::string, gd::string);
	TodoReturn onLikeItemCompleted(gd::string, gd::string) = mac 0x4f9860, win 0x10d0f0;
	TodoReturn onBlockUserCompleted(gd::string, gd::string);
	TodoReturn onRateDemonCompleted(gd::string, gd::string);
	TodoReturn onRateStarsCompleted(gd::string, gd::string) = mac 0x4f7180;
	TodoReturn onGetMapPacksCompleted(gd::string, gd::string) = mac 0x4f65f0, win 0xfd080;
	TodoReturn onGetUserListCompleted(gd::string, gd::string);
	TodoReturn onReportLevelCompleted(gd::string, gd::string) = mac 0x4f9bf0;
	TodoReturn onUnblockUserCompleted(gd::string, gd::string);
	TodoReturn onUpdateLevelCompleted(gd::string, gd::string) = mac 0x4f70d0;
	TodoReturn onUploadLevelCompleted(gd::string, gd::string) = mac 0x4f5670, win 0xfb1b0;
	TodoReturn onGetGauntletsCompleted(gd::string, gd::string) = win 0xff060;
	TodoReturn onGetGJRewardsCompleted(gd::string, gd::string);
	TodoReturn onRemoveFriendCompleted(gd::string, gd::string);
	TodoReturn onRestoreItemsCompleted(gd::string, gd::string) = mac 0x4f9a20;
	TodoReturn onDeleteCommentCompleted(gd::string, gd::string) = mac 0x4f96b0, win 0x109740;
	TodoReturn onDownloadLevelCompleted(gd::string, gd::string) = mac 0x4f7020, win 0xffe90;
	TodoReturn onGetGJUserInfoCompleted(gd::string, gd::string) = mac 0x4f9fa0, win 0x1053D0;
	TodoReturn onGetLevelListsCompleted(gd::string, gd::string) = win 0xfe7f0;
	TodoReturn onGetTopArtistsCompleted(gd::string, gd::string) = win 0x104a50;
	TodoReturn onSetLevelStarsCompleted(gd::string, gd::string) = mac 0x4f7490;
	TodoReturn onUploadCommentCompleted(gd::string, gd::string) = mac 0x4f8670, win 0x108c30;
	TodoReturn onSubmitUserInfoCompleted(gd::string, gd::string);
	TodoReturn onGetGJChallengesCompleted(gd::string, gd::string) = mac 0x4fe0c0;
	TodoReturn onGetOnlineLevelsCompleted(gd::string, gd::string) = mac 0x4f5930, win 0xFC270;
	TodoReturn onGetUserMessagesCompleted(gd::string, gd::string);
	TodoReturn onUpdateUserScoreCompleted(gd::string, gd::string) = mac 0x4f7640;
	TodoReturn onUploadLevelListCompleted(gd::string, gd::string) = win 0xfe120;
	TodoReturn onGetLevelCommentsCompleted(gd::string, gd::string) = mac 0x4f7d90, win 0x106f20;
	TodoReturn onGetLevelSaveDataCompleted(gd::string, gd::string);
	TodoReturn onSetLevelFeaturedCompleted(gd::string, gd::string);
	TodoReturn onDeleteServerLevelCompleted(gd::string, gd::string) = mac 0x4f7300;
	TodoReturn onGetFriendRequestsCompleted(gd::string, gd::string);
	TodoReturn onReadFriendRequestCompleted(gd::string, gd::string);
	TodoReturn onRequestUserAccessCompleted(gd::string, gd::string);
	TodoReturn onSuggestLevelStarsCompleted(gd::string, gd::string);
	TodoReturn onUpdateDescriptionCompleted(gd::string, gd::string) = mac 0x4f9d60;
	TodoReturn onUploadUserMessageCompleted(gd::string, gd::string);
	TodoReturn onDeleteUserMessagesCompleted(gd::string, gd::string);
	TodoReturn onGetAccountCommentsCompleted(gd::string, gd::string) = mac 0x4f8200;
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = mac 0x4f3380;
	TodoReturn onAcceptFriendRequestCompleted(gd::string, gd::string);
	TodoReturn onDeleteFriendRequestCompleted(gd::string, gd::string);
	TodoReturn onDownloadUserMessageCompleted(gd::string, gd::string);
	TodoReturn onGetLevelLeaderboardCompleted(gd::string, gd::string);
	TodoReturn onUploadFriendRequestCompleted(gd::string, gd::string);
	TodoReturn onGetGJDailyLevelStateCompleted(gd::string, gd::string) = win 0x10f350;
	TodoReturn onGetLeaderboardScoresCompleted(gd::string, gd::string) = mac 0x4f79a0;
	TodoReturn onDeleteServerLevelListCompleted(gd::string, gd::string) = win 0xfe490;

	TodoReturn dataLoaded(DS_Dictionary*) = mac 0x50c8e0;
	void firstSetup() = win 0x397d10;
	TodoReturn followUser(int) = mac 0x50bc10;
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	/* unverified signature */
	bool isDLActive(char const*) = mac 0x50a480, win 0xf7910;
	TodoReturn deleteLevel(GJGameLevel*);
	/* unverified signature */
	bool isTimeValid(char const*, float) = mac 0x50a1c0;
	TodoReturn keyHasTimer(char const*);
	TodoReturn reportLevel(int);
	TodoReturn saveMapPack(GJMapPack*);
	TodoReturn unblockUser(int);
	TodoReturn updateLevel(GJGameLevel*) = mac 0x515ec0;
	void uploadLevel(GJGameLevel*) = win 0xFA560;
	TodoReturn encodeDataTo(DS_Dictionary*) = mac 0x50c700, win 0xF8F90;
	TodoReturn hasLikedItem(LikeItemType, int, bool, int);
	TodoReturn removeFriend(int) = mac 0x523530;
	TodoReturn restoreItems();
	TodoReturn saveGauntlet(GJMapPack*) = win 0xff920;
	TodoReturn unfollowUser(int) = mac 0x50bac0;
	TodoReturn addDLToActive(char const*) = mac 0x50a550, win 0xf79d0;
	TodoReturn deleteComment(int, CommentType, int) = win 0x1093f0, mac 0x521210;
	TodoReturn downloadLevel(int, bool) = mac 0x5144c0, win 0xffa20;
	TodoReturn gotoLevelPage(GJGameLevel*);
	TodoReturn hasRatedDemon(int) = mac 0x516e10;
	/* unverified signature */
	bool isUpdateValid(int) = mac 0x515e80;
	TodoReturn makeTimeStamp(char const*) = mac 0x509fb0, win 0xF7B30;
	TodoReturn saveLevelList(GJLevelList*);
	TodoReturn storeUserInfo(GJUserScore*);
	void storeUserName(int, int, gd::string) = mac 0x502f30, win 0xF54C0;
	TodoReturn uploadComment(gd::string, CommentType, int, int) = win 0x108540, mac 0x51fbd0;
	GJGameLevel* createNewLevel() = mac 0x5017f0;
	TodoReturn createPageInfo(int, int, int);
	TodoReturn resetAllTimers();
	TodoReturn resetGauntlets() = mac 0x514480;
	TodoReturn responseToDict(gd::string, bool) = mac 0x505b60;
	TodoReturn saveLocalScore(int, int, int);
	TodoReturn storeUserNames(gd::string);
	TodoReturn submitUserInfo();
	TodoReturn tryGetUsername(int) = mac 0x5032f0, win 0xf56f0;
	TodoReturn deleteLevelList(GJLevelList*);
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	/* unverified signature */
	bool isFollowingUser(int) = win 0xF86A0, mac 0x50b9d0;
	TodoReturn likeFromLikeKey(char const*);
	TodoReturn markItemAsLiked(LikeItemType, int, bool, int);
	TodoReturn typeFromLikeKey(char const*);
	TodoReturn updateUsernames();
	void updateUserScore() = win 0x1028A0, mac 0x517ff0;
	TodoReturn uploadLevelList(GJLevelList*);
	TodoReturn hasReportedLevel(int);
	void limitSavedLevels() = win 0xF7FD0, mac 0x50b1e0;
	TodoReturn parseRestoreData(gd::string);
	TodoReturn resetTimerForKey(char const*) = mac 0x50a910;
	TodoReturn storeUserMessage(GJUserMessage*);
	TodoReturn verifyLevelState(GJGameLevel*);
	TodoReturn deleteServerLevel(int);
	TodoReturn hasDownloadedList(int);
	TodoReturn itemIDFromLikeKey(char const*);
	TodoReturn messageWasRemoved(int, bool);
	TodoReturn purgeUnusedLevels();
	TodoReturn readFriendRequest(int);
	TodoReturn requestUserAccess();
	TodoReturn saveFetchedLevels(cocos2d::CCArray*) = mac 0x505dd0;
	TodoReturn storeSearchResult(cocos2d::CCArray*, gd::string, char const*) = mac 0x509d50;
	TodoReturn suggestLevelStars(int, int, int);
	TodoReturn updateDescription(int, gd::string);
	TodoReturn updateLevelOrders() = win 0xF68D0;
	void uploadUserMessage(int, gd::string, gd::string) = mac 0x51ce90;
	gd::string userNameForUserID(int) = mac 0x503170, win 0xF5610;
	TodoReturn accountIDForUserID(int) = mac 0x5037f0;
	TodoReturn areGauntletsLoaded() = mac 0x514460;
	TodoReturn cleanupDailyLevels() = win 0xF8430;
	TodoReturn createAndGetLevels(gd::string);
	TodoReturn createAndGetScores(gd::string, GJScoreType) = mac 0x507520;
	TodoReturn createNewLevelList() = mac 0x502340;
	TodoReturn deleteLevelComment(int, int);
	void deleteUserMessages(GJUserMessage*, cocos2d::CCArray*, bool) = mac 0x51d450;
	TodoReturn hasDownloadedLevel(int);
	TodoReturn hasRatedLevelStars(int) = mac 0x516a60;
	TodoReturn invalidateMessages(bool, bool) = mac 0x51d940, win 0x106ad0;
	TodoReturn invalidateRequests(bool, bool) = mac 0x5227f0, win 0x10c630;
	TodoReturn invalidateUserList(UserListType, bool) = mac 0x5246b0;
	TodoReturn pageFromCommentKey(char const*);
	TodoReturn performNetworkTest() = win 0xF2E10;
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType) = mac 0x4f3510, win 0xf2f80;
	TodoReturn removeDLFromActive(char const*) = mac 0x50a630, win 0xf7a80;
	TodoReturn removeUserFromList(int, UserListType);
	TodoReturn specialFromLikeKey(char const*);
	TodoReturn storeFriendRequest(GJFriendRequest*);
	TodoReturn typeFromCommentKey(char const*);
	TodoReturn updateLevelRewards(GJGameLevel*) = mac 0x503980;
	TodoReturn uploadLevelComment(int, gd::string, int) = win 0x108420, mac 0x51fb60;
	TodoReturn userIDForAccountID(int) = mac 0x5037b0;
	TodoReturn acceptFriendRequest(int, int) = mac 0x522b50;
	TodoReturn createSmartTemplate() = mac 0x50c280;
	TodoReturn deleteSmartTemplate(GJSmartTemplate*);
	TodoReturn downloadUserMessage(int, bool);
	TodoReturn hasLikedAccountItem(LikeItemType, int, bool, int);
	TodoReturn markLevelAsReported(int);
    void resetStoredUserInfo(int id) {
        m_storedUserInfo->removeObjectForKey(id);
    }
	TodoReturn resetStoredUserList(UserListType);
	TodoReturn saveFetchedMapPacks(cocos2d::CCArray*);
	TodoReturn storeCommentsResult(cocos2d::CCArray*, gd::string, char const*);
	TodoReturn uploadFriendRequest(int, gd::string) = win 0x109f10;
	gd::string writeSpecialFilters(GJSearchObject*) = mac 0x510460;
	TodoReturn createAndGetMapPacks(gd::string);
	TodoReturn deleteAccountComment(int, int);
	TodoReturn deleteFriendRequests(int, cocos2d::CCArray*, bool);
	TodoReturn markListAsDownloaded(int);
	TodoReturn removeDelimiterChars(gd::string, bool);
	TodoReturn resetAccountComments(int) = mac 0x51f580, win 0x107B10;
	TodoReturn resetDailyLevelState(GJTimedLevelType) = mac 0x5270e0, win 0x10f810;
	TodoReturn storeDailyLevelState(int, int, GJTimedLevelType) = mac 0x526fc0;
	TodoReturn updateSavedLevelList(GJLevelList*);
	TodoReturn uploadAccountComment(gd::string) = win 0x1084b0, mac 0x5209a0;
	TodoReturn userInfoForAccountID(int) = mac 0x5037d0;
	TodoReturn deleteServerLevelList(int);
	bool hasLikedItemFullCheck(LikeItemType, int, int) = mac 0x525520, win 0x10D7F0;
	TodoReturn levelIDFromCommentKey(char const*);
	TodoReturn markLevelAsDownloaded(int);
	TodoReturn markLevelAsRatedDemon(int);
	TodoReturn markLevelAsRatedStars(int);
	TodoReturn saveFetchedLevelLists(cocos2d::CCArray*);
	TodoReturn storeUserMessageReply(int, GJUserMessage*);
	TodoReturn createAndGetLevelLists(gd::string);
	TodoReturn deleteSentFriendRequest(int) = mac 0x5221e0;
	TodoReturn friendRequestWasRemoved(int, bool);
	TodoReturn hasDailyStateBeenLoaded(GJTimedLevelType) = mac 0x527120;
	TodoReturn createAndGetCommentsFull(gd::string, int, bool);
	TodoReturn createAndGetLevelComments(gd::string, int);
	TodoReturn levelIDFromPostCommentKey(char const*);
	TodoReturn friendRequestFromAccountID(int) = mac 0x51bce0;
	TodoReturn createAndGetAccountComments(gd::string, int);
	void resetCommentTimersForLevelID(int, CommentKeyType) = win 0x1091B0, mac 0x520a10;
	TodoReturn processOnDownloadLevelCompleted(gd::string, gd::string, bool);
	TodoReturn removeLevelDownloadedKeysFromDict(cocos2d::CCDictionary*);
	TodoReturn banUser(int);
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType) = mac 0x4f36d0, win 0xF3220;
	TodoReturn likeItem(LikeItemType, int, bool, int);
	TodoReturn blockUser(int) = mac 0x523a60;
	TodoReturn rateDemon(int, int, bool);
	TodoReturn rateStars(int, int);
	TodoReturn saveLevel(GJGameLevel*) = mac 0x5094a0;

	virtual bool init() = mac 0x501010;

	PAD = win 0x8, android32 0x18, android64 0x30, mac 0x18;
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
	UserListDelegate* m_userListDelegate;
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
	cocos2d::CCString* m_unkStr4;
}

[[link(android)]]
class GJSearchObject : cocos2d::CCNode {
	static GJSearchObject* create(SearchType) = mac 0x52d700, win 0x118C50;
	static GJSearchObject* create(SearchType, gd::string) = mac 0x52d830, win 0x118D40;
	static GJSearchObject* create(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int) = mac 0x52d460, win 0x118E40;

	bool init(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int) = win 0x118FF0;
	~GJSearchObject();

	char const* getSearchKey(SearchType, gd::string, gd::string, gd::string, int, bool, bool, bool, int, bool, bool, bool, bool, bool, bool, bool, bool, bool, bool, int, int, int) = win 0x1195C0;
	TodoReturn getPageObject(int) = mac 0x52df30;
	TodoReturn getNextPageKey();
	TodoReturn getNextPageObject() = mac 0x52df10;
	TodoReturn getPrevPageObject() = mac 0x52e160;
	char const* getKey() = mac 0x5114d0, win 0x119190;

	static GJSearchObject* createFromKey(char const*) = mac 0x50aa20, win 0x1188A0;
	/* unverified signature */
	bool isLevelSearchObject() = mac 0x52e180, win 0x1197A0;

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
	static GJLevelList* create() = mac 0x502610;

	~GJLevelList();

	TodoReturn getListLevelsArray(cocos2d::CCArray*);
	gd::string getUnpackedDescription() = mac 0x52e6a0;

	TodoReturn dataLoaded(DS_Dictionary*) = mac 0x52fff0;
	TodoReturn totalLevels();
	TodoReturn reorderLevel(int, int);
	void showListInfo() = mac 0x52fba0;
	TodoReturn orderForLevel(int);
	TodoReturn addLevelToList(GJGameLevel*);
	int completedLevels() = mac 0x52fb50;
	TodoReturn createWithCoder(DS_Dictionary*) = mac 0x52ffc0;
	TodoReturn parseListLevels(gd::string);
	TodoReturn reorderLevelStep(int, bool);
	TodoReturn updateLevelsString();
	TodoReturn duplicateListLevels(GJLevelList*);
	TodoReturn removeLevelFromList(int);
	TodoReturn frameForListDifficulty(int, DifficultyIconType);

	virtual void encodeWithCoder(DS_Dictionary*) = mac 0x5302f0;
	virtual bool canEncode() = mac 0x530520;
	virtual bool init() = mac 0x52e620;

	gd::vector<int> m_levels;
	int m_listID;
	int m_listVersion;
	int m_downloads;
	int m_likes;
	int m_difficulty;
	int m_accountID;
	int m_folder;
	int m_listRevision;
	int m_listOrder;
	int m_original;
	int m_diamonds;
	int m_levelsToClaim;
	bool m_unkBool;
	bool m_unlisted;
	bool m_friendsOnly;
	bool m_uploaded;
	bool m_favorite;
	bool m_featured;
	bool m_k100;
	gd::string m_creatorName;
	gd::string m_listName;
	gd::string m_unkString;
	gd::string m_levelsString;
	gd::string m_listDesc;
	int m_uploadDate;
	int m_updateDate;
	cocos2d::CCDictionary* m_k97;
	int m_listType;
	int m_M_ID;
}

[[link(android)]]
class LikeItemLayer : FLAlertLayer {
	static LikeItemLayer* create(LikeItemType, int, int) = mac 0x5bdd80, win 0x2714E0;

	bool init(LikeItemType, int, int) = mac 0x5bdef0, win 0x271590;
	~LikeItemLayer();

	void onLike(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onDislike(cocos2d::CCObject* sender);

	TodoReturn triggerLike(bool);

	virtual void keyBackClicked() = mac 0x5be470;

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
	static gd::string getAudioTitle(int) = mac 0x4d8da0, win 0x26E860;
	TodoReturn getSongObject(int) = mac 0x4dc4f0;
	TodoReturn nameForArtist(int);
	TodoReturn artistForAudio(int);
	TodoReturn fbURLForArtist(int);
	TodoReturn getAudioString(int);
	TodoReturn ngURLForArtist(int);
	TodoReturn ytURLForArtist(int);
	TodoReturn getLastTimewarp();
	TodoReturn getAudioFileName(int);
	TodoReturn sortSpeedObjects(cocos2d::CCArray*, GJBaseGameLayer*) = win 0x270fe0, mac 0x4dd230;
	TodoReturn valueForSpeedMod(int) = win 0x26fb50;
	TodoReturn offsetBPMForTrack(int);
	static gd::string base64DecodeString(gd::string) = mac 0x4dcac0, win 0x270BA0;
	TodoReturn base64EncodeString(gd::string);
	TodoReturn createStarPackDict();
	TodoReturn posForTimeInternal(float, cocos2d::CCArray*, int, bool, bool, bool, int&, int) = win 0x270220;
	TodoReturn toggleDebugLogging(bool);
	TodoReturn verifyLevelIntegrity(gd::string, int);
	TodoReturn getLastGameplayRotated();
	TodoReturn getLastGameplayReversed();
	TodoReturn sortChannelOrderObjects(cocos2d::CCArray*, cocos2d::CCDictionary*, bool) = win 0x270dc0;
	TodoReturn moveTriggerObjectsToArray(cocos2d::CCArray*, cocos2d::CCDictionary*, int);
	static GJGameLevel* getLevel(int, bool) = win 0x26DDA0, mac 0x4d6840;
}

[[link(android)]]
class GameStatsManager : cocos2d::CCNode {
	~GameStatsManager();

	TodoReturn getItemKey(int, int) = mac 0x66050;
	gd::string getLevelKey(int, bool, bool, bool) = mac 0x6cd80, win 0x16D350;
	gd::string getLevelKey(GJGameLevel*) = mac 0x6cd20, win 0x16D2E0;
	GJChallengeItem* getChallenge(int) = mac 0x73750, win 0x170BD0;
	TodoReturn getRewardKey(GJRewardType, int);
	TodoReturn getStoreItem(int);
	TodoReturn getStoreItem(int, int);
	TodoReturn getMapPackKey(int);
	TodoReturn getRewardItem(GJRewardType);
	TodoReturn getCurrencyKey(GJGameLevel*) = win 0x16f440, mac 0x6fcd0;
	TodoReturn getStatFromKey(StatKey) = mac 0x6c690;
	TodoReturn getBaseCurrency(int, bool, int);
	TodoReturn getBaseDiamonds(int) = mac 0x706c0;
	//TodoReturn getChallengeKey(GJChallengeItem*);
	TodoReturn getStarLevelKey(GJGameLevel*) = win 0x16d4e0;
	TodoReturn getBonusDiamonds(int) = mac 0x706e0;
	TodoReturn getDailyLevelKey(int) = win 0x171530;
	TodoReturn getDemonLevelKey(GJGameLevel*) = win 0x16d480;
	TodoReturn getListRewardKey(GJLevelList*);
	TodoReturn getPathRewardKey(int);
	TodoReturn getSecretCoinKey(char const*);
	int getItemUnlockState(int, UnlockType) = mac 0x77e40;
	GJChallengeItem* getQueuedChallenge(int) = mac 0x73830;
	TodoReturn getCompletedMapPacks();
	gd::string getGauntletRewardKey(int) = mac 0x78490;
	TodoReturn getNextVideoAdReward();
	TodoReturn getSecretChestForItem(int, UnlockType);
	TodoReturn getItemUnlockStateLite(int, UnlockType);
	int getBaseCurrencyForLevel(GJGameLevel*) = mac 0x6fde0, win 0x16F560;
	TodoReturn getRewardForSecretChest(int);
	TodoReturn getRewardForSpecialChest(gd::string);
	int getCollectedCoinsForLevel(GJGameLevel*) = win 0x16d240;
	TodoReturn getSpecialChestKeyForItem(int, UnlockType);
	int getTotalCollectedCurrency() = mac 0x74b00;
	int getTotalCollectedDiamonds() = mac 0x757b0;
	int getAwardedCurrencyForLevel(GJGameLevel*) = mac 0x6ffb0, win 0x16F680;
	TodoReturn getAwardedDiamondsForLevel(GJGameLevel*) = mac 0x70720;
	GJChallengeItem* getSecondaryQueuedChallenge(int) = mac 0x73910;
	TodoReturn getSpecialRewardDescription(gd::string, bool);
	TodoReturn getSpecialUnlockDescription(int, UnlockType, bool) = mac 0x789e0;
	int getStat(char const*) = win 0x168680, mac 0x66800;

	/* unverified signature */
	void setStatIfHigher(char const*, int);
	/* unverified signature */
	void setStarsForMapPack(int, int);
	/* unverified signature */
	void setStat(char const*, int) = win 0x168760, mac 0x66a40;

	TodoReturn dataLoaded(DS_Dictionary*) = mac 0x89460;
	TodoReturn firstSetup();
	TodoReturn hasUserCoin(char const*) = mac 0x6f490, win 0x16ecd0;
	static GameStatsManager* sharedState() = win 0x165df0, mac 0x5d0a0;
	TodoReturn addStoreItem(int, int, int, int, ShopType) = win 0x167FB0, mac 0x662c0;
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
	bool isItemEnabled(UnlockType, int) = win 0x173f90, mac 0x78170;
	TodoReturn storeUserCoin(char const*);
	TodoReturn awardSecretKey() = win 0x17d860;
	TodoReturn completedLevel(GJGameLevel*);
	/* unverified signature */
	bool isItemUnlocked(UnlockType, int) = win 0x173D10, mac 0x6b670;
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
	TodoReturn accountIDForIcon(int, UnlockType) = mac 0x3087a0;
	TodoReturn areRewardsLoaded() = mac 0x70f00;
	TodoReturn checkAchievement(char const*) = win 0x168870;
	//TodoReturn completedMapPack(GJMapPack*);
	TodoReturn createStoreItems() = mac 0x5d4c0;
	//TodoReturn preProcessReward(GJRewardItem*) = win 0x170450;
	TodoReturn preSaveGameStats();
	TodoReturn recountUserCoins(bool);
	TodoReturn setupIconCredits() = mac 0x308880;
	TodoReturn storeRewardState(GJRewardType, int, int, gd::string);
	void toggleEnableItem(UnlockType, int, bool) = win 0x174030, mac 0x78200;
	TodoReturn updateActivePath(StatKey);
	TodoReturn countSecretChests(GJRewardType) = mac 0x885d0;
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
	TodoReturn completedStarLevel(GJGameLevel*) = mac 0x6d730, win 0x16d970;
	TodoReturn hasPendingUserCoin(char const*) = mac 0x6f3c0, win 0x16ee40;
	TodoReturn incrementChallenge(GJChallengeType, int) = win 0x170E40;
	TodoReturn storeChallengeTime(int) = mac 0x73130;
	TodoReturn unlockSpecialChest(gd::string) = win 0x177940;
	TodoReturn areChallengesLoaded() = mac 0x731b0;
	TodoReturn completedDailyLevel(GJGameLevel*);
	TodoReturn completedDemonLevel(GJGameLevel*) = mac 0x6d5a0, win 0x16d880;
	TodoReturn hasCompletedMapPack(int);
	TodoReturn incrementActivePath(int) = win 0x168560;
	/* unverified signature */
	bool isPathChestUnlocked(int);
	/* unverified signature */
	bool isStoreItemUnlocked(int) = win 0x168080;
	TodoReturn recountSpecialStats() = mac 0x75ce0;
	TodoReturn resetChallengeTimer() = mac 0x73190;
	TodoReturn trySelectActivePath() = mac 0x6c280;
	TodoReturn unlockGauntletChest(int);
	TodoReturn checkCoinAchievement(GJGameLevel*);
	TodoReturn hasClaimedListReward(GJLevelList*);
	TodoReturn shouldAwardSecretKey();
	TodoReturn storePendingUserCoin(char const*);
	//TodoReturn storeQueuedChallenge(int, GJChallengeItem*);
	TodoReturn usernameForAccountID(int) = win 0x15c8b0, mac 0x308810;
	TodoReturn awardCurrencyForLevel(GJGameLevel*) = win 0x16F850, mac 0x70180;
	TodoReturn awardDiamondsForLevel(GJGameLevel*) = win 0x16FD70;
	//TodoReturn hasCompletedChallenge(GJChallengeItem*);
	bool hasCompletedMainLevel(int levelID) {
		return m_completedLevels->objectForKey(this->getLevelKey(levelID, false, false, false)) != nullptr;
	}
	TodoReturn hasCompletedStarLevel(GJGameLevel*) = mac 0x6d360, win 0x16d690;
	/* unverified signature */
	bool isSecretChestUnlocked(int);
	TodoReturn keyCostForSecretChest(int) = win 0x1781C0;
	TodoReturn processChallengeQueue(int) = mac 0x73d60;
	TodoReturn removeQueuedChallenge(int);
	void createSecretChestItems() = mac 0x5fb50;
	TodoReturn hasCompletedDailyLevel(int) = mac 0x741b0, win 0x1715b0;
	TodoReturn hasCompletedDemonLevel(GJGameLevel*);
	TodoReturn hasRewardBeenCollected(GJRewardType, int);
	/* unverified signature */
	bool isSpecialChestUnlocked(gd::string) = mac 0x77d60, win 0x177860;
	TodoReturn createSpecialChestItems() = mac 0x5fca0;
	bool hasCompletedOnlineLevel(int) = mac 0x6d140;
	/* unverified signature */
	bool isGauntletChestUnlocked(int) = mac 0x77bc0;
	//TodoReturn registerRewardsFromItem(GJRewardItem*) = win 0x17D700;
	TodoReturn createSecretChestRewards() = mac 0x79370;
	TodoReturn countUnlockedSecretChests(GJRewardType) = mac 0x88630;
	TodoReturn hasCompletedGauntletLevel(int) = mac 0x6d1c0;
	TodoReturn generateItemUnlockableData() = mac 0x65480;
	TodoReturn addSimpleSpecialChestReward(gd::string, UnlockType, int, bool);
	TodoReturn addSpecialRewardDescription(gd::string, gd::string);
	/* unverified signature */
	bool isSpecialChestLiteUnlockable(gd::string);
	TodoReturn removeErrorFromSpecialChests() = mac 0x77560;
	TodoReturn resetSpecialStatAchievements() = mac 0x77920;
	//TodoReturn storeSecondaryQueuedChallenge(int, GJChallengeItem*);
	TodoReturn markLevelAsCompletedAndClaimed(GJGameLevel*);
	TodoReturn removeQueuedSecondaryChallenge(int);
	TodoReturn logCoins();
	TodoReturn tempClear();

	virtual bool init() = mac 0x5d410;

	bool m_usePlayerStatsCCDictionary;
	cocos2d::CCString* m_trueString;
	cocos2d::CCDictionary* m_allStoreItems;
	cocos2d::CCDictionary* m_storeItems;
	cocos2d::CCDictionary* m_allTreasureRoomChests;
	cocos2d::CCDictionary* m_allTreasureRoomChestItems;
	cocos2d::CCDictionary* m_allSpecialChests;
	cocos2d::CCDictionary* m_allSpecialChestItems;
	gd::map<gd::string, gd::string> m_specialRewardDescriptions;
	gd::map<gd::string, gd::string> m_createSpecialChestItemsMap;
	cocos2d::CCDictionary* m_specialChestsLite;
	cocos2d::CCArray* m_storeItemArray;
	cocos2d::CCDictionary* m_rewardItems;
	cocos2d::CCDictionary* m_dailyChests;
	cocos2d::CCDictionary* m_worldAdvertChests;
	cocos2d::CCDictionary* m_activeChallenges;
	cocos2d::CCDictionary* m_upcomingChallenges;
	double m_challengeTime;
	cocos2d::CCDictionary* m_playerStats;
	gd::map<int, int> m_playerStatsRandMap;
	gd::map<int, int> m_playerStatsSeedMap;
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
	cocos2d::CCDictionary* m_enabledItems;
	bool m_unkBoolIncrementStat;
	cocos2d::CCDictionary* m_unkDict;
	cocos2d::CCDictionary* m_unlockedItems;
	gd::map<int, UnlockType> m_accountIDForIcon;
	gd::map<int, gd::string> m_usernameForAccountID;
	int m_activePath;
}

[[link(android)]]
class LevelSearchLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DemonFilterDelegate {
	static LevelSearchLayer* create(int) = mac 0x5ebb80, win 0x25C4E0;

	bool init(int) = mac 0x5ebc90, win 0x25C580;
	LevelSearchLayer() = win 0x25c160;
	~LevelSearchLayer() = win 0x25c3c0;

	TodoReturn getDiffKey(int);
	TodoReturn getTimeKey(int);
	TodoReturn getLevelLenKey();
	GJSearchObject* getSearchObject(SearchType, gd::string) = mac 0x5f0380, win 0x25F210;
	TodoReturn getSearchDiffKey();

	void onFollowed(cocos2d::CCObject* sender) = mac 0x5eee90;
	void onTrending(cocos2d::CCObject* sender) = mac 0x5eec10;
	void onMostLikes(cocos2d::CCObject* sender) = mac 0x5eead0;
	void onStarAward(cocos2d::CCObject* sender);
	void onSuggested(cocos2d::CCObject* sender) = mac 0x5eeb70;
	void onMostRecent(cocos2d::CCObject* sender) = mac 0x5eecb0;
	void onSearchMode(cocos2d::CCObject* sender) = mac 0x5ee380;
	void onSearchUser(cocos2d::CCObject* sender) = mac 0x5ee800;
	void onLatestStars(cocos2d::CCObject* sender) = mac 0x5eedf0;
	void onMoreOptions(cocos2d::CCObject* sender) = mac 0x5ee360, win 0x25e040;
	void onSpecialDemon(cocos2d::CCObject* sender);
	void onMostDownloaded(cocos2d::CCObject* sender) = mac 0x5eea30;
	void onClearFreeSearch(cocos2d::CCObject* sender) = mac 0x5ee920;
	void onBack(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onMagic(cocos2d::CCObject* sender) = mac 0x5eed50;
	void onSearch(cocos2d::CCObject* sender) = mac 0x5ee6f0;
	void onFriends(cocos2d::CCObject* sender) = mac 0x5eef30;

	TodoReturn toggleStar(cocos2d::CCObject*);
	TodoReturn toggleTime(cocos2d::CCObject*);
	TodoReturn clearFilters();
	TodoReturn toggleTimeNum(int, bool) = mac 0x5ef890;
	TodoReturn toggleDifficulty(cocos2d::CCObject*);
	TodoReturn updateSearchLabel(char const*) = mac 0x5ee3d0, win 0x25ef40;
	TodoReturn confirmClearFilters(cocos2d::CCObject*) = mac 0x5ee280, win 0x25dfc0;
	TodoReturn toggleDifficultyNum(int, bool) = mac 0x5ef720;
	TodoReturn scene(int) = mac 0x5eba40;
	TodoReturn checkDiff(int);
	TodoReturn checkTime(int);

	virtual void keyBackClicked() = mac 0x5f0b60;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = mac 0x5f0100;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x5f01c0;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x5f0290;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x5f0090;
	virtual TodoReturn demonFilterSelectClosed(int) = mac 0x5efb80;

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
	static GJComment* create() = mac 0x51edd0;

	~GJComment();

	virtual bool init() = mac 0x52e360;

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
	bool m_unkMultiplayerBool;
	GJUserScore* m_userScore;
}

[[link(android)]]
class CommentCell : TableViewCell, LikeItemDelegate, FLAlertLayerProtocol {
	~CommentCell();

	TodoReturn onUndelete();
	void onGoToLevel(cocos2d::CCObject* sender) = mac 0x233020;
	void onViewProfile(cocos2d::CCObject* sender) = mac 0x232ff0;
	void onConfirmDelete(cocos2d::CCObject* sender) = win 0x85BC0, mac 0x2331f0;
	void onLike(cocos2d::CCObject* sender) = win 0x85A10;
	TodoReturn onDelete() = win 0x85c60;
	void onUnhide(cocos2d::CCObject* sender) = win 0x85D10;

	void updateBGColor(int) = win 0x85990;
	TodoReturn incrementLikes();
	void loadFromComment(GJComment*) = mac 0x2266f0, win 0x83E20;
	TodoReturn incrementDislikes();
	TodoReturn updateLabelValues();
	CommentCell(char const*, float, float);

	virtual bool init() = mac 0x232fc0;
	virtual void draw() = mac 0x2332e0;
	virtual void likedItem(LikeItemType, int, bool) = win 0x85AF0, mac 0x2333b0;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x85CD0, mac 0x233750;

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

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x18f0d0;

	virtual TodoReturn customSetup() = mac 0x18b710;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x18b780;
}

[[link(android)]]
class KeyframeGameObject : EffectGameObject {
	static KeyframeGameObject* create();

	~KeyframeGameObject();

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1ad8d0;
	TodoReturn updateShadowObjects(GJBaseGameLayer*, EditorUI*) = mac 0x1ad510;

	virtual bool init() = mac 0x1ad4a0;
	virtual void setOpacity(unsigned char) = mac 0x1ad770;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1ade40;
}

[[link(android)]]
class ArtTriggerGameObject : EffectGameObject {
	static ArtTriggerGameObject* create(char const*);

	bool init(char const*);
	~ArtTriggerGameObject();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = mac 0x1cd8f0;
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1cd890;

	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1cd460;
}

[[link(android)]]
class EndTriggerGameObject : EffectGameObject {
	static EndTriggerGameObject* create();

	~EndTriggerGameObject();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = mac 0x1becc0;
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1bf950;

	virtual bool init() = mac 0x1bec70;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1bee70;
}

[[link(android)]]
class ForceBlockGameObject : EffectGameObject {
	static ForceBlockGameObject* create(char const*);

	bool init(char const*);
	~ForceBlockGameObject();

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1ccec0;
	TodoReturn calculateForceToTarget(GameObject*);

	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1cc370;
}

[[link(android)]]
class SFXTriggerGameObject : EffectGameObject {
	static SFXTriggerGameObject* create(char const*);

	bool init(char const*);
	~SFXTriggerGameObject();

	TodoReturn getSFXRefID();
	TodoReturn getUniqueSFXID();

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1b3b10;

	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1b0040;
}

[[link(android)]]
class UISettingsGameObject : EffectGameObject {
	static UISettingsGameObject* create();

	~UISettingsGameObject();

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1c0840;

	virtual bool init() = mac 0x1bfbb0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1bfc00;
}

[[link(android)]]
class ItemTriggerGameObject : EffectGameObject {
	static ItemTriggerGameObject* create(char const*);

	bool init(char const*);
	~ItemTriggerGameObject();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = mac 0x1c7040;
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1cac80;

	virtual TodoReturn customSetup() = mac 0x1c7000;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1c7260;
}

[[link(android)]]
class RandTriggerGameObject : ChanceTriggerGameObject {
	static RandTriggerGameObject* create();

	~RandTriggerGameObject();

	TodoReturn getTotalChance();
	TodoReturn getRandomGroupID();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = mac 0x1aa2b0;
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1aa600;

	virtual bool init() = mac 0x1aa020;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1aab30;
}

[[link(android)]]
class SongTriggerGameObject : SFXTriggerGameObject {
	static SongTriggerGameObject* create(char const*);

	bool init(char const*);
	~SongTriggerGameObject();

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1b4ef0;

	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1b4800;
}

[[link(android)]]
class CountTriggerGameObject : EffectGameObject {
	static CountTriggerGameObject* create(char const*);

	bool init(char const*);
	~CountTriggerGameObject();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = mac 0x1ba430;
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1ba850;

	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1bac80;
}

[[link(android)]]
class SpawnTriggerGameObject : EffectGameObject {
	static SpawnTriggerGameObject* create();

	~SpawnTriggerGameObject();

	TodoReturn changeRemap(int, int, bool);
	TodoReturn removeRemap(int, int);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = mac 0x1b6f40;
	TodoReturn updateRemapKeys(gd::vector<int> const&);
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1b7420;
	TodoReturn addRemap(int, int);

	virtual bool init() = mac 0x1b6640;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1b7830;
}

[[link(android)]]
class TimerTriggerGameObject : EffectGameObject {
	static TimerTriggerGameObject* create(char const*);

	bool init(char const*);
	~TimerTriggerGameObject();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = mac 0x1c5120;
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1c6aa0;

	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1c5310;
}

[[link(android)]]
class CameraTriggerGameObject : EffectGameObject {
	static CameraTriggerGameObject* create(char const*);

	bool init(char const*);
	~CameraTriggerGameObject();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = win 0x3abfb0, mac 0x1c0b40;
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1c4650;

	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1c0da0;
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

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1ced00;

	virtual bool init() = mac 0x1ce7e0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1ce830;
}

[[link(android)]]
class PlayerControlGameObject : EffectGameObject {
	static PlayerControlGameObject* create();

	~PlayerControlGameObject();

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1ce540;

	virtual bool init() = mac 0x1cda10;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1cda60;
}

[[link(android)]]
class SpawnParticleGameObject : EffectGameObject {
	static SpawnParticleGameObject* create();

	~SpawnParticleGameObject();

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1d0e50;

	virtual bool init() = mac 0x1cf9b0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1cfa00;
}

[[link(android)]]
class AudioLineGuideGameObject : EffectGameObject {
	static AudioLineGuideGameObject* create();

	~AudioLineGuideGameObject();

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1cc0f0;

	virtual bool init() = mac 0x1cb630;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1cb680;
}

[[link(android)]]
class RotateGameplayGameObject : EffectGameObject {
	static RotateGameplayGameObject* create();

	~RotateGameplayGameObject();

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1d2480;
	TodoReturn updateGameplayRotation();

	virtual bool init() = mac 0x1d1270;
	virtual TodoReturn updateStartValues() = mac 0x1d2800;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1d12c0;
}

[[link(android)]]
class TriggerControlGameObject : EffectGameObject {
	static TriggerControlGameObject* create(char const*);

	bool init(char const*);
	~TriggerControlGameObject();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = mac 0x1cf8c0;
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1cf650;
	TodoReturn updateTriggerControlFrame();

	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1ceec0;
}

[[link(android)]]
class SequenceTriggerGameObject : ChanceTriggerGameObject {
	static SequenceTriggerGameObject* create();

	~SequenceTriggerGameObject();

	TodoReturn deleteTarget(int);
	TodoReturn reorderTarget(int, bool);
	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = mac 0x1ab7b0;
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1abe10;
	TodoReturn updateSequenceTotalCount();
	TodoReturn addCount(int, int);
	TodoReturn addTarget(int, int);

	virtual bool init() = mac 0x1ab4a0;
	virtual TodoReturn resetObject() = mac 0x1ab4f0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1ac290;
}

[[link(android)]]
class TransformTriggerGameObject : EffectGameObject {
	static TransformTriggerGameObject* create(char const*);

	bool init(char const*);
	~TransformTriggerGameObject();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = mac 0x1bcdb0;
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1bcde0;

	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1bd1d0;
}

[[link(android)]]
class AdvancedFollowTriggerObject : EffectGameObject {
	static AdvancedFollowTriggerObject* create(char const*);

	bool init(char const*);
	~AdvancedFollowTriggerObject();

	TodoReturn getAdvancedFollowID();

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x196500;

	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x18fcc0;
}

[[link(android)]]
class EventLinkTrigger : EffectGameObject {
	static EventLinkTrigger* create();

	~EventLinkTrigger();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = mac 0x1b5220;
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1b5f20;

	virtual bool init() = mac 0x1b51d0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1b53d0;
}

[[link(android)]]
class EnterEffectObject : EffectGameObject {
	static EnterEffectObject* create(char const*);

	bool init(char const*);
	~EnterEffectObject();

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x185f00;
	TodoReturn resetEnterAnimValues();

	virtual TodoReturn customSetup() = mac 0x185bc0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x175e70;
}

[[link(android)]]
class GameOptionsTrigger : EffectGameObject {
	static GameOptionsTrigger* create(char const*);

	bool init(char const*);
	~GameOptionsTrigger();

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x199a50;

	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x198620;
}

[[link(android)]]
class EnhancedTriggerObject : EffectGameObject {
	static EnhancedTriggerObject* create(char const*);

	bool init(char const*);
	~EnhancedTriggerObject();

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1a5550;

	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1a4d20;
}

[[link(android)]]
class GradientTriggerObject : EffectGameObject {
	static GradientTriggerObject* create();

	~GradientTriggerObject();

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x18b290;

	virtual bool init() = mac 0x18a0a0;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x18a100;
}

[[link(android)]]
class KeyframeAnimTriggerObject : EffectGameObject {
	static KeyframeAnimTriggerObject* create();

	~KeyframeAnimTriggerObject();

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1a4a20;

	virtual bool init() = mac 0x1a3e10;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1a3e60;
}

[[link(android)]]
class DashRingObject : RingObject {
	static DashRingObject* create(char const*) = mac 0x19dbf0;

	bool init(char const*);
	~DashRingObject();

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x19dd40;

	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x19deb0;
}

[[link(android)]]
class LevelSettingsObject : cocos2d::CCNode {
	static LevelSettingsObject* create() = win 0x248A80, mac 0xd9700;

	~LevelSettingsObject();

	gd::string getSaveString();

	static LevelSettingsObject* objectFromDict(cocos2d::CCDictionary*);
	static LevelSettingsObject* objectFromString(gd::string const&);
	bool shouldUseYSection();
	void setupColorsFromLegacyMode(cocos2d::CCDictionary*);

	virtual bool init() = mac 0xf32f0;

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
	bool m_mirrorMode;
	// property kA29
	bool m_rotateGameplay;
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
	bool m_reverseGameplay;
	// property kA21
	bool m_disableStartPos;
	// property kA19
	int m_targetOrder;
	// property kA26
	int m_targetChannel;

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
	bool m_noTimePenalty;
	// property kA44
	int m_propertykA44;
	// property kA35
	bool m_resetCamera;
	// property kA36
	int m_spawnGroup;
	// property kA27
	bool m_allowMultiRotation;
	// property kA31
	bool m_enablePlayerSqueeze;
	// property kA32
	bool m_fixGravityBug;
	// property kA33
	bool m_fixNegativeScale;
	// property kA34
	bool m_fixRobotJump;
	// property kA37
	bool m_dynamicLevelHeight;
	// property kA38
	bool m_sortGroups;
	// property kA39
	bool m_fixRadiusCollision;
	// property kA40
	bool m_enable22Changes;
	// property kA41
	bool m_allowStaticRotate;
	// property kA42
	bool m_reverseSync;
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

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1a7d10;

	virtual void setPosition(cocos2d::CCPoint const&) = mac 0x1a5e40;
	virtual void setRotation(float) = mac 0x1a5ef0;
	virtual void setStartPos(cocos2d::CCPoint) = mac 0x1a5c90;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1a6040;
	virtual TodoReturn addToGroup(int) = mac 0x1a5f80;
	virtual TodoReturn removeFromGroup(int) = mac 0x1a5fe0;
	virtual void setRotation2(float) = mac 0x1a5f50;
	virtual TodoReturn addToGroup2(int) = mac 0x1a5f60;
	virtual TodoReturn removeFromGroup2(int) = mac 0x1a5f70;

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

	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x198350;

	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1977d0;
}


[[link(android)]]
class LevelEditorLayer : GJBaseGameLayer, LevelSettingsDelegate {
	static LevelEditorLayer* create(GJGameLevel*, bool);

    static LevelEditorLayer* get() {
        return GameManager::sharedState()->m_levelEditorLayer;
    }

	bool init(GJGameLevel*, bool) = win 0x2349d0, mac 0xd7300;
	~LevelEditorLayer();

	TodoReturn getGridPos(cocos2d::CCPoint);
	TodoReturn getSongIDs(bool&) = mac 0xe4010;
	TodoReturn getAllObjects() = mac 0xde200;
	TodoReturn getObjectRect(GameObject*, bool, bool);
	TodoReturn getLastObjectX() = mac 0xeacf0;
	TodoReturn getLevelString() = mac 0xdf4c0;
	TodoReturn getLockedLayers() = mac 0xe3d70;
	TodoReturn getSectionCount() = mac 0xe4e50;
	TodoReturn getTriggerGroup(int);
	TodoReturn getNextFreeSFXID(cocos2d::CCArray*);
	TodoReturn getNextFreeItemID(cocos2d::CCArray*);
	TodoReturn getRelativeOffset(GameObject*);
	TodoReturn getNextFreeBlockID(cocos2d::CCArray*);
	int getNextFreeGroupID(cocos2d::CCArray*);
	TodoReturn getDelayedSpawnNode();
	TodoReturn getNextColorChannel();
	TodoReturn getSelectedEffectPos();
	TodoReturn getNextFreeGradientID(cocos2d::CCArray*);
	TodoReturn getNextFreeSFXGroupID(cocos2d::CCArray*);
	TodoReturn getNextFreeEditorLayer(cocos2d::CCArray*);
	TodoReturn getSavedEditorPosition(int);
	TodoReturn getSelectedEditorOrder();
	TodoReturn getNextFreeAreaEffectID(cocos2d::CCArray*);
	TodoReturn getNextFreeEnterChannel(cocos2d::CCArray*);
	TodoReturn getNextFreeOrderChannel(cocos2d::CCArray*);
	TodoReturn getSavedEditorPositions() = mac 0xe4a30;
	TodoReturn getSelectedOrderChannel();
	TodoReturn getSFXIDs() = mac 0xe4540;

	void onPlaytest() = mac 0xee840;
	TodoReturn onStopPlaytest() = mac 0xef430;
	TodoReturn onPausePlaytest();
	TodoReturn onResumePlaytest();

	void addSpecial(GameObject*);
	TodoReturn toggleGrid(bool);
	TodoReturn validGroup(GameObject*, bool);
	TodoReturn objectMoved(GameObject*);
	TodoReturn shouldBlend(int);
	GameObject* createObject(int, cocos2d::CCPoint, bool) = win 0x236E70;
	void handleAction(bool, cocos2d::CCArray*) = mac 0xdebb0;
	TodoReturn removeObject(GameObject*, bool);
	TodoReturn stopPlayback();
	TodoReturn toggleGround(bool) = mac 0xdb060;
	TodoReturn updateEditor(float) = mac 0xd9800;
	void addToRedoList(UndoObject*);
	TodoReturn addTouchPoint(cocos2d::CCPoint) = win 0x24c0a0;
	void addToUndoList(UndoObject*, bool) = mac 0xdbdc0;
	TodoReturn canPasteState();
	// /* unverified signature */
	bool isLayerLocked(int) = mac 0xe4ec0;
	TodoReturn objectsInRect(cocos2d::CCRect, bool);
	void removeSpecial(GameObject*);
	TodoReturn resetPlayback();
	TodoReturn updateOptions() = mac 0xd8810;
	TodoReturn addPlayerPoint(cocos2d::CCPoint) = mac 0xf7560;
	TodoReturn findGameObject(int);
	TodoReturn recreateGroups();
	TodoReturn redoLastAction() = mac 0xdf480;
	TodoReturn refreshSpecial(GameObject*);
	TodoReturn runColorEffect(EffectGameObject*, int, float, float, bool);
	TodoReturn undoLastAction() = mac 0xdf4a0;
	TodoReturn addDelayedSpawn(EffectGameObject*, float);
	TodoReturn addPlayer2Point(cocos2d::CCPoint, bool);
	TodoReturn applyGroupState(GameObject*, GameObject*);
	TodoReturn copyObjectState(GameObject*);
	TodoReturn dirtifyTriggers();
	TodoReturn pasteColorState(GameObject*, cocos2d::CCArray*);
	TodoReturn pasteGroupState(GameObject*, cocos2d::CCArray*);
	TodoReturn unlockAllLayers() = mac 0xe4f00;
	TodoReturn updateDebugDraw();
	TodoReturn updateGridLayer();
	void updateLevelFont(int);
	TodoReturn addExclusionList(cocos2d::CCArray*, cocos2d::CCDictionary*);
	TodoReturn addObjectsInRect(cocos2d::CCRect, bool, cocos2d::CCArray*, cocos2d::CCArray*);
	TodoReturn addObjectToGroup(GameObject*, int);
	TodoReturn clearTouchPoints();
	TodoReturn objectAtPosition(cocos2d::CCPoint);
	TodoReturn removeAllObjects();
	TodoReturn toggleBackground(bool);
	TodoReturn updateEditorMode() = mac 0xdac80;
	TodoReturn clearPlayerPoints();
	TodoReturn copyParticleState(ParticleGameObject*);
	TodoReturn objectsAtPosition(cocos2d::CCPoint);
	TodoReturn resetObjectVector();
	TodoReturn spawnGroupPreview(int, float, float, float, float, float, bool, bool);
	TodoReturn timeObjectChanged();
	TodoReturn updateBlendValues();
	TodoReturn updateGameObjects() = mac 0xd9c00;
	TodoReturn updateObjectLabel(GameObject*);
	TodoReturn updatePreviewAnim() = mac 0xf0810;
	TodoReturn findStartPosObject();
	TodoReturn pasteParticleState(ParticleGameObject*, cocos2d::CCArray*);
	TodoReturn resetMovingObjects();
	TodoReturn resetToggledGroups();
	TodoReturn saveEditorPosition(cocos2d::CCPoint&, int);
	TodoReturn toggleGroupPreview(int, bool);
	TodoReturn updateObjectColors(cocos2d::CCArray*);
	TodoReturn addObjectFromVector(gd::vector<gd::string>&, gd::vector<void*>&);
	TodoReturn applyAttributeState(GameObject*, GameObject*);
	TodoReturn claimCustomParticle(gd::string const&, cocos2d::ParticleStruct const&, int, int, int, bool) = mac 0xf0900;
	TodoReturn pasteAttributeState(GameObject*, cocos2d::CCArray*);
	TodoReturn stopTriggersInGroup(int, float);
	TodoReturn updateToggledGroups();
	TodoReturn addObjectsAtPosition(cocos2d::CCPoint, cocos2d::CCArray*, cocos2d::CCArray*);
	TodoReturn breakApartTextObject(TextGameObject*);
	TodoReturn reverseObjectChanged(EffectGameObject*);
	TodoReturn triggerFollowCommand(EffectGameObject*);
	TodoReturn triggerRotateCommand(EffectGameObject*);
	TodoReturn tryUpdateSpeedObject(EffectGameObject*, bool);
	TodoReturn typeExistsAtPosition(int, cocos2d::CCPoint, bool, bool, float);
	TodoReturn activateTriggerEffect(EffectGameObject*, float, float, float, bool);
	TodoReturn sortBatchnodeChildren(float);
	TodoReturn toggleLockActiveLayer();
	TodoReturn transferDefaultColors(GJEffectManager*, GJEffectManager*);
	TodoReturn unclaimCustomParticle(gd::string const&, cocos2d::CCParticleSystemQuad*) = mac 0xf09c0;
	TodoReturn updateGridLayerParent();
	TodoReturn updateKeyframeObjects() = mac 0xe68f0;
	TodoReturn updatePreviewParticle(ParticleGameObject*) = mac 0x19b760;
	TodoReturn createObjectsFromSetup(gd::string&) = mac 0xd90b0;
	TodoReturn removeAllObjectsOfType(int);
	TodoReturn resetDelayedSpawnNodes();
	TodoReturn updatePreviewParticles() = mac 0xea7c0;
	TodoReturn addPlayerCollisionBlock();
	void createObjectsFromString(gd::string const&, bool, bool);
	TodoReturn quickUpdateAllPositions();
	TodoReturn resetEffectTriggerOptim(GameObject*, cocos2d::CCArray*);
	TodoReturn fastUpdateDisabledGroups();
	TodoReturn forceShowSelectedObjects(bool);
	TodoReturn fullUpdateDisabledGroups();
	TodoReturn processLoadedMoveActions();
	TodoReturn resetUnusedColorChannels() = mac 0xea560;
	TodoReturn updateKeyframeVisibility(bool);
	TodoReturn duplicateKeyframeAnimation(int);
	TodoReturn removePlayerCollisionBlock();
	TodoReturn rotationForSlopeNearObject(GameObject*);
	TodoReturn triggerPlayerFollowCommand(EffectGameObject*);
	TodoReturn resetToggledGroupsAndObjects();
	TodoReturn reverseKeyframeAnimationOrder(int);
	TodoReturn updateAnimateOnTriggerObjects(bool);
	static cocos2d::CCScene* scene(GJGameLevel*, bool) = mac 0xd71f0;
	TodoReturn hasAction(bool);
	TodoReturn updateArt(float);

	virtual void draw();
	virtual TodoReturn postUpdate(float) = win 0x242560, mac 0xefae0;
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

	bool m_drawTriggerBoxes;
	bool m_showGrid;
	bool m_hideGridOnPlay;
	bool m_drawEffectLines;
	bool m_showGround;
	bool m_showDurationLines;
	bool m_increaseMaxUndoRedo;
	bool m_hideBackground;
	bool m_gv0120;
	bool m_layerLockingEnabled;
	bool m_unkBool4;
	bool m_previewParticles;
	bool m_previewAnimations;
	bool m_previewShaders;
	bool m_hideParticleIcons;
	bool m_unkBool5;
	bool m_playTestSmoothFix;

	// haven't verified the mac padding
	PAD = win 0xf, android32 0xf, android64 0xf, mac 0xf;

	cocos2d::CCArray* m_unkArr0;
	cocos2d::CCArray* m_unkArr1;
	cocos2d::CCArray* m_unkArr2;
	cocos2d::CCArray* m_unkArr3;
	cocos2d::CCArray* m_unkArr4;
	cocos2d::CCArray* m_unkArr8;
	cocos2d::CCArray* m_unkArr11;
	cocos2d::CCArray* m_unkArr12;
	cocos2d::CCArray* m_unkArr13;
	cocos2d::CCDictionary* m_unkDict3;
	cocos2d::CCArray* m_unkArr5;

	// haven't verified the mac padding
	PAD = win 0x8, android32 0x8, android64 0x10, mac 0x10;

	cocos2d::CCDictionary* m_unkDict4;
	cocos2d::CCArray* m_unkArr7;
	bool m_unkBool3;
	bool m_unkBool2;
	geode::SeedValueRSV m_coinCount;

	// haven't verified the mac padding
	PAD = win 0x8, android32 0x8, android64 0x8, mac 0x8;

	cocos2d::CCArray* m_unkArr6;

	// haven't verified the mac padding
	PAD = win 0x4, android32 0x4, android64 0x8, mac 0x8;

	cocos2d::CCDictionary* m_unkDict1;
	cocos2d::CCDictionary* m_unkDict2;
	bool m_unkBool0;
	bool m_unkBool1;
    short m_currentLayer;

	// haven't verified the mac padding
	PAD = win 0x18, android32 0x18, android64 0x24, mac 0x24;

	EditorUI* m_editorUI;
	cocos2d::CCArray* m_undoObjects;
	cocos2d::CCArray* m_redoObjects;
	geode::SeedValueRSV m_objectCount;
	DrawGridLayer* m_drawGridLayer;
	bool m_unkBool;
	bool m_previewMode;
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

	bool init(LevelEditorLayer*) = mac 0xcc50, win 0xa36f0;
	~EditorUI();

	TodoReturn getModeBtn(char const*, int);
	TodoReturn getNeighbor(int, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*);
	TodoReturn getCreateBtn(int, int);
	TodoReturn getGroupInfo(GameObject*, cocos2d::CCArray*, int&, int&, int&);
	TodoReturn getSnapAngle(GameObject*, cocos2d::CCArray*);
	TodoReturn getTouchPoint(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn getGroupCenter(cocos2d::CCArray*, bool) = mac 0x3f570;
	TodoReturn getCycledObject(cocos2d::CCArray*, bool);
	TodoReturn getSimpleButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn getSpriteButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn getSmartNeighbor(SmartGameObject*, cocos2d::CCPoint, GJSmartDirection, cocos2d::CCArray*);
	TodoReturn getGridSnappedPos(cocos2d::CCPoint);
	TodoReturn getRandomStartKey(int);
	TodoReturn getRelativeOffset(GameObject*);
	TodoReturn getSmartObjectKey(int, GJSmartDirection);
	TodoReturn getTransformState();
	TodoReturn getLimitedPosition(cocos2d::CCPoint);
	TodoReturn getSelectedObjects() = mac 0x406e0;
	TodoReturn getEditColorTargets(ColorAction*&, ColorAction*&, EffectGameObject*&) = mac 0x4cf40;
	TodoReturn getCreateMenuItemButton(cocos2d::CCSprite*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, int, cocos2d::CCPoint);
	TodoReturn getXMin(int) = win 0xd7470, mac 0x329d0;
	TodoReturn getButton(char const*, int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*);

	void onPlayback(cocos2d::CCObject* sender) = win 0xc9130, mac 0xff20;
	void onPlaytest(cocos2d::CCObject* sender) = mac 0x10160, win 0xc9480;
	void onSettings(cocos2d::CCObject* sender) = win 0xa5570;
	void onCopyState(cocos2d::CCObject* sender) = win 0xcb0c0;
	void onDeleteAll(cocos2d::CCObject* sender);
	void onDuplicate(cocos2d::CCObject* sender) = mac 0x2e8d0;
	void onEditColor(cocos2d::CCObject* sender) = win 0xd3370;
	void onGoToLayer(cocos2d::CCObject* sender) = win 0xcb200;
	void onGroupDown(cocos2d::CCObject* sender);
	void onLockLayer(cocos2d::CCObject* sender);
	void onDeleteInfo(cocos2d::CCObject* sender);
	void onFindObject(cocos2d::CCObject* sender);
	void onPasteColor(cocos2d::CCObject* sender);
	void onPasteState(cocos2d::CCObject* sender);
	void onColorFilter(cocos2d::CCObject* sender);
	void onDeselectAll(cocos2d::CCObject* sender);
	void onGroupSticky(cocos2d::CCObject* sender) = mac 0x10540;
	void onToggleGuide(EffectGameObject*);
	void onCreateButton(cocos2d::CCObject* sender);
	TodoReturn onCreateObject(int);
	void onPasteInPlace(cocos2d::CCObject* sender);
	void onStopPlaytest(cocos2d::CCObject* sender) = win 0xc95f0, mac 0x103a0;
	void onGoToBaseLayer(cocos2d::CCObject* sender);
	void onGroupIDFilter(cocos2d::CCObject* sender);
	void onNewCustomItem(cocos2d::CCObject* sender) = win 0xa7650;
	void onUngroupSticky(cocos2d::CCObject* sender) = mac 0x10590;
	void onDeleteSelected(cocos2d::CCObject* sender) = mac 0xfd90;
	void onDeleteStartPos(cocos2d::CCObject* sender);
	void onSelectBuildTab(cocos2d::CCObject* sender);
	TodoReturn onTargetIDChange(int);
	TodoReturn onAssignNewGroupID();
	void onDeleteCustomItem(cocos2d::CCObject* sender);
	void onDeleteSelectedType(cocos2d::CCObject* sender);
	void onResetSpecialFilter(cocos2d::CCObject* sender);
	void onUpdateDeleteFilter(cocos2d::CCObject* sender);
	TodoReturn onToggleSelectedOrder(EffectGameObject*);
	void onCopy(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onPause(cocos2d::CCObject* sender) = win 0xa55c0, mac 0x2e360;
	bool onCreate();
	void onDelete(cocos2d::CCObject* sender);
	void onGroupUp(cocos2d::CCObject* sender);

	TodoReturn createGlow();
	TodoReturn createLoop() = mac 0x48bf0;
	TodoReturn editObject(cocos2d::CCObject*);
	void moveObject(GameObject*, cocos2d::CCPoint);
	TodoReturn shouldSnap(GameObject*);
	TodoReturn toggleMode(cocos2d::CCObject*);
	void toggleSnap(cocos2d::CCObject*) = mac 0xfb20;
	TodoReturn updateZoom(float) = win 0xc97c0, mac 0x41400;
	TodoReturn applyOffset(GameObject*);
	TodoReturn copyObjects(cocos2d::CCArray*, bool, bool);
	void deselectAll() = win 0xc8a10;
	TodoReturn editObject2(cocos2d::CCObject*);
	TodoReturn editObject3(cocos2d::CCObject*);
	void toggleSwipe(cocos2d::CCObject*) = mac 0xf9c0;
	TodoReturn alignObjects(cocos2d::CCArray*, bool) = mac 0x50c70;
	TodoReturn createExtras(cocos2d::CCArray*);
	GameObject* createObject(int, cocos2d::CCPoint);
	TodoReturn createPrefab(GJSmartTemplate*, gd::string, int);
	TodoReturn deleteObject(GameObject*, bool);
	TodoReturn enableButton(CreateMenuItem*);
	TodoReturn flipObjectsX(cocos2d::CCArray*);
	TodoReturn flipObjectsY(cocos2d::CCArray*);
	TodoReturn offsetForKey(int);
	void pasteObjects(gd::string, bool) = win 0xca640;
	TodoReturn removeOffset(GameObject*);
	void scaleObjects(cocos2d::CCArray*, float, float, cocos2d::CCPoint, ObjectScaleType) = win 0xd5910;
	void selectObject(GameObject*, bool);
	TodoReturn showMaxError();
	TodoReturn toggleLockUI(bool) = mac 0x30d20;
	TodoReturn updateSlider();
	TodoReturn disableButton(CreateMenuItem*);
	TodoReturn doCopyObjects(bool) = mac 0x419e0;
	TodoReturn edgeForObject(int, int);
	TodoReturn moveGamelayer(cocos2d::CCPoint);
	void rotateObjects(cocos2d::CCArray*, float, cocos2d::CCPoint);
	void selectObjects(cocos2d::CCArray*, bool);
	TodoReturn setupEditMenu();
	void sliderChanged(cocos2d::CCObject*) = mac 0xf360;
	void updateButtons() = mac 0x303f0;
	TodoReturn valueFromXPos(float) = win 0xa62b0;
	TodoReturn xPosFromValue(float);
	TodoReturn zoomGameLayer(bool);
	TodoReturn createMoveMenu();
	TodoReturn createOutlines(cocos2d::CCArray*);
	TodoReturn deselectObject(GameObject*) = mac 0x58f330;
	TodoReturn deselectObject() = mac 0x36850;
	TodoReturn doPasteInPlace(bool);
	TodoReturn doPasteObjects(bool) = mac 0x41b00;
	TodoReturn findSnapObject(cocos2d::CCPoint, float);
	TodoReturn findSnapObject(cocos2d::CCArray*, float);
	TodoReturn moveForCommand(EditCommand);
	TodoReturn moveObjectCall(EditCommand);
	TodoReturn moveObjectCall(cocos2d::CCObject*);
	TodoReturn playCircleAnim(cocos2d::CCPoint, float, float);
	TodoReturn redoLastAction(cocos2d::CCObject*) = mac 0xfd30;
	TodoReturn replaceGroupID(GameObject*, int, int);
	TodoReturn selectBuildTab(int);
	void toggleFreeMove(cocos2d::CCObject*) = mac 0xfab0;
	void undoLastAction(cocos2d::CCObject*) = mac 0xfcd0;
	TodoReturn updateEditMenu();
	TodoReturn addSnapPosition(cocos2d::CCPoint);
	TodoReturn assignNewGroups(bool) = mac 0x487f0;
	TodoReturn canSelectObject(GameObject*);
	TodoReturn clickOnPosition(cocos2d::CCPoint);
	TodoReturn createRockBases(cocos2d::CCArray*) = mac 0x5d8d90;
	TodoReturn createRockEdges(cocos2d::CCArray*);
	TodoReturn findTriggerTest();
	TodoReturn playtestStopped() = win 0xc9630, mac 0x41330;
	void setupCreateMenu();
	void setupDeleteMenu() = mac 0x105e0;
	TodoReturn smartTypeForKey(int);
	TodoReturn transformObject(GameObject*, EditCommand, bool);
	TodoReturn convertToBaseKey(int);
	TodoReturn createUndoObject(UndoCommand, bool);
	TodoReturn editButtonUsable() = mac 0x4b3b0;
	TodoReturn playerTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn playerTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	TodoReturn showMaxCoinError();
	TodoReturn transformObjects(cocos2d::CCArray*, cocos2d::CCPoint, float, float, float, float, float, float);
	TodoReturn triggerSwipeMode();
	TodoReturn updateCreateMenu(bool);
	TodoReturn updateDeleteMenu();
	TodoReturn colorSelectClosed(cocos2d::_ccColor3B);
	cocos2d::CCArray* createCustomItems();
	TodoReturn createExtraObject(int, cocos2d::CCPoint, GameObject*, cocos2d::CCArray*, int, int);
	TodoReturn editButton2Usable() = mac 0x4c120;
	TodoReturn editObjectSpecial(int);
	TodoReturn orderUpCustomItem(cocos2d::CCObject*);
	TodoReturn reloadCustomItems();
	TodoReturn showMaxBasicError();
	TodoReturn updateGroupIDBtn2();
	TodoReturn updatePlaybackBtn() = win 0xc9370, mac 0x30c10;
	TodoReturn applySpecialOffset(cocos2d::CCPoint, GameObject*, cocos2d::CCPoint);
	TodoReturn arrayContainsClass(cocos2d::CCArray*, int);
	TodoReturn closeLiveHSVSelect();
	TodoReturn dynamicGroupUpdate(bool) = mac 0x47c90;
	TodoReturn recreateButtonTabs() = mac 0x355b0;
	TodoReturn rotationforCommand(EditCommand);
	TodoReturn shouldDeleteObject(GameObject*) = mac 0x36140;
	void toggleEnableRotate(cocos2d::CCObject*) = mac 0xfba0;
	TodoReturn updateGridNodeSize(int);
	TodoReturn updateGridNodeSize();
	TodoReturn updateGroupIDLabel() = mac 0x302f0;
	TodoReturn copyObjectsDetailed(cocos2d::CCArray*);
	TodoReturn createEdgeForObject(GameObject*, int);
	TodoReturn editorLayerForArray(cocos2d::CCArray*, bool);
	TodoReturn findAndSelectObject(int, bool);
	// /* unverified signature */
	bool isSpecialSnapObject(int);
	TodoReturn liveEditColorUsable();
	TodoReturn orderDownCustomItem(cocos2d::CCObject*);
	TodoReturn positionIsInSnapped(cocos2d::CCPoint);
	TodoReturn selectObjectsInRect(cocos2d::CCRect);
	TodoReturn transformObjectCall(EditCommand);
	TodoReturn transformObjectCall(cocos2d::CCObject*);
	TodoReturn updateDeleteButtons();
	TodoReturn activateScaleControl(cocos2d::CCObject*);
	TodoReturn centerCameraOnObject(GameObject*);
	TodoReturn checkLiveColorSelect();
	TodoReturn closeLiveColorSelect();
	TodoReturn deselectObjectsColor();
	TodoReturn processSelectObjects(cocos2d::CCArray*);
	TodoReturn toggleStickyControls(bool);
	void tryUpdateTimeMarkers();
	TodoReturn canAllowMultiActivate(GameObject*, cocos2d::CCArray*);
	TodoReturn changeSelectedObjects(cocos2d::CCArray*, bool);
	TodoReturn createExtrasForObject(int, GameObject*, cocos2d::CCArray*);
	TodoReturn createNewKeyframeAnim();
	TodoReturn deleteTypeFromObjects(int, cocos2d::CCArray*);
	TodoReturn deselectTargetPortals() = mac 0x36210;
	TodoReturn editColorButtonUsable();
	TodoReturn positionWithoutOffset(GameObject*);
	TodoReturn setupTransformControl();
	TodoReturn toggleDuplicateButton();
	TodoReturn toggleObjectInfoLabel() = mac 0x30b50;
	TodoReturn transformObjectsReset();
	TodoReturn updateEditButtonColor(int, cocos2d::_ccColor3B);
	TodoReturn updateEditColorButton() = mac 0x4c630;
	TodoReturn updateObjectInfoLabel() = mac 0x32dd0;
	TodoReturn createUndoSelectObject(bool);
	TodoReturn deactivateScaleControl();
	TodoReturn selectAllWithDirection(bool) = mac 0x40d10;
	TodoReturn showDeleteConfirmation();
	cocos2d::CCPoint* spriteFromObjectString(gd::string, bool, bool, int, cocos2d::CCArray*, cocos2d::CCArray*, GameObject*) = mac 0x37820;
	TodoReturn toggleEditObjectButton();
	TodoReturn transformObjectsActive();
	TodoReturn activateRotationControl(cocos2d::CCObject*) = mac 0x41020;
	TodoReturn resetObjectEditorValues(cocos2d::CCArray*);
	TodoReturn updateSpecialUIElements();
	TodoReturn activateTransformControl(cocos2d::CCObject*);
	// /* unverified signature */
	bool isLiveColorSelectTrigger(GameObject*);
	TodoReturn menuItemFromObjectString(gd::string, int);
	TodoReturn toggleSpecialEditButtons() = mac 0x30f70;
	TodoReturn addObjectsToSmartTemplate(GJSmartTemplate*, cocos2d::CCArray*);
	TodoReturn deactivateRotationControl();
	TodoReturn repositionObjectsToCenter(cocos2d::CCArray*, cocos2d::CCPoint, bool);
	TodoReturn resetSelectedObjectsColor();
	void constrainGameLayerPosition(float x, float y) = win 0xd7250, mac 0x2e5c0;
	// Inlined on Windows and Mac
	void constrainGameLayerPosition() {
		this->constrainGameLayerPosition(-100, -100);
	}
	TodoReturn convertKeyBasedOnNeighbors(int, int, cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn createSmartObjectsFromType(int, cocos2d::CCArray*, bool, bool);
	TodoReturn deactivateTransformControl() = mac 0x42300;
	TodoReturn showLiveColorSelectForMode(int);
	TodoReturn processSmartObjectsFromType(int, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*, cocos2d::CCArray*);
	TodoReturn deleteSmartBlocksFromObjects(cocos2d::CCArray*);
	TodoReturn checkDiffAfterTransformAnchor(cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn createSmartObjectsFromTemplate(GJSmartTemplate*, cocos2d::CCArray*, bool, bool, bool, bool);
	TodoReturn showLiveColorSelectForModeSpecial(int);
	TodoReturn showUI(bool) = mac 0x411b0;
	TodoReturn zoomIn(cocos2d::CCObject*) = mac 0x104a0;
	TodoReturn editHSV();
	TodoReturn resetUI();
	TodoReturn zoomOut(cocos2d::CCObject*) = mac 0x104f0;
	TodoReturn editColor();
	TodoReturn editGroup(cocos2d::CCObject*);
	TodoReturn selectAll() = mac 0x40a00;

	virtual void draw() = mac 0x515f0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x520b0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x526d0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x52c90;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x535c0;
	virtual void registerWithTouchDispatcher() = mac 0x53600;
	virtual void keyBackClicked() = mac 0x422d0;
	virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x53640;
	virtual TodoReturn getUI() = mac 0x57430;
	virtual void setIDPopupClosed(SetIDPopup*, int) = mac 0x36bd0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x36a40;
	virtual TodoReturn updateTransformControl() = mac 0x43bf0;
	virtual TodoReturn transformChangeBegin() = mac 0x445a0;
	virtual TodoReturn transformChangeEnded() = mac 0x44680;
	virtual TodoReturn getTransformNode() = mac 0x57440;
	virtual TodoReturn transformScaleXChanged(float) = mac 0x4fe20;
	virtual TodoReturn transformScaleYChanged(float) = mac 0x50030;
	virtual TodoReturn transformScaleXYChanged(float, float) = mac 0x50190;
	virtual TodoReturn transformSkewXChanged(float) = mac 0x50300;
	virtual TodoReturn transformSkewYChanged(float) = mac 0x50460;
	virtual TodoReturn transformRotationXChanged(float) = mac 0x505c0;
	virtual TodoReturn transformRotationYChanged(float) = mac 0x50720;
	virtual TodoReturn transformRotationChanged(float) = mac 0x50880;
	virtual TodoReturn transformResetRotation() = mac 0x509f0;
	virtual TodoReturn transformRestoreRotation() = mac 0x50ae0;
	virtual TodoReturn songStateChanged() = mac 0x41300;
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*) = mac 0x4d3d0;
	virtual void keyUp(cocos2d::enumKeyCodes) = mac 0x54720;
	virtual void scrollWheel(float, float) = win 0xda6b0, mac 0x547c0;
	virtual TodoReturn angleChangeBegin() = mac 0x516d0;
	virtual TodoReturn angleChangeEnded() = mac 0x51710;
	virtual TodoReturn angleChanged(float) = mac 0x51730;
	virtual TodoReturn updateScaleControl() = mac 0x42700;
	virtual TodoReturn anchorPointMoved(cocos2d::CCPoint) = mac 0x446a0;
	virtual TodoReturn scaleChangeBegin() = mac 0x42dd0;
	virtual TodoReturn scaleChangeEnded() = mac 0x42e10;
	virtual TodoReturn scaleXChanged(float) = mac 0x42e30;
	virtual TodoReturn scaleYChanged(float) = mac 0x43550;
	virtual void scaleXYChanged(float, float) = win 0xcb9b0, mac 0x43680;

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
	static CCCircleWave* create(float, float, float, bool, bool) = win 0x23220, mac 0x1693f0;

	bool init(float, float, float, bool, bool) = win 0x232F0, mac 0x1694d0;
	~CCCircleWave();

	TodoReturn followObject(cocos2d::CCNode*, bool) = win 0x23540;
	TodoReturn updatePosition(float) = mac 0x169760;
	TodoReturn baseSetup(float);

	virtual void setPosition(cocos2d::CCPoint const&) = mac 0x169730;
	virtual void removeMeAndCleanup() = mac 0x169c00;
	virtual void draw() = mac 0x169ac0;
	virtual void updateTweenAction(float, char const*) = mac 0x169830;
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

	virtual void update(float) = mac 0x76a390;
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
	static PlayLayer* create(GJGameLevel*, bool, bool) = win 0x2D68F0, mac 0xa5d30;

	static PlayLayer* get() {
		return GameManager::get()->m_playLayer;
	}

	bool init(GJGameLevel*, bool, bool) = mac 0xa5db0, win 0x2d69a0;
	~PlayLayer() = win 0x2D6580, mac 0xa5920;

	TodoReturn getEndPosition();
	TodoReturn getRelativeMod(cocos2d::CCPoint, float, float, float);
	TodoReturn getTempMilliTime();
	float getCurrentPercent() = mac 0xb3970;
	TodoReturn getLastCheckpoint() = win 0x2e3000;
	TodoReturn getRelativeModNew(cocos2d::CCPoint, float, float, bool, bool);
	int getCurrentPercentInt() = win 0x2e09e0;

	void onQuit() = win 0x2e5650, mac 0xad390;

	TodoReturn playReplay(gd::string);
	void resetLevel() = win 0x2E42B0, mac 0xac8d0;
	TodoReturn startMusic() = win 0x2E5570;
	TodoReturn colorObject(int, cocos2d::_ccColor3B);
	TodoReturn commitJumps();
	TodoReturn shouldBlend(int);
	void showNewBest(bool, int, int, bool, bool, bool) = win 0x2D9100, mac 0xaf2e0;
	TodoReturn spawnCircle();
	TodoReturn canPauseGame();
	TodoReturn prepareMusic(bool) = win 0x2E5480;
	TodoReturn showEndLayer();
	TodoReturn addToGroupOld(GameObject*);
	void levelComplete() = win 0x2d7f30, mac 0xad6d0;
	TodoReturn spawnFirework();
	TodoReturn stopRecording();
	TodoReturn incrementJumps() = win 0x2e4e50, mac 0xb8700;
	TodoReturn markCheckpoint() = win 0x2e2880, mac 0xb53a0;
	TodoReturn showRetryLayer();
	TodoReturn startRecording();
	TodoReturn tryStartRecord();
	TodoReturn updateAttempts() = win 0x2E4CC0;
	TodoReturn updateTimeWarp(EffectGameObject*, float);
	TodoReturn queueCheckpoint();
	TodoReturn storeCheckpoint(CheckpointObject*) = win 0x2e27d0;
	TodoReturn updateInfoLabel() = win 0x2dfe30, mac 0xa96e0;
	TodoReturn applyEnterEffect(GameObject*, int, bool);
	TodoReturn checkpointWithID(int);
	CheckpointObject* createCheckpoint() = win 0x2e1a20;
	TodoReturn delayedFullReset();
	// /* unverified signature */
	bool isGameplayActive();
	TodoReturn removeAllObjects() = win 0x2E5750;
	TodoReturn removeCheckpoint(bool);
	TodoReturn resumeAndRestart(bool) = win 0x2E5160, mac 0xb88d0;
	void showCompleteText() = win 0x2d8770;
	TodoReturn startGameDelayed() = win 0x2D7EC0;
	TodoReturn delayedResetLevel() = win 0x2E4200, mac 0xb4c20;
	void loadDefaultColors() = win 0x2df1e0;
	TodoReturn setupHasCompleted() = win 0x2d71b0, mac 0xa7210;
	TodoReturn takeStateSnapshot();
	TodoReturn toggleGhostEffect(int) = win 0x2D20D0;
	void updateProgressbar() = win 0x2df7a0, mac 0xab590;
	void loadFromCheckpoint(CheckpointObject*) = win 0x2e28d0;
	CheckpointObject* loadLastCheckpoint();
	TodoReturn removeFromGroupOld(GameObject*);
	TodoReturn showCompleteEffect() = mac 0xae230;
	TodoReturn showTwoPlayerGuide();
	void togglePracticeMode(bool) = mac 0xb81f0, win 0x2e4eb0;
	TodoReturn optimizeColorGroups() = win 0x2DC8B0, mac 0xa7f40;
	TodoReturn resetLevelFromStart() = win 0x2E4210, mac 0xb8330;
	TodoReturn compareStateSnapshot();
	TodoReturn updateScreenRotation(int, bool, bool, float, int, float, int, int);
	TodoReturn gravityEffectFinished();
	TodoReturn loadActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&);
	TodoReturn optimizeOpacityGroups() = win 0x2DCB10, mac 0xa8130;
	void playEndAnimationToPos(cocos2d::CCPoint) = win 0x2da140, mac 0xaffb0;
	TodoReturn saveActiveSaveObjects(gd::vector<SavedActiveObjectState>&, gd::vector<SavedSpecialObjectState>&) = win 0x2e3d60;
	TodoReturn scanActiveSaveObjects() = mac 0xa91b0;
	TodoReturn startRecordingDelayed();
	TodoReturn updateEffectPositions() = win 0x2e1470, mac 0xb4d20;
	TodoReturn applyCustomEnterEffect(GameObject*, bool);
	TodoReturn loadDynamicSaveObjects(gd::vector<SavedObjectStateRef>&);
	TodoReturn saveDynamicSaveObjects(gd::vector<SavedObjectStateRef>&) = win 0x2e38c0;
	TodoReturn scanDynamicSaveObjects() = mac 0xa8320;
	TodoReturn processLoadedMoveActions();
	TodoReturn toggleBGEffectVisibility(bool);
	void prepareCreateObjectsFromSetup(gd::string&) = win 0x2dafd0;
	void processCreateObjectsFromSetup() = win 0x2db250, mac 0xa69f0;
	TodoReturn createObjectsFromSetupFinished() = win 0x2dbab0, mac 0xb0a50;
	TodoReturn playPlatformerEndAnimationToPos(cocos2d::CCPoint, bool) = win 0x2da920;
	TodoReturn scene(GJGameLevel*, bool, bool) = win 0x2D68A0, mac 0xa5c80;
	TodoReturn resume() = mac 0xb8a50;
	TodoReturn showHint() = win 0x2e12d0, mac 0xb4ab0;
	void addCircle(CCCircleWave* cw) = mac 0xb4cc0;
	TodoReturn addObject(GameObject*) = win 0x2DBD30;
	void fullReset() = win 0x2E40C0, mac 0xb8080;
	TodoReturn pauseGame(bool) = win 0x2e4fc0, mac 0xb8790;
	void startGame() = win 0x2d7e80;

	virtual void onEnterTransitionDidFinish() = win 0x2e58e0;
	virtual void onExit() = win 0x2e5910;
	virtual void postUpdate(float) = win 0x2E1560, mac 0xb4df0;
	virtual TodoReturn checkForEnd() = win 0x2e1810;
	virtual TodoReturn testTime();
	virtual TodoReturn updateVerifyDamage() = win 0x2e18f0;
	virtual TodoReturn updateAttemptTime(float) = win 0x2e1970;
	virtual TodoReturn updateVisibility(float) = win 0x2dcf70, mac 0xb10e0;
	virtual TodoReturn opacityForObject(GameObject*) = win 0x2ddc80;
	virtual TodoReturn updateColor(cocos2d::_ccColor3B&, float, int, bool, float, cocos2d::_ccHSVValue&, int, bool, EffectGameObject*, int, int) = win 0x2df440;
	virtual TodoReturn activateEndTrigger(int, bool, bool);
	virtual void activatePlatformerEndTrigger(EndTriggerGameObject*, gd::vector<int> const&) = win 0x2da810;
	virtual TodoReturn toggleGlitter(bool) = win 0x2e0990;
	virtual void destroyPlayer(PlayerObject*, GameObject*) = mac 0xb40f0, win 0x2e0a90;
	virtual TodoReturn toggleGroundVisibility(bool) = win 0x2e0840, mac 0xb3f40;
	virtual TodoReturn toggleMGVisibility(bool) = win 0x2e08c0;
	virtual TodoReturn toggleHideAttempts(bool) = win 0x2e0910;
	virtual TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, int) = win 0x2e0740;
	virtual TodoReturn posForTime(float) = win 0x2e07b0;
	virtual TodoReturn resetSPTriggered() = win 0x2e0800;
	virtual TodoReturn updateTimeWarp(float) = win 0x1b5590;
	virtual TodoReturn playGravityEffect(bool);
	virtual TodoReturn manualUpdateObjectColors(GameObject*) = win 0x2ddca0;
	virtual TodoReturn checkpointActivated(CheckpointGameObject*) = win 0x2e1a00;
	virtual TodoReturn flipArt(bool);
	virtual void updateTimeLabel(int, int, bool) = mac 0xb39e0;
	virtual TodoReturn checkSnapshot();
	virtual void toggleProgressbar() = mac 0xb3bb0;
	virtual TodoReturn toggleInfoLabel();
	virtual TodoReturn removeAllCheckpoints();
	virtual TodoReturn toggleMusicInPractice();
	virtual TodoReturn currencyWillExit(CurrencyRewardLayer*);
	virtual TodoReturn circleWaveWillBeRemoved(CCCircleWave*);
	virtual void dialogClosed(DialogLayer*) = win 0x2e12b0;

	// those are all wrong except for mac
	PAD = win 0x1ec, android32 0x1ec, android64 0x2c4, mac 0xfc;
	cocos2d::CCArray* m_circleWaveArray;
	PAD = mac 0x2c;
	cocos2d::CCSprite* m_progressBar;
	PAD = mac 0x178;
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
	static PlayerObject* create(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool) = win 0x2BCFD0, mac 0x3dbca0;

	bool init(int, int, GJBaseGameLayer*, cocos2d::CCLayer*, bool) = win 0x2BD080, mac 0x3dbd30;
	~PlayerObject();

	TodoReturn getYVelocity();
	TodoReturn getActiveMode();
	TodoReturn getOldPosition(float);
	TodoReturn getSecondColor();
	TodoReturn getCurrentXVelocity();
	float getModifiedSlopeYVel() = win 0x2c4560;

	/* unverified signature */
	void setYVelocity(double, int) = win 0x2BEC70;
	/* unverified signature */
	void setSecondColor(cocos2d::_ccColor3B const&) = win 0x2d0c30, mac 0x3df590;

	TodoReturn bumpPlayer(float, int, bool, GameObject*) = win 0x2d2600;
	TodoReturn buttonDown(PlayerButton);
	TodoReturn didHitHead();
	// /* unverified signature */
	bool isSafeFlip(float);
	// /* unverified signature */
	bool isSafeMode(float);
	TodoReturn lockPlayer() = win 0x2d2290;
	void pushButton(PlayerButton) = win 0x2cc4d0, mac 0x3f4bf0;
	TodoReturn pushPlayer(float);
	TodoReturn reverseMod();
	TodoReturn updateJump(float) = win 0x2c1290, mac 0x3df600;
	TodoReturn updateMove(float) = win 0x2BFC30;
	TodoReturn yStartDown();
	void boostPlayer(float) = win 0x2d2d30;
	TodoReturn createRobot(int) = mac 0x3dd580;
	TodoReturn flashPlayer(float, float, cocos2d::_ccColor3B, cocos2d::_ccColor3B);
	TodoReturn flipGravity(bool, bool) = win 0x2CDDB0, mac 0x3e4a80;
	TodoReturn gravityDown();
	TodoReturn resetStreak() = mac 0x3e4520;
	TodoReturn setupStreak() = mac 0x3ddd10;
	TodoReturn spawnCircle();
	void stopDashing() = win 0x2CB080, mac 0x3e2cd0;
	TodoReturn stopStreak2();
	TodoReturn createSpider(int) = mac 0x3dd8b0;
	/* unverified signature */
	bool isBoostValid(float) = win 0x2c4500;
	void preCollision() = win 0x2c2c10;
	TodoReturn redirectDash(float) = win 0x2CA320;
	TodoReturn spawnCircle2();
	void startDashing(DashRingObject*) = mac 0x3f2380;
	TodoReturn stopRotation(bool, int);
	// /* unverified signature */
	bool isInBasicMode();
	TodoReturn levelFlipping() = win 0x2CEF50;
	TodoReturn levelWillFlip();
	TodoReturn modeDidChange();
	void postCollision(float) = win 0x2C2D50;
	TodoReturn propellPlayer(float, bool, int) = win 0x2d2700;
	void releaseButton(PlayerButton) = win 0x2cc710, mac 0x3f5e10;
	TodoReturn reversePlayer(EffectGameObject*) = win 0x2CC810;
	TodoReturn stopParticles();
	TodoReturn switchedDirTo(PlayerButton) = win 0x2cc3e0;
	TodoReturn testForMoving(float, GameObject*);
	TodoReturn toggleFlyMode(bool, bool) = win 0x2CE170, mac 0x3f6d20;
	TodoReturn touchedObject(GameObject*);
	TodoReturn updateCollide(PlayerCollisionDirection, GameObject*) = win 0x2C8CC0;
	TodoReturn updateDashArt() = win 0x2cac70, mac 0x3f1e10;
	TodoReturn updateEffects(float) = mac 0x3e3f00;
	TodoReturn updateSpecial(float);
	TodoReturn updateStreaks(float);
	TodoReturn updateTimeMod(float, bool) = win 0x2D3B00, mac 0x3ddb80;
	TodoReturn activateStreak() = win 0x2d2ed0, mac 0x3e4610;
	void addToYVelocity(double, int) = win 0x2bece0;
	TodoReturn copyAttributes(PlayerObject*);
	TodoReturn fadeOutStreak2(float) = win 0x2D2FD0;
	TodoReturn incrementJumps() = win 0x2c2250, mac 0x3e4a40;
	/* unverified signature */
	bool isInNormalMode() = win 0x2cfe00;
	/* unverified signature */
	bool isSafeHeadTest();
	TodoReturn playBumpEffect(int, GameObject*) = win 0x2d28d0;
	TodoReturn rotateGameplay(int, int, bool, float, float, bool, bool) = win 0x2CDA10;
	TodoReturn spiderTestJump(bool);
	TodoReturn storeCollision(PlayerCollisionDirection, int) = win 0x2C2B70;
	TodoReturn switchedToMode(GameObjectType) = win 0x2CF6A0;
	TodoReturn toggleBirdMode(bool, bool) = win 0x2CE400, mac 0x3f7800;
	TodoReturn toggleDartMode(bool, bool) = win 0x2CE9C0, mac 0x3f88a0;
	TodoReturn toggleRollMode(bool, bool) = win 0x2CEF90, mac 0x3f8f60;
	TodoReturn updateRotation(float) = win 0x2C64E0;
	TodoReturn updateRotation(float, float);
	TodoReturn addAllParticles() = win 0x2be6d0;
	TodoReturn doReversePlayer(bool) = win 0x2CC8F0;
	TodoReturn hardFlipGravity();
	TodoReturn hitGroundNoJump(GameObject*, bool) = win 0x2CF730;
	TodoReturn playBurstEffect();
	TodoReturn playDeathEffect() = mac 0x1ead80;
	TodoReturn playerDestroyed(bool) = win 0x2CC2D0, mac 0x3f4690;
	TodoReturn playerIsFalling(float);
	TodoReturn playSpawnEffect();
	TodoReturn resetPlayerIcon() = win 0x2cec80, mac 0x3f75e0;
	TodoReturn runBallRotation(float) = win 0x2C2890;
	TodoReturn runRotateAction(bool, int) = win 0x2C26F0;
	TodoReturn spawnDualCircle();
	TodoReturn spawnFromPlayer(PlayerObject*, bool) = win 0x2d34b0;
	TodoReturn spiderTestJumpX(bool);
	TodoReturn spiderTestJumpY(bool);
	TodoReturn stopBurstEffect();
	TodoReturn toggleRobotMode(bool, bool) = win 0x2CF0C0, mac 0x3f9320;
	TodoReturn toggleSwingMode(bool, bool) = win 0x2CE680, mac 0x3f7ec0;
	TodoReturn updateGlowColor() = win 0x2d0ca0, mac 0x3fa940;
	TodoReturn updatePlayerArt() = win 0x2CCAC0, mac 0x3f66e0;
	TodoReturn updateSwingFire() = win 0x2ce8b0;
	TodoReturn canStickToGround();
	TodoReturn deactivateStreak(bool) = mac 0x3de280;
	TodoReturn disableSwingFire();
	/* unverified signature */
	bool isSafeSpiderFlip(float);
	TodoReturn placeStreakPoint() = win 0x2D3630, mac 0x3e46f0;
	TodoReturn playerIsMovingUp();
	TodoReturn playerTeleported();
	TodoReturn playingEndEffect();
	TodoReturn runBallRotation2() = win 0x2c29d0;
	TodoReturn saveToCheckpoint(PlayerCheckpoint*) = win 0x2d4140;
	TodoReturn spawnScaleCircle();
	TodoReturn specialGroundHit();
	TodoReturn toggleSpiderMode(bool, bool) = win 0x2CF3B0, mac 0x3f9760;
	TodoReturn toggleVisibility(bool);
	TodoReturn updateCollideTop(float, GameObject*) = win 0x2C8EB0;
	TodoReturn updatePlayerGlow() = win 0x2D3170, mac 0x3f6550;
	TodoReturn addToTouchedRings(RingObject*);
	TodoReturn collidedWithSlope(float, GameObject*, bool);
	TodoReturn levelFlipFinished();
	TodoReturn performSlideCheck();
	TodoReturn preSlopeCollision(float, GameObject*) = win 0x2C46F0;
	TodoReturn releaseAllButtons() = mac 0x3fb040;
	TodoReturn resetAllParticles() = mac 0x3e44b0;
	TodoReturn resetCollisionLog(bool);
	TodoReturn resetTouchedRings();
	TodoReturn runNormalRotation(bool, float) = win 0x2C2750;
	TodoReturn runNormalRotation();
	TodoReturn spawnPortalCircle(cocos2d::_ccColor3B, float) = win 0x2CBF20, mac 0x3f42d0;
	TodoReturn toggleGhostEffect(GhostType) = win 0x2d20d0;
	TodoReturn togglePlayerScale(bool, bool) = win 0x2D3690, mac 0x3f39d0;
	TodoReturn updateCollideLeft(float, GameObject*) = win 0x2C8F30;
	TodoReturn updatePlayerForce(cocos2d::CCPoint, bool);
	TodoReturn updatePlayerFrame(int) = win 0x2D1220, mac 0x3f85c0;
	TodoReturn updatePlayerScale() = win 0x2d3110;
	TodoReturn updateStaticForce(float, float, bool) = win 0x2D2A00;
	TodoReturn updateStreakBlend(bool);
	void collidedWithObject(float, GameObject*) = mac 0x3ee020;
	void collidedWithObject(float, GameObject*, cocos2d::CCRect, bool) = mac 0x3e7850;
	TodoReturn deactivateParticle();
	TodoReturn destroyFromHitHead();
	TodoReturn gameEventTriggered(int, int) = win 0x1B1AC0;
	void loadFromCheckpoint(PlayerCheckpoint*) = win 0x2d4370;
	TodoReturn playCompleteEffect(bool, bool) = mac 0x1f2ef0;
	TodoReturn removeAllParticles();
	TodoReturn rotateGameplayOnly(bool);
	TodoReturn tryPlaceCheckpoint() = win 0x2d4730;
	TodoReturn updateCollideRight(float, GameObject*) = win 0x2C8FB0;
	TodoReturn updateShipRotation(float);
	TodoReturn handlePlayerCommand(int);
	TodoReturn redirectPlayerForce(float, float, float, float) = win 0x2D2B40;
	TodoReturn resetStateVariables();
	TodoReturn updateCollideBottom(float, GameObject*) = win 0x2C8E30;
	TodoReturn updateDashAnimation();
	TodoReturn updateJumpVariables();
	TodoReturn updateSlopeRotation(float);
	TodoReturn enablePlayerControls();
	TodoReturn playDynamicSpiderRun() = mac 0x3e3400;
	void playSpiderDashEffect(cocos2d::CCPoint from, cocos2d::CCPoint to) = mac 0x3ef720;
	TodoReturn resetCollisionValues();
	TodoReturn rotateGameplayObject(GameObject*);
	TodoReturn togglePlatformerMode(bool) = mac 0x3de0b0;
	TodoReturn updateCheckpointMode(bool);
	TodoReturn updateCheckpointTest() = win 0x2c0df0;
	TodoReturn updateSlopeYVelocity(float);
	TodoReturn updateStateVariables();
	TodoReturn usingWallLimitedMode();
	void animatePlatformerJump(float) = mac 0x3e4e70;
	TodoReturn checkSnapJumpToObject(GameObject*);
	TodoReturn disablePlayerControls();
	void enableCustomGlowColor(cocos2d::_ccColor3B const&) = mac 0x3fa900;
	TodoReturn playerIsFallingBugged();
	TodoReturn rotatePreSlopeObjects();
	TodoReturn updateInternalActions(float);
	TodoReturn updatePlayerBirdFrame(int) = win 0x2D1770, mac 0x3f7c20;
	TodoReturn updatePlayerDartFrame(int) = win 0x2D1D10, mac 0x3f8d10;
	TodoReturn updatePlayerRollFrame(int) = win 0x2D1990, mac 0x3f90f0;
	TodoReturn updatePlayerShipFrame(int) = win 0x2D13F0, mac 0x3f7180;
	TodoReturn updateShipSpriteExtra(gd::string) = win 0x2D1FD0, mac 0x3dd4b0;
	void disableCustomGlowColor() {
		m_hasCustomGlowColor = false;
	}
	TodoReturn removePlacedCheckpoint();
	TodoReturn spiderTestJumpInternal(bool);
	TodoReturn unrotateGameplayObject(GameObject*);
	TodoReturn updateLastGroundObject(GameObject*);
	void updatePlayerRobotFrame(int) = mac 0x3fb000;
	TodoReturn updatePlayerSwingFrame(int) = win 0x2D1B50, mac 0x3f8300;
	TodoReturn createFadeOutDartStreak();
	TodoReturn removePendingCheckpoint() = win 0x2d46d0;
	TodoReturn unrotatePreSlopeObjects();
	void updatePlayerSpiderFrame(int) = mac 0x3fb020;
	TodoReturn updatePlayerSpriteExtra(gd::string) = win 0x2D1ED0;
	TodoReturn convertToClosestRotation(float);
	TodoReturn updatePlayerJetpackFrame(int) = win 0x2D15B0, mac 0x3f73b0;
	TodoReturn collidedWithSlopeInternal(float, GameObject*, bool) = win 0x2C4C50;
	TodoReturn exitPlatformerAnimateJump();
	TodoReturn updateRobotAnimationSpeed();
	TodoReturn collidedWithObjectInternal(float, GameObject*, cocos2d::CCRect, bool) = win 0x2C6C10;
	TodoReturn handleRotatedSlopeCollision(float, GameObject*, bool);
	TodoReturn stopPlatformerJumpAnimation() = mac 0x3e5350;
	TodoReturn handleRotatedObjectCollision(float, GameObject*, cocos2d::CCRect, bool);
	TodoReturn handleRotatedCollisionInternal(float, GameObject*, cocos2d::CCRect, bool, bool, bool);
	TodoReturn flipMod();
	TodoReturn speedUp();
	/* unverified signature */
	bool isFlying() = win 0x2ce0f0;
	TodoReturn pushDown();
	TodoReturn ringJump(RingObject*, bool) = win 0x2CCEA0;
	TodoReturn yStartUp();
	TodoReturn gravityUp();
	TodoReturn hitGround(GameObject*, bool) = win 0x2CF760;
	TodoReturn logValues();
	TodoReturn speedDown();

	virtual void update(float) = win 0x2bed60, mac 0x3de460;
	virtual void setScaleX(float) = win 0x2D4C10, mac 0x3fd070;
	virtual void setScaleY(float) = win 0x2D4C30, mac 0x3fd080;
	virtual void setScale(float) = win 0x2D4C50, mac 0x3fd090;
    virtual void setPosition(cocos2d::CCPoint const&) = win 0x2cfef0, mac 0x3f9c00;
	virtual void setVisible(bool) = mac 0x3fd0a0;
	virtual void setRotation(float) = mac 0x3fcfe0;
	virtual void setOpacity(unsigned char) = mac 0x3fae00;
	virtual void setColor(cocos2d::_ccColor3B const&) = win 0x2d0bb0, mac 0x3fa7e0;
	virtual void setFlipX(bool) = win 0x2D4B80, mac 0x3fcff0;
	virtual void setFlipY(bool) = win 0x138E00, mac 0x3fd060;
	virtual TodoReturn resetObject() = win 0x2cb840, mac 0x3f2e50;
	virtual TodoReturn getRealPosition() = mac 0x3fafd0;
	virtual TodoReturn getOrientedBox() = mac 0x3fc2e0;
	virtual TodoReturn getObjectRotation() = mac 0x3fc300;
	virtual TodoReturn animationFinished(char const*) = mac 0x3fd190;

	cocos2d::CCNode* m_mainLayer;
	PAD = win 0x44, mac 0x48;
	cocos2d::CCNode* m_unk4e4;
	cocos2d::CCDictionary* m_unk4e8;
	cocos2d::CCDictionary* m_unk4ec;
	cocos2d::CCDictionary* m_unk4f0;
	cocos2d::CCDictionary* m_unk4f4;
	PAD = win 0x20, mac 0x20;
	float m_unk518;
	PAD = win 0x8, mac 0x8;
	GameObject* m_collidedObject;
	PAD = win 0x40, mac 0x50;
	float m_unk568;
	cocos2d::CCSprite* m_unk56c;
	PAD = win 0x4, mac 0x4;
	GameObject* m_unk574;
	GameObject* m_unk578;
	PAD = win 0x8, mac 0x0;
	float unk_584;
	int unk_588; // seems to always be 0, but when you respawn it's -1 until you move at least 1 block from the respawn place
	PAD = win 0x4, mac 0x4;
	cocos2d::CCArray* m_particleSystems;
	gd::unordered_map<int, GJPointDouble> m_unk594; // insertions are in PlayerObject::rotateGameplayObject
	gd::unordered_map<int, GameObject*> m_unk5b4;
	float m_unk5d4;
	float m_rotationSpeed;
	float m_unk5dc;
	bool m_isRotating;
	bool m_unk5e1;
	bool m_hasGlow;
	bool m_isHidden;
	int m_hasGhostTrail;
	GhostTrailEffect* m_ghostTrail;
	cocos2d::CCSprite* m_iconSprite;
	cocos2d::CCSprite* m_iconSpriteSecondary;
	cocos2d::CCSprite* m_iconSpriteWhitener;
	cocos2d::CCSprite* m_iconGlow;
	cocos2d::CCSprite* m_vehicleSprite;
	cocos2d::CCSprite* m_vehicleSpriteSecondary;
	cocos2d::CCSprite* m_unk604;
	cocos2d::CCSprite* m_vehicleSpriteWhitener;
	cocos2d::CCSprite* m_vehicleGlow;
	PlayerFireBoostSprite* m_swingFireMiddle;
	PlayerFireBoostSprite* m_swingFireBottom;
	PlayerFireBoostSprite* m_swingFireTop;
	cocos2d::CCSprite* m_unk61c;
	cocos2d::CCMotionStreak* m_regularTrail;
	PAD = win 0x4, mac 0x8;
	HardStreak* m_waveTrail;
	float m_unk62c;
	PAD = win 0x14, mac 0x14;
	float m_unk644;
	float m_unk648;
	PAD = win 0xc, mac 0xc;
	bool m_unk658;
	bool m_unk659;
	bool m_unk65a;
	bool m_unk65b; // midair ??
	bool m_unk65c;
	bool m_unk65d; // walking ???
	bool m_unk65e;
	bool m_unk65f;
	PAD = win 0x28, mac 0x28;
	float m_unk688;
	float m_unk68c;
	PAD = win 0x12, mac 0x12;
	bool m_unk6a2; // = GameManager::getGameVariable("0096")
	bool m_unk6a3; // = GameManager::getGameVariable("0100")
	PAD = win 0x8, mac 0x10;
	float m_unk6ac;
	PAD = win 0xc, mac 0xc;
	float m_unk6bc;
	PAD = win 0x4, mac 0x4;
	GameObject* m_objectSnappedTo;
	PAD = win 0x8, mac 0x8;
	GJRobotSprite* m_robotSprite;
	GJSpiderSprite* m_spiderSprite;
	PAD = win 0x4, mac 0x4;
	cocos2d::CCParticleSystemQuad* m_unk6dc;
	cocos2d::CCParticleSystemQuad* m_unk6e0;
	cocos2d::CCParticleSystemQuad* m_unk6e4;
	cocos2d::CCParticleSystemQuad* m_unk6e8;
	cocos2d::CCParticleSystemQuad* m_unk6ec;
	cocos2d::CCParticleSystemQuad* m_unk6f0;
	cocos2d::CCParticleSystemQuad* m_unk6f4;
	cocos2d::CCParticleSystemQuad* m_unk6f8;
	cocos2d::CCParticleSystemQuad* m_unk6fc;
	PAD = win 0x4, mac 0x4;
	cocos2d::CCParticleSystemQuad* m_unk704;
	cocos2d::CCParticleSystemQuad* m_unk708;
	PAD = win 0x6c, mac 0x68;
	bool m_hasCustomGlowColor;
	cocos2d::ccColor3B m_glowColor;
	PAD = win 0x1c, mac 0x1c;
	double m_yVelocity;
	bool m_isOnSlope;
	bool m_wasOnSlope;
	PAD = win 0x7, mac 0x7;
	bool m_isShip;
	bool m_isBird;
	bool m_isBall;
	bool m_isDart;
	bool m_isRobot;
	bool m_isSpider;
	bool m_isUpsideDown;
	bool m_isDead;
	bool m_isOnGround;
	bool m_isGoingLeft;
	bool m_isSideways;
	bool m_isSwing;
	PAD = win 0x10, mac 0x10;
	float m_unk7c8;
	float m_unk7cc; // unsure if float
	float m_unk7d0;
	bool m_isDashing;
	PAD = win 0x8, mac 0x8;
	float m_vehicleSize;
	float m_playerSpeed;
	cocos2d::CCPoint m_unk7e8;
	cocos2d::CCPoint m_unk7f0; // maybe m_lastPortalPos
	PAD = win 0x7, mac 0x7;
	bool m_isLocked;
	PAD = win 0x4, mac 0x4;
	cocos2d::CCPoint m_lastGroundedPos;
	cocos2d::CCArray* m_touchingRings;
	GameObject* m_lastActivatedPortal;
	bool m_unk814;
	bool m_unk815;
	cocos2d::ccColor3B m_playerColor1;
	cocos2d::ccColor3B m_playerColor2;
	cocos2d::CCPoint m_position;
	PAD = win 0x14, mac 0x14;
	float m_unk838;
	gd::unordered_map<int, int> m_unk83c; // the types are placeholders, no idea what they should be
	PAD = mac 0x20;
	double m_platformerXVelocity;
	PAD = win 0x8c, mac 0x70;
	bool m_isPlatformer;
	int m_unk8ec;
	int m_unk8f0;
	int m_unk8f4;
	int m_unk8f8;
	float m_gravityMod;
	PAD = win 0x4, mac 0x4;
	cocos2d::CCPoint m_unk904;
	PAD = win 0x4, mac 0x4;
	gd::map<int, bool> m_unk910;
	float m_unk918; // increments whenever you're midiar?
	float m_unk91c;
	PAD = win 0x4, mac 0x4;
	gd::map<int, bool> m_unk924;
	PAD = win 0x4, mac 0x4;
	gd::string m_unk930; // this is always "run" ???
	bool m_unk948; // = getGameVariable("0123")
	PAD = win 0x7, mac 0x7;
	cocos2d::CCSpriteBatchNode* m_unk950;
	cocos2d::CCSpriteBatchNode* m_unk954;
	PAD = win 0x4, mac 0x4;
	PlayerFireBoostSprite* m_robotFire;
	PAD = win 0x4, mac 0x4;
	PlayLayer* m_playLayer;
	cocos2d::CCLayer* m_parentLayer;
	GJActionManager* m_actionManager;
	PAD = win 0x4, mac 0x4;
	float m_unk974;
	bool m_unk978;
	bool m_unk979; // = isItemEnabled(0xc, 0x12);
	bool m_unk97a; // = isItemEnabled(0xc, 0x13);
	bool m_unk97b; // = isItemEnabled(0xc, 0x14);
	PAD = win 0x4, mac 0x4;
}


[[link(android)]]
class CheckpointGameObject : EffectGameObject {
	static CheckpointGameObject* create();

	~CheckpointGameObject();

	TodoReturn triggerObject(GJBaseGameLayer*, int, gd::vector<int> const*) = mac 0x1b89c0;
	TodoReturn resetCheckpoint();
	void customObjectSetup(gd::vector<gd::string>&, gd::vector<void*>&) = mac 0x1ba120;
	TodoReturn setupCustomSprites(gd::string) = mac 0x1b8db0;
	TodoReturn updateCheckpointSpriteVisibility();

	virtual bool init() = mac 0x1b8960;
	virtual TodoReturn resetObject() = mac 0x1ba260;
	virtual gd::string getSaveString(GJBaseGameLayer*) = mac 0x1b97a0;
	virtual TodoReturn triggerActivated(float) = mac 0x1b89e0;
	virtual TodoReturn restoreObject() = mac 0x1ba2d0;
	virtual TodoReturn updateSyncedAnimation(float, int) = mac 0x1b9390;
}

[[link(android)]]
class SongInfoObject : cocos2d::CCNode {
	static SongInfoObject* create(int) = mac 0x55fb90;
	static SongInfoObject* create(int, gd::string, gd::string, int, float, gd::string, gd::string, gd::string, int) = mac 0x55d1d0;
	static SongInfoObject* create(cocos2d::CCDictionary*) = mac 0x557250;

	bool init(int, gd::string, gd::string, int, float, gd::string, gd::string, gd::string, int) = mac 0x55fe20;
	~SongInfoObject();

	TodoReturn getTagsString();

	TodoReturn containsTag(int);
	TodoReturn createWithCoder(DS_Dictionary*) = mac 0x560020;
	TodoReturn addTags(gd::string);

	virtual void encodeWithCoder(DS_Dictionary*) = mac 0x560500;
	virtual bool canEncode() = mac 0x560650;

	int m_songID;
	gd::string m_songName;
	gd::string m_artistName;
	gd::string m_youtubeVideo;
	gd::string m_youtubeChannel;
	gd::string m_songUrl;
	gd::string m_artistID;
	float m_fileSize;
	bool m_isUnkownSong;
	int m_priority;
}


[[link(android)]]
class AnimatedSpriteDelegate {
	virtual TodoReturn animationFinished(char const*);
}


[[link(android)]]
class PlayerCheckpoint : cocos2d::CCNode {
	static PlayerCheckpoint* create();

	~PlayerCheckpoint();

	virtual bool init() = mac 0xb8d20;
}


[[link(android)]]
class CheckpointObject : cocos2d::CCNode {
	static CheckpointObject* create();

	~CheckpointObject();

	TodoReturn getObject() = mac 0xb5170;

	/* unverified signature */
	void setObject(GameObject*);

	virtual bool init() = mac 0xb8ef0;
}


[[link(android)]]
class EditorPauseLayer : CCBlockLayer, FLAlertLayerProtocol {
	static EditorPauseLayer* create(LevelEditorLayer*) = mac 0x26ee60;

	bool init(LevelEditorLayer*) = mac 0x26ef60, win 0x9f520;
	~EditorPauseLayer();

	void onNewGroupX(cocos2d::CCObject* sender) = mac 0x271e50;
	void onNewGroupY(cocos2d::CCObject* sender) = mac 0x271e70;
	void onSelectAll(cocos2d::CCObject* sender) = mac 0x271df0;
	void onCopyWColor(cocos2d::CCObject* sender) = mac 0x271d00;
	void onCreateLoop(cocos2d::CCObject* sender) = mac 0x271d40;
	void onExitEditor(cocos2d::CCObject* sender);
	void onExitNoSave(cocos2d::CCObject* sender) = mac 0x271880;
	void onBuildHelper(cocos2d::CCObject* sender) = mac 0x271d20;
	void onKeybindings(cocos2d::CCObject* sender);
	void onPasteWColor(cocos2d::CCObject* sender) = mac 0x271ce0;
	void onSaveAndExit(cocos2d::CCObject* sender) = mac 0x271730;
	void onSaveAndPlay(cocos2d::CCObject* sender) = mac 0x2716c0;
	void onCreateExtras(cocos2d::CCObject* sender) = mac 0x271cb0;
	void onSelectAllLeft(cocos2d::CCObject* sender) = mac 0x271e10;
	void onCreateTemplate(cocos2d::CCObject* sender);
	void onSelectAllRight(cocos2d::CCObject* sender) = mac 0x271e30;
	void onUnlockAllLayers(cocos2d::CCObject* sender) = mac 0x271c90;
	void onResetUnusedColors(cocos2d::CCObject* sender) = mac 0x271b90;
	void onHelp(cocos2d::CCObject* sender) = mac 0x271a20;
	void onSave(cocos2d::CCObject* sender) = mac 0x2717a0;
	void onSong(cocos2d::CCObject* sender) = mac 0x271980;
	void onAlignX(cocos2d::CCObject* sender) = mac 0x271d80;
	void onAlignY(cocos2d::CCObject* sender) = mac 0x271db0;
	void onResume(cocos2d::CCObject* sender) = mac 0x271650;
	void onOptions(cocos2d::CCObject* sender) = mac 0x272090;
	void onReGroup(cocos2d::CCObject* sender) = mac 0x271d60;

	TodoReturn doResetUnused();
	TodoReturn toggleDebugDraw(cocos2d::CCObject*) = mac 0x272050;
	TodoReturn toggleGridOnTop(cocos2d::CCObject*);
	TodoReturn toggleEditorGrid(cocos2d::CCObject*) = mac 0x271ed0;
	TodoReturn updateSongButton();
	TodoReturn toggleEffectLines(cocos2d::CCObject*);
	TodoReturn togglePreviewAnim(cocos2d::CCObject*) = mac 0x271fd0;
	TodoReturn toggleRecordOrder(cocos2d::CCObject*);
	TodoReturn uncheckAllPortals(cocos2d::CCObject*) = mac 0x271ac0;
	TodoReturn toggleEditorGround(cocos2d::CCObject*) = mac 0x271f30;
	TodoReturn toggleFollowPlayer(cocos2d::CCObject*);
	TodoReturn toggleIgnoreDamage(cocos2d::CCObject*) = mac 0x271e90;
	TodoReturn toggleSelectFilter(cocos2d::CCObject*) = mac 0x271eb0;
	TodoReturn toggleHideInvisible(cocos2d::CCObject*) = mac 0x272030;
	TodoReturn togglePlaytestMusic(cocos2d::CCObject*);
	TodoReturn toggleEffectDuration(cocos2d::CCObject*);
	TodoReturn togglePreviewShaders(cocos2d::CCObject*) = mac 0x271f80;
	TodoReturn toggleShowObjectInfo(cocos2d::CCObject*) = mac 0x271ef0;
	TodoReturn toggleEditorColorMode(cocos2d::CCObject*) = mac 0x272000;
	TodoReturn toggleEditorBackground(cocos2d::CCObject*);
	TodoReturn togglePreviewParticles(cocos2d::CCObject*) = mac 0x271fa0;
	TodoReturn playStep2() = mac 0x272a70;
	TodoReturn playStep3() = mac 0x272b40;
	TodoReturn saveLevel() = mac 0x2725a0;

	virtual void keyBackClicked() = mac 0x272ca0;
	virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x272d90;
	virtual TodoReturn customSetup() = mac 0x26f8c0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x272bc0;

	bool m_saved;
    CCMenuItemSpriteExtra* m_guidelinesOffButton;
    CCMenuItemSpriteExtra* m_guidelinesOnButton;
    LevelEditorLayer* m_editorLayer;
}


[[link(android)]]
class CCBlockLayer : cocos2d::CCLayerColor {
	static CCBlockLayer* create();

	~CCBlockLayer();

	TodoReturn decrementForcePrio() = mac 0x4f0940;
	TodoReturn incrementForcePrio();

	virtual bool init() = mac 0x4f05e0;
	virtual void draw() = mac 0x4f0890;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x4f08c0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x4f0920;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x4f08e0;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x4f0900;
	virtual void registerWithTouchDispatcher() = mac 0x4f0750;
	virtual void keyBackClicked() = mac 0x4f0790;
	virtual TodoReturn customSetup() = mac 0x4f06f0;
	virtual TodoReturn enterLayer() = mac 0x4f0720;
	virtual TodoReturn exitLayer() = mac 0x4f07c0;
	virtual TodoReturn showLayer(bool) = mac 0x4f0800;
	virtual TodoReturn hideLayer(bool) = mac 0x4f0810;
	virtual TodoReturn layerVisible() = mac 0x4f0830;
	virtual TodoReturn layerHidden() = mac 0x4f0850;
	virtual TodoReturn enterAnimFinished() = mac 0x4f0820;
	virtual TodoReturn disableUI() = mac 0x4f0700;
	virtual TodoReturn enableUI() = mac 0x4f0710;

	void* m_unknown;
}


[[link(android)]]
class PauseLayer : CCBlockLayer {
	static PauseLayer* create(bool) = win 0x2b3690, mac 0x3b4400;

	bool init(bool) = win 0x2b3740;
	~PauseLayer();

	void onSettings(cocos2d::CCObject* sender) = mac 0x3b5c20, win 0x2b41e0;
	void onNormalMode(cocos2d::CCObject* sender) = mac 0x3b5af0, win 0x2b4be0;
	void onRestartFull(cocos2d::CCObject* sender) = mac 0x3b5a50, win 0x2b4d30;
	void onPracticeMode(cocos2d::CCObject* sender) = mac 0x3b5a90, win 0x2b4b70;
	void onRecordReplays(cocos2d::CCObject* sender);
	void onEdit(cocos2d::CCObject* sender) = mac 0x3b5930, win 0x2b4d80;
	void onHelp(cocos2d::CCObject* sender);
	void onQuit(cocos2d::CCObject* sender) = mac 0x3b5b40, win 0x2b4ed0;
	void onTime(cocos2d::CCObject* sender);
	void onReplay(cocos2d::CCObject* sender);
	void onResume(cocos2d::CCObject* sender) = mac 0x3b5a10, win 0x2b4c90;
	void onRestart(cocos2d::CCObject* sender) = mac 0x3b5be0, win 0x2b4ce0;

	TodoReturn tryShowBanner(float);
	TodoReturn sfxSliderChanged(cocos2d::CCObject*);
	TodoReturn setupProgressBars() = mac 0x3b4fb0;
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	void musicSliderChanged(cocos2d::CCObject*) = win 0x2B4AB0;
	void goEdit() = win 0x2b4e70, mac 0x3b5fa0;

	virtual void keyBackClicked();
	virtual void keyDown(cocos2d::enumKeyCodes) = win 0x2b4fa0, mac 0x3b6010;
	virtual void customSetup() = win 0x2B3740, mac 0x3b4500;
	virtual void keyUp(cocos2d::enumKeyCodes);
}


[[link(android)]]
class LevelBrowserLayer : cocos2d::CCLayerColor, LevelManagerDelegate, FLAlertLayerProtocol, SetIDPopupDelegate, SetTextPopupDelegate, TableViewCellDelegate, ShareCommentDelegate {
	static LevelBrowserLayer* create(GJSearchObject*) = mac 0x4675c0, win 0x22DD50;

	bool init(GJSearchObject*) = mac 0x467790, win 0x22DE00;
	~LevelBrowserLayer() = mac 0x467380;

	gd::string getSearchTitle() = mac 0x46c370;
	TodoReturn getItemsMatchingSearch(cocos2d::CCArray*, gd::string, GJSearchObject*);

	/* unverified signature */
	void setSearchObject(GJSearchObject*);

	void onGoToPage(cocos2d::CCObject* sender) = mac 0x469350;
	void onNextPage(cocos2d::CCObject* sender) = mac 0x4691f0;
	void onPrevPage(cocos2d::CCObject* sender) = mac 0x4691b0;
	void onDeleteAll(cocos2d::CCObject* sender) = mac 0x469cf0;
	void onFavorites(cocos2d::CCObject* sender) = mac 0x469f90;
	void onLocalMode(cocos2d::CCObject* sender) = mac 0x469b00;
	void onSavedMode(cocos2d::CCObject* sender) = mac 0x469dc0;
	void onGoToFolder(cocos2d::CCObject* sender) = mac 0x46a500;
	void onClearSearch(cocos2d::CCObject* sender) = mac 0x46a880;
	void onGoToLastPage(cocos2d::CCObject* sender) = mac 0x46a5b0;
	void onDeleteSelected(cocos2d::CCObject* sender) = mac 0x469460;
	void onMyOnlineLevels(cocos2d::CCObject* sender) = mac 0x469890;
	void onToggleAllObjects(cocos2d::CCObject* sender) = mac 0x469710;
	void onRemoveAllFavorites(cocos2d::CCObject* sender) = mac 0x469bd0;
	void onNew(cocos2d::CCObject* sender) = mac 0x4697a0;
	void onBack(cocos2d::CCObject* sender) = mac 0x46d2e0;
	void onHelp(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender) = mac 0x46a1a0;
	void onSaved(cocos2d::CCObject* sender) = mac 0x469e90;
	void onSearch(cocos2d::CCObject* sender) = mac 0x46a5f0;
	void onRefresh(cocos2d::CCObject* sender) = mac 0x46a090;

	TodoReturn createNewList(cocos2d::CCObject*) = mac 0x46d520;
	TodoReturn createNewLevel(cocos2d::CCObject*);
	TodoReturn deleteSelected();
	TodoReturn updatePageLabel() = mac 0x469230;
	TodoReturn reloadAllObjects();
	TodoReturn setupLevelBrowser(cocos2d::CCArray*) = mac 0x46c070;
	TodoReturn updateLevelsLabel();
	TodoReturn createNewSmartTemplate(cocos2d::CCObject*);
	TodoReturn show();
	static cocos2d::CCScene* scene(GJSearchObject* search) {
        auto scene = cocos2d::CCScene::create();
        scene->addChild(LevelBrowserLayer::create(search));

        AppDelegate::get()->m_runningScene = scene;
        return scene;
    }
	void loadPage(GJSearchObject*) = mac 0x46a900, win 0x22F480;
	TodoReturn exitLayer(cocos2d::CCObject*);
	/* unverified signature */
	bool isCorrect(char const*) = win 0x22F340;

	virtual void onEnter() = mac 0x46de00;
	virtual void onEnterTransitionDidFinish() = mac 0x46dfa0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x46e090;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x46e0f0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x46e0b0;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x46e0d0;
	virtual void registerWithTouchDispatcher() = mac 0x46dfb0;
	virtual void keyBackClicked() = mac 0x46d390;
	virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x46d3d0;
	virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = mac 0x46ca00;
	virtual TodoReturn loadLevelsFailed(char const*, int) = mac 0x46cb60;
	virtual void setupPageInfo(gd::string, char const*) = win 0x230980, mac 0x46cc40;
	virtual void shareCommentClosed(gd::string, ShareCommentLayer*) = mac 0x46d6b0;
	virtual void setTextPopupClosed(SetTextPopup*, gd::string) = mac 0x46d790;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = win 0x2326E0, mac 0x46d9e0;
	virtual void setIDPopupClosed(SetIDPopup*, int) = mac 0x46d1b0;
	virtual TodoReturn updateResultArray(cocos2d::CCArray*) = mac 0x46e110;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = mac 0x46de80;

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
	static SetTextPopup* create(gd::string, gd::string, int, gd::string, gd::string, bool, float) = mac 0x289fb0;

	bool init(gd::string, gd::string, int, gd::string, gd::string, bool, float) = mac 0x28a750;
	~SetTextPopup();

	void onResetValue(cocos2d::CCObject* sender) = mac 0x28afa0;
	void onClose(cocos2d::CCObject* sender) = mac 0x28aee0;
	void onCancel(cocos2d::CCObject* sender) = mac 0x28b030;

	TodoReturn updateTextInputLabel();

	virtual void keyBackClicked() = mac 0x28b260;
	virtual TodoReturn show() = mac 0x28b200;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x28b0d0;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x28b110;

	CCTextInputNode* m_input;
	bool m_disableDelegate;
	gd::string m_value;
	SetTextPopupDelegate* m_delegate;
}


[[link(android)]]
class ShareCommentLayer : FLAlertLayer, TextInputDelegate, UploadActionDelegate, UploadPopupDelegate {
	static ShareCommentLayer* create(gd::string, int, CommentType, int, gd::string) = mac 0x5a46f0;

	bool init(gd::string, int, CommentType, int, gd::string) = mac 0x5a4950;
	~ShareCommentLayer();

	void onClear(cocos2d::CCObject* sender) = mac 0x5a5c10;
	void onClose(cocos2d::CCObject* sender) = mac 0x5a5cb0;
	void onShare(cocos2d::CCObject* sender) = mac 0x5a5d00, win 0x380130;
	void onPercent(cocos2d::CCObject* sender) = mac 0x5a5a80;

	TodoReturn updateDescText(gd::string);
	TodoReturn updatePercentLabel();
	TodoReturn updateCharCountLabel() = mac 0x5a63d0;

	virtual void registerWithTouchDispatcher() = mac 0x5a60d0;
	virtual void keyBackClicked() = mac 0x5a6020;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = mac 0x5a6270;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x5a6110;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x5a6290;
	virtual TodoReturn uploadActionFinished(int, int) = mac 0x5a64e0;
	virtual TodoReturn uploadActionFailed(int, int) = mac 0x5a65e0;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = mac 0x5a6700;
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

	TodoReturn createWithArray(cocos2d::CCArray*, UndoCommand) = mac 0xdea20;
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

	virtual void keyBackClicked() = mac 0x49e360;
	virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x49eb10;
	virtual void customSetup() = win 0xE67B0, mac 0x49b580;
	virtual void showLayer(bool) = mac 0x49d530;
	virtual TodoReturn enterAnimFinished() = mac 0x49e280;
	virtual void keyUp(cocos2d::enumKeyCodes) = mac 0x49eba0;

	bool m_unknown1;
	bool m_unknown2;
	bool m_unknown3;
	bool m_unknown4;
	bool m_unknown5;
	int m_unknown6;
	cocos2d::CCArray* m_coinsToAnimate;
}


[[link(android)]]
class DailyLevelPage : FLAlertLayer, FLAlertLayerProtocol, GJDailyLevelDelegate, LevelDownloadDelegate {
	static DailyLevelPage* create(GJTimedLevelType) = mac 0x20f540, win 0x96B30;

	bool init(GJTimedLevelType) = mac 0x20f6d0, win 0x96BD0;
	~DailyLevelPage();

	TodoReturn getDailyTime() = win 0x98200;
	TodoReturn getDailyTimeString(int) = mac 0x2103a0, win 0x982b0;

	void onClose(cocos2d::CCObject* sender) = mac 0x210300;
	void onTheSafe(cocos2d::CCObject* sender) = mac 0x210340;

	callback void updateTimers(float) = win 0x98630, mac 0x210720;
	TodoReturn exitDailyNode(DailyLevelNode*, float) = win 0x98150;
	TodoReturn skipDailyLevel(DailyLevelNode*, GJGameLevel*);
	TodoReturn createDailyNode(GJGameLevel*, bool, float, bool) = mac 0x210930;
	TodoReturn claimLevelReward(DailyLevelNode*, GJGameLevel*, cocos2d::CCPoint);
	TodoReturn refreshDailyPage();
	TodoReturn tryGetDailyStatus() = win 0x97e10;
	TodoReturn createNodeIfLoaded() = win 0x97ec0;
	TodoReturn downloadAndCreateNode() = win 0x97e60;

	virtual void registerWithTouchDispatcher() = mac 0x2116b0;
	virtual void keyBackClicked() = mac 0x211620;
	virtual TodoReturn show() = win 0x5D2C0, mac 0x211480;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x211600;
	virtual TodoReturn dailyStatusFinished(GJTimedLevelType) = mac 0x210b20;
	virtual TodoReturn dailyStatusFailed(GJTimedLevelType, GJErrorCode) = mac 0x210f60;
	virtual TodoReturn levelDownloadFinished(GJGameLevel*) = mac 0x2111b0;
	virtual TodoReturn levelDownloadFailed(int) = mac 0x211270;

	cocos2d::CCLabelBMFont* m_timeLabel;
	LoadingCircle* m_timeCircle;
	LoadingCircle* m_nodeCircle;
	bool m_gettingDailyStatus;
	DailyLevelNode* m_dailyNode;
	bool m_downloadStarted;
	GJTimedLevelType m_type;
	int m_downloadLevelID;
}


[[link(android)]]
class EditLevelLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, SetIDPopupDelegate {
	static EditLevelLayer* create(GJGameLevel*) = mac 0x1d96f0;

	bool init(GJGameLevel*) = mac 0x1d9820, win 0x09BDF0;
	~EditLevelLayer();

	void onLevelInfo(cocos2d::CCObject* sender) = mac 0x1dc2c0;
	TodoReturn onMoveToTop();
	void onSetFolder(cocos2d::CCObject* sender) = mac 0x1dc080;
	void onGuidelines(cocos2d::CCObject* sender) = mac 0x1dc500;
	void onLowDetailMode(cocos2d::CCObject* sender);
	void onLevelLeaderboard(cocos2d::CCObject* sender) = mac 0x1dc120;
	void onUpdateDescription(cocos2d::CCObject* sender) = mac 0x1dbc30;
	void onBack(cocos2d::CCObject* sender) = mac 0x1dc170;
	void onEdit(cocos2d::CCObject* sender) = mac 0x1dadc0;
	void onHelp(cocos2d::CCObject* sender) = mac 0x1dbe00;
	void onPlay(cocos2d::CCObject* sender) = mac 0x1daf10;
	void onTest(cocos2d::CCObject* sender);
	TodoReturn onClone();
	void onShare(cocos2d::CCObject* sender) = mac 0x1db050;
	TodoReturn onDelete();

	TodoReturn confirmClone(cocos2d::CCObject*) = mac 0x1dbed0;
	TodoReturn confirmDelete(cocos2d::CCObject*) = mac 0x1dbd10;
	TodoReturn setupLevelInfo();
	TodoReturn updateDescText(char const*);
	TodoReturn closeTextInputs();
	TodoReturn verifyLevelName();
	TodoReturn confirmMoveToTop(cocos2d::CCObject*) = mac 0x1dbfa0;
	TodoReturn scene(GJGameLevel*) = mac 0x1d9590;
	TodoReturn playStep2();
	TodoReturn playStep3();

	virtual void keyBackClicked() = mac 0x1dd510;
	virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x1dd540;
	virtual void setIDPopupClosed(SetIDPopup*, int) = mac 0x1dd410;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x1dd060;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = mac 0x1dc940;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x1dc650;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x1dca20;
	virtual TodoReturn uploadActionFinished(int, int) = mac 0x1dd5e0;
	virtual TodoReturn uploadActionFailed(int, int) = mac 0x1dd770;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = mac 0x1dd590;

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

	static GJAccountManager* get() {
		return GJAccountManager::sharedState();
	}

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
	static GJAccountManager* sharedState() = win 0x186ff0, mac 0xcba00;
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

	virtual bool init() = mac 0xcdf10;

	cocos2d::CCDictionary* m_activeDownloads;
	gd::string m_username;
	int m_accountID;
	int m_unkInt1;
	int m_unkInt2;
	gd::string m_GJP2;
	GJAccountRegisterDelegate* m_accountRegisterDelegate;
	GJAccountLoginDelegate* m_accountLoginDelegate;
	GJAccountDelegate* m_accountDelegate;
	GJAccountBackupDelegate* m_backupDelegate;
	GJAccountSyncDelegate* m_syncDelegate;
	GJAccountSettingsDelegate* m_accountSettingsDelegate;
	int m_gameManagerSize;
	int m_localLevelsSize;
	gd::string m_password;
}

[[link(android)]]
class GJDailyLevelDelegate {
	virtual TodoReturn dailyStatusFinished(GJTimedLevelType);
	virtual TodoReturn dailyStatusFailed(GJTimedLevelType, GJErrorCode);
}


[[link(android)]]
class DailyLevelNode : cocos2d::CCNode, FLAlertLayerProtocol {
	static DailyLevelNode* create(GJGameLevel*, DailyLevelPage*, bool) = mac 0x211340;

	bool init(GJGameLevel*, DailyLevelPage*, bool) = mac 0x211b10, win 0x98BD0;
	~DailyLevelNode();

	void onSkipLevel(cocos2d::CCObject* sender) = mac 0x212660;
	void onClaimReward(cocos2d::CCObject* sender) = mac 0x212560;

	TodoReturn showSkipButton();
	TodoReturn updateTimeLabel(gd::string) = win 0x997a0;

	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = win 0x99770, mac 0x212820;

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
	static ColorAction* create() = win 0x1d4980, mac 0x2b27c0;

	bool init(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float, double, bool, int, float, float);
	~ColorAction();

	TodoReturn getCopy();

	TodoReturn resetAction();
	TodoReturn saveToState(CAState&);
	TodoReturn setupFromMap(gd::map<gd::string, gd::string>&);
	TodoReturn loadFromState(CAState&);
	TodoReturn setupFromString(gd::string);
	// TODO: this is a scary function
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

	void onTintGround(cocos2d::CCObject* sender);
	void onCopyOpacity(cocos2d::CCObject* sender);
	void onFPlayerColor1(cocos2d::CCObject* sender);
	void onPlayerColor2(cocos2d::CCObject* sender);
	void onHSVLegacyMode(cocos2d::CCObject* sender);
	void onToggleHSVMode(cocos2d::CCObject* sender);
	void onToggleTintMode(cocos2d::CCObject* sender);
	void onUpdateCopyColor(cocos2d::CCObject* sender);
	void onUpdateCustomColor(cocos2d::CCObject* sender);
	void onSelectSpecialColor(cocos2d::CCObject* sender);
	void onCopy(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onDefault(cocos2d::CCObject* sender);

	TodoReturn colorToHex(cocos2d::_ccColor3B);
	TodoReturn hexToColor(gd::string);
	TodoReturn selectColor(cocos2d::_ccColor3B);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateHSVMode();
	TodoReturn updateOpacity();
	TodoReturn updateDuration();
	TodoReturn updateDurLabel();
	TodoReturn updateHSVValue();
	TodoReturn updateCopyColor();
	void closeColorSelect(cocos2d::CCObject*);
	TodoReturn updateColorValue();
	TodoReturn updateColorLabels();
	TodoReturn updateOpacityLabel();
	TodoReturn updateCustomColorIdx();
	TodoReturn updateTextInputLabel();
	TodoReturn updateCopyColorTextInputLabel();

	virtual TodoReturn show() = mac 0x6ee1a0;
	virtual TodoReturn determineStartValues() = mac 0x6ebf80;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x6ee290;
	virtual TodoReturn colorValueChanged(cocos2d::_ccColor3B) = mac 0x6ec740;
	virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int) = mac 0x6ee830;

	PAD = android32 0x40;
	ColorAction* m_colorAction;
}

[[link(android)]]
class ColorActionSprite : cocos2d::CCNode {
	static ColorActionSprite* create() = win 0x1d4800;

	~ColorActionSprite();

	virtual bool init() = mac 0x2b25c0;
}

[[link(android)]]
class GJSpecialColorSelect : FLAlertLayer {
	static GJSpecialColorSelect* create(int, GJSpecialColorSelectDelegate*, ColorSelectType);

	bool init(int, GJSpecialColorSelectDelegate*, ColorSelectType);
	~GJSpecialColorSelect();

	TodoReturn getButtonByTag(int);

	void onSelectColor(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	static const char* textForColorIdx(int) = mac 0x5eacd0;
	TodoReturn highlightSelected(ButtonSprite*);

	virtual void keyBackClicked() = mac 0x5eaf20;
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

	TodoReturn selectColor(cocos2d::_ccColor3B);
	TodoReturn textChanged(CCTextInputNode*);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateOpacity();
	TodoReturn toggleControls(bool);
	TodoReturn textInputClosed(CCTextInputNode*);
	TodoReturn closeColorSelect(cocos2d::CCObject*);
	TodoReturn createWithObject(EffectGameObject*);
	TodoReturn updateColorLabel();
	TodoReturn updateColorValue();
	TodoReturn colorValueChanged(cocos2d::_ccColor3B);
	TodoReturn createWithActions(ColorAction*, ColorAction*);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn determineStartValues();

	virtual void keyBackClicked() = mac 0x536080;
	virtual TodoReturn show() = mac 0x536130;

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

	bool init(EffectGameObject*, cocos2d::CCArray*, float, float, int) = mac 0x214070;
	~SetupTriggerPopup();

	TodoReturn getObjects();
	TodoReturn getTriggerValue(int, GameObject*);
	TodoReturn getPageContainer(int);
	TodoReturn getGroupContainer(int);
	TodoReturn getMaxSliderValue(int);
	TodoReturn getMinSliderValue(int);
	TodoReturn getTruncatedValue(float, int);
	TodoReturn getTruncatedValueByTag(int, float);

	// /* unverified signature */
	void setMaxSliderValue(float, int);
	// /* unverified signature */
	void setMinSliderValue(float, int);

	void onEaseRate(cocos2d::CCObject* sender);
	void onPlusButton(cocos2d::CCObject* sender) = mac 0xa6c0;
	void onCustomButton(cocos2d::CCObject* sender) = mac 0xa6d0;
	void onDisableValue(cocos2d::CCObject* sender);
	void onMultiTrigger(cocos2d::CCObject* sender);
	void onCustomEaseRate(cocos2d::CCObject* sender);
	void onTouchTriggered(cocos2d::CCObject* sender);
	TodoReturn onCustomEaseArrow(int, bool);
	void onSpawnedByTrigger(cocos2d::CCObject* sender);
	void onCustomEaseArrowUp(cocos2d::CCObject* sender);
	void onToggleTriggerValue(cocos2d::CCObject* sender);
	void onCustomEaseArrowDown(cocos2d::CCObject* sender);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = mac 0xa6f0;
	void onEase(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x218190;

	TodoReturn updateLabel(int, gd::string);
	TodoReturn updateValue(int, float);
	TodoReturn addInfoLabel(gd::string, float, cocos2d::CCPoint, int, int);
	TodoReturn updateSlider(int);
	TodoReturn updateSlider(int, float);
	TodoReturn valueChanged(int, float);
	TodoReturn addHelpButton(gd::string, gd::string, float);
	TodoReturn addCloseButton(gd::string);
	TodoReturn addObjectToPage(cocos2d::CCObject*, int);
	TodoReturn closeInputNodes();
	TodoReturn updateEaseLabel();
	TodoReturn addObjectsToPage(cocos2d::CCArray*, int);
	TodoReturn addObjectToGroup(cocos2d::CCObject*, int);
	TodoReturn createPlusButton(int, cocos2d::CCPoint, float, gd::string, int, int);
	TodoReturn shouldLimitValue(int);
	TodoReturn toggleLimitValue(int, bool);
	TodoReturn togglePageArrows(bool);
	TodoReturn triggerArrowLeft(cocos2d::CCObject*);
	TodoReturn addObjectsToGroup(cocos2d::CCArray*, int);
	TodoReturn createPageButtons(float, int);
	TodoReturn triggerArrowRight(cocos2d::CCObject*);
	TodoReturn updateEditorLabel();
	TodoReturn createCustomButton(int, gd::string, gd::string, cocos2d::CCPoint, float, float, bool, int, int);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCPoint);
	TodoReturn createValueControl(int, gd::string, cocos2d::CCPoint, float, float, float);
	TodoReturn resetDisabledValues();
	TodoReturn triggerArrowChanged(int, bool);
	TodoReturn updateEaseRateLabel();
	TodoReturn updateValueControls(int, float);
	TodoReturn createEasingControls(cocos2d::CCPoint, float, int, int);
	TodoReturn removeObjectFromPage(cocos2d::CCObject*, int);
	TodoReturn toggleDisableButtons(bool);
	TodoReturn triggerSliderChanged(cocos2d::CCObject*);
	TodoReturn updateInputNodeLabel(int, gd::string);
	TodoReturn updateTouchTriggered();
	TodoReturn removeObjectFromGroup(cocos2d::CCObject*, int);
	TodoReturn updateCustomEaseLabel(int, int);
	TodoReturn updateMultiTriggerBtn();
	TodoReturn refreshGroupVisibility();
	TodoReturn updateSpawnedByTrigger();
	TodoReturn createMultiTriggerItems(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);
	TodoReturn createToggleValueControl(int, gd::string, cocos2d::CCPoint, bool, int, int, float);
	TodoReturn toggleEaseRateVisibility();
	TodoReturn createValueControlWArrows(int, gd::string, cocos2d::CCPoint, float);
	TodoReturn updateCustomEaseRateLabel(int, float);
	TodoReturn updateCustomToggleTrigger(int, bool);
	TodoReturn createCustomEasingControls(gd::string, cocos2d::CCPoint, float, int, int, int, int);
	TodoReturn createValueControlAdvanced(int, gd::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float, float, int, int, GJInputStyle, int, bool);
	TodoReturn createMultiTriggerItemsCorner();
	TodoReturn createCustomToggleValueControl(int, bool, bool, gd::string, cocos2d::CCPoint, bool, int, int);
	TodoReturn createMultiTriggerItemsDefault();
	TodoReturn toggleCustomEaseRateVisibility(int, int);
	TodoReturn createToggleValueControlAdvanced(int, gd::string, cocos2d::CCPoint, bool, int, int, float, float, float, cocos2d::CCPoint);
	TodoReturn createMultiTriggerItemsDefaultVertical();
	TodoReturn createMultiTriggerItemsDefaultHorizontal();
	TodoReturn hideAll();
	TodoReturn addTitle(gd::string);
	TodoReturn goToPage(int, bool);
	TodoReturn preSetup();
	TodoReturn toggleBG(bool);
	TodoReturn postSetup();

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x21f060;
	virtual void keyBackClicked() = mac 0x2182f0;
	virtual TodoReturn show() = mac 0x218130;
	virtual TodoReturn pageChanged() = mac 0xa6a0;
	virtual TodoReturn toggleGroup(int, bool) = mac 0x214ba0;
	virtual TodoReturn determineStartValues() = mac 0x215d20;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x2160a0;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x2160e0;
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float) = mac 0x218330;
	virtual TodoReturn textInputReturn(CCTextInputNode*) = mac 0x2183f0;
	virtual TodoReturn updateInputValue(int, float&) = mac 0xa6b0;
	virtual TodoReturn sliderBegan(Slider*) = mac 0x2184a0;
	virtual TodoReturn sliderEnded(Slider*) = mac 0x218580;
	virtual TodoReturn updateDefaultTriggerValues() = mac 0x21a8a0;
	virtual TodoReturn updateInputNode(int, float) = mac 0x21ce00;
	virtual TodoReturn updateToggleItem(int, bool) = mac 0x21cfd0;
	virtual TodoReturn valueDidChange(int, float) = mac 0xa6e0;
	virtual TodoReturn getValue(int) = mac 0x21d090;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = mac 0x21d420;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = mac 0x21d4a0;
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = mac 0x21e120;

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

	virtual void keyBackClicked() = mac 0x5e7e60;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x5e7d10;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x5e7d50;
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

	virtual void keyBackClicked() = mac 0x24e760;
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

	virtual void keyBackClicked() = mac 0x24f460;
}

[[link(android)]]
class CustomSongLayerDelegate {
	virtual TodoReturn customSongLayerClosed();
}

[[link(android)]]
class LevelSettingsLayer : FLAlertLayer, ColorSelectDelegate, SelectArtDelegate, SelectSettingDelegate, FLAlertLayerProtocol, CustomSongLayerDelegate, TextInputDelegate {
	static LevelSettingsLayer* create(LevelSettingsObject*, LevelEditorLayer*);

	bool init(LevelSettingsObject*, LevelEditorLayer*) = mac 0x249830;
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

	virtual void registerWithTouchDispatcher() = mac 0x24ce00;
	virtual void keyBackClicked() = mac 0x24d730;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x24d290;
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*) = mac 0x24d1b0;
	virtual TodoReturn selectArtClosed(SelectArtLayer*) = mac 0x24d4c0;
	virtual TodoReturn selectSettingClosed(SelectSettingLayer*) = mac 0x24cc30;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x24ce50;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x24ce90;
}

[[link(android)]]
class GJChallengeItem : cocos2d::CCObject {
	static GJChallengeItem* create(GJChallengeType, int, int, int, gd::string);
	static GJChallengeItem* create() = mac 0x8b120;

	bool init(GJChallengeType, int, int, int, gd::string);
	~GJChallengeItem();

	TodoReturn dataLoaded(DS_Dictionary*) = mac 0x8b3c0;
	TodoReturn incrementCount(int);
	TodoReturn createWithCoder(DS_Dictionary*) = mac 0x8b350;
	TodoReturn createFromString(gd::string) = mac 0x8af60;

	virtual void encodeWithCoder(DS_Dictionary*) = mac 0x8b520;
	virtual bool canEncode() = mac 0x8b5f0;

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

	TodoReturn getCreatedLists(int) = mac 0x5bd470;
	TodoReturn getCreatedLevels(int) = mac 0x5bd3e0;
	cocos2d::CCDictionary* getAllLevelsInDict();
	gd::string getMainLevelString(int) = win 0x273230;
	TodoReturn getAllLevelsWithName(gd::string);
	TodoReturn getLevelsInNameGroups();

    inline static LocalLevelManager* get() {
        return LocalLevelManager::sharedState();
    }
	static LocalLevelManager* sharedState() = win 0x272F00, mac 0x5bc220;
	TodoReturn reorderLevels();
	TodoReturn moveLevelToTop(GJGameLevel*);
	TodoReturn updateLevelOrder();
	TodoReturn updateLevelRevision();
	TodoReturn markLevelsAsUnmodified();
	TodoReturn tryLoadMainLevelString(int) = win 0x2730A0, mac 0x5bc400;

	virtual bool init() = mac 0x5bc3c0;
	virtual TodoReturn encodeDataTo(DS_Dictionary*) = mac 0x5bd590;
	virtual TodoReturn dataLoaded(DS_Dictionary*) = mac 0x5bd5f0;
	virtual TodoReturn firstLoad() = mac 0x5bd500;

	cocos2d::CCArray* m_localLevels;
	cocos2d::CCArray* m_LLM03;
	gd::map<int, gd::string> m_mainLevels;
}


[[link(android)]]
class GJEffectManager : cocos2d::CCNode {
	static GJEffectManager* create() = mac 0x2b6ad0;

	~GJEffectManager();

	TodoReturn getMixedColor(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float);
	gd::string getSaveString();
	TodoReturn getColorAction(int) = win 0x1d7a60, mac 0x2b80f0;
	TodoReturn getColorSprite(int) = win 0x1d7ae0, mac 0x2b82b0;
	TodoReturn getAllColorActions();
	TodoReturn getAllColorSprites();
	TodoReturn getMoveCommandNode(GroupCommandObject2*);
	TodoReturn getLoadedMoveOffset(gd::unordered_map<int, std::pair<double, double>>&);
	TodoReturn getTempGroupCommand();
	TodoReturn getMoveCommandObject();
	TodoReturn getOpacityActionForGroup(int);

	void setFollowing(int, int, bool);
	void setColorAction(ColorAction*, int);

	TodoReturn pauseTimer(int);
	TodoReturn playerDied() = win 0x1de560, mac 0x2c4bf0;
	TodoReturn spawnGroup(int, float, bool, gd::vector<int> const&, int, int);
	TodoReturn startTimer(int, double, double, bool, bool, bool, float, bool, int, gd::vector<int> const&, int, int);
	TodoReturn colorExists(int) = mac 0x2b95d0;
	TodoReturn resumeTimer(int);
	TodoReturn saveToState(EffectManagerState&) = win 0x1dfe50;
	bool shouldBlend(int) = mac 0x2b83f0;
	TodoReturn spawnObject(GameObject*, float, gd::vector<int> const&, int, int);
	TodoReturn timeForItem(int);
	TodoReturn timerExists(int);
	TodoReturn toggleGroup(int, bool);
	TodoReturn updateTimer(int, double);
	TodoReturn countForItem(int);
	TodoReturn playerButton(bool, bool);
	TodoReturn resetEffects();
	TodoReturn updateColors(cocos2d::_ccColor3B, cocos2d::_ccColor3B);
	TodoReturn updateTimers(float, float);
	TodoReturn wasFollowing(int, int);
	TodoReturn colorForIndex(int);
	TodoReturn loadFromState(EffectManagerState&);
	TodoReturn processColors() = mac 0x2b8430;
	TodoReturn updateEffects(float) = mac 0x2b9630;
	TodoReturn addCountToItem(int, int);
	TodoReturn checkCollision(int const&, int const&);
	TodoReturn colorForEffect(cocos2d::_ccColor3B, cocos2d::_ccHSVValue);
	// /* unverified signature */
	bool isGroupEnabled(int);
	TodoReturn runPulseEffect(int, bool, float, float, float, PulseEffectType, cocos2d::_ccColor3B, cocos2d::_ccHSVValue, int, bool, bool, bool, bool, int, int);
	TodoReturn colorForGroupID(int, cocos2d::_ccColor3B const&, bool);
	TodoReturn objectsCollided(int, int) = win 0x1d7fa0;
	TodoReturn opacityForIndex(int);
	TodoReturn postMoveActions();
	TodoReturn runCountTrigger(int, int, bool, int, bool, gd::vector<int> const&, int, int);
	TodoReturn runDeathTrigger(int, bool, gd::vector<int> const&, int, int);
	TodoReturn runTimerTrigger(int, double, bool, int, gd::vector<int> const&, int, int);
	TodoReturn setupFromString(gd::string);
	TodoReturn wouldCreateLoop(InheritanceNode*, int) = win 0x1d7a30;
	TodoReturn hasBeenTriggered(int, int);
	TodoReturn resetMoveActions();
	TodoReturn storeTriggeredID(int, int);
	TodoReturn createMoveCommand(cocos2d::CCPoint, int, float, int, float, bool, bool, bool, bool, float, float, int, int);
	TodoReturn preCollisionCheck();
	TodoReturn removeColorAction(int);
	TodoReturn removeTriggeredID(int, int);
	TodoReturn resetTriggeredIDs();
	TodoReturn saveCompletedMove(int, double, double);
	TodoReturn updateColorAction(ColorAction*);
	TodoReturn addMoveCalculation(CCMoveCNode*, cocos2d::CCPoint, GameObject*);
	TodoReturn colorActionChanged(ColorAction*);
	TodoReturn hasActiveDualTouch();
	TodoReturn keyForGroupIDColor(int, cocos2d::_ccColor3B const&, bool);
	TodoReturn opacityModForGroup(int);
	TodoReturn postCollisionCheck();
	TodoReturn prepareMoveActions(float, bool);
	TodoReturn resetToggledGroups();
	TodoReturn updateColorEffects(float);
	TodoReturn updateCountForItem(int, int);
	TodoReturn updatePulseEffects(float);
	TodoReturn activeColorForIndex(int) = win 0x1d7390, mac 0x2b8260;
	TodoReturn colorForPulseEffect(cocos2d::_ccColor3B const&, PulseEffectAction*) = win 0x1ddbc0;
	TodoReturn createFollowCommand(float, float, float, int, int, int, int);
	TodoReturn createRotateCommand(float, float, int, int, int, float, bool, bool, bool, int, int);
	TodoReturn processPulseActions() = win 0x1dd8e0;
	TodoReturn updateOpacityAction(OpacityEffectAction*);
	TodoReturn updateSpawnTriggers(float);
	TodoReturn toggleItemPersistent(int, bool);
	TodoReturn updateOpacityEffects(float);
	TodoReturn activeOpacityForIndex(int) = mac 0x2b83c0;
	TodoReturn calculateLightBGColor(cocos2d::_ccColor3B) = win 0x1df6c0, mac 0x2c74c0;
	TodoReturn createKeyframeCommand(int, cocos2d::CCArray*, GameObject*, int, int, bool, float, float, float, float, float, float, gd::vector<int> const&);
	TodoReturn handleObjectCollision(bool, int, int);
	TodoReturn removeAllPulseActions();
	TodoReturn toggleTimerPersistent(int, bool);
	TodoReturn tryGetMoveCommandNode(int);
	TodoReturn createTransformCommand(double, double, double, double, bool, float, int, int, int, float, bool, bool, int, int);
	TodoReturn processInheritedColors() = win 0x1d74e0, mac 0x2b8750;
	TodoReturn resetTempGroupCommands(bool);
	TodoReturn runTouchTriggerCommand(int, bool, TouchTriggerType, TouchTriggerControl, bool, gd::vector<int> const&, int, int);
	TodoReturn calculateInheritedColor(int, ColorAction*);
	TodoReturn processMoveCalculations();
	TodoReturn registerRotationCommand(GroupCommandObject2*, bool);
	TodoReturn runOpacityActionOnGroup(int, float, float, int, int);
	TodoReturn transferPersistentItems();
	TodoReturn controlActionsForTrigger(EffectGameObject*, GJActionCommand);
	TodoReturn hasPulseEffectForGroupID(int);
	TodoReturn registerCollisionTrigger(int, int, int, bool, bool, gd::vector<int> const&, int, int);
	TodoReturn traverseInheritanceChain(InheritanceNode*) = win 0x1d7730;
	TodoReturn calculateBaseActiveColors() = win 0x1d7410;
	TodoReturn createPlayerFollowCommand(float, float, int, float, float, int, int, int);
	TodoReturn controlActionsForControlID(int, GJActionCommand);
	TodoReturn updateActiveOpacityEffects();
	TodoReturn addAllInheritedColorActions(cocos2d::CCArray*);
	TodoReturn processCopyColorPulseActions() = win 0x1dd9a0, mac 0x2b8b00;
	TodoReturn removePersistentFromAllItems();
	TodoReturn removePersistentFromAllTimers();
	TodoReturn reset();

	virtual bool init() = win 0x1d6f50, mac 0x2b6e10;
}

[[link(android)]]
class GJAccountDelegate {
	virtual TodoReturn accountStatusChanged();
}

[[link(android)]]
class GJAccountSyncDelegate {
	virtual TodoReturn syncAccountFinished();
	virtual TodoReturn syncAccountFailed(BackupAccountError, int);
}

[[link(android)]]
class GJAccountLoginDelegate {
	virtual TodoReturn loginAccountFinished(int, int);
	virtual TodoReturn loginAccountFailed(AccountError);
}

[[link(android)]]
class GJAccountBackupDelegate {
	virtual TodoReturn backupAccountFinished();
	virtual TodoReturn backupAccountFailed(BackupAccountError, int);
}

[[link(android)]]
class GJAccountRegisterDelegate {
	virtual TodoReturn registerAccountFinished();
	virtual TodoReturn registerAccountFailed(AccountError);
}

[[link(android)]]
class GJAccountSettingsDelegate {
	virtual TodoReturn updateSettingsFinished();
	virtual TodoReturn updateSettingsFailed();
}

[[link(android)]]
class GJCommentListLayer : cocos2d::CCLayerColor {
	static GJCommentListLayer* create(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, bool) = win 0x203350, mac 0x27c4e0;

	bool init(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, bool) = win 0x203440, mac 0x27c5f0;
	~GJCommentListLayer();

    BoomListView* m_list;
}

[[link(android)]]
class ArtistCell : TableViewCell {
	~ArtistCell();

	void onNewgrounds(cocos2d::CCObject* sender);
	void onYouTube(cocos2d::CCObject* sender);

	void updateBGColor(int) = win 0x807B0;
	void loadFromObject(SongInfoObject*) = mac 0x226170, win 0x83840;
	ArtistCell(char const*, float, float);

	virtual bool init() = mac 0x2329c0;
	virtual void draw() = mac 0x232b20;
}

[[link(android)]]
class ButtonPage : cocos2d::CCLayer {
	static ButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint, int, float);

	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, float);
	~ButtonPage();
}

[[link(android)]]
class FontObject : cocos2d::CCObject {
	TodoReturn initWithConfigFile(char const*, float);
	~FontObject();

	TodoReturn getFontWidth(int) = mac 0x1feb60;

	TodoReturn parseConfigFile(char const*, float);
	TodoReturn createWithConfigFile(char const*, float);
}

[[link(android)]]
class GJItemIcon : cocos2d::CCSprite {
	static GJItemIcon* create(UnlockType unlockType, int itemID, cocos2d::_ccColor3B, cocos2d::_ccColor3B, bool, bool, bool, cocos2d::_ccColor3B) = mac 0x34ef90, win 0x1F0790;

	bool init(UnlockType, int, cocos2d::_ccColor3B, cocos2d::_ccColor3B, bool, bool, bool, cocos2d::_ccColor3B) = mac 0x34f0a0, win 0x1f0870;
	~GJItemIcon();

	TodoReturn scaleForType(UnlockType);
	TodoReturn createStoreItem(UnlockType, int, bool, cocos2d::_ccColor3B);
	TodoReturn darkenStoreItem(ShopType);
	TodoReturn darkenStoreItem(cocos2d::_ccColor3B);
	static GJItemIcon* createBrowserItem(UnlockType unlockType, int itemID) {
		return GJItemIcon::create(unlockType, itemID, {0xAF, 0xAF, 0xAF}, {0xFF, 0xFF, 0xFF}, false, true, true, {0xFF, 0xFF, 0xFF});
	}
	TodoReturn toggleEnabledState(bool);
	TodoReturn changeToLockedState(float);
	TodoReturn unlockedColorForType(int);

	virtual void setOpacity(unsigned char) = mac 0x34f600;
}

[[link(android)]]
class GJPathPage : FLAlertLayer, FLAlertLayerProtocol, GJPurchaseDelegate {
	static GJPathPage* create(int, GJPathsLayer*) = win 0x1F8990;

	bool init(int, GJPathsLayer*) = win 0x1F8A40;
	~GJPathPage();

	void onIconInfo(cocos2d::CCObject* sender);
	void onActivatePath(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onUnlock(cocos2d::CCObject* sender);

	TodoReturn playUnlockAnimation();
	TodoReturn unlockAnimationStep2();
	TodoReturn unlockAnimationStep3();
	TodoReturn showCantAffordMessage(GJStoreItem*);
	TodoReturn unlockAnimationFinished();

	virtual void registerWithTouchDispatcher() = mac 0x2df5c0;
	virtual void keyBackClicked() = mac 0x2df480;
	virtual TodoReturn show() = mac 0x2df600;
	virtual TodoReturn didPurchaseItem(GJStoreItem*) = mac 0x2dd930;
}

[[link(android)]]
class GJUserCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
	~GJUserCell();

	void onSendMessage(cocos2d::CCObject* sender);
	void onUnblockUser(cocos2d::CCObject* sender) = mac 0x234640;
	void onViewProfile(cocos2d::CCObject* sender);
	void onRemoveFriend(cocos2d::CCObject* sender);
	void onViewFriendRequest(cocos2d::CCObject* sender);
	void onCancelFriendRequest(cocos2d::CCObject* sender);

	void loadFromScore(GJUserScore*) = mac 0x22a2e0, win 0x87F80;
	void updateBGColor(int) = win 0x807B0;
	GJUserCell(char const*, float, float);

	virtual bool init() = mac 0x2345f0;
	virtual void draw();
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x234d70;
	virtual TodoReturn uploadActionFinished(int, int) = mac 0x235020;
	virtual TodoReturn uploadActionFailed(int, int) = mac 0x235210;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = mac 0x235380;
}

[[link(android)]]
class HardStreak : cocos2d::CCDrawNode {
	static HardStreak* create();

	~HardStreak();

	TodoReturn firstSetup();
	TodoReturn stopStroke();
	TodoReturn resumeStroke();
	callback void updateStroke(float) = win 0x221C00, mac 0x96e30;
	TodoReturn clearAboveXPos(float);
	TodoReturn normalizeAngle(double);
	TodoReturn clearBehindXPos(float);
	TodoReturn createDuplicate();
	TodoReturn quadCornerOffset(cocos2d::CCPoint, cocos2d::CCPoint, float);
	TodoReturn scheduleAutoUpdate();
	TodoReturn reset();
	TodoReturn addPoint(cocos2d::CCPoint) = win 0x2224F0;

	virtual bool init() = mac 0x96c80;
}


[[link(android)]]
class PriceLabel : cocos2d::CCNode {
	static PriceLabel* create(int);

	bool init(int);
	~PriceLabel();

	/* unverified signature */
	void setOpacity(float);
	/* unverified signature */
	void setColor(cocos2d::_ccColor3B);
	/* unverified signature */
	void setPrice(int);
}

[[link(android)]]
class SFXBrowser : FLAlertLayer, MusicDownloadDelegate, TableViewCellDelegate, SetTextPopupDelegate, SelectSFXSortDelegate {
	static SFXBrowser* create(int);

	bool init(int);
	~SFXBrowser();

	/* unverified signature */
	void setTextPopupClosed(SetTextPopup*, gd::string) = mac 0x41e7b0;

	void onExitFolder(cocos2d::CCObject* sender);
	void onClearSearch(cocos2d::CCObject* sender);
	void onUpdateLibrary(cocos2d::CCObject* sender);
	void onToggleCompactMode(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	void onCredits(cocos2d::CCObject* sender);
	void onSorting(cocos2d::CCObject* sender);

	TodoReturn updatePageLabel();
	TodoReturn trySetupSFXBrowser();
	TodoReturn setupList(SFXSearchResult*);

	virtual void registerWithTouchDispatcher() = mac 0x41eac0;
	virtual void keyBackClicked() = mac 0x41ea20;
	virtual TodoReturn musicActionFinished(GJMusicAction) = mac 0x41e090;
	virtual TodoReturn musicActionFailed(GJMusicAction) = mac 0x41e1a0;
	virtual TodoReturn sortSelectClosed(SelectSFXSortLayer*) = mac 0x41e560;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = mac 0x41e870;
	virtual TodoReturn getSelectedCellIdx() = mac 0x41e9e0;
	virtual TodoReturn shouldSnapToSelected() = mac 0x41ea00;
}

[[link(android)]]
class ShardsPage : FLAlertLayer {
	static ShardsPage* create();

	~ShardsPage();

	void onIconInfo(cocos2d::CCObject* sender);
	void onSwitchPage(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn goToPage(int);

	virtual bool init() = mac 0x4a0e00;
	virtual void registerWithTouchDispatcher() = mac 0x4a2c70;
	virtual void keyBackClicked() = mac 0x4a2c00;
	virtual TodoReturn show() = mac 0x4a2a70;
}

[[link(android)]]
class SongObject : cocos2d::CCObject {
	static SongObject* create(int);

	bool init(int);
	~SongObject();
}

[[link(android)]]
class SongsLayer : GJDropDownLayer {
	static SongsLayer* create();

	~SongsLayer();

	virtual TodoReturn customSetup() = mac 0x4e9da0;
}

[[link(android)]]
class StatsLayer : GJDropDownLayer {
	static StatsLayer* create();

	~StatsLayer();

	virtual TodoReturn customSetup() = mac 0x95690;
}


[[link(android)]]
class CCCountdown : cocos2d::CCSprite {
	static CCCountdown* create();

	~CCCountdown();

	TodoReturn lapFinished();
	TodoReturn startTimerWithSeconds(float, cocos2d::SEL_CallFunc, cocos2d::CCNode*);

	virtual bool init() = mac 0x782f70;
	virtual void setOpacity(unsigned char) = mac 0x783340;
}

[[link(android)]]
class CCMoveCNode : cocos2d::CCObject {
	static CCMoveCNode* create();

	bool init();
	~CCMoveCNode();

	TodoReturn reset();
}

[[link(android)]]
class CCURLObject : cocos2d::CCObject {
	static CCURLObject* create(gd::string, gd::string);

	bool init(gd::string, gd::string);
	~CCURLObject();
}


[[link(android)]]
class GJBigSprite : cocos2d::CCNode {
	static GJBigSprite* create();

	~GJBigSprite();

	TodoReturn unloadSprite(gd::string, int);
	TodoReturn loadSpriteAsync(gd::string, int);
	TodoReturn updateSpriteVisibility();
	TodoReturn finishedLoadingSpriteAsync(cocos2d::CCObject*);
	TodoReturn unloadAll();

	virtual bool init() = mac 0x247f80;
}

[[link(android)]]
class GJMapObject : cocos2d::CCNode {
	static GJMapObject* create(cocos2d::CCNode*);

	bool init(cocos2d::CCNode*);
	~GJMapObject();

	/* unverified signature */
	void setObjectOrigin(cocos2d::CCPoint, float);

	TodoReturn playerJump();
	TodoReturn monsterIdle();
	TodoReturn monsterJump();
	TodoReturn moveMonster(cocos2d::CCPoint, float);
	TodoReturn moveMonster();
	TodoReturn moveFinished();
	TodoReturn touchMonster();
	TodoReturn updateShadow(float, float, cocos2d::CCPoint);
	TodoReturn createMonster(int);
	TodoReturn startPlayerJumpLoop();
	TodoReturn startMonsterJumpLoop();
}

[[link(android)]]
class GJScoreCell : TableViewCell, FLAlertLayerProtocol {
	~GJScoreCell();

	void onMoreLevels(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender) = win 0x86f20;
	void onBan(cocos2d::CCObject* sender);
	void onCheck(cocos2d::CCObject* sender);

	void loadFromScore(GJUserScore*) = mac 0x228500, win 0x85EB0;
	void updateBGColor(int) = win 0x807B0;
	GJScoreCell(char const*, float, float);

	virtual bool init() = mac 0x2339c0;
	virtual void draw() = mac 0x233c70;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x233bb0;

	GJUserScore* m_score;
}

[[link(android)]]
class GJShopLayer : cocos2d::CCLayer, GJPurchaseDelegate, DialogDelegate, RewardedVideoDelegate {
	static GJShopLayer* create(ShopType) = win 0x214D90;

	bool init(ShopType) = win 0x214E30, mac 0x300240;
	~GJShopLayer();

	void onPlushies(cocos2d::CCObject* sender);
	void onSelectItem(cocos2d::CCObject* sender) = win 0x216580;
	void onCommunityCredits(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender) = mac 0x301b50;
	void onVideoAd(cocos2d::CCObject* sender);

	TodoReturn exitVideoAdItems();
	void showReactMessage() = win 0x217100;
	TodoReturn showCantAffordMessage(GJStoreItem*) = win 0x2166B0;
	TodoReturn updateCurrencyCounter();
	TodoReturn scene(ShopType) = win 0x214D50;

	virtual void onExit() = mac 0x301e10;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x304340;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x3046b0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x3046d0;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x3046f0;
	virtual void registerWithTouchDispatcher() = mac 0x304730;
	virtual void keyBackClicked() = mac 0x302dc0;
	virtual TodoReturn didPurchaseItem(GJStoreItem*) = mac 0x3026c0;
	virtual TodoReturn rewardedVideoFinished() = mac 0x302100;
	virtual TodoReturn dialogClosed(DialogLayer*) = mac 0x304180;
}

[[link(android)]]
class GJStoreItem : cocos2d::CCNode {
	static GJStoreItem* create(int, int, int, int, ShopType);

	bool init(int, int, int, int, ShopType) = mac 0x8b600;
	~GJStoreItem();

	TodoReturn getCurrencyKey();
}

[[link(android)]]
class GJWorldNode : cocos2d::CCNode {
	static GJWorldNode* create(int, WorldSelectLayer*);

	bool init(int, WorldSelectLayer*);
	~GJWorldNode();

	void onLevel(cocos2d::CCObject* sender);

	TodoReturn addDotsToLevel(int, bool);
	TodoReturn unlockActiveItem();
	TodoReturn dotPositionForLevel(int, int);
	TodoReturn positionForLevelButton(int);
	TodoReturn playStep1();
	TodoReturn playStep2();
	TodoReturn playStep3();
}

[[link(android)]]
class MapPackCell : TableViewCell {
	~MapPackCell();

	void onClaimReward(cocos2d::CCObject* sender);
	void onClick(cocos2d::CCObject* sender) = win 0x81690;

	TodoReturn reloadCell();
	void updateBGColor(int) = win 0x807B0;
	void loadFromMapPack(GJMapPack*) = mac 0x223ab0, win 0x80C40;
	TodoReturn playCompleteEffect();
	MapPackCell(char const*, float, float);

	virtual bool init() = mac 0x230a30;
	virtual void draw() = mac 0x230ea0;
}

[[link(android)]]
class OptionsCell : TableViewCell {
	~OptionsCell();

	void onToggleOption(cocos2d::CCObject* sender);

	void updateBGColor(int) = win 0x807B0;
	void loadFromObject(OptionsObject*) = mac 0x2232d0, win 0x833F0;
	OptionsCell(char const*, float, float);
}

[[link(android)]]
class RewardsPage : FLAlertLayer, FLAlertLayerProtocol, GJRewardDelegate {
	static RewardsPage* create() = win 0x2EF270;

	~RewardsPage();

	TodoReturn getRewardFrame(int, int);

	void onFreeStuff(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onReward(cocos2d::CCObject* sender);

	TodoReturn updateTimers(float) = mac 0x1f9460;
	TodoReturn tryGetRewards();
	TodoReturn unlockLayerClosed(RewardUnlockLayer*);

	virtual bool init() = mac 0x1f8590, win 0x2EF310;
	virtual void registerWithTouchDispatcher() = mac 0x1f9e50;
	virtual void keyBackClicked() = mac 0x1f9de0;
	virtual TodoReturn show() = mac 0x1f9c80;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x1f9dc0;
	virtual TodoReturn rewardsStatusFinished(int) = mac 0x1f9900;
	virtual TodoReturn rewardsStatusFailed() = mac 0x1f9b90;

	cocos2d::CCLabelBMFont* m_leftLabel;
	cocos2d::CCLabelBMFont* m_rightLabel;
	CCMenuItemSpriteExtra* m_leftChest;
	CCMenuItemSpriteExtra* m_rightChest;
	bool m_leftOpen;
	bool m_rightOpen;
	cocos2d::CCNode* m_openLayer;
}

[[link(android)]]
class SecretLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol {
	static SecretLayer* create();

	~SecretLayer();

	TodoReturn getMessage();
	TodoReturn getBasicMessage();
	TodoReturn getThreadMessage();

	void onBack(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);

	TodoReturn nodeWithTag(int);
	TodoReturn selectAThread();
	TodoReturn playCoinEffect();
	TodoReturn updateSearchLabel(char const*);
	TodoReturn updateMessageLabel(gd::string);
	TodoReturn scene();

	virtual bool init() = win 0x2fe1d0, mac 0x5bfb20;
	virtual void keyBackClicked() = mac 0x5c3930;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = mac 0x5c2ac0;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x5c2b80;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x5c2c50;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x5c2aa0;
}

[[link(android)]]
class ShaderLayer : cocos2d::CCLayer {
	static ShaderLayer* create() = win 0x374390;

	~ShaderLayer();

	TodoReturn tweenValue(float, float, int, float, int, float);
	TodoReturn setupShader(bool);
	TodoReturn triggerBulge(float, float, float, float, float, int, int, float, bool);
	TodoReturn triggerSepia(float, float, int, float);
	TodoReturn updateZLayer(int, int, bool);
	TodoReturn triggerGlitch(float, float, float, float, float, float, float, bool);
	TodoReturn triggerPinchX(float, float, float, float, float, bool, int, int, float, bool);
	TodoReturn triggerPinchY(float, float, float, float, float, bool, int, int, float, bool);
	TodoReturn preBulgeShader();
	TodoReturn prePinchShader();
	TodoReturn preSepiaShader();
	TodoReturn tweenValueAuto(float, int, float, int, float);
	TodoReturn preCommonShader() = mac 0x3aa510;
	TodoReturn preGlitchShader() = mac 0x3ad250;
	TodoReturn resetAllShaders();
	TodoReturn toggleAntiAlias(bool);
	TodoReturn triggerHueShift(float, float, int, float);
    TodoReturn setupBulgeShader() = win 0x37aa00;
    TodoReturn setupPinchShader() = win 0x37af60;
	TodoReturn setupSepiaShader();
	TodoReturn triggerGrayscale(float, float, bool, int, int, float);
	TodoReturn triggerPixelateX(float, float, bool, bool, int, float, bool);
	TodoReturn triggerPixelateY(float, float, bool, bool, int, float, bool);
	TodoReturn triggerShockLine(float, float, bool, bool, bool, bool, float, float, float, float, float, float, int, bool, bool, bool, float, bool, float, int, float);
	TodoReturn triggerShockWave(float, float, float, float, float, float, float, bool, float, float, float, int, bool, bool, bool, float, float, bool, float, int, float);
	TodoReturn preHueShiftShader();
	TodoReturn prePixelateShader() = mac 0x3adef0;
	TodoReturn triggerChromaticX(float, float, int, float, bool);
	TodoReturn triggerChromaticY(float, float, int, float, bool);
	TodoReturn triggerLensCircle(float, float, float, float, int, int, float, float, int, float, bool);
	TodoReturn triggerRadialBlur(float, float, float, float, int, float, float, bool, int, int, float, bool);
	TodoReturn preChromaticShader() = mac 0x3ad7e0;
	TodoReturn preGrayscaleShader() = mac 0x3af3e0;
	TodoReturn preShockLineShader() = mac 0x3acd30;
	TodoReturn preShockWaveShader() = mac 0x3ac670;
	TodoReturn triggerColorChange(float, float, float, float, float, float, float, int, float);
	TodoReturn triggerInvertColor(float, float, float, float, float, bool, bool, bool, int, float);
	TodoReturn triggerMotionBlurX(float, float, float, float, int, float, bool, int, int, float, bool, bool);
	TodoReturn triggerMotionBlurY(float, float, float, float, int, float, bool, int, int, float, bool, bool);
	TodoReturn performCalculations() = win 0x37c330, mac 0x3afea0;
	TodoReturn preLensCircleShader() = mac 0x3ae720;
	TodoReturn preMotionBlurShader() = mac 0x3aecb0;
	TodoReturn preRadialBlurShader() = mac 0x3ae9f0;
	TodoReturn setupCommonUniforms();
    TodoReturn setupGlitchUniforms() = win 0x377e70;
    TodoReturn setupHueShiftShader() = win 0x37b6b0;
	TodoReturn updateEffectOffsets(cocos2d::CCPoint);
	TodoReturn objectPosToShaderPos(cocos2d::CCPoint);
	TodoReturn preColorChangeShader() = mac 0x3af900;
	TodoReturn preInvertColorShader();
	TodoReturn preSplitScreenShader() = mac 0x3afb10;
	TodoReturn resetTargetContainer();
    TodoReturn setupGrayscaleShader() = win 0x37b0a0;
	TodoReturn setupLensCircleShader();
    TodoReturn setupMotionBlurShader() = win 0x37a430;
    TodoReturn setupRadialBlurShader() = win 0x379fa0;
	TodoReturn updateShockLineCenter(cocos2d::CCPoint) = mac 0x3accf0;
	TodoReturn updateShockWaveCenter(cocos2d::CCPoint) = mac 0x3ac630;
	TodoReturn prepareTargetContainer();
    TodoReturn setupChromaticUniforms() = win 0x378480;
    TodoReturn setupColorChangeShader() = win 0x37bad0;
	TodoReturn setupInvertColorShader();
    TodoReturn setupShockLineUniforms() = win 0x3776e0;
    TodoReturn setupShockWaveUniforms() = win 0x376b20;
    TodoReturn setupSplitScreenShader() = win 0x37be40;
	TodoReturn triggerChromaticGlitch(bool, float, float, float, float, float, float, float, int, float, bool, bool);
	TodoReturn triggerSplitScreenCols(float, float, int, float);
	TodoReturn triggerSplitScreenRows(float, float, int, float);
	TodoReturn updateMotionBlurSpeedX(float, float) = mac 0x3aef90;
	TodoReturn updateMotionBlurSpeedY(float, float) = mac 0x3aeff0;
	TodoReturn preChromaticGlitchShader() = mac 0x3adab0;
    TodoReturn setupChromaticGlitchUniforms() = win 0x3789c0;

	virtual void update(float) = mac 0x3aa350;
	virtual bool init() = mac 0x3a8bb0;
	virtual void visit() = win 0x37c480, mac 0x3b01c0;
}

[[link(android)]]
class UploadPopup : FLAlertLayer, LevelUploadDelegate {
	static UploadPopup* create(GJGameLevel*);

	bool init(GJGameLevel*);
	~UploadPopup();

	void onReturnToLevel(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = mac 0x260020;
	virtual TodoReturn show() = mac 0x25ffb0;
	virtual TodoReturn levelUploadFinished(GJGameLevel*) = mac 0x25fb50;
	virtual TodoReturn levelUploadFailed(GJGameLevel*) = mac 0x25fda0;
}

[[link(android)]]
class AccountLayer : GJDropDownLayer, GJAccountDelegate, GJAccountBackupDelegate, GJAccountSyncDelegate, FLAlertLayerProtocol {
	static AccountLayer* create();

	~AccountLayer();

	void onRegister(cocos2d::CCObject* sender);
	void onHelp(cocos2d::CCObject* sender);
	void onMore(cocos2d::CCObject* sender);
	void onSync(cocos2d::CCObject* sender);
	void onLogin(cocos2d::CCObject* sender);
	void onBackup(cocos2d::CCObject* sender);

	TodoReturn updatePage(bool);
	TodoReturn hideLoadingUI();
	TodoReturn showLoadingUI();
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn doSync();
	TodoReturn doBackup();
	TodoReturn toggleUI(bool);
	TodoReturn exitLayer();

	virtual TodoReturn customSetup() = mac 0xc85a0;
	virtual TodoReturn layerHidden() = mac 0xca520;
	virtual TodoReturn backupAccountFinished() = mac 0xc9a30;
	virtual TodoReturn backupAccountFailed(BackupAccountError, int) = mac 0xc9bf0;
	virtual TodoReturn syncAccountFinished() = mac 0xc9fe0;
	virtual TodoReturn syncAccountFailed(BackupAccountError, int) = mac 0xca160;
	virtual TodoReturn accountStatusChanged() = mac 0xc9a00;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0xca400;
}



[[link(android)]]
class CCLightFlash : cocos2d::CCNode {
	static CCLightFlash* create();

	~CCLightFlash();

	TodoReturn playEffect(cocos2d::CCPoint, cocos2d::_ccColor3B, float, float, float, float, float, float, float, float, float, float, float, float, float, float, int, bool, bool, float);
	TodoReturn cleanupFlash();
	TodoReturn removeLights();
	TodoReturn fadeAndRemove();
	TodoReturn showFlash();

	virtual bool init() = mac 0x4de720;
}

[[link(android)]]
class CCLightStrip : cocos2d::CCNode {
	static CCLightStrip* create(float, float, float, float, float);

	bool init(float, float, float, float, float);
	~CCLightStrip();

	virtual void draw() = mac 0x4df1f0;
	virtual void updateTweenAction(float, char const*) = mac 0x4df380;
}

[[link(android)]]
class CCSpritePart : CCSpritePlus {
	static CCSpritePart* create(cocos2d::CCTexture2D*);

	~CCSpritePart();

	TodoReturn getBeingUsed();

	/* unverified signature */
	void setBeingUsed(bool);

	TodoReturn frameChanged(gd::string);
	TodoReturn hideInactive();
	TodoReturn resetTextureRect();
	TodoReturn markAsNotBeingUsed();
	TodoReturn updateDisplayFrame(gd::string);
	TodoReturn createWithSpriteFrameName(char const*);

	virtual void setVisible(bool) = mac 0x353850;
}

[[link(android)]]
class ColorAction2 {
	TodoReturn resetAction();
	TodoReturn updateCustomColor(cocos2d::_ccColor3B, cocos2d::_ccColor3B);
	virtual void step(float);
	// ColorAction2(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float, double, bool, int, float, float);
}

[[link(android)]]
class FindBPMLayer : CreateGuidelinesLayer {
	static FindBPMLayer* create(int);

	bool init(int);
	~FindBPMLayer();

	void onInfo(cocos2d::CCObject* sender) = mac 0x4e5a50;
	void onClose(cocos2d::CCObject* sender) = mac 0x4e5a60;
	void onRecord(cocos2d::CCObject* sender) = mac 0x4e57c0;

	TodoReturn calculateBPM();

	virtual TodoReturn playMusic() = mac 0x4e58d0;
	virtual TodoReturn registerTouch() = mac 0x4e5960;
	virtual TodoReturn recordingDidStop() = mac 0x4e5800;
}

[[link(android)]]
class GauntletNode : cocos2d::CCNode {
	static GauntletNode* create(GJMapPack*) = win 0x185160;

	bool init(GJMapPack*) = mac 0x53ed50, win 0x185220;
	~GauntletNode() = win 0x1836C0;

	void onClaimReward() = win 0x1865E0;

	static gd::string nameForType(GauntletType) = mac 0x5403e0, win 0x186A70;
	gd::string frameForType(GauntletType) = mac 0x5408a0, win 0x186610;
}

[[link(android)]]
class GJHttpResult : cocos2d::CCNode {
	static GJHttpResult* create(bool, gd::string, gd::string, GJHttpType);

	bool init(bool, gd::string, gd::string, GJHttpType);
	~GJHttpResult();
}

[[link(android)]]
class GJLocalScore : cocos2d::CCObject {
	static GJLocalScore* create(int, int) = mac 0x52ca40;

	bool init(int, int);
	~GJLocalScore();
}

[[link(android)]]
class GJMPDelegate {
	virtual TodoReturn joinLobbyFinished(int);
	virtual TodoReturn joinLobbyFailed(int, GJMPErrorCode);
	virtual TodoReturn didUploadMPComment(int);
	virtual TodoReturn updateComments();
}

[[link(android)]]
class GJPathsLayer : FLAlertLayer, FLAlertLayerProtocol {
	static GJPathsLayer* create() = mac 0x2dad20;

	~GJPathsLayer();

	void onPath(cocos2d::CCObject* sender) = mac 0x2db510;
	void onClose(cocos2d::CCObject* sender);

	static gd::string nameForPath(int) = mac 0x2dab80;
	TodoReturn darkenButtons(bool);

	virtual bool init() = mac 0x2dae70, win 0x1F82A0;
	virtual void onExit() = win 0x1F8756, mac 0x2db590;
	virtual void registerWithTouchDispatcher() = mac 0x2db9b0;
	virtual void keyBackClicked() = mac 0x2db8e0;
	virtual TodoReturn show() = mac 0x2db9f0;
}

[[link(android)]]
class GJPathSprite : CCSpriteCOpacity {
	static GJPathSprite* create(int);

	bool init(int) = mac 0x2df780;
	~GJPathSprite();

	TodoReturn updateState() = mac 0x2db490;
	TodoReturn addRankLabel(int) = mac 0x2df890;
	TodoReturn addShardSprite() = mac 0x2df370;
	TodoReturn changeToLockedArt() = mac 0x2de380;
}

[[link(android)]]
class GJPromoPopup : FLAlertLayer {
	static GJPromoPopup* create(gd::string) = mac 0x2915e0, win 0x211b30;

	bool init(gd::string) = mac 0x291760, win 0x211bf0;
	~GJPromoPopup();

	void onClose(cocos2d::CCObject* sender);

	virtual void onExit() = mac 0x291a40;
	virtual void registerWithTouchDispatcher() = mac 0x291b50;
	virtual void keyBackClicked() = mac 0x291a80;
	virtual TodoReturn show() = mac 0x291b90;
}

[[link(android)]]
class GJRewardItem : cocos2d::CCObject {
	static GJRewardItem* create(int, int, gd::string);
	static GJRewardItem* create();

	bool init(int, int, gd::string);
	~GJRewardItem();

	TodoReturn getRewardCount(SpecialRewardItem);
	TodoReturn getNextShardType(SpecialRewardItem);
	TodoReturn getRandomShardType();
	TodoReturn getRewardObjectForType(SpecialRewardItem);
	TodoReturn getRandomNonMaxShardType();

	TodoReturn dataLoaded(DS_Dictionary*);
	/* unverified signature */
	bool isShardType(SpecialRewardItem);
	TodoReturn createSpecial(GJRewardType, int, int, SpecialRewardItem, int, SpecialRewardItem, int, int, int) = mac 0x78290;
	TodoReturn createWithCoder(DS_Dictionary*) = mac 0x8adb0;
	TodoReturn createWithObject(GJRewardType, GJRewardObject*);
	TodoReturn rewardItemToStat(SpecialRewardItem);
	TodoReturn createWithObjects(GJRewardType, cocos2d::CCArray*);

	virtual void encodeWithCoder(DS_Dictionary*) = mac 0x8aef0;
	virtual bool canEncode() = mac 0x8af50;

    int m_chestID;
    int m_timeRemaining;
    GJRewardType m_rewardType;
    cocos2d::CCArray* m_rewardObjects;
    bool m_unk;
}

[[link(android)]]
class GJValueTween {
	virtual void step(float);
}

[[link(android)]]
class MPLobbyLayer : cocos2d::CCLayer, GJMPDelegate, UploadPopupDelegate, UploadActionDelegate, FLAlertLayerProtocol, TextInputDelegate {
	static MPLobbyLayer* create(int);

	bool init(int);
	~MPLobbyLayer();

	TodoReturn onUpdateLobby();
	void onBack(cocos2d::CCObject* sender);
	void onBtn1(cocos2d::CCObject* sender);
	void onBtn2(cocos2d::CCObject* sender);
	void onBtn3(cocos2d::CCObject* sender);
	void onComment(cocos2d::CCObject* sender);

	TodoReturn postComment();
	TodoReturn updateLobby(float);
	TodoReturn tryExitLobby();
	TodoReturn scene(int);

	virtual void keyBackClicked() = mac 0x46fce0;
	virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x470490;
	virtual TodoReturn joinLobbyFinished(int) = mac 0x46fe60;
	virtual TodoReturn joinLobbyFailed(int, GJMPErrorCode) = mac 0x4702c0;
	virtual TodoReturn updateComments() = mac 0x470190;
	virtual TodoReturn didUploadMPComment(int) = mac 0x4702a0;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = mac 0x4703c0;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x4703e0;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x470400;
	virtual void keyUp(cocos2d::enumKeyCodes) = mac 0x4704d0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x470420;
	virtual TodoReturn uploadActionFinished(int, int) = mac 0x4704f0;
	virtual TodoReturn uploadActionFailed(int, int) = mac 0x470700;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = mac 0x4708a0;
}

[[link(android)]]
class MusicBrowser : FLAlertLayer, MusicDownloadDelegate, TableViewCellDelegate, SetTextPopupDelegate, FLAlertLayerProtocol, SliderDelegate {
	static MusicBrowser* create(int);

	bool init(int);
	~MusicBrowser();

	/* unverified signature */
	void setTextPopupClosed(SetTextPopup*, gd::string) = mac 0x5d4090;

	void onTagFilters(cocos2d::CCObject* sender);
	void onClearSearch(cocos2d::CCObject* sender);
	void onArtistFilters(cocos2d::CCObject* sender);
	void onUpdateLibrary(cocos2d::CCObject* sender);
	void onPlaybackControl(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updatePageLabel();
	TodoReturn setupSongControls();
	TodoReturn trySetupMusicBrowser();
	TodoReturn setupList(MusicSearchResult*);

	virtual void update(float) = mac 0x5d3510;
	virtual void registerWithTouchDispatcher() = mac 0x5d4460;
	virtual void keyBackClicked() = mac 0x5d4330;
	virtual TodoReturn musicActionFinished(GJMusicAction) = mac 0x5d3ce0;
	virtual TodoReturn musicActionFailed(GJMusicAction) = mac 0x5d3df0;
	virtual TodoReturn sliderEnded(Slider*) = mac 0x5d3690;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = mac 0x5d4010;
	virtual TodoReturn getSelectedCellIdx() = mac 0x5d4070;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x5d4290;
}

[[link(android)]]
class OptionsLayer : GJDropDownLayer, FLAlertLayerProtocol {
	static OptionsLayer* create() = win 0x2ab510, mac 0x75bcf0;

	~OptionsLayer();

	void onMenuMusic(cocos2d::CCObject* sender) = win 0x2abf20;
	void onProgressBar(cocos2d::CCObject* sender);
	void onSecretVault(cocos2d::CCObject* sender) = win 0x2ac1d0;
	void onSoundtracks(cocos2d::CCObject* sender) = win 0x2ac170;
	void onRecordReplays(cocos2d::CCObject* sender); // mobile platforms only
	void onHelp(cocos2d::CCObject* sender) = win 0x2ac640;
	void onRate(cocos2d::CCObject* sender) = win 0x2ac600;
	void onVideo(cocos2d::CCObject* sender) = win 0x2ac560;
	void onAccount(cocos2d::CCObject* sender) = win 0x2ac5c0;
	void onOptions(cocos2d::CCObject* sender) = win 0x2ac1b0;
	void onSupport(cocos2d::CCObject* sender) = win 0x2ac580;

	TodoReturn tryEnableRecord(); // mobile platforms only
	void sfxSliderChanged(cocos2d::CCObject*) = win 0x2ac0b0;
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	void musicSliderChanged(cocos2d::CCObject*) = win 0x2abfc0;
	void exitLayer() = win 0x2ab110;

	virtual void customSetup() = win 0x2ab510, mac 0x75bf50;
	virtual void layerHidden() = win 0x2ac660, mac 0x75d380;
	virtual void FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x75d3f0;
}


[[link(android)]]
class SecretLayer2 : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DialogDelegate {
	static SecretLayer2* create() = mac 0x478d00;

	~SecretLayer2();

	TodoReturn getMessage();
	TodoReturn getBasicMessage();
	TodoReturn getErrorMessage();
	TodoReturn getThreadMessage();

	void onSecretLevel(cocos2d::CCObject* sender) = win 0x2ff730;
	void onBack(cocos2d::CCObject* sender);
	void onDoor(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender) = mac 0x47a0d0, win 0x2ffcc0;

	TodoReturn nodeWithTag(int);
	TodoReturn selectAThread();
	TodoReturn playCoinEffect();
	TodoReturn showSecretLevel();
	void updateSearchLabel(char const*) = win 0x301260;
	TodoReturn showCompletedLevel();
	TodoReturn updateMessageLabel(gd::string);
	TodoReturn scene() = mac 0x478cc0;

	virtual bool init() = mac 0x478e30, win 0x2fe1d0;
	virtual void onExit() = mac 0x47f0b0;
	virtual void keyBackClicked() = mac 0x47efc0;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = mac 0x47e0d0;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x47e190;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x47e260;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x47e0b0;
	virtual TodoReturn dialogClosed(DialogLayer*) = mac 0x47cce0;
}

[[link(android)]]
class SecretLayer3 : cocos2d::CCLayer, DialogDelegate {
	static SecretLayer3* create();

	~SecretLayer3();

	void onBack(cocos2d::CCObject* sender);
	void onClick(cocos2d::CCObject* sender);
	void onChest01(cocos2d::CCObject* sender);
	void onChest02(cocos2d::CCObject* sender);

	TodoReturn animateEyes();
	TodoReturn revealStep1();
	TodoReturn revealStep2();
	TodoReturn revealStep3();
	TodoReturn revealStep4();
	TodoReturn revealStep5();
	TodoReturn showUnlockDialog();
	TodoReturn firstInteractionStep1();
	TodoReturn firstInteractionStep2();
	TodoReturn firstInteractionStep3();
	TodoReturn firstInteractionStep4();
	TodoReturn scene();

	virtual bool init() = mac 0x47f550;
	virtual void onExit() = mac 0x4843a0;
	virtual void keyBackClicked() = mac 0x484370;
	virtual TodoReturn dialogClosed(DialogLayer*) = mac 0x484050;
}

[[link(android)]]
class SecretLayer4 : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, DialogDelegate {
	static SecretLayer4* create();

	~SecretLayer4();

	TodoReturn getMessage();
	TodoReturn getBasicMessage();
	TodoReturn getErrorMessage();
	TodoReturn getThreadMessage();

	void onBack(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);
	void onChest01(cocos2d::CCObject* sender);

	TodoReturn showDialog(int);
	TodoReturn nodeWithTag(int);
	TodoReturn selectAThread();
	TodoReturn playCoinEffect();
	TodoReturn showFirstDialog();
	TodoReturn updateSearchLabel(char const*);
	TodoReturn updateMessageLabel(gd::string);
	TodoReturn scene();

	virtual bool init() = mac 0x38e950;
	virtual void onExit() = mac 0x393150;
	virtual void keyBackClicked() = mac 0x393060;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = mac 0x3921b0;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x392270;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x392340;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x392190;
	virtual TodoReturn dialogClosed(DialogLayer*) = mac 0x391980;
}


[[link(android)]]
class SimpleObject : cocos2d::CCObject {
	static SimpleObject* create();

	bool init();
	~SimpleObject();
}

[[link(android)]]
class SimplePlayer : cocos2d::CCSprite {
	static SimplePlayer* create(int) = win 0x1ef610, mac 0x349730;

	bool init(int) = win 0x1ef6b0, mac 0x34e0e0;
	~SimplePlayer();

	/* unverified signature */
	void setSecondColor(cocos2d::_ccColor3B const& color) {
		m_secondLayer->setColor(color);
		updateColors();
	}

	/* unverified signature */
	void setColors(cocos2d::_ccColor3B const&, cocos2d::_ccColor3B const&);
	/* unverified signature */
	void setFrames(char const*, char const*, char const*, char const*, char const*) = win 0x1f0540;

	TodoReturn updateColors() = win 0x1efe50, mac 0x34cf50;
	TodoReturn asyncLoadIcon(int, IconType);
	TodoReturn hideSecondary();
	TodoReturn createRobotSprite(int) = win 0x1efd50;
	TodoReturn updatePlayerFrame(int, IconType) = win 0x1f0140, mac 0x349a00;
	TodoReturn createSpiderSprite(int) = mac 0x349850, win 0x1efda0;
	TodoReturn iconFinishedLoading(int, IconType);
	void enableCustomGlowColor(cocos2d::_ccColor3B const& color) {
		m_hasCustomGlowColor = true;
		m_glowColor = color;
	}

	void disableCustomGlowColor() {
		m_hasCustomGlowColor = false;
	}

	void setGlowOutline(cocos2d::ccColor3B color) {
		enableCustomGlowColor(color);
		m_hasGlowOutline = true;
		updateColors();
	}

	void disableGlowOutline() {
		disableCustomGlowColor();
		m_hasGlowOutline = false;
		updateColors();
	}

	TodoReturn hideAll();

	virtual void setOpacity(unsigned char) = win 0x1f06f0, mac 0x34ece0;
	virtual void setColor(cocos2d::_ccColor3B const&) = win 0x1efe20, mac 0x34e980;

	cocos2d::CCSprite* m_firstLayer;
	cocos2d::CCSprite* m_secondLayer;
    cocos2d::CCSprite* m_birdDome;
    cocos2d::CCSprite* m_outlineSprite;
    cocos2d::CCSprite* m_detailSprite;
    GJRobotSprite* m_robotSprite;
    GJSpiderSprite* m_spiderSprite;
	int m_unknown;
	bool m_hasGlowOutline;
	PAD = win 0x7, android32 0x7, android64 0x7;
	bool m_hasCustomGlowColor;
	cocos2d::ccColor3B m_glowColor;
	PAD = win 0x4, android32 0x4, android64 0x8;
}

[[link(android)]]
class SlideInLayer : cocos2d::CCLayerColor {
	static SlideInLayer* create();

	~SlideInLayer();

	virtual bool init() = mac 0x26c340;
	virtual void draw() = mac 0x26ca70;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x26caa0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x26cb00;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x26cac0;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x26cae0;
	virtual void registerWithTouchDispatcher() = mac 0x26c770;
	virtual void keyBackClicked() = mac 0x26c7b0;
	virtual TodoReturn customSetup() = mac 0x26c6f0;
	virtual TodoReturn enterLayer() = mac 0x26c740;
	virtual TodoReturn exitLayer(cocos2d::CCObject*) = mac 0x26c7f0;
	virtual TodoReturn showLayer(bool) = mac 0x26c840;
	virtual TodoReturn hideLayer(bool) = mac 0x26c930;
	virtual TodoReturn layerVisible() = mac 0x26ca10;
	virtual TodoReturn layerHidden() = mac 0x26ca30;
	virtual TodoReturn enterAnimFinished() = mac 0x26ca00;
	virtual TodoReturn disableUI() = mac 0x26c700;
	virtual TodoReturn enableUI() = mac 0x26c720;
}

[[link(android)]]
class SupportLayer : GJDropDownLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate {
	static SupportLayer* create();

	~SupportLayer();

	void onGetReward(cocos2d::CCObject* sender);
	void onLowDetail(cocos2d::CCObject* sender);
	void onRequestAccess(cocos2d::CCObject* sender);
	void onSFX(cocos2d::CCObject* sender);
	void onTOS(cocos2d::CCObject* sender);
	void onEmail(cocos2d::CCObject* sender);
	void onLinks(cocos2d::CCObject* sender) = win 0x3B6320;
	void onRobTop(cocos2d::CCObject* sender);
	void onCocos2d(cocos2d::CCObject* sender);
	void onPrivacy(cocos2d::CCObject* sender);

	TodoReturn sendSupportMail();
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn exitLayer();

	virtual TodoReturn customSetup() = mac 0x376a50;
	virtual TodoReturn uploadActionFinished(int, int) = mac 0x378320;
	virtual TodoReturn uploadActionFailed(int, int) = mac 0x378460;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = mac 0x3782d0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x378710;
}

[[link(android)]]
class URLViewLayer : GJDropDownLayer {
	static URLViewLayer* create(gd::string, cocos2d::CCArray*);

	bool init(gd::string, cocos2d::CCArray*);
	~URLViewLayer();
}

[[link(android)]]
class BonusDropdown : cocos2d::CCNode {
	static BonusDropdown* create(gd::string, int);

	bool init(gd::string, int);
	~BonusDropdown();

	TodoReturn show();
}

[[link(android)]]
class BoomListLayer : cocos2d::CCLayerColor {
	static BoomListLayer* create(BoomListView*, char const*);

	bool init(BoomListView*, char const*);
	~BoomListLayer();
}

[[link(android)]]
class CCAlertCircle : cocos2d::CCNode {
	static CCAlertCircle* create();

	~CCAlertCircle();

	virtual bool init() = mac 0x169fa0;
	virtual void draw() = mac 0x16a030;
}

[[link(android)]]
class CCCircleAlert : CCCircleWave {
	static CCCircleAlert* create(float, float, float);

	bool init(float, float, float);
	~CCCircleAlert();
}

[[link(android), depends(ChallengesPage), depends(GJChallengeItem)]]
class ChallengeNode : cocos2d::CCNode {
	static ChallengeNode* create(GJChallengeItem* challengeItem, ChallengesPage* challengesPage, bool isNew) = mac 0x37bf50;

	bool init(GJChallengeItem* challengeItem, ChallengesPage* challengesPage, bool isNew) = mac 0x37c510;
	~ChallengeNode();

	void onClaimReward(cocos2d::CCObject* sender) = mac 0x37d120;

	void updateTimeLabel(gd::string);

	ChallengesPage* m_challengesPage;
	GJChallengeItem* m_challengeItem;
	cocos2d::CCPoint m_unkPoint;
	cocos2d::CCLabelBMFont* m_countdownLabel;
	bool m_unloaded;
}

[[link(android)]]
class CustomSFXCell : TableViewCell, CustomSFXDelegate {
	~CustomSFXCell();

	TodoReturn shouldReload();
	void updateBGColor(int) = win 0x83100;
	void loadFromObject(SFXInfoObject*) = mac 0x2237a0, win 0x83010;
	CustomSFXCell(char const*, float, float);

	virtual bool init() = mac 0x232460;
	virtual void draw() = mac 0x232560;
	virtual TodoReturn sfxObjectSelected(SFXInfoObject*) = mac 0x232480;
	virtual TodoReturn getActiveSFXID() = mac 0x232500;
}

[[link(android)]]
class DrawGridLayer : cocos2d::CCLayer {
	static DrawGridLayer* create(cocos2d::CCNode*, LevelEditorLayer*);

	bool init(cocos2d::CCNode*, LevelEditorLayer*);
	~DrawGridLayer();

	TodoReturn getPortalMinMax(GameObject*);

	TodoReturn posForTime(float);
	TodoReturn postUpdate();
	TodoReturn timeForPos(cocos2d::CCPoint, int, int, bool, bool, bool, int);
	TodoReturn addToGuides(GameObject*);
	TodoReturn addToEffects(EffectGameObject*);
	TodoReturn loadTimeMarkers(gd::string);
	TodoReturn removeFromGuides(GameObject*) = mac 0xe5b10;
	TodoReturn sortSpeedObjects();
	TodoReturn addToSpeedObjects(EffectGameObject*);
	TodoReturn removeFromEffects(EffectGameObject*);
	TodoReturn updateTimeMarkers();
	TodoReturn addAudioLineObject(AudioLineGuideGameObject*);
	TodoReturn updateMusicGuideTime(float);
	TodoReturn removeAudioLineObject(AudioLineGuideGameObject*);
	TodoReturn removeFromSpeedObjects(EffectGameObject*);

	virtual void update(float) = mac 0xf14b0;
	virtual void draw() = mac 0xf1640;
}


[[link(android)]]
class ExtendedLayer : cocos2d::CCLayer {
	static ExtendedLayer* create();

	~ExtendedLayer();

	virtual bool init() = mac 0x385200;
	virtual void setPosition(cocos2d::CCPoint const&) = mac 0x385210;
}

[[link(android)]]
class FileOperation {
	TodoReturn getFilePath();
	TodoReturn readFile();
	TodoReturn saveFile();
}

[[link(android)]]
class GJChestSprite : cocos2d::CCSprite {
	static GJChestSprite* create(int) = mac 0x1faf50;

	bool init(int);
	~GJChestSprite();

	TodoReturn switchToState(ChestSpriteState, bool) = mac 0x1fc3d0;

	virtual void setOpacity(unsigned char) = mac 0x1fda20;
	virtual void setColor(cocos2d::_ccColor3B const&) = mac 0x1fd930;
}

[[link(android)]]
class GJGroundLayer : cocos2d::CCLayer {
	static GJGroundLayer* create(int, int) = mac 0x5af5b0;

	bool init(int, int) = mac 0x5af6c0;
	~GJGroundLayer();

	TodoReturn getGroundY();

	TodoReturn createLine(int);
	TodoReturn hideShadows();
	TodoReturn scaleGround(float);
	TodoReturn updateShadows();
	TodoReturn fadeInFinished();
	TodoReturn positionGround(float) = mac 0x5b06f0;
	TodoReturn toggleVisible01(bool) = mac 0x5b0040;
	TodoReturn toggleVisible02(bool) = mac 0x5b0080;
	TodoReturn updateGroundPos(cocos2d::CCPoint);
	TodoReturn updateLineBlend(bool) = mac 0x5b04b0;
	TodoReturn deactivateGround();
	TodoReturn updateShadowXPos(float, float);
	TodoReturn loadGroundSprites(int, bool);
	void updateGroundWidth(bool);
	TodoReturn updateGround01Color(cocos2d::_ccColor3B) = win 0x1F3220, mac 0x5affc0;
	TodoReturn updateGround02Color(cocos2d::_ccColor3B) = win 0x1F3280, mac 0x5b0110;

	virtual void draw() = mac 0x5b06e0;
	virtual TodoReturn showGround() = mac 0x5b0500;
	virtual TodoReturn fadeInGround(float) = mac 0x5b0510;
	virtual TodoReturn fadeOutGround(float) = mac 0x5b06b0;
}

[[link(android)]]
class GJMessageCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
	~GJMessageCell();

	void onViewMessage(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void onDeleteMessage(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);

	TodoReturn markAsRead();
	TodoReturn updateToggle();
	void updateBGColor(int) = win 0x807B0;
	void loadFromMessage(GJUserMessage*) = mac 0x22b1d0, win 0x89BE0;
	GJMessageCell(char const*, float, float);

	virtual bool init() = mac 0x236600;
	virtual void draw() = mac 0x236910;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x2369e0;
	virtual TodoReturn uploadActionFinished(int, int) = mac 0x236b70;
	virtual TodoReturn uploadActionFailed(int, int) = mac 0x236d40;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = mac 0x236eb0;
}

[[link(android)]]
class GJRequestCell : TableViewCell, FLAlertLayerProtocol, UploadPopupDelegate, UploadActionDelegate {
	~GJRequestCell();

	void onViewProfile(cocos2d::CCObject* sender);
	void onDeleteRequest(cocos2d::CCObject* sender) = win 0x89710;
	void onViewFriendRequest(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);

	TodoReturn markAsRead();
	TodoReturn updateToggle();
	void loadFromScore(GJUserScore*) = mac 0x22aa60, win 0x88F20;
	void updateBGColor(int) = win 0x807B0;
	GJRequestCell(char const*, float, float);

	virtual bool init() = mac 0x235860;
	virtual void draw() = mac 0x235b70;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x235c40;
	virtual TodoReturn uploadActionFinished(int, int) = mac 0x235e10;
	virtual TodoReturn uploadActionFailed(int, int) = mac 0x236010;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = mac 0x236120;
}

[[link(android)]]
class GJRobotSprite : CCAnimatedSprite {
	static GJRobotSprite* create(int) = win 0x2127D0, mac 0x5a0cc0;

	bool init(int);
	bool init(int, gd::string) = mac 0x5a0e70;
	~GJRobotSprite();

	TodoReturn updateFrame(int) = win 0x213370, mac 0x5a13a0;
	TodoReturn updateColors() = win 0x212e30, mac 0x5a1bd0;
	TodoReturn updateColor01(cocos2d::_ccColor3B) = mac 0x5a1bb0;
	TodoReturn updateColor02(cocos2d::_ccColor3B) = mac 0x5a1ef0;
	TodoReturn updateGlowColor(cocos2d::_ccColor3B, bool) = win 0x212dd0, mac 0x5a1f10;
	TodoReturn hideGlow() = mac 0x5a1b90;
	TodoReturn showGlow() = mac 0x5a1b70;

	virtual void setOpacity(unsigned char) = mac 0x5a1f90;
	virtual TodoReturn hideSecondary() = mac 0x5a20a0;
}

[[link(android)]]
class GJShaderState {
	TodoReturn tweenValue(float, float, int, float, int, float);
	TodoReturn stopTweenAction(int);
	TodoReturn updateTweenAction(float, int);
	TodoReturn updateTweenActions(float);
	TodoReturn timesyncShaderAction(int);
	TodoReturn timesyncShaderActions();
	TodoReturn reset();
}

[[link(android)]]
class GJSmartPrefab : cocos2d::CCObject {
	static GJSmartPrefab* create();

	bool init();
	~GJSmartPrefab();

	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn createWithCoder(DS_Dictionary*) = mac 0x4077a0;

	virtual void encodeWithCoder(DS_Dictionary*) = mac 0x4078e0;
	virtual bool canEncode() = mac 0x407790;
}

[[link(android)]]
class GJSongBrowser : GJDropDownLayer, FLAlertLayerProtocol, TableViewCellDelegate {
	static GJSongBrowser* create() = win 0x220120, mac 0x5c3a70;

	~GJSongBrowser() = mac 0x5c3b90;

	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onDeleteAll(cocos2d::CCObject* sender);

	TodoReturn setupPageInfo(int, int, int);
	TodoReturn setupSongBrowser(cocos2d::CCArray*);
	TodoReturn loadPage(int);

	virtual bool init() = mac 0x5c3e80;
	virtual TodoReturn customSetup() = win 0x220320, mac 0x5c4150;
	virtual TodoReturn exitLayer(cocos2d::CCObject*) = win 0x2202B0, mac 0x5c4120;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x5c46e0;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = mac 0x5c47c0;
	virtual TodoReturn getSelectedCellIdx() = mac 0x5c4820;

	int m_page;
	int m_songID;
	bool m_selected;
	CCMenuItemSpriteExtra* m_rightArrow;
	CCMenuItemSpriteExtra* m_leftArrow;
	cocos2d::CCLabelBMFont* m_countText;
	PAD = android32 0x8;
	cocos2d::CCArray* m_downloadedSongs;
	CustomListView* m_listView;
}

[[link(android)]]
class GJUserMessage : cocos2d::CCNode {
	static GJUserMessage* create(cocos2d::CCDictionary*);
	static GJUserMessage* create() = mac 0x52d230;

	~GJUserMessage();

	virtual bool init() = mac 0x52d2d0;

	int m_messageID;
}

[[link(android)]]
class ItemInfoPopup : FLAlertLayer {
	static ItemInfoPopup* create(int, UnlockType) = win 0x1f1250, mac 0x34d550;

	bool init(int, UnlockType) = win 0x1f1300, mac 0x34f980;
	~ItemInfoPopup();

	void onClose(cocos2d::CCObject* sender) = mac 0x350f10;
	void onCredit(cocos2d::CCObject* sender);

	gd::string nameForUnlockType(int, UnlockType) = win 0x59430, mac 0x350c60;
	/* unverified signature */
	bool isUnlockedByDefault(int, UnlockType);

	virtual void keyBackClicked() = mac 0x350fa0;

	int m_itemID;
	UnlockType m_unlockType;
	int m_accountID;
}

[[link(android)]]
class LevelListCell : TableViewCell {
	static LevelListCell* create(float, float);

	~LevelListCell();

	void onListInfo(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void onClick(cocos2d::CCObject* sender);

	void loadFromList(GJLevelList*) = mac 0x224660, win 0x8ADB0;
	void updateBGColor(int) = win 0x807B0;
	LevelListCell(char const*, float, float);

	virtual bool init() = mac 0x237590;
	virtual void draw() = mac 0x2376d0;

	GJLevelList* m_levelList;
	bool m_addingLevel;
}

[[link(android)]]
class MenuGameLayer : cocos2d::CCLayer {
	static MenuGameLayer* create() = win 0x274450;

	~MenuGameLayer();

	TodoReturn getBGColor(int);

	void resetPlayer() = mac 0x4d52a0;
	TodoReturn updateColor(float);
	TodoReturn updateColors();
	void destroyPlayer() = mac 0x4d5e50;
	TodoReturn tryJump(float);

	virtual void update(float) = win 0x274F10, mac 0x4d5ae0;
	virtual bool init() = win 0x2744f0, mac 0x4d4940;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x4d6050;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x4d6170;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x4d6190;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x4d61b0;
	virtual void registerWithTouchDispatcher() = mac 0x4d61f0;
}

[[link(android)]]
class ObjectManager : cocos2d::CCNode {
	~ObjectManager();

	TodoReturn getDefinition(char const*) = win 0x4b840;
	TodoReturn getGlobalAnimCopy(char const*);

	/* unverified signature */
	void setLoaded(char const*);

	TodoReturn animLoaded(char const*);
	TodoReturn loadCopiedSets();
	TodoReturn purgeObjectManager();
	TodoReturn loadCopiedAnimations();
	TodoReturn replaceAllOccurencesOfString(cocos2d::CCString*, cocos2d::CCString*, cocos2d::CCDictionary*);
	TodoReturn setup();
	static ObjectManager* instance() = win 0x4a550;

	virtual bool init() = mac 0x7574e0;
}

[[link(android)]]
class ObjectToolbox : cocos2d::CCNode {
	~ObjectToolbox();

	static ObjectToolbox* sharedState() = win 0x286590;
	TodoReturn intKeyToFrame(int);
	float gridNodeSizeForKey(int);
	TodoReturn perspectiveBlockFrame(int);
	TodoReturn allKeys();

	virtual bool init() = mac 0x62dbe0;
}

[[link(android)]]
class OptionsObject : cocos2d::CCObject {
	static OptionsObject* create(int, bool, gd::string, OptionsObjectDelegate*);

	bool init(int, bool, gd::string, OptionsObjectDelegate*);
	~OptionsObject();

	TodoReturn toggleState();
}

[[link(android)]]
class SetupEndPopup : SetupTriggerPopup {
	static SetupEndPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupEndPopup();

	void onReversed(cocos2d::CCObject* sender);
	void onMultiActivate(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x62d190;
	void onLockY(cocos2d::CCObject* sender);

	TodoReturn updateTargetID();
	TodoReturn updateTextInputLabel();

	virtual TodoReturn determineStartValues() = mac 0x62ce70;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x62d040;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x62d080;
}

[[link(android)]]
class SetupSFXPopup : SetupAudioTriggerPopup, CustomSFXDelegate, SFXBrowserDelegate {
	static SetupSFXPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*);

	bool init(SFXTriggerGameObject*, cocos2d::CCArray*);
	~SetupSFXPopup();

	void onBrowseSFX(cocos2d::CCObject* sender);
	void onPlusButton(cocos2d::CCObject* sender) = mac 0x495bb0;
	void onClose(cocos2d::CCObject* sender) = mac 0x495740;

	TodoReturn updateLength();
	TodoReturn createSFXWidget();

	virtual TodoReturn pageChanged() = mac 0x4956f0;
	virtual TodoReturn valueDidChange(int, float) = mac 0x495a90;
	virtual TodoReturn sfxObjectSelected(SFXInfoObject*) = mac 0x4959b0;
	virtual TodoReturn getActiveSFXID() = mac 0x4959d0;
	virtual TodoReturn overridePlaySFX(SFXInfoObject*) = mac 0x4959f0;
	virtual TodoReturn sfxBrowserClosed(SFXBrowser*) = mac 0x495c50;
}

[[link(android)]]
class SFXInfoObject : cocos2d::CCObject {
	static SFXInfoObject* create(int, gd::string, int, int, int);

	bool init(int, gd::string, int, int, int);
	~SFXInfoObject();

	TodoReturn getLowerCaseName();
}

[[link(android)]]
class SongInfoLayer : FLAlertLayer {
	static SongInfoLayer* create(int);
	static SongInfoLayer* create(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string);

	bool init(gd::string, gd::string, gd::string, gd::string, gd::string, gd::string, int, gd::string);
	~SongInfoLayer();

	void onDownload(cocos2d::CCObject* sender);
	void onMenuMusic(cocos2d::CCObject* sender) = win 0x385300;
	void onPracticeMusic(cocos2d::CCObject* sender) = win 0x385280;
	void onFB(cocos2d::CCObject* sender);
	void onNG(cocos2d::CCObject* sender);
	void onYT(cocos2d::CCObject* sender);
	void onBPM(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	void showCustomMusicUnlockInfo() = win 0x385000;

	virtual void keyBackClicked() = mac 0x5c67d0;
}

[[link(android)]]
class TutorialLayer : FLAlertLayer {
	static TutorialLayer* create();

	~TutorialLayer();

	void onNext(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn removeTutorialTexture();
	TodoReturn loadPage(int);

	virtual bool init() = mac 0x4b7b20;
	virtual void keyBackClicked() = mac 0x4b8560;
}

[[link(android)]]
class TutorialPopup : FLAlertLayer {
	static TutorialPopup* create(gd::string);

	bool init(gd::string);
	~TutorialPopup();

	TodoReturn animateMenu();
	TodoReturn closeTutorial(cocos2d::CCObject*);
	TodoReturn registerForCallback(cocos2d::SEL_MenuHandler, cocos2d::CCNode*);

	virtual void keyBackClicked() = mac 0x599b60;
	virtual TodoReturn show() = mac 0x599c30;
}

[[link(android)]]
class AchievementBar : cocos2d::CCNodeRGBA {
	static AchievementBar* create(char const*, char const*, char const*, bool);

	bool init(char const*, char const*, char const*, bool) = win 0x59430;
	~AchievementBar();

	TodoReturn show();

	virtual void setOpacity(unsigned char) = mac 0x5de590;
}

[[link(android)]]
class CCCounterLabel : cocos2d::CCLabelBMFont {
	static CCCounterLabel* create(int, char const*, FormatterType) = win 0x23D00;

	bool init(int, char const*, FormatterType) = win 0x23DB0;
	~CCCounterLabel();

	TodoReturn getTargetCount();

	/* unverified signature */
	void setTargetCount(int) = win 0x23E20;

	TodoReturn updateString();
	TodoReturn enableCounter();
	TodoReturn updateCounter(float);
	TodoReturn disableCounter();
	TodoReturn calculateStepSize(int);
	TodoReturn fastUpdateCounter();
}

[[link(android)]]
class CCExtenderNode {
	/* unverified signature */
	void setOpacity(unsigned int);
}

[[link(android)]]
class ChallengesPage : FLAlertLayer, FLAlertLayerProtocol, GJChallengeDelegate, CurrencyRewardDelegate {
	static ChallengesPage* create() = mac 0x37aa70;

	~ChallengesPage();

	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateDots();
	TodoReturn updateTimers(float) = mac 0x37b650;
	TodoReturn exitNodeAtSlot(int, float);
	TodoReturn tryGetChallenges();
	ChallengeNode* createChallengeNode(int number, bool skipAnimation, float animLength, bool isNew) = mac 0x37b890;
	TodoReturn claimItem(ChallengeNode*, GJChallengeItem*, cocos2d::CCPoint);

	virtual bool init() = mac 0x37abe0;
	virtual void registerWithTouchDispatcher() = mac 0x37c280;
	virtual void keyBackClicked() = mac 0x37c1f0;
	virtual TodoReturn show() = mac 0x37c050;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x37c1d0;
	virtual TodoReturn challengeStatusFinished() = mac 0x37bb50;
	virtual TodoReturn challengeStatusFailed() = mac 0x37be60;
	virtual TodoReturn currencyWillExit(CurrencyRewardLayer*) = mac 0x37c3f0;

	cocos2d::CCArray* m_dots;
	cocos2d::CCLabelBMFont* m_countdownLabel;
	LoadingCircle* m_circle;
	bool m_triedToLoad;
	bool m_unkBool;
	CurrencyRewardLayer* m_currencyRewardLayer;
	cocos2d::CCDictionary* m_challengeNodes;
}

[[link(android)]]
class CreateMenuItem : CCMenuItemSpriteExtra {
	static CreateMenuItem* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

	bool init(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	~CreateMenuItem();
}

[[link(android)]]
class CurrencySprite : CCSpritePlus {
	static CurrencySprite* create(CurrencySpriteType, bool);

	TodoReturn initWithSprite(cocos2d::CCSprite*);
	bool init(CurrencySpriteType, bool);
	~CurrencySprite();

	TodoReturn createWithSprite(cocos2d::CCSprite*);
	TodoReturn spriteTypeToStat(CurrencySpriteType);
	TodoReturn rewardToSpriteType(int);
}

[[link(android)]]
class CustomSongCell : TableViewCell, CustomSongDelegate {
	~CustomSongCell();

	void onDelete(cocos2d::CCObject* sender) = mac 0x232080;

	TodoReturn shouldReload();
	void updateBGColor(int) = win 0x82D40;
	void loadFromObject(SongInfoObject*) = mac 0x222fa0, win 0x82B40;
	CustomSongCell(char const*, float, float);

	virtual bool init() = mac 0x232060;
	virtual void draw() = mac 0x232270;
	virtual TodoReturn songIDChanged(int) = mac 0x232150;
	virtual TodoReturn getActiveSongID() = mac 0x2321d0;
	virtual TodoReturn getSongFileName() = mac 0x232230;
	virtual TodoReturn getLevelSettings() = mac 0x232250;

	SongInfoObject* m_songInfoObject;
	bool m_unkBool;
}

[[link(android)]]
class GauntletSprite : cocos2d::CCNode {
	static GauntletSprite* create(GauntletType, bool) = mac 0x3723e0;

	bool init(GauntletType, bool);
	~GauntletSprite();

	TodoReturn colorForType(GauntletType);
	TodoReturn addLockedSprite() = mac 0x372ce0;
	TodoReturn addNormalSprite() = mac 0x372c10;
	TodoReturn luminanceForType(GauntletType);
	TodoReturn toggleLockedSprite(bool);
}

[[link(android)]]
class GJMessagePopup : FLAlertLayer, UploadActionDelegate, UploadPopupDelegate, FLAlertLayerProtocol, DownloadMessageDelegate {
	static GJMessagePopup* create(GJUserMessage*);

	bool init(GJUserMessage*);
	~GJMessagePopup();

	void onBlock(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onReply(cocos2d::CCObject* sender);
	void onRemove(cocos2d::CCObject* sender);

	TodoReturn loadFromGJMessage(GJUserMessage*);
	TodoReturn blockUser();

	virtual void keyBackClicked() = mac 0x284240;
	virtual TodoReturn downloadMessageFinished(GJUserMessage*) = mac 0x2842b0;
	virtual TodoReturn downloadMessageFailed(int) = mac 0x284370;
	virtual TodoReturn uploadActionFinished(int, int) = mac 0x284410;
	virtual TodoReturn uploadActionFailed(int, int) = mac 0x2845d0;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = mac 0x2846a0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x2847a0;
}

[[link(android)]]
class GJOptionsLayer : SetupTriggerPopup {
	static GJOptionsLayer* create(int);

	bool init(int) = mac 0x279be0;
	~GJOptionsLayer();

	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);

	TodoReturn addGVToggle(char const*, char const*, char const*);
	TodoReturn didToggleGV(gd::string) = mac 0x250090;
	TodoReturn countForPage(int) = mac 0x27b230;
	TodoReturn layerForPage(int);
	TodoReturn nextPosition(int);
	TodoReturn objectsForPage(int) = mac 0x27aea0;
	TodoReturn offsetToNextPage();
	TodoReturn addToggleInternal(char const*, int, bool, char const*) = mac 0x27a4b0;
	TodoReturn incrementCountForPage(int) = mac 0x27ad90;
	TodoReturn infoKey(int);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	TodoReturn addToggle(char const*, int, bool, char const*);
	TodoReturn objectKey(int);

	virtual TodoReturn setupOptions() = mac 0x27a390;
	virtual TodoReturn didToggle(int) = mac 0x2923c0;
}

[[link(android)]]
class GJRewardObject : cocos2d::CCObject {
	static GJRewardObject* create(SpecialRewardItem, int, int);
	static GJRewardObject* create();

	bool init(SpecialRewardItem, int, int);
	~GJRewardObject();

	TodoReturn dataLoaded(DS_Dictionary*);
	/* unverified signature */
	bool isSpecialType();
	TodoReturn createWithCoder(DS_Dictionary*) = mac 0x8a800;
	TodoReturn createItemUnlock(UnlockType, int);

	virtual void encodeWithCoder(DS_Dictionary*) = mac 0x8a910;
	virtual bool canEncode() = mac 0x8a990;

    SpecialRewardItem m_specialRewardItem;
    UnlockType m_unlockType;
    int m_itemID;
    int m_total;
}

[[link(android)]]
class GJScaleControl : cocos2d::CCLayer {
	static GJScaleControl* create() = mac 0xf5e0;

	~GJScaleControl();

	TodoReturn loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&);
	TodoReturn finishTouch();
	TodoReturn updateLabelX(float);
	TodoReturn updateLabelY(float);
	TodoReturn skewFromValue(float);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateLabelXY(float);
	TodoReturn valueFromSkew(float);
	TodoReturn scaleFromValue(float);
	TodoReturn valueFromScale(float);

	virtual bool init() = mac 0x55080;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x55690;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x55880;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x55d30;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x55e90;
}

[[link(android)]]
class GJSpiderSprite : GJRobotSprite {
	static GJSpiderSprite* create(int) = mac 0x5a22a0;

	bool init(int);
	~GJSpiderSprite();
}

[[link(android)]]
class HSVLiveOverlay : FLAlertLayer, HSVWidgetDelegate {
	static HSVLiveOverlay* create(GameObject*, cocos2d::CCArray*);

	bool init(GameObject*, cocos2d::CCArray*);
	~HSVLiveOverlay();

	void onSelectTab(cocos2d::CCObject* sender);

	TodoReturn toggleControls(bool);
	TodoReturn createHSVWidget(int);
	TodoReturn closeColorSelect(cocos2d::CCObject*);
	TodoReturn determineStartValues();

	virtual void keyBackClicked() = mac 0x249110;
	virtual TodoReturn show() = mac 0x2491c0;
	virtual TodoReturn hsvChanged(ConfigureHSVWidget*) = mac 0x249290;
}

[[link(android)]]
class HSVWidgetPopup : FLAlertLayer {
	static HSVWidgetPopup* create(cocos2d::_ccHSVValue, HSVWidgetDelegate*, gd::string);

	bool init(cocos2d::_ccHSVValue, HSVWidgetDelegate*, gd::string);
	~HSVWidgetPopup();

	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = mac 0x40ec10;
}

[[link(android)]]
class KeyframeObject {
	TodoReturn setupSpline(gd::vector<KeyframeObject*>&);
}

[[link(android)]]
class LevelAreaLayer : cocos2d::CCLayer, DialogDelegate {
	static LevelAreaLayer* create();

	~LevelAreaLayer();

	void onClickDoor(cocos2d::CCObject* sender);
	TodoReturn onEnterTower();
	void onBack(cocos2d::CCObject* sender);

	TodoReturn showDialog();
	TodoReturn fadeInsideTower();
	TodoReturn scene();
	TodoReturn addTorch(cocos2d::CCNode*, cocos2d::CCPoint, int, float, int, bool);
	TodoReturn addGodRay(float, float, float, float, float, cocos2d::CCPoint);

	virtual bool init() = mac 0x255640;
	virtual void keyBackClicked() = mac 0x257750;
	virtual TodoReturn dialogClosed(DialogLayer*) = mac 0x257500;
}

[[link(android)]]
class LevelListLayer : LevelBrowserLayer, TextInputDelegate, SelectListIconDelegate, LikeItemDelegate, LevelListDeleteDelegate {
	static LevelListLayer* create(GJLevelList*);

	bool init(GJLevelList*) = win 0x22DE00, mac 0x33a9a0;
	~LevelListLayer() = mac 0x33a830;

	void onFavorite(cocos2d::CCObject* sender);
	void onListInfo(cocos2d::CCObject* sender);
	void onSelectIcon(cocos2d::CCObject* sender);
	void onClaimReward(cocos2d::CCObject* sender);
	void onDescription(cocos2d::CCObject* sender);
	void onViewProfile(cocos2d::CCObject* sender);
	void onToggleEditMode(cocos2d::CCObject* sender);
	void onRefreshLevelList(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender) = mac 0x33e710;
	void onInfo(cocos2d::CCObject* sender);
	void onLike(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender);
	TodoReturn onDelete();

	TodoReturn ownerDelete();
	TodoReturn confirmClone(cocos2d::CCObject*);
	TodoReturn confirmDelete(cocos2d::CCObject*);
	TodoReturn updateEditMode();
	TodoReturn updateStatsArt();
	TodoReturn verifyListName();
	TodoReturn updateSideButtons();
	TodoReturn confirmOwnerDelete(cocos2d::CCObject*);
	TodoReturn shareCommentClosed(gd::string, ShareCommentLayer*) = mac 0x33ed50;
	TodoReturn scene(GJLevelList*) = mac 0x33a8b0;
	TodoReturn cloneList();

	virtual void onEnter() = mac 0x33dbe0;
	virtual void onExit() = mac 0x33dc10;
	virtual TodoReturn loadLevelsFinished(cocos2d::CCArray*, char const*, int) = mac 0x33df90;
	virtual TodoReturn loadLevelsFailed(char const*, int) = mac 0x33e1d0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x33e9c0;
	virtual void setIDPopupClosed(SetIDPopup*, int) = mac 0x33e5b0;
	virtual TodoReturn updateResultArray(cocos2d::CCArray*) = mac 0x33e6f0;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = mac 0x33e200;
	virtual TodoReturn likedItem(LikeItemType, int, bool) = mac 0x33ee20;
	virtual TodoReturn iconSelectClosed(SelectListIconLayer*) = mac 0x33f060;
	virtual TodoReturn levelListDeleteFinished(int) = mac 0x33f1f0;
	virtual TodoReturn levelListDeleteFailed(int) = mac 0x33f2f0;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = mac 0x33f5c0;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x33f3f0;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x33f690;
}

[[link(android)]]
class ListButtonPage : cocos2d::CCLayer {
	static ListButtonPage* create(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float) = mac 0x3d17f0;

	bool init(cocos2d::CCArray*, cocos2d::CCPoint, int, int, float, float, float) = mac 0x3d1ad0;
	~ListButtonPage();
}

[[link(android)]]
class MapSelectLayer : cocos2d::CCLayer {
	static MapSelectLayer* create();

	~MapSelectLayer();

	TodoReturn getConstrainedMapPos(cocos2d::CCPoint);

	void onBack(cocos2d::CCObject* sender);

	TodoReturn checkTouchMonster(cocos2d::CCPoint);
	TodoReturn createObjectAtPoint(cocos2d::CCPoint);
	TodoReturn scene();

	virtual void update(float) = mac 0x246fe0;
	virtual bool init() = mac 0x2460d0;
	virtual void onExit() = mac 0x2472a0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x247920;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x247a30;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x247c50;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x247d30;
	virtual void registerWithTouchDispatcher() = mac 0x247d70;
	virtual void keyBackClicked() = mac 0x2471c0;
	virtual void scrollWheel(float, float) = mac 0x246da0;
}

[[link(android)]]
class RateDemonLayer : FLAlertLayer, UploadPopupDelegate, UploadActionDelegate {
	static RateDemonLayer* create(int) = mac 0x261c80;

	bool init(int) = mac 0x261df0;
	~RateDemonLayer();

	void onRate(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn selectRating(cocos2d::CCObject*);

	virtual void keyBackClicked() = mac 0x2629a0;
	virtual TodoReturn uploadActionFinished(int, int) = mac 0x262660;
	virtual TodoReturn uploadActionFailed(int, int) = mac 0x262750;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = mac 0x2628c0;
}

[[link(android)]]
class RateLevelLayer : FLAlertLayer {
	static RateLevelLayer* create(int);

	bool init(int);
	~RateLevelLayer();

	void onRate(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn selectRating(cocos2d::CCObject*);

	virtual void keyBackClicked() = mac 0x5340a0;
}

[[link(android)]]
class RateStarsLayer : FLAlertLayer, UploadPopupDelegate, UploadActionDelegate {
	static RateStarsLayer* create(int, bool, bool) = mac 0x2697f0, win 0x2ED3C0;

	bool init(int, bool, bool) = mac 0x269980, win 0x2ED470;
	~RateStarsLayer();

	TodoReturn getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);

	void onToggleCoins(cocos2d::CCObject* sender);
	void onRate(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onFeature(cocos2d::CCObject* sender) = win 0x2edae0;

	void selectRating(cocos2d::CCObject*) = win 0x2edbc0, mac 0x26a0a0;

	virtual void keyBackClicked() = mac 0x26a730;
	virtual TodoReturn uploadActionFinished(int, int) = mac 0x26a3f0;
	virtual TodoReturn uploadActionFailed(int, int) = mac 0x26a4e0;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = mac 0x26a650;
}

[[link(android)]]
class SearchSFXPopup : SetTextPopup {
	static SearchSFXPopup* create(gd::string);

	bool init(gd::string);
	~SearchSFXPopup();

	void onSearchFolders(cocos2d::CCObject* sender);
}


[[link(android)]]
class SetFolderPopup : SetIDPopup, SetTextPopupDelegate {
	static SetFolderPopup* create(int, bool, gd::string) = mac 0x289770;

	bool init(int, bool, gd::string) = mac 0x289960;
	~SetFolderPopup();

	/* unverified signature */
	void setTextPopupClosed(SetTextPopup*, gd::string) = mac 0x28a270;

	void onSetFolderName(cocos2d::CCObject* sender);

	virtual TodoReturn valueChanged() = mac 0x289e60;
}

[[link(android)]]
class SetItemIDLayer : SetupTriggerPopup {
	static SetItemIDLayer* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetItemIDLayer();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = mac 0x967f0;
	void onClose(cocos2d::CCObject* sender) = mac 0x96a00;

	TodoReturn updateEditorLabel();

	virtual TodoReturn valueDidChange(int, float) = mac 0x96910;
}

[[link(android)]]
class SetupCoinLayer : SetupTriggerPopup {
	static SetupCoinLayer* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupCoinLayer();
}

[[link(android)]]
class SetupMGTrigger : SetupTriggerPopup {
	static SetupMGTrigger* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupMGTrigger();

	void onEasingRate(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x4e27f0;
	void onEasing(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn sliderYChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateEasingLabel();
	TodoReturn updateValueYLabel();
	TodoReturn posFromSliderValue(float);
	TodoReturn sliderValueFromPos(int);
	TodoReturn updateEasingRateLabel();
	TodoReturn updateMoveCommandPosY();
	TodoReturn updateMoveCommandEasing();
	TodoReturn toggleEasingRateVisibility();
	TodoReturn updateMoveCommandEasingRate();

	virtual TodoReturn determineStartValues() = mac 0x4e1f90;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x4e2590;
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = mac 0x4e2250;
}

[[link(android)]]
class ShareListLayer : FLAlertLayer {
	static ShareListLayer* create(GJLevelList*);

	bool init(GJLevelList*);
	~ShareListLayer();

	void onUnlisted(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender);

	TodoReturn updateUnlistedF();

	virtual void keyBackClicked() = mac 0x342090;
}



[[link(android)]]
class SongSelectNode : cocos2d::CCNode, FLAlertLayerProtocol, CustomSongLayerDelegate, CustomSongDelegate {
	static SongSelectNode* create(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool);

	bool init(int, bool, LevelSettingsObject*, SongSelectType, cocos2d::CCPoint, cocos2d::CCNode*, cocos2d::CCMenu*, bool);
	~SongSelectNode();

	TodoReturn onSongMode(int);
	void onSongMode(cocos2d::CCObject* sender);
	void onOpenCustomSong(cocos2d::CCObject* sender);

	TodoReturn selectSong(int);
	TodoReturn audioPrevious(cocos2d::CCObject*);
	TodoReturn updateAudioLabel();
	TodoReturn showCustomSongSelect();
	TodoReturn updateWidgetVisibility();
	TodoReturn audioNext(cocos2d::CCObject*);

	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x1f7c30;
	virtual TodoReturn customSongLayerClosed() = mac 0x1f7d10;
	virtual TodoReturn songIDChanged(int) = mac 0x1f7d70;
	virtual TodoReturn getActiveSongID() = mac 0x1f7da0;
	virtual TodoReturn getSongFileName() = mac 0x1f7dc0;
	virtual TodoReturn getLevelSettings() = mac 0x1f7f00;
}

[[link(android)]]
class UIOptionsLayer : SetupTriggerPopup {
	static UIOptionsLayer* create(bool);

	bool init(bool);
	~UIOptionsLayer();

	TodoReturn getNode(int);

	void onSaveLoad(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x28f890;
	void onReset(cocos2d::CCObject* sender);

	TodoReturn toggleUIGroup(int);

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x290010;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2901e0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x290380;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2904c0;
	virtual void registerWithTouchDispatcher() = mac 0x290500;
	virtual TodoReturn valueDidChange(int, float) = mac 0x28fa20;
	virtual TodoReturn getValue(int) = mac 0x28fd30;
}

[[link(android)]]
class WorldLevelPage : FLAlertLayer {
	static WorldLevelPage* create(GJGameLevel*, GJWorldNode*);

	bool init(GJGameLevel*, GJWorldNode*);
	~WorldLevelPage();

	void onInfo(cocos2d::CCObject* sender);
	void onPlay(cocos2d::CCObject* sender);
	void onSong(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = mac 0x3a5010;
	virtual TodoReturn show() = mac 0x3a4ed0;
}

[[link(android)]]
class AchievementCell : TableViewCell {
	~AchievementCell();

	void loadFromDict(cocos2d::CCDictionary*) = win 0x7C270;
	void updateBGColor(int) = win 0x7D0A0;
	AchievementCell(char const*, float, float);

	virtual bool init() = mac 0x22d070;
	virtual void draw() = mac 0x22d110;
}

[[link(android)]]
class BitmapFontCache : cocos2d::CCObject {
	bool init();
	~BitmapFontCache();

	TodoReturn sharedFontCache() = mac 0x1fde50;
	TodoReturn fontWithConfigFile(char const*, float) = mac 0x1fdff0;
	TodoReturn purgeSharedFontCache();
}

[[link(android)]]
class CCNodeContainer : cocos2d::CCNode {
	static CCNodeContainer* create();

	~CCNodeContainer();

	virtual bool init() = mac 0x150e60;
	virtual void visit() = mac 0x150e70;
}

[[link(android)]]
class CCSpriteWithHue : cocos2d::CCSprite {
	static CCSpriteWithHue* create(gd::string const&);
	static CCSpriteWithHue* create(gd::string const&, cocos2d::CCRect const&);

	TodoReturn initShader();
	~CCSpriteWithHue();

	TodoReturn getUniformLocations();
	TodoReturn getHue();
	TodoReturn getAlpha();

	/* unverified signature */
	void setLuminance(float);
	/* unverified signature */
	void setHueDegrees(float);
	/* unverified signature */
	void setEvenLuminance(float);
	/* unverified signature */
	void setCustomLuminance(float, float, float);
	/* unverified signature */
	void setHue(float);

	TodoReturn createWithTexture(cocos2d::CCTexture2D*);
	TodoReturn createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
	TodoReturn updateColorMatrix();
	TodoReturn setupDefaultSettings();
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(gd::string const&);
	TodoReturn updateHue(float);

	virtual void draw() = mac 0x5b6340;
	virtual bool initWithTexture(cocos2d::CCTexture2D*) = mac 0x5b5c10;
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = mac 0x5b5c80;
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = mac 0x5b59d0;
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = mac 0x5b5ca0;
	virtual TodoReturn getShaderName() = mac 0x5b5520;
	virtual TodoReturn shaderBody() = mac 0x5b5de0;
	virtual void updateColor() = mac 0x5b5e00;
}

[[link(android)]]
class CustomMusicCell : CustomSongCell {
	~CustomMusicCell();

	TodoReturn updateBGColor(int) = win 0x82D40;
	TodoReturn loadFromObject(SongInfoObject*) = win 0x83240;
	CustomMusicCell(char const*, float, float);
}

[[link(android)]]
class CustomSFXWidget : cocos2d::CCNode, MusicDownloadDelegate, FLAlertLayerProtocol {
	static CustomSFXWidget* create(SFXInfoObject*, CustomSFXDelegate*, bool, bool, bool, bool, bool);

	bool init(SFXInfoObject*, CustomSFXDelegate*, bool, bool, bool, bool, bool) = mac 0x5a77d0;
	~CustomSFXWidget();

	void onDownload(cocos2d::CCObject* sender);
	void onPlayback(cocos2d::CCObject* sender);
	void onCancelDownload(cocos2d::CCObject* sender);
	void onDelete(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);

	TodoReturn updateError(GJSongError);
	TodoReturn verifySFXID(int);
	TodoReturn startDownload();
	TodoReturn updateSFXInfo() = mac 0x5a8ce0;
	TodoReturn downloadFailed();
	TodoReturn hideLoadingArt();
	TodoReturn showLoadingArt();
	TodoReturn updateLengthMod(float);
	TodoReturn updateSFXObject(SFXInfoObject*);
	TodoReturn updatePlaybackBtn();
	void updateProgressBar(int) = win 0x2df7a0;
	TodoReturn startMonitorDownload();
	TodoReturn updateDownloadProgress(float);
	TodoReturn deleteSFX();

	virtual TodoReturn downloadSFXFinished(int) = mac 0x5a9940;
	virtual TodoReturn downloadSFXFailed(int, GJSongError) = mac 0x5a99e0;
	virtual TodoReturn songStateChanged() = mac 0x5a98d0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x5a9bc0;
}

[[link(android)]]
class CustomSongLayer : FLAlertLayer, TextInputDelegate, GJDropDownLayerDelegate, MusicBrowserDelegate {
	static CustomSongLayer* create(CustomSongDelegate*);

	bool init(CustomSongDelegate*);
	~CustomSongLayer();

	void onCreateLines(cocos2d::CCObject* sender);
	void onSongBrowser(cocos2d::CCObject* sender);
	void onMusicBrowser(cocos2d::CCObject* sender);
	void onNewgroundsBrowser(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onSearch(cocos2d::CCObject* sender);
	void onOptions(cocos2d::CCObject* sender);

	TodoReturn showNewgroundsMessage();

	virtual void keyBackClicked() = mac 0x1f50c0;
	virtual TodoReturn show() = mac 0x1f51a0;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x1f4c90;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = mac 0x1f4c30;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x1f4bd0;
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float) = mac 0x1f4cb0;
	virtual TodoReturn textInputReturn(CCTextInputNode*) = mac 0x1f4d70;
	virtual TodoReturn dropDownLayerWillClose(GJDropDownLayer*) = mac 0x1f4f60;
	virtual TodoReturn musicBrowserClosed(MusicBrowser*) = mac 0x1f5010;
}

[[link(android)]]
class EndPortalObject : GameObject {
	static EndPortalObject* create() = mac 0x379e40;

	~EndPortalObject();

	TodoReturn getSpawnPos() = win 0xeaa80;

	TodoReturn updateColors(cocos2d::_ccColor3B) = win 0xea8f0, mac 0x37a210;
	TodoReturn updateEndPos(bool) = win 0xeac60;
	TodoReturn triggerObject(GJBaseGameLayer*) = win 0xeaa00;

	virtual bool init() = mac 0x379ee0;
	virtual void setPosition(cocos2d::CCPoint const&) = mac 0x37a3e0;
	virtual void setVisible(bool) = mac 0x37a4f0;
}

[[link(android)]]
class ExplodeItemNode : cocos2d::CCNode {
	static ExplodeItemNode* create(cocos2d::CCRenderTexture*);

	bool init(cocos2d::CCRenderTexture*);
	~ExplodeItemNode();

	TodoReturn createSprites(int, int, float, float, float, float, float, float, cocos2d::_ccColor4F, cocos2d::_ccColor4F, bool);

	virtual void update(float) = mac 0x1f3560;
}

[[link(android)]]
class FileSaveManager : GManager {
	~FileSaveManager();

	TodoReturn getStoreData();

	TodoReturn sharedState();
	TodoReturn loadDataFromFile(char const*);

	virtual bool init();
	virtual TodoReturn firstLoad();
}

[[link(android)]]
class FindObjectPopup : SetIDPopup {
	static FindObjectPopup* create();

	~FindObjectPopup();

	void onFindObjectID(cocos2d::CCObject* sender);

	virtual bool init() = mac 0x289330;
}

[[link(android)]]
class FMODAudioEngine : cocos2d::CCNode {
	TodoReturn pauseMusic(int);
	TodoReturn playEffect(gd::string) = mac 0x3c24f0;
	TodoReturn playEffect(gd::string, float, float, float) = win 0x355b0, mac 0x3c2560;
	TodoReturn startMusic(int, int, int, int, bool, int) = win 0x38900;
	TodoReturn fadeInMusic(float, int);
	TodoReturn pauseEffect(unsigned int);
	TodoReturn pitchForIdx(int) = win 0x35070;
	TodoReturn printResult(FMOD_RESULT);
	TodoReturn resumeAudio() = mac 0x3bc1a0;
	TodoReturn resumeMusic(int);
	TodoReturn stopChannel(int) = win 0x36d00;
	void stopChannel(int, AudioTargetType, bool, float) = win 0x36a60;
	void stopChannel(FMOD::Channel*, bool, float) = win 0x36d00;
	TodoReturn storeEffect(FMOD::Sound*, gd::string) = win 0x37970;
	TodoReturn createStream(gd::string) = win 0x3ac10;
	TodoReturn fadeOutMusic(float, int) = mac 0x3c8390;
	TodoReturn getMusicTime(int);
	/* unverified signature */
	bool isSoundReady(FMOD::Sound*);
	TodoReturn preloadMusic(gd::string, bool, int);
	TodoReturn resumeEffect(unsigned int);
	static FMODAudioEngine* sharedEngine() = win 0x32b80, mac 0x3baf40;
	TodoReturn stopAllMusic() = mac 0x3bcc30;
	TodoReturn testFunction(int);
	TodoReturn unloadEffect(gd::string);
	void updateReverb(FMODReverbPreset, bool) = win 0x331b0, mac 0x3bbca0;
	TodoReturn clearAllAudio() = mac 0x3bc380;
	TodoReturn getFMODStatus(int) = win 0x3ae60;
	TodoReturn pauseAllAudio() = mac 0x3bc2e0;
	void pauseAllMusic() = win 0x380c0, mac 0x3c50c0;
	TodoReturn preloadEffect(gd::string) = win 0x37780;
	TodoReturn updateChannel(int, AudioTargetType, AudioModType, float, float) = win 0x36f70;
	TodoReturn channelStopped(FMOD::Channel*, bool);
	TodoReturn enableMetering();
	TodoReturn getActiveMusic(int) = win 0x3a6b0;
	TodoReturn getMusicTimeMS(int);
	/* unverified signature */
	bool isEffectLoaded(gd::string);
	/* unverified signature */
	bool isMusicPlaying(int) = mac 0x3c5170;
	/* unverified signature */
	bool isMusicPlaying(gd::string, int);
	TodoReturn lengthForSound(gd::string);
	TodoReturn loadAudioState(FMODAudioState&) = win 0x33f90;
	TodoReturn resumeAllAudio() = mac 0x3bc330;
	TodoReturn resumeAllMusic() = win 0x38110, mac 0x3c5110;
	TodoReturn reverbToString(FMODReverbPreset);
	TodoReturn saveAudioState(FMODAudioState&) = win 0x33b10;
	/* unverified signature */
	void setMusicTimeMS(unsigned int, bool, int) = win 0x3a160;
	TodoReturn stopAllEffects() = mac 0x3bc450, win 0x37D00;
	TodoReturn stopAndGetFade(FMOD::Channel*);
	TodoReturn swapMusicIndex(int, int);
	TodoReturn updateMetering();
	TodoReturn disableMetering() = mac 0x3c1a40;
	TodoReturn getChannelGroup(int, bool) = win 0x351d0;
	TodoReturn pauseAllEffects();
	TodoReturn playEffectAsync(gd::string);
	TodoReturn queuePlayEffect(gd::string, float, float, float, float, bool, bool, int, int, int, int, bool, int, bool, int, float, int);
	TodoReturn queueStartMusic(gd::string, float, float, float, bool, int, int, int, int, int, bool, int, bool);
	TodoReturn registerChannel(FMOD::Channel*, int, int) = win 0x36310;
	/* unverified signature */
	void setChannelPitch(int, AudioTargetType, float) = win 0x37620;
	TodoReturn channelLinkSound(int, FMODSound*);
	TodoReturn countActiveMusic();
	float getEffectsVolume() = mac 0x3c5050;
	float getMeteringValue() = mac 0x3c1a50;
	TodoReturn getMusicLengthMS(int) = win 0x3a2e0;
	TodoReturn getNextChannelID();
	TodoReturn loadAndPlayMusic(gd::string, unsigned int, int);
	TodoReturn resumeAllEffects();
	/* unverified signature */
	void setChannelVolume(int, AudioTargetType, float) = win 0x37120;
	/* unverified signature */
	void setEffectsVolume(float);
	void setupAudioEngine() = win 0x32f20, mac 0x3bb700;
	TodoReturn stopChannelTween(int, AudioTargetType, AudioModType);
	TodoReturn unloadAllEffects() = win 0x37EA0, mac 0x3c4c80;
	TodoReturn getMusicChannelID(int);
	TodoReturn getTweenContainer(AudioTargetType);
	/* unverified signature */
	bool isChannelStopping(int);
	TodoReturn stopChannelTweens(int, AudioTargetType);
	TodoReturn stopMusicNotInSet(std::unordered_set<int, std::hash<int>, std::equal_to<int>, std::allocator<int> >&);
	TodoReturn unregisterChannel(int);
	TodoReturn updateQueuedMusic();
	TodoReturn channelForUniqueID(int);
	TodoReturn channelUnlinkSound(int);
	TodoReturn countActiveEffects();
	TodoReturn playEffectAdvanced(gd::string, float, float, float, float, bool, bool, int, int, int, int, bool, int, bool, bool, int, int, float, int) = win 0x35740;
	TodoReturn preloadEffectAsync(gd::string);
	TodoReturn stopAndRemoveMusic(int);
	TodoReturn triggerQueuedMusic(FMODQueuedMusic) = win 0x39570;
	TodoReturn activateQueuedMusic(int);
	TodoReturn channelForChannelID(int) = win 0x369e0, mac 0x3be510;
	/* unverified signature */
	void setChannelVolumeMod(int, AudioTargetType, float) = win 0x373a0;
	TodoReturn updateChannelTweens(float) = win 0x34d60;
	TodoReturn updateQueuedEffects() = win 0x38e90;
	TodoReturn waitUntilSoundReady(FMOD::Sound*);
	TodoReturn channelIDForUniqueID(int) = win 0x36960;
	TodoReturn releaseRemovedSounds();
	TodoReturn updateBackgroundFade();
	TodoReturn fadeInBackgroundMusic(float);
	TodoReturn getActiveMusicChannel(int);
	TodoReturn updateTemporaryEffects();
	float getBackgroundMusicVolume() = mac 0x3c5010;
	/* unverified signature */
	void setBackgroundMusicVolume(float);
	TodoReturn queuedEffectFinishedLoading(gd::string) = win 0x38f60;
	virtual void stop() = win 0x5b260;
	TodoReturn setup() = win 0x32c00, mac 0x3bb2c0;
	TodoReturn start() = win 0x337c0;
	TodoReturn loadMusic(gd::string) = win 0x38410;
	TodoReturn loadMusic(gd::string, float, float, float, bool, int, int) = win 0x384b0, mac 0x3bf920;
	TodoReturn playMusic(gd::string, bool, float, int) = mac 0x3c5500;
	TodoReturn stopMusic(int);
	~FMODAudioEngine();

	virtual void update(float) = win 0x33910, mac 0x3bcec0;

	PAD = win 0x88, android32 0x7c, android64 0xdc, mac 0xa8;
	FMOD::System* m_system;
}

[[link(android)]]
class FMODAudioState {
	// ~FMODAudioState();
}

[[link(android)]]
class FMODLevelVisualizer : cocos2d::CCNode {
	TodoReturn updateVisualizer(float, float, float) = mac 0x28c6e0;
	static FMODLevelVisualizer* create() = mac 0x28c230;
	~FMODLevelVisualizer();

	virtual bool init() = mac 0x28c2a0;
}

[[link(android)]]
class GJActionManager : cocos2d::CCNode {
	static GJActionManager* create();

	~GJActionManager();

	TodoReturn getInternalAction(int);

	TodoReturn runInternalAction(cocos2d::CCAction*, cocos2d::CCNode*);
	TodoReturn stopInternalAction(int) = mac 0x5cdf50;
	TodoReturn updateInternalActions(float, bool) = win 0x189E70;
	TodoReturn stopAllInternalActions();

	virtual bool init() = mac 0x5cded0;
}

[[link(android)]]
class GJBigSpriteNode : cocos2d::CCNode {
	static GJBigSpriteNode* create();

	~GJBigSpriteNode();

	virtual bool init() = mac 0x247f70;
}


[[link(android)]]
class GJFriendRequest : cocos2d::CCNode {
	static GJFriendRequest* create(cocos2d::CCDictionary*) = win 0x117AA0;
	static GJFriendRequest* create();

	~GJFriendRequest();

	virtual bool init() = mac 0x52d040;
}

[[link(android)]]
class GJGradientLayer : cocos2d::CCLayerGradient {
	static GJGradientLayer* create();

	~GJGradientLayer();

	virtual bool init() = mac 0x150ea0;
}

[[link(android)]]
class GJObjectDecoder : cocos2d::CCNode, ObjectDecoderDelegate {
	~GJObjectDecoder();

	TodoReturn sharedDecoder() = mac 0x6e7c70;

	virtual bool init() = mac 0x6e7cf0;
	virtual TodoReturn getDecodedObject(int, DS_Dictionary*) = mac 0x6e7d00, win 0x1F7B60;
}

[[link(android)]]
class GJSmartTemplate : cocos2d::CCObject {
	static GJSmartTemplate* create();

	bool init();
	~GJSmartTemplate();

	TodoReturn getPrefabs(gd::string);
	TodoReturn getNoCornerKey(gd::string) = mac 0x403360;
	TodoReturn getPrefabWithID(gd::string, int);
	TodoReturn getRandomPrefab(gd::string);
	TodoReturn getSimplifiedKey(gd::string) = mac 0x402b00;
	TodoReturn getTemplateState(gd::vector<SmartPrefabResult>&);
	TodoReturn getSimplifiedType(SmartBlockType, bool&);
	TodoReturn getVerySimplifiedKey(gd::string) = mac 0x4034a0;
	TodoReturn getTotalChanceForPrefab(gd::string);
	TodoReturn getPrefab(cocos2d::CCPoint, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*);
	TodoReturn getPrefab(gd::string, bool, bool);

	TodoReturn dataLoaded(DS_Dictionary*) = mac 0x407300;
	TodoReturn savePrefab(gd::string, gd::string);
	/* unverified signature */
	bool isUnrequired(gd::string);
	TodoReturn offsetForDir(GJSmartDirection, int);
	TodoReturn removePrefab(gd::string, int);
	TodoReturn flipBlockType(SmartBlockType, bool, bool);
	TodoReturn offsetForType(SmartBlockType);
	TodoReturn scanForPrefab(gd::string);
	TodoReturn flipBlockTypeX(SmartBlockType);
	TodoReturn flipBlockTypeY(SmartBlockType);
	TodoReturn createWithCoder(DS_Dictionary*) = mac 0x407250;
	TodoReturn offsetForObject(SmartGameObject*);
	TodoReturn rotateBlockType(SmartBlockType, int);
	TodoReturn saveRemapToDict(gd::string, gd::string, cocos2d::CCDictionary*) = mac 0x403130;
	TodoReturn keyFromNeighbors(SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType, SmartBlockType);
	TodoReturn keyFromNeighbors(cocos2d::CCPoint, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*, SmartGameObject*);
	TodoReturn generateRemapDict();
	TodoReturn logTemplateStatus(bool) = mac 0x406780;
	TodoReturn rotateBlockType90(SmartBlockType);
	TodoReturn smartObjectToType(SmartGameObject*, cocos2d::CCPoint);
	TodoReturn keyFromNeighborsOld(bool, bool, bool, bool, bool, bool, bool, bool);
	TodoReturn resetScannedPrefabs();
	TodoReturn shouldDiscardObject(SmartBlockType, GJSmartDirection);
	TodoReturn smartTypeToObjectKey(SmartBlockType);
	TodoReturn applyTransformationsForType(SmartBlockType, cocos2d::CCSprite*);
	TodoReturn flipKey(gd::string, bool, bool);
	TodoReturn rotateKey(gd::string, int);
	TodoReturn saveRemap(gd::string) = mac 0x402210;

	virtual void encodeWithCoder(DS_Dictionary*) = mac 0x4075e0;
	virtual bool canEncode() = mac 0x407240;
}

[[link(android)]]
class InfoAlertButton : CCMenuItemSpriteExtra {
	static InfoAlertButton* create(gd::string, gd::string, float) = mac 0x540d10, win 0x2233A0;

	bool init(gd::string, gd::string, float) = win 0x2234C0;
	~InfoAlertButton();

	virtual void activate() = mac 0x540f40;
}

[[link(android)]]
class InheritanceNode : cocos2d::CCObject {
	static InheritanceNode* create(int, InheritanceNode*) = win 0x1d4760;

	bool init(int, InheritanceNode*);
	~InheritanceNode();
}

[[link(android)]]
class MoreSearchLayer : FLAlertLayer, TextInputDelegate {
	static MoreSearchLayer* create() = mac 0x5efc80, win 0x260c80;

	~MoreSearchLayer();

	void onFeatured(cocos2d::CCObject* sender) = mac 0x5f2b30;
	void onFollowed(cocos2d::CCObject* sender);
	void onOriginal(cocos2d::CCObject* sender) = mac 0x5f2950;
	void onSongMode(cocos2d::CCObject* sender) = mac 0x5f2c30, win 0x262300;
	void onCompleted(cocos2d::CCObject* sender) = mac 0x5f2910;
	void onLegendary(cocos2d::CCObject* sender) = mac 0x5f2bb0;
	void onTwoPlayer(cocos2d::CCObject* sender) = mac 0x5f29d0;
	void onSongFilter(cocos2d::CCObject* sender) = mac 0x5f2a10, win 0x262050;
	void onUncompleted(cocos2d::CCObject* sender) = mac 0x5f28d0;
	void onEpic(cocos2d::CCObject* sender) = mac 0x5f2b70;
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x5f25d0, win 0x262790;
	void onCoins(cocos2d::CCObject* sender) = mac 0x5f2990;
	void onMythic(cocos2d::CCObject* sender) = mac 0x5f2bf0;
	void onNoStar(cocos2d::CCObject* sender) = mac 0x5f2af0;
	void onFriends(cocos2d::CCObject* sender);

	TodoReturn selectSong(int);
	TodoReturn audioPrevious(cocos2d::CCObject*);
	TodoReturn toggleSongNodes(bool, bool);
	TodoReturn updateAudioLabel();
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint) = mac 0x5f26b0;
	TodoReturn audioNext(cocos2d::CCObject*);

	virtual bool init() = mac 0x5f11e0, win 0x260D20;
	virtual void keyBackClicked() = mac 0x5f33b0;
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float) = mac 0x5f3240;
	virtual TodoReturn textInputReturn(CCTextInputNode*) = mac 0x5f3300;

    cocos2d::CCLabelBMFont* m_audioTrackName;
    CCMenuItemSpriteExtra* m_songLeftBtn;
    CCMenuItemSpriteExtra* m_songRightBtn;
    CCMenuItemSpriteExtra* m_normalBtn;
    CCMenuItemSpriteExtra* m_customBtn;
    CCTextInputNode* m_enterSongID;
}

[[link(android)]]
class RetryLevelLayer : GJDropDownLayer, RewardedVideoDelegate {
	static RetryLevelLayer* create();

	~RetryLevelLayer();

	TodoReturn getEndText() = win 0xe96b0;
	void onEveryplay(cocos2d::CCObject* sender);
	void onRewardedVideo(cocos2d::CCObject* sender);
	void onMenu(cocos2d::CCObject* sender);
	void onReplay(cocos2d::CCObject* sender);

	TodoReturn setupLastProgress();

	virtual void keyBackClicked() = mac 0x4d46e0;
	virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x4d4610;
	virtual TodoReturn customSetup() = mac 0x4d3530;
	virtual TodoReturn showLayer(bool) = mac 0x4d40f0;
	virtual TodoReturn enterAnimFinished() = mac 0x4d41f0;
	virtual TodoReturn rewardedVideoFinished() = mac 0x4d45f0;
	virtual TodoReturn shouldOffsetRewardCurrency() = mac 0x4d4730;
	virtual void keyUp(cocos2d::enumKeyCodes) = mac 0x4d46c0;
}

[[link(android)]]
class SelectFontLayer : FLAlertLayer {
	static SelectFontLayer* create(LevelEditorLayer*);

	bool init(LevelEditorLayer*);
	~SelectFontLayer();

	void onChangeFont(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateFontLabel();

	virtual void keyBackClicked() = mac 0x278560;
}

[[link(android)]]
class SetColorIDPopup : SetIDPopup, GJSpecialColorSelectDelegate {
	static SetColorIDPopup* create(int);

	bool init(int);
	~SetColorIDPopup();

	void onSelectSpecialColor(cocos2d::CCObject* sender);

	virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int) = mac 0x288cf0;
}

[[link(android)]]
class SetGroupIDLayer : FLAlertLayer, TextInputDelegate {
	static SetGroupIDLayer* create(GameObject*, cocos2d::CCArray*);

	bool init(GameObject*, cocos2d::CCArray*) = mac 0x2ef4a0;
	~SetGroupIDLayer();

	void onAddGroup(cocos2d::CCObject* sender);
	void onArrowLeft(cocos2d::CCObject* sender);
	void onArrowRight(cocos2d::CCObject* sender);
	void onSmoothEase(cocos2d::CCObject* sender);
	void onToggleGuide(cocos2d::CCObject* sender);
	void onZLayerShift(cocos2d::CCObject* sender);
	void onNextGroupID1(cocos2d::CCObject* sender);
	void onAddGroupParent(cocos2d::CCObject* sender);
	void onRemoveFromGroup(cocos2d::CCObject* sender);
	void onToggleSelectedOrder(cocos2d::CCObject* sender);
	void onNextFreeEditorLayer1(cocos2d::CCObject* sender);
	void onNextFreeEditorLayer2(cocos2d::CCObject* sender);
	void onNextFreeOrderChannel(cocos2d::CCObject* sender);
	void onAnim(cocos2d::CCObject* sender);
	void onCopy(cocos2d::CCObject* sender);
	TodoReturn onArrow(int, int);
	void onClose(cocos2d::CCObject* sender);
	void onExtra(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onExtra2(cocos2d::CCObject* sender);
	void onZLayer(cocos2d::CCObject* sender);

	TodoReturn addGroupID(int);
	TodoReturn updateZOrder();
	TodoReturn removeGroupID(int);
	TodoReturn createTextInput(cocos2d::CCPoint, int, int, gd::string, float, int);
	TodoReturn updateEditorLabel();
	TodoReturn updateEditorOrder();
	TodoReturn updateZOrderLabel();
	TodoReturn updateEditorLabel2();
	TodoReturn updateGroupIDLabel();
	TodoReturn updateOrderChannel();
	TodoReturn callRemoveFromGroup(float);
	TodoReturn updateEditorLayerID();
	TodoReturn updateZLayerButtons();
	TodoReturn determineStartValues();
	TodoReturn updateEditorLayerID2();
	TodoReturn updateGroupIDButtons();
	TodoReturn updateEditorOrderLabel();
	TodoReturn updateOrderChannelLabel();

	virtual void keyBackClicked() = mac 0x2f43c0;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x2f3c40;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x2f3c80;

    GameObject* m_targetObject;
    cocos2d::CCArray* m_targetObjects;
    cocos2d::CCArray* m_array0;
    cocos2d::CCArray* m_groupIDObjects;
    CCTextInputNode* m_editorLayerInput;
    CCTextInputNode* m_editorLayer2Input;
    CCTextInputNode* m_zOrderInput;
    CCTextInputNode* m_groupIDInput;
    CCTextInputNode* m_orderInput;
    CCTextInputNode* m_channelInput;
	bool m_showChannelOrder;
	int m_channelValue;
	bool m_channelUpdated;
    int m_groupIDValue;
    int m_editorLayerValue;
    int m_editorLayer2Value;
    int m_zOrderValue;
    ZLayer m_zLayerValue;
	int m_orderValue;
	bool m_channelOrderEdited;
	bool m_editorLayerEdited;
	bool m_removeGroupsLock;
	int m_groupToRemove;
	bool m_addedGroup;
	bool m_unkBool0;
	bool m_hasTargetObjects;
}

[[link(android)]]
class SetupPulsePopup : SetupTriggerPopup, cocos2d::extension::ColorPickerDelegate, GJSpecialColorSelectDelegate {
	static SetupPulsePopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupPulsePopup();

	TodoReturn getColorValue();

	void onExclusive(cocos2d::CCObject* sender);
	void onGroupMainOnly(cocos2d::CCObject* sender);
	void onHSVLegacyMode(cocos2d::CCObject* sender);
	void onSelectPulseMode(cocos2d::CCObject* sender);
	void onUpdateCopyColor(cocos2d::CCObject* sender);
	void onSelectTargetMode(cocos2d::CCObject* sender);
	void onUpdateCustomColor(cocos2d::CCObject* sender);
	void onGroupSecondaryOnly(cocos2d::CCObject* sender);
	void onSelectSpecialColor(cocos2d::CCObject* sender);
	void onSelectSpecialTargetID(cocos2d::CCObject* sender);
	void onCopy(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x38d4c0;
	void onPaste(cocos2d::CCObject* sender);

	TodoReturn selectColor(cocos2d::_ccColor3B);
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateHoldTime();
	TodoReturn updateHSVValue();
	TodoReturn updateTargetID();
	TodoReturn updateCopyColor();
	TodoReturn updateHoldLabel(bool);
	TodoReturn updatePulseMode();
	TodoReturn updateColorValue();
	TodoReturn updateFadeInTime();
	TodoReturn updateColorLabels();
	TodoReturn updateFadeInLabel(bool);
	TodoReturn updateFadeOutTime();
	TodoReturn updateFadeOutLabel(bool);
	TodoReturn updateGroupMainOnly();
	TodoReturn updateTextInputLabel();
	TodoReturn updatePulseTargetType();
	TodoReturn updateGroupSecondaryOnly();
	TodoReturn updateCopyColorTextInputLabel();

	virtual TodoReturn show() = mac 0x38dc40;
	virtual TodoReturn determineStartValues() = mac 0x38c900;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x38dcc0;
	virtual TodoReturn colorValueChanged(cocos2d::_ccColor3B) = mac 0x38d6a0;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = mac 0x38dca0;
	virtual TodoReturn colorSelectClosed(GJSpecialColorSelect*, int) = mac 0x38ce40;
}

[[link(android)]]
class SetupShakePopup : SetupTriggerPopup {
	static SetupShakePopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupShakePopup();

	void onClose(cocos2d::CCObject* sender) = mac 0x628fb0;

	TodoReturn updateShake();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateInterval();
	TodoReturn updateShakeLabel(bool);
	TodoReturn updateIntervalLabel(bool);

	virtual TodoReturn determineStartValues() = mac 0x6288d0;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x628c30;
}

[[link(android)]]
class SetupSpawnPopup : SetupTriggerPopup {
	static SetupSpawnPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupSpawnPopup();

	void onAddRemap(cocos2d::CCObject* sender);
	void onDeleteRemap(cocos2d::CCObject* sender);
	void onSelectRemap(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn queueUpdateButtons();
	TodoReturn updateRemapButtons(float);
}

[[link(android)]]
class SFXFolderObject : SFXInfoObject {
	static SFXFolderObject* create(int, gd::string, int);

	bool init(int, gd::string, int);
	~SFXFolderObject();
}

[[link(android)]]
class SFXSearchResult : MusicSearchResult {
	static SFXSearchResult* create(int);

	bool init(int);
	~SFXSearchResult();

	TodoReturn getActiveFolder();
	TodoReturn getSelectedPage(int, int);

	/* unverified signature */
	void setActiveFolder(SFXFolderObject*);

	virtual TodoReturn updateObjects(AudioSortType) = mac 0x5625c0;
}

[[link(android)]]
class ShareLevelLayer : FLAlertLayer {
	static ShareLevelLayer* create(GJGameLevel*);

	bool init(GJGameLevel*);
	~ShareLevelLayer();

	TodoReturn getStarsButton(int, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float);

	void onSettings(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onShare(cocos2d::CCObject* sender) = win 0x381b90;

	TodoReturn setupStars();
	TodoReturn selectRating(cocos2d::CCObject*);

	virtual void keyBackClicked() = mac 0x25f410;
}

[[link(android)]]
class TopArtistsLayer : FLAlertLayer, OnlineListDelegate {
	static TopArtistsLayer* create();

	~TopArtistsLayer();

	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn setupPageInfo(gd::string, char const*) = mac 0x2ee360;
	TodoReturn setupLeaderboard(cocos2d::CCArray*);
	TodoReturn updateLevelsLabel();
	TodoReturn loadPage(int);
	/* unverified signature */
	bool isCorrect(char const*);

	virtual bool init() = mac 0x2ed8a0;
	virtual void registerWithTouchDispatcher() = mac 0x2ee210;
	virtual void keyBackClicked() = mac 0x2ee1a0;
	virtual TodoReturn show() = mac 0x2eebf0;
	virtual TodoReturn loadListFinished(cocos2d::CCArray*, char const*) = mac 0x2ee260;
	virtual TodoReturn loadListFailed(char const*) = mac 0x2ee320;
}

[[link(android)]]
class UISaveLoadLayer : SetupTriggerPopup {
	static UISaveLoadLayer* create(UIOptionsLayer*);

	bool init(UIOptionsLayer*);
	~UISaveLoadLayer();

	void onLoad(cocos2d::CCObject* sender);
	void onSave(cocos2d::CCObject* sender);
}

[[link(android)]]
class UploadListPopup : FLAlertLayer, ListUploadDelegate {
	static UploadListPopup* create(GJLevelList*);

	bool init(GJLevelList*);
	~UploadListPopup();

	void onReturnToList(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = mac 0x342eb0;
	virtual TodoReturn show() = mac 0x342e40;
	virtual TodoReturn listUploadFinished(GJLevelList*) = mac 0x342960;
	virtual TodoReturn listUploadFailed(GJLevelList*, int) = mac 0x342b80;
}

[[link(android)]]
class AccountHelpLayer : GJDropDownLayer, GJAccountDelegate, FLAlertLayerProtocol {
	static AccountHelpLayer* create();

	~AccountHelpLayer();

	void onAccountManagement(cocos2d::CCObject* sender);
	void onUnlink(cocos2d::CCObject* sender);
	void onReLogin(cocos2d::CCObject* sender);

	TodoReturn updatePage();
	TodoReturn verifyUnlink();
	TodoReturn doUnlink();
	TodoReturn exitLayer();

	virtual TodoReturn customSetup() = mac 0xcab60;
	virtual TodoReturn layerHidden() = mac 0xcb740;
	virtual TodoReturn accountStatusChanged() = mac 0xcb600;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0xcb630;
}

[[link(android)]]
class CCAnimatedSprite : cocos2d::CCSprite {
	TodoReturn initWithType(char const*, cocos2d::CCTexture2D*, bool) = win 0x20d20, mac 0x32e2b0;
	~CCAnimatedSprite();

	TodoReturn runAnimation(gd::string) = win 0x21640, mac 0x32eda0;
	TodoReturn switchToMode(spriteMode);
	TodoReturn cleanupSprite();
	TodoReturn createWithType(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn tweenToAnimation(gd::string, float) = win 0x21750, mac 0x32eeb0;
	TodoReturn willPlayAnimation();
	TodoReturn runAnimationForced(gd::string);
	TodoReturn tweenToAnimationFinished();
	TodoReturn loadType(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn stopTween();

	virtual void setOpacity(unsigned char) = mac 0x32f2d0;
	virtual void setColor(cocos2d::_ccColor3B const&) = mac 0x32f380;
	virtual TodoReturn animationFinished(char const*) = mac 0x32f2b0;
	virtual TodoReturn animationFinishedO(cocos2d::CCObject*) = mac 0x32f280;
}

[[link(android)]]
class CCPartAnimSprite : cocos2d::CCSprite {
	TodoReturn initWithAnimDesc(char const*, cocos2d::CCTexture2D*, bool);
	~CCPartAnimSprite();

	TodoReturn getSpriteForKey(char const*);

	/* unverified signature */
	void setColor(cocos2d::_ccColor3B) = win 0x27270, mac 0x353390;
	/* unverified signature */
	void setFlipX(bool);
	/* unverified signature */
	void setFlipY(bool);

	TodoReturn countParts();
	TodoReturn tweenToFrame(cocos2d::CCSpriteFrame*, float);
	TodoReturn tweenSpriteTo(SpriteDescription*, float);
	TodoReturn transformSprite(SpriteDescription*);
	TodoReturn changeTextureOfID(char const*, char const*);
	TodoReturn createWithAnimDesc(char const*, cocos2d::CCTexture2D*, bool);
	TodoReturn dirtify();

	virtual void setScaleX(float) = mac 0x3531d0;
	virtual void setScaleY(float) = mac 0x3531f0;
	virtual void setScale(float) = mac 0x3531b0;
	virtual void setOpacity(unsigned char) = mac 0x353460;
	virtual void setBlendFunc(cocos2d::_ccBlendFunc) = mac 0x353210;
	virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = mac 0x352d80;
	virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = mac 0x352ef0;
	virtual cocos2d::CCSpriteFrame* displayFrame() = mac 0x352f10;
}

[[link(android)]]
class CCSpriteCOpacity : cocos2d::CCSprite {
	~CCSpriteCOpacity();

	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*);
	TodoReturn createWithSpriteFrameName(char const*);

	virtual void setOpacity(unsigned char) = mac 0x45eaa0;
}


[[link(android), depends(GJAssetDownloadAction)]]
class CustomSongWidget : cocos2d::CCNode, MusicDownloadDelegate, FLAlertLayerProtocol {
	static CustomSongWidget* create(SongInfoObject*, CustomSongDelegate*, bool, bool, bool, bool, bool, bool) = mac 0x5de780;

	bool init(SongInfoObject*, CustomSongDelegate*, bool, bool, bool, bool, bool, bool) = mac 0x5de910, win 0x921A0;
	~CustomSongWidget() = mac 0x5de750;

	TodoReturn getSongInfoIfUnloaded();

	void onDownload(cocos2d::CCObject* sender) = mac 0x5dfbe0, win 0x93A90;
	void onPlayback(cocos2d::CCObject* sender) = mac 0x5e0080, win 0x93D10;
	void onGetSongInfo(cocos2d::CCObject* sender) = mac 0x5dfff0;
	void onCancelDownload(cocos2d::CCObject* sender) = mac 0x5dfe70, win 0x93960;
	void onMore(cocos2d::CCObject* sender) = mac 0x5e02e0, win 0x93390;
	void onDelete(cocos2d::CCObject* sender) = mac 0x5dfeb0;
	void onSelect(cocos2d::CCObject* sender) = mac 0x5dff90, win 0x93CC0;

	TodoReturn deleteSong() = mac 0x5e1850;
	TodoReturn updateError(GJSongError);
	TodoReturn verifySongID(int);
	TodoReturn startDownload();
	TodoReturn downloadFailed();
	TodoReturn updateSongInfo() = mac 0x5e0a70;
	TodoReturn updateLengthMod(float);
	TodoReturn updateSongObject(SongInfoObject*);
	TodoReturn updatePlaybackBtn() = mac 0x5e1780;
	TodoReturn updateProgressBar(int);
	TodoReturn toggleUpdateButton(bool);
	TodoReturn downloadAssetFailed(int, GJAssetType, GJSongError);
	TodoReturn startMonitorDownload();
	void updateMultiAssetInfo(bool) = win 0x94FE0;
	TodoReturn downloadAssetFinished(int, GJAssetType);
	TodoReturn processNextMultiAsset();
	TodoReturn updateWithMultiAssets(gd::string, gd::string, int) = mac 0x5e2370;
	TodoReturn updateDownloadProgress(float);
	TodoReturn startMultiAssetDownload();
	TodoReturn showError(bool) = mac 0x5e1990;

	virtual TodoReturn loadSongInfoFinished(SongInfoObject*) = mac 0x5e3290;
	virtual TodoReturn loadSongInfoFailed(int, GJSongError) = mac 0x5e3440;
	virtual TodoReturn downloadSongFinished(int) = mac 0x5e3640;
	virtual TodoReturn downloadSongFailed(int, GJSongError) = mac 0x5e3920;
	virtual TodoReturn downloadSFXFinished(int) = mac 0x5e3ab0;
	virtual TodoReturn downloadSFXFailed(int, GJSongError) = mac 0x5e3ae0;
	virtual TodoReturn musicActionFinished(GJMusicAction) = mac 0x5e3da0;
	virtual TodoReturn musicActionFailed(GJMusicAction) = mac 0x5e3e00;
	virtual TodoReturn songStateChanged() = mac 0x5e2300;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x5e3ee0;

	SongInfoObject* m_songInfoObject;
	cocos2d::CCMenu* m_buttonMenu;
	cocos2d::CCLabelBMFont* m_songLabel;
	cocos2d::CCLabelBMFont* m_artistLabel;
	cocos2d::CCLabelBMFont* m_songIDLabel;
	cocos2d::CCLabelBMFont* m_errorLabel;
	CCMenuItemSpriteExtra* m_downloadBtn;
	CCMenuItemSpriteExtra* m_cancelDownloadBtn;
	CCMenuItemSpriteExtra* m_selectSongBtn;
	CCMenuItemSpriteExtra* m_getSongInfoBtn;
	CCMenuItemSpriteExtra* m_playbackBtn;
	CCMenuItemSpriteExtra* m_moreBtn;
	CCMenuItemSpriteExtra* m_deleteBtn;
	cocos2d::CCSprite* m_sliderGroove;
	cocos2d::CCSprite* m_sliderBar;
	cocos2d::CCSprite* m_bgSpr;
	CustomSongDelegate* m_songDelegate;
	bool m_showSelectSongBtn;
	bool m_showPlayMusicBtn;
	bool m_showDownloadBtn;
	bool m_isNotDownloading;
	bool m_isRobtopSong;
	bool m_hasMultipleAssets;
	int m_customSongID;
	float m_unkFloat;
	bool m_unkBool1;
	void* m_unkPtr;
	bool m_hasLibrarySongs;
	bool m_hasSFX;
	bool m_unkBool2;
	gd::map<int, bool> m_songs;
	gd::map<int, bool> m_sfx;
	gd::vector<GJAssetDownloadAction> m_undownloadedAssets;
	int m_unkInt;
	InfoAlertButton* m_assetInfoBtn;
}


[[link(android)]]
class FollowRewardPage : FLAlertLayer, FLAlertLayerProtocol, GameRateDelegate, RewardedVideoDelegate {
	static FollowRewardPage* create();

	~FollowRewardPage();

	void onSpecialItem(cocos2d::CCObject* sender);
	void onRewardedVideo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn switchToOpenedState(CCMenuItemSpriteExtra*);
	virtual bool init() = mac 0x3ff7b0;
	virtual void registerWithTouchDispatcher() = mac 0x401930;
	virtual void keyBackClicked() = mac 0x4018c0;
	virtual TodoReturn show() = mac 0x401690;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x401810;
	virtual TodoReturn rewardedVideoFinished() = mac 0x401670;
	virtual TodoReturn updateRate() = mac 0x401320;
}

[[link(android)]]
class GameOptionsLayer : GJOptionsLayer {
	static GameOptionsLayer* create(GJBaseGameLayer*);

	bool init(GJBaseGameLayer*);
	~GameOptionsLayer();

	void onUIOptions(cocos2d::CCObject* sender);
	void onPracticeMusicSync(cocos2d::CCObject* sender) = win 0x20eeb0, mac 0x28d090;

	void showPracticeMusicSyncUnlockInfo() = win 0x20eba0;

	virtual void setupOptions() = win 0x20e710, mac 0x28cc30;
	virtual TodoReturn didToggle(int) = mac 0x28d610;
}

[[link(android)]]
class GhostTrailEffect : cocos2d::CCNode {
	static GhostTrailEffect* create() = win 0x46890;

	~GhostTrailEffect();

	TodoReturn runWithTarget(cocos2d::CCSprite*, float, float, float, float, bool);
	TodoReturn trailSnapshot(float);
	TodoReturn doBlendAdditive();
	TodoReturn stopTrail();

	virtual bool init() = mac 0x5bece0;
	virtual void draw() = mac 0x5bf290;
}

[[link(android)]]
class GJAssetDownloadAction {
	int m_id;
	GJAssetType m_assetType;
	int m_status;
}

[[link(android)]]
class GJFlyGroundLayer : GJGroundLayer {
	static GJFlyGroundLayer* create();

	~GJFlyGroundLayer();

	virtual bool init() = mac 0x5b0840;
}

[[link(android)]]
class GJLevelScoreCell : TableViewCell {
	~GJLevelScoreCell();

	void onViewProfile(cocos2d::CCObject* sender);

	void loadFromScore(GJUserScore*) = mac 0x229660, win 0x874F0;
	void updateBGColor(int) = win 0x807B0;
	GJLevelScoreCell(char const*, float, float);

	virtual bool init() = mac 0x234030;
	virtual void draw() = mac 0x234080;
}

[[link(android)]]
class GJMoreGamesLayer : GJDropDownLayer {
	static GJMoreGamesLayer* create();

	~GJMoreGamesLayer();

	TodoReturn getMoreGamesList();

	virtual TodoReturn customSetup() = mac 0x757290;
}

[[link(android)]]
class GJRewardDelegate {
	virtual TodoReturn rewardsStatusFinished(int);
	virtual TodoReturn rewardsStatusFailed();
}

[[link(android)]]
class GJUnlockableItem : cocos2d::CCObject {
	static GJUnlockableItem* create();

	bool init();
	~GJUnlockableItem();
}

[[link(android)]]
class KeybindingsLayer : FLAlertLayer {
	static KeybindingsLayer* create();

	~KeybindingsLayer();

	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);

	TodoReturn addKeyPair(char const*, char const*);
	TodoReturn countForPage(int);
	TodoReturn layerForPage(int);
	TodoReturn nextPosition(int);
	TodoReturn objectsForPage(int);
	TodoReturn incrementCountForPage(int);
	TodoReturn infoKey(int);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	TodoReturn objectKey(int);

	virtual bool init() = win 0x227270, mac 0x5ce680;
	virtual void keyBackClicked() = mac 0x5cff50;
}


[[link(android)]]
class LevelLeaderboard : FLAlertLayer, LeaderboardManagerDelegate, FLAlertLayerProtocol {
	static LevelLeaderboard* create(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = mac 0x3b8480, win 0x253700;

	bool init(GJGameLevel*, LevelLeaderboardType, LevelLeaderboardMode) = mac 0x3b8610, win 0x2537c0;
	~LevelLeaderboard();

	TodoReturn getLocalScores() = mac 0x3b9fe0;
	TodoReturn getSpriteButton(gd::string, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint, int) = mac 0x3b9640;

	void onChangeMode(cocos2d::CCObject* sender) = mac 0x3b97f0, win 0x254d50;
	void onChangeType(cocos2d::CCObject* sender) = mac 0x3b9a20, win 0x254d00;
	void onDeleteLocalScores(cocos2d::CCObject* sender) = mac 0x3b9840;
	void onClose(cocos2d::CCObject* sender) = mac 0x3b9910, win 0x6a340;
	void onUpdate(cocos2d::CCObject* sender) = mac 0x3b9940, win 0x254d90;

	TodoReturn loadScores() = mac 0x3b9a80;
	TodoReturn setupLeaderboard(cocos2d::CCArray*) = mac 0x3b9c60;
	TodoReturn deleteLocalScores();
	TodoReturn reloadLeaderboard(LevelLeaderboardType, LevelLeaderboardMode) = win 0x254c50;
	/* unverified signature */
	bool isCorrect(char const*);

	virtual void registerWithTouchDispatcher() = mac 0x3ba380;
	virtual void keyBackClicked() = mac 0x3ba310;
	virtual TodoReturn show() = mac 0x3ba8d0, win 0x5D2C0;
	virtual TodoReturn loadLeaderboardFinished(cocos2d::CCArray*, char const*) = mac 0x3ba5d0;
	virtual TodoReturn loadLeaderboardFailed(char const*) = mac 0x3ba710;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x3b9f60;
	virtual TodoReturn updateUserScoreFinished() = mac 0x3ba160;
	virtual TodoReturn updateUserScoreFailed() = mac 0x3ba190;

	GJGameLevel* m_level;
	LevelLeaderboardType m_type;
    LevelLeaderboardMode m_mode;
    cocos2d::CCArray* m_scores;
    GJCommentListLayer* m_list;
    LoadingCircle* m_circle;
    TextArea* m_noInternet;
    CCMenuItemSpriteExtra* m_refreshBtn;
    CCMenuItemSpriteExtra* m_timeBtn;
    CCMenuItemSpriteExtra* m_pointsBtn;
}

[[link(android)]]
class MoreOptionsLayer : FLAlertLayer, TextInputDelegate, GooglePlayDelegate, GJDropDownLayerDelegate {
	static MoreOptionsLayer* create();

	~MoreOptionsLayer();

	void onGPSignIn(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onParental(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onFMODDebug(cocos2d::CCObject* sender) = win 0x2aea40;
	void onGPSignOut(cocos2d::CCObject* sender);
	void onKeybindings(cocos2d::CCObject* sender);
	void onSongBrowser(cocos2d::CCObject* sender) = win 0x2ae9f0;
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender) = mac 0x75fa80;

	TodoReturn countForPage(int);
	TodoReturn layerForPage(int);
	TodoReturn nextPosition(int);
	TodoReturn objectsForPage(int);
	TodoReturn offsetToNextPage();
	TodoReturn incrementCountForPage(int);
	TodoReturn infoKey(int);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	TodoReturn toggleGP();
	TodoReturn addToggle(char const*, char const*, char const*) = mac 0x75e760;
	TodoReturn objectKey(int);

	virtual bool init() = mac 0x75d590;
	virtual void keyBackClicked() = mac 0x760630;
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float) = mac 0x760660;
	virtual TodoReturn textInputReturn(CCTextInputNode*) = mac 0x760720;
	virtual TodoReturn googlePlaySignedIn() = mac 0x7607d0;
	virtual TodoReturn dropDownLayerWillClose(GJDropDownLayer*) = mac 0x7604b0;
}

[[link(android)]]
class MultiplayerLayer : cocos2d::CCLayer {
	static MultiplayerLayer* create();

	~MultiplayerLayer();

	void onBack(cocos2d::CCObject* sender);
	void onBtn1(cocos2d::CCObject* sender);
	void onBtn2(cocos2d::CCObject* sender);

	TodoReturn scene();

	virtual bool init() = mac 0x3789a0;
	virtual void keyBackClicked() = mac 0x378a90;
}


[[link(android)]]
class SelectEventLayer : SetupTriggerPopup {
	static SelectEventLayer* create(SetupEventLinkPopup*, gd::set<int>&);

	bool init(SetupEventLinkPopup*, gd::set<int>&);
	~SelectEventLayer();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = mac 0x545320;
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x545550;

	TodoReturn nextPosition();
	TodoReturn addToggle(int, gd::string);

	virtual void keyBackClicked() = mac 0x545620;
}

[[link(android)]]
class SetTargetIDLayer : SetupTriggerPopup {
	static SetTargetIDLayer* create(EffectGameObject*, cocos2d::CCArray*, gd::string, gd::string, int, int, int);

	bool init(EffectGameObject*, cocos2d::CCArray*, gd::string, gd::string, int, int, int);
	~SetTargetIDLayer();

	virtual TodoReturn determineStartValues() = mac 0x294a40;
	virtual TodoReturn valueDidChange(int, float) = mac 0x294a50;
}

[[link(android)]]
class SetupPortalPopup : FLAlertLayer, TextInputDelegate {
	static SetupPortalPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupPortalPopup();

	void onUnboundMode(cocos2d::CCObject* sender);
	void onEditCameraSettings(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateCameraEasing();
	TodoReturn updateCameraPadding();
	TodoReturn determineStartValues();
	TodoReturn updateItemVisibility();
	TodoReturn updateCameraEasingLabel();
	TodoReturn updateCameraPaddingLabel();

	virtual void keyBackClicked() = mac 0x53c1a0;
}

[[link(android)]]
class SetupReverbPopup : SetupTriggerPopup {
	static SetupReverbPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*);

	bool init(SFXTriggerGameObject*, cocos2d::CCArray*);
	~SetupReverbPopup();

	void onPlay(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x493d90;
	void onReverb(cocos2d::CCObject* sender);

	TodoReturn updateReverbLabel();
}

[[link(android)]]
class SetupRotatePopup : SetupTriggerPopup {
	static SetupRotatePopup* create(EnhancedGameObject*, cocos2d::CCArray*);

	bool init(EnhancedGameObject*, cocos2d::CCArray*);
	~SetupRotatePopup();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = mac 0x565060;
	void onClose(cocos2d::CCObject* sender) = mac 0x564fd0;
}

[[link(android)]]
class SongOptionsLayer : FLAlertLayer {
	static SongOptionsLayer* create(CustomSongDelegate*);

	bool init(CustomSongDelegate*);
	~SongOptionsLayer();

	void onPlayback(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onFadeIn(cocos2d::CCObject* sender);
	void onFadeOut(cocos2d::CCObject* sender);

	TodoReturn updatePlaybackBtn();

	virtual void keyBackClicked() = mac 0x1f60a0;
}

[[link(android)]]
class TextStyleSection : cocos2d::CCObject {
	static TextStyleSection* create(int, int, TextStyleType);

	bool init(int, int, TextStyleType);
	~TextStyleSection();

	TodoReturn createDelaySection(int, float);
	TodoReturn createShakeSection(int, int, int, int);
	TodoReturn createColoredSection(cocos2d::_ccColor3B, int, int);
	TodoReturn createInstantSection(int, int, float);
}

[[link(android)]]
class UserListDelegate {
	virtual TodoReturn getUserListFinished(cocos2d::CCArray*, UserListType);
	virtual TodoReturn getUserListFailed(UserListType, GJErrorCode);
	virtual TodoReturn userListChanged(cocos2d::CCArray*, UserListType);
	virtual TodoReturn forceReloadList(UserListType);
}

[[link(android)]]
class WorldSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate {
	static WorldSelectLayer* create(int);

	bool init(int) = mac 0x3a02a0;
	~WorldSelectLayer();

	TodoReturn getColorValue(int, int, float);

	void onFreeLevels(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onNext(cocos2d::CCObject* sender);
	void onPrev(cocos2d::CCObject* sender);
	void onGarage(cocos2d::CCObject* sender) = mac 0x3a0aa0;

	TodoReturn setupWorlds();
	TodoReturn colorForPage(int);
	TodoReturn updateArrows();
	TodoReturn unblockButtons();
	TodoReturn showCompleteDialog();
	TodoReturn animateInActiveIsland();
	TodoReturn scene(int);
	TodoReturn goToPage(int, bool);
	TodoReturn tryShowAd();

	virtual void onExit() = mac 0x3a1fb0;
	virtual void keyBackClicked() = mac 0x3a1ed0;
	virtual TodoReturn scrollLayerWillScrollToPage(BoomScrollLayer*, int) = mac 0x3a1de0;
	virtual TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int) = mac 0x3a1cf0;
	virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint) = mac 0x3a2000;
}

[[link(android)]]
class AccountLoginLayer : FLAlertLayer, TextInputDelegate, GJAccountLoginDelegate, FLAlertLayerProtocol {
	static AccountLoginLayer* create(gd::string);

	bool init(gd::string);
	~AccountLoginLayer();

	void onForgotUser(cocos2d::CCObject* sender);
	void onForgotPassword(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);

	TodoReturn resetLabel(int);
	TodoReturn resetLabels();
	TodoReturn updateLabel(AccountError);
	TodoReturn disableNodes();
	TodoReturn hideLoadingUI();
	TodoReturn showLoadingUI();
	TodoReturn createTextInput(cocos2d::CCPoint, cocos2d::CCSize, char const*, int);
	TodoReturn createTextLabel(cocos2d::CCPoint, char const*, cocos2d::CCSize);
	TodoReturn createTextBackground(cocos2d::CCPoint, char const*, cocos2d::CCSize);
	TodoReturn toggleUI(bool);

	virtual void registerWithTouchDispatcher() = mac 0x476860;
	virtual void keyBackClicked() = mac 0x476720;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x476560;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = mac 0x476a20;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x4768a0;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x476a40;
	virtual TodoReturn loginAccountFinished(int, int) = mac 0x475f20;
	virtual TodoReturn loginAccountFailed(AccountError) = mac 0x476230;
}

[[link(android)]]
class AchievementsLayer : GJDropDownLayer {
	static AchievementsLayer* create();

	~AchievementsLayer();

	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);

	TodoReturn setupPageInfo(int, int, int);
	TodoReturn setupLevelBrowser(cocos2d::CCArray*);
	TodoReturn loadPage(int);

	virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x351660;
	virtual TodoReturn customSetup() = mac 0x3511a0;
}

[[link(android)]]
class AudioEffectsLayer : cocos2d::CCLayerColor {
	static AudioEffectsLayer* create(gd::string);

	bool init(gd::string);
	~AudioEffectsLayer();

	TodoReturn getBGSquare();

	TodoReturn triggerEffect(float) = win 0x5BB70, mac 0x48b650;
	TodoReturn resetAudioVars();
	TodoReturn audioStep(float) = win 0x5BAD0, mac 0x48b580;
	TodoReturn goingDown();

	virtual void draw() = mac 0x48b8e0;
	virtual void updateTweenAction(float, char const*) = mac 0x48b790;
}

[[link(android)]]
class CCSpriteGrayscale : CCSpriteWithHue {
	static CCSpriteGrayscale* create(gd::string const&);
	static CCSpriteGrayscale* create(gd::string const&, cocos2d::CCRect const&);

	~CCSpriteGrayscale();

	TodoReturn createWithTexture(cocos2d::CCTexture2D*);
	TodoReturn createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
	TodoReturn createWithSpriteFrame(cocos2d::CCSpriteFrame*) = mac 0x5b6a70;
	static CCSpriteGrayscale* createWithSpriteFrameName(gd::string const&) = mac 0x5b6b50;

	virtual TodoReturn getShaderName() = mac 0x5b66f0;
	virtual TodoReturn shaderBody() = mac 0x5b64f0;
}


[[link(android)]]
class CustomSFXDelegate {
	virtual TodoReturn sfxObjectSelected(SFXInfoObject*);
	virtual TodoReturn getActiveSFXID();
	virtual TodoReturn overridePlaySFX(SFXInfoObject*);
}

[[link(android)]]
class DungeonBarsSprite : cocos2d::CCNode {
	static DungeonBarsSprite* create();

	~DungeonBarsSprite();

	TodoReturn animateOutBars();

	virtual bool init() = mac 0x4843e0;
	virtual void visit() = mac 0x484460;
}

[[link(android)]]
class EditTriggersPopup : SetupTriggerPopup {
	static EditTriggersPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~EditTriggersPopup();

	void onClose(cocos2d::CCObject* sender) = mac 0x278b60;

	virtual TodoReturn determineStartValues() = mac 0x278b50;
}

[[link(android)]]
class ExplodeItemSprite : cocos2d::CCSprite {
	static ExplodeItemSprite* create();

	~ExplodeItemSprite();

	virtual bool init() = mac 0x1f38e0;
}

[[link(android)]]
class GJColorSetupLayer : FLAlertLayer, ColorSelectDelegate, FLAlertLayerProtocol {
	static GJColorSetupLayer* create(LevelSettingsObject*);

	bool init(LevelSettingsObject*);
	~GJColorSetupLayer();

	void onPage(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onColor(cocos2d::CCObject* sender);

	TodoReturn updateSpriteColor(ColorChannelSprite*, cocos2d::CCLabelBMFont*, int);
	TodoReturn updateSpriteColors();
	TodoReturn showPage(int);

	virtual void keyBackClicked() = mac 0x1eac60;
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*) = mac 0x1eac30;
}

[[link(android)]]
class GJPathRewardPopup : FLAlertLayer {
	static GJPathRewardPopup* create(int);

	bool init(int);
	~GJPathRewardPopup();

	void onClaim(cocos2d::CCObject* sender);

	TodoReturn closePopup();

	virtual void keyBackClicked() = mac 0x2dffb0;
}

[[link(android)]]
class GJRotationControl : cocos2d::CCLayer {
	static GJRotationControl* create() = mac 0xf450;

	~GJRotationControl();

	void setAngle(float);

	TodoReturn finishTouch();
	TodoReturn updateSliderPosition(cocos2d::CCPoint);

	virtual bool init() = mac 0x54a10;
	virtual void draw() = mac 0x55010;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x54c80;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x54da0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x54f00;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x54fd0;
}

[[link(android)]]
class GooglePlayManager : cocos2d::CCNode {
	~GooglePlayManager();

	TodoReturn sharedState() = mac 0x455950;
	TodoReturn googlePlaySignedIn();

	virtual bool init() = mac 0x4559b0;
}

[[link(android)]]
class HSVWidgetDelegate {
	virtual TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::_ccHSVValue);
	virtual TodoReturn hsvChanged(ConfigureHSVWidget*);
}

[[link(android)]]
class LeaderboardsLayer : cocos2d::CCLayer, LeaderboardManagerDelegate, FLAlertLayerProtocol {
	static LeaderboardsLayer* create(LeaderboardState) = mac 0x4ea500, win 0x228BD0;

	bool init(LeaderboardState) = mac 0x4ea600, win 0x228c70;
	~LeaderboardsLayer();

	void onCreators(cocos2d::CCObject* sender);
	void onTop(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onWeek(cocos2d::CCObject* sender);
	void onGlobal(cocos2d::CCObject* sender);

	TodoReturn refreshTabs() = mac 0x4eb590;
	TodoReturn toggleTabButtons();
	TodoReturn selectLeaderboard(LeaderboardState) = mac 0x4eb260;
	TodoReturn setupLevelBrowser(cocos2d::CCArray*) = mac 0x4eb450;
	TodoReturn scene(LeaderboardState) = mac 0x4ea3d0;
	/* unverified signature */
	bool isCorrect(char const*);
	TodoReturn setupTabs() = mac 0x4eae30;

	virtual void keyBackClicked() = mac 0x4ec1a0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x4ec140;
	virtual TodoReturn updateUserScoreFinished() = mac 0x4eb820;
	virtual TodoReturn updateUserScoreFailed() = mac 0x4eb880;
	virtual TodoReturn loadLeaderboardFinished(cocos2d::CCArray*, char const*) = mac 0x4eb920;
	virtual TodoReturn loadLeaderboardFailed(char const*) = mac 0x4ebea0;

	GJListLayer* m_list;
	cocos2d::CCArray* m_userScores;
	LeaderboardState m_state;
	CCMenuItemToggler* m_topBtn;
	CCMenuItemToggler* m_globalBtn;
	CCMenuItemToggler* m_creatorsBtn;
	CCMenuItemToggler* m_friendsBtn;
	LoadingCircle* m_circle;
	TextArea* m_noInternet;
	cocos2d::CCArray* m_tabs;
}


[[link(android)]]
class LevelFeatureLayer : FLAlertLayer {
	static LevelFeatureLayer* create(int);

	bool init(int);
	~LevelFeatureLayer();

	void onToggleEpic(cocos2d::CCObject* sender);
	void onSetEpicOnly(cocos2d::CCObject* sender);
	void onSetFeatured(cocos2d::CCObject* sender);
	void onRemoveValues(cocos2d::CCObject* sender);
	void onUp(cocos2d::CCObject* sender);
	void onUp2(cocos2d::CCObject* sender);
	void onDown(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onDown2(cocos2d::CCObject* sender);

	TodoReturn updateStars();

	virtual void keyBackClicked() = mac 0x4e0430;
}

[[link(android)]]
class LevelOptionsLayer : GJOptionsLayer {
	static LevelOptionsLayer* create(LevelSettingsObject*);

	bool init(LevelSettingsObject*);
	~LevelOptionsLayer();

	void onSettings(cocos2d::CCObject* sender);

	virtual TodoReturn valueDidChange(int, float) = mac 0x24fbc0;
	virtual TodoReturn getValue(int) = mac 0x24fbe0;
	virtual TodoReturn setupOptions() = mac 0x24f5f0;
	virtual TodoReturn didToggle(int) = mac 0x24fc00;
}

[[link(android)]]
class MultiTriggerPopup : SetupTriggerPopup {
	static MultiTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~MultiTriggerPopup();
}

[[link(android)]]
class MusicArtistObject : cocos2d::CCObject {
	static MusicArtistObject* create(int, gd::string, gd::string, gd::string);

	bool init(int, gd::string, gd::string, gd::string);
	~MusicArtistObject();
}

[[link(android)]]
class MusicSearchResult : cocos2d::CCObject, OptionsObjectDelegate {
	static MusicSearchResult* create();

	bool init();
	~MusicSearchResult();

	TodoReturn getFilesMatchingSearch(cocos2d::CCArray*, gd::string);

	TodoReturn updateObjects();
	TodoReturn applyTagFilters(cocos2d::CCArray*);
	TodoReturn updateFutureCount(cocos2d::CCArray*, cocos2d::CCArray*);
	TodoReturn applyArtistFilters(cocos2d::CCArray*);
	TodoReturn createTagFilterObjects();
	TodoReturn createArtistFilterObjects();

	virtual TodoReturn updateObjects(AudioSortType) = mac 0x561cc0;
	virtual TodoReturn stateChanged(OptionsObject*) = mac 0x561c60;
}

[[link(android)]]
class PromoInterstitial : FLAlertLayer {
	static PromoInterstitial* create(bool);

	bool init(bool);
	~PromoInterstitial();

	void onClick(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn setup();

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2aeef0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2af110;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2aeff0;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2af090;
	virtual void keyBackClicked() = mac 0x2aed50;
	virtual TodoReturn show() = mac 0x2aed20;
}

[[link(android)]]
class PulseEffectAction {
	/* unverified signature */
	bool isFinished();
	TodoReturn valueForDelta(float, float, float, float);
	virtual void step(float);
}

[[link(android)]]
class PurchaseItemPopup : FLAlertLayer {
	static PurchaseItemPopup* create(GJStoreItem*) = win 0x217FB0;

	bool init(GJStoreItem*) = win 0x218050;
	~PurchaseItemPopup();

	void onPurchase(cocos2d::CCObject* sender) = win 0x218AD0;
	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = mac 0x305650;
}

[[link(android)]]
class RewardUnlockLayer : FLAlertLayer, CurrencyRewardDelegate {
	static RewardUnlockLayer* create(int, RewardsPage*) = win 0x2F0610;

	bool init(int, RewardsPage*) = win 0x2F06C0;
	~RewardUnlockLayer();

	void onClose(cocos2d::CCObject* sender);

	TodoReturn playDropSound();
	TodoReturn readyToCollect(GJRewardItem*);
	TodoReturn playLabelEffect(int, int, cocos2d::CCSprite*, cocos2d::CCPoint, float);
	TodoReturn showCloseButton();
	TodoReturn playRewardEffect();
	TodoReturn connectionTimeout();
	TodoReturn showCollectReward(GJRewardItem*) = win 0x2F1380;
	TodoReturn labelEnterFinishedO(cocos2d::CCObject*);
	TodoReturn step2();
	TodoReturn step3();

	virtual void keyBackClicked() = mac 0x1fd870;
	virtual TodoReturn currencyWillExit(CurrencyRewardLayer*) = mac 0x1fd830;
}

[[link(android)]]
class SecretNumberLayer : cocos2d::CCLayer {
	static SecretNumberLayer* create();

	~SecretNumberLayer();

	TodoReturn playNumberEffect(int);

	virtual bool init() = mac 0x47f190;
}


[[link(android)]]
class SetupOpacityPopup : SetupTriggerPopup {
	static SetupOpacityPopup* create(EffectGameObject*, cocos2d::CCArray*) = mac 0x59f90;

	bool init(EffectGameObject*, cocos2d::CCArray*) = mac 0x5a1e0;
	~SetupOpacityPopup();

	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x5b9c0;

	TodoReturn sliderChanged(cocos2d::CCObject*) = mac 0x5b000;
	TodoReturn updateOpacity();
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateTargetID();
	TodoReturn updateOpacityLabel();
	TodoReturn updateTextInputLabel();

	virtual TodoReturn determineStartValues() = mac 0x5b3c0;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x5b720;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x5b760;
}

[[link(android)]]
class SetupSFXEditPopup : SetupAudioTriggerPopup {
	static SetupSFXEditPopup* create(SFXTriggerGameObject*, cocos2d::CCArray*, bool);

	bool init(SFXTriggerGameObject*, cocos2d::CCArray*, bool);
	~SetupSFXEditPopup();
}



[[link(android)]]
class SmartTemplateCell : TableViewCell {
	~SmartTemplateCell();

	void onClick(cocos2d::CCObject* sender);

	void updateBGColor(int) = win 0x8AB60;
	void loadFromObject(GJSmartTemplate*) = mac 0x22bb00, win 0x8A860;
	SmartTemplateCell(char const*, float, float);

	virtual bool init() = mac 0x237000;
	virtual void draw() = mac 0x2370d0;
}

[[link(android)]]
class SpriteDescription : cocos2d::CCObject {
	TodoReturn initDescription(DS_Dictionary*);
	TodoReturn initDescription(cocos2d::CCDictionary*);
	~SpriteDescription();

	TodoReturn createDescription(DS_Dictionary*);
	TodoReturn createDescription(cocos2d::CCDictionary*);
}

[[link(android)]]
class VideoOptionsLayer : FLAlertLayer {
	static VideoOptionsLayer* create() = mac 0x75d140;

	~VideoOptionsLayer();

	void onAdvanced(cocos2d::CCObject* sender);
	void onFullscreen(cocos2d::CCObject* sender);
	void onResolutionNext(cocos2d::CCObject* sender);
	void onResolutionPrev(cocos2d::CCObject* sender);
	void onTextureQualityNext(cocos2d::CCObject* sender);
	void onTextureQualityPrev(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onApply(cocos2d::CCObject* sender) = win 0x2aff80, mac 0x761e10;
	void onClose(cocos2d::CCObject* sender);

	TodoReturn reloadMenu();
	TodoReturn toggleResolution();
	TodoReturn updateResolution(int);
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float, bool);
	TodoReturn updateTextureQuality(int);

	virtual bool init() = mac 0x760bd0;
	virtual void keyBackClicked() = mac 0x7625b0;
}

[[link(android)]]
class AchievementManager : cocos2d::CCNode {
	~AchievementManager();

	TodoReturn getAllAchievements();
	TodoReturn getAchievementsWithID(char const*) = mac 0x746b10;
	TodoReturn getAchievementRewardDict();
	TodoReturn getAllAchievementsSorted(bool);

	TodoReturn dataLoaded(DS_Dictionary*) = mac 0x7467f0;
	TodoReturn firstSetup();
	TodoReturn sharedState() = win 0x9AC0, mac 0x6eed90;
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn addAchievement(gd::string, gd::string, gd::string, gd::string, gd::string, int) = win 0x9bc0;
	TodoReturn resetAchievement(char const*);
	TodoReturn notifyAchievement(char const*, char const*, char const*);
	TodoReturn resetAchievements();
	TodoReturn checkAchFromUnlock(char const*);
	TodoReturn percentageForCount(int, int);
	/* unverified signature */
	bool isAchievementEarned(char const*) = mac 0x7469d0;
	TodoReturn limitForAchievement(gd::string) = mac 0x746c60;
	TodoReturn achievementForUnlock(int, UnlockType) = mac 0x746d00;
	TodoReturn addManualAchievements() = win 0xf74a;
	TodoReturn areAchievementsEarned(cocos2d::CCArray*);
	TodoReturn percentForAchievement(char const*) = mac 0x7469f0;
	/* unverified signature */
	bool isAchievementAvailable(gd::string);
	TodoReturn notifyAchievementWithID(char const*);
	TodoReturn reportAchievementWithID(char const*, int, bool);
	TodoReturn storeAchievementUnlocks();
	TodoReturn reportPlatformAchievementWithID(char const*, int);
	TodoReturn setup();

	virtual bool init() = mac 0x6eeea0;
}

[[link(android)]]
class AnimatedGameObject : EnhancedGameObject, AnimatedSpriteDelegate, SpritePartDelegate {
	static AnimatedGameObject* create(int);

	bool init(int);
	~AnimatedGameObject();

	TodoReturn getTweenTime(int, int);

	TodoReturn playAnimation(int);
	TodoReturn animationForID(int, int);
	TodoReturn setupAnimatedSize(int);
	TodoReturn setupChildSprites();
	TodoReturn displayFrameChanged(cocos2d::CCObject*, gd::string) = mac 0x1a0fb0;
	TodoReturn updateObjectAnimation();
	TodoReturn updateChildSpriteColor(cocos2d::_ccColor3B);

	virtual void setOpacity(unsigned char) = mac 0x19fa60;
	virtual void setChildColor(cocos2d::_ccColor3B const&) = mac 0x1a17a0;
	virtual TodoReturn resetObject() = mac 0x1a1730;
	virtual TodoReturn activateObject() = mac 0x19f990;
	virtual TodoReturn deactivateObject(bool) = mac 0x19f9d0;
	virtual void setObjectColor(cocos2d::_ccColor3B const&) = mac 0x19fb40;
	virtual TodoReturn animationFinished(char const*) = mac 0x19fb70;
}

[[link(android)]]
class AnimatedShopKeeper : CCAnimatedSprite {
	static AnimatedShopKeeper* create(ShopType);

	bool init(ShopType);
	~AnimatedShopKeeper();

	TodoReturn startAnimating();
	TodoReturn playReactAnimation();

	virtual TodoReturn animationFinished(char const*) = mac 0x3057b0;
}

[[link(android)]]
class CharacterColorPage : FLAlertLayer {
	static CharacterColorPage* create() = mac 0x61fec0;

	~CharacterColorPage();

	void onPlayerColor(cocos2d::CCObject* sender) = mac 0x621a50;
	void onMode(cocos2d::CCObject* sender) = mac 0x620db0;
	void onClose(cocos2d::CCObject* sender);

	TodoReturn checkColor(int, UnlockType); // inlined
	TodoReturn toggleGlow(cocos2d::CCObject*) = mac 0x6214b0;
	TodoReturn toggleShip(cocos2d::CCObject*) = mac 0x620d00;
	TodoReturn colorForIndex(int) = mac 0x621a30;
	TodoReturn offsetForIndex(int) = mac 0x621ca0;
	TodoReturn createColorMenu() = mac 0x6210e0;
	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn toggleGlowItems(bool);
	TodoReturn updateColorMode(int) = mac 0x6214f0;
	TodoReturn updateIconColors() = mac 0x620f80;
	int activeColorForMode(int mode) {
		switch (mode) {
			case 0:
				return GameManager::get()->m_playerColor;
			case 1:
				return GameManager::get()->m_playerColor2;
			case 2:
				return GameManager::get()->m_playerGlowColor;
			default:
				return 0;
		}
	}

	virtual bool init() = win 0x5e640, mac 0x620020;
	virtual void registerWithTouchDispatcher() = mac 0x621ff0;
	virtual void keyBackClicked() = mac 0x621f50;
	virtual TodoReturn show() = mac 0x621dc0;
}

[[link(android)]]
class ColorSetupDelegate {
	virtual TodoReturn colorSetupClosed(int);
}

[[link(android)]]
class ConfigureHSVWidget : cocos2d::CCNode, TextInputDelegate {
	static ConfigureHSVWidget* create(cocos2d::_ccHSVValue, bool, bool);

	bool init(cocos2d::_ccHSVValue, bool, bool);
	~ConfigureHSVWidget();

	TodoReturn getHSV(GameObject*, cocos2d::CCArray*, int);

	void onResetHSV(cocos2d::CCObject* sender);
	void onToggleSConst(cocos2d::CCObject* sender);
	void onToggleVConst(cocos2d::CCObject* sender);
	TodoReturn onClose();

	TodoReturn updateLabels();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateSliders();
	TodoReturn createTextInputNode(cocos2d::CCPoint, int);

	virtual TodoReturn textInputOpened(CCTextInputNode*) = mac 0x410320;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x410340;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x410380;
}

[[link(android)]]
class CustomSongDelegate {
	virtual TodoReturn songIDChanged(int);
	virtual TodoReturn getActiveSongID();
}

[[link(android)]]
class EditorOptionsLayer : GJOptionsLayer {
	static EditorOptionsLayer* create() = mac 0x27b7d0;

	~EditorOptionsLayer();

	void onButtonRows(cocos2d::CCObject* sender);
	void onButtonsPerRow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x27c3f0;

	virtual bool init() = mac 0x27ba30;
	virtual TodoReturn setupOptions() = mac 0x27ba60;
}

[[link(android)]]
class EffectManagerState {
	// ~EffectManagerState();
}

[[link(android)]]
class FriendRequestPopup : FLAlertLayer, UploadActionDelegate, UploadPopupDelegate, FLAlertLayerProtocol {
	static FriendRequestPopup* create(GJFriendRequest*) = mac 0x280e10;

	bool init(GJFriendRequest*) = mac 0x280f80;
	~FriendRequestPopup();

	void onBlock(cocos2d::CCObject* sender) = mac 0x282090;
	void onClose(cocos2d::CCObject* sender) = mac 0x281550;
	void onAccept(cocos2d::CCObject* sender) = mac 0x281ef0;
	void onRemove(cocos2d::CCObject* sender) = mac 0x281fc0;

	TodoReturn loadFromGJFriendRequest(GJFriendRequest*) = mac 0x2815c0;
	TodoReturn blockUser();

	virtual void keyBackClicked() = mac 0x282380;
	virtual TodoReturn uploadActionFinished(int, int) = mac 0x282470;
	virtual TodoReturn uploadActionFailed(int, int) = mac 0x282630;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = mac 0x282700;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x282870;
}

[[link(android)]]
class FriendsProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, UserListDelegate {
	static FriendsProfilePage* create(UserListType) = mac 0x61b4b0;

	bool init(UserListType) = mac 0x61b640, win 0xefda0;
	~FriendsProfilePage();

	void onClose(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);
	void onBlocked(cocos2d::CCObject* sender);

	TodoReturn setupUsersBrowser(cocos2d::CCArray*, UserListType) = mac 0x61bef0;

	virtual void registerWithTouchDispatcher() = mac 0x61c510;
	virtual void keyBackClicked() = mac 0x61c4e0;
	virtual TodoReturn getUserListFinished(cocos2d::CCArray*, UserListType) = mac 0x61c160;
	virtual TodoReturn getUserListFailed(UserListType, GJErrorCode) = mac 0x61c2a0;
	virtual TodoReturn userListChanged(cocos2d::CCArray*, UserListType) = mac 0x61c3b0;
	virtual TodoReturn forceReloadList(UserListType) = mac 0x61c3f0;
}

[[link(android)]]
class GameEffectsManager : cocos2d::CCNode {
	static GameEffectsManager* create(PlayLayer*);

	bool init(PlayLayer*);
	~GameEffectsManager();

	TodoReturn scaleParticle(cocos2d::CCParticleSystemQuad*, float);
	TodoReturn addParticleEffect(cocos2d::CCParticleSystemQuad*, int);
}

[[link(android)]]
class GJDifficultySprite : cocos2d::CCSprite {
	static GJDifficultySprite* create(int, GJDifficultyName) = mac 0x291d10, win 0x211eb0;

	bool init(int, GJDifficultyName) = win 0x211f80;
	~GJDifficultySprite();

	gd::string getDifficultyFrame(int, GJDifficultyName) = win 0x212010;

	void updateFeatureState(GJFeatureState) = win 0x2122c0;
	void updateDifficultyFrame(int, GJDifficultyName) = win 0x212100, mac 0x291f80;
	void updateFeatureStateFromLevel(GJGameLevel*) = mac 0x2920b0, win 0x212240;
}

[[link(android)]]
class GJGameLoadingLayer : cocos2d::CCLayer {
	static GJGameLoadingLayer* create(GJGameLevel*, bool) = win 0x1c6530, mac 0x151030;

	bool init(GJGameLevel*, bool) = mac 0x151390;
	~GJGameLoadingLayer();

	void gameLayerDidUnload() = mac 0xfa680;
	GJGameLoadingLayer* transitionToLoadingLayer(GJGameLevel*, bool) = win 0x1c6430, mac 0x150f10;
	void loadLevel() = mac 0x151490;

	virtual void onEnter() = mac 0x151500;
	virtual void onEnterTransitionDidFinish() = mac 0x1514f0;

	GJGameLevel* m_level;
	bool m_editor;
}

[[link(android)]]
class GJPurchaseDelegate {
	virtual TodoReturn didPurchaseItem(GJStoreItem*);
}

[[link(android)]]
class GJTransformControl : cocos2d::CCLayer {
	static GJTransformControl* create() = mac 0x57e40;

	~GJTransformControl();

	void onToggleLockScale(cocos2d::CCObject* sender);

	TodoReturn loadValues(GameObject*, cocos2d::CCArray*, gd::unordered_map<int, GameObjectEditorState>&);
	TodoReturn finishTouch();
	TodoReturn saveToState(GJTransformState&);
	TodoReturn spriteByTag(int);
	TodoReturn scaleButtons(float) = win 0xdeff0;
	TodoReturn applyRotation(float);
	TodoReturn loadFromState(GJTransformState&);
	TodoReturn updateButtons(bool, bool);
	TodoReturn refreshControl();
	TodoReturn logCurrentZeroPos();
	TodoReturn updateAnchorSprite(cocos2d::CCPoint);
	TodoReturn updateMinMaxPositions();
	TodoReturn calculateRotationOffset();

	virtual bool init() = mac 0x561e0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x56650;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x56b20;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x570d0;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x572e0;
}

[[link(android)]]
class KeybindingsManager : cocos2d::CCNode {
	~KeybindingsManager();

	TodoReturn dataLoaded(DS_Dictionary*) = win 0x228580, mac 0x4c12a0;
	TodoReturn firstSetup();
	TodoReturn sharedState() = win 0x228470, mac 0x4c0c60;
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn commandForKey(cocos2d::enumKeyCodes, GJKeyGroup, bool, bool, bool);
	TodoReturn keyForCommand(GJKeyCommand);
	TodoReturn groupForCommand(GJKeyCommand);
	TodoReturn commandForKeyMods(cocos2d::enumKeyCodes, GJKeyGroup);
	TodoReturn commandForKeyNoMods(cocos2d::enumKeyCodes, GJKeyGroup);
	TodoReturn commandToKeyForGroup(GJKeyGroup);
	TodoReturn keyToCommandForGroup(GJKeyGroup);

	virtual bool init() = mac 0x4c0de0;
}

[[link(android)]]
class LevelOptionsLayer2 : LevelOptionsLayer {
	static LevelOptionsLayer2* create(LevelSettingsObject*);

	bool init(LevelSettingsObject*);
	~LevelOptionsLayer2();

	virtual TodoReturn setupOptions() = mac 0x24feb0;
}


[[link(android)]]
class OptionsScrollLayer : FLAlertLayer, TableViewCellDelegate {
	static OptionsScrollLayer* create(cocos2d::CCArray*, bool);

	bool init(cocos2d::CCArray*, bool);
	~OptionsScrollLayer();

	TodoReturn getRelevantObjects(cocos2d::CCArray*);

	void onClose(cocos2d::CCObject* sender);

	TodoReturn setupList(cocos2d::CCArray*);

	virtual void registerWithTouchDispatcher() = mac 0x5d4d60;
	virtual void keyBackClicked() = mac 0x5d4c30;
	virtual TodoReturn cellPerformedAction(TableViewCell*, int, CellAction, cocos2d::CCNode*) = mac 0x5d4da0;
}

[[link(android)]]
class SecretRewardsLayer : cocos2d::CCLayer, DialogDelegate, BoomScrollLayerDelegate {
	static SecretRewardsLayer* create(bool) = mac 0x5f41b0;

	bool init(bool) = mac 0x5f42d0;
	~SecretRewardsLayer();

	TodoReturn getPageColor(int);

	void onChestType(cocos2d::CCObject* sender) = mac 0x5f5de0;
	void onSelectItem(cocos2d::CCObject* sender) = win 0x2F6D50;
	void onSwitchPage(cocos2d::CCObject* sender);
	void onSpecialItem(cocos2d::CCObject* sender) = win 0x2F7360;
	void onBack(cocos2d::CCObject* sender);
	void onShop(cocos2d::CCObject* sender) = win 0x2F70B0;

	TodoReturn showDialog01() = win 0x2f7970;
	TodoReturn showDialog03();
	TodoReturn moveToMainLayer(cocos2d::CCObject*);
	TodoReturn showLockedChest();
	TodoReturn updateBackButton();
	TodoReturn showDialogDiamond();
	TodoReturn generateChestItems(int) = win 0x2F63D0;
	TodoReturn showDialogMechanic();
	TodoReturn switchToOpenedState(CCMenuItemSpriteExtra*) = win 0x2F7630;
	TodoReturn updateUnlockedLabel() = win 0x2F76E0, mac 0x5f5ef0;
	TodoReturn createSecondaryLayer(int) = win 0x2F5F60;
	TodoReturn moveToSecondaryLayer(int);
	TodoReturn scene(bool) = win 0x2f4130, mac 0x5f4170;
	TodoReturn goToPage(int);
	TodoReturn showShop(int);

	virtual void onExit() = mac 0x5fdb10;
	virtual void keyBackClicked() = mac 0x5fda80;
	virtual TodoReturn dialogClosed(DialogLayer*) = mac 0x5fd930;
	virtual TodoReturn scrollLayerMoved(cocos2d::CCPoint) = mac 0x5f6310;
}

[[link(android)]]
class SelectPremadeLayer : FLAlertLayer {
	static SelectPremadeLayer* create();

	~SelectPremadeLayer();

	void onSelectPremade(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	virtual bool init() = mac 0x2e6ea0;
	virtual void keyBackClicked() = mac 0x2e73b0;
}

[[link(android)]]
class SelectSFXSortLayer : FLAlertLayer {
	static SelectSFXSortLayer* create(AudioSortType);

	bool init(AudioSortType);
	~SelectSFXSortLayer();

	void onClose(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = mac 0x41f2e0;
}

[[link(android)]]
class SetLevelOrderPopup : SetIDPopup {
	static SetLevelOrderPopup* create(int, int, int);

	bool init(int, int, int);
	~SetLevelOrderPopup();

	void onOrderButton(cocos2d::CCObject* sender);
}

[[link(android)]]
class SetupDashRingPopup : SetupTriggerPopup {
	static SetupDashRingPopup* create(DashRingObject*, cocos2d::CCArray*);

	bool init(DashRingObject*, cocos2d::CCArray*);
	~SetupDashRingPopup();
}

[[link(android)]]
class SetupGradientPopup : SetupTriggerPopup {
	static SetupGradientPopup* create(GradientTriggerObject*, cocos2d::CCArray*);

	bool init(GradientTriggerObject*, cocos2d::CCArray*);
	~SetupGradientPopup();

	void onBlending(cocos2d::CCObject* sender);
	void onPlusButton(cocos2d::CCObject* sender) = mac 0x5b8ca0;
	void onZLayer(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateBlending();
	TodoReturn updateBlendingLabel();
	TodoReturn updateZLayerButtons();
	TodoReturn updateGradientLabels(bool);

	virtual TodoReturn determineStartValues() = mac 0x5b8b80;
	virtual TodoReturn updateToggleItem(int, bool) = mac 0x5b8cf0;
	virtual TodoReturn valueDidChange(int, float) = mac 0x5b8eb0;
}

[[link(android)]]
class SetupKeyframePopup : SetupTriggerPopup {
	static SetupKeyframePopup* create(KeyframeGameObject*, cocos2d::CCArray*, LevelEditorLayer*);

	bool init(KeyframeGameObject*, cocos2d::CCArray*, LevelEditorLayer*);
	~SetupKeyframePopup();

	void onTimeMode(cocos2d::CCObject* sender);
	void onCustomButton(cocos2d::CCObject* sender) = mac 0x1e0870;
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = mac 0x1e07e0;
	void onClose(cocos2d::CCObject* sender) = mac 0x1e0c20;

	TodoReturn refreshPreviewArt();
	TodoReturn updateTimeModeButtons();

	virtual TodoReturn valueDidChange(int, float) = mac 0x1e05b0;
}

[[link(android)]]
class SetupTeleportPopup : SetupTriggerPopup {
	static SetupTeleportPopup* create(TeleportPortalObject*, cocos2d::CCArray*, int, bool);

	bool init(TeleportPortalObject*, cocos2d::CCArray*, int, bool);
	~SetupTeleportPopup();

	void onTeleportGravity(cocos2d::CCObject* sender);

	TodoReturn updateTeleportGravityState(int);

	virtual TodoReturn determineStartValues() = mac 0x338fb0;
	virtual TodoReturn updateDefaultTriggerValues() = mac 0x338fc0;
	virtual TodoReturn valueDidChange(int, float) = mac 0x3390e0;
}

[[link(android)]]
class SetupTimeWarpPopup : SetupTriggerPopup {
	static SetupTimeWarpPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupTimeWarpPopup();

	void onClose(cocos2d::CCObject* sender) = mac 0x4de0b0;

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateTimeWarp();
	TodoReturn updateTimeWarpLabel();

	virtual TodoReturn determineStartValues() = mac 0x4ddf20;
}

[[link(android)]]
class SFXBrowserDelegate {
	virtual TodoReturn sfxBrowserClosed(SFXBrowser*);
}

[[link(android)]]
class SpawnTriggerAction {
	/* unverified signature */
	bool isFinished();
	virtual void step(float);
}

[[link(android)]]
class SpritePartDelegate {
	TodoReturn displayFrameChanged(cocos2d::CCObject*, gd::string);
}

[[link(android)]]
class BrowseSmartKeyLayer : BrowseSmartTemplateLayer {
	static BrowseSmartKeyLayer* create(GJSmartTemplate*, gd::string);

	bool init(GJSmartTemplate*, gd::string);
	~BrowseSmartKeyLayer();

	TodoReturn getAllSelectedBlocks();

	void onPrefabObject(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender) = mac 0x4c7670;
	void onButton(cocos2d::CCObject* sender);

	TodoReturn updateChanceValues();
	TodoReturn addChanceToSelected(int, bool);
	TodoReturn deletedSelectedItems();
	TodoReturn createTemplateObjects();
}

[[link(android)]]
class CCAnimateFrameCache : cocos2d::CCObject {
	bool init();
	~CCAnimateFrameCache();

	TodoReturn spriteFrameByName(char const*);
	TodoReturn removeSpriteFrames();
	TodoReturn sharedSpriteFrameCache();
	TodoReturn addSpriteFramesWithFile(char const*);
	TodoReturn purgeSharedSpriteFrameCache();
	TodoReturn addCustomSpriteFramesWithFile(char const*);
	TodoReturn addDict(DS_Dictionary*, char const*);
	TodoReturn addDict(cocos2d::CCDictionary*, char const*);
}

[[link(android)]]
class CollisionBlockPopup : FLAlertLayer, TextInputDelegate {
	static CollisionBlockPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~CollisionBlockPopup();

	void onNextItemID(cocos2d::CCObject* sender);
	void onItemIDArrow(cocos2d::CCObject* sender);
	void onDynamicBlock(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateItemID();
	TodoReturn updateEditorLabel();
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();

	virtual void keyBackClicked() = mac 0x2653a0;
	virtual TodoReturn show() = mac 0x265340;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x265180;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x2651c0;
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float) = mac 0x2653d0;
	virtual TodoReturn textInputReturn(CCTextInputNode*) = mac 0x265490;
}


[[link(android)]]
class CommunityCreditNode : cocos2d::CCNode {
	static CommunityCreditNode* create(int, int, int, gd::string);

	bool init(int, int, int, gd::string);
	~CommunityCreditNode();
}


[[link(android)]]
class CreateParticlePopup : FLAlertLayer, TextInputDelegate, ColorSelectDelegate, SliderDelegate {
	static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*);
	static CreateParticlePopup* create(ParticleGameObject*, cocos2d::CCArray*, gd::string);
	static CreateParticlePopup* create(gd::string);

	bool init(ParticleGameObject*, cocos2d::CCArray*, gd::string) = mac 0x044c7e0;
	~CreateParticlePopup();

	TodoReturn getPageMenu(int);
	TodoReturn getPageButton(int);
	TodoReturn getPageSliders(int);
	TodoReturn getPageContainer(int);
	TodoReturn getPageInputNodes(int);
	TodoReturn getPage(int);

	void onQuickStart(cocos2d::CCObject* sender);
	void onEmitterMode(cocos2d::CCObject* sender);
	void onMaxEmission(cocos2d::CCObject* sender);
	void onSelectColor(cocos2d::CCObject* sender);
	void onCalcEmission(cocos2d::CCObject* sender);
	void onCopySettings(cocos2d::CCObject* sender);
	void onDynamicColor(cocos2d::CCObject* sender);
	void onUniformColor(cocos2d::CCObject* sender);
	void onEndRGBVarSync(cocos2d::CCObject* sender);
	void onPasteSettings(cocos2d::CCObject* sender);
	void onDuplicateColor(cocos2d::CCObject* sender);
	void onOrderSensitive(cocos2d::CCObject* sender);
	void onToggleBlending(cocos2d::CCObject* sender);
	void onDurationForever(cocos2d::CCObject* sender);
	void onDynamicRotation(cocos2d::CCObject* sender);
	void onStartRGBVarSync(cocos2d::CCObject* sender);
	void onAnimateOnTrigger(cocos2d::CCObject* sender);
	void onAnimateActiveOnly(cocos2d::CCObject* sender);
	void onSelectParticleTexture(cocos2d::CCObject* sender);
	void onToggleStartRotationIsDir(cocos2d::CCObject* sender);
	void onToggleStartSizeEqualToEnd(cocos2d::CCObject* sender);
	void onToggleStartSpinEqualToEnd(cocos2d::CCObject* sender);
	void onToggleStartRadiusEqualToEnd(cocos2d::CCObject* sender);
	void onMode(cocos2d::CCObject* sender);
	void onPage(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onPosType(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn toggleGravityMode(bool);
	TodoReturn updateColorSprite(int);
	TodoReturn particleValueIsInt(gjParticleValue);
	TodoReturn centerAlignParticle(cocos2d::CCObject*);
	TodoReturn updateSliderForType(gjParticleValue);
	TodoReturn createParticleSlider(gjParticleValue, int, bool, cocos2d::CCPoint, cocos2d::CCArray*);
	TodoReturn maxSliderValueForType(gjParticleValue);
	TodoReturn minSliderValueForType(gjParticleValue);
	TodoReturn titleForParticleValue(gjParticleValue);
	TodoReturn valueForParticleValue(gjParticleValue);
	TodoReturn updateParticleValueForType(float, gjParticleValue, cocos2d::CCParticleSystemQuad*);
	TodoReturn updateInputNodeStringForType(gjParticleValue);
	TodoReturn willClose();

	virtual void update(float) = mac 0x454030;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x454bb0;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x454cc0;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x455090;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x4550e0;
	virtual void keyBackClicked() = mac 0x454a10;
	virtual TodoReturn sliderBegan(Slider*) = mac 0x4548d0;
	virtual TodoReturn sliderEnded(Slider*) = mac 0x4549b0;
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*) = mac 0x453da0;
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float) = mac 0x454a40;
	virtual TodoReturn textInputReturn(CCTextInputNode*) = mac 0x454b00;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x4541a0;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x4541e0;
}


[[link(android)]]
class EditGameObjectPopup : SetupTriggerPopup {
	static EditGameObjectPopup* create(EffectGameObject*, cocos2d::CCArray*, bool);

	bool init(EffectGameObject*, cocos2d::CCArray*, bool);
	~EditGameObjectPopup();
}

[[link(android)]]
class EnterEffectInstance {
	TodoReturn animateValue(int, float, float, float, int, float, int);
	TodoReturn loadTransitions(EnterEffectObject*, float);
	TodoReturn updateTransitions(float, GJBaseGameLayer*);
	TodoReturn loadValuesFromObject(EnterEffectObject*);
	TodoReturn getValue(int);
	/* unverified signature */
	void setValue(int, float);
	// ~EnterEffectInstance();

	PAD = win 0xc4, android32 0xd4;
}

[[link(android)]]
class FRequestProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, FriendRequestDelegate {
	static FRequestProfilePage* create(bool) = mac 0x7515d0, win 0xEE230;

	bool init(bool) = mac 0x751780, win 0xEE2E0;
	~FRequestProfilePage();

	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onSentRequests(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onToggleAllObjects(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onUpdate(cocos2d::CCObject* sender);

	TodoReturn untoggleAll();
	TodoReturn setupPageInfo(gd::string, char const*) = mac 0x753750;
	TodoReturn deleteSelected();
	TodoReturn updatePageArrows();
	TodoReturn updateLevelsLabel();
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*) = mac 0x753390;
	TodoReturn loadPage(int) = mac 0x7527d0;
	/* unverified signature */
	bool isCorrect(char const*);

	virtual void registerWithTouchDispatcher() = mac 0x752ef0;
	virtual void keyBackClicked() = mac 0x752ec0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x752dd0;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = mac 0x752f30;
	virtual TodoReturn uploadActionFinished(int, int) = mac 0x752fa0;
	virtual TodoReturn uploadActionFailed(int, int) = mac 0x753140;
	virtual TodoReturn loadFRequestsFinished(cocos2d::CCArray*, char const*) = mac 0x753510;
	virtual TodoReturn loadFRequestsFailed(char const*, GJErrorCode) = mac 0x753600;
	virtual TodoReturn forceReloadRequests(bool) = mac 0x753710;
}

[[link(android)]]
class GauntletSelectLayer : cocos2d::CCLayer, BoomScrollLayerDelegate, LevelManagerDelegate {
	static GauntletSelectLayer* create(int) = mac 0x53cd80, win 0x1837C0;

	bool init(int) = mac 0x53ce70, win 0x183860;
	~GauntletSelectLayer() = win 0x1836F0;

	void onBack(cocos2d::CCObject* sender) = win 0x184D50;
	void onInfo(cocos2d::CCObject* sender) = win 0x1841F0;
	void onNext(cocos2d::CCObject* sender) = win 0x184BA0;
	void onPlay(cocos2d::CCObject* sender) = mac 0x53e4d0, win 0x184DC0;
	void onPrev(cocos2d::CCObject* sender) = win 0x184BC0;
	void onRefresh(cocos2d::CCObject* sender) = mac 0x53dad0, win 0x184250;

	void unblockPlay() = win 0x184D00;
	TodoReturn updateArrows();
	void setupGauntlets() = mac 0x53db90, win 0x184670;
	bool scene(int) = mac 0x53cc60, win 0x182F70;
	void goToPage(int, bool) = mac 0x53e950, win 0x184BE0;

	virtual void onExit() = win 0x185120, mac 0x53ecc0;
	virtual void keyBackClicked() = win 0x184DB0, mac 0x53eb90;
	virtual TodoReturn scrollLayerWillScrollToPage(BoomScrollLayer*, int) = mac 0x53eaf0;
	virtual TodoReturn scrollLayerScrolledToPage(BoomScrollLayer*, int) = mac 0x53ea50;
	virtual void loadLevelsFinished(cocos2d::CCArray*, char const*, int) = win 0x184300, mac 0x53e100;
	virtual void loadLevelsFailed(char const*, int) = win 0x1844D0, mac 0x53e2d0;
}

[[link(android)]]
class GJChallengeDelegate {
	virtual TodoReturn challengeStatusFinished();
	virtual TodoReturn challengeStatusFailed();
}

[[link(android)]]
class GJSmartBlockPreview : cocos2d::CCNode {
	static GJSmartBlockPreview* create(gd::string);

	bool init(gd::string);
	~GJSmartBlockPreview();

	TodoReturn addPreview(gd::string, gd::string, LevelEditorLayer*);
	TodoReturn createInfoLabel();
	TodoReturn addTemplateGuide(SmartPrefabResult, float);
	TodoReturn addTemplateGuide(gd::string, int);
	TodoReturn toggleSelectItem(bool);
	TodoReturn addCount(int);
	TodoReturn addChance(int, int);
}

[[link(android)]]
class GJWriteMessagePopup : FLAlertLayer, TextInputDelegate, UploadMessageDelegate, UploadPopupDelegate, FLAlertLayerProtocol {
	static GJWriteMessagePopup* create(int, int) = mac 0x283ff0;

	bool init(int, int) = mac 0x284a60;
	~GJWriteMessagePopup();

	void onClearBody(cocos2d::CCObject* sender);
	void onSend(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateBody(gd::string);
	TodoReturn updateText(gd::string, int);
	TodoReturn updateSubject(gd::string);
	TodoReturn closeMessagePopup(bool);
	TodoReturn updateCharCountLabel(int);

	virtual void registerWithTouchDispatcher() = mac 0x286000;
	virtual void keyBackClicked() = mac 0x285fd0;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = mac 0x286080;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x286040;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x2860a0;
	virtual TodoReturn uploadMessageFinished(int) = mac 0x286690;
	virtual TodoReturn uploadMessageFailed(int) = mac 0x2867a0;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = mac 0x2868c0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x286a10;
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float) = mac 0x286af0;
	virtual TodoReturn textInputReturn(CCTextInputNode*) = mac 0x286bb0;
}

[[link(android)]]
class GraphicsReloadLayer : cocos2d::CCLayer {
	static GraphicsReloadLayer* create(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool) = win 0x2b3240;

	bool init(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool) = win 0x2b3300;
	~GraphicsReloadLayer();

	void performReload() = win 0x2b3380;
	TodoReturn scene(cocos2d::TextureQuality, cocos2d::CCSize, bool, bool);
}

[[link(android)]]
class GravityEffectSprite : cocos2d::CCSprite {
	static GravityEffectSprite* create();

	~GravityEffectSprite();

	TodoReturn updateSpritesColor(cocos2d::_ccColor3B) = win 0x2e5f40;

	virtual bool init() = mac 0xb8f00;
	virtual void draw() = mac 0xb9160;
}

[[link(android)]]
class GroupCommandObject2 {
	TodoReturn resetDelta(bool);
	TodoReturn updateAction(int, float);
	TodoReturn runMoveCommand(cocos2d::CCPoint, double, int, double, bool, bool, bool, bool, double, double);
	TodoReturn runFollowCommand(double, double, double);
	TodoReturn runRotateCommand(double, double, int, double, bool, int);
	TodoReturn updateEffectAction(float, int);
	TodoReturn runTransformCommand(double, int, double);
	TodoReturn stepTransformCommand(float, bool, bool);
	TodoReturn runPlayerFollowCommand(double, double, int, double, double);
	virtual void step(float);
	TodoReturn reset();
	// GroupCommandObject2(GroupCommandObject2 const&);
	// GroupCommandObject2();
}

[[link(android)]]
class LevelAreaInnerLayer : cocos2d::CCLayer, DialogDelegate {
	static LevelAreaInnerLayer* create(bool);

	bool init(bool) = win 0x22C1E0, mac 0x2579a0;
	~LevelAreaInnerLayer();

	void onNextFloor(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender) = mac 0x2586b0;
	void onDoor(cocos2d::CCObject* sender) = mac 0x258700;
	void onInfo(cocos2d::CCObject* sender);

	TodoReturn tryResumeTowerMusic();
	TodoReturn showFloor1CompleteDialog();
	TodoReturn scene(bool);
	TodoReturn playStep1();

	virtual void keyBackClicked() = mac 0x259590;
	virtual TodoReturn dialogClosed(DialogLayer*) = mac 0x2593b0;
}

[[link(android)]]
class LoadingCircleSprite : cocos2d::CCSprite {
	static LoadingCircleSprite* create();

	~LoadingCircleSprite();

	TodoReturn hideCircle();
	TodoReturn fadeInCircle(bool);

	virtual bool init() = mac 0x49ab60;
}

[[link(android)]]
class MessageListDelegate {
	TodoReturn setupPageInfo(gd::string, char const*);

	virtual TodoReturn loadMessagesFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadMessagesFailed(char const*, GJErrorCode);
	virtual TodoReturn forceReloadMessages(bool);
}

[[link(android)]]
class MessagesProfilePage : FLAlertLayer, FLAlertLayerProtocol, UploadActionDelegate, UploadPopupDelegate, MessageListDelegate {
	static MessagesProfilePage* create(bool) = mac 0x20cdd0, win 0x2783B0;

	bool init(bool) = mac 0x20cf80, win 0x278460;
	~MessagesProfilePage();

	void onNextPage(cocos2d::CCObject* sender) = mac 0x20de00;
	void onPrevPage(cocos2d::CCObject* sender) = mac 0x20dde0;
	void onSentMessages(cocos2d::CCObject* sender) = mac 0x20daa0;
	void onDeleteSelected(cocos2d::CCObject* sender) = mac 0x20db30;
	void onToggleAllObjects(cocos2d::CCObject* sender) = mac 0x20dd20;
	void onClose(cocos2d::CCObject* sender) = mac 0x20d970;
	void onUpdate(cocos2d::CCObject* sender) = mac 0x20de20;

	TodoReturn untoggleAll();
	TodoReturn setupPageInfo(gd::string, char const*) = mac 0x20ee60;
	TodoReturn deleteSelected();
	TodoReturn updatePageArrows();
	TodoReturn updateLevelsLabel();
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*) = mac 0x20ea70;
	TodoReturn loadPage(int) = mac 0x20de90;
	/* unverified signature */
	bool isCorrect(char const*);

	virtual void registerWithTouchDispatcher() = mac 0x20e900;
	virtual void keyBackClicked() = mac 0x20e8d0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x20e4b0;
	virtual TodoReturn onClosePopup(UploadActionPopup*) = mac 0x20e520;
	virtual TodoReturn uploadActionFinished(int, int) = mac 0x20e590;
	virtual TodoReturn uploadActionFailed(int, int) = mac 0x20e730;
	virtual TodoReturn loadMessagesFinished(cocos2d::CCArray*, char const*) = mac 0x20ebe0;
	virtual TodoReturn loadMessagesFailed(char const*, GJErrorCode) = mac 0x20ed10;
	virtual TodoReturn forceReloadMessages(bool) = mac 0x20ee20;
}

[[link(android)]]
class MultilineBitmapFont : cocos2d::CCSprite {
	TodoReturn initWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int, bool) = mac 0x463bd0;
	~MultilineBitmapFont();

	TodoReturn readColorInfo(gd::string) = mac 0x464480;
	TodoReturn createWithFont(char const*, gd::string, float, float, cocos2d::CCPoint, int, bool) = mac 0x463a80;
	TodoReturn stringWithMaxWidth(gd::string, float, float) = mac 0x465060;
	TodoReturn moveSpecialDescriptors(int, int);

	virtual void setOpacity(unsigned char) = mac 0x4654e0;
}

[[link(android)]]
class NewgroundsInfoLayer : FLAlertLayer, FLAlertLayerProtocol {
	static NewgroundsInfoLayer* create();

	~NewgroundsInfoLayer();

	void onSupporter(cocos2d::CCObject* sender);
	void onGuidelines(cocos2d::CCObject* sender);
	void onNewgrounds(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onArtists(cocos2d::CCObject* sender);
	void onChanges(cocos2d::CCObject* sender);

	virtual bool init() = mac 0x1f60d0;
	virtual void keyBackClicked() = mac 0x1f6bc0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x1f6b60;
}

[[link(android)]]
class OpacityEffectAction {
	virtual void step(float);
}

[[link(android)]]
class SelectListIconLayer : FLAlertLayer {
	static SelectListIconLayer* create(int);

	bool init(int);
	~SelectListIconLayer();

	void onClose(cocos2d::CCObject* sender);
	void onSelect(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = mac 0x340490;
}

[[link(android)]]
class SetupAdvFollowPopup : SetupTriggerPopup, SelectPremadeDelegate {
	static SetupAdvFollowPopup* create(AdvancedFollowTriggerObject*, cocos2d::CCArray*);

	bool init(AdvancedFollowTriggerObject*, cocos2d::CCArray*);
	~SetupAdvFollowPopup();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = mac 0x2e6750;
	void onMode(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x2e6e00;
	void onPremade(cocos2d::CCObject* sender);

	TodoReturn updateMode(int);

	virtual TodoReturn updateDefaultTriggerValues() = mac 0x2e63b0;
	virtual TodoReturn valueDidChange(int, float) = mac 0x2e64f0;
	virtual TodoReturn selectPremadeClosed(SelectPremadeLayer*, int) = mac 0x2e6980;
}

[[link(android)]]
class SetupAnimationPopup : SetupTriggerPopup {
	static SetupAnimationPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupAnimationPopup();

	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onAnimationIDArrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x3b42b0;

	TodoReturn updateTargetID();
	TodoReturn updateAnimationID();
	TodoReturn updateTextInputLabel();
	TodoReturn updateAnimationTextInputLabel();

	virtual TodoReturn determineStartValues() = mac 0x3b3e90;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x3b40c0;
}

[[link(android)]]
class SetupArtSwitchPopup : SetupTriggerPopup, SelectArtDelegate {
	static SetupArtSwitchPopup* create(ArtTriggerGameObject*, cocos2d::CCArray*, int);

	bool init(ArtTriggerGameObject*, cocos2d::CCArray*, int);
	~SetupArtSwitchPopup();

	void onArt(cocos2d::CCObject* sender);

	virtual TodoReturn selectArtClosed(SelectArtLayer*) = mac 0x551000;
}

[[link(android)]]
class SetupBGSpeedTrigger : SetupTriggerPopup {
	static SetupBGSpeedTrigger* create(EffectGameObject*, cocos2d::CCArray*, int);

	bool init(EffectGameObject*, cocos2d::CCArray*, int);
	~SetupBGSpeedTrigger();
}

[[link(android)]]
class SetupEventLinkPopup : SetupTriggerPopup {
	static SetupEventLinkPopup* create(EventLinkTrigger*, cocos2d::CCArray*);

	bool init(EventLinkTrigger*, cocos2d::CCArray*);
	~SetupEventLinkPopup();

	void onSelectEvent(cocos2d::CCObject* sender);

	TodoReturn updateEventIDs(gd::set<int>&);
}

[[link(android)]]
class SetupTransformPopup : SetupTriggerPopup {
	static SetupTransformPopup* create(TransformTriggerGameObject*, cocos2d::CCArray*);

	bool init(TransformTriggerGameObject*, cocos2d::CCArray*);
	~SetupTransformPopup();
}

[[link(android)]]
class AccountRegisterLayer : FLAlertLayer, TextInputDelegate, GJAccountRegisterDelegate, FLAlertLayerProtocol {
	static AccountRegisterLayer* create();

	~AccountRegisterLayer();

	void onClose(cocos2d::CCObject* sender);
	void onSubmit(cocos2d::CCObject* sender);

	TodoReturn resetLabel(int);
	TodoReturn validEmail(gd::string);
	TodoReturn resetLabels();
	TodoReturn updateLabel(AccountError);
	TodoReturn disableNodes();
	TodoReturn hideLoadingUI();
	TodoReturn showLoadingUI();
	TodoReturn validPassword(gd::string);
	TodoReturn createTextInput(cocos2d::CCPoint, cocos2d::CCSize, gd::string, int);
	TodoReturn createTextLabel(cocos2d::CCPoint, gd::string, cocos2d::CCSize);
	TodoReturn createTextBackground(cocos2d::CCPoint, cocos2d::CCSize);
	TodoReturn toggleUI(bool);
	TodoReturn validUser(gd::string);

	virtual bool init() = mac 0x471180;
	virtual void registerWithTouchDispatcher() = mac 0x473c90;
	virtual void keyBackClicked() = mac 0x473ac0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x473610;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = mac 0x4746a0;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x473cd0;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x4746c0;
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float) = mac 0x4746e0;
	virtual TodoReturn textInputReturn(CCTextInputNode*) = mac 0x4747a0;
	virtual bool allowTextInput(CCTextInputNode*) = mac 0x474850;
	virtual TodoReturn registerAccountFinished() = mac 0x472e80;
	virtual TodoReturn registerAccountFailed(AccountError) = mac 0x473010;
}



[[link(android)]]
class CommunityCreditsPage : FLAlertLayer {
	static CommunityCreditsPage* create();

	~CommunityCreditsPage();

	void onSwitchPage(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn FLAlert_Clicked(FLAlertLayer*, bool);
	TodoReturn goToPage(int);

	virtual bool init() = mac 0x2faf40;
	virtual void registerWithTouchDispatcher() = mac 0x2fe2d0;
	virtual void keyBackClicked() = mac 0x2fe260;
	virtual TodoReturn show() = mac 0x2fe0d0;
}

[[link(android)]]
class CustomizeObjectLayer : FLAlertLayer, TextInputDelegate, HSVWidgetDelegate, ColorSelectDelegate, ColorSetupDelegate {
	static CustomizeObjectLayer* create(GameObject*, cocos2d::CCArray*);

	bool init(GameObject*, cocos2d::CCArray*) = mac 0x1d4180;
	~CustomizeObjectLayer();

	int getActiveMode(bool) = mac 0x1d73f0;
	TodoReturn getButtonByTag(int);
	TodoReturn getHSV();

	void onLiveEdit(cocos2d::CCObject* sender);
	void onSettings(cocos2d::CCObject* sender);
	void onEditColor(cocos2d::CCObject* sender);
	void onBreakApart(cocos2d::CCObject* sender);
	void onSelectMode(cocos2d::CCObject* sender) = mac 0x1d6550;
	void onSelectColor(cocos2d::CCObject* sender) = mac 0x1d6ac0;
	void onNextColorChannel(cocos2d::CCObject* sender);
	void onUpdateCustomColor(cocos2d::CCObject* sender) = mac 0x1d6b70;
	void onHSV(cocos2d::CCObject* sender);
	void onCopy(cocos2d::CCObject* sender);
	void onClear(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onPaste(cocos2d::CCObject* sender);
	void onBrowse(cocos2d::CCObject* sender);

	TodoReturn recreateLayer();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	void toggleVisible() = mac 0x1d8230;
	void updateSelected(int) = mac 0x1d7b80;
	TodoReturn updateHSVButtons();
	void highlightSelected(ButtonSprite*) = mac 0x1d7d10;
	void updateColorSprite() = mac 0x1d75c0;
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint);
	TodoReturn updateChannelLabel(int);
	TodoReturn updateKerningLabel();
	TodoReturn determineStartValues();
	TodoReturn updateCurrentSelection();
	void updateCustomColorLabels() = mac 0x1d6c40;

	virtual void keyBackClicked() = mac 0x1d8750;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = mac 0x1d8390;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x1d84c0;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x1d8500;
	virtual TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::_ccHSVValue) = mac 0x1d8140;
	virtual TodoReturn colorSelectClosed(cocos2d::CCNode*) = mac 0x1d7ee0;
	virtual void colorSetupClosed(int) = mac 0x1d7a70;

    GameObject* m_targetObject;
    cocos2d::CCArray* m_targetObjects;
    cocos2d::CCArray* m_colorButtons;
    cocos2d::CCArray* m_colorTabNodes;
    cocos2d::CCArray* m_textTabNodes;
	cocos2d::CCArray* m_unkArray;
    cocos2d::CCArray* m_detailTabNodes;
    int m_selectedMode;
    int m_customColorChannel;
    bool m_unk0x200;
    bool m_unk0x201;
    bool m_glowDisabled;
    CCMenuItemSpriteExtra* m_baseButton;
    CCMenuItemSpriteExtra* m_detailButton;
    CCMenuItemSpriteExtra* m_textButton;
    CCMenuItemSpriteExtra* m_baseColorHSV;
    CCMenuItemSpriteExtra* m_detailColorHSV;
    cocos2d::CCLabelBMFont* m_titleLabel;
    cocos2d::CCLabelBMFont* m_selectedColorLabel;
    CCTextInputNode* m_customColorInput;
    CCTextInputNode* m_textInput;
	int m_kerningAmount;
	cocos2d::CCLabelBMFont* m_kerningLabel;
	Slider* m_kerningSlider;
    ButtonSprite* m_customColorButtonSprite;
    CCMenuItemSpriteExtra* m_customColorButton;
    CCMenuItemSpriteExtra* m_arrowDown;
    CCMenuItemSpriteExtra* m_arrowUp;
    cocos2d::extension::CCScale9Sprite* m_customColorInputBG;
    ColorChannelSprite* m_colorSprite;
    CCMenuItemSpriteExtra* m_colorSpriteButton;
    CCMenuItemSpriteExtra* m_liveSelectButton;
    bool m_showTextInput;
    bool m_customColorSelected;
}

[[link(android)]]
class GJFollowCommandLayer : SetupTriggerPopup {
	static GJFollowCommandLayer* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~GJFollowCommandLayer();

	void onUpdateGroupID(cocos2d::CCObject* sender);
	void onUpdateGroupID2(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x2b1d30;

	TodoReturn updateXMod();
	TodoReturn updateYMod();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateXModLabel();
	TodoReturn updateYModLabel();
	TodoReturn sliderXModChanged(cocos2d::CCObject*);
	TodoReturn sliderYModChanged(cocos2d::CCObject*);
	TodoReturn updateTargetGroupID();
	TodoReturn updateTargetGroupID2();
	TodoReturn updateTextInputLabel();
	TodoReturn updateTextInputLabel2();

	virtual TodoReturn determineStartValues() = mac 0x2b1160;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x2b1770;
}

[[link(android)]]
class GJMultiplayerManager : cocos2d::CCNode {
	~GJMultiplayerManager();

	TodoReturn getDLObject(char const*);
	TodoReturn getBasePostString();
	TodoReturn getLastCommentIDForGame(int);

	TodoReturn onExitLobbyCompleted(gd::string, gd::string);
	TodoReturn onJoinLobbyCompleted(gd::string, gd::string) = mac 0x61cf30;
	TodoReturn onUploadCommentCompleted(gd::string, gd::string);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);

	TodoReturn addComment(gd::string, int) = mac 0x61e550;
	TodoReturn dataLoaded(DS_Dictionary*);
	TodoReturn firstSetup();
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	/* unverified signature */
	bool isDLActive(char const*);
	TodoReturn sharedState();
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn addDLToActive(char const*);
	TodoReturn addDLToActive(char const*, cocos2d::CCObject*);
	TodoReturn uploadComment(gd::string, int);
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn removeDLFromActive(char const*);
	TodoReturn createAndAddComment(gd::string, int);
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType);
	TodoReturn exitLobby(int);
	TodoReturn joinLobby(int);

	virtual bool init() = mac 0x61da60;
}

[[link(android)]]
class GJRotateCommandLayer : SetupTriggerPopup {
	static GJRotateCommandLayer* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~GJRotateCommandLayer();

	void onEasingRate(cocos2d::CCObject* sender);
	void onLockRotation(cocos2d::CCObject* sender);
	void onUpdateGroupID(cocos2d::CCObject* sender);
	void onFollowRotation(cocos2d::CCObject* sender);
	void onUpdateGroupID2(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x8ab0;
	void onEasing(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateTimesLabel();
	TodoReturn updateEasingLabel();
	TodoReturn sliderTimesChanged(cocos2d::CCObject*);
	TodoReturn updateCommandTimes();
	TodoReturn updateDegreesLabel();
	TodoReturn updateTargetGroupID();
	TodoReturn sliderDegreesChanged(cocos2d::CCObject*);
	TodoReturn updateCommandDegrees();
	TodoReturn updateTargetGroupID2();
	TodoReturn updateTextInputLabel();
	TodoReturn updateEasingRateLabel();
	TodoReturn updateTextInputLabel2();
	TodoReturn updateMoveCommandEasing();
	TodoReturn toggleEasingRateVisibility();
	TodoReturn updateMoveCommandEasingRate();

	virtual TodoReturn determineStartValues() = mac 0x7b60;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x8510;
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = mac 0x8080;
}


[[link(android)]]
class MusicBrowserDelegate {
	virtual TodoReturn musicBrowserClosed(MusicBrowser*);
}

[[link(android)]]
class MusicDelegateHandler : cocos2d::CCNode {
	static MusicDelegateHandler* create(MusicDownloadDelegate*);

	bool init(MusicDownloadDelegate*);
	~MusicDelegateHandler();
}

[[link(android)]]
class MusicDownloadManager : cocos2d::CCNode, PlatformDownloadDelegate {
	~MusicDownloadManager();

	TodoReturn getAllSongs();
	TodoReturn getDLObject(char const*);
	TodoReturn getSongInfo(int, bool) = mac 0x556950;
	TodoReturn getSFXObject(int);
	TodoReturn getMusicObject(int);
	TodoReturn getSongInfoKey(int);
	TodoReturn getAllMusicTags(OptionsObjectDelegate*);
	TodoReturn getSongPriority();
	TodoReturn getAllSFXObjects(bool);
	TodoReturn getSFXDownloadKey(int);
	SongInfoObject* getSongInfoObject(int) = mac 0x556810;
	TodoReturn getAllMusicArtists(OptionsObjectDelegate*);
	TodoReturn getAllMusicObjects();
	TodoReturn getDownloadedSongs();
	TodoReturn getSongDownloadKey(int);
	TodoReturn getCustomContentURL();
	TodoReturn getDownloadProgress(int);
	TodoReturn getMusicArtistForID(int);
	TodoReturn getSFXFolderPathForID(int, bool);
	TodoReturn getSFXDownloadProgress(int);
	TodoReturn getSFXFolderObjectForID(int);

	TodoReturn onDownloadSFXCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onGetSongInfoCompleted(gd::string, gd::string);
	TodoReturn onDownloadSongCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*) = mac 0x558f70;
	TodoReturn onDownloadSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onProcessHttpRequestCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onGetCustomContentURLCompleted(gd::string, gd::string);
	TodoReturn onTryUpdateSFXLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onDownloadMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);
	TodoReturn onTryUpdateMusicLibraryCompleted(cocos2d::extension::CCHttpClient*, cocos2d::extension::CCHttpResponse*);

	TodoReturn dataLoaded(DS_Dictionary*) = mac 0x55a150;
	TodoReturn deleteSong(int) = mac 0x5585a0;
	TodoReturn firstSetup();
	TodoReturn handleItND(cocos2d::CCNode*, void*);
	/* unverified signature */
	bool isDLActive(char const*) = mac 0x5565e0;
	gd::string pathForSFX(int sfxID) = mac 0x559cb0, win 0x27f630;
	TodoReturn downloadSFX(int);
	gd::string pathForSong(int songID) = mac 0x5586d0, win 0x27f2c0;
	static MusicDownloadManager* sharedState() = win 0x27d490, mac 0x5552f0;
	void downloadSong(int songID) = mac 0x558880;
	TodoReturn encodeDataTo(DS_Dictionary*);
	TodoReturn nameForTagID(int);
	TodoReturn stopDownload(int);
	TodoReturn addDLToActive(char const*);
	TodoReturn addDLToActive(char const*, cocos2d::CCObject*) = mac 0x559210;
	/* unverified signature */
	bool isResourceSFX(int);
	/* unverified signature */
	bool isResourceSong(int);
	TodoReturn responseToDict(gd::string, char const*) = mac 0x556fb0;
	void createSongsInfo(gd::string) = mac 0x557a60;
	TodoReturn handleItDelayed(bool, gd::string, gd::string, GJHttpType);
	/* unverified signature */
	bool isSFXDownloaded(int sfxID) = mac 0x559880;
	TodoReturn parseSFXLibrary();
	TodoReturn clearUnusedSongs();
	TodoReturn filterMusicByTag(int, cocos2d::CCArray*);
	/* unverified signature */
	bool isSongDownloaded(int) = mac 0x558160, win 0x27f020;
	gd::string pathForSFXFolder(int) = mac 0x559d70, win 0x27f490;
	TodoReturn songStateChanged() = win 0x27dd40;
	TodoReturn storeMusicObject(SongInfoObject*);
	TodoReturn tryLoadLibraries();
	TodoReturn downloadSFXFailed(int, GJSongError);
	TodoReturn musicActionFailed(GJMusicAction);
	TodoReturn parseMusicLibrary();
	gd::string pathForSongFolder(int) = mac 0x559640, win 0x27f120;
	void downloadCustomSong(int) = mac 0x558d00;
	TodoReturn downloadSFXLibrary();
	TodoReturn downloadSongFailed(int, GJSongError);
	/* unverified signature */
	bool isSFXLibraryLoaded();
	TodoReturn loadSongInfoFailed(int, GJSongError);
	TodoReturn ProcessHttpRequest(gd::string, gd::string, gd::string, GJHttpType);
	TodoReturn removeDLFromActive(char const*) = mac 0x5566b0;
	TodoReturn storeSFXInfoObject(SFXInfoObject*);
	TodoReturn downloadSFXFinished(int);
	TodoReturn musicActionFinished(GJMusicAction);
	TodoReturn tryUpdateSFXLibrary();
	TodoReturn downloadMusicLibrary();
	TodoReturn downloadSongFinished(int);
	/* unverified signature */
	bool isMusicLibraryLoaded();
	TodoReturn limitDownloadedSongs() = mac 0x558460;
	TodoReturn loadSongInfoFinished(SongInfoObject*);
	TodoReturn filterMusicByArtistID(int, cocos2d::CCArray*);
	TodoReturn ProcessHttpGetRequest(gd::string, gd::string, cocos2d::extension::SEL_HttpResponse, int, int);
	TodoReturn tryUpdateMusicLibrary();
	TodoReturn addSongObjectFromString(gd::string) = mac 0x556e20;
	TodoReturn addMusicDownloadDelegate(MusicDownloadDelegate*) = mac 0x556340;
	TodoReturn generateCustomContentURL(gd::string);
	TodoReturn incrementPriorityForSong(int);
	/* unverified signature */
	bool isRunningActionForSongID(int) = mac 0x5564c0;
	TodoReturn generateResourceAssetList();
	TodoReturn removeMusicDownloadDelegate(MusicDownloadDelegate*);
	TodoReturn showTOS(FLAlertLayerProtocol*) = mac 0x559fb0;
	TodoReturn handleIt(bool, gd::string, gd::string, GJHttpType);
	TodoReturn clearSong(int);
	TodoReturn deleteSFX(int);

	virtual bool init() = mac 0x556190;

	cocos2d::CCDictionary* m_activeDownloads;
	cocos2d::CCArray* m_musicDownloadDelegates;
	cocos2d::CCDictionary* m_songObjects;
	cocos2d::CCDictionary* m_MDLM003;
	int m_songPriority;
	gd::string m_customContentURL;
	cocos2d::CCDictionary* m_sfxObjects;
	cocos2d::CCArray* m_sfxArtists;
	int m_sfxLibraryVersion;
	int m_sfxObjectCount;
	bool m_requestedSfxLibraryDownloaded;
	cocos2d::CCDictionary* m_musicObjects;
	cocos2d::CCDictionary* m_musicArtists;
	gd::map<int, gd::string> m_musicTags;
	int m_musicLibraryVersion;
	int m_musicObjectCount;
	bool m_requestedMusicLibraryDownloaded;
	bool m_triedToLoadLibraries;
	bool m_unkBool;
	gd::unordered_set<int> m_resourceSfxUnorderedSet;
	gd::unordered_set<int> m_resourceSongUnorderedSet;
}

[[link(android)]]
class ParentalOptionsLayer : FLAlertLayer {
	static ParentalOptionsLayer* create();

	~ParentalOptionsLayer();

	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);

	TodoReturn countForPage(int);
	TodoReturn layerForPage(int);
	TodoReturn nextPosition(int);
	TodoReturn objectsForPage(int);
	TodoReturn incrementCountForPage(int);
	TodoReturn infoKey(int);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	TodoReturn addToggle(char const*, char const*, char const*);
	TodoReturn objectKey(int);

	virtual bool init() = mac 0x764f10;
	virtual void keyBackClicked() = mac 0x766640;
}

[[link(android)]]
class ParticlePreviewLayer : cocos2d::CCLayerColor {
	static ParticlePreviewLayer* create(cocos2d::CCParticleSystemQuad*);

	bool init(cocos2d::CCParticleSystemQuad*);
	~ParticlePreviewLayer();

	TodoReturn preVisitWithClippingRect(cocos2d::CCRect);
	TodoReturn postVisit();

	virtual void draw() = mac 0x455300;
	virtual void visit() = mac 0x455180;
}


[[link(android)]]
class SetupCameraEdgePopup : SetupTriggerPopup {
	static SetupCameraEdgePopup* create(CameraTriggerGameObject*, cocos2d::CCArray*);

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
	~SetupCameraEdgePopup();

	void onCameraEdge(cocos2d::CCObject* sender);
	void onUnlockEdge(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x554ce0;

	TodoReturn updateTargetID();
	TodoReturn updateTextInputLabel();

	virtual TodoReturn determineStartValues() = mac 0x554a40;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x554bd0;
}

[[link(android)]]
class SetupCameraModePopup : SetupTriggerPopup {
	static SetupCameraModePopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupCameraModePopup();

	void onUnboundMode(cocos2d::CCObject* sender);
	void onEditCameraSettings(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x485e40;

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateCameraEasing();
	TodoReturn updateCameraPadding();
	TodoReturn updateItemVisibility();
	TodoReturn updateCameraEasingLabel();
	TodoReturn updateCameraPaddingLabel();

	virtual TodoReturn determineStartValues() = mac 0x485b50;
}

[[link(android)]]
class SetupCheckpointPopup : SetupTriggerPopup {
	static SetupCheckpointPopup* create(CheckpointGameObject*, cocos2d::CCArray*);

	bool init(CheckpointGameObject*, cocos2d::CCArray*);
	~SetupCheckpointPopup();
}

[[link(android)]]
class SetupForceBlockPopup : SetupTriggerPopup {
	static SetupForceBlockPopup* create(ForceBlockGameObject*, cocos2d::CCArray*);

	bool init(ForceBlockGameObject*, cocos2d::CCArray*);
	~SetupForceBlockPopup();

	virtual TodoReturn valueDidChange(int, float) = mac 0x550730;
}

[[link(android)]]
class SetupGravityModPopup : FLAlertLayer, TextInputDelegate {
	static SetupGravityModPopup* create(EffectGameObject*, cocos2d::CCArray*, bool);

	bool init(EffectGameObject*, cocos2d::CCArray*, bool);
	~SetupGravityModPopup();

	void onItemIDArrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateValue();
	TodoReturn updateItemID();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateValueLabel();
	TodoReturn determineStartValues();
	TodoReturn updateTextInputLabel();

	virtual void keyBackClicked() = mac 0x3b7be0;
	virtual TodoReturn show() = mac 0x3b7b80;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x3b7a40;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x3b7a80;
}

[[link(android)]]
class SetupSmartBlockLayer : FLAlertLayer, TextInputDelegate, SelectArtDelegate {
	static SetupSmartBlockLayer* create(SmartGameObject*, cocos2d::CCArray*);

	bool init(SmartGameObject*, cocos2d::CCArray*);
	~SetupSmartBlockLayer();

	void onCreateAll(cocos2d::CCObject* sender);
	void onDontDelete(cocos2d::CCObject* sender);
	void onAllowFlipping(cocos2d::CCObject* sender);
	void onAllowRotation(cocos2d::CCObject* sender);
	void onIgnoreCorners(cocos2d::CCObject* sender);
	void onPasteTemplate(cocos2d::CCObject* sender);
	void onReferenceOnly(cocos2d::CCObject* sender);
	void onSelectPremade(cocos2d::CCObject* sender);
	void onCreateTemplate(cocos2d::CCObject* sender);
	void onSelectTemplate(cocos2d::CCObject* sender);
	void onNearbyReference(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onCreate(cocos2d::CCObject* sender);

	TodoReturn determineStartValues();

	virtual void keyBackClicked() = mac 0x4c3160;
	virtual TodoReturn show() = mac 0x4c30d0;
	virtual TodoReturn selectArtClosed(SelectArtLayer*) = mac 0x4c3130;
}

[[link(android)]]
class SongPlaybackDelegate {
	virtual TodoReturn onPlayback(SongInfoObject*);
}

[[link(android)]]
class CreateGuidelinesLayer : FLAlertLayer, FLAlertLayerProtocol {
	static CreateGuidelinesLayer* create(CustomSongDelegate*, AudioGuidelinesType);

	bool init(CustomSongDelegate*, AudioGuidelinesType);
	~CreateGuidelinesLayer();

	TodoReturn getMergedRecordString(gd::string, gd::string);

	void onClearGuidelines(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender) = mac 0x4e5010;
	void onStop(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x4e5190;
	void onRecord(cocos2d::CCObject* sender) = mac 0x4e46c0;

	TodoReturn toggleItems(bool);
	TodoReturn doClearGuidelines();

	virtual void update(float) = mac 0x4e4ff0;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x4e5260;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x4e5350;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x4e5370;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x4e5410;
	virtual void registerWithTouchDispatcher() = mac 0x4e5450;
	virtual void keyBackClicked() = mac 0x4e51c0;
	virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x4e5490;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x4e50c0;
	virtual void keyUp(cocos2d::enumKeyCodes) = mac 0x4e54e0;
	virtual TodoReturn playMusic() = mac 0x4e47d0;
	virtual TodoReturn registerTouch() = mac 0x4e5210;
	virtual TodoReturn recordingDidStop() = mac 0x4e4860;
}

[[link(android)]]
class FriendRequestDelegate {
	TodoReturn setupPageInfo(gd::string, char const*);

	virtual TodoReturn loadFRequestsFinished(cocos2d::CCArray*, char const*);
	virtual TodoReturn loadFRequestsFailed(char const*, GJErrorCode);
	virtual TodoReturn forceReloadRequests(bool);
}

[[link(android)]]
class GameObjectEditorState {
	TodoReturn loadValues(GameObject*);
}

[[link(android)]]
class GJLocalLevelScoreCell : TableViewCell {
	~GJLocalLevelScoreCell();

	void loadFromScore(GJLocalScore*) = mac 0x229fc0, win 0x87120;
	void updateBGColor(int) = win 0x873B0;
	GJLocalLevelScoreCell(char const*, float, float);

	virtual bool init() = mac 0x233e40;
	virtual void draw() = mac 0x233e60;
}

[[link(android)]]
class GJPFollowCommandLayer : SetupTriggerPopup {
	static GJPFollowCommandLayer* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~GJPFollowCommandLayer();

	void onUpdateGroupID(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x3461d0;

	TodoReturn updateXMod();
	TodoReturn updateYMod();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateMaxSpeed();
	TodoReturn updateXModLabel();
	TodoReturn updateYModLabel();
	TodoReturn sliderXModChanged(cocos2d::CCObject*);
	TodoReturn sliderYModChanged(cocos2d::CCObject*);
	TodoReturn updateOffsetLabel();
	TodoReturn updatePlayerOffset();
	TodoReturn updateMaxSpeedLabel();
	TodoReturn updateTargetGroupID();
	TodoReturn updateTextInputLabel();

	virtual TodoReturn determineStartValues() = mac 0x345440;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x345a60;
}


[[link(android)]]
class MoreVideoOptionsLayer : FLAlertLayer, TextInputDelegate {
	static MoreVideoOptionsLayer* create();

	~MoreVideoOptionsLayer();

	void onApplyFPS(cocos2d::CCObject* sender);
	void onNextPage(cocos2d::CCObject* sender);
	void onPrevPage(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onToggle(cocos2d::CCObject* sender);

	TodoReturn countForPage(int);
	TodoReturn layerForPage(int);
	TodoReturn nextPosition(int);
	TodoReturn objectsForPage(int);
	void updateFPSButtons() = win 0x2b2130;
	TodoReturn incrementCountForPage(int);
	TodoReturn infoKey(int);
	TodoReturn pageKey(int);
	TodoReturn goToPage(int);
	TodoReturn layerKey(int);
	TodoReturn addToggle(char const*, char const*, char const*);
	TodoReturn objectKey(int);

	virtual bool init() = win 0x2b0540, mac 0x762a30;
	virtual void keyBackClicked() = mac 0x764ae0;
}

[[link(android)]]
class ObjectDecoderDelegate {
	virtual TodoReturn getDecodedObject(int, DS_Dictionary*);
}

[[link(android)]]
class OptionsObjectDelegate {
	virtual TodoReturn stateChanged(OptionsObject*);
}

[[link(android)]]
class PlayerFireBoostSprite : cocos2d::CCSprite {
	static PlayerFireBoostSprite* create() = mac 0x3dd7e0;

	~PlayerFireBoostSprite();

	void animateFireIn() {
		this->stopAllActions();

		auto scaleto = cocos2d::CCScaleTo::create(0.06f, m_someFloat * 0.6f, m_someFloat * 1.5f);
		auto callfunc = cocos2d::CCCallFunc::create(this, callfunc_selector(PlayerFireBoostSprite::loopFireAnimation));
		auto sequence = cocos2d::CCSequence::create(scaleto, callfunc, nullptr);
		this->runAction(sequence);
	}
	void animateFireOut() {
		this->stopAllActions();
		auto action = cocos2d::CCScaleTo::create(0.4f, 0.01f, 0.01f);
		this->runAction(action);
	}
	TodoReturn loopFireAnimation() = mac 0x3f8530;

	virtual bool init() = mac 0x3fd6c0;

	float m_someFloat;
}

[[link(android)]]
class RewardedVideoDelegate {
	virtual TodoReturn rewardedVideoFinished();
	virtual TodoReturn shouldOffsetRewardCurrency();
}

[[link(android)]]
class SelectPremadeDelegate {
	virtual TodoReturn selectPremadeClosed(SelectPremadeLayer*, int);
}


[[link(android)]]
class SelectSFXSortDelegate {
	virtual TodoReturn sortSelectClosed(SelectSFXSortLayer*);
}

[[link(android)]]
class SetupAreaTriggerPopup : SetupAreaMoveTriggerPopup {
	static SetupAreaTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaTriggerPopup();
}

[[link(android)]]
class SetupCameraGuidePopup : SetupTriggerPopup {
	static SetupCameraGuidePopup* create(CameraTriggerGameObject*, cocos2d::CCArray*);

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
	~SetupCameraGuidePopup();
}

[[link(android)]]
class SetupEnterEffectPopup : SetupTriggerPopup, HSVWidgetDelegate {
	static SetupEnterEffectPopup* create(EnterEffectObject*, cocos2d::CCArray*, int);

	bool init(EnterEffectObject*, cocos2d::CCArray*, int);
	~SetupEnterEffectPopup();

	void onEnterType(cocos2d::CCObject* sender);
	void onNextFreeEnterChannel(cocos2d::CCObject* sender);
	void onNextFreeEnterEffectID(cocos2d::CCObject* sender);
	void onHSV(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x3d4f20;

	TodoReturn updateHSVButton();

	virtual TodoReturn determineStartValues() = mac 0x3d4b00;
	virtual TodoReturn updateInputValue(int, float&) = mac 0x3d50c0;
	virtual TodoReturn updateInputNode(int, float) = mac 0x3d5090;
	virtual TodoReturn valueDidChange(int, float) = mac 0x3d4cc0;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = mac 0x3d5020;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = mac 0x3d5060;
	virtual TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::_ccHSVValue) = mac 0x3d4d90;
}

[[link(android)]]
class SetupMoveCommandPopup : SetupTriggerPopup {
	static SetupMoveCommandPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupMoveCommandPopup();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = mac 0x5cd6d0;

	TodoReturn updateControlVisibility();

	virtual TodoReturn updateInputValue(int, float&) = mac 0x5cd490;
	virtual TodoReturn updateInputNode(int, float) = mac 0x5cd450;
	virtual TodoReturn valueDidChange(int, float) = mac 0x5cd4d0;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = mac 0x5cd370;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = mac 0x5cd3c0;
}

[[link(android)]]
class SetupRandTriggerPopup : SetupTriggerPopup {
	static SetupRandTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupRandTriggerPopup();

	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onTargetID2Arrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x5ab930;

	TodoReturn updateChance();
	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateTargetID();
	TodoReturn updateTargetID2();
	TodoReturn updateChanceLabel(bool);
	TodoReturn updateTextInputLabel();
	TodoReturn updateTextInputLabel2();

	virtual TodoReturn determineStartValues() = mac 0x5ab350;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x5ab640;
}

[[link(android)]]
class SetupSongTriggerPopup : SetupAudioTriggerPopup, MusicDownloadDelegate, SongPlaybackDelegate {
	static SetupSongTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupSongTriggerPopup();

	void onResetSongTime(cocos2d::CCObject* sender);
	void onSavePlaybackPos(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x2ae810;

	TodoReturn updateLength();
	TodoReturn updateApplyPrepare(bool);
	TodoReturn updateSongTimeSlider();

	virtual TodoReturn pageChanged() = mac 0x2ae780;
	virtual TodoReturn valueDidChange(int, float) = mac 0x2ae680;
	virtual TodoReturn onPlayback(SongInfoObject*) = win 0x356930, mac 0x2ae450;
}

[[link(android)]]
class SetupStopTriggerPopup : SetupTriggerPopup {
	static SetupStopTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupStopTriggerPopup();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = mac 0x551990;
	void onClose(cocos2d::CCObject* sender) = mac 0x551a00;
}

[[link(android)]]
class SetupTouchTogglePopup : SetupTriggerPopup {
	static SetupTouchTogglePopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupTouchTogglePopup();

	void onHoldMode(cocos2d::CCObject* sender);
	void onTouchMode(cocos2d::CCObject* sender);
	void onControlMode(cocos2d::CCObject* sender);
	void onDualTouchMode(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x294270;

	TodoReturn updateTargetID();
	TodoReturn updateTextInputLabel();

	virtual TodoReturn determineStartValues() = mac 0x293f30;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x294150;
}

[[link(android)]]
class SetupZoomTriggerPopup : SetupTriggerPopup {
	static SetupZoomTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupZoomTriggerPopup();

	void onClose(cocos2d::CCObject* sender) = mac 0x2fea60;

	virtual TodoReturn determineStartValues() = mac 0x2fea50;
}

[[link(android)]]
class UIObjectSettingsPopup : SetupTriggerPopup {
	static UIObjectSettingsPopup* create(UISettingsGameObject*, cocos2d::CCArray*);

	bool init(UISettingsGameObject*, cocos2d::CCArray*);
	~UIObjectSettingsPopup();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = mac 0x548b40;
}

[[link(android)]]
class UploadMessageDelegate {
	virtual TodoReturn uploadMessageFinished(int);
	virtual TodoReturn uploadMessageFailed(int);
}



[[link(android)]]
class DemonFilterSelectLayer : FLAlertLayer {
	static DemonFilterSelectLayer* create();

	~DemonFilterSelectLayer();

	void onClose(cocos2d::CCObject* sender);

	TodoReturn selectRating(cocos2d::CCObject*);

	virtual bool init() = mac 0x5f3710;
	virtual void keyBackClicked() = mac 0x5f3d00;
}

[[link(android)]]
class GJAccountSettingsLayer : FLAlertLayer, TextInputDelegate {
	static GJAccountSettingsLayer* create(int) = mac 0x27cea0, win 0x2039D0;

	bool init(int) = mac 0x27d020, win 0x203A70;
	~GJAccountSettingsLayer();

	void onCommentSetting(cocos2d::CCObject* sender);
	void onFriendRequests(cocos2d::CCObject* sender);
	void onMessageSetting(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x27eac0;
	void onUpdate(cocos2d::CCObject* sender);

	TodoReturn updateScoreValues();
	TodoReturn createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, float, float) = mac 0x27e750;

	virtual void keyBackClicked() = mac 0x27f320;
	virtual TodoReturn textInputShouldOffset(CCTextInputNode*, float) = mac 0x27ee30;
	virtual TodoReturn textInputReturn(CCTextInputNode*) = mac 0x27eef0;
}



[[link(android)]]
class SelectListIconDelegate {
	virtual TodoReturn iconSelectClosed(SelectListIconLayer*);
}

[[link(android)]]
class SetupAnimSettingsPopup : SetupTriggerPopup {
	static SetupAnimSettingsPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupAnimSettingsPopup();

	void onClose(cocos2d::CCObject* sender) = mac 0x95300;

	TodoReturn updateAnimSettings();
}

[[link(android)]]
class SetupAudioTriggerPopup : SetupTriggerPopup {
	~SetupAudioTriggerPopup();

	void onProxMode(cocos2d::CCObject* sender);

	TodoReturn addTimeControls(int, float);
	TodoReturn addProxVolControls(int);
	TodoReturn updateSpecialGroup();

	virtual TodoReturn valueDidChange(int, float) = mac 0x4932c0;
}

[[link(android)]]
class SetupCameraRotatePopup : SetupTriggerPopup {
	static SetupCameraRotatePopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupCameraRotatePopup();

	void onEasingRate(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x499d90;
	void onEasing(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateEasingLabel();
	TodoReturn updateDegreesLabel();
	TodoReturn sliderDegreesChanged(cocos2d::CCObject*);
	TodoReturn updateCommandDegrees();
	TodoReturn updateEasingRateLabel();
	TodoReturn updateMoveCommandEasing();
	TodoReturn toggleEasingRateVisibility();
	TodoReturn updateMoveCommandEasingRate();

	virtual TodoReturn determineStartValues() = mac 0x4995d0;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x499b20;
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = mac 0x499850;
}

[[link(android)]]
class SetupCountTriggerPopup : SetupTriggerPopup {
	static SetupCountTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupCountTriggerPopup();

	void onEnableGroup(cocos2d::CCObject* sender);
	void onItemIDArrow(cocos2d::CCObject* sender);
	void onMultiActivate(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onTargetCountArrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x296ec0;

	TodoReturn updateItemID();
	TodoReturn updateTargetID();
	TodoReturn updateTargetCount();
	TodoReturn updateItemIDInputLabel();
	TodoReturn updateTargetIDInputLabel();
	TodoReturn updateCountTextInputLabel();

	virtual TodoReturn determineStartValues() = mac 0x296930;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x296c60;
}

[[link(android)]]
class SetupEnterTriggerPopup : SetupTriggerPopup {
	static SetupEnterTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
	~SetupEnterTriggerPopup();

	void onEnterType(cocos2d::CCObject* sender);

	virtual TodoReturn determineStartValues() = mac 0x279480;
}

[[link(android)]]
class SetupInstantCountPopup : SetupTriggerPopup {
	static SetupInstantCountPopup* create(CountTriggerGameObject*, cocos2d::CCArray*);

	bool init(CountTriggerGameObject*, cocos2d::CCArray*);
	~SetupInstantCountPopup();

	void onCountType(cocos2d::CCObject* sender);
	void onEnableGroup(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onTargetID2Arrow(cocos2d::CCObject* sender);
	void onTargetCountArrow(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x5af240;

	TodoReturn updateItemID();
	TodoReturn updateTargetID();
	TodoReturn updateTargetCount();
	TodoReturn updateItemIDInputLabel();
	TodoReturn updateTargetIDInputLabel();
	TodoReturn updateCountTextInputLabel();

	virtual TodoReturn determineStartValues() = mac 0x5aec10;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x5aef50;
}

[[link(android)]]
class SetupKeyframeAnimPopup : SetupTriggerPopup {
	static SetupKeyframeAnimPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupKeyframeAnimPopup();
}

[[link(android)]]
class SetupObjectTogglePopup : SetupTriggerPopup {
	static SetupObjectTogglePopup* create(EffectGameObject*, cocos2d::CCArray*, bool);

	bool init(EffectGameObject*, cocos2d::CCArray*, bool);
	~SetupObjectTogglePopup();

	void onClose(cocos2d::CCObject* sender) = mac 0x354710;

	virtual TodoReturn valueDidChange(int, float) = mac 0x354690;
}

[[link(android)]]
class SetupResetTriggerPopup : SetupTriggerPopup {
	static SetupResetTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupResetTriggerPopup();
}

[[link(android)]]
class SetupShaderEffectPopup : SetupTriggerPopup {
	static SetupShaderEffectPopup* create(EffectGameObject*, cocos2d::CCArray*, int);

	bool init(EffectGameObject*, cocos2d::CCArray*, int);
	~SetupShaderEffectPopup();

	void onResetColors(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x2aa8b0;
	void onZLayer(cocos2d::CCObject* sender);

	TodoReturn setupBulge();
	TodoReturn setupPinch();
	TodoReturn setupSepia();
	TodoReturn setupGlitch();
	TodoReturn setupHueShift();
	TodoReturn setupPixelate();
	TodoReturn setupChromatic();
	TodoReturn setupGrayscale();
	TodoReturn setupShockLine();
	TodoReturn setupShockWave();
	TodoReturn zLayerToString(int);
	TodoReturn setupLensCircle();
	TodoReturn setupMotionBlur();
	TodoReturn setupRadialBlur();
	TodoReturn setupColorChange();
	TodoReturn setupInvertColor();
	TodoReturn setupSplitScreen();
	TodoReturn setupShaderTrigger();
	TodoReturn updateZLayerButtons();
	TodoReturn setupChromaticGlitch();

	virtual TodoReturn toggleGroup(int, bool) = mac 0x2aa870;
	virtual TodoReturn updateDefaultTriggerValues() = mac 0x2aa010;
	virtual TodoReturn valueDidChange(int, float) = mac 0x2aa550;
}

[[link(android)]]
class SetupStaticCameraPopup : SetupTriggerPopup {
	static SetupStaticCameraPopup* create(CameraTriggerGameObject*, cocos2d::CCArray*);

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
	~SetupStaticCameraPopup();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = mac 0x3799a0;

	TodoReturn updateState();

	virtual TodoReturn valueDidChange(int, float) = mac 0x379910;
}

[[link(android)]]
class SetupTimerTriggerPopup : SetupTriggerPopup {
	static SetupTimerTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);

	bool init(TimerTriggerGameObject*, cocos2d::CCArray*);
	~SetupTimerTriggerPopup();
}

[[link(android)]]
class SpriteAnimationManager : cocos2d::CCNode {
	TodoReturn initWithOwner(CCAnimatedSprite*, gd::string);
	~SpriteAnimationManager();

	TodoReturn getAnimType(gd::string);
	TodoReturn getPrio(gd::string);

	TodoReturn overridePrio() = win 0x4f540;
	TodoReturn runAnimation(gd::string) = mac 0x6e69b0;
	TodoReturn loadAnimations(gd::string);
	TodoReturn queueAnimation(gd::string);
	TodoReturn resetAnimState();
	TodoReturn stopAnimations() = mac 0x6e74f0;
	TodoReturn storeAnimation(cocos2d::CCAnimate*, cocos2d::CCAnimate*, gd::string, int, spriteMode, cocos2d::CCSpriteFrame*);
	TodoReturn createWithOwner(CCAnimatedSprite*, gd::string);
	TodoReturn finishAnimation(gd::string);
	TodoReturn createAnimations(gd::string);
	TodoReturn executeAnimation(gd::string);
	TodoReturn animationFinished();
	TodoReturn runQueuedAnimation();
	TodoReturn updateAnimationSpeed(float);
	TodoReturn callAnimationFinished();
	TodoReturn playSoundForAnimation(gd::string);
	TodoReturn offsetCurrentAnimation(float) = mac 0x6e7890;
	TodoReturn storeSoundForAnimation(cocos2d::CCString*, gd::string, float);
	TodoReturn switchToFirstFrameOfAnimation(gd::string);
	TodoReturn doCleanup();
	TodoReturn playSound(gd::string);
}


[[link(android)]]
class DownloadMessageDelegate {
	virtual TodoReturn downloadMessageFinished(GJUserMessage*);
	virtual TodoReturn downloadMessageFailed(int);
}

[[link(android)]]
class SetupCameraRotatePopup2 : SetupTriggerPopup {
	static SetupCameraRotatePopup2* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupCameraRotatePopup2();
}

[[link(android)]]
class SetupObjectControlPopup : SetupTriggerPopup {
	static SetupObjectControlPopup* create(ObjectControlGameObject*, cocos2d::CCArray*);

	bool init(ObjectControlGameObject*, cocos2d::CCArray*);
	~SetupObjectControlPopup();
}

[[link(android)]]
class SetupObjectOptionsPopup : FLAlertLayer, TextInputDelegate {
	static SetupObjectOptionsPopup* create(GameObject*, cocos2d::CCArray*, SetGroupIDLayer*);

	bool init(GameObject*, cocos2d::CCArray*, SetGroupIDLayer*);
	~SetupObjectOptionsPopup();

	void onDontFade(cocos2d::CCObject* sender);
	void onIceBlock(cocos2d::CCObject* sender);
	void onPassable(cocos2d::CCObject* sender);
	void onDontBoost(cocos2d::CCObject* sender);
	void onDontEnter(cocos2d::CCObject* sender);
	void onGripSlope(cocos2d::CCObject* sender);
	void onNonStickX(cocos2d::CCObject* sender);
	void onNonStickY(cocos2d::CCObject* sender);
	void onAlwaysHide(cocos2d::CCObject* sender);
	void onDontBoostX(cocos2d::CCObject* sender);
	void onHighDetail(cocos2d::CCObject* sender);
	void onNoParticle(cocos2d::CCObject* sender);
	void onDisableGlow(cocos2d::CCObject* sender);
	void onExtraSticky(cocos2d::CCObject* sender);
	void onHideEffects(cocos2d::CCObject* sender);
	void onCenterEffect(cocos2d::CCObject* sender);
	void onNoAudioScale(cocos2d::CCObject* sender);
	void onDisableObject(cocos2d::CCObject* sender);
	void onApplyScaleStick(cocos2d::CCObject* sender);
	void onToggleAreaParent(cocos2d::CCObject* sender);
	void onExtendedCollision(cocos2d::CCObject* sender);
	void onSinglePlayerTouch(cocos2d::CCObject* sender);
	void onToggleGroupParent(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x2f77e0;
	void onReverse(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = mac 0x2f7740;
	virtual TodoReturn show() = mac 0x2f7780;
	virtual TodoReturn determineStartValues() = mac 0x2f7330;
}

[[link(android)]]
class SetupPickupTriggerPopup : SetupTriggerPopup {
	static SetupPickupTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupPickupTriggerPopup();

	void onPlusButton(cocos2d::CCObject* sender) = mac 0x5c4f0;
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = mac 0x5c530;

	TodoReturn updateState();
}

[[link(android)]]
class SetupPlatformerEndPopup : SetupTriggerPopup {
	static SetupPlatformerEndPopup* create(EndTriggerGameObject*, cocos2d::CCArray*);

	bool init(EndTriggerGameObject*, cocos2d::CCArray*);
	~SetupPlatformerEndPopup();
}

[[link(android)]]
class SetupPlayerControlPopup : SetupTriggerPopup {
	static SetupPlayerControlPopup* create(PlayerControlGameObject*, cocos2d::CCArray*);

	bool init(PlayerControlGameObject*, cocos2d::CCArray*);
	~SetupPlayerControlPopup();
}

[[link(android)]]
class SetupRotateCommandPopup : SetupTriggerPopup {
	static SetupRotateCommandPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupRotateCommandPopup();

	void onInfiniteDuration(cocos2d::CCObject* sender);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = mac 0xa650;

	TodoReturn updateControlVisibility();

	virtual TodoReturn updateInputNode(int, float) = mac 0xa300;
	virtual TodoReturn valueDidChange(int, float) = mac 0xa310;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = mac 0xa2b0;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = mac 0xa2f0;
}

[[link(android)]]
class SetupSmartTemplateLayer : FLAlertLayer, TextInputDelegate, FLAlertLayerProtocol {
	static SetupSmartTemplateLayer* create(GJSmartTemplate*) = mac 0x4c3540;

	bool init(GJSmartTemplate*) = mac 0x4c36a0;
	~SetupSmartTemplateLayer();

	void onBack(cocos2d::CCObject* sender) = mac 0x4c3f90;
	void onClick(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = mac 0x4c45f0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x4c4300;
	virtual TodoReturn textInputOpened(CCTextInputNode*) = mac 0x4c4510;
	virtual TodoReturn textInputClosed(CCTextInputNode*) = mac 0x4c43e0;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x4c45d0;
}

[[link(android)]]
class SetupSpawnParticlePopup : SetupTriggerPopup {
	static SetupSpawnParticlePopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupSpawnParticlePopup();
}

[[link(android)]]
class ShareLevelSettingsLayer : FLAlertLayer, NumberInputDelegate {
	static ShareLevelSettingsLayer* create(GJGameLevel*);

	bool init(GJGameLevel*);
	~ShareLevelSettingsLayer();

	void onCopyable(cocos2d::CCObject* sender);
	void onPassword(cocos2d::CCObject* sender);
	void onUnlisted(cocos2d::CCObject* sender);
	void onEditPassword(cocos2d::CCObject* sender);
	void onUnlistedFriendsOnly(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn updateSettingsState();

	virtual void keyBackClicked();
	virtual TodoReturn numberInputClosed(NumberInputLayer*);
}

[[link(android)]]
class BrowseSmartTemplateLayer : FLAlertLayer {
	static BrowseSmartTemplateLayer* create(GJSmartTemplate*, SmartBrowseFilter);

	bool init(GJSmartTemplate*, SmartBrowseFilter);
	~BrowseSmartTemplateLayer();

	void onTemplateObject(cocos2d::CCObject* sender);
	void onBack(cocos2d::CCObject* sender) = mac 0x4c6290;
	void onClick(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);

	TodoReturn createDots();
	TodoReturn updateDots();
	TodoReturn createPrefab(gd::string, int);
	TodoReturn addObjectToPage(cocos2d::CCObject*, int);
	TodoReturn addPrefabMenuItem(SmartPrefabResult, int);
	TodoReturn goToPage(int);
	TodoReturn baseSetup();

	virtual void keyBackClicked() = mac 0x4c6250;
}

[[link(android)]]
class PlatformDownloadDelegate {
	virtual TodoReturn downloadFinished(char const*);
	virtual TodoReturn downloadFailed(char const*);
}

[[link(android)]]
class SetupAudioLineGuidePopup : SetupTriggerPopup, SelectSettingDelegate {
	static SetupAudioLineGuidePopup* create(AudioLineGuideGameObject*, cocos2d::CCArray*);

	bool init(AudioLineGuideGameObject*, cocos2d::CCArray*);
	~SetupAudioLineGuidePopup();

	void onSpeed(cocos2d::CCObject* sender);

	virtual TodoReturn selectSettingClosed(SelectSettingLayer*) = mac 0x54f530;
}

[[link(android)]]
class SetupCameraOffsetTrigger : SetupTriggerPopup {
	static SetupCameraOffsetTrigger* create(CameraTriggerGameObject*, cocos2d::CCArray*);

	bool init(CameraTriggerGameObject*, cocos2d::CCArray*);
	~SetupCameraOffsetTrigger();

	void onEasingRate(cocos2d::CCObject* sender);
	void onTargetMode(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x627640;
	void onEasing(cocos2d::CCObject* sender);

	TodoReturn sliderChanged(cocos2d::CCObject*);
	TodoReturn sliderXChanged(cocos2d::CCObject*);
	TodoReturn sliderYChanged(cocos2d::CCObject*);
	TodoReturn updateDuration();
	TodoReturn updateDurLabel(bool);
	TodoReturn updateEasingLabel();
	TodoReturn updateValueXLabel();
	TodoReturn updateValueYLabel();
	TodoReturn posFromSliderValue(float);
	TodoReturn sliderValueFromPos(int);
	TodoReturn updateEasingRateLabel();
	TodoReturn updateMoveCommandPosX();
	TodoReturn updateMoveCommandPosY();
	TodoReturn updateMoveCommandEasing();
	TodoReturn toggleEasingRateVisibility();
	TodoReturn updateMoveCommandEasingRate();

	virtual TodoReturn determineStartValues() = mac 0x626b10;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x627310;
	virtual TodoReturn valuePopupClosed(ConfigureValuePopup*, float) = mac 0x626ee0;
}

[[link(android)]]
class SetupGameplayOffsetPopup : SetupTriggerPopup {
	static SetupGameplayOffsetPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupGameplayOffsetPopup();

	void onDefaultValues(cocos2d::CCObject* sender);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = mac 0x75ad70;

	virtual TodoReturn updateInputValue(int, float&) = mac 0x75ae80;
	virtual TodoReturn updateInputNode(int, float) = mac 0x75ae60;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = mac 0x75ae10;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = mac 0x75ae40;
}

[[link(android)]]
class SetupGravityTriggerPopup : SetupTriggerPopup {
	static SetupGravityTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupGravityTriggerPopup();

	virtual TodoReturn valueDidChange(int, float) = mac 0x4a08a0;
}

[[link(android)]]
class SetupInteractObjectPopup : SetupTriggerPopup {
	static SetupInteractObjectPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupInteractObjectPopup();

	void onPlusButton(cocos2d::CCObject* sender) = mac 0x4e6b60;
	void onClose(cocos2d::CCObject* sender) = mac 0x4e6c50;

	TodoReturn updateItems();

	virtual TodoReturn valueDidChange(int, float) = mac 0x4e6ba0;
}

[[link(android)]]
class SetupObjectOptions2Popup : SetupTriggerPopup {
	static SetupObjectOptions2Popup* create(GameObject*, cocos2d::CCArray*);

	bool init(GameObject*, cocos2d::CCArray*);
	~SetupObjectOptions2Popup();

	void onPlusButton(cocos2d::CCObject* sender) = mac 0x2f7dc0;
}

[[link(android)]]
class SetupOptionsTriggerPopup : SetupTriggerPopup {
	static SetupOptionsTriggerPopup* create(GameOptionsTrigger*, cocos2d::CCArray*);

	bool init(GameOptionsTrigger*, cocos2d::CCArray*);
	~SetupOptionsTriggerPopup();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = mac 0x5ac540;

	TodoReturn addOption(int, gd::string);
}

[[link(android)]]
class SetupRandAdvTriggerPopup : SetupTriggerPopup {
	static SetupRandAdvTriggerPopup* create(RandTriggerGameObject*, cocos2d::CCArray*);

	bool init(RandTriggerGameObject*, cocos2d::CCArray*);
	~SetupRandAdvTriggerPopup();

	void onAddChance(cocos2d::CCObject* sender);
	void onRemoveFromGroup(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x36bc50;

	TodoReturn removeGroupID(int);
	TodoReturn addChanceToObject(RandTriggerGameObject*, int, int);
	TodoReturn callRemoveFromGroup(float);
	TodoReturn updateGroupIDButtons();
	TodoReturn removeGroupIDFromObject(RandTriggerGameObject*, int);
	TodoReturn addChance(int, int);

	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x36bc30;
}

[[link(android)]]
class SetupRotateGameplayPopup : SetupTriggerPopup {
	static SetupRotateGameplayPopup* create(RotateGameplayGameObject*, cocos2d::CCArray*);

	bool init(RotateGameplayGameObject*, cocos2d::CCArray*);
	~SetupRotateGameplayPopup();

	void onPlusButton(cocos2d::CCObject* sender) = mac 0x75a240;

	virtual TodoReturn valueDidChange(int, float) = mac 0x75a280;
}

[[link(android)]]
class GJSmartBlockPreviewSprite : cocos2d::CCNode {
	static GJSmartBlockPreviewSprite* create();

	~GJSmartBlockPreviewSprite();

	virtual bool init() = mac 0x408950;
	virtual void visit() = mac 0x408960;
}

[[link(android)]]
class SetupAreaAnimTriggerPopup : SetupAreaTintTriggerPopup {
	static SetupAreaAnimTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*, int);

	bool init(EnterEffectObject*, cocos2d::CCArray*, int);
	~SetupAreaAnimTriggerPopup();

	void onDeactivateAnimValue(cocos2d::CCObject* sender);

	TodoReturn updateTargetIDLabel();
	TodoReturn createValueControlAdvancedAnim(int, gd::string, cocos2d::CCPoint, float, bool, InputValueType, int, bool, float, float, int, int, GJInputStyle);

	virtual TodoReturn updateDefaultTriggerValues() = mac 0x4b7670;
	virtual TodoReturn valueDidChange(int, float) = mac 0x4b7810;
}

[[link(android)]]
class SetupAreaFadeTriggerPopup : SetupAreaMoveTriggerPopup {
	static SetupAreaFadeTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaFadeTriggerPopup();
}

[[link(android)]]
class SetupAreaMoveTriggerPopup : SetupTriggerPopup {
	static SetupAreaMoveTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaMoveTriggerPopup();

	TodoReturn getModeValues(int, int&, bool&, bool&);

	void onSpecialTarget(cocos2d::CCObject* sender);
	void onNextFreeEffectID(cocos2d::CCObject* sender);
	void onMode(cocos2d::CCObject* sender);

	TodoReturn addAreaDefaultControls(int);
	TodoReturn updateEnterTargetIDState();

	virtual TodoReturn updateInputValue(int, float&) = mac 0x4afcd0;
	virtual TodoReturn updateDefaultTriggerValues() = mac 0x4af850;
	virtual TodoReturn updateInputNode(int, float) = mac 0x4afca0;
	virtual TodoReturn valueDidChange(int, float) = mac 0x4afb60;
	virtual TodoReturn triggerValueFromSliderValue(int, float) = mac 0x4afc30;
	virtual TodoReturn triggerSliderValueFromValue(int, float) = mac 0x4afc70;
}

[[link(android)]]
class SetupAreaTintTriggerPopup : SetupAreaMoveTriggerPopup, HSVWidgetDelegate {
	static SetupAreaTintTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaTintTriggerPopup();

	void onHSV(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x4b40b0;

	TodoReturn updateHSVButton();

	virtual TodoReturn determineStartValues() = mac 0x4b3da0;
	virtual TodoReturn valueDidChange(int, float) = mac 0x4b3cb0;
	virtual TodoReturn hsvPopupClosed(HSVWidgetPopup*, cocos2d::_ccHSVValue) = mac 0x4b3f20;
}

[[link(android)]]
class SetupItemEditTriggerPopup : SetupTriggerPopup {
	static SetupItemEditTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*);
	~SetupItemEditTriggerPopup();

	void onOpButton(cocos2d::CCObject* sender);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = mac 0x54b700;

	TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int);
	TodoReturn updateFormulaLabel();

	virtual TodoReturn valueDidChange(int, float) = mac 0x54b8e0;
}

[[link(android)]]
class SetupSequenceTriggerPopup : SetupTriggerPopup {
	static SetupSequenceTriggerPopup* create(SequenceTriggerGameObject*);

	bool init(SequenceTriggerGameObject*);
	~SetupSequenceTriggerPopup();

	void onAddChance(cocos2d::CCObject* sender);
	void onChangeOrder(cocos2d::CCObject* sender);
	void onDeleteSelected(cocos2d::CCObject* sender);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = mac 0x4ba110;
	void onSelect(cocos2d::CCObject* sender);

	TodoReturn updateGroupIDButtons();
}


[[link(android)]]
class SetupCollisionTriggerPopup : SetupTriggerPopup {
	static SetupCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupCollisionTriggerPopup();

	void onTargetP1(cocos2d::CCObject* sender);
	void onTargetP2(cocos2d::CCObject* sender);
	void onTargetPP(cocos2d::CCObject* sender);
	void onEnableGroup(cocos2d::CCObject* sender);
	void onItemIDArrow(cocos2d::CCObject* sender);
	void onItemID2Arrow(cocos2d::CCObject* sender);
	void onTargetIDArrow(cocos2d::CCObject* sender);
	void onActivateOnExit(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender) = mac 0x374fe0;

	TodoReturn updateItemID();
	TodoReturn updateItemID2();
	TodoReturn updateTargetID();
	TodoReturn updateItemIDInputLabel();
	TodoReturn updateItemID2InputLabel();
	TodoReturn updateTargetIDInputLabel();

	virtual TodoReturn determineStartValues() = mac 0x374950;
	virtual TodoReturn textChanged(CCTextInputNode*) = mac 0x374cf0;
}

[[link(android)]]
class UpdateAccountSettingsPopup : FLAlertLayer, GJAccountSettingsDelegate {
	static UpdateAccountSettingsPopup* create(GJAccountSettingsLayer*, int, int, int, gd::string, gd::string, gd::string);

	bool init(GJAccountSettingsLayer*, int, int, int, gd::string, gd::string, gd::string);
	~UpdateAccountSettingsPopup();

	void onClose(cocos2d::CCObject* sender);

	virtual void keyBackClicked() = mac 0x27fef0;
	virtual TodoReturn updateSettingsFinished() = mac 0x27fce0;
	virtual TodoReturn updateSettingsFailed() = mac 0x27fe00;
}


[[link(android)]]
class SetupAdvFollowRetargetPopup : SetupTriggerPopup {
	static SetupAdvFollowRetargetPopup* create(AdvancedFollowEditObject*, cocos2d::CCArray*);

	bool init(AdvancedFollowEditObject*, cocos2d::CCArray*);
	~SetupAdvFollowRetargetPopup();

	virtual TodoReturn updateDefaultTriggerValues() = mac 0x2e8e10;
	virtual TodoReturn valueDidChange(int, float) = mac 0x2e8f50;
}

[[link(android)]]
class SetupAreaRotateTriggerPopup : SetupAreaMoveTriggerPopup {
	static SetupAreaRotateTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaRotateTriggerPopup();
}

[[link(android)]]
class SetupTimerEventTriggerPopup : SetupTriggerPopup {
	static SetupTimerEventTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);

	bool init(TimerTriggerGameObject*, cocos2d::CCArray*);
	~SetupTimerEventTriggerPopup();
}

[[link(android)]]
class CustomizeObjectSettingsPopup : SetupTriggerPopup {
	static CustomizeObjectSettingsPopup* create(GameObject*, cocos2d::CCArray*, CustomizeObjectLayer*);

	bool init(GameObject*, cocos2d::CCArray*, CustomizeObjectLayer*);
	~CustomizeObjectSettingsPopup();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = mac 0x1d8cc0;
	void onClose(cocos2d::CCObject* sender) = mac 0x1d8d30;
}

[[link(android)]]
class SetupItemCompareTriggerPopup : SetupTriggerPopup {
	static SetupItemCompareTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*);
	~SetupItemCompareTriggerPopup();

	void onOpButton(cocos2d::CCObject* sender);
	void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = mac 0x54dc00;

	TodoReturn updateOpButton(CCMenuItemSpriteExtra*, int, int);
	TodoReturn updateFormulaLabel();

	virtual TodoReturn valueDidChange(int, float) = mac 0x54dd60;
}

[[link(android)]]
class SetupTimerControlTriggerPopup : SetupTriggerPopup {
	static SetupTimerControlTriggerPopup* create(TimerTriggerGameObject*, cocos2d::CCArray*);

	bool init(TimerTriggerGameObject*, cocos2d::CCArray*);
	~SetupTimerControlTriggerPopup();

	void onCustomToggleTriggerValue(cocos2d::CCObject* sender) = mac 0x37ff30;
}

[[link(android)]]
class SetupAdvFollowEditPhysicsPopup : SetupTriggerPopup {
	static SetupAdvFollowEditPhysicsPopup* create(AdvancedFollowEditObject*, cocos2d::CCArray*);

	bool init(AdvancedFollowEditObject*, cocos2d::CCArray*);
	~SetupAdvFollowEditPhysicsPopup();

	virtual TodoReturn valueDidChange(int, float) = mac 0x2e8540;
}

[[link(android)]]
class SetupAreaTransformTriggerPopup : SetupAreaMoveTriggerPopup {
	static SetupAreaTransformTriggerPopup* create(EnterEffectObject*, cocos2d::CCArray*);

	bool init(EnterEffectObject*, cocos2d::CCArray*);
	~SetupAreaTransformTriggerPopup();
}

[[link(android)]]
class SetupCollisionStateTriggerPopup : SetupInstantCollisionTriggerPopup {
	static SetupCollisionStateTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupCollisionStateTriggerPopup();
}

[[link(android)]]
class SetupPersistentItemTriggerPopup : SetupTriggerPopup {
	static SetupPersistentItemTriggerPopup* create(ItemTriggerGameObject*, cocos2d::CCArray*);

	bool init(ItemTriggerGameObject*, cocos2d::CCArray*);
	~SetupPersistentItemTriggerPopup();
}

[[link(android)]]
class SetupInstantCollisionTriggerPopup : SetupTriggerPopup {
	static SetupInstantCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*);

	bool init(EffectGameObject*, cocos2d::CCArray*);
	~SetupInstantCollisionTriggerPopup();

	TodoReturn updateSpecialNodes();

	virtual TodoReturn updateDefaultTriggerValues() = mac 0x375cd0;
	virtual TodoReturn valueDidChange(int, float) = mac 0x3759c0;
}

[[link(android)]]
class MD5 {
	TodoReturn MD5Transform(unsigned long*, unsigned char*);
}

[[link(android)]]
class OBB2D : cocos2d::CCNode {
	static OBB2D* create(cocos2d::CCPoint, float, float, float);

	bool init(cocos2d::CCPoint, float, float, float);
	~OBB2D();

	TodoReturn getBoundingRect();

	TodoReturn computeAxes();
	TodoReturn orderCorners();
	TodoReturn overlaps1Way(OBB2D*);
	TodoReturn calculateWithCenter(cocos2d::CCPoint, float, float, float);
	TodoReturn overlaps(OBB2D*);
}

[[link(android)]]
class rtsha1 {
	TodoReturn toHexString(unsigned char const*, char*);
	TodoReturn calc(void const*, int, unsigned char*);
}

[[link(android)]]
class UILayer : cocos2d::CCLayerColor, cocos2d::CCKeyboardDelegate {
	static UILayer* create(GJBaseGameLayer*);

	bool init(GJBaseGameLayer*) = mac 0x4a2e40;
	~UILayer();

	void onDeleteCheck(cocos2d::CCObject* sender);
	void onCheck(cocos2d::CCObject* sender);
	void onPause(cocos2d::CCObject* sender) = win 0x3b8d90, mac 0x4a3630;

	TodoReturn enableMenu() = mac 0x4a4600;
	TodoReturn disableMenu() = mac 0x4a3ea0;
	TodoReturn refreshDpad() = mac 0x4a3950;
	TodoReturn editorPlaytest(bool);
	void handleKeypress(cocos2d::enumKeyCodes, bool) = win 0x3b8900;
	TodoReturn updateDualMode(bool);
	TodoReturn resetAllButtons() = win 0x3b8f10, mac 0x4a4710;
	TodoReturn enableEditorMode();
	void resetUINodeState() = win 0x3b8810;
	TodoReturn processUINodeTouch(GJUITouchEvent, int, cocos2d::CCPoint, GJUINode*);
	/* unverified signature */
	bool isJumpButtonPressed(bool);
	TodoReturn processUINodesTouch(GJUITouchEvent, cocos2d::CCTouch*);
	TodoReturn toggleMenuVisibility(bool) = mac 0x4a4620, win 0x3b8ec0;
	TodoReturn togglePlatformerMode(bool);
	TodoReturn toggleCheckpointsMenu(bool);
	TodoReturn updateUINodeVisibility(bool);

	virtual void draw() = win 0x3ba4c0, mac 0x4a4800;
	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x4a4850;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x4a4c90;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x4a5140;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x4a57c0;
	virtual void registerWithTouchDispatcher() = mac 0x4a5800;
	virtual void keyBackClicked() = mac 0x4a4580;
	virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x4a44e0;
	virtual void keyUp(cocos2d::enumKeyCodes) = mac 0x4a4530;
}

[[link(android)]]
class URLCell : TableViewCell {
	~URLCell();

	void onURL(cocos2d::CCObject* sender);

	void updateBGColor(int) = win 0x807B0;
	void loadFromObject(CCURLObject*) = mac 0x2264c0, win 0x8C190;
	URLCell(char const*, float, float);

	virtual bool init() = mac 0x237810;
	virtual void draw() = mac 0x237880;
}


[[link(android)]]
class GameCell : TableViewCell {
	~GameCell();

	void onTouch(cocos2d::CCObject* sender);

	TodoReturn updateBGColor(int);
	TodoReturn loadFromString(gd::string);
	GameCell(char const*, float, float);

	virtual bool init() = mac 0x2ea680;
	virtual void draw() = mac 0x2ea740;
}

[[link(android)]]
class GJUINode : cocos2d::CCNode {
	static GJUINode* create(UIButtonConfig&) = mac 0x4a3560;

	bool init(UIButtonConfig&) = mac 0x4a5bb0;
	~GJUINode();

	TodoReturn getOpacity();
	TodoReturn getButtonScale();

	void setOpacity(unsigned char);

	TodoReturn resetState() = win 0x3b9be0;
	TodoReturn touchEnded();
	TodoReturn updateSize(float, float);
	TodoReturn toggleModeB(bool);
	TodoReturn updateWidth(float);
	TodoReturn saveToConfig(UIButtonConfig&);
	TodoReturn updateHeight(float);
	TodoReturn loadFromConfig(UIButtonConfig&);
	TodoReturn updateDeadzone(int);
	TodoReturn updateRangePos(cocos2d::CCPoint);
	TodoReturn activeTouchTest(cocos2d::CCPoint);
	TodoReturn highlightButton(int);
	TodoReturn toggleHighlight(int, bool);
	TodoReturn updateDragRadius(float);
	TodoReturn updateButtonScale(float);
	TodoReturn updateButtonFrames();
	TodoReturn activeRangeTouchTest(cocos2d::CCPoint);
	TodoReturn updateButtonPositions();
	TodoReturn touchTest(cocos2d::CCPoint);

	virtual void draw() = mac 0x4a6880;
}

[[link(android)]]
class ListCell : TableViewCell {
	~ListCell();

	TodoReturn updateBGColor(int);
	TodoReturn loadFromObject(cocos2d::CCObject*, int, int, int);
	ListCell(char const*, float, float);

	virtual bool init() = mac 0x2ea4d0;
	virtual void draw() = mac 0x2ea560;
}

[[link(android)]]
class SongCell : TableViewCell {
	~SongCell();

	void onClick(cocos2d::CCObject* sender);

	void updateBGColor(int) = win 0x807B0;
	void loadFromObject(SongObject*) = mac 0x225d30, win 0x82650;
	SongCell(char const*, float, float);

	virtual bool init() = mac 0x231e40;
	virtual void draw() = mac 0x231e80;
}

[[link(android)]]
class TOSPopup : FLAlertLayer {
	static TOSPopup* create();

	~TOSPopup();

	void onTOS(cocos2d::CCObject* sender);
	void onClose(cocos2d::CCObject* sender);
	void onPrivacy(cocos2d::CCObject* sender);

	virtual bool init() = win 0x20d8a0, mac 0x28b9b0;
	virtual void keyBackClicked() = mac 0x28c040;
}

[[link(android)]]
class AdToolbox {
	/* unverified signature */
	bool isShowingAd();
	TodoReturn enableBanner();
	TodoReturn disableBanner();
	TodoReturn showInterstitial();
	TodoReturn cacheInterstitial();
	TodoReturn showRewardedVideo();
	TodoReturn cacheRewardedVideo();
	TodoReturn queueRefreshBanner();
	TodoReturn enableBannerNoRefresh();
	TodoReturn hasCachedInterstitial();
	TodoReturn hasCachedRewardedVideo();
	TodoReturn setupAds() = mac 0xc8250;
	TodoReturn showDebug();
}

[[link(android)]]
class GJMapPack : cocos2d::CCNode {
	cocos2d::CCArray* m_levels;
    int m_packID;
    GJDifficulty m_difficulty;
    int m_stars;
    int m_coins;
    gd::string m_packName;
    gd::string m_levelStrings;
    cocos2d::ccColor3B m_textColour;
    cocos2d::ccColor3B m_barColour;
    int m_MId;
    bool m_isGauntlet;

	static GJMapPack* create(cocos2d::CCDictionary*);
	static GJMapPack* create();

	~GJMapPack();

	int completedMaps() = mac 0x52c930;
	TodoReturn parsePackColors(gd::string, gd::string);
	TodoReturn parsePackLevels(gd::string);
	bool hasCompletedMapPack() = mac 0x52c9e0;
	int totalMaps() {
		if (this->m_levels) {
			return this->m_levels->count();
		}

		return 0;
	}

	virtual bool init() = mac 0x52c8b0;
}

[[link(android)]]
class GJMGLayer : cocos2d::CCLayer {
	static GJMGLayer* create(int);

	bool init(int);
	~GJMGLayer();

	TodoReturn scaleGround(float);
	TodoReturn toggleVisible01(bool);
	TodoReturn toggleVisible02(bool);
	TodoReturn updateGroundPos(cocos2d::CCPoint);
	TodoReturn updateMG01Blend(bool) = mac 0x5b1250;
	TodoReturn updateMG02Blend(bool) = mac 0x5b12a0;
	TodoReturn deactivateGround();
	TodoReturn loadGroundSprites(int, bool);
	TodoReturn updateGroundColor(cocos2d::_ccColor3B, bool) = mac 0x5b0ec0;
	TodoReturn updateGroundWidth(bool);
	TodoReturn updateGroundOpacity(unsigned char, bool) = mac 0x5b1020;

	virtual void draw() = mac 0x5b1240;
	virtual TodoReturn showGround() = mac 0x5b1210;
}

[[link(android)]]
class InfoLayer : FLAlertLayer, LevelCommentDelegate, CommentUploadDelegate, FLAlertLayerProtocol {
	static InfoLayer* create(GJGameLevel*, GJUserScore*, GJLevelList*) = mac 0x76fe50, win 0x2239C0;

	bool init(GJGameLevel*, GJUserScore*, GJLevelList*) = mac 0x770000, win 0x223A80;
	~InfoLayer();

	int getAccountID();
	TodoReturn getSpriteButton(char const*, cocos2d::SEL_MenuHandler, cocos2d::CCMenu*, float, cocos2d::CCPoint);
	int getID() {
		if(m_score) return m_score->m_userID;
		if(m_levelList) return - m_levelList->m_listID;
		if(m_level) return m_level->m_levelID;
		return 0;
	}
	int getRealID();

	void onNextPage(cocos2d::CCObject* sender) = mac 0x772a20;
	void onOriginal(cocos2d::CCObject* sender) = mac 0x772260;
	void onPrevPage(cocos2d::CCObject* sender) = mac 0x772a00;
	void onLevelInfo(cocos2d::CCObject* sender) = win 0x225f00, mac 0x7732c0;
	void onCopyLevelID(cocos2d::CCObject* sender) = mac 0x7738c0;
	void onGetComments(cocos2d::CCObject* sender);
	void onRefreshComments(cocos2d::CCObject* sender) = win 0x2258f0;
	void onMore(cocos2d::CCObject* sender) = win 0x225bf0, mac 0x772010;
	void onClose(cocos2d::CCObject* sender) = mac 0x772980;
	void onComment(cocos2d::CCObject* sender) = mac 0x7723a0;
	void onSimilar(cocos2d::CCObject* sender);

	TodoReturn reloadWindow();
	TodoReturn confirmReport(cocos2d::CCObject*) = mac 0x7727d0;
	TodoReturn setupPageInfo(gd::string, char const*) = mac 0x774030;
	TodoReturn setupLevelInfo() = mac 0x772060;
	TodoReturn toggleCommentMode(cocos2d::CCObject*) = mac 0x772b20;
	TodoReturn updateLevelsLabel();
	TodoReturn toggleExtendedMode(cocos2d::CCObject*);
	TodoReturn setupCommentsBrowser(cocos2d::CCArray*) = mac 0x773120, win 0x226770;
	TodoReturn toggleSmallCommentMode(cocos2d::CCObject*);
	TodoReturn updateCommentModeButtons();
	TodoReturn loadPage(int, bool) = mac 0x772d80, win 0x226440;
	/* unverified signature */
	bool isCorrect(char const*);

	virtual void registerWithTouchDispatcher() = mac 0x773d50;
	virtual void keyBackClicked() = mac 0x773c40;
	virtual void show() = win 0x8F6A0, mac 0x774ae0;
	virtual TodoReturn loadCommentsFinished(cocos2d::CCArray*, char const*) = mac 0x773ec0;
	virtual TodoReturn loadCommentsFailed(char const*) = mac 0x773f90;
	virtual TodoReturn commentUploadFinished(int) = mac 0x774690;
	virtual TodoReturn commentUploadFailed(int, CommentError) = mac 0x7747e0;
	virtual TodoReturn updateUserScoreFinished() = mac 0x7744f0;
	virtual TodoReturn FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x773a00;

	GJGameLevel* m_level;
    GJUserScore* m_score;
    GJLevelList* m_levelList;
    gd::string m_commentKey;
    LoadingCircle* m_loadingCircle;
    cocos2d::CCLabelBMFont* m_pageLabel;
    cocos2d::CCLabelBMFont* m_noComments;
    GJCommentListLayer* m_list;
    CCMenuItemSpriteExtra* m_rightArrow;
    CCMenuItemSpriteExtra* m_leftArrow;
    CCMenuItemSpriteExtra* m_likeBtn;
    CCMenuItemSpriteExtra* m_timeBtn;
    CCMenuItemSpriteExtra* m_reportBtn;
    CCMenuItemSpriteExtra* m_commentsBtn;
    CCMenuItemSpriteExtra* m_refreshCommentsBtn;
    int m_itemCount;
    int m_pageStartIdx;
    int m_pageEndIdx;
    int m_page;
    bool m_canUpdateUserScore;
    CommentKeyType m_mode;
}

[[link(android)]]
class LevelCell : TableViewCell {
	static LevelCell* create(float, float) = mac 0x22d270;

	~LevelCell();

	void onViewProfile(cocos2d::CCObject* sender) = mac 0x230550, win 0x80910;
	void onClick(cocos2d::CCObject* sender) = mac 0x2303f0, win 0x80820;
	void onToggle(cocos2d::CCObject* sender) = win 0x7d580;

	TodoReturn updateToggle();
	TodoReturn loadFromLevel(GJGameLevel*) = mac 0x223890, win 0x7D3F0;
	TodoReturn updateBGColor(int) = win 0x807B0;
	TodoReturn updateCellMode(int) = mac 0x22cde0;
	TodoReturn loadLocalLevelCell() = mac 0x22d440, win 0x7FE70;
	TodoReturn loadCustomLevelCell() = win 0x7D5A0, mac 0x22dcd0;
	LevelCell(char const*, float, float);

	virtual bool init() = mac 0x22d410;
	virtual void draw() = mac 0x230580;

	CCMenuItemSpriteExtra* m_button;
	GJGameLevel* m_level;
	bool m_cellDrawn;
	CCMenuItemToggler* m_toggler;
	cocos2d::CCPoint m_point;
	cocos2d::CCMenu* m_mainMenu;
	bool m_compactView;
	int m_cellMode;
}

[[link(android)]]
class LevelPage : cocos2d::CCLayer, DialogDelegate {
	static LevelPage* create(GJGameLevel*) = mac 0x411890;

	bool init(GJGameLevel*) = mac 0x414730;
	~LevelPage();

	void onTheTower(cocos2d::CCObject* sender);
	void onMoreGames(cocos2d::CCObject* sender);
	void onSecretDoor(cocos2d::CCObject* sender);
	void onInfo(cocos2d::CCObject* sender) = win 0x267CB0, mac 0x4140c0;
	void onPlay(cocos2d::CCObject* sender) = mac 0x4139b0;

	TodoReturn addSecretCoin() = mac 0x413060;
	TodoReturn addSecretDoor();
	TodoReturn playCoinEffect();
	void updateDynamicPage(GJGameLevel*) = mac 0x411b30;
	TodoReturn playStep2();
	TodoReturn playStep3();

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x416a10;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x416b30;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x416b50;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x416b70;
	virtual void registerWithTouchDispatcher() = mac 0x416bb0;
	virtual TodoReturn dialogClosed(DialogLayer*) = mac 0x416760;

    void* m_unk;
    GJGameLevel* m_level;
}

[[link(android)]]
class NodePoint : cocos2d::CCObject {
	static NodePoint* create(cocos2d::CCPoint);

	bool init(cocos2d::CCPoint);
	~NodePoint();
}


[[link(android)]]
class PointNode : cocos2d::CCObject {
	static PointNode* create(cocos2d::CCPoint) = win 0x222760;

	bool init(cocos2d::CCPoint);
	~PointNode();
}
