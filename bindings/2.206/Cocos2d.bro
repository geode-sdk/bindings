[[link(win, android)]]
class cocos2d::CCEGLViewProtocol {
    CCEGLViewProtocol() = win 0xbac00;
    virtual ~CCEGLViewProtocol() = win 0xbacc0;
    auto getViewPortRect() const;
    auto getScaleX() const;
    auto getScaleY() const;
    virtual auto setDesignResolutionSize(float, float, ResolutionPolicy);
	virtual void setFrameSize(float, float);
}

[[link(win, android)]]
class cocos2d::CCMotionStreak {
	static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::_ccColor3B const&, cocos2d::CCTexture2D*);
	static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::_ccColor3B const&, char const*);

	bool initWithFade(float, float, float, cocos2d::_ccColor3B const&, cocos2d::CCTexture2D*);
	bool initWithFade(float, float, float, cocos2d::_ccColor3B const&, char const*);

	bool getDontOpacityFade() const;
	float getM_fMaxSeg() const;

	void setDontOpacityFade(bool);
	void setFastMode(bool);
	void setM_fMaxSeg(float);
	void setStartingPositionInitialized(bool);
	void setStroke(float);

	// CCMotionStreak(cocos2d::CCMotionStreak const&);
	// CCMotionStreak();
	void enableRepeatMode(float);
	bool isFastMode();
	bool isStartingPositionInitialized();
	void reset();
	void resumeStroke();
	void stopStroke();
	void tintWithColor(cocos2d::_ccColor3B);
	void updateFade(float);

	virtual void update(float);
	virtual void setPosition(cocos2d::CCPoint const&);
	virtual void draw();

	virtual unsigned char getOpacity();
	virtual void setOpacity(unsigned char);
	virtual void setOpacityModifyRGB(bool);
	virtual bool isOpacityModifyRGB();

	virtual void setBlendFunc(cocos2d::_ccBlendFunc);
	virtual cocos2d::_ccBlendFunc getBlendFunc();
	virtual cocos2d::CCTexture2D* getTexture();
	virtual void setTexture(cocos2d::CCTexture2D*);
}

[[link(win, android)]]
class cocos2d::CCScene {
	static cocos2d::CCScene* create() = imac 0x28cbf0;

	int getHighestChildZ() = imac 0x28cca0;

	// CCScene(cocos2d::CCScene const&);
	// CCScene();
	~CCScene() = imac 0x28cb70;

	virtual bool init() = imac 0x28cba0;
}

[[link(win, android)]]
class cocos2d::CCParticleSystem {
	static cocos2d::CCParticleSystem* create(char const*);
	static cocos2d::CCParticleSystem* createWithTotalParticles(unsigned int);

	void initParticle(cocos2d::sCCParticle*);
	bool initWithDictionary(cocos2d::CCDictionary*, char const*, bool);
	bool initWithDictionary(cocos2d::CCDictionary*, bool);
	bool initWithFile(char const*, bool);

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
	bool addParticle();
	void calculateWorldSpace();
	bool isFull();
	void loadDefaults();
	void loadScaledDefaults(float);
	void resetSystem();
	void resumeSystem();
	void saveDefaults();
	void stopSystem();
	void toggleUniformColorMode(bool);
	void updateVisible();

	virtual void update(float);
	virtual bool init();
	virtual void setScaleX(float);
	virtual void setScaleY(float);
	virtual void setScale(float);
	virtual void setVisible(bool);
	virtual void setRotation(float);
	virtual cocos2d::CCParticleBatchNode* getBatchNode();
	virtual void setBatchNode(cocos2d::CCParticleBatchNode*);
	virtual unsigned int getParticleCount();
	virtual float getDuration();
	virtual void setDuration(float);
	virtual cocos2d::CCPoint const& getSourcePosition();
	virtual void setSourcePosition(cocos2d::CCPoint const&);
	virtual cocos2d::CCPoint const& getPosVar();
	virtual void setPosVar(cocos2d::CCPoint const&);
	virtual float getLife();
	virtual void setLife(float);
	virtual float getLifeVar();
	virtual void setLifeVar(float);
	virtual float getAngle();
	virtual void setAngle(float);
	virtual float getAngleVar();
	virtual void setAngleVar(float);
	virtual void updateEmissionRate();
	virtual cocos2d::CCPoint const& getGravity();
	virtual void setGravity(cocos2d::CCPoint const&);
	virtual float getSpeed();
	virtual void setSpeed(float);
	virtual float getSpeedVar();
	virtual void setSpeedVar(float);
	virtual float getTangentialAccel();
	virtual void setTangentialAccel(float);
	virtual float getTangentialAccelVar();
	virtual void setTangentialAccelVar(float);
	virtual float getRadialAccel();
	virtual void setRadialAccel(float);
	virtual float getRadialAccelVar();
	virtual void setRadialAccelVar(float);
	virtual bool getRotationIsDir();
	virtual void setRotationIsDir(bool);
	virtual float getStartRadius();
	virtual void setStartRadius(float);
	virtual float getStartRadiusVar();
	virtual void setStartRadiusVar(float);
	virtual float getEndRadius();
	virtual void setEndRadius(float);
	virtual float getEndRadiusVar();
	virtual void setEndRadiusVar(float);
	virtual float getRotatePerSecond();
	virtual void setRotatePerSecond(float);
	virtual float getRotatePerSecondVar();
	virtual void setRotatePerSecondVar(float);
	virtual bool isActive();
	virtual bool isBlendAdditive();
	virtual void setBlendAdditive(bool);
	virtual float getStartSize();
	virtual void setStartSize(float);
	virtual float getStartSizeVar();
	virtual void setStartSizeVar(float);
	virtual float getEndSize();
	virtual void setEndSize(float);
	virtual float getEndSizeVar();
	virtual void setEndSizeVar(float);
	virtual cocos2d::_ccColor4F const& getStartColor();
	virtual void setStartColor(cocos2d::_ccColor4F const&);
	virtual cocos2d::_ccColor4F const& getStartColorVar();
	virtual void setStartColorVar(cocos2d::_ccColor4F const&);
	virtual cocos2d::_ccColor4F const& getEndColor();
	virtual void setEndColor(cocos2d::_ccColor4F const&);
	virtual cocos2d::_ccColor4F const& getEndColorVar();
	virtual void setEndColorVar(cocos2d::_ccColor4F const&);
	virtual float getStartSpin();
	virtual void setStartSpin(float);
	virtual float getStartSpinVar();
	virtual void setStartSpinVar(float);
	virtual float getEndSpin();
	virtual void setEndSpin(float);
	virtual float getEndSpinVar();
	virtual void setEndSpinVar(float);
	virtual float getEmissionRate();
	virtual void setEmissionRate(float);
	virtual unsigned int getTotalParticles();
	virtual void setTotalParticles(unsigned int);
	virtual bool getOpacityModifyRGB();
	virtual void setOpacityModifyRGB(bool);
	virtual cocos2d::tCCPositionType getPositionType();
	virtual void setPositionType(cocos2d::tCCPositionType);
	virtual bool isAutoRemoveOnFinish();
	virtual void setAutoRemoveOnFinish(bool);
	virtual int getEmitterMode();
	virtual void setEmitterMode(int);
	virtual bool initWithTotalParticles(unsigned int, bool);
	virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&);
	virtual void postStep();
	virtual void updateWithNoTime();
	virtual void updateBlendFunc();

	virtual void setBlendFunc(cocos2d::_ccBlendFunc);
	virtual cocos2d::_ccBlendFunc getBlendFunc();
	virtual cocos2d::CCTexture2D* getTexture();
	virtual void setTexture(cocos2d::CCTexture2D*);
}

[[link(win, android)]]
class cocos2d::CCParticleSystemQuad {
	static cocos2d::CCParticleSystemQuad* create(char const*, bool);
	static cocos2d::CCParticleSystemQuad* create();
	static cocos2d::CCParticleSystemQuad* createWithTotalParticles(unsigned int, bool);

	void initIndices();
	void initTexCoordsWithRect(cocos2d::CCRect const&);

	unsigned char getOpacity();

	void setDisplayFrame(cocos2d::CCSpriteFrame*);
	void setOpacity(unsigned char);
	void setTextureWithRect(cocos2d::CCTexture2D*, cocos2d::CCRect const&);

	// CCParticleSystemQuad(cocos2d::CCParticleSystemQuad const&);
	// CCParticleSystemQuad();
	bool allocMemory();
	void listenBackToForeground(cocos2d::CCObject*);
	void setupVBO();
	void updateTexCoords();

