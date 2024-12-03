[[link(win, android)]]
class cocos2d::CCEGLViewProtocol {
    CCEGLViewProtocol();
    virtual ~CCEGLViewProtocol();
    auto getViewPortRect() const = m1 0x45a684, imac 0x4fa5e0;
    auto getScaleX() const;
    auto getScaleY() const;

    virtual cocos2d::CCSize const& getFrameSize() const = m1 0x459d60, imac 0x4f9c70, ios 0x2e682c;
    virtual void setFrameSize(float, float) = m1 0x459d68, imac 0x4f9c80, ios 0x2e6834;
    virtual cocos2d::CCSize getVisibleSize() const = imac 0x4f9cc0, m1 0x459dac, ios 0x2e6878;
    virtual cocos2d::CCPoint getVisibleOrigin() const = imac 0x4f9d10, m1 0x459ddc, ios 0x2e68a8;
    virtual void setDesignResolutionSize(float, float, ResolutionPolicy) = imac 0x4f9b20, m1 0x459c40, ios 0x2e6710;
    virtual cocos2d::CCSize const& getDesignResolutionSize() const = m1 0x459d58, imac 0x4f9c60, ios 0x2e6824;
    virtual void setTouchDelegate(cocos2d::EGLTouchDelegate*) = m1 0x459e28, imac 0x4f9d80, ios 0x2e68f4;
    virtual void setViewPortInPoints(float, float, float, float) = m1 0x459e30, imac 0x4f9d90, ios 0x2e68fc;
    virtual void setScissorInPoints(float, float, float, float) = m1 0x459e5c, imac 0x4f9dd0, ios 0x2e6928;
    virtual bool isScissorEnabled() = m1 0x459e88, imac 0x4f9e10, ios 0x2e6954;
    virtual cocos2d::CCRect getScissorRect() = imac 0x4f9e30, m1 0x459ea8, ios 0x2e6974;
    virtual void setViewName(char const*) = imac 0x4f9ed0, m1 0x459f38, ios 0x2e6a04;
    virtual void pollInputEvents() = m1 0x45a69c, imac 0x4fa610, ios 0x2e701c;
}

[[link(win, android)]]
class cocos2d::CCEaseIn : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseIn* create(cocos2d::CCActionInterval*, float) = m1 0x45e024, imac 0x4fe910;

    // CCEaseIn(cocos2d::CCEaseIn const&);
    // CCEaseIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45e3dc, imac 0x4fe9d0, ios 0x26b144;
    virtual void update(float) = imac 0x4feae0, m1 0x45e4d4, ios 0x26b220;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x45e504, imac 0x4feb10, ios 0x26b250;
}

[[link(win, android)]]
class cocos2d::CCEaseOut : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseOut* create(cocos2d::CCActionInterval*, float) = m1 0x45e320, imac 0x4feb40;

    // CCEaseOut(cocos2d::CCEaseOut const&);
    // CCEaseOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45e5f8, imac 0x4fec00, ios 0x26b328;
    virtual void update(float) = imac 0x4fed10, m1 0x45e6f0, ios 0x26b404;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x45e728, imac 0x4fed40, ios 0x26b43c;
}

[[link(win, android)]]
class cocos2d::CCEaseInOut : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseInOut* create(cocos2d::CCActionInterval*, float) = m1 0x45e760, imac 0x4fed70;

    // CCEaseInOut(cocos2d::CCEaseInOut const&);
    // CCEaseInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45e81c, imac 0x4fee30, ios 0x26b514;
    virtual void update(float) = imac 0x4fef40, m1 0x45e914, ios 0x26b5f0;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4fefb0, m1 0x45e980, ios 0x26b65c;
}

[[link(win, android)]]
class cocos2d::CCEaseBackIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackIn* create(cocos2d::CCActionInterval*) = m1 0x46082c, imac 0x501240;

    // CCEaseBackIn(cocos2d::CCEaseBackIn const&);
    // CCEaseBackIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x460cac, imac 0x5012e0, ios 0x26c340;
    virtual void update(float) = imac 0x5013e0, m1 0x460d94, ios 0x26c408;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x460dc8, imac 0x501410, ios 0x26c434;
}

[[link(win, android)]]
class cocos2d::CCEaseBackOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackOut* create(cocos2d::CCActionInterval*) = m1 0x460c04, imac 0x501430;

    // CCEaseBackOut(cocos2d::CCEaseBackOut const&);
    // CCEaseBackOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x460e90, imac 0x5014d0, ios 0x26c4e4;
    virtual void update(float) = imac 0x5015d0, m1 0x460f78, ios 0x26c5ac;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x460fb8, imac 0x501610, ios 0x26c5e4;
}

[[link(win, android)]]
class cocos2d::CCEaseBounceOut : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceOut* create(cocos2d::CCActionInterval*) = imac 0x500c50;

    // CCEaseBounceOut(cocos2d::CCEaseBounceOut const&);
    // CCEaseBounceOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46061c, imac 0x500cf0, ios 0x26c19c;
    virtual void update(float) = imac 0x500df0, m1 0x460704, ios 0x26c264;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x500eb0, m1 0x46080c, ios 0x26c290;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticIn : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval*) = m1 0x45f804, imac 0x4ffe70;
    static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval*, float) = m1 0x45f814, imac 0x4ffe90;

    // CCEaseElasticIn(cocos2d::CCEaseElasticIn const&);
    // CCEaseElasticIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45f8d0, imac 0x4fff50, ios 0x26bac0;
    virtual void update(float) = imac 0x500060, m1 0x45f9c8, ios 0x26bb9c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x500100, m1 0x45fa58, ios 0x26bc28;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticOut : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*) = m1 0x45fb44, imac 0x5001f0;
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*, float) = m1 0x45fa88, imac 0x500130;

    // CCEaseElasticOut(cocos2d::CCEaseElasticOut const&);
    // CCEaseElasticOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45fb54, imac 0x500210, ios 0x26bd04;
    virtual void update(float) = imac 0x500320, m1 0x45fc4c, ios 0x26bde0;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5003c0, m1 0x45fce4, ios 0x26be74;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialIn* create(cocos2d::CCActionInterval*) = m1 0x45e9b0, imac 0x4fefe0;

    // CCEaseExponentialIn(cocos2d::CCEaseExponentialIn const&);
    // CCEaseExponentialIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45ea58, imac 0x4ff080, ios 0x26b71c;
    virtual void update(float) = imac 0x4ff180, m1 0x45eb40, ios 0x26b7e4;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x45ebb4, imac 0x4ff1d0, ios 0x26b83c;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialInOut* create(cocos2d::CCActionInterval*) = m1 0x45ede8, imac 0x4ff400;

    // CCEaseExponentialInOut(cocos2d::CCEaseExponentialInOut const&);
    // CCEaseExponentialInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45ee90, imac 0x4ff4a0;
    virtual void update(float) = imac 0x4ff5a0, m1 0x45ef78;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4ff610, m1 0x45efe4;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialOut* create(cocos2d::CCActionInterval*) = m1 0x45ebd4, imac 0x4ff1f0;

    // CCEaseExponentialOut(cocos2d::CCEaseExponentialOut const&);
    // CCEaseExponentialOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45ec7c, imac 0x4ff290, ios 0x26b8ec;
    virtual void update(float) = imac 0x4ff390, m1 0x45ed64, ios 0x26b9b4;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4ff3e0, m1 0x45edc8, ios 0x26ba00;
}

[[link(win, android)]]
class cocos2d::CCEaseSineIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineIn* create(cocos2d::CCActionInterval*) = m1 0x45f004, imac 0x4ff630;

    // CCEaseSineIn(cocos2d::CCEaseSineIn const&);
    // CCEaseSineIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45f0ac, imac 0x4ff6d0;
    virtual void update(float) = m1 0x45f194, imac 0x4ff7d0;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x45f1d8, imac 0x4ff810;
}

[[link(win, android)]]
class cocos2d::CCEaseSineOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineOut* create(cocos2d::CCActionInterval*) = imac 0x4ff830, m1 0x45f1f8;

    // CCEaseSineOut(cocos2d::CCEaseSineOut const&);
    // CCEaseSineOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45f2a0, imac 0x4ff8d0;
    virtual void update(float) = m1 0x45f388, imac 0x4ff9d0;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x45f3c4, imac 0x4ffa00;
}

[[link(win, android)]]
class cocos2d::CCEaseSineInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineInOut* create(cocos2d::CCActionInterval*) = m1 0x45f3e4, imac 0x4ffa20;

    // CCEaseSineInOut(cocos2d::CCEaseSineInOut const&);
    // CCEaseSineInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45f48c, imac 0x4ffac0;
    virtual void update(float) = m1 0x45f574, imac 0x4ffbc0;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4ffc00, m1 0x45f5c0;
}

[[link(win, android)]]
class cocos2d::CCMotionStreak : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::_ccColor3B const&, cocos2d::CCTexture2D*) = imac 0x55f3e0;
    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::_ccColor3B const&, char const*) = imac 0x55f3e0;

    bool initWithFade(float, float, float, cocos2d::_ccColor3B const&, cocos2d::CCTexture2D*) = imac 0x55f530, m1 0x4b5ffc;
    bool initWithFade(float, float, float, cocos2d::_ccColor3B const&, char const*) = imac 0x55f530, m1 0x4b5ffc;

    bool getDontOpacityFade() const;
    float getM_fMaxSeg() const {
    	return m_fMaxSeg;
    }

    void setDontOpacityFade(bool);
    void setFastMode(bool);
    void setM_fMaxSeg(float maxSeg) {
    	m_fMaxSeg = maxSeg;
    }
    void setStartingPositionInitialized(bool);
    void setStroke(float);

    // CCMotionStreak(cocos2d::CCMotionStreak const&);
    CCMotionStreak() = imac inline, m1 0x4b5cf4 {
    	m_bFastMode = false;
    	m_bStartingPositionInitialized = false;
    	m_pTexture = nullptr;
    	m_fStroke = 0.0f;
    	m_fFadeDelta = 0.0f;
    	m_fMinSeg = 0.0f;
    	m_uMaxPoints = 0;
    	m_uNuPoints = 0;
    	m_uPreviousNuPoints = 0;
    	m_pPointVertexes = nullptr;
    	m_pPointState = nullptr;
    	m_pColorPointer = nullptr;
    	m_pTexCoords = nullptr;

    	m_bRepeatMode = false;
    	m_fRepeatSpeed = 1.0f;
    	m_fRepeatTime = 0.0f;
    	m_bDontOpacityFade = false;
    	m_tPositionR = cocos2d::CCPointZero;

    	m_tBlendFunc.src = GL_SRC_ALPHA;
    	m_tBlendFunc.dst = GL_ONE_MINUS_SRC_ALPHA;
    }

    void enableRepeatMode(float);
    bool isFastMode();
    bool isStartingPositionInitialized();
    void reset() = imac 0x560190;
    void resumeStroke() = m1 0x4b6510, imac 0x55fb40;
    void stopStroke() = m1 0x4b6508, imac 0x55fb30;
    void tintWithColor(cocos2d::_ccColor3B);
    void updateFade(float) = imac 0x55fb10;

    ~CCMotionStreak() = imac 0x55f3b0, m1 0x4b5e2c;

    virtual void update(float) = imac 0x55fb50, m1 0x4b651c, ios 0x17a624;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x55f8b0, m1 0x4b6324, ios 0x17a4f4;
    virtual void draw() = imac 0x5601b0, m1 0x4b6c54, ios 0x17ab0c;

    virtual unsigned char getOpacity() = m1 0x4b6484, imac 0x55fa60, ios 0x17a58c;
    virtual void setOpacity(unsigned char) = m1 0x4b647c, imac 0x55fa40, ios 0x17a584;
    virtual void setOpacityModifyRGB(bool) = m1 0x4b6494, imac 0x55fa80, ios 0x17a59c;
    virtual bool isOpacityModifyRGB() = m1 0x4b649c, imac 0x55faa0, ios 0x17a5a4;

    virtual void setBlendFunc(cocos2d::_ccBlendFunc) = m1 0x4b645c, imac 0x55fa00, ios 0x17a564;
    virtual cocos2d::_ccBlendFunc getBlendFunc() = m1 0x4b646c, imac 0x55fa20, ios 0x17a574;
    virtual cocos2d::CCTexture2D* getTexture() = m1 0x4b63bc, imac 0x55f950, ios 0x17a504;
    virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x4b63cc, imac 0x55f970, ios 0x17a514;
}

[[link(win, android)]]
class cocos2d::CCMoveBy : cocos2d::CCActionInterval {
    static cocos2d::CCMoveBy* create(float, cocos2d::CCPoint const&) = imac 0x3a5080, m1 0x331aa8;

    bool initWithDuration(float, cocos2d::CCPoint const&);

    // CCMoveBy(cocos2d::CCMoveBy const&);
    // CCMoveBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a51c0, m1 0x331bc4, ios 0x18ee00;
    virtual void update(float) = imac 0x3a53c0, m1 0x331d8c, ios 0x18efb4;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x331cf4, imac 0x3a5320, ios 0x18ef1c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a5370, m1 0x331d48, ios 0x18ef70;
}

[[link(win, android)]]
class cocos2d::CCMoveTo : cocos2d::CCMoveBy {
    static cocos2d::CCMoveTo* create(float, cocos2d::CCPoint const&) = imac 0x3a5490, m1 0x331e58;

    bool initWithDuration(float, cocos2d::CCPoint const&);

    // CCMoveTo(cocos2d::CCMoveTo const&);
    // CCMoveTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a55e0, m1 0x331f78, ios 0x18f160;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3320bc, imac 0x3a5750, ios 0x18f290;
}

[[link(win, android)]]
class cocos2d::CCRemoveSelf : cocos2d::CCActionInstant {
    static cocos2d::CCRemoveSelf* create(bool) = m1 0x6a9d38, imac 0x796bc0;

    bool init(bool);

    // CCRemoveSelf(cocos2d::CCRemoveSelf const&);
    // CCRemoveSelf();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x796cb0, m1 0x6a9e1c;
    virtual void update(float) = imac 0x796c30, m1 0x6a9da4;
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x796c50, m1 0x6a9dbc;
}

[[link(win, android)]]
class cocos2d::CCScaleBy : cocos2d::CCScaleTo {
    static cocos2d::CCScaleBy* create(float, float) = imac 0x3a7430, m1 0x3339d0;
    static cocos2d::CCScaleBy* create(float, float, float);

    // CCScaleBy(cocos2d::CCScaleBy const&);
    // CCScaleBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x333b0c, imac 0x3a75c0;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x333c04, imac 0x3a76d0;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x333c74, imac 0x3a7730;
}

[[link(win, android)]]
class cocos2d::CCScaleTo : cocos2d::CCActionInterval {
    static cocos2d::CCScaleTo* create(float, float) = m1 0x333670, imac 0x3a7040;
    static cocos2d::CCScaleTo* create(float, float, float) = m1 0x333730, imac 0x3a7140;

    bool initWithDuration(float, float);
    bool initWithDuration(float, float, float);

    // CCScaleTo(cocos2d::CCScaleTo const&);
    // CCScaleTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x3337fc, imac 0x3a7250, ios 0x18fb38;
    virtual void update(float) = imac 0x3a73d0, m1 0x333960, ios 0x18fc90;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3338f4, imac 0x3a7360, ios 0x18fc24;
}

[[link(win, android)]]
class cocos2d::CCTintTo : cocos2d::CCActionInterval {
    static cocos2d::CCTintTo* create(float, unsigned char, unsigned char, unsigned char) = imac 0x3a83a0, m1 0x3347a0;

    bool initWithDuration(float, unsigned char, unsigned char, unsigned char);

    // CCTintTo(cocos2d::CCTintTo const&);
    // CCTintTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a84c0, m1 0x33487c, ios 0x190604;
    virtual void update(float) = imac 0x3a8630, m1 0x3349e4, ios 0x190760;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x334978, imac 0x3a85d0, ios 0x1906f4;
}

[[link(win, android)]]
class cocos2d::CCAction : cocos2d::CCObject {
    static cocos2d::CCAction* create();

    cocos2d::CCNode* getOriginalTarget();
    float getSpeedMod() const;
    int getTag();
    cocos2d::CCNode* getTarget();

    void setOriginalTarget(cocos2d::CCNode*);
    void setSpeedMod(float);
    void setTarget(cocos2d::CCNode*);

    // CCAction(cocos2d::CCAction const&);
    CCAction() = m1 0x50f94c, imac 0x5dc9c0;
    ~CCAction() = m1 0x50f9bc, imac 0x5dca60;
    char const* description() = imac 0x5dcb10, m1 0x50fa50;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5dcb30, m1 0x50fa7c, ios 0x264878;
    virtual void update(float) = m1 0x50fb64, imac 0x5dcc30, ios 0x264944;
    //virtual void setTag(int) = m1 0x1b6e5c, imac 0x205680;
    virtual bool isDone() = m1 0x50fb58, imac 0x5dcc10, ios 0x264938;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x5dcbf0, m1 0x50fb48, ios 0x264928;
    virtual void stop() = m1 0x50fb50, imac 0x5dcc00, ios 0x264930;
    virtual void step(float) = m1 0x50fb60, imac 0x5dcc20, ios 0x264940;
}

[[link(win, android)]]
class cocos2d::CCScene : cocos2d::CCNode {
    static cocos2d::CCScene* create() = imac 0x27eef0, m1 0x2288ec;

    int getHighestChildZ() = imac 0x27efb0, m1 0x2289cc;

    // CCScene(cocos2d::CCScene const&);
    // CCScene() = ios 0x2508a4;
    ~CCScene() = imac 0x27ee70, m1 0x22887c;

    virtual bool init() = m1 0x228894, imac 0x27eea0, ios 0x2401c0;
}

[[link(win, android)]]
class cocos2d::CCSet : cocos2d::CCObject {
    static cocos2d::CCSet* create();

    //CCSet(cocos2d::CCSet const&) = imac 0x79df40, m1 0x6b0448;
    CCSet() = imac 0x79def0, m1 0x6b03e8;
    ~CCSet() = imac 0x79e050, m1 0x6b0560;
    void addObject(cocos2d::CCObject*) = imac 0x79e300, m1 0x6b07f0;
    cocos2d::CCObject* anyObject() = imac 0x79e4d0, m1 0x6b09ec;
    cocos2d::CCSetIterator begin() = imac 0x79e4b0, m1 0x6b09d4;
    bool containsObject(cocos2d::CCObject*) = imac 0x79e460, m1 0x6b0984;
    cocos2d::CCSet* copy();
    int count() = imac 0x79e2f0, m1 0x6b07e4;
    cocos2d::CCSetIterator end() = imac 0x79e4c0, m1 0x6b09e0;
    cocos2d::CCSet* mutableCopy() = imac 0x79e2b0, m1 0x6b079c;
    void removeAllObjects();
    void removeObject(cocos2d::CCObject*) = imac 0x79e3b0;

    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = m1 0x6b06b4, imac 0x79e1c0, ios 0x1af8cc;
}

[[link(win, android)]]
class cocos2d::CCShaderCache : cocos2d::CCObject {
    static void purgeSharedShaderCache();
    static cocos2d::CCShaderCache* sharedShaderCache() = imac 0x1f0310, m1 0x1a6b00;

    bool init();

    // CCShaderCache(cocos2d::CCShaderCache const&);
    // CCShaderCache();
    void addProgram(cocos2d::CCGLProgram*, char const*);
    void loadDefaultShader(cocos2d::CCGLProgram*, int) = imac 0x1f0c90, m1 0x1a74ac;
    void loadDefaultShaders() = imac 0x1f0550, m1 0x1a6d1c;
    cocos2d::CCGLProgram* programForKey(char const*) = m1 0x1a7a58, imac 0x1f11f0;
    void reloadDefaultShaders();
}

[[link(win, android)]]
class cocos2d::CCParticleSystem : cocos2d::CCNode, cocos2d::CCTextureProtocol {
    static cocos2d::CCParticleSystem* create(char const*) = imac 0x7b1480, m1 0x6c2654;
    static cocos2d::CCParticleSystem* createWithTotalParticles(unsigned int);

    void initParticle(cocos2d::sCCParticle*) = imac 0x7b3670, m1 0x6c4620;
    bool initWithDictionary(cocos2d::CCDictionary*, char const*, bool) = imac 0x7b1800, m1 0x6c29f0;
    bool initWithDictionary(cocos2d::CCDictionary*, bool) = imac 0x7b31f0, m1 0x6c425c;
    bool initWithFile(char const*, bool) = m1 0x6c26d8;

    unsigned int getAtlasIndex() const;
    bool getDontCleanupOnFinish() const;
    bool getDynamicRotationIsDir() const;
    bool getEndRGBVarSync() const;
    float getFadeInTime() const;
    float getFadeInTimeVar() const;
    float getFadeOutTime() const;
    float getFadeOutTimeVar() const;
    float getFrictionPos() const;
    float getFrictionPosVar() const;
    float getFrictionRot() const;
    float getFrictionRotVar() const;
    float getFrictionSize() const;
    float getFrictionSizeVar() const;
    bool getOrderSensitive() const;
    float getRespawn() const;
    float getRespawnVar() const;
    bool getStartRGBVarSync() const;
    bool getStartRadiusEqualToEnd() const;
    bool getStartSizeEqualToEnd() const;
    bool getStartSpinEqualToEnd() const;
    float getTimeElapsed();
    bool getUseUniformColorMode() const;
    bool getUsingSchedule() const;
    bool getWasRemoved() const;

    void setAtlasIndex(unsigned int);
    void setDontCleanupOnFinish(bool);
    void setDynamicRotationIsDir(bool);
    void setEndAlpha(float);
    void setEndRGBVarSync(bool);
    void setFadeInTime(float);
    void setFadeInTimeVar(float);
    void setFadeOutTime(float);
    void setFadeOutTimeVar(float);
    void setFrictionPos(float);
    void setFrictionPosVar(float);
    void setFrictionRot(float);
    void setFrictionRotVar(float);
    void setFrictionSize(float);
    void setFrictionSizeVar(float);
    void setOrderSensitive(bool);
    void setRespawn(float);
    void setRespawnVar(float);
    void setStartAlpha(float);
    void setStartRGBVarSync(bool);
    void setStartRadiusEqualToEnd(bool);
    void setStartSizeEqualToEnd(bool);
    void setStartSpinEqualToEnd(bool);
    void setUsingSchedule(bool);
    void setWasRemoved(bool);

    // CCParticleSystem(cocos2d::CCParticleSystem const&);
    // CCParticleSystem();
    ~CCParticleSystem() = m1 0x6c44c4, imac 0x7b34f0;
    bool addParticle();
    void calculateWorldSpace();
    bool isFull();
    void loadDefaults();
    void loadScaledDefaults(float) = imac 0x7b60e0;
    void resetSystem() = imac 0x7b4740, m1 0x6c5358;
    void resumeSystem();
    void saveDefaults();
    void stopSystem() = imac 0x7b4700, m1 0x6c5338;
    void toggleUniformColorMode(bool);
    void updateVisible();