	virtual void draw();
	virtual void setBatchNode(cocos2d::CCParticleBatchNode*);
	virtual void setTotalParticles(unsigned int);
	virtual bool initWithTotalParticles(unsigned int, bool);
	virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&);
	virtual void postStep();

	virtual void setTexture(cocos2d::CCTexture2D*);
}

[[link(win, android)]]
class cocos2d::CCFadeTo {
	static cocos2d::CCFadeTo* create(float, unsigned char) = imac 0x3be320;

	bool initWithDuration(float, unsigned char);

	// CCFadeTo(cocos2d::CCFadeTo const&);
	// CCFadeTo();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
}

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
	static cocos2d::CCFileUtils* sharedFileUtils() = imac 0x616a20;
	virtual bool shouldUseHD();
	virtual bool writeToFile(cocos2d::CCDictionary*, gd::string const&);
}

[[link(win, android)]]
class cocos2d::CCNode {
	static cocos2d::CCNode* create() = imac 0x26ee60;
	static void resetGlobalOrderOfArrival();

	// CCNode(cocos2d::CCNode const&);
	CCNode() = imac 0x26e330;
  ~CCNode() = imac 0x26e640;

	cocos2d::CCAction* getActionByTag(int);
	cocos2d::CCComponent* getComponent(char const*) const;
	int getScriptHandler();
	cocos2d::CCAffineTransform getTransformTemp();
	bool getUseChildIndex();

	void setAdditionalTransform(cocos2d::CCAffineTransform const&);
	void setUseChildIndex(bool);

	cocos2d::CCRect boundingBox() = imac 0x26edf0;
	void childrenAlloc();
	cocos2d::CCPoint convertToNodeSpace(cocos2d::CCPoint const&) = imac 0x270db0;
	cocos2d::CCPoint convertToNodeSpaceAR(cocos2d::CCPoint const&);
	cocos2d::CCPoint convertToWindowSpace(cocos2d::CCPoint const&);
	cocos2d::CCPoint convertToWorldSpace(cocos2d::CCPoint const&) = imac 0x270df0;
	cocos2d::CCPoint convertToWorldSpaceAR(cocos2d::CCPoint const&);
	cocos2d::CCPoint convertTouchToNodeSpace(cocos2d::CCTouch*);
	cocos2d::CCPoint convertTouchToNodeSpaceAR(cocos2d::CCTouch*);
	char const* description();
	void detachChild(cocos2d::CCNode*, bool);
	void insertChild(cocos2d::CCNode*, int);
	unsigned int numberOfRunningActions();
	void pauseSchedulerAndActions();
	void qsortAllChildrenWithIndex();
	void resumeSchedulerAndActions();
	cocos2d::CCAction* runAction(cocos2d::CCAction*) = imac 0x2700d0;
	void schedule(cocos2d::SEL_SCHEDULE) = imac 0x270300;
	void schedule(cocos2d::SEL_SCHEDULE, float);
	void schedule(cocos2d::SEL_SCHEDULE, float, unsigned int, float);
	void scheduleOnce(cocos2d::SEL_SCHEDULE, float);
	void scheduleUpdate() = imac 0x2701e0;
	void scheduleUpdateWithPriority(int);
	void scheduleUpdateWithPriorityLua(int, int);
	void sortAllChildrenNoIndex();
	void sortAllChildrenWithIndex();
	void stopAction(cocos2d::CCAction*);
	void stopActionByTag(int);
	void stopAllActions() = imac 0x26ef50;
	void transform();
	void transformAncestors();
	void unschedule(cocos2d::SEL_SCHEDULE);
	void unscheduleAllSelectors();
	void unscheduleUpdate();
	void updateChildIndexes();