    virtual void update(float) = imac 0x7b48f0, m1 0x6c549c, ios 0x198ae8;
    virtual bool init() = imac 0x7b17e0, m1 0x6c29dc, ios 0x196af8;
    virtual void setScaleX(float) = m1 0x6c6620, imac 0x7b6010, ios 0x199aa0;
    virtual void setScaleY(float) = m1 0x6c662c, imac 0x7b6030, ios 0x199aac;
    virtual void setScale(float) = m1 0x6c6608, imac 0x7b5fd0, ios 0x199a88;
    virtual void setVisible(bool) = imac 0x7b58e0, m1 0x6c622c, ios 0x199700;
    virtual void setRotation(float) = m1 0x6c6614, imac 0x7b5ff0, ios 0x199a94;
    virtual cocos2d::CCParticleBatchNode* getBatchNode() = m1 0x6c6570, imac 0x7b5ef0, ios 0x199a44;
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = imac 0x7b5f00, m1 0x6c6578, ios 0x199a4c;
    virtual unsigned int getParticleCount() = m1 0x6c6338, imac 0x7b5af0, ios 0x19980c;
    virtual float getDuration() = m1 0x6c6340, imac 0x7b5b00, ios 0x199814;
    virtual void setDuration(float) = m1 0x6c6348, imac 0x7b5b10, ios 0x19981c;
    virtual cocos2d::CCPoint const& getSourcePosition() = m1 0x6c6350, imac 0x7b5b20, ios 0x199824;
    virtual void setSourcePosition(cocos2d::CCPoint const&) = imac 0x7b5b30, m1 0x6c6358, ios 0x19982c;
    virtual cocos2d::CCPoint const& getPosVar() = m1 0x6c6360, imac 0x7b5b50, ios 0x199834;
    virtual void setPosVar(cocos2d::CCPoint const&) = imac 0x7b5b60, m1 0x6c6368, ios 0x19983c;
    virtual float getLife() = m1 0x6c6370, imac 0x7b5b80, ios 0x199844;
    virtual void setLife(float) = m1 0x6c6378, imac 0x7b5b90, ios 0x19984c;
    virtual float getLifeVar() = m1 0x6c6380, imac 0x7b5ba0, ios 0x199854;
    virtual void setLifeVar(float) = m1 0x6c6388, imac 0x7b5bb0, ios 0x19985c;
    virtual float getAngle() = m1 0x6c6390, imac 0x7b5bc0, ios 0x199864;
    virtual void setAngle(float) = m1 0x6c6398, imac 0x7b5bd0, ios 0x19986c;
    virtual float getAngleVar() = m1 0x6c63a0, imac 0x7b5be0, ios 0x199874;
    virtual void setAngleVar(float) = m1 0x6c63a8, imac 0x7b5bf0, ios 0x19987c;
    virtual void updateEmissionRate() = imac 0x7b3410, m1 0x6c4420, ios 0x197d08;
    virtual cocos2d::CCPoint const& getGravity() = m1 0x6c62a8, imac 0x7b59d0, ios 0x19977c;
    virtual void setGravity(cocos2d::CCPoint const&) = imac 0x7b59b0, m1 0x6c62a0, ios 0x199774;
    virtual float getSpeed() = m1 0x6c62b8, imac 0x7b59f0, ios 0x19978c;
    virtual void setSpeed(float) = m1 0x6c62b0, imac 0x7b59e0, ios 0x199784;
    virtual float getSpeedVar() = m1 0x6c62c8, imac 0x7b5a10, ios 0x19979c;
    virtual void setSpeedVar(float) = m1 0x6c62c0, imac 0x7b5a00, ios 0x199794;
    virtual float getTangentialAccel() = m1 0x6c6258, imac 0x7b5920, ios 0x19972c;
    virtual void setTangentialAccel(float) = m1 0x6c6250, imac 0x7b5910, ios 0x199724;
    virtual float getTangentialAccelVar() = m1 0x6c6268, imac 0x7b5940, ios 0x19973c;
    virtual void setTangentialAccelVar(float) = m1 0x6c6260, imac 0x7b5930, ios 0x199734;
    virtual float getRadialAccel() = m1 0x6c6278, imac 0x7b5960, ios 0x19974c;
    virtual void setRadialAccel(float) = m1 0x6c6270, imac 0x7b5950, ios 0x199744;
    virtual float getRadialAccelVar() = m1 0x6c6288, imac 0x7b5980, ios 0x19975c;
    virtual void setRadialAccelVar(float) = m1 0x6c6280, imac 0x7b5970, ios 0x199754;
    virtual bool getRotationIsDir() = m1 0x6c6298, imac 0x7b59a0, ios 0x19976c;
    virtual void setRotationIsDir(bool) = m1 0x6c6290, imac 0x7b5990, ios 0x199764;
    virtual float getStartRadius() = m1 0x6c62d8, imac 0x7b5a30, ios 0x1997ac;
    virtual void setStartRadius(float) = m1 0x6c62d0, imac 0x7b5a20, ios 0x1997a4;
    virtual float getStartRadiusVar() = m1 0x6c62e8, imac 0x7b5a50, ios 0x1997bc;
    virtual void setStartRadiusVar(float) = m1 0x6c62e0, imac 0x7b5a40, ios 0x1997b4;
    virtual float getEndRadius() = m1 0x6c62f8, imac 0x7b5a70, ios 0x1997cc;
    virtual void setEndRadius(float) = m1 0x6c62f0, imac 0x7b5a60, ios 0x1997c4;
    virtual float getEndRadiusVar() = m1 0x6c6308, imac 0x7b5a90, ios 0x1997dc;
    virtual void setEndRadiusVar(float) = m1 0x6c6300, imac 0x7b5a80, ios 0x1997d4;
    virtual float getRotatePerSecond() = m1 0x6c6318, imac 0x7b5ab0, ios 0x1997ec;
    virtual void setRotatePerSecond(float) = m1 0x6c6310, imac 0x7b5aa0, ios 0x1997e4;
    virtual float getRotatePerSecondVar() = m1 0x6c6328, imac 0x7b5ad0, ios 0x1997fc;
    virtual void setRotatePerSecondVar(float) = m1 0x6c6320, imac 0x7b5ac0, ios 0x1997f4;
    virtual bool isActive() = m1 0x6c6330, imac 0x7b5ae0, ios 0x199804;
    virtual bool isBlendAdditive() = imac 0x7b58c0, m1 0x6c6208, ios 0x1996dc;
    virtual void setBlendAdditive(bool) = imac 0x7b5870, m1 0x6c619c, ios 0x199688;
    virtual float getStartSize() = m1 0x6c63b0, imac 0x7b5c00, ios 0x199884;
    virtual void setStartSize(float) = m1 0x6c63b8, imac 0x7b5c10, ios 0x19988c;
    virtual float getStartSizeVar() = m1 0x6c63c0, imac 0x7b5c20, ios 0x199894;
    virtual void setStartSizeVar(float) = m1 0x6c63c8, imac 0x7b5c30, ios 0x19989c;
    virtual float getEndSize() = m1 0x6c63d0, imac 0x7b5c40, ios 0x1998a4;
    virtual void setEndSize(float) = m1 0x6c63d8, imac 0x7b5c50, ios 0x1998ac;
    virtual float getEndSizeVar() = m1 0x6c63e0, imac 0x7b5c60, ios 0x1998b4;
    virtual void setEndSizeVar(float) = m1 0x6c63e8, imac 0x7b5c70, ios 0x1998bc;
    virtual cocos2d::_ccColor4F const& getStartColor() = m1 0x6c63f0, imac 0x7b5c80, ios 0x1998c4;
    virtual void setStartColor(cocos2d::_ccColor4F const&) = m1 0x6c63f8, imac 0x7b5c90, ios 0x1998cc;
    virtual cocos2d::_ccColor4F const& getStartColorVar() = m1 0x6c6408, imac 0x7b5ca0, ios 0x1998dc;
    virtual void setStartColorVar(cocos2d::_ccColor4F const&) = m1 0x6c6410, imac 0x7b5cb0, ios 0x1998e4;
    virtual cocos2d::_ccColor4F const& getEndColor() = m1 0x6c6420, imac 0x7b5cc0, ios 0x1998f4;
    virtual void setEndColor(cocos2d::_ccColor4F const&) = m1 0x6c6428, imac 0x7b5cd0, ios 0x1998fc;
    virtual cocos2d::_ccColor4F const& getEndColorVar() = m1 0x6c6438, imac 0x7b5ce0, ios 0x19990c;
    virtual void setEndColorVar(cocos2d::_ccColor4F const&) = m1 0x6c6440, imac 0x7b5cf0, ios 0x199914;
    virtual float getStartSpin() = m1 0x6c6450, imac 0x7b5d00, ios 0x199924;
    virtual void setStartSpin(float) = m1 0x6c6458, imac 0x7b5d10, ios 0x19992c;
    virtual float getStartSpinVar() = m1 0x6c6460, imac 0x7b5d20, ios 0x199934;
    virtual void setStartSpinVar(float) = m1 0x6c6468, imac 0x7b5d30, ios 0x19993c;
    virtual float getEndSpin() = m1 0x6c6470, imac 0x7b5d40, ios 0x199944;
    virtual void setEndSpin(float) = m1 0x6c6478, imac 0x7b5d50, ios 0x19994c;
    virtual float getEndSpinVar() = m1 0x6c6480, imac 0x7b5d60, ios 0x199954;
    virtual void setEndSpinVar(float) = m1 0x6c6488, imac 0x7b5d70, ios 0x19995c;
    virtual float getEmissionRate() = m1 0x6c6490, imac 0x7b5d80, ios 0x199964;
    virtual void setEmissionRate(float) = m1 0x6c6498, imac 0x7b5d90, ios 0x19996c;
    virtual unsigned int getTotalParticles() = m1 0x6c64a0, imac 0x7b5da0, ios 0x199974;
    virtual void setTotalParticles(unsigned int) = m1 0x6c64a8, imac 0x7b5db0, ios 0x19997c;
    virtual bool getOpacityModifyRGB() = m1 0x6c6530, imac 0x7b5e70, ios 0x199a04;
    virtual void setOpacityModifyRGB(bool) = m1 0x6c6538, imac 0x7b5e80, ios 0x199a0c;
    virtual cocos2d::tCCPositionType getPositionType() = m1 0x6c6540, imac 0x7b5e90, ios 0x199a14;
    virtual void setPositionType(cocos2d::tCCPositionType) = m1 0x6c6548, imac 0x7b5ea0, ios 0x199a1c;
    virtual bool isAutoRemoveOnFinish() = m1 0x6c6550, imac 0x7b5eb0, ios 0x199a24;
    virtual void setAutoRemoveOnFinish(bool) = m1 0x6c6558, imac 0x7b5ec0, ios 0x199a2c;
    virtual int getEmitterMode() = m1 0x6c6560, imac 0x7b5ed0, ios 0x199a34;
    virtual void setEmitterMode(int) = m1 0x6c6568, imac 0x7b5ee0, ios 0x199a3c;
    virtual bool initWithTotalParticles(unsigned int, bool) = imac 0x7b32a0, m1 0x6c42f0, ios 0x197c2c;
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&) = m1 0x6c6044, imac 0x7b56f0, ios 0x1995a0;
    virtual void postStep() = m1 0x6c6048, imac 0x7b5700, ios 0x1995a4;
    virtual void updateWithNoTime() = imac 0x7b56d0, m1 0x6c6034, ios 0x199590;
    virtual void updateBlendFunc() = m1 0x6c611c, imac 0x7b57e0, ios 0x199610;

    virtual void setBlendFunc(cocos2d::_ccBlendFunc) = imac 0x7b5de0, m1 0x6c64c0, ios 0x199994;
    virtual cocos2d::_ccBlendFunc getBlendFunc() = m1 0x6c64b0, imac 0x7b5dc0, ios 0x199984;
    virtual cocos2d::CCTexture2D* getTexture() = m1 0x6c618c, imac 0x7b5850, ios 0x199678;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x7b5710, m1 0x6c604c, ios 0x1995a8;
}

[[link(win, android)]]
class cocos2d::CCParticleFire : cocos2d::CCParticleSystemQuad {
	static cocos2d::CCParticleFire* create() = m1 0x3e0d34, imac 0x472260;
	static cocos2d::CCParticleFire* createWithTotalParticles(unsigned int) = m1 0x3e0dc4, imac 0x4722e0;

	// CCParticleFire(cocos2d::CCParticleFire const&);
	// CCParticleFire();

	// virtual bool init();
	// virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleRain : cocos2d::CCParticleSystemQuad {
	static cocos2d::CCParticleRain* create() = m1 0x3e2b18, imac 0x473f00;
	static cocos2d::CCParticleRain* createWithTotalParticles(unsigned int) = m1 0x3e2ba8, imac 0x473f80;

	// CCParticleRain(cocos2d::CCParticleRain const&);
	// CCParticleRain();

	// virtual bool init();
	// virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleSnow : cocos2d::CCParticleSystemQuad {
	static cocos2d::CCParticleSnow* create() = imac 0x473c10;
	static cocos2d::CCParticleSnow* createWithTotalParticles(unsigned int) = imac 0x473c90, m1 0x3e28a0;

	// CCParticleSnow(cocos2d::CCParticleSnow const&);
	// CCParticleSnow();

	// virtual bool init() = m1 0x3e2ea8, imac 0x4742d0;
	virtual bool initWithTotalParticles(unsigned int) = m1 0x3e2934, imac 0x473d10;
}

[[link(win, android)]]
class cocos2d::CCParticleSystemQuad : cocos2d::CCParticleSystem {
    static cocos2d::CCParticleSystemQuad* create(char const*, bool) = imac 0x5eb190, m1 0x51c418;
    static cocos2d::CCParticleSystemQuad* create() = m1 0x51d1bc, imac 0x5ec500;
    static cocos2d::CCParticleSystemQuad* createWithTotalParticles(unsigned int, bool) = m1 0x51c500, imac 0x5eb270;

    void initIndices();
    void initTexCoordsWithRect(cocos2d::CCRect const&) = imac 0x5eb360, m1 0x51c5f0;

    unsigned char getOpacity();

    void setDisplayFrame(cocos2d::CCSpriteFrame*);
    void setOpacity(unsigned char);
    void setTextureWithRect(cocos2d::CCTexture2D*, cocos2d::CCRect const&);

    // CCParticleSystemQuad(cocos2d::CCParticleSystemQuad const&);
    // CCParticleSystemQuad();
    ~CCParticleSystemQuad() = imac 0x5eb0b0, m1 0x51c380;
    bool allocMemory() = imac 0x5eaa60, m1 0x51c000;
    void listenBackToForeground(cocos2d::CCObject*);
    [[missing(mac, ios)]]
    void setupVBO();
    [[missing(win, android)]]
    void setupVBOandVAO() = imac 0x5eae40, m1 0x51c154;
    void updateTexCoords();

    virtual void draw() = imac 0x5ebb00, m1 0x51cd6c, ios 0x25312c;
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = imac 0x5ec0e0, m1 0x51d040, ios 0x253348;
    virtual void setTotalParticles(unsigned int) = imac 0x5ebbc0, m1 0x51ce30, ios 0x2531f0;
    virtual bool initWithTotalParticles(unsigned int, bool) = m1 0x51bf1c, imac 0x5ea710, ios 0x252690;
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&) = imac 0x5eb760, m1 0x51ca54, ios 0x252e24;
    virtual void postStep() = imac 0x5ebab0, m1 0x51cd20, ios 0x2530e0;

    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x5eb5b0, m1 0x51c86c, ios 0x252d6c;
}

[[link(win, android)]]
class cocos2d::CCProgressTimer : cocos2d::CCNodeRGBA {
    static cocos2d::CCProgressTimer* create(cocos2d::CCSprite*) = imac 0x5ec770, m1 0x51d3fc;

    bool initWithSprite(cocos2d::CCSprite*);

    cocos2d::CCPoint getBarChangeRate() const;
    float getPercentage();
    // cocos2d::CCSprite* getSprite();
    cocos2d::CCProgressTimerType getType();

    void setAnchorPoint(cocos2d::CCPoint);
    void setBarChangeRate(cocos2d::CCPoint);
    void setPercentage(float) = imac 0x5ec9f0, m1 0x51d61c;
    void setReverseDirection(bool);
    void setReverseProgress(bool);
    void setSprite(cocos2d::CCSprite*) = imac 0x5eca70, m1 0x51d68c;
    void setType(cocos2d::CCProgressTimerType) = imac 0x5ecc80, m1 0x51d828;

    // CCProgressTimer(cocos2d::CCProgressTimer const&);
    // CCProgressTimer() = ios 0x405f18;

    cocos2d::CCPoint boundaryTexCoord(char);
    bool isReverseDirection();
    cocos2d::_ccTex2F textureCoordFromAlphaPoint(cocos2d::CCPoint);
    void updateBar();
    void updateColor();
    void updateProgress();
    void updateRadial();
    cocos2d::_ccVertex2F vertexFromAlphaPoint(cocos2d::CCPoint);

    virtual cocos2d::_ccColor3B const& getColor() const = m1 0x51d9d4, imac 0x5ece50, ios 0x3f5874;
    virtual unsigned char getOpacity() const = m1 0x51dac4, imac 0x5ecf50, ios 0x3f58e4;
    virtual void draw() = imac 0x5eeda0, m1 0x51f054, ios 0x3f636c;
    virtual cocos2d::CCPoint getMidpoint() = imac 0x5eec80, m1 0x51ef70, ios 0x3f6294;
    virtual void setMidpoint(cocos2d::CCPoint) = imac 0x5eeca0, m1 0x51ef7c, ios 0x3f62a0;

    virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x51d8ac, imac 0x5ecd20, ios 0x3f57cc;
    virtual void setOpacity(unsigned char) = m1 0x51d9e4, imac 0x5ece70, ios 0x3f5884;
}

[[link(win, android)]]
class cocos2d::CCFadeIn : cocos2d::CCActionInterval {
    static cocos2d::CCFadeIn* create(float) = m1 0x334064, imac 0x3a7bb0;

    // CCFadeIn(cocos2d::CCFadeIn const&);
    // CCFadeIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a7c50, m1 0x3340f0, ios 0x19001c;
    virtual void update(float) = imac 0x3a7d20, m1 0x3341c4, ios 0x1900d4;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x334228, imac 0x3a7d80, ios 0x190138;
}

[[link(win, android)]]
class cocos2d::CCFadeOut : cocos2d::CCActionInterval {
    static cocos2d::CCFadeOut* create(float) = imac 0x3a7e30, m1 0x3342b4;

    // CCFadeOut(cocos2d::CCFadeOut const&);
    // CCFadeOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a7ed0, m1 0x334340, ios 0x1901cc;
    virtual void update(float) = imac 0x3a7fa0, m1 0x334414, ios 0x190284;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x334480, imac 0x3a8010, ios 0x1902f0;
}

[[link(win, android)]]
class cocos2d::CCFadeTo : cocos2d::CCActionInterval {
    static cocos2d::CCFadeTo* create(float, unsigned char) = imac 0x3a80c0, m1 0x33450c;

    bool initWithDuration(float, unsigned char);

    // CCFadeTo(cocos2d::CCFadeTo const&);
    // CCFadeTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a81b0, m1 0x3345c8, ios 0x19038c;
    virtual void update(float) = imac 0x3a8320, m1 0x334720, ios 0x1904d8;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3346bc, imac 0x3a82c0, ios 0x190474;
}

[[link(win, android)]]
class cocos2d::CCFileUtils : cocos2d::TypeInfo {
    // CCFileUtils(); // one of these two is 0x15bfa8
    // CCFileUtils(cocos2d::CCFileUtils const&);
    virtual void addSearchPath(char const*) = m1 0x3a42d4, imac 0x4294e0, ios 0x155a30;
    virtual void addSearchResolutionsOrder(char const*) = imac 0x428f30, m1 0x3a3d24, ios 0x155538;
    virtual gd::string addSuffix(gd::string, gd::string) = imac 0x4273f0, m1 0x3a21f4, ios 0x15459c;
    virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(gd::string const&) = m1 0x3a1a70, imac 0x426cf0, ios 0x153f80;
    virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(gd::string const&) = m1 0x3a1a60, imac 0x426cd0, ios 0x153f70;
    virtual gd::string fullPathForFilename(char const*, bool) = imac 0x427a70, m1 0x3a27f4, ios 0x1549ec;
    virtual char const* fullPathFromRelativeFile(char const*, char const*) = imac 0x428a50, m1 0x3a3828, ios 0x1550e0;
    gd::string getAndroidPath() const;
    virtual unsigned char* getFileData(char const*, char const*, unsigned long*) = imac 0x426fc0, m1 0x3a1d98, ios 0x15425c;
    virtual unsigned char* getFileDataFromZip(char const*, char const*, unsigned long*) = imac 0x427100, m1 0x3a1f04, ios 0x1543ac;
    virtual gd::string getFullPathForDirectoryAndFilename(gd::string const&, gd::string const&) = imac 0x429c50, m1 0x3a4c8c, ios 0x155f2c;
    virtual gd::string getNewFilename(char const*) = imac 0x427220, m1 0x3a203c, ios 0x1544d0;
    virtual gd::string getPathForFilename(gd::string const&, gd::string const&, gd::string const&) = imac 0x427630, m1 0x3a23fc, ios 0x1547a4;
    virtual gd::vector<gd::string> const& getSearchPaths() = m1 0x3a3e60, imac 0x429060, ios 0x1556a8;
    virtual gd::vector<gd::string> const& getSearchResolutionsOrder() = m1 0x3a3e58, imac 0x429050, ios 0x1556a0;
    virtual gd::string getWritablePath2() = imac 0x429d70, m1 0x3a4ec8, ios 0x156058;
    virtual bool init() = imac 0x426ea0, m1 0x3a1c38, ios 0x154090;
    virtual bool isAbsolutePath(gd::string const&) = imac 0x429cb0, m1 0x3a4e00, ios 0x155f9c;
    virtual bool isPopupNotify() = m1 0x3a4e2c, imac 0x429ce0, ios 0x155fc8;
    virtual void loadFilenameLookupDictionaryFromFile(char const*) = imac 0x429ae0, m1 0x3a4ab4, ios 0x155dbc;
    virtual void purgeCachedEntries() = imac 0x426f90, m1 0x3a1d68, ios 0x15422c;
    static void purgeFileUtils();
    void removeAllPaths();
    virtual void removeFullPath(char const*) = m1 0x3a35b8, imac 0x4288f0, ios 0x155044;
    virtual void removeSearchPath(char const*) = m1 0x3a45f4, imac 0x429700, ios 0x155bc4;
    void setAndroidPath(gd::string);
    virtual void setFilenameLookupDictionary(cocos2d::CCDictionary*) = imac 0x429a70, m1 0x3a4a4c, ios 0x155d54;
    virtual void setPopupNotify(bool) = imac 0x429cd0, m1 0x3a4e20, ios 0x155fbc;
    virtual void setSearchPaths(gd::vector<gd::string> const&) = imac 0x429070, m1 0x3a3e68, ios 0x1556b0;
    virtual void setSearchResolutionsOrder(gd::vector<gd::string> const&) = imac 0x428cb0, m1 0x3a3ab0, ios 0x15524c;
    static cocos2d::CCFileUtils* sharedFileUtils() = imac 0x5f4090, m1 0x523b94;
    virtual bool shouldUseHD() = imac 0x4273c0, m1 0x3a21d0, ios 0x154578;
    virtual bool writeToFile(cocos2d::CCDictionary*, gd::string const&) = m1 0x3a1a68, imac 0x426ce0, ios 0x153f78;
}

[[link(win, android)]]
class cocos2d::CCGLProgram : cocos2d::CCObject {
    bool initWithVertexShaderByteArray(char const*, char const*) = imac 0x417e60, m1 0x393990;
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
    void setUniformsForBuiltins() = imac 0x419200, m1 0x394f28;

    // CCGLProgram(cocos2d::CCGLProgram const&);
    ~CCGLProgram() = m1 0x3937f0, imac 0x417cb0;
    CCGLProgram() = m1 0x393770, imac 0x417c10;
    void addAttribute(char const*, unsigned int) = imac 0x4180e0, m1 0x393c30;
    bool compileShader(unsigned int*, unsigned int, char const*);
    char const* description() = imac 0x4180b0, m1 0x393bfc;
    char const* fragmentShaderLog();
    bool link() = m1 0x393dcc, imac 0x418250;
    // char const* logForOpenGLObject(unsigned int, void (__cdecl*)(unsigned int, unsigned int, int*), void (__cdecl*)(unsigned int, int, int*, char*));
    char const* programLog();
    void reset() = m1 0x3951e0, imac 0x419530;
    bool updateUniformLocation(int, void*, unsigned int);
    void updateUniforms() = imac 0x418100, m1 0x393c44;
    void use() = m1 0x393d70, imac 0x418200;
    char const* vertexShaderLog();
}

[[link(win, android)]]
class cocos2d::CCNode : cocos2d::CCObject {
    static cocos2d::CCNode* create() = m1 0x20cad4, imac 0x260d40;
    static void resetGlobalOrderOfArrival();

    // CCNode(cocos2d::CCNode const&);
    CCNode() = imac 0x260210, m1 0x20c1a8;
    ~CCNode() = imac 0x260520, m1 0x20c334;

    cocos2d::CCAction* getActionByTag(int) = imac 0x261ff0, m1 0x20dd80;
    cocos2d::CCComponent* getComponent(char const*) const;
    int getScriptHandler();
    cocos2d::CCAffineTransform getTransformTemp();
    bool getUseChildIndex();

    void setAdditionalTransform(cocos2d::CCAffineTransform const&);
    void setUseChildIndex(bool);