	virtual void update(float) = m1 0x21666c, imac 0x2703e0;
	virtual bool init() = m1 0x214b18, imac 0x26e670;
	virtual void setZOrder(int) = m1 0x214b68, imac 0x26e700;
	virtual void _setZOrder(int) = m1 0x214b60, imac 0x26e6f0;
	virtual int getZOrder() = m1 0x214b58, imac 0x26e6e0;
	virtual void setVertexZ(float) = m1 0x214bc0, imac 0x26e750;
	virtual float getVertexZ() = m1 0x214bb8, imac 0x26e740;
	virtual void setScaleX(float) = m1 0x214c78, imac 0x26e870;
	virtual float getScaleX() = m1 0x214c70, imac 0x26e860;
	virtual void setScaleY(float) = m1 0x214c94, imac 0x26e8a0;
	virtual float getScaleY() = m1 0x214c8c, imac 0x26e890;
	virtual void setScale(float) = m1 0x214c40, imac 0x26e820;
	virtual float getScale() = m1 0x214c38, imac 0x26e810;
	virtual void setScale(float, float) = m1 0x214c58, imac 0x26e840;
	virtual void setPosition(cocos2d::CCPoint const&) = m1 0x214cdc, imac 0x26e8d0;
	virtual cocos2d::CCPoint const& getPosition() = m1 0x214ca8, imac 0x26e8c0;
	virtual void setPosition(float, float) = m1 0x214cb0, imac 0x26e910;
	virtual void getPosition(float*, float*) = m1 0x214cc8, imac 0x26e8f0;
	virtual void setPositionX(float) = m1 0x214d2c, imac 0x26e970;
	virtual float getPositionX() = m1 0x214d1c, imac 0x26e950;
	virtual void setPositionY(float) = m1 0x214d70, imac 0x26e9b0;
	virtual float getPositionY() = m1 0x214d24, imac 0x26e960;
	virtual void setSkewX(float) = m1 0x214b28, imac 0x26e690;
	virtual float getSkewX() = m1 0x214b20, imac 0x26e680;
	virtual void setSkewY(float) = m1 0x214b44, imac 0x26e6c0;
	virtual float getSkewY() = m1 0x214b3c, imac 0x26e6b0;
	virtual void setAnchorPoint(cocos2d::CCPoint const&) = m1 0x214ed8, imac 0x26eb40;
	virtual cocos2d::CCPoint const& getAnchorPoint() = m1 0x214ed0, imac 0x26eb30;
	virtual cocos2d::CCPoint const& getAnchorPointInPoints() = m1 0x214ec8, imac 0x26eb20;
	virtual void setContentSize(cocos2d::CCSize const&) = m1 0x214f98, imac 0x26ec00;
	virtual cocos2d::CCSize const& getContentSize() const = imac 0x26ebc0;
	virtual cocos2d::CCSize getScaledContentSize() = m1 0x214f60, imac 0x26ebd0;
	virtual void setVisible(bool) = m1 0x214ec0, imac 0x26eb10;
	virtual bool isVisible() = m1 0x214eb8, imac 0x26eb00;
	virtual void setRotation(float) = m1 0x214bd0, imac 0x26e770;
	virtual float getRotation() = m1 0x214bc8, imac 0x26e760;
	virtual void setRotationX(float) = m1 0x214c08, imac 0x26e7c0;
	virtual float getRotationX() = m1 0x214c00, imac 0x26e7b0;
	virtual void setRotationY(float) = m1 0x214c24, imac 0x26e7f0;
	virtual float getRotationY() = m1 0x214c1c, imac 0x26e7e0;
	virtual void setOrderOfArrival(unsigned int) = m1 0x215070, imac 0x26ed20;
	virtual unsigned int getOrderOfArrival() = m1 0x215068, imac 0x26ed10;
	virtual void setGLServerState(cocos2d::ccGLServerState) = m1 0x215090, imac 0x26ed60;
	virtual cocos2d::ccGLServerState getGLServerState() = m1 0x215088, imac 0x26ed50;
	virtual void ignoreAnchorPointForPosition(bool) = m1 0x215038, imac 0x26ecc0;
	virtual bool isIgnoreAnchorPointForPosition() = m1 0x215030, imac 0x26ecb0;
	virtual void addChild(cocos2d::CCNode*) = m1 0x21550c, imac 0x26f1b0;
	virtual void addChild(cocos2d::CCNode*, int) = m1 0x21551c, imac 0x26f190;
	virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x215390, imac 0x26f060;
	virtual cocos2d::CCNode* getChildByTag(int) = m1 0x2152fc, imac 0x26efe0;
	virtual cocos2d::CCArray* getChildren() = m1 0x214db8, imac 0x26e9f0;
	virtual unsigned int getChildrenCount() const = imac 0x26ea40;
	virtual void setParent(cocos2d::CCNode*) = m1 0x215028, imac 0x26eca0;
	virtual cocos2d::CCNode* getParent() = m1 0x215020, imac 0x26ec90;
	virtual void removeFromParent() = m1 0x215530, imac 0x26f1d0;
	virtual void removeFromParentAndCleanup(bool) = m1 0x215540, imac 0x26f1f0;
	virtual void removeMeAndCleanup() = m1 0x215560, imac 0x26f220;
	virtual void removeChild(cocos2d::CCNode*) = m1 0x215570, imac 0x26f240;
	virtual void removeChild(cocos2d::CCNode*, bool) = m1 0x215580, imac 0x26f260;
	virtual void removeChildByTag(int) = m1 0x2156e8, imac 0x26f3b0;
	virtual void removeChildByTag(int, bool) = m1 0x2156f8, imac 0x26f3d0;
	virtual void removeAllChildren() = m1 0x215748, imac 0x26f410;
	virtual void removeAllChildrenWithCleanup(bool) = m1 0x215758, imac 0x26f430;
	virtual void reorderChild(cocos2d::CCNode*, int) = m1 0x21588c, imac 0x26f550;
	virtual void sortAllChildren() = m1 0x2159a4, imac 0x26f690;
	virtual cocos2d::CCGridBase* getGrid() = m1 0x214e74, imac 0x26eab0;
	virtual void setGrid(cocos2d::CCGridBase*) = m1 0x214e7c, imac 0x26eac0;
	virtual void* getUserData() = m1 0x215058, imac 0x26ecf0;
	virtual void setUserData(void*) = m1 0x215060, imac 0x26ed00;
	virtual cocos2d::CCObject* getUserObject() = m1 0x215080, imac 0x26ed40;
	virtual void setUserObject(cocos2d::CCObject*) = m1 0x215098, imac 0x26ed70;
	virtual cocos2d::CCGLProgram* getShaderProgram() = m1 0x215078, imac 0x26ed30;
	virtual void setShaderProgram(cocos2d::CCGLProgram*) = m1 0x2150d4, imac 0x26edb0;
	virtual cocos2d::CCCamera* getCamera() = m1 0x214e14, imac 0x26ea60;
	virtual bool isRunning() = m1 0x215018, imac 0x26ec80;
	virtual void registerScriptHandler(int) = m1 0x216340, imac 0x270000;
	virtual void unregisterScriptHandler() = m1 0x216370, imac 0x270030;
	virtual void onEnter() = m1 0x215fd8, imac 0x26fca0;
	virtual void onEnterTransitionDidFinish() = m1 0x216108, imac 0x26fdc0;
	virtual void onExit() = m1 0x21622c, imac 0x26fee0;
	virtual void onExitTransitionDidStart() = m1 0x216190, imac 0x26fe40;
	virtual void cleanup() = m1 0x2151f0, imac 0x26eec0;
	virtual void draw() = m1 0x215d9c, imac 0x26fa60;
	virtual void visit() = m1 0x215da0, imac 0x26fa70;
	virtual void setActionManager(cocos2d::CCActionManager*) = m1 0x2163b0, imac 0x270070;
	virtual cocos2d::CCActionManager* getActionManager() = m1 0x216400, imac 0x2700c0;
	virtual void setScheduler(cocos2d::CCScheduler*) = m1 0x21646c, imac 0x270180;
	virtual cocos2d::CCScheduler* getScheduler() = m1 0x2164bc, imac 0x2701d0;
	virtual void updateTransform() = m1 0x2171cc, imac 0x271040;
	virtual cocos2d::CCAffineTransform const nodeToParentTransform() = m1 0x2166ec, imac 0x270450;
	virtual cocos2d::CCAffineTransform const nodeToParentTransformFast() = m1 0x2169bc, imac 0x270760;
	virtual cocos2d::CCAffineTransform const parentToNodeTransform() = m1 0x216d80, imac 0x270bd0;
	virtual cocos2d::CCAffineTransform nodeToWorldTransform() = m1 0x216df4, imac 0x270c50;
	virtual cocos2d::CCAffineTransform nodeToWorldTransformFast() = m1 0x216e80, imac 0x270ce0;
	virtual cocos2d::CCAffineTransform worldToNodeTransform() = m1 0x216f0c, imac 0x270d70;
	virtual bool addComponent(cocos2d::CCComponent*) = m1 0x21723c, imac 0x2710b0;
	virtual bool removeComponent(char const*) = m1 0x21724c, imac 0x2710d0;
	virtual bool removeComponent(cocos2d::CCComponent*) = m1 0x21725c, imac 0x2710f0;
	virtual void removeAllComponents() = m1 0x21726c, imac 0x271110;
	virtual void updateTweenAction(float, char const*) = m1 0x2171c4, imac 0x271020;
	virtual void updateTweenActionInt(float, int) = m1 0x2171c8, imac 0x271030;
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

	virtual void update(float) = imac 0x44d2a0;
}

[[link(win, android)]]
class cocos2d::CCLayer {
	static cocos2d::CCLayer* create() = imac 0x4ba620;

	// CCLayer(cocos2d::CCLayer const&);
	CCLayer() = imac 0x4ba060;
  ~CCLayer() = imac 0x4ba350;

	cocos2d::CCScriptHandlerEntry* getScriptAccelerateHandlerEntry();
	cocos2d::CCScriptHandlerEntry* getScriptKeypadHandlerEntry();
	cocos2d::CCTouchScriptHandlerEntry* getScriptTouchHandlerEntry();

	int excuteScriptTouchHandler(int, cocos2d::CCSet*);
	int excuteScriptTouchHandler(int, cocos2d::CCTouch*);
	void registerScriptAccelerateHandler(int);
	void registerScriptKeypadHandler(int);
	void unregisterScriptAccelerateHandler();
	void unregisterScriptKeypadHandler();

	virtual bool init() = m1 0x41b670, imac 0x4ba5c0;
	virtual void onEnter() = m1 0x41bf40, imac 0x4baeb0;
	virtual void onEnterTransitionDidFinish() = m1 0x41c0c4, imac 0x4bb040;
	virtual void onExit() = m1 0x41c004, imac 0x4baf70;
	virtual void registerWithTouchDispatcher() = m1 0x41b7d4, imac 0x4ba740;
	virtual void registerScriptTouchHandler(int, bool, int, bool) = m1 0x41b848, imac 0x4ba7c0;
	virtual void unregisterScriptTouchHandler() = m1 0x41b8a8, imac 0x4ba820;
	virtual bool isTouchEnabled() = m1 0x41b964, imac 0x4ba8d0;
	virtual void setTouchEnabled(bool) = m1 0x41b96c, imac 0x4ba8e0;
	virtual void setTouchMode(cocos2d::ccTouchesMode) = m1 0x41b9dc, imac 0x4ba950;
	virtual int getTouchMode() = m1 0x41baac, imac 0x4baa00;
	virtual void setTouchPriority(int) = m1 0x41ba40, imac 0x4ba9a0;
	virtual int getTouchPriority() = m1 0x41baa4, imac 0x4ba9f0;
	virtual bool isAccelerometerEnabled() = m1 0x41bab4, imac 0x4baa10;
	virtual void setAccelerometerEnabled(bool) = m1 0x41babc, imac 0x4baa20;
	virtual void setAccelerometerInterval(double) = m1 0x41baf8, imac 0x4baa60;
	virtual bool isKeypadEnabled() = m1 0x41bc00, imac 0x4bab60;
	virtual void setKeypadEnabled(bool) = m1 0x41bc08, imac 0x4bab70;
	virtual bool isKeyboardEnabled() = m1 0x41bc7c, imac 0x4babe0;
	virtual void setKeyboardEnabled(bool) = m1 0x41bc84, imac 0x4babf0;
	virtual bool isMouseEnabled() = m1 0x41bcec, imac 0x4bac50;
	virtual void setMouseEnabled(bool) = m1 0x41bcf4, imac 0x4bac60;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x41c0fc, imac 0x4bb080;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x41c1bc, imac 0x4bb110;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x41c25c, imac 0x4bb190;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x41c2fc, imac 0x4bb210;
	virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x41c39c, imac 0x4bb290;
	virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x41c43c, imac 0x4bb310;
	virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x41c4dc, imac 0x4bb390;
	virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x41c57c, imac 0x4bb410;
	virtual void setPreviousPriority(int) = m1 0x9a6c, imac 0x6ef0;
	virtual int getPreviousPriority() = m1 0x9a74, imac 0x6f00;

	virtual void didAccelerate(cocos2d::CCAcceleration*) = m1 0x41bb2c, imac 0x4baa90;

	virtual void keyBackClicked() = m1 0x41bd98, imac 0x4bad10;
	virtual void keyMenuClicked() = m1 0x41be40, imac 0x4badb0;

	virtual void keyDown(cocos2d::enumKeyCodes) = m1 0x41bed0, imac 0x4bae30;
}

[[link(win, android)]]
class cocos2d::CCLayerGradient {
	static cocos2d::CCLayerGradient* create(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&);
	static cocos2d::CCLayerGradient* create(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&, cocos2d::CCPoint const&) = imac 0x4bd760;
	static cocos2d::CCLayerGradient* create();

	bool getShouldPremultiply() const;

	void setShouldPremultiply(bool);
	void setValues(cocos2d::_ccColor3B const&, unsigned char, cocos2d::_ccColor3B const&, unsigned char, cocos2d::CCPoint const&);

	// CCLayerGradient(cocos2d::CCLayerGradient const&);
	// CCLayerGradient();

	virtual bool init();

	virtual void updateColor();
	virtual bool initWithColor(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&);
	virtual bool initWithColor(cocos2d::_ccColor4B const&, cocos2d::_ccColor4B const&, cocos2d::CCPoint const&);
	virtual cocos2d::_ccColor3B const& getStartColor();
	virtual void setStartColor(cocos2d::_ccColor3B const&);
	virtual cocos2d::_ccColor3B const& getEndColor();
	virtual void setEndColor(cocos2d::_ccColor3B const&);
	virtual unsigned char getStartOpacity();
	virtual void setStartOpacity(unsigned char);
	virtual unsigned char getEndOpacity();
	virtual void setEndOpacity(unsigned char);
	virtual cocos2d::CCPoint const& getVector();
	virtual void setVector(cocos2d::CCPoint const&);
	virtual void setCompressedInterpolation(bool);
	virtual bool isCompressedInterpolation();
}

[[link(win, android)]]
class cocos2d::CCObject {
	static cocos2d::CCObject* createWithCoder(DS_Dictionary*);

	// CCObject(cocos2d::CCObject const&);
	CCObject() = imac 0x493bf0;
	~CCObject() = imac 0x493d00;

	cocos2d::CCObjectType getObjType() const;

	void setObjType(cocos2d::CCObjectType);

	cocos2d::CCObject* autorelease() = imac 0x493e30;
	cocos2d::CCObject* copy();
	bool isSingleReference() const;
	void release() = imac 0x493e00;
	void retain() = imac 0x493e20;
	unsigned int retainCount() const;

	virtual int getTag() const = imac 0x493eb0;
	virtual bool isEqual(cocos2d::CCObject const*) = m1 0x3f8c50, imac 0x493e80;
	virtual void acceptVisitor(cocos2d::CCDataVisitor&) = m1 0x3f8c5c, imac 0x493e90;
	virtual void encodeWithCoder(DS_Dictionary*) = m1 0x3f8c84, imac 0x493ed0;
	virtual bool canEncode() = m1 0x3f8c90, imac 0x493ef0;
	virtual void setTag(int) = m1 0x3f8c7c, imac 0x493ec0;
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
	static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&) = imac 0x4bcc40;
	static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&, float, float) = imac 0x4bca80;
	static cocos2d::CCLayerColor* create();

	// CCLayerColor(cocos2d::CCLayerColor const&);
	CCLayerColor() = imac 0x4bc3c0;
	~CCLayerColor() = imac 0x4bc600;

	void setVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);

	void addToVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);
	void changeHeight(float);
	void changeWidth(float);
	void changeWidthAndHeight(float, float);

	virtual bool init() = m1 0x41d8f0, imac 0x4bce00;
	virtual void setContentSize(cocos2d::CCSize const&) = m1 0x41dac0, imac 0x4bcff0;
	virtual void draw() = m1 0x41dc20, imac 0x4bd130;
	virtual bool initWithColor(cocos2d::_ccColor4B const&, float, float) = m1 0x41d93c, imac 0x4bce50;
	virtual bool initWithColor(cocos2d::_ccColor4B const&) = m1 0x41da28, imac 0x4bcf40;
	virtual void updateColor() = m1 0x41dba4, imac 0x4bd0e0;

	virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x41dcec, imac 0x4bd200;
	virtual void setOpacity(unsigned char) = m1 0x41de98, imac 0x4bd380;

	virtual void setBlendFunc(cocos2d::_ccBlendFunc) = m1 0x41d4b8, imac 0x4bc890;
	virtual cocos2d::_ccBlendFunc getBlendFunc() = m1 0x41d4a8, imac 0x4bc870;
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA {
	static cocos2d::CCLayerRGBA* create();

	// CCLayerRGBA(cocos2d::CCLayerRGBA const&);
	CCLayerRGBA() = imac 0x4bb5e0;
	~CCLayerRGBA() = imac 0x4bb800;

	virtual bool init() = imac 0x4bba70;

	virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x41cc20, imac 0x4bbcb0;
	virtual cocos2d::_ccColor3B const& getColor() = m1 0x41cc00, imac 0x4bbc70;
	virtual cocos2d::_ccColor3B const& getDisplayedColor() = m1 0x41cc10, imac 0x4bbc90;
	virtual unsigned char getDisplayedOpacity() = m1 0x41ca98, imac 0x4bbb10;
	virtual unsigned char getOpacity() = m1 0x41ca88, imac 0x4bbaf0;
	virtual void setOpacity(unsigned char) = m1 0x41caa8, imac 0x4bbb30;
	virtual bool isCascadeColorEnabled() = m1 0x41d080, imac 0x4bc210;
	virtual void setCascadeColorEnabled(bool) = m1 0x41d090, imac 0x4bc230;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = m1 0x41cf4c, imac 0x4bbfb0;
	virtual bool isCascadeOpacityEnabled() = m1 0x41d060, imac 0x4bc1d0;
	virtual void setCascadeOpacityEnabled(bool) = m1 0x41d070, imac 0x4bc1f0;
	virtual void updateDisplayedOpacity(unsigned char) = m1 0x41cdac, imac 0x4bbe20;
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
class cocos2d::CCTextureCache {
	static void purgeSharedTextureCache();
	static void reloadAllTextures();
	static cocos2d::CCTextureCache* sharedTextureCache() = imac 0x5f61d0;

	// CCTextureCache(cocos2d::CCTextureCache const&);
	// CCTextureCache();
	cocos2d::CCTexture2D* addETCImage(char const*);
	cocos2d::CCTexture2D* addImage(char const*, bool) = imac 0x5f7450;
	void addImageAsync(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler, int, cocos2d::CCTexture2DPixelFormat);
	void addImageAsyncCallBack(float);
	cocos2d::CCTexture2D* addPVRImage(char const*);
	cocos2d::CCTexture2D* addUIImage(cocos2d::CCImage*, char const*) = imac 0x5f8250;
	char const* description();
	void dumpCachedTextureInfo();
	void prepareAsyncLoading();
	bool reloadTexture(char const*);
	void removeAllTextures();
	void removeTexture(cocos2d::CCTexture2D*);
	void removeTextureForKey(char const*);
	void removeUnusedTextures();
	cocos2d::CCDictionary* snapshotTextures();
	cocos2d::CCTexture2D* textureForKey(char const*) = imac 0x5f8850;
}

[[link(win, android)]]
class cocos2d::CCTouch {
	cocos2d::CCPoint getLocation() const = imac 0x5a550;
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

	void setDispatchEvents(bool) = imac 0x4d56d0;
	void setPriority(int, cocos2d::CCTouchDelegate*) = imac 0x4d6130;

	// CCTouchDispatcher(cocos2d::CCTouchDispatcher const&);
	// CCTouchDispatcher();
	void addPrioTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool);
	void addStandardDelegate(cocos2d::CCTouchDelegate*, int);
	void addTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x4d59b0;
	void decrementForcePrio(int);
	cocos2d::CCTouchHandler* findHandler(cocos2d::CCArray*, cocos2d::CCTouchDelegate*);
	cocos2d::CCTouchHandler* findHandler(cocos2d::CCTouchDelegate*) = imac 0x4d5fe0;
	void forceAddHandler(cocos2d::CCTouchHandler*, cocos2d::CCArray*);
	void forceRemoveAllDelegates();
	void forceRemoveDelegate(cocos2d::CCTouchDelegate*);
	void incrementForcePrio(int);
	bool isDispatchEvents();
	bool isUsingForcePrio();
	void rearrangeHandlers(cocos2d::CCArray*);
	void registerForcePrio(cocos2d::CCObject*, int) = imac 0x4d5890;
	void removeAllDelegates();
	void removeDelegate(cocos2d::CCTouchDelegate*);
	void touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int);
	void unregisterForcePrio(cocos2d::CCObject*) = imac 0x4d5930;

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
	void toggleFullScreen(bool, bool);
	void pollEvents();
	void setupWindow(cocos2d::CCRect);
	void end();
	// rest are in extras (lie)
	void onGLFWCharCallback(GLFWwindow* window, unsigned int entered);
	void onGLFWCursorEnterFunCallback(GLFWwindow* window, int entered);
	void onGLFWDeviceChangeFunCallback(GLFWwindow* window);
	void onGLFWError(int code, char const* description);
	void onGLFWKeyCallback(GLFWwindow* window, int key, int scancode, int action, int mods);
	void onGLFWMouseCallBack(GLFWwindow* window, int button, int action, int mods);
	void onGLFWMouseMoveCallBack(GLFWwindow* window, double x, double y);
	void onGLFWMouseScrollCallback(GLFWwindow* window, double xOffset, double yOffset);
	void onGLFWWindowIconifyFunCallback(GLFWwindow* window, int iconified);
	void onGLFWWindowPosCallback(GLFWwindow* window, int x, int y);
	void onGLFWWindowSizeFunCallback(GLFWwindow* window, int width, int height);
	void onGLFWframebuffersize(GLFWwindow* window, int width, int height);
}