    cocos2d::CCRect boundingBox() = imac 0x260cd0, m1 0x20ca74;
    void childrenAlloc();
    cocos2d::CCPoint convertToNodeSpace(cocos2d::CCPoint const&) = imac 0x262c40, m1 0x20e94c;
    cocos2d::CCPoint convertToNodeSpaceAR(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertToWindowSpace(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertToWorldSpace(cocos2d::CCPoint const&) = imac 0x262c80, m1 0x20e994;
    cocos2d::CCPoint convertToWorldSpaceAR(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertTouchToNodeSpace(cocos2d::CCTouch*) = imac 0x262de0, m1 0x20eaf8;
    cocos2d::CCPoint convertTouchToNodeSpaceAR(cocos2d::CCTouch*);
    char const* description() = imac 0x260e70, m1 0x20cc04;
    void detachChild(cocos2d::CCNode*, bool);
    void insertChild(cocos2d::CCNode*, int);
    unsigned int numberOfRunningActions();
    void pauseSchedulerAndActions();
    void qsortAllChildrenWithIndex();
    void resumeSchedulerAndActions() = imac 0x261c50, m1 0x20da08;
    cocos2d::CCAction* runAction(cocos2d::CCAction*) = imac 0x261f80, m1 0x20dd34;
    void schedule(cocos2d::SEL_SCHEDULE) = imac 0x2621b0, m1 0x20dee8;
    void schedule(cocos2d::SEL_SCHEDULE, float) = imac 0x262210, m1 0x20df28;
    void schedule(cocos2d::SEL_SCHEDULE, float, unsigned int, float) = imac 0x2621e0;
    void scheduleOnce(cocos2d::SEL_SCHEDULE, float) = imac 0x262240, m1 0x20df48;
    void scheduleUpdate() = imac 0x262090, m1 0x20ddf0;
    void scheduleUpdateWithPriority(int) = imac 0x2620c0;
    void scheduleUpdateWithPriorityLua(int, int) = imac 0x2620f0;
    void sortAllChildrenNoIndex();
    void sortAllChildrenWithIndex();
    void stopAction(cocos2d::CCAction*) = m1 0x20dd6c, imac 0x261fb0;
    void stopActionByTag(int) = m1 0x20dd74, imac 0x261fd0;
    void stopAllActions() = imac 0x260e30, m1 0x20cbec;
    void transform();
    void transformAncestors();
    void unschedule(cocos2d::SEL_SCHEDULE) = imac 0x262270, m1 0x20df6c;
    void unscheduleAllSelectors() = imac 0x260e50;
    void unscheduleUpdate() = imac 0x262160, m1 0x20de9c;
    void updateChildIndexes();

    virtual void update(float) = imac 0x262290, m1 0x20df98, ios 0x23c36c;
    virtual bool init() = m1 0x20c484, imac 0x260550, ios 0x23adb0;
    virtual void setZOrder(int) = imac 0x2605e0, m1 0x20c4d4, ios 0x23ae00;
    virtual void _setZOrder(int) = m1 0x20c4cc, imac 0x2605d0, ios 0x23adf8;
    virtual int getZOrder() = m1 0x20c4c4, imac 0x2605c0, ios 0x23adf0;
    virtual void setVertexZ(float) = m1 0x20c52c, imac 0x260630, ios 0x23ae58;
    virtual float getVertexZ() = m1 0x20c524, imac 0x260620, ios 0x23ae50;
    virtual void setScaleX(float) = m1 0x20c5dc, imac 0x260750, ios 0x23af08;
    virtual float getScaleX() = m1 0x20c5d4, imac 0x260740, ios 0x23af00;
    virtual void setScaleY(float) = m1 0x20c5f8, imac 0x260780, ios 0x23af24;
    virtual float getScaleY() = m1 0x20c5f0, imac 0x260770, ios 0x23af1c;
    virtual void setScale(float) = imac 0x260700, m1 0x20c5ac, ios 0x23aed8;
    virtual float getScale() = m1 0x20c5a4, imac 0x2606f0, ios 0x23aed0;
    virtual void setScale(float, float) = imac 0x260720, m1 0x20c5c0, ios 0x23aeec;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x2607b0, m1 0x20c614, ios 0x23af40;
    virtual cocos2d::CCPoint const& getPosition() = m1 0x20c60c, imac 0x2607a0, ios 0x23af38;
    virtual void setPosition(float, float) = imac 0x2607f0, m1 0x20c640, ios 0x23af6c;
    virtual void getPosition(float*, float*) = imac 0x2607d0, m1 0x20c62c, ios 0x23af58;
    virtual void setPositionX(float) = imac 0x260850, m1 0x20c690, ios 0x23afbc;
    virtual float getPositionX() = m1 0x20c680, imac 0x260830, ios 0x23afac;
    virtual void setPositionY(float) = imac 0x260890, m1 0x20c6d4, ios 0x23b000;
    virtual float getPositionY() = m1 0x20c688, imac 0x260840, ios 0x23afb4;
    virtual void setSkewX(float) = m1 0x20c494, imac 0x260570, ios 0x23adc0;
    virtual float getSkewX() = m1 0x20c48c, imac 0x260560, ios 0x23adb8;
    virtual void setSkewY(float) = m1 0x20c4b0, imac 0x2605a0, ios 0x23addc;
    virtual float getSkewY() = m1 0x20c4a8, imac 0x260590, ios 0x23add4;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x260a20, m1 0x20c83c, ios 0x23b158;
    virtual cocos2d::CCPoint const& getAnchorPoint() = m1 0x20c834, imac 0x260a10, ios 0x23b150;
    virtual cocos2d::CCPoint const& getAnchorPointInPoints() = m1 0x20c82c, imac 0x260a00, ios 0x23b148;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x260ae0, m1 0x20c8fc, ios 0x23b218;
    virtual cocos2d::CCSize const& getContentSize() const = m1 0x20c8bc, imac 0x260aa0, ios 0x23b1d8;
    virtual cocos2d::CCSize getScaledContentSize() = imac 0x260ab0, m1 0x20c8c4, ios 0x23b1e0;
    virtual void setVisible(bool) = m1 0x20c824, imac 0x2609f0, ios 0x23b140;
    virtual bool isVisible() = m1 0x20c81c, imac 0x2609e0, ios 0x23b138;
    virtual void setRotation(float) = imac 0x260650, m1 0x20c53c, ios 0x23ae68;
    virtual float getRotation() = m1 0x20c534, imac 0x260640, ios 0x23ae60;
    virtual void setRotationX(float) = m1 0x20c574, imac 0x2606a0, ios 0x23aea0;
    virtual float getRotationX() = m1 0x20c56c, imac 0x260690, ios 0x23ae98;
    virtual void setRotationY(float) = m1 0x20c590, imac 0x2606d0, ios 0x23aebc;
    virtual float getRotationY() = m1 0x20c588, imac 0x2606c0, ios 0x23aeb4;
    virtual void setOrderOfArrival(unsigned int) = m1 0x20c9d4, imac 0x260c00, ios 0x23b2f0;
    virtual unsigned int getOrderOfArrival() = m1 0x20c9cc, imac 0x260bf0, ios 0x23b2e8;
    virtual void setGLServerState(cocos2d::ccGLServerState) = m1 0x20c9f4, imac 0x260c40, ios 0x23b310;
    virtual cocos2d::ccGLServerState getGLServerState() = m1 0x20c9ec, imac 0x260c30, ios 0x23b308;
    virtual void ignoreAnchorPointForPosition(bool) = imac 0x260ba0, m1 0x20c99c, ios 0x23b2b8;
    virtual bool isIgnoreAnchorPointForPosition() = m1 0x20c994, imac 0x260b90, ios 0x23b2b0;
    virtual void addChild(cocos2d::CCNode*) = imac 0x261090, m1 0x20ce68, ios 0x23b6b8;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x261070, m1 0x20ce58, ios 0x23b6a8;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x260f40, m1 0x20ccdc, ios 0x23b588;
    virtual cocos2d::CCNode* getChildByTag(int) = imac 0x260ec0, m1 0x20cc58, ios 0x23b514;
    virtual cocos2d::CCArray* getChildren() = imac 0x2608d0, m1 0x20c71c, ios 0x23b048;
    virtual unsigned int getChildrenCount() const = m1 0x20c768, imac 0x260920, ios 0x23b094;
    virtual void setParent(cocos2d::CCNode*) = m1 0x20c98c, imac 0x260b80, ios 0x23b2a8;
    virtual cocos2d::CCNode* getParent() = m1 0x20c984, imac 0x260b70, ios 0x23b2a0;
    virtual void removeFromParent() = m1 0x20ce7c, imac 0x2610b0, ios 0x23b6cc;
    virtual void removeFromParentAndCleanup(bool) = imac 0x2610d0, m1 0x20ce8c, ios 0x23b6dc;
    virtual void removeMeAndCleanup() = m1 0x20ceac, imac 0x261100, ios 0x23b6fc;
    virtual void removeChild(cocos2d::CCNode*) = m1 0x20cebc, imac 0x261120, ios 0x23b70c;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x261140, m1 0x20cecc, ios 0x23b71c;
    virtual void removeChildByTag(int) = m1 0x20d034, imac 0x261290, ios 0x23b7d4;
    virtual void removeChildByTag(int, bool) = imac 0x2612b0, m1 0x20d044, ios 0x23b7e4;
    virtual void removeAllChildren() = m1 0x20d094, imac 0x2612f0, ios 0x23b834;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x261310, m1 0x20d0a4, ios 0x23b844;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x261420, m1 0x20d1d0, ios 0x23b920;
    virtual void sortAllChildren() = imac 0x261560, m1 0x20d2e8, ios 0x23b9e8;
    virtual cocos2d::CCGridBase* getGrid() = m1 0x20c7d8, imac 0x260990, ios 0x23b0f4;
    virtual void setGrid(cocos2d::CCGridBase*) = m1 0x20c7e0, imac 0x2609a0, ios 0x23b0fc;
    virtual void* getUserData() = m1 0x20c9bc, imac 0x260bd0, ios 0x23b2d8;
    virtual void setUserData(void*) = m1 0x20c9c4, imac 0x260be0, ios 0x23b2e0;
    virtual cocos2d::CCObject* getUserObject() = m1 0x20c9e4, imac 0x260c20, ios 0x23b300;
    virtual void setUserObject(cocos2d::CCObject*) = m1 0x20c9fc, imac 0x260c50, ios 0x23b318;
    virtual cocos2d::CCGLProgram* getShaderProgram() = m1 0x20c9dc, imac 0x260c10, ios 0x23b2f8;
    virtual void setShaderProgram(cocos2d::CCGLProgram*) = m1 0x20ca38, imac 0x260c90, ios 0x23b354;
    virtual cocos2d::CCCamera* getCamera() = imac 0x260940, m1 0x20c778, ios 0x23b0a4;
    virtual bool isRunning() = m1 0x20c97c, imac 0x260b60, ios 0x23b298;
    virtual void registerScriptHandler(int) = m1 0x20dc6c, imac 0x261eb0, ios 0x23c108;
    virtual void unregisterScriptHandler() = imac 0x261ee0, m1 0x20dc9c, ios 0x23c138;
    virtual void onEnter() = imac 0x261b70, m1 0x20d91c, ios 0x23be14;
    virtual void onEnterTransitionDidFinish() = imac 0x261c90, m1 0x20da4c, ios 0x23bf14;
    virtual void onExit() = imac 0x261d90, m1 0x20db60, ios 0x23c028;
    virtual void onExitTransitionDidStart() = imac 0x261d00, m1 0x20dacc, ios 0x23bf94;
    virtual void cleanup() = imac 0x260da0, m1 0x20cb54, ios 0x23b464;
    virtual void draw() = m1 0x20d6e0, imac 0x261930, ios 0x23bbf8;
    virtual void visit() = imac 0x261940, m1 0x20d6e4, ios 0x23bbfc;
    virtual void setActionManager(cocos2d::CCActionManager*) = imac 0x261f20, m1 0x20dcdc, ios 0x23c178;
    virtual cocos2d::CCActionManager* getActionManager() = m1 0x20dd2c, imac 0x261f70, ios 0x23c1c8;
    virtual void setScheduler(cocos2d::CCScheduler*) = m1 0x20dd98, imac 0x262030, ios 0x23c220;
    virtual cocos2d::CCScheduler* getScheduler() = m1 0x20dde8, imac 0x262080, ios 0x23c270;
    virtual void updateTransform() = imac 0x262ed0, m1 0x20ebcc, ios 0x23cda8;
    virtual cocos2d::CCAffineTransform const nodeToParentTransform() = imac 0x262300, m1 0x20e018, ios 0x23c3ec;
    virtual cocos2d::CCAffineTransform const nodeToParentTransformFast() = imac 0x262610, m1 0x20e2d4, ios 0x23c684;
    virtual cocos2d::CCAffineTransform const parentToNodeTransform() = imac 0x262a60, m1 0x20e780, ios 0x23caec;
    virtual cocos2d::CCAffineTransform nodeToWorldTransform() = imac 0x262ae0, m1 0x20e7f4, ios 0x23cb60;
    virtual cocos2d::CCAffineTransform nodeToWorldTransformFast() = imac 0x262b70, m1 0x20e880, ios 0x23cbec;
    virtual cocos2d::CCAffineTransform worldToNodeTransform() = imac 0x262c00, m1 0x20e90c, ios 0x23cc78;
    virtual bool addComponent(cocos2d::CCComponent*) = m1 0x20ec34, imac 0x262f40, ios 0x23ce00;
    virtual bool removeComponent(char const*) = m1 0x20ec44, imac 0x262f60, ios 0x23ce10;
    virtual bool removeComponent(cocos2d::CCComponent*) = m1 0x20ec54, imac 0x262f80, ios 0x23ce20;
    virtual void removeAllComponents() = m1 0x20ec64, imac 0x262fa0, ios 0x23ce30;
    virtual void updateTweenAction(float, char const*) = m1 0x20ebc4, imac 0x262eb0, ios 0x23cda0;
    virtual void updateTweenActionInt(float, int) = m1 0x20ebc8, imac 0x262ec0, ios 0x23cda4;
}

[[link(win, android)]]
class cocos2d::CCScheduler : cocos2d::CCObject {
    float getTimeScale();

    void setTimeScale(float);

    // CCScheduler(cocos2d::CCScheduler const&);
    // CCScheduler();

    void appendIn(cocos2d::_listEntry**, cocos2d::CCObject*, bool);
    bool isTargetPaused(cocos2d::CCObject*);
    cocos2d::CCSet* pauseAllTargets();
    cocos2d::CCSet* pauseAllTargetsWithMinPriority(int);
    void pauseTarget(cocos2d::CCObject*) = imac 0x42f860, m1 0x3aa664;
    void priorityIn(cocos2d::_listEntry**, cocos2d::CCObject*, int, bool);
    void removeHashElement(cocos2d::_hashSelectorEntry*);
    void removeUpdateFromHash(cocos2d::_listEntry*);
    void resumeTarget(cocos2d::CCObject*);
    void resumeTargets(cocos2d::CCSet*);
    unsigned int scheduleScriptFunc(unsigned int, float, bool);
    void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, unsigned int, float, bool) = imac 0x42e250, m1 0x3a8f7c;
    void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, bool) = imac 0x42e230, m1 0x3a8f6c;
    void scheduleUpdateForTarget(cocos2d::CCObject*, int, bool) = imac 0x42ee60, m1 0x3a9bec;
    void unscheduleAll();
    void unscheduleAllForTarget(cocos2d::CCObject*) = imac 0x42f420;
    void unscheduleAllWithMinPriority(int);
    void unscheduleScriptEntry(unsigned int);
    void unscheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*) = imac 0x42dd60, m1 0x3a8a88;
    void unscheduleUpdateForTarget(cocos2d::CCObject const*);

    virtual void update(float) = imac 0x42fea0, m1 0x3aac3c, ios 0x1aef78;
}

[[link(win, android)]]
class cocos2d::CCLayer : cocos2d::CCNode, cocos2d::CCTouchDelegate, cocos2d::CCAccelerometerDelegate, cocos2d::CCKeypadDelegate, cocos2d::CCKeyboardDelegate, cocos2d::CCMouseDelegate {
    static cocos2d::CCLayer* create() = imac 0x49d570, m1 0x408478;

    // CCLayer(cocos2d::CCLayer const&);
    CCLayer() = imac 0x49cfb0, m1 0x408108;
    ~CCLayer() = imac 0x49d2a0, m1 0x40828c;

    cocos2d::CCScriptHandlerEntry* getScriptAccelerateHandlerEntry();
    cocos2d::CCScriptHandlerEntry* getScriptKeypadHandlerEntry();
    cocos2d::CCTouchScriptHandlerEntry* getScriptTouchHandlerEntry();

    int excuteScriptTouchHandler(int, cocos2d::CCSet*);
    int excuteScriptTouchHandler(int, cocos2d::CCTouch*);
    void registerScriptAccelerateHandler(int);
    void registerScriptKeypadHandler(int);
    void unregisterScriptAccelerateHandler();
    void unregisterScriptKeypadHandler();

    virtual bool init() = imac 0x49d510, m1 0x40841c, ios 0x14bcc0;
    virtual void onEnter() = imac 0x49de10, m1 0x408cf4, ios 0x14c3ac;
    virtual void onEnterTransitionDidFinish() = imac 0x49dfa0, m1 0x408e78, ios 0x14c540;
    virtual void onExit() = imac 0x49ded0, m1 0x408db8, ios 0x14c478;
    virtual void registerWithTouchDispatcher() = imac 0x49d6a0, m1 0x408588, ios 0x14bd90;
    virtual void registerScriptTouchHandler(int, bool, int, bool) = imac 0x49d720, m1 0x4085fc, ios 0x14bdfc;
    virtual void unregisterScriptTouchHandler() = imac 0x49d780, m1 0x40865c, ios 0x14be5c;
    virtual bool isTouchEnabled() = m1 0x408718, imac 0x49d830, ios 0x14be88;
    virtual void setTouchEnabled(bool) = imac 0x49d840, m1 0x408720, ios 0x14be90;
    virtual void setTouchMode(cocos2d::ccTouchesMode) = m1 0x408790, imac 0x49d8b0, ios 0x14bf00;
    virtual int getTouchMode() = m1 0x408860, imac 0x49d960, ios 0x14bfd0;
    virtual void setTouchPriority(int) = m1 0x4087f4, imac 0x49d900, ios 0x14bf64;
    virtual int getTouchPriority() = m1 0x408858, imac 0x49d950, ios 0x14bfc8;
    virtual bool isAccelerometerEnabled() = m1 0x408868, imac 0x49d970, ios 0x14bfd8;
    virtual void setAccelerometerEnabled(bool) = imac 0x49d980, m1 0x408870, ios 0x14bfe0;
    virtual void setAccelerometerInterval(double) = imac 0x49d9c0, m1 0x4088ac, ios 0x14c044;
    virtual bool isKeypadEnabled() = m1 0x4089b4, imac 0x49dac0, ios 0x14c128;
    virtual void setKeypadEnabled(bool) = imac 0x49dad0, m1 0x4089bc, ios 0x14c130;
    virtual bool isKeyboardEnabled() = m1 0x408a30, imac 0x49db40, ios 0x14c1a4;
    virtual void setKeyboardEnabled(bool) = imac 0x49db50, m1 0x408a38, ios 0x14c1ac;
    virtual bool isMouseEnabled() = m1 0x408aa0, imac 0x49dbb0, ios 0x14c214;
    virtual void setMouseEnabled(bool) = imac 0x49dbc0, m1 0x408aa8, ios 0x14c21c;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x408eb0, imac 0x49dfe0, ios 0x14c580;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x408f70, imac 0x49e070, ios 0x14c630;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x409010, imac 0x49e0f0, ios 0x14c6d0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x4090b0, imac 0x49e170, ios 0x14c770;
    virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x49e1f0, m1 0x409150, ios 0x14c810;
    virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x4091f0, imac 0x49e270, ios 0x14c8b0;
    virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x409290, imac 0x49e2f0, ios 0x14c950;
    virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x409330, imac 0x49e370, ios 0x14c9f0;
    virtual void setPreviousPriority(int) = m1 0x8fa0, imac 0x7130, ios 0xe788;
    virtual int getPreviousPriority() = m1 0x8fa8, imac 0x7140, ios 0xe790;

    virtual void didAccelerate(cocos2d::CCAcceleration*) = imac 0x49d9f0, m1 0x4088e0, ios 0x14c090;

    virtual void keyBackClicked() = imac 0x49dc70, m1 0x408b4c, ios 0x14c284;
    virtual void keyMenuClicked() = imac 0x49dd10, m1 0x408bf4, ios 0x14c2e0;

    virtual void keyDown(cocos2d::enumKeyCodes) = imac 0x49dd90, m1 0x408c84, ios 0x14c370;
}

[[link(win, android)]]
class cocos2d::CCLayerGradient : cocos2d::CCLayerColor {
    static cocos2d::CCLayerGradient* create(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&) = m1 0x40ad84, imac 0x4a0430;
    static cocos2d::CCLayerGradient* create(cocos2d::_ccColor4B const& a1, cocos2d::_ccColor4B const& a2, cocos2d::CCPoint const& a3) = ios inline, imac 0x4a06f0, m1 0x40afac {
    	auto ret = create(a1, a2);
    	ret->setVector(a3);
    	return ret;
    }
    static cocos2d::CCLayerGradient* create() = imac 0x4a0780;

    bool getShouldPremultiply() const;

    void setShouldPremultiply(bool);
    void setValues(cocos2d::_ccColor3B const&, unsigned char, cocos2d::_ccColor3B const&, unsigned char, cocos2d::CCPoint const&);

    // CCLayerGradient(cocos2d::CCLayerGradient const&);
    // CCLayerGradient();

    virtual bool init() = imac 0x4a07f0, m1 0x40b0e8, ios 0x14d62c;

    virtual void updateColor() = imac 0x4a0930, m1 0x40b218, ios 0x14d744;
    virtual bool initWithColor(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&) = imac 0x4a0820, m1 0x40b120, ios 0x14d664;
    virtual bool initWithColor(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&, cocos2d::CCPoint const&) = imac 0x4a0880, m1 0x40b180, ios 0x14d6c4;
    virtual cocos2d::_ccColor3B const& getStartColor() = m1 0x40b430, imac 0x4a0b20, ios 0x14d93c;
    virtual void setStartColor(cocos2d::_ccColor3B const&) = m1 0x40b438, imac 0x4a0b30, ios 0x14d944;
    virtual cocos2d::_ccColor3B const& getEndColor() = m1 0x40b464, imac 0x4a0b80, ios 0x14d970;
    virtual void setEndColor(cocos2d::_ccColor3B const&) = imac 0x4a0b50, m1 0x40b444, ios 0x14d950;
    virtual unsigned char getStartOpacity() = m1 0x40b47c, imac 0x4a0bb0, ios 0x14d988;
    virtual void setStartOpacity(unsigned char) = m1 0x40b46c, imac 0x4a0b90, ios 0x14d978;
    virtual unsigned char getEndOpacity() = m1 0x40b494, imac 0x4a0be0, ios 0x14d9a0;
    virtual void setEndOpacity(unsigned char) = m1 0x40b484, imac 0x4a0bc0, ios 0x14d990;
    virtual cocos2d::CCPoint const& getVector() = m1 0x40b4cc, imac 0x4a0c20, ios 0x14d9d8;
    virtual void setVector(cocos2d::CCPoint const&) = imac 0x4a0bf0, m1 0x40b49c, ios 0x14d9a8;
    virtual void setCompressedInterpolation(bool) = m1 0x40b550, imac 0x4a0cc0, ios 0x14da5c;
    virtual bool isCompressedInterpolation() = m1 0x40b548, imac 0x4a0cb0, ios 0x14da54;
}

[[link(win, android)]]
class cocos2d::CCObject : cocos2d::CCCopying {
    static cocos2d::CCObject* createWithCoder(DS_Dictionary*) = m1 0x3e6390;

    // CCObject(cocos2d::CCObject const&);
    CCObject() = imac 0x477bd0, m1 0x3e6090;
    ~CCObject() = imac 0x477ce0, m1 0x3e61b0;

    cocos2d::CCObjectType getObjType() const;

    void setObjType(cocos2d::CCObjectType);

    cocos2d::CCObject* autorelease() = m1 0x3e6314, imac 0x477e10;
    cocos2d::CCObject* copy();
    bool isSingleReference() const = imac 0x477e40;
    void release() = imac 0x477de0, m1 0x3e62e0;
    void retain() = imac 0x477e00, m1 0x3e6304;
    unsigned int retainCount() const;

    virtual int getTag() const = m1 0x3e637c, imac 0x477e90, ios 0x88abc;
    virtual bool isEqual(cocos2d::CCObject const*) = imac 0x477e60, m1 0x3e6358, ios 0x88a98;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = m1 0x3e6364, imac 0x477e70, ios 0x88aa4;
    virtual void encodeWithCoder(DS_Dictionary*) = m1 0x3e638c, imac 0x477eb0, ios 0x88acc;
    virtual bool canEncode() = m1 0x3e6398, imac 0x477ed0, ios 0x88ad8;
    virtual void setTag(int) = m1 0x3e6384, imac 0x477ea0, ios 0x88ac4;
}

[[link(win, android)]]
class cocos2d::CCOrbitCamera : cocos2d::CCActionCamera {
    static cocos2d::CCOrbitCamera* create(float, float, float, float, float, float, float);

    bool initWithDuration(float, float, float, float, float, float, float);
    // CCOrbitCamera(cocos2d::CCOrbitCamera const&);
    // CCOrbitCamera();

    void sphericalRadius(float*, float*, float*);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3543a0, m1 0x2e8180;
    virtual void update(float) = imac 0x354800, m1 0x2e853c;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x2e82a8, imac 0x3544f0;
}

[[link(win, android)]]
class cocos2d::CCLayerColor : cocos2d::CCLayerRGBA, cocos2d::CCBlendProtocol {
    static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&) = imac 0x49fbb0, m1 0x40a558;
    static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&, float, float) = m1 0x40a3dc, imac 0x49f9e0;
    static cocos2d::CCLayerColor* create() = ios inline, imac 0x49f800, m1 0x40a264 {
    	CCLayerColor* pRet = new CCLayerColor();
    	if (pRet && pRet->init())
    	{
    		pRet->autorelease();
    	}
    	else
    	{
    		CC_SAFE_DELETE(pRet);
    	}
    	return pRet;
    }

    // CCLayerColor(cocos2d::CCLayerColor const&);
    CCLayerColor() = imac 0x49f1a0, m1 0x409f38;
    ~CCLayerColor() = imac 0x49f550, m1 0x40a0b4;

    void setVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);

    void addToVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);
    void changeHeight(float);
    void changeWidth(float);
    void changeWidthAndHeight(float, float);

    virtual bool init() = imac 0x49fd80, m1 0x40a6a4, ios 0x14d18c;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x49ff70, m1 0x40a874, ios 0x14d33c;
    virtual void draw() = m1 0x40a9d4, imac 0x4a00b0, ios 0x14d3a8;
    virtual bool initWithColor(cocos2d::_ccColor4B const&, float, float) = imac 0x49fdd0, m1 0x40a6f0, ios 0x14d1d8;
    virtual bool initWithColor(cocos2d::_ccColor4B const&) = m1 0x40a7dc, imac 0x49fec0, ios 0x14d2a4;
    virtual void updateColor() = imac 0x4a0060, m1 0x40a958, ios 0x14d354;

    virtual void setColor(cocos2d::_ccColor3B const&) = imac 0x4a0180, m1 0x40aaa0, ios 0x14d474;
    virtual void setOpacity(unsigned char) = imac 0x4a0300, m1 0x40ac4c, ios 0x14d4d0;

    virtual void setBlendFunc(cocos2d::_ccBlendFunc) = m1 0x40a254, imac 0x49f7e0, ios 0x14cfdc;
    virtual cocos2d::_ccBlendFunc getBlendFunc() = m1 0x40a244, imac 0x49f7c0, ios 0x14cfcc;
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA : cocos2d::CCLayer, cocos2d::CCRGBAProtocol {
    static cocos2d::CCLayerRGBA* create();

    // CCLayerRGBA(cocos2d::CCLayerRGBA const&);
    CCLayerRGBA() = imac 0x49e3f0, m1 0x4094b8;
    ~CCLayerRGBA() = imac 0x49e760, m1 0x409620;

    virtual bool init() = imac 0x49e9d0, m1 0x4097b0, ios 0x14cb1c;

    virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x4099d4, imac 0x49ec10, ios 0x14cc58;
    virtual cocos2d::_ccColor3B const& getColor() = m1 0x4099b4, imac 0x49ebd0, ios 0x14cc38;
    virtual cocos2d::_ccColor3B const& getDisplayedColor() = m1 0x4099c4, imac 0x49ebf0, ios 0x14cc48;
    virtual unsigned char getDisplayedOpacity() = m1 0x40984c, imac 0x49ea70, ios 0x14cb88;
    virtual unsigned char getOpacity() = m1 0x40983c, imac 0x49ea50, ios 0x14cb78;
    virtual void setOpacity(unsigned char) = m1 0x40985c, imac 0x49ea90, ios 0x14cb98;
    virtual bool isCascadeColorEnabled() = m1 0x409e1c, imac 0x49f160, ios 0x14cf0c;
    virtual void setCascadeColorEnabled(bool) = m1 0x409e2c, imac 0x49f180, ios 0x14cf1c;
    virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = m1 0x409cf0, imac 0x49ef00, ios 0x14cdec;
    virtual bool isCascadeOpacityEnabled() = m1 0x409dfc, imac 0x49f120, ios 0x14ceec;
    virtual void setCascadeOpacityEnabled(bool) = m1 0x409e0c, imac 0x49f140, ios 0x14cefc;
    virtual void updateDisplayedOpacity(unsigned char) = m1 0x409b60, imac 0x49ed80, ios 0x14cd28;
}

[[link(win, android)]]
class cocos2d::CCMouseDispatcher : cocos2d::CCObject {
    // CCMouseDispatcher(cocos2d::CCMouseDispatcher const&);
    // CCMouseDispatcher();
    void addDelegate(cocos2d::CCMouseDelegate*);
    bool dispatchScrollMSG(float, float) = imac 0x55a490, m1 0x4b0cb4;
    void forceAddDelegate(cocos2d::CCMouseDelegate*);
    void forceRemoveDelegate(cocos2d::CCMouseDelegate*);
    void removeDelegate(cocos2d::CCMouseDelegate*);
}

[[link(win, android)]]
class cocos2d::CCTargetedTouchHandler {
    static cocos2d::CCTargetedTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int, bool);

    bool initWithDelegate(cocos2d::CCTouchDelegate*, int, bool);

    cocos2d::CCSet* getClaimedTouches() = imac 0x46e5e0, m1 0x3dd8b8;

    void setSwallowsTouches(bool);

    // CCTargetedTouchHandler(cocos2d::CCTargetedTouchHandler const&);
    // CCTargetedTouchHandler();
    bool isSwallowsTouches();
}

[[link(win, android)]]
class cocos2d::CCTexture2D : cocos2d::CCObject {
    static void PVRImagesHavePremultipliedAlpha(bool) = imac 0x466800;
    static cocos2d::CCTexture2DPixelFormat defaultAlphaPixelFormat();
    static void setDefaultAlphaPixelFormat(cocos2d::CCTexture2DPixelFormat);

    bool initPremultipliedATextureWithImage(cocos2d::CCImage*, unsigned int, unsigned int) = m1 0x3d590c;
    bool initWithData(void const*, cocos2d::CCTexture2DPixelFormat, unsigned int, unsigned int, cocos2d::CCSize const&) = imac 0x465650, m1 0x3d557c;
    bool initWithETCFile(char const*) = imac 0x466730, m1 0x3d65b4;
    bool initWithImage(cocos2d::CCImage*) = m1 0x3d5890, imac 0x4659b0;
    bool initWithPVRFile(char const*) = imac 0x466650, m1 0x3d64dc;
    bool initWithString(char const*, char const*, float) = imac 0x4662a0, m1 0x3d6128;
    bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment) = imac 0x466300, m1 0x3d6198;
    bool initWithString(char const*, cocos2d::_ccFontDefinition*);

    cocos2d::CCSize const& getContentSizeInPixels();

    void setAliasTexParameters() = m1 0x3d6778, imac 0x4668f0;
    void setAntiAliasTexParameters();
    void setTexParameters(cocos2d::_ccTexParams*) = imac 0x466860, m1 0x3d66e0;

    // CCTexture2D(cocos2d::CCTexture2D const&);
    ~CCTexture2D() = m1 0x3d5378, imac 0x4653b0; //imac 0x465400
    CCTexture2D() = m1 0x3d52b0, imac 0x4652f0;
    unsigned int bitsPerPixelForFormat(cocos2d::CCTexture2DPixelFormat) = imac 0x465950;
    unsigned int bitsPerPixelForFormat() = imac 0x4669e0;
    char const* description() = imac 0x465970, m1 0x3d584c;
    void drawAtPoint(cocos2d::CCPoint const&) = m1 0x3d62d0;
    void drawInRect(cocos2d::CCRect const&) = m1 0x3d63e8;
    void generateMipmap() = imac 0x466810, m1 0x3d6688;
    bool hasMipmaps();
    bool hasPremultipliedAlpha();
    void* keepData(void*, unsigned int);
    void releaseData(void*);
    void releaseGLTexture() = imac 0x4655f0, m1 0x3d5538;
    char const* stringForFormat() = imac 0x466990;

    virtual cocos2d::CCTexture2DPixelFormat getPixelFormat() = m1 0x3d5454, imac 0x4654a0, ios 0x1306c0;
    virtual unsigned int getPixelsWide() = m1 0x3d545c, imac 0x4654b0, ios 0x1306c8;
    virtual unsigned int getPixelsHigh() = m1 0x3d5464, imac 0x4654c0, ios 0x1306d0;
    virtual unsigned int getName() = m1 0x3d546c, imac 0x4654d0, ios 0x1306d8;
    virtual float getMaxS() = m1 0x3d54d4, imac 0x465560, ios 0x130740;
    virtual void setMaxS(float) = m1 0x3d54dc, imac 0x465570, ios 0x130748;
    virtual float getMaxT() = m1 0x3d54e4, imac 0x465580, ios 0x130750;
    virtual void setMaxT(float) = m1 0x3d54ec, imac 0x465590, ios 0x130758;
    virtual cocos2d::CCSize getContentSize() = m1 0x3d5474, imac 0x4654e0, ios 0x1306e0;
    virtual cocos2d::CCGLProgram* getShaderProgram() = m1 0x3d54f4, imac 0x4655a0, ios 0x130760;
    virtual void setShaderProgram(cocos2d::CCGLProgram*) = imac 0x4655b0, m1 0x3d54fc, ios 0x130768;
}

[[link(win, android)]]
class cocos2d::CCTextureCache : cocos2d::CCObject {
    static void purgeSharedTextureCache();
    static void reloadAllTextures();
    static cocos2d::CCTextureCache* sharedTextureCache() = imac 0x5d4630, m1 0x508118;

    // CCTextureCache(cocos2d::CCTextureCache const&);
    // CCTextureCache();
    cocos2d::CCTexture2D* addETCImage(char const*);
    cocos2d::CCTexture2D* addImage(char const*, bool) = imac 0x5d58c0, m1 0x509308;
    void addImageAsync(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler, int, cocos2d::CCTexture2DPixelFormat) = imac 0x5d4b00, m1 0x5085b8;
    void addImageAsyncCallBack(float);
    cocos2d::CCTexture2D* addPVRImage(char const*);
    cocos2d::CCTexture2D* addUIImage(cocos2d::CCImage*, char const*) = imac 0x5d6700, m1 0x50a210;
    char const* description() = imac 0x5d4910, m1 0x5083f4;
    void dumpCachedTextureInfo();
    void prepareAsyncLoading() = imac 0x5d4ac0, m1 0x508584;
    bool reloadTexture(char const*);
    void removeAllTextures();
    void removeTexture(cocos2d::CCTexture2D*);
    void removeTextureForKey(char const*) = imac 0x5d6ca0;
    void removeUnusedTextures();
    cocos2d::CCDictionary* snapshotTextures();
    cocos2d::CCTexture2D* textureForKey(char const*) = imac 0x5d6d20, m1 0x50a874;
}

[[link(win, android)]]
class cocos2d::CCTouch : cocos2d::CCObject {
    cocos2d::CCPoint getLocationInView() const = m1 0x4f71c, imac 0x59ab0;
    cocos2d::CCPoint getLocation() const = m1 0x4f740, imac 0x59b10;
    cocos2d::CCPoint getPreviousLocation() const = ios inline, m1 0x4f76c, imac 0x59b40 {
    	return CCDirector::sharedDirector()->convertToGL(m_prevPoint);
    }
    cocos2d::CCPoint getStartLocation() const = ios inline, m1 0x4f798, imac 0x59b70 {
    	return CCDirector::sharedDirector()->convertToGL(m_startPoint);
    }
    cocos2d::CCPoint getDelta() const = ios inline, m1 0x4f7c4, imac 0x59ba0 {
    	return getLocation() - getPreviousLocation();
    }
}

[[link(win, android)]]
class cocos2d::CCTouchDelegate {
    // CCTouchDelegate(cocos2d::CCTouchDelegate const&);
    // CCTouchDelegate();

    virtual void setPreviousPriority(int) {}
    virtual int getPreviousPriority() { return 0; }
}

[[link(win, android)]]
class cocos2d::CCTouchDispatcher : cocos2d::CCObject, cocos2d::EGLTouchDelegate {
    bool init() = imac 0x4b86d0;

    int getTargetPrio() const;

    void setDispatchEvents(bool);
    void setPriority(int p1, cocos2d::CCTouchDelegate* p2) = ios inline, imac 0x4b90d0, m1 0x420e50 {
    	auto* handler = this->findHandler(p2);
    	auto priority = handler->getPriority();

    	if (p1 != priority) {
    		handler->setPriority(p1);
    		this->rearrangeHandlers(m_pTargetedHandlers);
    		this->rearrangeHandlers(m_pStandardHandlers);
    	}
    }

    // CCTouchDispatcher(cocos2d::CCTouchDispatcher const&);
    // CCTouchDispatcher();
    void addPrioTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x4b8980, m1 0x420668;
    void addStandardDelegate(cocos2d::CCTouchDelegate*, int);
    void addTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x4b89a0, m1 0x420680;
    void decrementForcePrio(int);
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCArray*, cocos2d::CCTouchDelegate*);
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCTouchDelegate*) = imac 0x4b8f90, m1 0x420cec;
    void forceAddHandler(cocos2d::CCTouchHandler*, cocos2d::CCArray*);
    void forceRemoveAllDelegates();
    void forceRemoveDelegate(cocos2d::CCTouchDelegate*) = imac 0x4b8d10;
    void incrementForcePrio(int);
    bool isDispatchEvents();
    bool isUsingForcePrio() = imac 0x4b8970;
    void rearrangeHandlers(cocos2d::CCArray* handlers) = ios inline {
    	std::sort(handlers->data->arr, handlers->data->arr + handlers->data->num, [](const CCObject* p1, const CCObject* p2) {
    		return ((CCTouchHandler*)p1)->getPriority() < ((CCTouchHandler*)p2)->getPriority();
    	});
    }
    void registerForcePrio(cocos2d::CCObject*, int) = imac 0x4b8880, m1 0x420540;
    void removeAllDelegates();
    void removeDelegate(cocos2d::CCTouchDelegate*) = m1 0x420b2c, imac 0x4b8e00;
    void touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int) = imac 0x4b9220, m1 0x420fc0;
    void unregisterForcePrio(cocos2d::CCObject*) = imac 0x4b8920, m1 0x4205f4;

    virtual void touchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b9840, m1 0x421540, ios 0x152d68;
    virtual void touchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b9880, m1 0x42156c, ios 0x152d94;
    virtual void touchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b98c0, m1 0x421598, ios 0x152dc0;
    virtual void touchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b9900, m1 0x4215c4, ios 0x152dec;
}

[[link(win, android)]]
class cocos2d::CCTouchHandler {
    static cocos2d::CCTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int);

    cocos2d::CCTouchDelegate* getDelegate() = m1 0x3dd4e4, imac 0x46e1c0;
    int getEnabledSelectors();
    int getPriority() = ios inline, m1 0x3dd560, imac 0x46e240 {
    	return m_nPriority;
    }

    void setDelegate(cocos2d::CCTouchDelegate*);
    void setEnalbedSelectors(int);
    void setPriority(int prio) = ios inline {
    	m_nPriority = prio;
    }

    // CCTouchHandler(cocos2d::CCTouchHandler const&);
    // CCTouchHandler();

    virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int) = m1 0x3dd620, imac 0x46e330, ios 0x103d4;
}

[[link(win, android)]]
class cocos2d::CCEGLView {
    // CCEGLView();
    // CCEGLView(cocos2d::CCEGLView const&);
    virtual void swapBuffers() = m1 0x45133c, imac 0x4f01b0, ios 0x12da84;
    void end();

    [[missing(android, mac, ios)]]
    void toggleFullScreen(bool, bool, bool);
    [[missing(android, mac, ios)]]
    void pollEvents();
    [[missing(android, mac, ios)]]
    void setupWindow(cocos2d::CCRect);
    [[missing(android, mac, ios)]]
    void onGLFWCharCallback(GLFWwindow* window, unsigned int entered);
    [[missing(android, mac, ios)]]
    void onGLFWCursorEnterFunCallback(GLFWwindow* window, int entered);
    [[missing(android, mac, ios)]]
    void onGLFWDeviceChangeFunCallback(GLFWwindow* window);
    [[missing(android, mac, ios)]]
    void onGLFWError(int code, char const* description);
    [[missing(android, mac, ios)]]
    void onGLFWKeyCallback(GLFWwindow* window, int key, int scancode, int action, int mods);
    [[missing(android, mac, ios)]]
    void onGLFWMouseCallBack(GLFWwindow* window, int button, int action, int mods);
    [[missing(android, mac, ios)]]
    void onGLFWMouseMoveCallBack(GLFWwindow* window, double x, double y);
    [[missing(android, mac, ios)]]
    void onGLFWMouseScrollCallback(GLFWwindow* window, double xOffset, double yOffset);
    [[missing(android, mac, ios)]]
    void onGLFWWindowIconifyFunCallback(GLFWwindow* window, int iconified);
    [[missing(android, mac, ios)]]
    void onGLFWWindowPosCallback(GLFWwindow* window, int x, int y);
    [[missing(android, mac, ios)]]
    void onGLFWWindowSizeFunCallback(GLFWwindow* window, int width, int height);
    [[missing(android, mac, ios)]]
    void onGLFWframebuffersize(GLFWwindow* window, int width, int height);
    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithFullScreen(gd::string const&, bool);
    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithFullScreen(gd::string const&, bool, GLFWvidmode const&, GLFWmonitor*);
    // [[missing(android, mac, ios)]]
    // static cocos2d::CCEGLView* createWithRect(gd::string const&, cocos2d::CCRect, float);
    // sharedOpenGLView() = ios 0x130f38, imac 0x50df50
}

[[link(win, android)]]
class cocos2d::CCImage : cocos2d::CCObject {
    bool initWithImageData(void*, int, cocos2d::CCImage::EImageFormat, int, int, int, int) = imac 0x476d80, m1 0x3e5670;
    bool initWithImageFile(char const*, cocos2d::CCImage::EImageFormat) = imac 0x476b70, m1 0x3e5430;
    bool initWithImageFileThreadSafe(char const*, cocos2d::CCImage::EImageFormat) = imac 0x477360, m1 0x3e5a5c;
    bool initWithString(char const*, int, int, cocos2d::CCImage::ETextAlign, char const*, int);

    int getBitsPerComponent() const;
    unsigned char* getData();
    int getDataLen();
    unsigned short getHeight() const;
    unsigned short getWidth() const;

    CCImage() = imac 0x476a70, m1 0x3e534c;
    ~CCImage() = imac 0x476af0, m1 0x3e53b4;

    bool _initWithJpgData(void*, int);
    bool _initWithPngData(void*, int);
    bool _initWithRawData(void*, int, int, int, int, bool);
    bool _initWithTiffData(void*, int);
    bool _initWithWebpData(void*, int);
    bool _saveImageToJPG(char const*);
    bool _saveImageToPNG(char const*, bool);
    bool hasAlpha();
    bool isPremultipliedAlpha();
    bool saveToFile(char const*, bool);
}

[[link(win, android)]]
class cocos2d::CCIMEDelegate {
    ~CCIMEDelegate() = imac 0x4a8c30, m1 0x411f78;
    virtual bool attachWithIME() = imac 0x4a8c50, m1 0x411f90, ios 0x1d47b4;
    virtual bool detachWithIME() = imac 0x4a8e40, m1 0x4121d0, ios 0x1d48b8;
    virtual void deleteForward() = m1 0x8fb0, imac 0x7150, ios 0xd590 {}
}

[[link(win, android)]]
class cocos2d::CCIMEDispatcher {
    static cocos2d::CCIMEDispatcher* sharedDispatcher() = imac 0x4a89a0, m1 0x411d04;

    // CCIMEDispatcher();

    void addDelegate(cocos2d::CCIMEDelegate*);
    bool attachDelegateWithIME(cocos2d::CCIMEDelegate*);
    bool detachDelegateWithIME(cocos2d::CCIMEDelegate*);
    void dispatchDeleteBackward() = m1 0x4124e0, imac 0x4a9140;
    void dispatchDeleteForward() = m1 0x412500, imac 0x4a9160;
    void dispatchInsertText(char const*, int, cocos2d::enumKeyCodes) = imac 0x4a9110, m1 0x4124b4;
    void dispatchKeyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&);
    void dispatchKeyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&);
    void dispatchKeyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
    void dispatchKeyboardWillHide();
    void dispatchKeyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
    char const* getContentText();
    bool hasDelegate() = imac 0x4a90f0, m1 0x4124a0;
    void removeDelegate(cocos2d::CCIMEDelegate*);
}

[[link(win, android)]]
class cocos2d::CCKeyboardDispatcher : cocos2d::CCObject {
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
    bool dispatchKeyboardMSG(cocos2d::enumKeyCodes, bool, bool) = imac 0x1f17b0, m1 0x1a8028;
    void forceAddDelegate(cocos2d::CCKeyboardDelegate*);
    void forceRemoveDelegate(cocos2d::CCKeyboardDelegate*);
    char const* keyToString(cocos2d::enumKeyCodes) = imac 0x1f1aa0, m1 0x1a82e0;
    void removeDelegate(cocos2d::CCKeyboardDelegate*);
    void updateModifierKeys(bool, bool, bool, bool) = imac 0x1f1a70, m1 0x1a82c8;
}

[[link(win, android)]]
class cocos2d::CCKeypadDispatcher : cocos2d::CCObject {
    // CCKeypadDispatcher(cocos2d::CCKeypadDispatcher const&);
    // CCKeypadDispatcher();

    void addDelegate(cocos2d::CCKeypadDelegate*);
    bool dispatchKeypadMSG(cocos2d::ccKeypadMSGType);
    void forceAddDelegate(cocos2d::CCKeypadDelegate*);
    void forceRemoveDelegate(cocos2d::CCKeypadDelegate*);
    void removeDelegate(cocos2d::CCKeypadDelegate*);
}

[[link(win, android)]]
class cocos2d::CCDirector : cocos2d::CCObject, cocos2d::TypeInfo {
    static cocos2d::CCDirector* sharedDirector() = imac 0x46f500, m1 0x3de6d0;

    float getActualDeltaTime() const;
    double getAnimationInterval();
    float getContentScaleFactor();
    cocos2d::CCDirectorDelegate* getDelegate() const;
    bool getDontCallWillSwitch() const;
    void getFPSImageData(unsigned char**, unsigned int*);
    bool getIsTransitioning() const;
    cocos2d::TextureQuality getLoadedTextureQuality() const;
    cocos2d::CCScene* getNextScene();
    cocos2d::CCNode* getNotificationNode() = m1 0x3e07cc, imac 0x471a60;
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
    cocos2d::CCSize getWinSize() = imac 0x470920, m1 0x3df874;
    cocos2d::CCSize getWinSizeInPixels() = imac 0x471080, m1 0x3dfeb4;
    float getZEye();
    //getScreenTop = ios 0x18260c, idk if i should add the function
    //getScreenBottom() = ios 0x182614
    //getScreenLeft() = ios 0x18261C

    void setActualDeltaTime(float);
    void setAlphaBlending(bool);
    void setContentScaleFactor(float);
    void setDefaultValues() = imac 0x46f8f0, m1 0x3dea54;
    void setDelegate(cocos2d::CCDirectorDelegate*);
    void setDeltaTime(float);
    void setDepthTest(bool) = imac 0x46fc40;
    void setDisplayStats(bool);
    void setDontCallWillSwitch(bool);
    void setGLDefaultValues() = imac 0x46fbd0;
    void setNextDeltaTimeZero(bool);
    void setNextScene() = imac 0x470340;
    void setNotificationNode(cocos2d::CCNode*) = m1 0x3e07d4, imac 0x471a70;
    void setOpenGLView(cocos2d::CCEGLView*);
    void setProjection(cocos2d::ccDirectorProjection);
    void setSceneReference(cocos2d::CCScene*);
    void setSmoothFix(bool);
    void setSmoothFixCheck(bool);
    void setViewport() = imac 0x470d60, m1 0x3dfc30;