[[link(win, android)]]
class cocos2d::CCImage {
	bool initWithImageData(void*, int, cocos2d::CCImage::EImageFormat, int, int, int, int) = imac 0x492d80;
	bool initWithImageFile(char const*, cocos2d::CCImage::EImageFormat);
	bool initWithImageFileThreadSafe(char const*, cocos2d::CCImage::EImageFormat);
	bool initWithString(char const*, int, int, cocos2d::CCImage::ETextAlign, char const*, int);

	int getBitsPerComponent() const;
	unsigned char* getData();
	int getDataLen();
	unsigned short getHeight() const;
	unsigned short getWidth() const;

	CCImage() = imac 0x492a70;
	~CCImage() = imac 0x492af0;

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
	~CCIMEDelegate() = imac 0x4c5c10;
	virtual bool attachWithIME() = imac 0x4c5c40;
	virtual bool detachWithIME() = imac 0x4c5e30;
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
	static cocos2d::CCDirector* sharedDirector() = imac 0x48b350, m1 0x3f0da8;

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
	cocos2d::CCSize getWinSize() = m1 0x3f1edc, imac 0x48c750;
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
	cocos2d::CCPoint convertToGL(cocos2d::CCPoint const&);
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
	bool replaceScene(cocos2d::CCScene*) = imac 0x48d110, m1 0x3f2764;
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
	void willSwitchToScene(cocos2d::CCScene*) = imac 0x48cf70;

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
	CCNodeRGBA() = imac 0x271180;
	~CCNodeRGBA() = imac 0x2711e0;

	virtual bool init() = m1 0x2172f8, imac 0x271210;

	virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x2176c8, imac 0x271630;
	virtual cocos2d::_ccColor3B const& getColor() = m1 0x2176a8, imac 0x2715f0;
	virtual cocos2d::_ccColor3B const& getDisplayedColor() = m1 0x2176b8, imac 0x271610;
	virtual unsigned char getDisplayedOpacity() = m1 0x217380, imac 0x2712c0;
	virtual unsigned char getOpacity() = m1 0x217370, imac 0x2712a0;
	virtual void setOpacity(unsigned char) = m1 0x217390, imac 0x2712e0;
	virtual bool isCascadeColorEnabled() = m1 0x217968, imac 0x2719c0;
	virtual void setCascadeColorEnabled(bool) = m1 0x217978, imac 0x2719e0;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = m1 0x217854, imac 0x2717a0;
	virtual bool isCascadeOpacityEnabled() = m1 0x217688, imac 0x2715b0;
	virtual void setCascadeOpacityEnabled(bool) = m1 0x217698, imac 0x2715d0;
	virtual void updateDisplayedOpacity(unsigned char) = m1 0x2174e8, imac 0x271420;
}

[[link(win, android)]]
class cocos2d::CCSequence {
	static cocos2d::CCSequence* create(cocos2d::CCArray*);
	// static cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, ...);
	static cocos2d::CCSequence* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);
	static cocos2d::CCSequence* createWithVariableList(cocos2d::CCFiniteTimeAction*, va_list) = imac 0x3b8b50;

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
class cocos2d::CCSprite {
	static cocos2d::CCSprite* create(char const*) = imac 0x2843b0;
	static cocos2d::CCSprite* create(char const*, cocos2d::CCRect const&);
	static cocos2d::CCSprite* create() = imac 0x2846b0;
	static cocos2d::CCSprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x284590;
	static cocos2d::CCSprite* createWithSpriteFrameName(char const*) = imac 0x284680;
	static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*) = imac 0x284130;
	static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = imac 0x2842c0;

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
	void setFlipX(bool) = imac 0x286360;
	void setFlipY(bool) = imac 0x2863b0;
	void setTextureAtlas(cocos2d::CCTextureAtlas*);
	void setTlVertexMod(float);
	void setTrVertexMod(float);
	void setUseVertexMod(bool);

	// CCSprite(cocos2d::CCSprite const&);
	CCSprite() = imac 0x284b40;
	~CCSprite() = imac 0x284c40;
	bool isFlipX() = imac 0x2863a0;
	bool isFlipY() = imac 0x2863f0;
	bool isTextureRectRotated();
	void updateColor();

	virtual bool init() = m1 0x229434, imac 0x284790;
	virtual void setVertexZ(float) = m1 0x22ac28, imac 0x286200;
	virtual void setScaleX(float) = m1 0x22aaa4, imac 0x2860a0;
	virtual void setScaleY(float) = m1 0x22ab20, imac 0x286110;
	virtual void setScale(float) = m1 0x22ab9c, imac 0x286180;
	virtual void setPosition(cocos2d::CCPoint const&) = m1 0x22a7e0, imac 0x285df0;
	virtual void setSkewX(float) = m1 0x22a9c4, imac 0x285fc0;
	virtual void setSkewY(float) = m1 0x22aa34, imac 0x286030;
	virtual void setAnchorPoint(cocos2d::CCPoint const&) = m1 0x22ac98, imac 0x286270;
	virtual void setVisible(bool) = m1 0x22ad0c, imac 0x2862f0;
	virtual void setRotation(float) = m1 0x22a874, imac 0x285e70;
	virtual void setRotationX(float) = m1 0x22a8e4, imac 0x285ee0;
	virtual void setRotationY(float) = m1 0x22a954, imac 0x285f50;
	virtual void ignoreAnchorPointForPosition(bool) = imac 0x2862e0;
	virtual void addChild(cocos2d::CCNode*) = imac 0x285930;
	virtual void addChild(cocos2d::CCNode*, int) = imac 0x285940;
	virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x22a304, imac 0x285950;
	virtual void removeChild(cocos2d::CCNode*, bool) = m1 0x22a46c, imac 0x285a90;
	virtual void removeAllChildrenWithCleanup(bool) = m1 0x22a4b4, imac 0x285ad0;
	virtual void reorderChild(cocos2d::CCNode*, int) = m1 0x22a3d8, imac 0x285a10;
	virtual void sortAllChildren() = m1 0x22a570, imac 0x285b90;
	virtual void draw() = m1 0x22a1e4, imac 0x285810;
	virtual void updateTransform() = m1 0x229e30, imac 0x285350;
	virtual bool initWithTexture(cocos2d::CCTexture2D*) = m1 0x2295a0, imac 0x284950;
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = m1 0x2295b0, imac 0x284930;
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = m1 0x22944c, imac 0x2847b0;
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x229724, imac 0x284ab0;
	virtual bool initWithSpriteFrameName(char const*) = m1 0x229788, imac 0x284b00;
	virtual bool initWithFile(char const*) = m1 0x22962c, imac 0x2849c0;
	virtual bool initWithFile(char const*, cocos2d::CCRect const&) = m1 0x2296c0, imac 0x284a50;
	virtual void setChildColor(cocos2d::_ccColor3B const&) = m1 0x22b110, imac 0x286900;
	virtual void setChildOpacity(unsigned char) = m1 0x22af9c, imac 0x2866d0;
	virtual cocos2d::CCSpriteBatchNode* getBatchNode() = m1 0x22b51c, imac 0x2870f0;
	virtual void setBatchNode(cocos2d::CCSpriteBatchNode*) = m1 0x22b524, imac 0x287100;
	virtual void refreshTextureRect() = m1 0x229934, imac 0x284d00;
	virtual void setTextureRect(cocos2d::CCRect const&) = m1 0x2299b8, imac 0x284d90;
	virtual void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&) = m1 0x2299cc, imac 0x284db0;
	virtual void setVertexRect(cocos2d::CCRect const&) = m1 0x229c60, imac 0x2850f0;
	virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = m1 0x22b29c, imac 0x286de0;
	virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = m1 0x22b370, imac 0x286eb0;
	virtual cocos2d::CCSpriteFrame* displayFrame() = m1 0x22b414, imac 0x286f40;
	virtual void setDisplayFrameWithAnimationName(char const*, int) = m1 0x22b31c, imac 0x286e60;
	virtual void setTextureCoords(cocos2d::CCRect const&) = m1 0x229c68, imac 0x285110;
	virtual void updateBlendFunc() = m1 0x22b570, imac 0x287170;
	virtual void setReorderChildDirtyRecursively() = m1 0x22a6f8, imac 0x285d10;
	virtual void setDirtyRecursively(bool) = m1 0x22a760, imac 0x285d70;

	virtual void setOpacity(unsigned char) = m1 0x22aea4, imac 0x286520;
	virtual void updateDisplayedOpacity(unsigned char) = m1 0x22b250, imac 0x286c80;
	virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x22b048, imac 0x286780;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = m1 0x22b204, imac 0x286b20;
	virtual void setOpacityModifyRGB(bool) = m1 0x22b1bc, imac 0x2869b0;
	virtual bool isOpacityModifyRGB() = m1 0x22b1f4, imac 0x286b00;

	virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x22b5c8, imac 0x2871d0;
	virtual cocos2d::CCTexture2D* getTexture() = m1 0x22b708, imac 0x287340;
}