    // CCDirector(cocos2d::CCDirector const&);
    // CCDirector();
    void applySmoothFix();
    void calculateDeltaTime();
    void calculateMPF();
    void checkSceneReference();
    cocos2d::CCPoint convertToGL(cocos2d::CCPoint const&) = imac 0x470e50, m1 0x3dfd04;
    cocos2d::CCPoint convertToUI(cocos2d::CCPoint const&);
    void createStatsLabel();
    void drawScene() = m1 0x3deef0, imac 0x46fe90;
    void end();
    bool isDisplayStats();
    bool isNextDeltaTimeZero();
    bool isPaused();
    bool isSendCleanupToScene();
    int levelForSceneInStack(cocos2d::CCScene*);
    void pause();
    void popScene() = imac 0x471430, m1 0x3e025c;
    bool popSceneWithTransition(float, cocos2d::PopTransition) = imac 0x4714c0, m1 0x3e02e8;
    void popToRootScene();
    void popToSceneInStack(cocos2d::CCScene*);
    void popToSceneStackLevel(int);
    void purgeCachedData();
    void purgeDirector() = imac 0x471780;
    bool pushScene(cocos2d::CCScene*) = imac 0x471230, m1 0x3e0034;
    void removeStatsLabel() = imac 0x471990, m1 0x3e0734;
    bool replaceScene(cocos2d::CCScene*) = imac 0x4712e0, m1 0x3e00fc;
    void resetSmoothFixCounter() = imac 0x4706e0;
    void reshapeProjection(cocos2d::CCSize const&);
    void resume() = imac 0x471910;
    void runWithScene(cocos2d::CCScene*) = imac 0x471190;
    int sceneCount();
    void setupScreenScale(cocos2d::CCSize, cocos2d::CCSize, cocos2d::TextureQuality);
    void showFPSLabel() = imac 0x470510, m1 0x3df4dc;
    void showStats();
    void toggleShowFPS(bool, gd::string, cocos2d::CCPoint) = imac 0x470800, m1 0x3df778;
    void updateContentScale(cocos2d::TextureQuality);
    void updateScreenScale(cocos2d::CCSize);
    void willSwitchToScene(cocos2d::CCScene*) = imac 0x471140, m1 0x3dff18;

    virtual bool init() = imac 0x46f630, m1 0x3de7f4, ios 0x178608;
    virtual cocos2d::CCScheduler* getScheduler() = m1 0x3e0870, imac 0x471b10, ios 0x179c2c;
    virtual void setScheduler(cocos2d::CCScheduler*) = imac 0x471ad0, m1 0x3e0828, ios 0x179be4;
    virtual cocos2d::CCActionManager* getActionManager() = m1 0x3e08c0, imac 0x471b60, ios 0x179c7c;
    virtual void setActionManager(cocos2d::CCActionManager*) = imac 0x471b20, m1 0x3e0878, ios 0x179c34;
    virtual cocos2d::CCTouchDispatcher* getTouchDispatcher() = m1 0x3e0910, imac 0x471bb0, ios 0x179ccc;
    virtual void setTouchDispatcher(cocos2d::CCTouchDispatcher*) = imac 0x471b70, m1 0x3e08c8, ios 0x179c84;
    virtual cocos2d::CCKeypadDispatcher* getKeypadDispatcher() = m1 0x3e09dc, imac 0x471ca0, ios 0x179d98;
    virtual void setKeypadDispatcher(cocos2d::CCKeypadDispatcher*) = imac 0x471c60, m1 0x3e09a0, ios 0x179d5c;
    virtual cocos2d::CCKeyboardDispatcher* getKeyboardDispatcher() = m1 0x3e0954, imac 0x471c00, ios 0x179d10;
    virtual void setKeyboardDispatcher(cocos2d::CCKeyboardDispatcher*) = imac 0x471bc0, m1 0x3e0918, ios 0x179cd4;
    virtual cocos2d::CCMouseDispatcher* getMouseDispatcher() = m1 0x3e0998, imac 0x471c50, ios 0x179d54;
    virtual void setMouseDispatcher(cocos2d::CCMouseDispatcher*) = imac 0x471c10, m1 0x3e095c, ios 0x179d18;
    virtual cocos2d::CCAccelerometer* getAccelerometer() = m1 0x3e0a1c, imac 0x471ce0, ios 0x179ddc;
    virtual void setAccelerometer(cocos2d::CCAccelerometer*) = imac 0x471cb0, m1 0x3e09e4, ios 0x179da0;
    virtual float getDeltaTime() = m1 0x3df684, imac 0x4706f0, ios 0x179000;
}

[[link(win, android)]]
class cocos2d::CCNodeRGBA : cocos2d::CCNode, cocos2d::CCRGBAProtocol {
    static cocos2d::CCNodeRGBA* create() = ios inline {
    	auto pRet = new cocos2d::CCNodeRGBA();

    	if (pRet->init())
    	{
    		pRet->autorelease();
    		return pRet;
    	}

    	delete pRet;
    	return nullptr;
    }

    // CCNodeRGBA(cocos2d::CCNodeRGBA const&);
    CCNodeRGBA() = imac 0x262fc0, m1 0x20ec74;
    ~CCNodeRGBA() = imac 0x263070, m1 0x20ecd8;

    virtual bool init() = imac 0x2630a0, m1 0x20ecf0, ios 0x23ce8c;

    virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x20f0b0, imac 0x2634b0, ios 0x23d064;
    virtual cocos2d::_ccColor3B const& getColor() = m1 0x20f090, imac 0x263470, ios 0x23d044;
    virtual cocos2d::_ccColor3B const& getDisplayedColor() = m1 0x20f0a0, imac 0x263490, ios 0x23d054;
    virtual unsigned char getDisplayedOpacity() = m1 0x20ed78, imac 0x263150, ios 0x23ceb0;
    virtual unsigned char getOpacity() = m1 0x20ed68, imac 0x263130, ios 0x23cea0;
    virtual void setOpacity(unsigned char) = m1 0x20ed88, imac 0x263170, ios 0x23cec0;
    virtual bool isCascadeColorEnabled() = m1 0x20f348, imac 0x263840, ios 0x23d234;
    virtual void setCascadeColorEnabled(bool) = m1 0x20f358, imac 0x263860, ios 0x23d244;
    virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = m1 0x20f23c, imac 0x263620, ios 0x23d134;
    virtual bool isCascadeOpacityEnabled() = m1 0x20f070, imac 0x263430, ios 0x23d024;
    virtual void setCascadeOpacityEnabled(bool) = m1 0x20f080, imac 0x263450, ios 0x23d034;
    virtual void updateDisplayedOpacity(unsigned char) = m1 0x20eee0, imac 0x2632b0, ios 0x23cf60;
}

[[link(win, android)]]
class cocos2d::CCSequence : cocos2d::CCActionInterval {
    static cocos2d::CCSequence* create(cocos2d::CCArray*) = imac 0x3a2980, m1 0x32f72c;
    // static cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, ...) = imac 0x3a2600, m1 0x33d1fc;
    static cocos2d::CCSequence* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3a24d0, m1 0x32f3e4;
    static cocos2d::CCSequence* createWithVariableList(cocos2d::CCFiniteTimeAction*, va_list) = imac 0x3a26b0, m1 0x32f52c;

    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3a25a0, m1 0x32f4a0;

    // CCSequence(cocos2d::CCSequence const&);
    // CCSequence();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x32f938, imac 0x3a2bd0, ios 0x18dbd4;
    virtual void update(float) = imac 0x3a2e80, m1 0x32fbd0, ios 0x18ddb0;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x32fb48, imac 0x3a2e10, ios 0x18dd28;
    virtual void stop() = imac 0x3a2e50, m1 0x32fb90, ios 0x18dd70;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a3020, m1 0x32fd74, ios 0x18df14;
}

[[link(win, android)]]
class cocos2d::CCSprite : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    static cocos2d::CCSprite* create(char const*) = imac 0x276440, m1 0x2210dc;
    static cocos2d::CCSprite* create(char const*, cocos2d::CCRect const&) = imac 0x276530, m1 0x50a7e4;
    static cocos2d::CCSprite* create() = imac 0x276760, m1 0x2213ec;
    static cocos2d::CCSprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x276630, m1 0x2212d0;
    static cocos2d::CCSprite* createWithSpriteFrameName(char const*) = m1 0x2213c4, imac 0x276730;
    static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*) = imac 0x2761b0, m1 0x220e60;
    static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = imac 0x276340;

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
    void setFlipX(bool) = imac 0x278420, m1 0x222e04;
    void setFlipY(bool) = imac 0x278470, m1 0x222e38;
    void setTextureAtlas(cocos2d::CCTextureAtlas*);
    void setTlVertexMod(float);
    void setTrVertexMod(float);
    void setUseVertexMod(bool);

    // CCSprite(cocos2d::CCSprite const&);
    CCSprite() = imac 0x2762a0, m1 0x221864;
    ~CCSprite() = imac 0x276d00, m1 0x221938;
    bool isFlipX() = imac 0x278460;
    bool isFlipY() = imac 0x2784b0;
    bool isTextureRectRotated();
    void updateColor();

    virtual bool init() = imac 0x276850, m1 0x2214d4, ios 0x237660;
    virtual void setVertexZ(float) = imac 0x2782c0, m1 0x222cb0, ios 0x238d4c;
    virtual void setScaleX(float) = imac 0x278160, m1 0x222b2c, ios 0x238bc8;
    virtual void setScaleY(float) = imac 0x2781d0, m1 0x222ba8, ios 0x238c44;
    virtual void setScale(float) = imac 0x278240, m1 0x222c24, ios 0x238cc0;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x277eb0, m1 0x222868, ios 0x238904;
    virtual void setSkewX(float) = imac 0x278080, m1 0x222a4c, ios 0x238ae8;
    virtual void setSkewY(float) = imac 0x2780f0, m1 0x222abc, ios 0x238b58;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x278330, m1 0x222d20, ios 0x238dbc;
    virtual void setVisible(bool) = imac 0x2783b0, m1 0x222d94, ios 0x238e30;
    virtual void setRotation(float) = imac 0x277f30, m1 0x2228fc, ios 0x238998;
    virtual void setRotationX(float) = imac 0x277fa0, m1 0x22296c, ios 0x238a08;
    virtual void setRotationY(float) = imac 0x278010, m1 0x2229dc, ios 0x238a78;
    virtual void ignoreAnchorPointForPosition(bool) = imac 0x2783a0, m1 0x222d90, ios 0x238e2c;
    virtual void addChild(cocos2d::CCNode*) = imac 0x2779f0, m1 0x22239c, ios 0x23844c;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x277a00, m1 0x2223a0, ios 0x238450;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x277a10, m1 0x2223a4, ios 0x238454;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x277b50, m1 0x22250c, ios 0x2385bc;
    virtual void removeAllChildrenWithCleanup(bool) = imac 0x277b90, m1 0x222554, ios 0x238604;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x277ad0, m1 0x222478, ios 0x238528;
    virtual void sortAllChildren() = imac 0x277c50, m1 0x222608, ios 0x2386b0;
    virtual void draw() = imac 0x2778d0, m1 0x222284, ios 0x238340;
    virtual void updateTransform() = imac 0x277410, m1 0x221ed0, ios 0x237f8c;
    virtual bool initWithTexture(cocos2d::CCTexture2D*) = imac 0x276a10, m1 0x221650, ios 0x2377dc;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = m1 0x221640, imac 0x2769f0, ios 0x2377cc;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = imac 0x276870, m1 0x2214ec, ios 0x237678;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x276b70, m1 0x2217c4, ios 0x237950;
    virtual bool initWithSpriteFrameName(char const*) = imac 0x276bc0, m1 0x221828, ios 0x2379b4;
    virtual bool initWithFile(char const*) = m1 0x2216cc, imac 0x276a80, ios 0x237858;
    virtual bool initWithFile(char const*, cocos2d::CCRect const&) = m1 0x221760, imac 0x276b10, ios 0x2378ec;
    virtual void setChildColor(cocos2d::_ccColor3B const&) = m1 0x223190, imac 0x2789b0, ios 0x239150;
    virtual void setChildOpacity(unsigned char) = imac 0x278790, m1 0x223024, ios 0x239048;
    virtual cocos2d::CCSpriteBatchNode* getBatchNode() = m1 0x223594, imac 0x279170, ios 0x23953c;
    virtual void setBatchNode(cocos2d::CCSpriteBatchNode*) = imac 0x279180, m1 0x22359c, ios 0x239544;
    virtual void refreshTextureRect() = imac 0x276dc0, m1 0x2219d4, ios 0x237adc;
    virtual void setTextureRect(cocos2d::CCRect const&) = imac 0x276e50, m1 0x221a58, ios 0x237b60;
    virtual void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&) = imac 0x276e70, m1 0x221a6c, ios 0x237b74;
    virtual void setVertexRect(cocos2d::CCRect const&) = imac 0x2771b0, m1 0x221d00, ios 0x237dd0;
    virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = imac 0x278e60, m1 0x223314, ios 0x2392cc;
    virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = imac 0x278f30, m1 0x2233e8, ios 0x2393a0;
    virtual cocos2d::CCSpriteFrame* displayFrame() = imac 0x278fc0, m1 0x22348c, ios 0x239434;
    virtual void setDisplayFrameWithAnimationName(char const*, int) = m1 0x223394, imac 0x278ee0, ios 0x23934c;
    virtual void setTextureCoords(cocos2d::CCRect const&) = imac 0x2771d0, m1 0x221d08, ios 0x237dd8;
    virtual void updateBlendFunc() = m1 0x2235e8, imac 0x2791f0, ios 0x239590;
    virtual void setReorderChildDirtyRecursively() = imac 0x277dd0, m1 0x222788, ios 0x238824;
    virtual void setDirtyRecursively(bool) = imac 0x277e30, m1 0x2227f0, ios 0x23888c;

    virtual void setOpacity(unsigned char) = imac 0x2785e0, m1 0x222f2c, ios 0x238fc8;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x278d10, m1 0x2232c8, ios 0x239280;
    virtual void setColor(cocos2d::_ccColor3B const&) = imac 0x278830, m1 0x2230c8, ios 0x2390e4;
    virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = m1 0x22327c, imac 0x278bc0, ios 0x239234;
    virtual void setOpacityModifyRGB(bool) = imac 0x278a50, m1 0x223234, ios 0x2391ec;
    virtual bool isOpacityModifyRGB() = m1 0x22326c, imac 0x278ba0, ios 0x239224;

    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x279250, m1 0x223640, ios 0x2395e8;
    virtual cocos2d::CCTexture2D* getTexture() = m1 0x223780, imac 0x2793c0, ios 0x239728;
}

[[link(win, android)]]
class cocos2d::CCLabelBMFont : cocos2d::CCSpriteBatchNode, cocos2d::CCLabelProtocol, cocos2d::CCRGBAProtocol {
    CCLabelBMFont() = imac 0x5c0350, m1 0x4f5d58;

    static cocos2d::CCLabelBMFont* create(char const*, char const*) = imac 0x5bfed0, m1 0x4f58bc;
    static cocos2d::CCLabelBMFont* create(char const*, char const*, float) = m1 0x4f57fc, imac 0x5bfe20;
    static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment) = imac 0x5bfcd0, m1 0x4f5678;
    static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = imac 0x5bfd80, m1 0x4f573c;
    static cocos2d::CCLabelBMFont* create() = ios inline, m1 0x4f55f4, imac 0x5bfc60 {
    	auto pRet = new CCLabelBMFont();

    	if (pRet && pRet->init())
    	{
    		pRet->autorelease();
    		return pRet;
    	}

    	CC_SAFE_DELETE(pRet);
    	return nullptr;
    }
    static cocos2d::CCLabelBMFont* createBatched(char const*, char const*, cocos2d::CCArray*, int) = imac 0x5c0250, m1 0x4f5c40;
    static void purgeCachedData();

    bool initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = imac 0x5bff80, m1 0x4f5984;

    cocos2d::CCBMFontConfiguration* getConfiguration() const;
    int getExtraKerning() const;
    char const* getFntFile() = imac 0x5c3320, m1 0x4f8678;
    bool getIsBatched() const;
    float getLetterPosXLeft(cocos2d::CCSprite*, float, bool);
    float getLetterPosXRight(cocos2d::CCSprite*, float, bool);
    cocos2d::CCArray* getTargetArray() const;

    void setExtraKerning(int);
    void setFntFile(char const*) = imac 0x5c3240, m1 0x4f85a4;
    void setIsBatched(bool);
    void setTargetArray(cocos2d::CCArray*);
    void createFontChars() = imac 0x5c06b0, m1 0x4f6020;
    int kerningAmountForFirst(unsigned short, unsigned short);
    void limitLabelWidth(float, float, float) = imac 0x5c3360, m1 0x4f869c;

    ~CCLabelBMFont() = imac 0x5c0560, m1 0x4f5ee8;
    virtual bool init() = imac 0x5c0300, m1 0x4f5d08, ios 0x2fb298;
    virtual void setScaleX(float) = m1 0x4f854c, imac 0x5c3200, ios 0x2fd01c;
    virtual void setScaleY(float) = m1 0x4f8578, imac 0x5c3220, ios 0x2fd048;
    virtual void setScale(float) = m1 0x4f8520, imac 0x5c31e0, ios 0x2fcff0;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = imac 0x5c1a70, m1 0x4f7224, ios 0x2fc24c;
    virtual void setString(char const*) = m1 0x4f6810, imac 0x5c0fb0, ios 0x2fbbf8;
    virtual void setString(char const*, bool) = imac 0x5c1000, m1 0x4f6834, ios 0x2fbc1c;
    virtual char const* getString() = m1 0x4f6a60, imac 0x5c1230, ios 0x2fbdfc;
    virtual void setCString(char const*) = m1 0x4f6a98, imac 0x5c1280, ios 0x2fbe34;
    virtual void updateLabel() = imac 0x5c1ab0, m1 0x4f7278, ios 0x2fc2a0;
    virtual void setAlignment(cocos2d::CCTextAlignment) = imac 0x5c3180, m1 0x4f84f0, ios 0x2fcfc0;
    virtual void setWidth(float) = imac 0x5c31a0, m1 0x4f8500, ios 0x2fcfd0;
    virtual void setLineBreakWithoutSpace(bool) = m1 0x4f8510, imac 0x5c31c0, ios 0x2fcfe0;
    virtual void setString(unsigned short*, bool) = imac 0x5c1080, m1 0x4f68bc, ios 0x2fbca4;

    virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x4f6ac4, imac 0x5c12e0, ios 0x2fbe60;
    virtual cocos2d::_ccColor3B const& getColor() = m1 0x4f6aa4, imac 0x5c12a0, ios 0x2fbe40;
    virtual cocos2d::_ccColor3B const& getDisplayedColor() = m1 0x4f6ab4, imac 0x5c12c0, ios 0x2fbe50;
    virtual unsigned char getDisplayedOpacity() = m1 0x4f6c60, imac 0x5c1470, ios 0x2fbf40;
    virtual unsigned char getOpacity() = m1 0x4f6c50, imac 0x5c1450, ios 0x2fbf30;
    virtual void setOpacity(unsigned char) = m1 0x4f6c70, imac 0x5c1490, ios 0x2fbf50;
    virtual void setOpacityModifyRGB(bool) = imac 0x5c15d0, m1 0x4f6dc8, ios 0x2fbff0;
    virtual bool isOpacityModifyRGB() = m1 0x4f6f28, imac 0x5c1730, ios 0x2fc0a0;
    virtual bool isCascadeColorEnabled() = m1 0x4f71e4, imac 0x5c19f0, ios 0x2fc20c;
    virtual void setCascadeColorEnabled(bool) = m1 0x4f71f4, imac 0x5c1a10, ios 0x2fc21c;
    virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = imac 0x5c1850, m1 0x4f7050, ios 0x2fc140;
    virtual bool isCascadeOpacityEnabled() = m1 0x4f7204, imac 0x5c1a30, ios 0x2fc22c;
    virtual void setCascadeOpacityEnabled(bool) = m1 0x4f7214, imac 0x5c1a50, ios 0x2fc23c;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x5c1750, m1 0x4f6f38, ios 0x2fc0b0;

    //purgeCachedData = ios 0x30958c
}

[[link(win, android)]]
class cocos2d::CCActionManager : cocos2d::CCObject {
    void addAction(cocos2d::CCAction*, cocos2d::CCNode*, bool) = m1 0x1d4dfc, imac 0x221dd0;
    void pauseTarget(cocos2d::CCObject*) = imac 0x221b10, m1 0x1d4aec;
    void resumeTarget(cocos2d::CCObject*) = m1 0x1d4be8;
}

[[link(win, android)]]
class cocos2d::CCAnimate : cocos2d::CCActionInterval {
    static cocos2d::CCAnimate* create(cocos2d::CCAnimation*) = imac 0x3a90d0, m1 0x335390;

    bool initWithAnimation(cocos2d::CCAnimation*);

    cocos2d::CCAnimation* getAnimation() const;
    bool getRecenterChildren() const;
    bool getRecenterFrames() const;

    void setAnimation(cocos2d::CCAnimation*);
    void setRecenterChildren(bool);
    void setRecenterFrames(bool);

    // CCAnimate(cocos2d::CCAnimate const&);
    // CCAnimate();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a9660, m1 0x3357f8, ios 0x190be4;
    virtual void update(float) = imac 0x3a9960, m1 0x335aa4, ios 0x190e38;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3359f8, imac 0x3a98b0, ios 0x190d8c;
    virtual void stop() = imac 0x3a9920, m1 0x335a60, ios 0x190df4;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a9ba0, m1 0x335ca8, ios 0x191034;
}

[[link(win, android)]]
class cocos2d::CCAnimation : cocos2d::CCObject {
    // static cocos2d::CCAnimation* create(cocos2d::CCArray*, float);
    static cocos2d::CCAnimation* create(cocos2d::CCArray*, float, unsigned int) = m1 0x22e300, imac 0x284c00;
    static cocos2d::CCAnimation* create() = m1 0x22dffc, imac 0x2848d0;
    static cocos2d::CCAnimation* createWithSpriteFrames(cocos2d::CCArray*, float) = m1 0x22e128, imac 0x284a00;

    bool init() = m1 0x22e0cc, imac 0x2849b0;
    bool initWithAnimationFrames(cocos2d::CCArray*, float, unsigned int) = m1 0x22e3fc, imac 0x284d00;
    bool initWithSpriteFrames(cocos2d::CCArray*, float) = m1 0x22e1b0, imac 0x284a90;

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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x285040, m1 0x22e720, ios 0x1a7710;
    virtual float getDuration() = imac 0x285030, m1 0x22e714, ios 0x1a7704;
}

[[link(win, android)]]
class cocos2d::CCApplication : cocos2d::CCApplicationProtocol {
    static cocos2d::CCApplication* sharedApplication() = imac 0x314fe0, m1 0x2ab200;
    virtual int run();
    virtual void openURL(char const*) = imac 0x315dc0, m1 0x2aba20, ios 0x1af380;
}

[[link(win, android)]]
class cocos2d::CCArray : cocos2d::CCObject {
    // static cocos2d::CCArray* create(cocos2d::CCObject*, ...);
    // static cocos2d::CCArray* create();
    // static cocos2d::CCArray* createWithArray(cocos2d::CCArray*);
    // static cocos2d::CCArray* createWithCapacity(unsigned int);
    static cocos2d::CCArray* createWithContentsOfFile(char const*);
    static cocos2d::CCArray* createWithContentsOfFileThreadSafe(char const*);
    static cocos2d::CCArray* createWithObject(cocos2d::CCObject*);

    bool init() = imac 0x7094e0;
    bool initWithArray(cocos2d::CCArray*);
    // bool initWithCapacity(unsigned int);
    bool initWithObject(cocos2d::CCObject*);
    // bool initWithObjects(cocos2d::CCObject*, ...);

    // CCArray(cocos2d::CCArray const&);
    // CCArray(unsigned int);
    // CCArray();
    // void addObject(cocos2d::CCObject*);
    void addObjectNew(cocos2d::CCObject*);
    // void addObjectsFromArray(cocos2d::CCArray*);
    unsigned int capacity() const;
    // bool containsObject(cocos2d::CCObject*) const;
    // unsigned int count() const;
    void exchangeObject(cocos2d::CCObject*, cocos2d::CCObject*);
    void exchangeObjectAtIndex(unsigned int, unsigned int);
    // void fastRemoveObject(cocos2d::CCObject*);
    void fastRemoveObjectAtIndex(unsigned int) = imac 0x709f10, m1 0x629530;
    void fastRemoveObjectAtIndexChild(unsigned int);
    void fastRemoveObjectAtIndexNew(unsigned int);
    unsigned int indexOfObject(cocos2d::CCObject*) const;
    void insertObject(cocos2d::CCObject*, unsigned int);
    bool isEqualToArray(cocos2d::CCArray*);
    // cocos2d::CCObject* lastObject();
    // cocos2d::CCObject* objectAtIndex(unsigned int) = m1 0x6293a0, imac 0x709d40;
    cocos2d::CCObject* randomObject();
    void recreateNewIndexes();
    void reduceMemoryFootprint();
    // void removeAllObjects();
    // void removeLastObject(bool);
    void removeObject(cocos2d::CCObject*, bool);
    // void removeObjectAtIndex(unsigned int, bool);
    void removeObjectAtIndexChild(unsigned int, bool);
    void removeObjectsInArray(cocos2d::CCArray*);
    void replaceObjectAtIndex(unsigned int, cocos2d::CCObject*, bool);
    void reverseObjects();
    cocos2d::CCString* stringAtIndex(unsigned int) = imac 0x709d20;

    // virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios 0x249634, imac 0x70a140, m1 0x62971c;
    // virtual void acceptVisitor(cocos2d::CCDataVisitor&) = ios 0x2496f8, imac 0x70a240, m1 0x62981c;
}

[[link(win, android)]]
class cocos2d::CCDictionary : cocos2d::CCObject {
    static cocos2d::CCDictionary* create() = m1 0x294464, imac 0x2fc010;
    static cocos2d::CCDictionary* createWithContentsOfFile(char const*) = m1 0x294600, imac 0x2fc1a0;
    static cocos2d::CCDictionary* createWithContentsOfFileThreadSafe(char const*) = m1 0x2944e8, imac 0x2fc090;
    static cocos2d::CCDictionary* createWithDictionary(cocos2d::CCDictionary*);

    gd::string getFirstKey();

    void setObject(cocos2d::CCObject*, gd::string const&) = imac 0x2fa5f0, m1 0x292d74;
    void setObject(cocos2d::CCObject*, intptr_t) = imac 0x2faff0, m1 0x2935bc;
    void setObjectUnSafe(cocos2d::CCObject*, gd::string const&);
    //void setObjectUnSafe(cocos2d::CCObject*, int);

    // CCDictionary(cocos2d::CCDictionary const&);
    CCDictionary() = m1 0x292204, imac 0x2f9ab0, ios 0x41a508;
    ~CCDictionary() = m1 0x2923c8, imac 0x2f9cb0, ios 0x41a6a0;
    cocos2d::CCArray* allKeys() = imac 0x2f9d40, m1 0x292450;
    cocos2d::CCArray* allKeysForObject(cocos2d::CCObject*);
    char const* charForKey(gd::string const&);
    unsigned int count() = imac 0x2f9d20, m1 0x292434;
    cocos2d::CCObject* objectForKey(gd::string const&) = imac 0x2fa0b0, m1 0x29288c;
    cocos2d::CCObject* objectForKey(intptr_t) = imac 0x2fa440, m1 0x292b98;
    cocos2d::CCObject* randomObject();
    void removeAllObjects() = m1 0x292260, imac 0x2f9b10;
    void removeObjectForElememt(cocos2d::CCDictElement*) = imac 0x2fb910;
    void removeObjectForKey(gd::string const&) = imac 0x2fb510, m1 0x293a98;
    void removeObjectForKey(intptr_t) = imac 0x2fba60, m1 0x293f08;
    void removeObjectsForKeys(cocos2d::CCArray*);
    cocos2d::CCString const* valueForKey(gd::string const&) = imac 0x2fa030, m1 0x2927ec;
    cocos2d::CCString const* valueForKey(intptr_t) = imac 0x2fa570, m1 0x292cd4;
    bool writeToFile(char const*);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x2fbcf0, m1 0x294174, ios 0x41bfa4;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = m1 0x2945e8, imac 0x2fc180, ios 0x41c1c8;
}

[[link(win, android)]]
class cocos2d::CCRenderTexture : cocos2d::CCNode {
    static cocos2d::CCRenderTexture* create(int, int) = imac 0x5ddfa0, m1 0x510d58;
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat) = imac 0x5dda60, m1 0x510844;
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = imac 0x5ddb30;

    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat);
    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = m1 0x510a0c;

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
    CCRenderTexture();
    void begin() = imac 0x5de080, m1 0x510e4c;
    void beginWithClear(float, float, float, float, float, int, unsigned int) = imac 0x5de350, m1 0x5110d8;
    void beginWithClear(float, float, float, float) = imac 0x5de2b0, m1 0x511038;
    void beginWithClear(float, float, float, float, float) = imac 0x5de4f0, m1 0x511220;
    void beginWithClear(float, float, float, float, float, int) = imac 0x5de5d0;
    void clear(float, float, float, float);
    void clearDepth(float);
    void clearStencil(int);
    void end() = imac 0x5de5e0, m1 0x5112f8;
    void endToLua();
    bool isAutoDraw() const;
    void listenToBackground(cocos2d::CCObject*);
    void listenToForeground(cocos2d::CCObject*);
    cocos2d::CCImage* newCCImage(bool) = m1 0x5117a4, imac 0x5deb40;
    bool saveToFile(char const*);
    bool saveToFile(char const*, cocos2d::eImageFormat);
    void updateInternalScale(float, float);

    virtual void draw() = imac 0x5de890, m1 0x511588, ios 0x3b908c;
    virtual void visit() = m1 0x5114fc, imac 0x5de800, ios 0x3b9000;
    virtual cocos2d::CCSprite* getSprite() = m1 0x51079c, imac 0x5dd970, ios 0x3b8774;
    virtual void setSprite(cocos2d::CCSprite*) = m1 0x5107a4, imac 0x5dd980, ios 0x3b877c;
}

[[link(win, android)]]
class cocos2d::CCRepeat : cocos2d::CCActionInterval {
    static cocos2d::CCRepeat* create(cocos2d::CCFiniteTimeAction*, unsigned int) = imac 0x3a3110, m1 0x32fe54;

    bool initWithAction(cocos2d::CCFiniteTimeAction*, unsigned int);

    cocos2d::CCFiniteTimeAction* getInnerAction();

    void setInnerAction(cocos2d::CCFiniteTimeAction*);

    // CCRepeat(cocos2d::CCRepeat const&);
    // CCRepeat();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x32ffdc, imac 0x3a32a0;
    virtual void update(float) = imac 0x3a3540, m1 0x330274;
    virtual bool isDone() = imac 0x3a3670, m1 0x3303e4;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x3a34c0, m1 0x3301ec;
    virtual void stop() = m1 0x330244, imac 0x3a3510;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a3680, m1 0x3303f4;
}

[[link(win, android)]]
class cocos2d::CCRepeatForever : cocos2d::CCActionInterval {
    static cocos2d::CCRepeatForever* create(cocos2d::CCActionInterval*) = m1 0x3304dc, imac 0x3a3770;

    bool initWithAction(cocos2d::CCActionInterval*);

    cocos2d::CCActionInterval* getInnerAction();

    void setInnerAction(cocos2d::CCActionInterval*);

    // CCRepeatForever(cocos2d::CCRepeatForever const&);
    // CCRepeatForever();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a3800, m1 0x330578, ios 0x18e01c;
    virtual bool isDone() = m1 0x330728, imac 0x3a3990, ios 0x18e1c0;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x330650, imac 0x3a38e0, ios 0x18e0e8;
    virtual void step(float) = imac 0x3a3920, m1 0x330690, ios 0x18e128;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a39a0, m1 0x330730, ios 0x18e1c8;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInT : cocos2d::CCTransitionMoveInL {
    static cocos2d::CCTransitionMoveInT* create(float, cocos2d::CCScene*) = imac 0xd6340, m1 0xbe858;

    // CCTransitionMoveInT(cocos2d::CCTransitionMoveInT const&);
    // CCTransitionMoveInT();
}

[[link(win, android)]]
class cocos2d::CCTransitionFade : cocos2d::CCTransitionScene {
    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*) = m1 0xc122c, imac 0xd9090;
    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&) = imac 0xd8ff0;

    // CCTransitionFade(cocos2d::CCTransitionFade const&);
    // CCTransitionFade();

    virtual void onEnter() = imac 0xd9180, m1 0xc1318, ios 0x1cef04;
    virtual void onExit() = imac 0xd92b0, m1 0xc1454, ios 0x1cf008;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xd9160, m1 0xc12f0, ios 0x1ceedc;
    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&) = imac 0xd9110, m1 0xc12ac, ios 0x1cee98;
}

[[link(win, android)]]
class cocos2d::CCTransitionRotoZoom : cocos2d::CCTransitionScene {
    static cocos2d::CCTransitionRotoZoom* create(float, cocos2d::CCScene*) = imac 0xd5550;

    // CCTransitionRotoZoom(cocos2d::CCTransitionRotoZoom const&);
    // CCTransitionRotoZoom();

    virtual void onEnter() = imac 0xd56c0, m1 0xbdccc;
}

[[link(win, android)]]
class cocos2d::CCTransitionScene : cocos2d::CCScene {
    // CCTransitionScene(cocos2d::CCTransitionScene const&);
    // CCTransitionScene();

    ~CCTransitionScene() = imac 0xd4e00, m1 0xbd41c;

    virtual void onEnter() = imac 0xd5240, m1 0xbd884, ios 0x1ceaf4;
    virtual void onExit() = imac 0xd5290, m1 0xbd8d8, ios 0x1ceb48;
    virtual void cleanup() = imac 0xd52f0, m1 0xbd92c, ios 0x1ceb9c;
    virtual void draw() = imac 0xd4ff0, m1 0xbd638, ios 0x1ce8bc;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xd4f20, m1 0xbd540, ios 0x1ce7fc;
    virtual void sceneOrder() = m1 0xbd62c, imac 0xd4fe0, ios 0x1ce8b0;
}

[[link(win, android)]]
class cocos2d::CCTransitionCrossFade : cocos2d::CCTransitionScene {
	static cocos2d::CCTransitionCrossFade* create(float, cocos2d::CCScene*) = imac 0xd9450;

	// CCTransitionCrossFade(cocos2d::CCTransitionCrossFade const&);
	// CCTransitionCrossFade();

	virtual void onEnter() = m1 0xc166c, imac 0xd94e0;
	virtual void onExit() = m1 0xc19a4, imac 0xd9820;
	virtual void draw() = m1 0xc1668, imac 0xd94d0;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeBL : cocos2d::CCTransitionFadeTR {
	static cocos2d::CCTransitionFadeBL* create(float, cocos2d::CCScene*) = imac 0xda550;

	// CCTransitionFadeBL(cocos2d::CCTransitionFadeBL const&);
	// CCTransitionFadeBL();

	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = m1 0xc264c, imac 0xda5e0;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeDown : cocos2d::CCTransitionFadeTR {
	static cocos2d::CCTransitionFadeDown* create(float, cocos2d::CCScene*) = imac 0xda950;

	// CCTransitionFadeDown(cocos2d::CCTransitionFadeDown const&);
	// CCTransitionFadeDown();

	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = m1 0xc29dc, imac 0xda9e0;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeTR : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionFadeTR* create(float, cocos2d::CCScene*) = imac 0xda220;

	// CCTransitionFadeTR(cocos2d::CCTransitionFadeTR const&);
	// CCTransitionFadeTR();

	virtual void onEnter() = m1 0xc2378, imac 0xda2c0;
	virtual void sceneOrder() = m1 0xc2370, imac 0xda2b0;
	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = m1 0xc2474, imac 0xda3c0;

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xc2480, imac 0xda3e0;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeUp : cocos2d::CCTransitionFadeTR {
	static cocos2d::CCTransitionFadeUp* create(float, cocos2d::CCScene*) = imac 0xda750;

	// CCTransitionFadeUp(cocos2d::CCTransitionFadeUp const&);
	// CCTransitionFadeUp();

	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = m1 0xc2814, imac 0xda7e0;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipAngular : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionFlipAngular* create(float, cocos2d::CCScene*) = imac 0xd8150;
	static cocos2d::CCTransitionFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionFlipAngular(cocos2d::CCTransitionFlipAngular const&);
	// CCTransitionFlipAngular();

	virtual void onEnter() = m1 0xc0234, imac 0xd7f20;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipX : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*) = imac 0xd7990;
	static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionFlipX(cocos2d::CCTransitionFlipX const&);
	// CCTransitionFlipX();

	virtual void onEnter() = m1 0xbfb18, imac 0xd7770;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipY : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*) = imac 0xd7d70;
	static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionFlipY(cocos2d::CCTransitionFlipY const&);
	// CCTransitionFlipY();

	virtual void onEnter() = m1 0xbfea8, imac 0xd7b40;
}

[[link(win, android)]]
class cocos2d::CCTransitionJumpZoom : cocos2d::CCTransitionScene {
	static cocos2d::CCTransitionJumpZoom* create(float, cocos2d::CCScene*) = imac 0xd59a0;

	// CCTransitionJumpZoom(cocos2d::CCTransitionJumpZoom const&);
	// CCTransitionJumpZoom();

	virtual void onEnter() = m1 0xbe00c, imac 0xd5a20;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInB : cocos2d::CCTransitionMoveInL {
	static cocos2d::CCTransitionMoveInB* create(float, cocos2d::CCScene*) = imac 0xd6580;

	// CCTransitionMoveInB(cocos2d::CCTransitionMoveInB const&);
	// CCTransitionMoveInB();

	virtual void initScenes() = m1 0xbeb14, imac 0xd6610;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInL : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionMoveInL* create(float, cocos2d::CCScene*) = imac 0xd5d90;

	// CCTransitionMoveInL(cocos2d::CCTransitionMoveInL const&);
	// CCTransitionMoveInL();

	virtual void onEnter() = m1 0xbe3a8, imac 0xd5e20;
	virtual void initScenes() = m1 0xbe4d4, imac 0xd5f50;
	virtual cocos2d::CCActionInterval* action() = m1 0xbe484, imac 0xd5ef0;

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xbe4c4, imac 0xd5f30;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInR : cocos2d::CCTransitionMoveInL {
	static cocos2d::CCTransitionMoveInR* create(float, cocos2d::CCScene*) = imac 0xd6100;

	// CCTransitionMoveInR(cocos2d::CCTransitionMoveInR const&);
	// CCTransitionMoveInR();

	virtual void initScenes() = m1 0xbe6ec, imac 0xd6190;
}

[[link(win, android)]]
class cocos2d::CCTransitionShrinkGrow : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionShrinkGrow* create(float, cocos2d::CCScene*) = imac 0xd73f0;

	// CCTransitionShrinkGrow(cocos2d::CCTransitionShrinkGrow const&);
	// CCTransitionShrinkGrow();

	virtual void onEnter() = m1 0xbf874, imac 0xd7480;

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xbf9fc, imac 0xd7600;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInB : cocos2d::CCTransitionSlideInL {
	static cocos2d::CCTransitionSlideInB* create(float, cocos2d::CCScene*) = imac 0xd7130;

	// CCTransitionSlideInB(cocos2d::CCTransitionSlideInB const&);
	// CCTransitionSlideInB();

	virtual void sceneOrder() = m1 0xbf5e8, imac 0xd71c0;
	virtual void initScenes() = m1 0xbf5f4, imac 0xd71d0;
	virtual cocos2d::CCActionInterval* action() = m1 0xbf658, imac 0xd7240;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInL : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionSlideInL* create(float, cocos2d::CCScene*) = imac 0xd69d0;

	// CCTransitionSlideInL(cocos2d::CCTransitionSlideInL const&);
	// CCTransitionSlideInL();

	virtual void onEnter() = m1 0xbec84, imac 0xd67c0;
	virtual void sceneOrder() = m1 0xbed8c, imac 0xd68b0;
	virtual void initScenes() = m1 0xbed94, imac 0xd68c0;
	virtual cocos2d::CCActionInterval* action() = m1 0xbedf8, imac 0xd6930;

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xbee58, imac 0xd6990;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInR : cocos2d::CCTransitionSlideInL {
	static cocos2d::CCTransitionSlideInR* create(float, cocos2d::CCScene*) = imac 0xd6bb0;

	// CCTransitionSlideInR(cocos2d::CCTransitionSlideInR const&);
	// CCTransitionSlideInR();

	virtual void sceneOrder() = m1 0xbf0d4, imac 0xd6c40;
	virtual void initScenes() = m1 0xbf0e0, imac 0xd6c50;
	virtual cocos2d::CCActionInterval* action() = m1 0xbf140, imac 0xd6cb0;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInT : cocos2d::CCTransitionSlideInL {
	static cocos2d::CCTransitionSlideInT* create(float, cocos2d::CCScene*) = imac 0xd6e70;

	// CCTransitionSlideInT(cocos2d::CCTransitionSlideInT const&);
	// CCTransitionSlideInT();

	virtual void sceneOrder() = m1 0xbf360, imac 0xd6f00;
	virtual void initScenes() = m1 0xbf368, imac 0xd6f10;
	virtual cocos2d::CCActionInterval* action() = m1 0xbf3c8, imac 0xd6f70;
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitCols : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionSplitCols* create(float, cocos2d::CCScene*) = imac 0xd9cf0;

	// CCTransitionSplitCols(cocos2d::CCTransitionSplitCols const&);
	// CCTransitionSplitCols();

	virtual void onEnter() = m1 0xc1ea4, imac 0xd9d80;
	virtual cocos2d::CCActionInterval* action() = m1 0xc1fb8, imac 0xd9e70;

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xc1fcc, imac 0xd9e90;
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitRows : cocos2d::CCTransitionSplitCols {
	static cocos2d::CCTransitionSplitRows* create(float, cocos2d::CCScene*) = imac 0xda040;

	// CCTransitionSplitRows(cocos2d::CCTransitionSplitRows const&);
	// CCTransitionSplitRows();

	virtual cocos2d::CCActionInterval* action() = m1 0xc20f8, imac 0xda020;
}

[[link(win, android)]]
class cocos2d::CCTransitionTurnOffTiles : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionTurnOffTiles* create(float, cocos2d::CCScene*) = imac 0xd99e0;

	// CCTransitionTurnOffTiles(cocos2d::CCTransitionTurnOffTiles const&);
	// CCTransitionTurnOffTiles();

	virtual void onEnter() = m1 0xc1bd8, imac 0xd9a80;
	virtual void sceneOrder() = m1 0xc1bd0, imac 0xd9a70;

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xc1cd8, imac 0xd9b80;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipAngular : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*) = imac 0xd8e40;
	static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionZoomFlipAngular(cocos2d::CCTransitionZoomFlipAngular const&);
	// CCTransitionZoomFlipAngular();

	virtual void onEnter() = m1 0xc0d98, imac 0xd8b90;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipX : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*) = imac 0xd8590;
	static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionZoomFlipX(cocos2d::CCTransitionZoomFlipX const&);
	// CCTransitionZoomFlipX();

	virtual void onEnter() = m1 0xc05cc, imac 0xd8300;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipY : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*) = imac 0xd89e0;
	static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionZoomFlipY(cocos2d::CCTransitionZoomFlipY const&);
	// CCTransitionZoomFlipY();

	virtual void onEnter() = m1 0xc09b4, imac 0xd8740;
}

[[link(win, android)]]
class cocos2d::CCTurnOffTiles : cocos2d::CCTiledGrid3DAction {
	static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&);
	static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&, unsigned int);

	// CCTurnOffTiles(cocos2d::CCTurnOffTiles const&);
	// CCTurnOffTiles();
	void shuffle(unsigned int*, unsigned int);
	void turnOffTile(cocos2d::CCPoint const&);
	void turnOnTile(cocos2d::CCPoint const&);

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b3cc4, imac 0x7a1970;
	virtual void update(float) = m1 0x6b4068, imac 0x7a1d30;
	virtual void startWithTarget(cocos2d::CCNode*) = m1 0x6b3f64, imac 0x7a1c20;
	virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int) = m1 0x6b3c94, imac 0x7a1940;
}

[[link(win, android)]]
class cocos2d::CCBlink : cocos2d::CCActionInterval {
    static cocos2d::CCBlink* create(float, unsigned int) = imac 0x3a7800, m1 0x333d14;

    bool initWithDuration(float, unsigned int);

    // CCBlink(cocos2d::CCBlink const&);
    // CCBlink();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a7960, m1 0x333e4c, ios 0x18fe10;
    virtual void update(float) = imac 0x3a7a70, m1 0x333f44, ios 0x18fefc;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x333e08, imac 0x3a7920, ios 0x18fdcc;
    virtual void stop() = imac 0x3a78f0, m1 0x333dd4, ios 0x18fd98;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a7af0, m1 0x333fcc, ios 0x18ff84;
}

[[link(win, android)]]
class cocos2d::CCCallFunc : cocos2d::CCActionInstant {
    static cocos2d::CCCallFunc* create(cocos2d::CCObject*, cocos2d::SEL_CallFunc) = imac 0x7972a0, m1 0x6aa418;
}

[[link(win, android)]]
class cocos2d::CCCallFuncN : cocos2d::CCCallFunc, cocos2d::TypeInfo {
    static cocos2d::CCCallFuncN* create(cocos2d::CCObject*, cocos2d::SEL_CallFuncN) = imac 0x7976c0, m1 0x6aa86c;
}

[[link(win, android)]]
class cocos2d::CCCallFuncO : cocos2d::CCCallFunc, cocos2d::TypeInfo {
    static cocos2d::CCCallFuncO* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*) = imac 0x797da0, m1 0x6aae4c;

    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*);

    cocos2d::CCObject* getObject();

    void setObject(cocos2d::CCObject*);

    // CCCallFuncO(cocos2d::CCCallFuncO const&);
    // CCCallFuncO();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x797ef0, m1 0x6aaf78, ios 0x1b157c;
    virtual void execute() = imac 0x797d60, m1 0x6aae18, ios 0x1b143c;
}

[[link(win, android)]]
class cocos2d::CCClippingNode : cocos2d::CCNode {
    static cocos2d::CCClippingNode* create() = ios inline, imac 0x708da0, m1 0x628634 {
    	auto pRet = new CCClippingNode();

    	if (pRet->init())
    	{
    		pRet->autorelease();
    		return pRet;
    	}

    	delete pRet;
    	return nullptr;
    }
    static cocos2d::CCClippingNode* create(cocos2d::CCNode* stencil) = ios inline, imac 0x708e30, m1 0x6286bc {
    	auto pRet = new CCClippingNode();

    	if (pRet->init(stencil))
    	{
    		pRet->autorelease();
    		return pRet;
    	}

    	delete pRet;
    	return nullptr;
    }

    CCClippingNode() = ios inline {
    	m_pStencil = nullptr;
    	m_fAlphaThreshold = 0.0f;
    	m_bInverted = false;
    }
    virtual ~CCClippingNode() = ios inline {
    	CC_SAFE_RELEASE(m_pStencil);
    }

    // in normal cocos this is just a static func at the top of the file: https://github.com/cocos2d/cocos2d-x/blob/v2/cocos2dx/misc_nodes/CCClippingNode.cpp#L40
    inline void setProgram(CCNode* n, CCGLProgram* p) {
        n->setShaderProgram(p);
        if (!n->getChildren()) return;

        CCObject* pObj = NULL;
        CCARRAY_FOREACH(n->getChildren(), pObj)
        {
            // setProgram((CCNode*)pObj, p); // this causes build to fail
        }
    }

    virtual bool init() = ios inline, m1 0x62875c, imac 0x708ee0 {
    	return init(nullptr);
    }

    virtual bool init(cocos2d::CCNode* pStencil) = ios inline, m1 0x62876c, imac 0x708f00 {
    	CC_SAFE_RELEASE(m_pStencil);
    	m_pStencil = pStencil;
    	CC_SAFE_RETAIN(m_pStencil);

    	m_fAlphaThreshold = 1;
    	m_bInverted = false;
    	// get (only once) the number of bits of the stencil buffer
    	static bool once = true;

    	if (once)
    	{
    		//glGetIntegerv(GL_STENCIL_BITS, &g_sStencilBits);
    		//if (g_sStencilBits <= 0)
    		//{
    		//	CCLOG("Stencil buffer is not enabled.");
    		//}
    		once = false;
    	}

    	return true;
    }

    virtual void onEnter() = ios inline, m1 0x6287dc, imac 0x708f70 {
    	CCNode::onEnter();
    		m_pStencil->onEnter();
    }
    virtual void onEnterTransitionDidFinish() = ios inline, m1 0x628808, imac 0x708fa0 {
    	CCNode::onEnterTransitionDidFinish();
    		m_pStencil->onEnterTransitionDidFinish();
    }
    virtual void onExit() = ios inline, m1 0x628864, imac 0x709000 {
    	m_pStencil->onExit();
    		CCNode::onExit();
    }
    virtual void onExitTransitionDidStart() = ios inline, m1 0x628834, imac 0x708fd0 {
    	m_pStencil->onExitTransitionDidStart();
    		CCNode::onExitTransitionDidStart();
    }