[[link(win, android)]]
class cocos2d::CCLabelBMFont {
	static cocos2d::CCLabelBMFont* create(char const*, char const*) = imac 0x5e0fa0;
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float);
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment);
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint);
	static cocos2d::CCLabelBMFont* create();
	static cocos2d::CCLabelBMFont* createBatched(char const*, char const*, cocos2d::CCArray*, int);
	static void purgeCachedData();

	bool initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint);

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
	void createFontChars();
	int kerningAmountForFirst(unsigned short, unsigned short);
	void limitLabelWidth(float, float, float) = imac 0x5e4790;

	~CCLabelBMFont() = imac 0x5e1630;
	virtual bool init() = m1 0x50b848, imac 0x5e13d0;
	virtual void setScaleX(float) = m1 0x50e0a8, imac 0x5e4630;
	virtual void setScaleY(float) = m1 0x50e0d4, imac 0x5e4650;
	virtual void setScale(float) = m1 0x50e07c, imac 0x5e4610;
	virtual void setAnchorPoint(cocos2d::CCPoint const&) = m1 0x50cd94, imac 0x5e2c50;
	virtual void setString(char const*) = m1 0x50c348, imac 0x5e2130;
	virtual void setString(char const*, bool) = m1 0x50c36c, imac 0x5e2180;
	virtual char const* getString() = m1 0x50c5a0, imac 0x5e23d0;
	virtual void setCString(char const*) = m1 0x50c5d8, imac 0x5e2420;
	virtual void updateLabel() = m1 0x50cde8, imac 0x5e2c90;
	virtual void setAlignment(cocos2d::CCTextAlignment) = m1 0x50e04c, imac 0x5e45b0;
	virtual void setWidth(float) = m1 0x50e05c, imac 0x5e45d0;
	virtual void setLineBreakWithoutSpace(bool) = m1 0x50e06c, imac 0x5e45f0;
	virtual void setString(unsigned short*, bool) = m1 0x50c3f4, imac 0x5e2200;

	virtual void setColor(cocos2d::_ccColor3B const&) = m1 0x50c604, imac 0x5e2480;
	virtual cocos2d::_ccColor3B const& getColor() = m1 0x50c5e4, imac 0x5e2440;
	virtual cocos2d::_ccColor3B const& getDisplayedColor() = m1 0x50c5f4, imac 0x5e2460;
	virtual unsigned char getDisplayedOpacity() = m1 0x50c7a0, imac 0x5e2610;
	virtual unsigned char getOpacity() = m1 0x50c790, imac 0x5e25f0;
	virtual void setOpacity(unsigned char) = m1 0x50c7b0, imac 0x5e2630;
	virtual void setOpacityModifyRGB(bool) = m1 0x50c908, imac 0x5e2770;
	virtual bool isOpacityModifyRGB() = m1 0x50ca78, imac 0x5e28f0;
	virtual bool isCascadeColorEnabled() = m1 0x50cd54, imac 0x5e2bd0;
	virtual void setCascadeColorEnabled(bool) = m1 0x50cd64, imac 0x5e2bf0;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = m1 0x50cbb0, imac 0x5e2a20;
	virtual bool isCascadeOpacityEnabled() = m1 0x50cd74, imac 0x5e2c10;
	virtual void setCascadeOpacityEnabled(bool) = m1 0x50cd84, imac 0x5e2c30;
	virtual void updateDisplayedOpacity(unsigned char) = m1 0x50ca88, imac 0x5e2910;
}

[[link(win, android)]]
class cocos2d::CCActionManager {
	void addAction(cocos2d::CCAction*, cocos2d::CCNode*, bool) = imac 0x22f4d0;
}

[[link(win, android)]]
class cocos2d::CCApplication {
	static cocos2d::CCApplication* sharedApplication() = imac 0x328170;
	virtual int run();
	virtual void openURL(char const*) = m1 0x2b877c;
}

[[link(win, android)]]
class cocos2d::CCArray {
	// static cocos2d::CCArray* create(cocos2d::CCObject*, ...);
	static cocos2d::CCArray* create() = imac 0x72cc40;
	static cocos2d::CCArray* createWithArray(cocos2d::CCArray*);
	static cocos2d::CCArray* createWithCapacity(unsigned int);
	static cocos2d::CCArray* createWithContentsOfFile(char const*);
	static cocos2d::CCArray* createWithContentsOfFileThreadSafe(char const*);
	static cocos2d::CCArray* createWithObject(cocos2d::CCObject*);

	bool init();
	bool initWithArray(cocos2d::CCArray*);
	bool initWithCapacity(unsigned int);
	bool initWithObject(cocos2d::CCObject*);
	// bool initWithObjects(cocos2d::CCObject*, ...);

	// CCArray(cocos2d::CCArray const&);
	// CCArray(unsigned int);
	// CCArray();
	void addObject(cocos2d::CCObject*) = imac 0x72cf20;
	void addObjectNew(cocos2d::CCObject*);
	void addObjectsFromArray(cocos2d::CCArray*);
	unsigned int capacity() const;
	bool containsObject(cocos2d::CCObject*) const;
	unsigned int count() const = imac 0x72d2a0;
	void exchangeObject(cocos2d::CCObject*, cocos2d::CCObject*);
	void exchangeObjectAtIndex(unsigned int, unsigned int);
	void fastRemoveObject(cocos2d::CCObject*);
	void fastRemoveObjectAtIndex(unsigned int);
	void fastRemoveObjectAtIndexChild(unsigned int);
	void fastRemoveObjectAtIndexNew(unsigned int);
	unsigned int indexOfObject(cocos2d::CCObject*) const;
	void insertObject(cocos2d::CCObject*, unsigned int);
	bool isEqualToArray(cocos2d::CCArray*);
	cocos2d::CCObject* lastObject() = imac 0x72d310;
	cocos2d::CCObject* objectAtIndex(unsigned int) = imac 0x72d2f0;
	cocos2d::CCObject* randomObject();
	void recreateNewIndexes();
	void reduceMemoryFootprint();
	void removeAllObjects();
	void removeLastObject(bool) = imac 0x72d440;
	void removeObject(cocos2d::CCObject*, bool);
	void removeObjectAtIndex(unsigned int, bool);
	void removeObjectAtIndexChild(unsigned int, bool);
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
	//void setObject(cocos2d::CCObject*, int);
	void setObjectUnSafe(cocos2d::CCObject*, gd::string const&);
	//void setObjectUnSafe(cocos2d::CCObject*, int);