    virtual void visit() = ios inline, imac 0x709030, m1 0x628894 {
    	// if stencil buffer disabled
    	//if (g_sStencilBits < 1)
    	//{
    	//	// draw everything, as if there where no stencil
    	//	CCNode::visit();
    	//	return;
    	//}

    	// return fast (draw nothing, or draw everything if in inverted mode) if:
    	// - nil stencil node
    	// - or stencil node invisible:
    	if (!m_pStencil || !m_pStencil->isVisible())
    	{
    		if (m_bInverted)
    		{
    			// draw everything
    			CCNode::visit();
    		}
    		return;
    	}

    	// store the current stencil layer (position in the stencil buffer),
    	// this will allow nesting up to n CCClippingNode,
    	// where n is the number of bits of the stencil buffer.
    	static GLint layer = -1;

    	// all the _stencilBits are in use?
    	if (false) // this definetly wont break anything :clueless: //if (layer + 1 == g_sStencilBits)
    	{
    		// warn once
    		static bool once = true;
    		if (once)
    		{
    			char warning[200] = {0};
    			//snprintf(warning, sizeof(warning), "Nesting more than %d stencils is not supported. Everything will be drawn without stencil for this node and its childs.", g_sStencilBits);
    			CCLOG("%s", warning);

    			once = false;
    		}
    		// draw everything, as if there where no stencil
    		CCNode::visit();
    		return;
    	}

    	///////////////////////////////////
    	// INIT

    	// increment the current layer
    	layer++;

    	// mask of the current layer (ie: for layer 3: 00000100)
    	GLint mask_layer = 0x1 << layer;
    	// mask of all layers less than the current (ie: for layer 3: 00000011)
    	GLint mask_layer_l = mask_layer - 1;
    	// mask of all layers less than or equal to the current (ie: for layer 3: 00000111)
    	GLint mask_layer_le = mask_layer | mask_layer_l;

    	// manually save the stencil state
    	GLboolean currentStencilEnabled = GL_FALSE;
    	GLuint currentStencilWriteMask = ~0;
    	GLenum currentStencilFunc = GL_ALWAYS;
    	GLint currentStencilRef = 0;
    	GLuint currentStencilValueMask = ~0;
    	GLenum currentStencilFail = GL_KEEP;
    	GLenum currentStencilPassDepthFail = GL_KEEP;
    	GLenum currentStencilPassDepthPass = GL_KEEP;
    	currentStencilEnabled = glIsEnabled(GL_STENCIL_TEST);
    	glGetIntegerv(GL_STENCIL_WRITEMASK, (GLint *)&currentStencilWriteMask);
    	glGetIntegerv(GL_STENCIL_FUNC, (GLint *)&currentStencilFunc);
    	glGetIntegerv(GL_STENCIL_REF, &currentStencilRef);
    	glGetIntegerv(GL_STENCIL_VALUE_MASK, (GLint *)&currentStencilValueMask);
    	glGetIntegerv(GL_STENCIL_FAIL, (GLint *)&currentStencilFail);
    	glGetIntegerv(GL_STENCIL_PASS_DEPTH_FAIL, (GLint *)&currentStencilPassDepthFail);
    	glGetIntegerv(GL_STENCIL_PASS_DEPTH_PASS, (GLint *)&currentStencilPassDepthPass);

    	// enable stencil use
    	glEnable(GL_STENCIL_TEST);
    	// check for OpenGL error while enabling stencil test
    	CHECK_GL_ERROR_DEBUG();

    	// all bits on the stencil buffer are readonly, except the current layer bit,
    	// this means that operation like glClear or glStencilOp will be masked with this value
    	glStencilMask(mask_layer);

    	//glClear(GL_STENCIL_BUFFER_BIT);
    	// manually save the depth test state
    	//GLboolean currentDepthTestEnabled = GL_TRUE;
    	GLboolean currentDepthWriteMask = GL_TRUE;
    	//currentDepthTestEnabled = glIsEnabled(GL_DEPTH_TEST);
    	glGetBooleanv(GL_DEPTH_WRITEMASK, &currentDepthWriteMask);

    	// disable depth test while drawing the stencil
    	//glDisable(GL_DEPTH_TEST);
    	// disable update to the depth buffer while drawing the stencil,
    	// as the stencil is not meant to be rendered in the real scene,
    	// it should never prevent something else to be drawn,
    	// only disabling depth buffer update should do
    	glDepthMask(GL_FALSE);

    	///////////////////////////////////
    	// CLEAR STENCIL BUFFER

    	// manually clear the stencil buffer by drawing a fullscreen rectangle on it
    	// setup the stencil test func like this:
    	// for each pixel in the fullscreen rectangle
    	//     never draw it into the frame buffer
    	//     if not in inverted mode: set the current layer value to 0 in the stencil buffer
    	//     if in inverted mode: set the current layer value to 1 in the stencil buffer
    	glStencilFunc(GL_NEVER, mask_layer, mask_layer);
    	glStencilOp(!m_bInverted ? GL_ZERO : GL_REPLACE, GL_KEEP, GL_KEEP);

    	// draw a fullscreen solid rectangle to clear the stencil buffer
    	//ccDrawSolidRect(CCPointZero, ccpFromSize([[CCDirector sharedDirector] winSize]), ccc4f(1, 1, 1, 1));
    	ccDrawSolidRect(CCPointZero, ccpFromSize(CCDirector::sharedDirector()->getWinSize()), ccc4f(1, 1, 1, 1));

    	///////////////////////////////////
    	// DRAW CLIPPING STENCIL

    	// setup the stencil test func like this:
    	// for each pixel in the stencil node
    	//     never draw it into the frame buffer
    	//     if not in inverted mode: set the current layer value to 1 in the stencil buffer
    	//     if in inverted mode: set the current layer value to 0 in the stencil buffer
    	glStencilFunc(GL_NEVER, mask_layer, mask_layer);
    	glStencilOp(!m_bInverted ? GL_REPLACE : GL_ZERO, GL_KEEP, GL_KEEP);

    	// enable alpha test only if the alpha threshold < 1,
    	// indeed if alpha threshold == 1, every pixel will be drawn anyways
    #if (CC_TARGET_PLATFORM == CC_PLATFORM_MAC || CC_TARGET_PLATFORM == CC_PLATFORM_WIN32 || CC_TARGET_PLATFORM == CC_PLATFORM_LINUX)
    	GLboolean currentAlphaTestEnabled = GL_FALSE;
    	GLenum currentAlphaTestFunc = GL_ALWAYS;
    	GLclampf currentAlphaTestRef = 1;
    #endif
    	if (m_fAlphaThreshold < 1) {
    #if (CC_TARGET_PLATFORM == CC_PLATFORM_MAC || CC_TARGET_PLATFORM == CC_PLATFORM_WIN32 || CC_TARGET_PLATFORM == CC_PLATFORM_LINUX)
    		// manually save the alpha test state
    		currentAlphaTestEnabled = glIsEnabled(GL_ALPHA_TEST);
    		glGetIntegerv(GL_ALPHA_TEST_FUNC, (GLint *)&currentAlphaTestFunc);
    		glGetFloatv(GL_ALPHA_TEST_REF, &currentAlphaTestRef);
    		// enable alpha testing
    		glEnable(GL_ALPHA_TEST);
    		// check for OpenGL error while enabling alpha test
    		CHECK_GL_ERROR_DEBUG();
    		//pixel will be drawn only if greater than an alpha threshold
    		glAlphaFunc(GL_GREATER, m_fAlphaThreshold);
    #else
    		// since glAlphaTest do not exists in OES, use a shader that writes
    		// pixel only if greater than an alpha threshold
    		CCGLProgram *program = CCShaderCache::sharedShaderCache()->programForKey(kCCShader_PositionTextureColorAlphaTest);
    		GLint alphaValueLocation = glGetUniformLocation(program->getProgram(), kCCUniformAlphaTestValue);
    		// set our alphaThreshold
    		program->use();
    		program->setUniformLocationWith1f(alphaValueLocation, m_fAlphaThreshold);
    		// we need to recursively apply this shader to all the nodes in the stencil node
    		// XXX: we should have a way to apply shader to all nodes without having to do this
    		// setProgram(m_pStencil, program); // this causes fail

    #endif
    	}

    	// draw the stencil node as if it was one of our child
    	// (according to the stencil test func/op and alpha (or alpha shader) test)
    	kmGLPushMatrix();
    	transform();
    	m_pStencil->visit();
    	kmGLPopMatrix();

    	// restore alpha test state
    	if (m_fAlphaThreshold < 1)
    	{
    #if (CC_TARGET_PLATFORM == CC_PLATFORM_MAC || CC_TARGET_PLATFORM == CC_PLATFORM_WIN32 || CC_TARGET_PLATFORM == CC_PLATFORM_LINUX)
    		// manually restore the alpha test state
    		glAlphaFunc(currentAlphaTestFunc, currentAlphaTestRef);
    		if (!currentAlphaTestEnabled)
    		{
    			glDisable(GL_ALPHA_TEST);
    		}
    #else
    		// XXX: we need to find a way to restore the shaders of the stencil node and its childs
    #endif
    	}
    }

    cocos2d::CCNode* getStencil() const = ios inline {
    	return m_pStencil;
    }
    void setStencil(cocos2d::CCNode* pStencil) = ios inline, imac 0x7093a0, m1 0x628bc4 {
    	CC_SAFE_RELEASE(m_pStencil);
    	m_pStencil = pStencil;
    	CC_SAFE_RETAIN(m_pStencil);
    }

    float getAlphaThreshold() const = ios inline {
    	return m_fAlphaThreshold;
    }
    void setAlphaThreshold(float fAlphaThreshold) = ios inline, imac 0x7093f0, m1 0x628c10 {
    	m_fAlphaThreshold = fAlphaThreshold;
    }

    bool isInverted() const = ios inline {
    	return m_bInverted;
    }
    void setInverted(bool bInverted) = ios inline, imac 0x709410, m1 0x628c20 {
    	m_bInverted = bInverted;
    }
}

[[link(win, android)]]
class cocos2d::CCDrawNode : cocos2d::CCNodeRGBA {
    static cocos2d::CCDrawNode* create() = imac 0x5f94f0, m1 0x528650;

    cocos2d::_ccBlendFunc getBlendFunc() const;

    void setBlendFunc(cocos2d::_ccBlendFunc const&) = imac 0x5fb270, m1 0x52a104;

    // CCDrawNode(cocos2d::CCDrawNode const&);
    CCDrawNode() = m1 0x528418, imac 0x5f9230;
    ~CCDrawNode() = m1 0x528574, imac 0x5f93c0;
    void clear() = imac 0x5fb240, m1 0x52a0ec;
    void drawCircle(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&, unsigned int) = imac 0x5fb090, m1 0x529f50;
    void drawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&);
    void drawDot(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&) = imac 0x5f99d0, m1 0x528ae8;
    bool drawLines(cocos2d::CCPoint*, unsigned int, float, cocos2d::_ccColor4F const&) = imac 0x5fb010, m1 0x529ed0;
    bool drawPolygon(cocos2d::CCPoint*, unsigned int, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&) = imac 0x5fa0e0, m1 0x5290cc;
    void drawPreciseCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&) = imac 0x5f9bb0, m1 0x528ce8;
    bool drawRect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&) = imac 0x5faee0, m1 0x529d94;
    void drawSegment(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&) = imac 0x5fa890, m1 0x5298c0;
    void ensureCapacity(unsigned int) = imac 0x5f95c0, m1 0x528728;
    void listenBackToForeground(cocos2d::CCObject*) = imac 0x5fb280;
    void render() = imac 0x5f9770, m1 0x5288b4;

    virtual bool init() = imac 0x5f9610, m1 0x52877c, ios 0x45b68;
    virtual void draw() = m1 0x52893c, imac 0x5f9800, ios 0x45cf8;
}

[[link(win, android)]]
class cocos2d::CCSpriteBatchNode : cocos2d::CCNode, cocos2d::CCTextureProtocol {
    static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int) = m1 0x132d50, imac 0x165920;

    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x165a10, m1 0x132e04;

    CCSpriteBatchNode() = imac 0x165ce0, m1 0x1330c8;
    ~CCSpriteBatchNode() = imac 0x165d90, m1 0x133148;

    virtual bool init() = imac 0x165c90, m1 0x13306c, ios 0x1d8020;
    virtual void addChild(cocos2d::CCNode*) = imac 0x166160, m1 0x133518, ios 0x1d83e0;
    virtual void addChild(cocos2d::CCNode*, int) = imac 0x166170, m1 0x13351c, ios 0x1d83e4;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x165f00, m1 0x133290, ios 0x1d81b8;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x1661e0, m1 0x1335ac, ios 0x1d845c;
    virtual void removeAllChildrenWithCleanup(bool) = m1 0x133818, imac 0x1664c0, ios 0x1d85ec;
    virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x166180, m1 0x133520, ios 0x1d83e8;
    virtual void sortAllChildren() = imac 0x166570, m1 0x1338b8, ios 0x1d868c;
    virtual void draw() = imac 0x166d50, m1 0x133e58, ios 0x1d8a04;
    virtual void visit() = imac 0x165e60, m1 0x1331ec, ios 0x1d8114;

    virtual void setBlendFunc(cocos2d::_ccBlendFunc) = m1 0x1346c4, imac 0x1675c0, ios 0x1d8bb4;
    virtual cocos2d::_ccBlendFunc getBlendFunc() = m1 0x1346d4, imac 0x1675e0, ios 0x1d8bc4;
    virtual cocos2d::CCTexture2D* getTexture() = m1 0x1346e4, imac 0x167600, ios 0x1d8bd4;
    virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x134704, imac 0x167630, ios 0x1d8bf4;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrame : cocos2d::CCObject {
    static cocos2d::CCSpriteFrame* create(char const* filename, cocos2d::CCRect const& rect) = ios inline, m1 0x2d9348, imac 0x343d10 {
    	CCRect rectInPixels = CC_RECT_POINTS_TO_PIXELS( rect );
    	return create(filename, rect, false, CCPointZero, rectInPixels.size);
    }
    static cocos2d::CCSpriteFrame* create(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);
    static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = m1 0x2d94f4, imac 0x343f20;
    static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);

    bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
    bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x344270, m1 0x2d97ac;
    bool initWithTextureFilename(char const* filename, cocos2d::CCRect const& rect) = ios inline {
    	CCRect rectInPixels = CC_RECT_POINTS_TO_PIXELS( rect );
    		return initWithTextureFilename(filename, rectInPixels, false, CCPointZero, rectInPixels.size);
    }
    bool initWithTextureFilename(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x3445a0, m1 0x2d9a18;

    gd::string getFrameName() const = m1 inline, imac inline {
    	return m_strFrameName;
    }
    cocos2d::CCPoint const& getOffset();
    cocos2d::CCPoint const& getOffsetInPixels();
    cocos2d::CCSize const& getOriginalSize();
    cocos2d::CCSize const& getOriginalSizeInPixels();
    cocos2d::CCRect const& getRect();
    cocos2d::CCRect const& getRectInPixels();
    cocos2d::CCTexture2D* getTexture() = imac 0x344d90, m1 0x2da058;

    void setFrameName(gd::string);
    void setOffset(cocos2d::CCPoint const&) = imac 0x344c60, m1 0x2d9f78;
    void setOffsetInPixels(cocos2d::CCPoint const&) = imac 0x344d00, m1 0x2d9fec;
    void setOriginalSize(cocos2d::CCSize const&);
    void setOriginalSizeInPixels(cocos2d::CCSize const&);
    void setRect(cocos2d::CCRect const&) = imac 0x344a90, m1 0x2d9e34;
    void setRectInPixels(cocos2d::CCRect const&) = imac 0x344b70, m1 0x2d9ed0;
    void setRotated(bool);
    void setTexture(cocos2d::CCTexture2D*) = imac 0x344a50, m1 0x2d9df0;

    // CCSpriteFrame(cocos2d::CCSpriteFrame const&);
    // CCSpriteFrame();
    // ~CCSpriteFrame() = ios 0x25de00;

    bool isRotated();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3448f0, m1 0x2d9cd8, ios 0x24d4ac;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrameCache : cocos2d::CCObject {
    static cocos2d::CCSpriteFrameCache* sharedSpriteFrameCache() = imac 0x307a40, m1 0x29eb7c;

    bool init();

    // CCSpriteFrameCache();
    // CCSpriteFrameCache(cocos2d::CCSpriteFrameCache const&);
    void addSpriteFrame(cocos2d::CCSpriteFrame*, char const*) = m1 0x29fe38, imac 0x308cb0;
    void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*) = imac 0x307d30, m1 0x29ee50;
    void addSpriteFramesWithFile(char const*, char const*);
    void addSpriteFramesWithFile(char const*) = imac 0x308940, m1 0x29f998;
    void addSpriteFramesWithFile(char const*, cocos2d::CCTexture2D*);
    void removeSpriteFrameByName(char const*);
    void removeSpriteFrames();
    void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*);
    void removeSpriteFramesFromFile(char const*);
    void removeSpriteFramesFromTexture(cocos2d::CCTexture2D*) = imac 0x3095d0;
    void removeUnusedSpriteFrames() = imac 0x308df0;
    cocos2d::CCSpriteFrame* spriteFrameByName(char const*) = imac 0x3098e0, m1 0x2a0b38;
    //purgeSharedSpriteFrameCache = ios 0x3c4dd4
}

[[link(win, android)]]
class cocos2d::CCString : cocos2d::CCObject {
    static cocos2d::CCString* createWithData(unsigned char const*, unsigned long) = imac 0x7956c0, m1 0x6a8b3c;
    // static cocos2d::CCString* createWithFormat(char const*, ...) = ios 0x278aec, m1 0x6a8cd0;

    char const* getCString() const = imac 0x7950f0, m1 0x6a84a8;
    //createWithContentsOfFile = ios 0x278b74;

    bool boolValue() const = imac 0x7954b0, m1 0x6a8838;
    int intValue() const = imac 0x7953c0, m1 0x6a874c;
}

[[link(win, android)]]
class cocos2d::CCMenuItem : cocos2d::CCNodeRGBA {
    ~CCMenuItem() = imac 0x3ab940, m1 0x337768;
    static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3ab790, m1 0x3375e0;
    static cocos2d::CCMenuItem* create() = imac 0x3ab6d0, m1 0x337538;

    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3ab860, m1 0x33769c;

    int getScriptTapHandler();

    void setTarget(cocos2d::CCObject* rec, cocos2d::SEL_MenuHandler selector) = ios inline, imac 0x3abb90, m1 0x337958 {
    	m_pListener = rec;
    	m_pfnSelector = selector;
    }

    // CCMenuItem(cocos2d::CCMenuItem const&);
    // CCMenuItem();
    cocos2d::CCRect rect();

    virtual void activate() = imac 0x3abaa0, m1 0x3378a8, ios 0x506b4;
    virtual void selected() = m1 0x337824, imac 0x3aba10, ios 0x50630;
    virtual void unselected() = m1 0x337830, imac 0x3aba20, ios 0x5063c;
    virtual void registerScriptTapHandler(int) = m1 0x337838, imac 0x3aba30, ios 0x50644;
    virtual void unregisterScriptTapHandler() = m1 0x337868, imac 0x3aba60, ios 0x50674;
    virtual bool isEnabled() = m1 0x33792c, imac 0x3abb20, ios 0x50738;
    virtual void setEnabled(bool) = m1 0x337924, imac 0x3abb10, ios 0x50730;
    virtual bool isSelected() = m1 0x337950, imac 0x3abb80, ios 0x5075c;
}

[[link(win, android)]]
class cocos2d::CCMenuItemSprite : cocos2d::CCMenuItem {
    bool initWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3acfd0, m1 0x338d28;

    virtual void selected() = imac 0x3ad0c0, m1 0x338e40;
    virtual void unselected() = imac 0x3ad160, m1 0x338ecc;
    virtual void setEnabled(bool) = imac 0x3ad1e0, m1 0x338f4c;
    virtual cocos2d::CCNode* getNormalImage() = m1 0x338964, imac 0x3acc10;
    virtual void setNormalImage(cocos2d::CCNode*) = imac 0x3acc20, m1 0x33896c;
    virtual cocos2d::CCNode* getSelectedImage() = m1 0x338a38, imac 0x3acce0;
    virtual void setSelectedImage(cocos2d::CCNode*) = imac 0x3accf0, m1 0x338a40;
    virtual cocos2d::CCNode* getDisabledImage() = m1 0x338ae8, imac 0x3acd80;
    virtual void setDisabledImage(cocos2d::CCNode*) = imac 0x3acd90, m1 0x338af0;
    virtual void updateImagesVisibility() = imac 0x3ad200, m1 0x338f6c;
}

[[link(win, android)]]
class cocos2d::CCMenu : cocos2d::CCLayerRGBA {
    // static cocos2d::CCMenu* create(cocos2d::CCMenuItem*, ...) = ios 0x1e1964, m1 0x6a6d58, imac 0x79e7b0;
    static cocos2d::CCMenu* create() = imac 0x77c950, m1 0x691950;
    static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*) = imac 0x77cb50;
    static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*) = m1 0x691cf4, imac 0x77cda0;
    // static cocos2d::CCMenu* createWithItems(cocos2d::CCMenuItem*, char*);

    bool initWithArray(cocos2d::CCArray*);

    void setHandlerPriority(int);

    // CCMenu(cocos2d::CCMenu const&);
    // CCMenu();
    void alignItemsHorizontally();
    void alignItemsHorizontallyWithPadding(float) = imac 0x77d5c0, m1 0x6924f8;
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

    virtual bool init() = imac 0x77cdb0, m1 0x691d14, ios 0x1d9010;
    virtual void addChild(cocos2d::CCNode*) = m1 0x691d1c, imac 0x77cdc0, ios 0x1d9018;
    virtual void addChild(cocos2d::CCNode*, int) = m1 0x691d20, imac 0x77cdd0, ios 0x1d901c;
    virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x77cde0, m1 0x691d24, ios 0x1d9020;
    virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x77ce80, m1 0x691dcc, ios 0x1d90c8;
    virtual void onExit() = imac 0x77ce30, m1 0x691d84, ios 0x1d9080;
    virtual void registerWithTouchDispatcher() = m1 0x691e80, imac 0x77cf30, ios 0x1d9138;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x77cf80, m1 0x691edc, ios 0x1d9194;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x77d230, m1 0x6921c4, ios 0x1d9378;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x77d150, m1 0x6920d4, ios 0x1d9288;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = imac 0x77d1d0, m1 0x69215c, ios 0x1d9310;
}

[[link(win, android)]]
class cocos2d::CCRotateBy : cocos2d::CCActionInterval {
    static cocos2d::CCRotateBy* create(float, float) = imac 0x3a4bb0, m1 0x33167c;
    static cocos2d::CCRotateBy* create(float, float, float);

    bool initWithDuration(float, float);
    bool initWithDuration(float, float, float);

    // CCRotateBy(cocos2d::CCRotateBy const&);
    // CCRotateBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x331818, imac 0x3a4db0, ios 0x18eb44;
    virtual void update(float) = m1 0x331970, imac 0x3a4f20, ios 0x18ec90;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x331918, imac 0x3a4ed0, ios 0x18ec38;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a4fa0, m1 0x3319f8, ios 0x18ed0c;
}

[[link(win, android)]]
class cocos2d::CCRotateTo : cocos2d::CCActionInterval {
    static cocos2d::CCRotateTo* create(float, float) = imac 0x3a46d0, m1 0x331280;
    static cocos2d::CCRotateTo* create(float, float, float);

    bool initWithDuration(float, float);
    bool initWithDuration(float, float, float);

    // CCRotateTo(cocos2d::CCRotateTo const&);
    // CCRotateTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a48e0, m1 0x331424, ios 0x18e7c0;
    virtual void update(float) = m1 0x3315f4, imac 0x3a4b30, ios 0x18e984;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x331514, imac 0x3a49e0, ios 0x18e8a4;
}

[[link(win, android)]]
class cocos2d::CCDelayTime : cocos2d::CCActionInterval {
    static cocos2d::CCDelayTime* create(float) = m1 0x330e74, imac 0x3a42c0;

    // CCDelayTime(cocos2d::CCDelayTime const&);
    // CCDelayTime();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a8b50, m1 0x334e94, ios 0x190824;
    virtual void update(float) = m1 0x334f68, imac 0x3a8c20, ios 0x1908dc;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x334f6c, imac 0x3a8c30, ios 0x1908e0;
}

[[link(win, android)]]
class cocos2d::CCTextFieldTTF : cocos2d::CCLabelTTF, cocos2d::CCIMEDelegate {
    // CCTextFieldTTF();
    // virtual ~CCTextFieldTTF();