	// CCDictionary(cocos2d::CCDictionary const&);
	// CCDictionary();
	cocos2d::CCArray* allKeys();
	cocos2d::CCArray* allKeysForObject(cocos2d::CCObject*);
	char const* charForKey(gd::string const&);
	unsigned int count();
	cocos2d::CCObject* objectForKey(gd::string const&);
	//cocos2d::CCObject* objectForKey(int);
	cocos2d::CCObject* randomObject();
	void removeAllObjects();
	void removeObjectForElememt(cocos2d::CCDictElement*);
	void removeObjectForKey(gd::string const&);
	//void removeObjectForKey(int);
	void removeObjectsForKeys(cocos2d::CCArray*);
	cocos2d::CCString const* valueForKey(gd::string const&);
	//cocos2d::CCString const* valueForKey(int);
	bool writeToFile(char const*);

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void acceptVisitor(cocos2d::CCDataVisitor&);
}

[[link(win, android)]]
class cocos2d::CCRepeatForever {
	static cocos2d::CCRepeatForever* create(cocos2d::CCActionInterval*) = imac 0x3b9b90;

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
class cocos2d::CCTransitionFade {
	static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*) = imac 0xdc990, m1 0x3ff708;
	static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&);

	// CCTransitionFade(cocos2d::CCTransitionFade const&);
	// CCTransitionFade();

	virtual void onEnter() = imac 0xdca80;
	virtual void onExit() = imac 0xdcbb0;
	virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xdca60;
	virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&) = imac 0xdca10;
}

[[link(win, android)]]
class cocos2d::CCTransitionScene {
	// CCTransitionScene(cocos2d::CCTransitionScene const&);
	// CCTransitionScene();

	~CCTransitionScene() = imac 0xd8700;

	virtual void onEnter() = imac 0xd8b40;
	virtual void onExit() = imac 0xd8b90;
	virtual void cleanup() = imac 0xd8bf0;
	virtual void draw() = imac 0xd88f0;
	virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xd8820;
	virtual void sceneOrder() = imac 0xd88e0;
}

[[link(win, android)]]
class cocos2d::CCCallFunc {
	static cocos2d::CCCallFunc* create(cocos2d::CCObject*, cocos2d::SEL_CallFunc) = imac 0x7b8f10, m1 0x6bf45c;
}

[[link(win, android)]]
class cocos2d::CCDrawNode {
	static cocos2d::CCDrawNode* create();

	cocos2d::_ccBlendFunc getBlendFunc() const;

	void setBlendFunc(cocos2d::_ccBlendFunc const&);

	// CCDrawNode(cocos2d::CCDrawNode const&);
	// CCDrawNode();
	void clear();
	void drawCircle(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&, unsigned int);
	void drawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&);
	void drawDot(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&);
	bool drawLines(cocos2d::CCPoint*, unsigned int, float, cocos2d::_ccColor4F const&);
	bool drawPolygon(cocos2d::CCPoint *verts, unsigned int count, const cocos2d::ccColor4F &fillColor, float borderWidth, const cocos2d::ccColor4F &borderColor);
	void drawPreciseCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&);
	bool drawRect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&);
	void drawSegment(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&);
	void ensureCapacity(unsigned int);
	void listenBackToForeground(cocos2d::CCObject*);
	void render();

	virtual bool init();
	virtual void draw() = m1 0x53f49c;
}

[[link(win, android)]]
class cocos2d::CCSpriteBatchNode {
	bool initWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x171670;

	CCSpriteBatchNode() = imac 0x171940;
	~CCSpriteBatchNode() = imac 0x1719f0;

	virtual bool init() = imac 0x1718f0;
	virtual void addChild(cocos2d::CCNode*) = imac 0x171dc0;
	virtual void addChild(cocos2d::CCNode*, int) = imac 0x171dd0;
	virtual void addChild(cocos2d::CCNode*, int, int) = imac 0x171b60;
	virtual void removeChild(cocos2d::CCNode*, bool) = imac 0x171e40;
	virtual void removeAllChildrenWithCleanup(bool) = imac 0x172120;
	virtual void reorderChild(cocos2d::CCNode*, int) = imac 0x171de0;
	virtual void sortAllChildren() = imac 0x1721d0;
	virtual void draw() = imac 0x1729c0;
	virtual void visit() = imac 0x171ac0;

	virtual void setBlendFunc(cocos2d::_ccBlendFunc) = imac 0x173220;
	virtual cocos2d::_ccBlendFunc getBlendFunc() = imac 0x173240;
	virtual cocos2d::CCTexture2D* getTexture() = imac 0x173260;
	virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x173290;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrame {
	static cocos2d::CCSpriteFrame* create(char const*, cocos2d::CCRect const&);
	static cocos2d::CCSpriteFrame* create(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);
	static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
	static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);

	bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
	bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);
	bool initWithTextureFilename(char const*, cocos2d::CCRect const&);
	bool initWithTextureFilename(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);

	gd::string getFrameName() const;
	cocos2d::CCPoint const& getOffset();
	cocos2d::CCPoint const& getOffsetInPixels();
	cocos2d::CCSize const& getOriginalSize();
	cocos2d::CCSize const& getOriginalSizeInPixels();
	cocos2d::CCRect const& getRect();
	cocos2d::CCRect const& getRectInPixels();
	cocos2d::CCTexture2D* getTexture() = imac 0x359240;

	void setFrameName(gd::string);
	void setOffset(cocos2d::CCPoint const&);
	void setOffsetInPixels(cocos2d::CCPoint const&);
	void setOriginalSize(cocos2d::CCSize const&);
	void setOriginalSizeInPixels(cocos2d::CCSize const&);
	void setRect(cocos2d::CCRect const&);
	void setRectInPixels(cocos2d::CCRect const&);
	void setRotated(bool);
	void setTexture(cocos2d::CCTexture2D*);

	// CCSpriteFrame(cocos2d::CCSpriteFrame const&);
	// CCSpriteFrame();
	bool isRotated();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
}

[[link(win, android)]]
class cocos2d::CCSpriteFrameCache {
	static cocos2d::CCSpriteFrameCache* sharedSpriteFrameCache() = imac 0x31a9f0;

	bool init();

	// CCSpriteFrameCache();
	// CCSpriteFrameCache(cocos2d::CCSpriteFrameCache const&);
	void addSpriteFrame(cocos2d::CCSpriteFrame*, char const*);
	void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*);
	void addSpriteFramesWithFile(char const*, char const*);
	void addSpriteFramesWithFile(char const*) = imac 0x31b8b0;
	void addSpriteFramesWithFile(char const*, cocos2d::CCTexture2D*);
	void removeSpriteFrameByName(char const*);
	void removeSpriteFrames();
	void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*);
	void removeSpriteFramesFromFile(char const*);
	void removeSpriteFramesFromTexture(cocos2d::CCTexture2D*);
	void removeUnusedSpriteFrames();
	cocos2d::CCSpriteFrame* spriteFrameByName(char const*) = imac 0x31c720;
}

[[link(win, android)]]
class cocos2d::CCString {
	static cocos2d::CCString* createWithData(unsigned char const*, unsigned long) = imac 0x7b7370;

	char const* getCString() const = imac 0x7b6cc0;
}

[[link(win, android)]]
class cocos2d::CCMenuItem {
	~CCMenuItem() = imac 0x3c1fc0;
	static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
	static cocos2d::CCMenuItem* create();

	bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3c1ee0;

	int getScriptTapHandler();

	void setTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3c2210;

	// CCMenuItem(cocos2d::CCMenuItem const&);
	// CCMenuItem();
	cocos2d::CCRect rect();

	virtual void activate() = imac 0x3c2120;
	virtual void selected() = imac 0x3c2090;
	virtual void unselected() = imac 0x3c20a0;
	virtual void registerScriptTapHandler(int) = m1 0x345548, imac 0x3c20b0;
	virtual void unregisterScriptTapHandler() = m1 0x345578, imac 0x3c20e0;
	virtual bool isEnabled() = m1 0x34563c, imac 0x3c21a0;
	virtual void setEnabled(bool) = imac 0x3c2190;
	virtual bool isSelected() = m1 0x345660, imac 0x3c2200;
}