    static CCTextFieldTTF* textFieldWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize);
    static CCTextFieldTTF* textFieldWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize);

    bool initWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize);
    bool initWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize);

    void setDelegate(cocos2d::CCTextFieldDelegate* var);

    virtual void draw() = imac 0x26ac00, m1 0x21632c, ios 0x1cc638;
    virtual const cocos2d::ccColor3B& getColorSpaceHolder() = m1 0x2163ec, imac 0x26aca0, ios 0x1cc6f8;
    virtual void setColorSpaceHolder(const cocos2d::ccColor3B& color) = m1 0x2163f4, imac 0x26acb0, ios 0x1cc700;
    virtual const char* getPlaceHolder() = m1 0x216814, imac 0x26b130, ios 0x1cc9e8;
    virtual void setPlaceHolder(const char* text) = m1 0x2166bc, imac 0x26afd0, ios 0x1cc91c;
    virtual void setSecureTextEntry(bool value) = imac 0x26b150, m1 0x21682c, ios 0x1cca00;
    virtual bool isSecureTextEntry() = m1 0x216880, imac 0x26b1a0, ios 0x1cca54;

    virtual void setString(const char* text) = m1 0x216408, imac 0x26acd0, ios 0x1cc714;
    virtual const char* getString() = m1 0x21668c, imac 0x26af90, ios 0x1cc8ec;

    virtual bool attachWithIME() = m1 0x215a60, imac 0x26a350, ios 0x1cbf94;
    virtual bool detachWithIME() = m1 0x215aec, imac 0x26a3d0, ios 0x1cbfe4;
    virtual bool canAttachWithIME() = imac 0x26a450, m1 0x215b78, ios 0x1cc034;
    virtual bool canDetachWithIME() = imac 0x26a4a0, m1 0x215bec, ios 0x1cc0a0;
    virtual void insertText(const char* text, int len, cocos2d::enumKeyCodes keyCode) = m1 0x215c60, imac 0x26a500, ios 0x1cc10c;
    virtual void deleteBackward() = imac 0x26a840, m1 0x215fd4, ios 0x1cc3d4;
    virtual const char* getContentText() = m1 0x2162fc, imac 0x26abc0, ios 0x1cc608;
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
    static cocos2d::CCBMFontConfiguration* FNTConfigLoadFile(char const*) = m1 0x4f1f3c, imac 0x5bc460;
    static void FNTConfigRemoveCache();
    static cocos2d::CCAffineTransform __CCAffineTransformMake(float, float, float, float, float, float);
    static cocos2d::CCPoint __CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&) = m1 0x1df1e8, imac 0x22e4c0;
    static cocos2d::CCSize __CCSizeApplyAffineTransform(cocos2d::CCSize const&, cocos2d::CCAffineTransform const&) = m1 0x1df244, imac 0x22e530;
    static cocos2d::CCPoint ccCardinalSplineAt(cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, float, float);
    static void ccDrawCardinalSpline(cocos2d::CCPointArray*, float, unsigned int);
    static void ccDrawCatmullRom(cocos2d::CCPointArray*, unsigned int);
    static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool);
    static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool, float, float);
    static void ccDrawCircleSegment(cocos2d::CCPoint const&, float, float, float, unsigned int, bool, float, float);
    static void ccDrawColor4B(unsigned char, unsigned char, unsigned char, unsigned char) = imac 0x1f7ec0, m1 0x1ad624;
    static void ccDrawColor4F(float, float, float, float);
    static void ccDrawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
    static void ccDrawFilledCircle(cocos2d::CCPoint const&, float, float, unsigned int);
    static void ccDrawFree();
    static void ccDrawInit();
    static void ccDrawLine(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = m1 0x1ac0ec, imac 0x1f65e0;
    static void ccDrawLines(cocos2d::CCPoint const*, unsigned int);
    static void ccDrawPoint(cocos2d::CCPoint const&);
    static void ccDrawPoints(cocos2d::CCPoint const*, unsigned int);
    static void ccDrawPoly(cocos2d::CCPoint const*, unsigned int, bool);
    static void ccDrawQuadBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
    static void ccDrawRect(cocos2d::CCPoint, cocos2d::CCPoint);
    static void ccDrawSolidPoly(cocos2d::CCPoint const*, unsigned int, cocos2d::_ccColor4F);
    static void ccDrawSolidRect(cocos2d::CCPoint origin, cocos2d::CCPoint destination, cocos2d::_ccColor4F color) = imac 0x1f6800, m1 0x1ac2fc, ios inline {
    	CCPoint vertices[] = {
    		origin,
    		CCPoint{destination.x, origin.y},
    		destination,
    		CCPoint{origin.x, destination.y}
    	};

    	ccDrawSolidPoly(vertices, 4, color);
    }
    static void ccGLBindTexture2D(unsigned int) = m1 0x2dcb6c, imac 0x347f80;
    static void ccGLBindTexture2DN(unsigned int, unsigned int);
    static void ccGLBindVAO(unsigned int);
    static void ccGLBlendFunc(unsigned int, unsigned int) = imac 0x347ed0, m1 0x2dcaa4;
    static void ccGLBlendResetToCache();
    static void ccGLDeleteProgram(unsigned int);
    static void ccGLDeleteTexture(unsigned int);
    static void ccGLDeleteTextureN(unsigned int, unsigned int);
    static void ccGLEnable(cocos2d::ccGLServerState) = imac 0x3480a0, m1 0x2dccc4;
    static void ccGLEnableVertexAttribs(unsigned int) = m1 0x2dccc8, imac 0x3480b0;
    static void ccGLInvalidateStateCache();
    static void ccGLUseProgram(unsigned int) = imac 0x347eb0, m1 0x2dca88;
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
    static float ccpDistance(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = m1 0x2d8278, imac 0x342880;
    static cocos2d::CCPoint ccpForAngle(float);
    static cocos2d::CCPoint ccpFromSize(cocos2d::CCSize const&);
    static bool ccpFuzzyEqual(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
    static cocos2d::CCPoint ccpIntersectPoint(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpLength(cocos2d::CCPoint const&);
    static cocos2d::CCPoint ccpLerp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
    static bool ccpLineIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, float*, float*);
    static cocos2d::CCPoint ccpNormalize(cocos2d::CCPoint const&) = imac 0x3428c0;
    static cocos2d::CCPoint ccpRotateByAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
    static bool ccpSegmentIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpToAngle(cocos2d::CCPoint const&);
    static char const* cocos2dVersion();
    static float clampf(float, float, float);
}

[[link(win, android)]]
class DS_Dictionary {
    DS_Dictionary() = m1 0x135e9c, imac 0x169200;
    void addBoolValuesToMapForKey(gd::map<gd::string, bool>&, char const*, bool) = m1 0x13d518, imac 0x171590;
    void addBoolValuesToMapForKeySpecial(gd::map<gd::string, bool>&, char const*, bool) = m1 0x13d1dc, imac 0x171230;
    void checkCompatibility();
    gd::string cleanStringWhiteSpace(gd::string const&);
    static void copyFile(char const*, char const*);
    cocos2d::CCObject* decodeObjectForKey(char const*, bool, int);
    gd::vector<gd::string> getAllKeys() = imac 0x16ccb0, m1 0x13935c;
    cocos2d::CCArray* getArrayForKey(char const*, bool) = imac 0x1707b0, m1 0x13c84c;
    bool getBoolForKey(char const*) = imac 0x16d3e0, m1 0x1399d4;
    cocos2d::CCDictionary* getDictForKey(char const*, bool) = m1 0x13d6c8, imac 0x171760;
    float getFloatForKey(char const*) = imac 0x16d4e0, m1 0x139acc;
    unsigned int getIndexOfKey(char const*);
    unsigned int getIndexOfKeyWithClosestAlphaNumericalMatch(char const*);
    int getIntegerForKey(char const*) = imac 0x16d2a0, m1 0x1398c8;
    gd::string getKey(unsigned int) = imac 0x16cb80, m1 0x139234;
    unsigned int getNumKeys();
    cocos2d::CCObject* getObjectForKey(char const*) = imac 0x170930, m1 0x13c9b4;
    gd::vector<cocos2d::CCRect> getRectArrayForKey(char const*);
    cocos2d::CCRect getRectForKey(char const*);
    gd::vector<gd::string> getStringArrayForKey(char const*);
    gd::string getStringForKey(char const*) = imac 0x16d620, m1 0x139bec;
    gd::vector<cocos2d::CCPoint> getVec2ArrayForKey(char const*);
    cocos2d::CCPoint getVec2ForKey(char const*);
    bool loadRootSubDictFromCompressedFile(char const*) = imac 0x16a5b0, m1 0x1372fc;
    bool loadRootSubDictFromFile(char const*);
    bool loadRootSubDictFromString(gd::string const&) = m1 0x1376b0, imac 0x16a9f0;
    bool rectFromString(gd::string const&, cocos2d::CCRect&);
    void removeAllKeys();
    void removeKey(unsigned int);
    void removeKey(char const*);
    bool saveRootSubDictToCompressedFile(char const*);
    bool saveRootSubDictToFile(char const*);
    gd::string saveRootSubDictToString() = imac 0x16c030, m1 0x1388ec;
    void setArrayForKey(char const*, cocos2d::CCArray*) = imac 0x170440, m1 0x13c4d0;
    void setBoolForKey(char const*, bool, bool);
    void setBoolForKey(char const*, bool) = imac 0x16e790, m1 0x13ab9c;
    void setBoolMapForKey(char const*, gd::map<gd::string, bool>&) = m1 0x13cf9c;
    void setDictForKey(char const*, cocos2d::CCDictionary*) = imac 0x170db0, m1 0x13cd9c;
    void setFloatForKey(char const*, float) = imac 0x16e9c0, m1 0x13ad84;
    void setFloatForKey(char const*, float, bool);
    void setIntegerForKey(char const*, int) = imac 0x16e4c0, m1 0x13a930;
    void setIntegerForKey(char const*, int, bool);
    void setObjectForKey(char const*, cocos2d::CCObject*);
    void setRectArrayForKey(char const*, gd::vector<cocos2d::CCRect> const&);
    void setRectArrayForKey(char const*, gd::vector<cocos2d::CCRect> const&, bool);
    void setRectForKey(char const*, cocos2d::CCRect const&);
    void setRectForKey(char const*, cocos2d::CCRect const&, bool);
    void setStringArrayForKey(char const*, gd::vector<gd::string> const&);
    void setStringArrayForKey(char const*, gd::vector<gd::string> const&, bool);
    void setStringForKey(char const*, gd::string const&) = imac 0x16ecb0, m1 0x13b008;
    void setStringForKey(char const*, gd::string const&, bool);
    void setSubDictForKey(char const*);
    void setSubDictForKey(char const*, bool, bool);
    void setVec2ArrayForKey(char const*, gd::vector<cocos2d::CCPoint> const&);
    void setVec2ArrayForKey(char const*, gd::vector<cocos2d::CCPoint> const&, bool);
    void setVec2ForKey(char const*, cocos2d::CCPoint const&);
    void setVec2ForKey(char const*, cocos2d::CCPoint const&, bool);
    void split(gd::string const&, char const*, gd::vector<gd::string>&);
    bool splitWithForm(gd::string const&, gd::vector<gd::string>&);
    void stepBackToRootSubDict();
    bool stepIntoSubDictWithKey(char const*) = imac 0x16c5d0, m1 0x138dc0;
    void stepOutOfSubDict() = imac 0x16c8a0, m1 0x138ff0;
    bool vec2FromString(gd::string const&, cocos2d::CCPoint&);
}

[[link(win, android)]]
class cocos2d::extension::CCControlColourPicker : cocos2d::CCControl {
    static cocos2d::extension::CCControlColourPicker* colourPicker() = imac 0x3424e0, m1 0x2d7fe0;
}

[[link(win, android)]]
class cocos2d::extension::CCScale9Sprite : cocos2d::CCNodeRGBA {
    static cocos2d::extension::CCScale9Sprite* create() = imac 0x3e3e90, m1 0x36627c;
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const* spriteFrameName) = imac 0x3e3d70, m1 0x36612c, ios inline {
    	CCScale9Sprite* ret = new CCScale9Sprite;
    	if (ret->initWithSpriteFrameName(spriteFrameName)) {
    		ret->autorelease();
    		return ret;
    	}

    	delete ret;
    	return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const* spriteFrameName, cocos2d::CCRect capInsets) = imac 0x3e3c90, m1 0x366028, ios inline {
    	CCScale9Sprite* ret = new CCScale9Sprite;
    	if (ret->initWithSpriteFrameName(spriteFrameName, capInsets)) {
    		ret->autorelease();
    		return ret;
    	}

    	delete ret;
    	return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* create(char const* pszname) = imac 0x3e39e0, m1 0x365d20, ios inline {
    	CCScale9Sprite* ret = new CCScale9Sprite;
    	if (ret->initWithFile(pszname)) {
    		ret->autorelease();
    		return ret;
    	}

    	delete ret;
    	return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect) = imac 0x3e3810, m1 0x365afc;

    CCScale9Sprite() = m1 0x3642fc, imac 0x3e1e50;
    ~CCScale9Sprite() = m1 0x3643b0, imac 0x3e1f40;

    virtual bool init() = m1 0x364478, imac 0x3e2060, ios 0x21536c;
    virtual void setContentSize(const cocos2d::CCSize& size) = m1 0x365484, imac 0x3e3190, ios 0x216264;
    virtual void visit() = imac 0x3e44d0, m1 0x3667fc, ios 0x216f54;
    virtual GLubyte getOpacity() = m1 0x366b28, imac 0x3e4800, ios 0x21710c;
    virtual void setOpacity(GLubyte opacity);
    virtual void updateDisplayedOpacity(GLubyte parentOpacity);
    virtual const cocos2d::ccColor3B& getColor() = m1 0x3669b0, imac 0x3e4680, ios 0x217048;
    virtual void setColor(const cocos2d::ccColor3B& color) = m1 0x366830, imac 0x3e4500, ios 0x216f88;
    virtual void updateDisplayedColor(const cocos2d::ccColor3B& parentColor) = m1 0x3666bc, imac 0x3e4310, ios 0x216e14;
    virtual void setOpacityModifyRGB(bool bValue) = m1 0x3664e0, imac 0x3e4120, ios 0x216ce8;
    virtual bool isOpacityModifyRGB() = m1 0x366640, imac 0x3e4280, ios 0x216d98;
    virtual cocos2d::CCSize getPreferredSize() = imac 0x3e3f20, m1 0x366330, ios 0x216b38;
    virtual void setPreferredSize(cocos2d::CCSize) = imac 0x3e3ef0, m1 0x3662fc, ios 0x216b04;
    virtual cocos2d::CCRect getCapInsets() = imac 0x3e3fe0, m1 0x3663d4, ios 0x216bdc;
    virtual void setCapInsets(cocos2d::CCRect) = imac 0x3e3f40, m1 0x36633c, ios 0x216b44;
    virtual float getInsetLeft() = m1 0x3667bc, imac 0x3e4410, ios 0x216f14;
    virtual void setInsetLeft(float) = m1 0x3667dc, imac 0x3e4450, ios 0x216f34;
    virtual float getInsetTop() = m1 0x3667c4, imac 0x3e4420, ios 0x216f1c;
    virtual void setInsetTop(float) = m1 0x3667e4, imac 0x3e4470, ios 0x216f3c;
    virtual float getInsetRight() = m1 0x3667cc, imac 0x3e4430, ios 0x216f24;
    virtual void setInsetRight(float) = m1 0x3667ec, imac 0x3e4490, ios 0x216f44;
    virtual float getInsetBottom() = m1 0x3667d4, imac 0x3e4440, ios 0x216f2c;
    virtual void setInsetBottom(float) = m1 0x3667f4, imac 0x3e44b0, ios 0x216f4c;
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = imac 0x3e2120, m1 0x364544, ios 0x215438;
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, cocos2d::CCRect) = imac 0x3e20c0, m1 0x3644d8, ios 0x2153cc;
    virtual bool initWithFile(const char*, cocos2d::CCRect, cocos2d::CCRect) = imac 0x3e36a0, m1 0x36595c, ios 0x21673c;
    virtual bool initWithFile(const char*, cocos2d::CCRect) = m1 0x365a9c, imac 0x3e37b0, ios 0x2167b4;
    virtual bool initWithFile(cocos2d::CCRect, const char*) = imac 0x3e38a0, m1 0x365bb0, ios 0x2168b4;
    virtual bool initWithFile(const char*) = m1 0x365cd0, imac 0x3e3990, ios 0x216920;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = imac 0x3e3a50, m1 0x365da8, ios 0x216970;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x365ee0, imac 0x3e3b60, ios 0x2169f4;
    virtual bool initWithSpriteFrameName(const char*, cocos2d::CCRect) = m1 0x365fb8, imac 0x3e3c20, ios 0x216a44;
    virtual bool initWithSpriteFrameName(const char*) = m1 0x3660dc, imac 0x3e3d20, ios 0x216ab4;
    virtual bool updateWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = m1 0x3645e8, imac 0x3e21c0, ios 0x2154dc;
    virtual void setSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x3e4380, m1 0x366728, ios 0x216e80;
}

[[link(win, android)]]
class cocos2d::extension::CCHttpClient : cocos2d::CCObject {
    // CCHttpClient() = imac 0x441fb0, m1 0x3b3ec8;
    static cocos2d::extension::CCHttpClient* getInstance() = imac 0x425520, m1 0x3a04ec;
    static void destroyInstance() = m1 0x3a0550;
    void send(cocos2d::extension::CCHttpRequest* request) = imac 0x426430, m1 0x3a12c0;
    bool lazyInitThreadSemphore() = imac 0x425880, m1 0x3a0864;
    void dispatchResponseCallbacks(float);
}

[[link(win, android)]]
class cocos2d::ZipUtils {
    static gd::string base64DecodeEnc(gd::string const&, gd::string);
    static gd::string base64EncodeEnc(gd::string const&, gd::string);
    static gd::string base64URLDecode(gd::string const&) = imac 0x1f3f90, m1 0x1a9990;
    static gd::string base64URLEncode(gd::string const&) = imac 0x1f3eb0, m1 0x1a9aa0;
    static void ccDecodeEncodedPvr(unsigned int*, int);
    static int ccDeflateMemory(unsigned char* data, unsigned int size, unsigned char** out) = imac 0x1f3290, m1 0x1a8dd8;
    static int ccInflateCCZFile(char const*, unsigned char**);
    static int ccInflateGZipFile(char const*, unsigned char**);
    static int ccInflateMemory(unsigned char* data, unsigned int size, unsigned char** out);
    static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int*, unsigned int);
    static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int);
    static void ccSetPvrEncryptionKey(unsigned int, unsigned int, unsigned int, unsigned int);
    static void ccSetPvrEncryptionKeyPart(int, unsigned int);
    static gd::string compressString(gd::string const& data, bool encrypt, int encryptionKey) = imac 0x1f3020, m1 0x1a8b18;
    static gd::string decompressString2(unsigned char* data, bool encrypt, int size, int encryptionKey);
    static gd::string decompressString(gd::string const& data, bool encrypt, int encryptionKey) = m1 0x1a921c, imac 0x1f36c0;
    static gd::string encryptDecrypt(gd::string const& data, int encryptionKey);
    static gd::string encryptDecryptWKey(gd::string const&, gd::string);
    static unsigned char hexToChar(gd::string const&);
    static gd::string urlDecode(gd::string const&);
}

[[link(win, android)]]
class cocos2d::CCSpawn : cocos2d::CCActionInterval {
    static cocos2d::CCSpawn* create(cocos2d::CCArray*);
    // static cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction*, ...) = m1 0x33e430, imac 0x3b9e30;
    static cocos2d::CCSpawn* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = m1 0x33096c, imac 0x3a3d20;
    // static cocos2d::CCSpawn* createWithVariableList(cocos2d::CCFiniteTimeAction*, char*);

    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);

    // CCSpawn(cocos2d::CCSpawn const&);
    // CCSpawn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x330f00, imac 0x3a4360, ios 0x18e464;
    virtual void update(float) = imac 0x3a45d0, m1 0x33116c, ios 0x18e648;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3310d8, imac 0x3a4560, ios 0x18e5b4;
    virtual void stop() = imac 0x3a45a0, m1 0x33112c, ios 0x18e608;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a4620, m1 0x3311d0, ios 0x18e6ac;
}

[[link(win, android)]]
class cocos2d::CCSpeed : cocos2d::CCAction {
    static cocos2d::CCSpeed* create(cocos2d::CCActionInterval*, float) = imac 0x5dcd40, m1 0x50fc4c;

    bool initWithAction(cocos2d::CCActionInterval*, float);

    cocos2d::CCActionInterval* getInnerAction();
    float getSpeed();

    void setInnerAction(cocos2d::CCActionInterval*);
    void setSpeed(float);

    // CCSpeed(cocos2d::CCSpeed const&);
    // CCSpeed();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5dce20, m1 0x50fd1c;
    virtual bool isDone() = m1 0x50ff04, imac 0x5dd030;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x5dcfc0, m1 0x50fea4;
    virtual void stop() = imac 0x5dcfe0, m1 0x50feb8;
    virtual void step(float) = imac 0x5dd010, m1 0x50fee8;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5dd040, m1 0x50ff14;
}

[[link(win, android)]]
class pugi::xml_document {
    xml_document() = imac 0x62aa40, m1 0x5553cc;
    ~xml_document() = imac 0x62ab90, m1 0x555520;
}

[[link(win, android)]]
class pugi::xml_node {
    // i'm not bothering
    xml_node() = m1 inline, imac inline {
    	_root = nullptr;
    }
}

[[link(android)]]
class cocos2d::CCLightning : cocos2d::CCNode, cocos2d::CCRGBAProtocol {
    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = win 0x44540, imac 0x5c5940, m1 0x4fa830;
    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint p1) = win inline, ios inline, imac 0x5c5780, m1 0x4fa6c4 {
    	auto ret = new CCLightning();
    	if (ret->initWithStrikePoint(p1)) {
    		ret->autorelease();
    		return ret;
    	}
    	delete ret;
    	return nullptr;
    }

    bool initWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = win 0x439e0, imac 0x5c5a90, m1 0x4fa950;
    bool initWithStrikePoint(cocos2d::CCPoint p1) = win inline, ios inline, m1 0x4fa7dc {
    	return this->initWithStrikePoint(p1, CCPointZero, .5f);
    }

    CCLightning() = win 0x44400;
    ~CCLightning() = win 0x444d0;

    void strike() = win 0x44880, m1 0x4faa74;
    void strikeFinished() = win 0x448f0, imac 0x5c5e60;
    void strikeRandom() = win inline, ios inline, m1 0x4fabe0 {
    	m_seed = rand();
    	this->strike();
    }
    void strikeWithSeed(uint64_t seed) = win inline, ios inline, imac 0x5c5df0, m1 0x4fac58 {
    	m_seed = seed;
    	this->strike();
    }

    virtual void draw() = win 0x44700, imac 0x5c5c30, m1 0x4faae0, ios 0x3472fc;
    virtual bool isOpacityModifyRGB() = m1 0x4fad58, imac 0x5c5f50, ios 0x34748c;
    virtual void setOpacityModifyRGB(bool) = m1 0x4fad68, imac 0x5c5f70, ios 0x34749c;
    virtual unsigned char getOpacity() = m1 0x4face0, imac 0x5c5e80, ios 0x347414;
    virtual unsigned char getDisplayedOpacity() = m1 0x4facf0, imac 0x5c5ea0, ios 0x347424;
    virtual void setOpacity(unsigned char) = m1 0x4fad0c, imac 0x5c5ed0, ios 0x347440;
    virtual void updateDisplayedOpacity(unsigned char) = m1 0x4fad78, imac 0x5c5f90, ios 0x3474ac;
    virtual bool isCascadeOpacityEnabled() = m1 0x4fad88, imac 0x5c5fb0, ios 0x3474bc;
    virtual void setCascadeOpacityEnabled(bool) = m1 0x4fad98, imac 0x5c5fd0, ios 0x3474cc;
    virtual cocos2d::_ccColor3B const& getColor() = m1 0x4fad1c, imac 0x5c5ef0, ios 0x347450;
    virtual cocos2d::_ccColor3B const& getDisplayedColor() = m1 0x4fada8, imac 0x5c5ff0, ios 0x3474dc;
    virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x4fad2c, imac 0x5c5f10, ios 0x347460;
    virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = m1 0x4fadb8, imac 0x5c6010, ios 0x3474ec;
    virtual bool isCascadeColorEnabled() = m1 0x4fade0, imac 0x5c6050, ios 0x347514;
    virtual void setCascadeColorEnabled(bool) = m1 0x4fadf0, imac 0x5c6070, ios 0x347524;

    cocos2d::CCPoint m_strikePoint;
    cocos2d::CCPoint m_strikePoint2;
    bool m_split;
    int m_displacement;
    int m_minDisplacement;
    uint64_t m_seed;
    float m_lineWidth;
    bool m_unkBool;
    bool m_removeAfterFinished;
    float m_duration;
    float m_opacityModify;
    std::array<cocos2d::CCPoint, 200>* m_lightningPoints;
    uint32_t m_numPoints;
    uint8_t m_displayedOpacity;
    uint8_t m_opacity;
    cocos2d::ccColor3B m_displayedColor;
    cocos2d::ccColor3B m_color;
    bool m_cascadeColorEnabled;
    bool m_cascadeOpacityEnabled;
    bool m_opacityModifyEnabled;
}

[[link(win, android)]]
class cocos2d::CCConfiguration {
	static void purgeConfiguration();
	static cocos2d::CCConfiguration* sharedConfiguration() = m1 0x4634e8, imac 0x503d50;

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