[[link(win, android)]]
class cocos2d::CCMenuItemSprite {
	bool initWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3c3650;

	virtual void selected() = imac 0x3c3740;
	virtual void unselected() = imac 0x3c37e0;
	virtual void setEnabled(bool) = imac 0x3c3860;
	virtual cocos2d::CCNode* getNormalImage() = imac 0x3c3290;
	virtual void setNormalImage(cocos2d::CCNode*) = imac 0x3c32a0;
	virtual cocos2d::CCNode* getSelectedImage() = imac 0x3c3360;
	virtual void setSelectedImage(cocos2d::CCNode*) = imac 0x3c3370;
	virtual cocos2d::CCNode* getDisabledImage() = imac 0x3c3400;
	virtual void setDisabledImage(cocos2d::CCNode*) = imac 0x3c3410;
	virtual void updateImagesVisibility() = imac 0x3c3880;
}

[[link(win, android)]]
class cocos2d::CCMenu {
	// static cocos2d::CCMenu* create(cocos2d::CCMenuItem*, ...);
	static cocos2d::CCMenu* create() = imac 0x79e7a0;
	static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*);
    static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*);
    // static cocos2d::CCMenu* createWithItems(cocos2d::CCMenuItem*, char*);

	bool initWithArray(cocos2d::CCArray*);

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

	virtual bool init() = m1 0x6a7100;
	virtual void addChild(cocos2d::CCNode*);
	virtual void addChild(cocos2d::CCNode*, int);
	virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x6a7110;
	virtual void removeChild(cocos2d::CCNode*, bool) = m1 0x6a71b8;
	virtual void onExit() = m1 0x6a7170;
	virtual void registerWithTouchDispatcher();

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x6a7548;
}

[[link(win, android)]]
class cocos2d::CCRotateBy {
	static cocos2d::CCRotateBy* create(float, float) = imac 0x3baf60;
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
class cocos2d::CCDelayTime {
	static cocos2d::CCDelayTime* create(float) = imac 0x3ba690;

	// CCDelayTime(cocos2d::CCDelayTime const&);
	// CCDelayTime();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCTextFieldTTF {
	// CCTextFieldTTF();
	// virtual ~CCTextFieldTTF();

	static CCTextFieldTTF* textFieldWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize);
	static CCTextFieldTTF* textFieldWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize);

	bool initWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize);
	bool initWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize);

	void setDelegate(cocos2d::CCTextFieldDelegate* var);

	virtual void draw();
	virtual const cocos2d::ccColor3B& getColorSpaceHolder();
	virtual void setColorSpaceHolder(const cocos2d::ccColor3B& color);
	virtual const char* getPlaceHolder();
	virtual void setPlaceHolder(const char* text);
	virtual void setSecureTextEntry(bool value);
	virtual bool isSecureTextEntry();

	virtual void setString(const char* text);
	virtual const char* getString();

	virtual bool attachWithIME();
	virtual bool detachWithIME();
	virtual bool canAttachWithIME();
	virtual bool canDetachWithIME();
	virtual void insertText(const char* text, int len, cocos2d::enumKeyCodes keyCode);
	virtual void deleteBackward();
	virtual const char* getContentText();
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
	static cocos2d::CCPoint __CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&);
	static cocos2d::CCSize __CCSizeApplyAffineTransform(cocos2d::CCSize const&, cocos2d::CCAffineTransform const&);
	static cocos2d::CCPoint ccCardinalSplineAt(cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, float, float);
	static void ccDrawCardinalSpline(cocos2d::CCPointArray*, float, unsigned int);
	static void ccDrawCatmullRom(cocos2d::CCPointArray*, unsigned int);
	static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool);
	static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool, float, float);
	static void ccDrawCircleSegment(cocos2d::CCPoint const&, float, float, float, unsigned int, bool, float, float);
	static void ccDrawColor4B(unsigned char, unsigned char, unsigned char, unsigned char) = imac 0x204480;
	static void ccDrawColor4F(float, float, float, float);
	static void ccDrawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
	static void ccDrawFilledCircle(cocos2d::CCPoint const&, float, float, unsigned int);
	static void ccDrawFree();
	static void ccDrawInit();
	static void ccDrawLine(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = imac 0x202c30;
	static void ccDrawLines(cocos2d::CCPoint const*, unsigned int);
	static void ccDrawPoint(cocos2d::CCPoint const&);
	static void ccDrawPoints(cocos2d::CCPoint const*, unsigned int);
	static void ccDrawPoly(cocos2d::CCPoint const*, unsigned int, bool);
	static void ccDrawQuadBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
	static void ccDrawRect(cocos2d::CCPoint, cocos2d::CCPoint);
	static void ccDrawSolidPoly(cocos2d::CCPoint const*, unsigned int, cocos2d::_ccColor4F) = imac 0x202f10;
	static void ccDrawSolidRect(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::_ccColor4F) = imac 0x202e60;
	static void ccGLBindTexture2D(unsigned int);
	static void ccGLBindTexture2DN(unsigned int, unsigned int);
	static void ccGLBindVAO(unsigned int);
	static void ccGLBlendFunc(unsigned int, unsigned int) = imac 0x35c1f0;
	static void ccGLBlendResetToCache() = imac 0x35c250;
	static void ccGLDeleteProgram(unsigned int);
	static void ccGLDeleteTexture(unsigned int);
	static void ccGLDeleteTextureN(unsigned int, unsigned int);
	static void ccGLEnable(cocos2d::ccGLServerState);
	static void ccGLEnableVertexAttribs(unsigned int);
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
	static cocos2d::CCPoint ccpFromSize(cocos2d::CCSize const&);
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

[[link(win, android)]]
class cocos2d::extension::CCControlColourPicker {
	static cocos2d::extension::CCControlColourPicker* colourPicker() = imac 0x356900;
}

[[link(win, android)]]
class cocos2d::extension::CCScale9Sprite {
	static cocos2d::extension::CCScale9Sprite* create();
	static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const*) = imac 0x3fe8f0;
	static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const*, cocos2d::CCRect) = imac 0x3fe810;
	static cocos2d::extension::CCScale9Sprite* create(char const*) = imac 0x3fe560;
	static cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect) = imac 0x3fe390;

	CCScale9Sprite() = imac 0x3fc930;
	~CCScale9Sprite() = imac 0x3fcb10;

	virtual bool init() = imac 0x3fcb40;
	virtual void setContentSize(const cocos2d::CCSize& size) = imac 0x3fdcd0;
	virtual void visit();
	virtual GLubyte getOpacity();
	virtual void setOpacity(GLubyte opacity);
	virtual void updateDisplayedOpacity(GLubyte parentOpacity);
	virtual const cocos2d::ccColor3B& getColor();
	virtual void setColor(const cocos2d::ccColor3B& color);
	virtual void updateDisplayedColor(const cocos2d::ccColor3B& parentColor);
	virtual void setOpacityModifyRGB(bool bValue);
	virtual bool isOpacityModifyRGB();
	virtual cocos2d::CCSize getPreferredSize();
	virtual void setPreferredSize(cocos2d::CCSize);
	virtual cocos2d::CCRect getCapInsets();
	virtual void setCapInsets(cocos2d::CCRect);
	virtual float getInsetLeft();
	virtual void setInsetLeft(float);
	virtual float getInsetTop();
	virtual void setInsetTop(float);
	virtual float getInsetRight();
	virtual void setInsetRight(float);
	virtual float getInsetBottom();
	virtual void setInsetBottom(float);
	virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect);
	virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, cocos2d::CCRect);
	virtual bool initWithFile(const char*, cocos2d::CCRect, cocos2d::CCRect);
	virtual bool initWithFile(const char*, cocos2d::CCRect);
	virtual bool initWithFile(cocos2d::CCRect, const char*);
	virtual bool initWithFile(const char*);
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect);
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*);
	virtual bool initWithSpriteFrameName(const char*, cocos2d::CCRect);
	virtual bool initWithSpriteFrameName(const char*);
	virtual bool updateWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect);
	virtual void setSpriteFrame(cocos2d::CCSpriteFrame*);
}

[[link(win, android)]]
class cocos2d::extension::CCHttpClient : cocos2d::CCObject {
	static cocos2d::extension::CCHttpClient* getInstance();
	static void destroyInstance();
	void send(cocos2d::extension::CCHttpRequest* request);
}
