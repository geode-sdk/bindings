[[link(win, android)]]
class cocos2d::CCMotionStreak {
	static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::_ccColor3B const&, cocos2d::CCTexture2D*) = android32 0x5addd8;
	static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::_ccColor3B const&, char const*) = android32 0x5ade5a;

	bool initWithFade(float, float, float, cocos2d::_ccColor3B const&, cocos2d::CCTexture2D*) = android32 0x5adc94;
	bool initWithFade(float, float, float, cocos2d::_ccColor3B const&, char const*) = android32 0x5ade24;

	bool getDontOpacityFade() const;
	float getM_fMaxSeg() const;

	void setDontOpacityFade(bool);
	void setFastMode(bool);
	void setM_fMaxSeg(float);
	void setStartingPositionInitialized(bool);
	void setStroke(float) = android32 0x5adc7e;

	// CCMotionStreak(cocos2d::CCMotionStreak const&);
	// CCMotionStreak();
	void enableRepeatMode(float) = android32 0x5adc08;
	bool isFastMode();
	bool isStartingPositionInitialized();
	void reset() = android32 0x5adc84;
	void resumeStroke() = android32 0x5adc76;
	void stopStroke() = android32 0x5adc6e;
	void tintWithColor(cocos2d::_ccColor3B) = android32 0x5adbcc;
	void updateFade(float) = android32 0x5adc5c;

	virtual void update(float) = android32 0x5ad6f8;
	virtual void setPosition(cocos2d::CCPoint const&) = android32 0x5ad5fa;
	virtual void draw() = android32 0x5ad638;

	virtual unsigned char getOpacity() = android32 0x5ad542 = android32 0x5ad53e;
	virtual void setOpacity(unsigned char) = android32 0x5ad536 = android32 0x5ad534;
	virtual void setOpacityModifyRGB(bool) = android32 0x5ad54c = android32 0x5ad54a;
	virtual bool isOpacityModifyRGB() = android32 0x5ad558 = android32 0x5ad554;

	virtual void setBlendFunc(cocos2d::_ccBlendFunc) = android32 0x5ad514 = android32 0x5ad4fe;
	virtual cocos2d::_ccBlendFunc getBlendFunc() = android32 0x5ad52c = android32 0x5ad51c;
	virtual cocos2d::CCTexture2D* getTexture() = android32 0x5ad4f6 = android32 0x5ad4f0;
	virtual void setTexture(cocos2d::CCTexture2D*) = android32 0x5ad62e = android32 0x5ad608;
}

[[link(win, android)]]
class cocos2d::CCScene {
	static cocos2d::CCScene* create() = ios 0x248dd0, android32 0x5a73a4;

	int getHighestChildZ() = ios 0x248e44, android32 0x5a73d6;

	// CCScene(cocos2d::CCScene const&);
	// CCScene();

	virtual bool init() = android32 0x5a7308;
}

[[link(win, android)]]
class cocos2d::CCParticleSystem {
	static cocos2d::CCParticleSystem* create(char const*) = android32 0x5b3cd4;
	static cocos2d::CCParticleSystem* createWithTotalParticles(unsigned int) = android32 0x5b1e5c;

	void initParticle(cocos2d::sCCParticle*) = android32 0x5b1ef0;
	bool initWithDictionary(cocos2d::CCDictionary*, char const*, bool) = android32 0x5b317c;
	bool initWithDictionary(cocos2d::CCDictionary*, bool) = android32 0x5b3d0c;
	bool initWithFile(char const*, bool) = android32 0x5b3c14;

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
	float getTimeElapsed() = android32 0x5b1e96;
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
	bool addParticle() = android32 0x5b27d6;
	void calculateWorldSpace() = android32 0x5b1e9c;
	bool isFull() = android32 0x5b27c6;
	void loadDefaults() = android32 0x5b3d1c;
	void loadScaledDefaults(float) = android32 0x5b3d70;
	void resetSystem() = android32 0x5b28d6;
	void resumeSystem() = android32 0x5b27be;
	void saveDefaults() = android32 0x5b3124;
	void stopSystem() = android32 0x5b27a8;
	void toggleUniformColorMode(bool);
	void updateVisible() = android32 0x5b28c0;

	virtual void update(float) = android32 0x5b2960;
	virtual bool init() = android32 0x5b16d8;
	virtual void setScaleX(float) = android32 0x5b3e24;
	virtual void setScaleY(float) = android32 0x5b3e2e;
	virtual void setScale(float) = android32 0x5b3e10;
	virtual void setVisible(bool) = android32 0x5b311c;
	virtual void setRotation(float) = android32 0x5b3e1a;
	virtual cocos2d::CCParticleBatchNode* getBatchNode() = android32 0x5b1960;
	virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = android32 0x5b1966;
	virtual unsigned int getParticleCount() = android32 0x5b17c2;
	virtual float getDuration() = android32 0x5b17c8;
	virtual void setDuration(float) = android32 0x5b17ce;
	virtual cocos2d::CCPoint const& getSourcePosition() = android32 0x5b17d4;
	virtual void setSourcePosition(cocos2d::CCPoint const&) = android32 0x5b199a;
	virtual cocos2d::CCPoint const& getPosVar() = android32 0x5b17da;
	virtual void setPosVar(cocos2d::CCPoint const&) = android32 0x5b19a2;
	virtual float getLife() = android32 0x5b17e0;
	virtual void setLife(float) = android32 0x5b17e6;
	virtual float getLifeVar() = android32 0x5b17ec;
	virtual void setLifeVar(float) = android32 0x5b17f2;
	virtual float getAngle() = android32 0x5b17f8;
	virtual void setAngle(float) = android32 0x5b17fe;
	virtual float getAngleVar() = android32 0x5b1804;
	virtual void setAngleVar(float) = android32 0x5b180a;
	virtual void updateEmissionRate() = android32 0x5b1b14;
	virtual cocos2d::CCPoint const& getGravity() = android32 0x5b1756;
	virtual void setGravity(cocos2d::CCPoint const&) = android32 0x5b1992;
	virtual float getSpeed() = android32 0x5b1762;
	virtual void setSpeed(float) = android32 0x5b175c;
	virtual float getSpeedVar() = android32 0x5b176e;
	virtual void setSpeedVar(float) = android32 0x5b1768;
	virtual float getTangentialAccel() = android32 0x5b1720;
	virtual void setTangentialAccel(float) = android32 0x5b171a;
	virtual float getTangentialAccelVar() = android32 0x5b172c;
	virtual void setTangentialAccelVar(float) = android32 0x5b1726;
	virtual float getRadialAccel() = android32 0x5b1738;
	virtual void setRadialAccel(float) = android32 0x5b1732;
	virtual float getRadialAccelVar() = android32 0x5b1744;
	virtual void setRadialAccelVar(float) = android32 0x5b173e;
	virtual bool getRotationIsDir() = android32 0x5b1750;
	virtual void setRotationIsDir(bool) = android32 0x5b174a;
	virtual float getStartRadius() = android32 0x5b177a;
	virtual void setStartRadius(float) = android32 0x5b1774;
	virtual float getStartRadiusVar() = android32 0x5b1786;
	virtual void setStartRadiusVar(float) = android32 0x5b1780;
	virtual float getEndRadius() = android32 0x5b1792;
	virtual void setEndRadius(float) = android32 0x5b178c;
	virtual float getEndRadiusVar() = android32 0x5b179e;
	virtual void setEndRadiusVar(float) = android32 0x5b1798;
	virtual float getRotatePerSecond() = android32 0x5b17aa;
	virtual void setRotatePerSecond(float) = android32 0x5b17a4;
	virtual float getRotatePerSecondVar() = android32 0x5b17b6;
	virtual void setRotatePerSecondVar(float) = android32 0x5b17b0;
	virtual bool isActive() = android32 0x5b17bc;
	virtual bool isBlendAdditive() = android32 0x5b16fe;
	virtual void setBlendAdditive(bool) = android32 0x5b1b48;
	virtual float getStartSize() = android32 0x5b1810;
	virtual void setStartSize(float) = android32 0x5b1816;
	virtual float getStartSizeVar() = android32 0x5b181c;
	virtual void setStartSizeVar(float) = android32 0x5b1822;
	virtual float getEndSize() = android32 0x5b1828;
	virtual void setEndSize(float) = android32 0x5b182e;
	virtual float getEndSizeVar() = android32 0x5b1834;
	virtual void setEndSizeVar(float) = android32 0x5b183a;
	virtual cocos2d::_ccColor4F const& getStartColor() = android32 0x5b1840;
	virtual void setStartColor(cocos2d::_ccColor4F const&) = android32 0x5b1846;
	virtual cocos2d::_ccColor4F const& getStartColorVar() = android32 0x5b1854;
	virtual void setStartColorVar(cocos2d::_ccColor4F const&) = android32 0x5b185a;
	virtual cocos2d::_ccColor4F const& getEndColor() = android32 0x5b1868;
	virtual void setEndColor(cocos2d::_ccColor4F const&) = android32 0x5b186e;
	virtual cocos2d::_ccColor4F const& getEndColorVar() = android32 0x5b187c;
	virtual void setEndColorVar(cocos2d::_ccColor4F const&) = android32 0x5b1882;
	virtual float getStartSpin() = android32 0x5b1890;
	virtual void setStartSpin(float) = android32 0x5b1896;
	virtual float getStartSpinVar() = android32 0x5b189c;
	virtual void setStartSpinVar(float) = android32 0x5b18a2;
	virtual float getEndSpin() = android32 0x5b18a8;
	virtual void setEndSpin(float) = android32 0x5b18ae;
	virtual float getEndSpinVar() = android32 0x5b18b4;
	virtual void setEndSpinVar(float) = android32 0x5b18ba;
	virtual float getEmissionRate() = android32 0x5b18c0;
	virtual void setEmissionRate(float) = android32 0x5b18c6;
	virtual unsigned int getTotalParticles() = android32 0x5b18cc;
	virtual void setTotalParticles(unsigned int) = android32 0x5b18d2;
	virtual bool getOpacityModifyRGB() = android32 0x5b1930;
	virtual void setOpacityModifyRGB(bool) = android32 0x5b1936;
	virtual cocos2d::tCCPositionType getPositionType() = android32 0x5b193c;
	virtual void setPositionType(cocos2d::tCCPositionType) = android32 0x5b1942;
	virtual bool isAutoRemoveOnFinish() = android32 0x5b1948;
	virtual void setAutoRemoveOnFinish(bool) = android32 0x5b194e;
	virtual int getEmitterMode() = android32 0x5b1954;
	virtual void setEmitterMode(int) = android32 0x5b195a;
	virtual bool initWithTotalParticles(unsigned int, bool) = android32 0x5b19aa;
	virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&) = android32 0x5b16ec;
	virtual void postStep() = android32 0x5b16ee;
	virtual void updateWithNoTime() = android32 0x5b16e4;
	virtual void updateBlendFunc() = android32 0x5b1ace;

	virtual void setBlendFunc(cocos2d::_ccBlendFunc) = android32 0x5b1928 = android32 0x5b18f0;
	virtual cocos2d::_ccBlendFunc getBlendFunc() = android32 0x5b18e8 = android32 0x5b18d8;
	virtual cocos2d::CCTexture2D* getTexture() = android32 0x5b16f6 = android32 0x5b16f0;
	virtual void setTexture(cocos2d::CCTexture2D*) = android32 0x5b1ac6 = android32 0x5b1a92;
}

[[link(win, android)]]
class cocos2d::CCCallFunc {
	static cocos2d::CCCallFunc* create(int) = android32 0x58ce36;
	static cocos2d::CCCallFunc* create(cocos2d::CCObject*, cocos2d::SEL_CallFunc) = ios 0x1b42e8, android32 0x58cdf0;

	int getScriptHandler();
	cocos2d::CCObject* getTargetCallback();

	void setTargetCallback(cocos2d::CCObject*);

	// CCCallFunc(cocos2d::CCCallFunc const&);
	// CCCallFunc();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = android32 0x58c86c;
	virtual void update(float) = android32 0x58c2ca;
	virtual bool initWithTarget(cocos2d::CCObject*) = android32 0x58c352;
	virtual void execute() = android32 0x58c410;
}

[[link(win, android)]]
class cocos2d::CCParticleSystemQuad {
	static cocos2d::CCParticleSystemQuad* create(char const*, bool) = android32 0x5b4ab8;
	static cocos2d::CCParticleSystemQuad* create() = android32 0x5b4ea2;
	static cocos2d::CCParticleSystemQuad* createWithTotalParticles(unsigned int, bool) = android32 0x5b4af0;

	void initIndices() = android32 0x5b4c88;
	void initTexCoordsWithRect(cocos2d::CCRect const&) = android32 0x5b4b2c;

	unsigned char getOpacity();

	void setDisplayFrame(cocos2d::CCSpriteFrame*) = android32 0x5b4fdc;
	void setOpacity(unsigned char);
	void setTextureWithRect(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = android32 0x5b4f4c;

	// CCParticleSystemQuad(cocos2d::CCParticleSystemQuad const&);
	// CCParticleSystemQuad();
	bool allocMemory() = android32 0x5b4e1c;
	void listenBackToForeground(cocos2d::CCObject*) = android32 0x5b4e18;
	void setupVBO() = android32 0x5b4cc8;
	void updateTexCoords() = android32 0x5b4c78;

	virtual void draw() = android32 0x5b46cc;
	virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = android32 0x5b5010;
	virtual void setTotalParticles(unsigned int) = android32 0x5b4d40;
	virtual bool initWithTotalParticles(unsigned int, bool) = android32 0x5b4ed4;
	virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&) = android32 0x5b47c0;
	virtual void postStep() = android32 0x5b4696;

	virtual void setTexture(cocos2d::CCTexture2D*) = android32 0x5b4fd4 = android32 0x5b4f88;
}

[[link(win, android)]]
class cocos2d::CCFileUtils {
	// CCFileUtils();
	// CCFileUtils(cocos2d::CCFileUtils const&);
	virtual void addSearchPath(char const*) = android32 0x5b6ee8;
	virtual void addSearchResolutionsOrder(char const*) = android32 0x5b70c4;
	virtual gd::string addSuffix(gd::string, gd::string) = android32 0x5b5640;
	virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(gd::string const&) = android32 0x5b7388;
	virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(gd::string const&) = android32 0x5b72fc;
	virtual gd::string fullPathForFilename(char const*, bool) = android32 0x5b6614;
	virtual char const* fullPathFromRelativeFile(char const*, char const*) = android32 0x5b57e8;
	gd::string getAndroidPath() const;
	virtual unsigned char* getFileData(char const*, char const*, unsigned long*) = android32 0x5b544c;
	virtual unsigned char* getFileDataFromZip(char const*, char const*, unsigned long*) = android32 0x5b5510;
	virtual gd::string getFullPathForDirectoryAndFilename(gd::string const&, gd::string const&) = android32 0x5b5bdc;
	virtual gd::string getNewFilename(char const*) = android32 0x5b55b0;
	virtual gd::string getPathForFilename(gd::string const&, gd::string const&, gd::string const&) = android32 0x5b56f0;
	virtual gd::vector<gd::string> const& getSearchPaths() = android32 0x5b5422;
	virtual gd::vector<gd::string> const& getSearchResolutionsOrder() = android32 0x5b541e;
	virtual gd::string getWritablePath2() = android32 0x5b5410;
	virtual bool init() = android32 0x5b6fa0;
	virtual bool isAbsolutePath(gd::string const&) = android32 0x5b5426;
	virtual bool isPopupNotify() = android32 0x5b5440;
	virtual void loadFilenameLookupDictionaryFromFile(char const*) = android32 0x5b5894;
	virtual void purgeCachedEntries() = android32 0x5b6486;
	static void purgeFileUtils() = android32 0x5b5c10;
	void removeAllPaths() = android32 0x5b5cd6;
	virtual void removeFullPath(char const*) = android32 0x5b64f0;
	virtual void removeSearchPath(char const*) = android32 0x5b5cdc;
	void setAndroidPath(gd::string);
	virtual void setFilenameLookupDictionary(cocos2d::CCDictionary*) = android32 0x5b648c;
	virtual void setPopupNotify(bool) = android32 0x5b5434;
	virtual void setSearchPaths(gd::vector<gd::string> const&) = android32 0x5b6de0;
	virtual void setSearchResolutionsOrder(gd::vector<gd::string> const&) = android32 0x5b6ff0;
	static cocos2d::CCFileUtils* sharedFileUtils() = ios 0x23eddc, android32 0x5b8418;
	virtual bool shouldUseHD() = android32 0x5b561c;
	virtual bool writeToFile(cocos2d::CCDictionary*, gd::string const&) = android32 0x5b5b1c;
}

[[link(win, android)]]
class cocos2d::CCNode {
	static cocos2d::CCNode* create() = ios 0x24389c, android32 0x595020;
	static void resetGlobalOrderOfArrival() = android32 0x594eb0;

	// CCNode(cocos2d::CCNode const&);
	CCNode() = ios 0x24389c;
    	~CCNode() = ios 0x2439f8;
	
	cocos2d::CCAction* getActionByTag(int) = android32 0x59545a;
	cocos2d::CCComponent* getComponent(char const*) const;
	int getScriptHandler();
	cocos2d::CCAffineTransform getTransformTemp();
	bool getUseChildIndex();

	void setAdditionalTransform(cocos2d::CCAffineTransform const&) = android32 0x595732;
	void setUseChildIndex(bool) = android32 0x5951b8;

	cocos2d::CCRect boundingBox() = ios 0x244110, android32 0x594fc8;
	void childrenAlloc() = android32 0x595070;
	cocos2d::CCPoint convertToNodeSpace(cocos2d::CCPoint const&) = ios 0x245994, android32 0x595754;
	cocos2d::CCPoint convertToNodeSpaceAR(cocos2d::CCPoint const&) = android32 0x5957d4;
	cocos2d::CCPoint convertToWindowSpace(cocos2d::CCPoint const&) = android32 0x595850;
	cocos2d::CCPoint convertToWorldSpace(cocos2d::CCPoint const&) = ios 0x2459dc, android32 0x595794;
	cocos2d::CCPoint convertToWorldSpaceAR(cocos2d::CCPoint const&) = android32 0x595810;
	cocos2d::CCPoint convertTouchToNodeSpace(cocos2d::CCTouch*) = android32 0x59588c;
	cocos2d::CCPoint convertTouchToNodeSpaceAR(cocos2d::CCTouch*) = android32 0x5958c8;
	char const* description() = android32 0x595054;
	void detachChild(cocos2d::CCNode*, bool) = android32 0x595086;
	void insertChild(cocos2d::CCNode*, int) = android32 0x5950ee;
	unsigned int numberOfRunningActions() = android32 0x595464;
	void pauseSchedulerAndActions() = android32 0x5956b4;
	void qsortAllChildrenWithIndex() = android32 0x595c0c;
	void resumeSchedulerAndActions() = android32 0x59561c;
	cocos2d::CCAction* runAction(cocos2d::CCAction*) = ios 0x244f78, android32 0x5953fa;
	void schedule(cocos2d::SEL_SCHEDULE) = android32 0x595516;
	void schedule(cocos2d::SEL_SCHEDULE, float) = android32 0x595534;
	void schedule(cocos2d::SEL_SCHEDULE, float, unsigned int, float) = ios 0x2450a4, android32 0x5954e4;
	void scheduleOnce(cocos2d::SEL_SCHEDULE, float) = android32 0x595552;
	void scheduleUpdate() = android32 0x59548a;
	void scheduleUpdateWithPriority(int) = android32 0x59546e;
	void scheduleUpdateWithPriorityLua(int, int) = android32 0x5954bc;
	void sortAllChildrenNoIndex() = android32 0x5951f6;
	void sortAllChildrenWithIndex() = android32 0x595c94;
	void stopAction(cocos2d::CCAction*) = android32 0x595448;
	void stopActionByTag(int) = android32 0x595450;
	void stopAllActions() = ios 0x244280, android32 0x595414;
	void transform() = android32 0x595284;
	void transformAncestors() = android32 0x5953de;
	void unschedule(cocos2d::SEL_SCHEDULE) = android32 0x59556e;
	void unscheduleAllSelectors() = android32 0x595596;
	void unscheduleUpdate() = android32 0x595490;
	void updateChildIndexes() = android32 0x595198;

	virtual unsigned int getChildrenCount() const;
	virtual cocos2d::CCSize const& getContentSize() const = ios 0x243f58;
	virtual void update(float) = ios 0x245114, android32 0x594b52;
	virtual bool init() = ios 0x243b30, android32 0x593b92;
	virtual void setZOrder(int) = ios 0x243b80, android32 0x593bc2;
	virtual void _setZOrder(int) = android32 0x593bbe;
	virtual int getZOrder() = android32 0x593bba;
	virtual void setVertexZ(float) = android32 0x593bea;
	virtual float getVertexZ() = android32 0x593be6;
	virtual void setScaleX(float) = android32 0x593c72;
	virtual float getScaleX() = android32 0x593c6e;
	virtual void setScaleY(float) = android32 0x593c84;
	virtual float getScaleY() = android32 0x593c80;
	virtual void setScale(float) = android32 0x593c4e;
	virtual float getScale() = android32 0x593c4a;
	virtual void setScale(float, float) = android32 0x593c5e;
	virtual void setPosition(cocos2d::CCPoint const&) = android32 0x593c96;
	virtual cocos2d::CCPoint const& getPosition() = android32 0x593c92;
	virtual void setPosition(float, float) = android32 0x594034;
	virtual void getPosition(float*, float*) = android32 0x593caa;
	virtual void setPositionX(float) = android32 0x59406c;
	virtual float getPositionX() = android32 0x593cb4;
	virtual void setPositionY(float) = android32 0x5940a4;
	virtual float getPositionY() = android32 0x593cb8;
	virtual void setSkewX(float) = android32 0x593b9a;
	virtual float getSkewX() = android32 0x593b96;
	virtual void setSkewY(float) = android32 0x593bac;
	virtual float getSkewY() = android32 0x593ba8;
	virtual void setAnchorPoint(cocos2d::CCPoint const&) = android32 0x594100;
	virtual cocos2d::CCPoint const& getAnchorPoint() = android32 0x593cd2;
	virtual cocos2d::CCPoint const& getAnchorPointInPoints() = android32 0x593cce;
	virtual void setContentSize(cocos2d::CCSize const&) = android32 0x594178;
	virtual cocos2d::CCSize getScaledContentSize() = android32 0x593f10;
	virtual void setVisible(bool) = android32 0x593cc8;
	virtual bool isVisible() = android32 0x593cc2;
	virtual void setRotation(float) = android32 0x593bf2;
	virtual float getRotation() = android32 0x593bee;
	virtual void setRotationX(float) = android32 0x593c2a;
	virtual float getRotationX() = android32 0x593c26;
	virtual void setRotationY(float) = android32 0x593c3c;
	virtual float getRotationY() = android32 0x593c38;
	virtual void setOrderOfArrival(unsigned int) = android32 0x593d1a;
	virtual unsigned int getOrderOfArrival() = android32 0x593d16;
	virtual void setGLServerState(cocos2d::ccGLServerState) = android32 0x593d30;
	virtual cocos2d::ccGLServerState getGLServerState() = android32 0x593d2a;
	virtual void ignoreAnchorPointForPosition(bool) = android32 0x593cf2;
	virtual bool isIgnoreAnchorPointForPosition() = android32 0x593cec;
	virtual void addChild(cocos2d::CCNode*) = ios 0x24444c, android32 0x593d48;
	virtual void addChild(cocos2d::CCNode*, int) = ios 0x24443c, android32 0x593d36;
	virtual void addChild(cocos2d::CCNode*, int, int) = ios 0x24431c, android32 0x595120;
	virtual cocos2d::CCNode* getChildByTag(int) = android32 0x593fee;
	virtual cocos2d::CCArray* getChildren() = android32 0x5951aa;
	virtual void setParent(cocos2d::CCNode*) = android32 0x593ce6;
	virtual cocos2d::CCNode* getParent() = android32 0x593ce0;
	virtual void removeFromParent() = android32 0x593d5c;
	virtual void removeFromParentAndCleanup(bool) = android32 0x593d66;
	virtual void removeMeAndCleanup() = android32 0x593d84;
	virtual void removeChild(cocos2d::CCNode*) = android32 0x593d8e;
	virtual void removeChild(cocos2d::CCNode*, bool) = android32 0x5950e2;
	virtual void removeChildByTag(int) = android32 0x593d98;
	virtual void removeChildByTag(int, bool) = android32 0x593da2;
	virtual void removeAllChildren() = android32 0x593dc6;
	virtual void removeAllChildrenWithCleanup(bool) = android32 0x5941f0;
	virtual void reorderChild(cocos2d::CCNode*, int) = android32 0x593dd0;
	virtual void sortAllChildren() = android32 0x595c98;
	virtual cocos2d::CCGridBase* getGrid() = android32 0x593cbc;
	virtual void setGrid(cocos2d::CCGridBase*) = android32 0x593f88;
	virtual void* getUserData() = android32 0x593d0a;
	virtual void setUserData(void*) = android32 0x593d10;
	virtual cocos2d::CCObject* getUserObject() = android32 0x593d24;
	virtual void setUserObject(cocos2d::CCObject*) = android32 0x593fa6;
	virtual cocos2d::CCGLProgram* getShaderProgram() = android32 0x593d1e;
	virtual void setShaderProgram(cocos2d::CCGLProgram*) = android32 0x593fc4;
	virtual cocos2d::CCCamera* getCamera() = android32 0x5940e0;
	virtual bool isRunning() = android32 0x593cda;
	virtual void registerScriptHandler(int) = android32 0x593e24;
	virtual void unregisterScriptHandler() = android32 0x594a10;
	virtual void onEnter() = android32 0x595640;
	virtual void onEnterTransitionDidFinish() = android32 0x593f40;
	virtual void onExit() = android32 0x5956d8;
	virtual void onExitTransitionDidStart() = android32 0x5949c0;
	virtual void cleanup() = android32 0x5955a0;
	virtual void draw() = android32 0x593e22;
	virtual void visit() = android32 0x595328;
	virtual void setActionManager(cocos2d::CCActionManager*) = android32 0x59541e;
	virtual cocos2d::CCActionManager* getActionManager() = android32 0x593e38;
	virtual void setScheduler(cocos2d::CCScheduler*) = android32 0x5955f2;
	virtual cocos2d::CCScheduler* getScheduler() = android32 0x593e3e;
	virtual void updateTransform() = android32 0x593e48;
	virtual cocos2d::CCAffineTransform const nodeToParentTransform() = android32 0x594360;
	virtual cocos2d::CCAffineTransform const nodeToParentTransformFast() = android32 0x594bfc;
	virtual cocos2d::CCAffineTransform const parentToNodeTransform() = android32 0x59464c;
	virtual cocos2d::CCAffineTransform nodeToWorldTransform() = android32 0x594278;
	virtual cocos2d::CCAffineTransform nodeToWorldTransformFast() = android32 0x5942ec;
	virtual cocos2d::CCAffineTransform worldToNodeTransform() = android32 0x5946bc;
	virtual bool addComponent(cocos2d::CCComponent*) = android32 0x593e78;
	virtual bool removeComponent(char const*) = android32 0x593e82;
	virtual bool removeComponent(cocos2d::CCComponent*) = android32 0x593e8c;
	virtual void removeAllComponents() = android32 0x593e96;
	virtual void updateTweenAction(float, char const*) = android32 0x593e44;
	virtual void updateTweenActionInt(float, int) = android32 0x593e46;
}

[[link(win, android)]]
class cocos2d::CCScheduler {
	float getTimeScale();

	void setTimeScale(float);
	
	// CCScheduler(cocos2d::CCScheduler const&);
	// CCScheduler();

	void appendIn(cocos2d::_listEntry**, cocos2d::CCObject*, bool) = android32 0x585f5c;
	bool isTargetPaused(cocos2d::CCObject*) = android32 0x586b60;
	cocos2d::CCSet* pauseAllTargets() = android32 0x586d60;
	cocos2d::CCSet* pauseAllTargetsWithMinPriority(int) = android32 0x586cc8;
	void pauseTarget(cocos2d::CCObject*) = android32 0x5869fc;
	void priorityIn(cocos2d::_listEntry**, cocos2d::CCObject*, int, bool) = android32 0x585cb8;
	void removeHashElement(cocos2d::_hashSelectorEntry*) = android32 0x585578;
	void removeUpdateFromHash(cocos2d::_listEntry*) = android32 0x5862cc;
	void resumeTarget(cocos2d::CCObject*) = android32 0x58689c;
	void resumeTargets(cocos2d::CCSet*) = android32 0x586d68;
	unsigned int scheduleScriptFunc(unsigned int, float, bool) = android32 0x586842;
	void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, unsigned int, float, bool) = android32 0x585618;
	void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, bool) = android32 0x5859ac;
	void scheduleUpdateForTarget(cocos2d::CCObject*, int, bool) = android32 0x5861c8;
	void unscheduleAll() = android32 0x5867fe;
	void unscheduleAllForTarget(cocos2d::CCObject*) = android32 0x586684;
	void unscheduleAllWithMinPriority(int) = android32 0x58678c;
	void unscheduleScriptEntry(unsigned int) = android32 0x58686e;
	void unscheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*) = android32 0x5859d8;
	void unscheduleUpdateForTarget(cocos2d::CCObject const*) = android32 0x5865b0;

	virtual void update(float) = android32 0x586444;
}

[[link(win, android)]]
class cocos2d::CCLayer {
	static cocos2d::CCLayer* create() = ios 0x150918, android32 0x5a6788;

	// CCLayer(cocos2d::CCLayer const&);
	CCLayer() = ios 0x150758;
    	~CCLayer() = ios 0x150804;

	cocos2d::CCScriptHandlerEntry* getScriptAccelerateHandlerEntry();
	cocos2d::CCScriptHandlerEntry* getScriptKeypadHandlerEntry();
	cocos2d::CCTouchScriptHandlerEntry* getScriptTouchHandlerEntry();

	int excuteScriptTouchHandler(int, cocos2d::CCSet*) = android32 0x5a6848;
	int excuteScriptTouchHandler(int, cocos2d::CCTouch*) = android32 0x5a67ba;
	void registerScriptAccelerateHandler(int) = android32 0x5a68e0;
	void registerScriptKeypadHandler(int) = android32 0x5a6aea;
	void unregisterScriptAccelerateHandler() = android32 0x5a68ca;
	void unregisterScriptKeypadHandler() = android32 0x5a68fc;

	virtual bool init() = ios 0x1508bc, android32 0x5a5b38;
	virtual void onEnter() = android32 0x5a71b6;
	virtual void onEnterTransitionDidFinish() = ios 0x15113c, android32 0x5a72b2;
	virtual void onExit() = android32 0x5a7234;
	virtual void registerWithTouchDispatcher() = android32 0x5a5c1c;
	virtual void registerScriptTouchHandler(int, bool, int, bool) = android32 0x5a5c62;
	virtual void unregisterScriptTouchHandler() = android32 0x5a5c92;
	virtual bool isTouchEnabled() = android32 0x5a58f0;
	virtual void setTouchEnabled(bool) = android32 0x5a6174;
	virtual void setTouchMode(cocos2d::ccTouchesMode) = android32 0x5a60ba;
	virtual int getTouchMode() = android32 0x5a58fc;
	virtual void setTouchPriority(int) = android32 0x5a60ec;
	virtual int getTouchPriority() = android32 0x5a58f6;
	virtual bool isAccelerometerEnabled() = android32 0x5a5902;
	virtual void setAccelerometerEnabled(bool) = android32 0x5a61b0;
	virtual void setAccelerometerInterval(double) = android32 0x5a61e8;
	virtual bool isKeypadEnabled() = android32 0x5a5908;
	virtual void setKeypadEnabled(bool) = android32 0x5a6222;
	virtual bool isKeyboardEnabled() = android32 0x5a590e;
	virtual void setKeyboardEnabled(bool) = android32 0x5a626a;
	virtual bool isMouseEnabled() = android32 0x5a5914;
	virtual void setMouseEnabled(bool) = android32 0x5a62aa;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x5a67f8 = android32 0x5a67dc;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x5a6810 = android32 0x5a6800;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x5a6828 = android32 0x5a6818;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x5a6840 = android32 0x5a6830;
	virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x15145c, android32 0x5a687a, android32 0x5a686a;
	virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x1514fc, android32 0x5a6892, android32 0x5a6882;
	virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x15159c, android32 0x5a68aa, android32 0x5a689a;
	virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x15163c, android32 0x5a68c2, android32 0x5a68b2;
	virtual void setPreviousPriority(int) = android32 0x2d472a = android32 0x2d4724;
	virtual int getPreviousPriority() = android32 0x2d4738 = android32 0x2d4732;

	virtual void didAccelerate(cocos2d::CCAcceleration*) = android32 0x5a66d2 = android32 0x5a66b0;

	virtual void keyBackClicked() = android32 0x5a5cd0 = android32 0x5a5ca8;
	virtual void keyMenuClicked() = ios 0x150edc, android32 0x5a5cf8, android32 0x5a5cd8;

	virtual void keyDown(cocos2d::enumKeyCodes) = ios 0x150f6c, android32 0x5a630e, android32 0x5a62ea;
}

[[link(win, android)]]
class cocos2d::CCObject {
	static cocos2d::CCObject* createWithCoder(DS_Dictionary*) = android32 0x5987a0;

	// CCObject(cocos2d::CCObject const&);
	CCObject() = ios 0x8a97c;
    	~CCObject() = ios 0x8a9c4;

	cocos2d::CCObjectType getObjType() const;

	void setObjType(cocos2d::CCObjectType);

	cocos2d::CCObject* autorelease() = ios 0x8aab0, android32 0x598780;
	cocos2d::CCObject* copy() = android32 0x598760;
	bool isSingleReference() const;
	void release() = ios 0x8aa7c, android32 0x598768;
	void retain() = ios 0x8aaa0, android32 0x598778;
	unsigned int retainCount() const;

	virtual int getTag() const = ios 0x8ab00;
	virtual bool isEqual(cocos2d::CCObject const*) = ios 0x8aadc, android32 0x598688;
	virtual void acceptVisitor(cocos2d::CCDataVisitor&) = ios 0x8aae8, android32 0x598690;
	virtual void update(float) = android32 0x2d3ee8;
	virtual void encodeWithCoder(DS_Dictionary*) = ios 0x8ab10, android32 0x5986a4;
	virtual bool canEncode() = ios 0x8ab1c, android32 0x5986a6;
	virtual void setTag(int) = ios 0x8ab08, android32 0x5986a0;
}

[[link(win, android)]]
class cocos2d::CCOrbitCamera {
	static cocos2d::CCOrbitCamera* create(float, float, float, float, float, float, float) = android32 0x5876ac;

	bool initWithDuration(float, float, float, float, float, float, float) = android32 0x58765c;
	// CCOrbitCamera(cocos2d::CCOrbitCamera const&);
	// CCOrbitCamera();

	void sphericalRadius(float*, float*, float*) = android32 0x5877f0;

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = android32 0x587744;
	virtual void update(float) = android32 0x58754e;
	virtual void startWithTarget(cocos2d::CCNode*) = android32 0x587908;
}

[[link(win, android)]]
class cocos2d::CCLayerColor {
	static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&) = ios 0x151cd4, android32 0x5a6c60;
	static cocos2d::CCLayerColor* create(cocos2d::_ccColor4B const&, float, float) = ios 0x151bf8, android32 0x5a6c1a;
	static cocos2d::CCLayerColor* create() = android32 0x5a6be8;

	// CCLayerColor(cocos2d::CCLayerColor const&);
	CCLayerColor() = ios 0x151b38;
	~CCLayerColor() = ios 0x151bac, android32 0x5a6a6e, android32 0x5a6a5c, android32 0x5a6a54, android32 0x5a6a00; // (or ios = 0x150804 IDK GHIDRA IS MESSING WITH ME);

	void setVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint) = android32 0x5a6c98;

	void addToVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint) = android32 0x5a6cc0;
	void changeHeight(float) = android32 0x5a6d98;
	void changeWidth(float) = android32 0x5a6d5c;
	void changeWidthAndHeight(float, float) = android32 0x5a6d24;

	virtual bool init() = android32 0x5a5b88;
	virtual void setContentSize(cocos2d::CCSize const&) = android32 0x5a5d00;
	virtual void draw() = android32 0x5a5d20;
	virtual bool initWithColor(cocos2d::_ccColor4B const&, float, float) = android32 0x5a65e0;
	virtual bool initWithColor(cocos2d::_ccColor4B const&) = android32 0x5a5bd8;
	virtual void updateColor() = android32 0x5a59c0;

	virtual void setColor(cocos2d::_ccColor3B const&) = android32 0x5a646a = android32 0x5a6454;
	virtual void setOpacity(unsigned char) = android32 0x5a6396 = android32 0x5a6380;

	virtual void setBlendFunc(cocos2d::_ccBlendFunc) = android32 0x5a59b8 = android32 0x5a59a2;
	virtual cocos2d::_ccBlendFunc getBlendFunc() = android32 0x5a599a = android32 0x5a598a;
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA {
	static cocos2d::CCLayerRGBA* create();

	// CCLayerRGBA(cocos2d::CCLayerRGBA const&);
	CCLayerRGBA();
	~CCLayerRGBA() = android32 0x5a69f6 = android32 0x5a69e4 = android32 0x5a69dc = android32 0x5a6990;

	virtual bool init() = android32 0x5a6120;

	virtual void setColor(cocos2d::_ccColor3B const&) = android32 0x5a644c = android32 0x5a63a0;
	virtual cocos2d::_ccColor3B const& getColor() = android32 0x5a593c = android32 0x5a5936;
	virtual cocos2d::_ccColor3B const& getDisplayedColor() = android32 0x5a594a = android32 0x5a5944;
	virtual unsigned char getDisplayedOpacity() = android32 0x5a592e = android32 0x5a5928;
	virtual unsigned char getOpacity() = android32 0x5a5920 = android32 0x5a591a;
	virtual void setOpacity(unsigned char) = android32 0x5a6378 = android32 0x5a6318;
	virtual void setOpacityModifyRGB(bool) = android32 0x2d88ae = android32 0x2d88ac;
	virtual bool isOpacityModifyRGB() = android32 0x2d88ba = android32 0x2d88b6;
	virtual bool isCascadeColorEnabled() = android32 0x5a5974 = android32 0x5a596e;
	virtual void setCascadeColorEnabled(bool) = android32 0x5a5982 = android32 0x5a597c;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = android32 0x5a65d8 = android32 0x5a6508;
	virtual bool isCascadeOpacityEnabled() = android32 0x5a5958 = android32 0x5a5952;
	virtual void setCascadeOpacityEnabled(bool) = android32 0x5a5966 = android32 0x5a5960;
	virtual void updateDisplayedOpacity(unsigned char) = android32 0x5a6500 = android32 0x5a6478;
}

[[link(win, android)]]
class cocos2d::CCMouseDispatcher {
	// CCMouseDispatcher(cocos2d::CCMouseDispatcher const&);
	// CCMouseDispatcher();
	void addDelegate(cocos2d::CCMouseDelegate*) = android32 0x5d2e52;
	bool dispatchScrollMSG(float, float) = android32 0x5d2ede;
	void forceAddDelegate(cocos2d::CCMouseDelegate*) = android32 0x5d2e38;
	void forceRemoveDelegate(cocos2d::CCMouseDelegate*) = android32 0x5d2e74;
	void removeDelegate(cocos2d::CCMouseDelegate*) = android32 0x5d2ebc;
}

[[link(win, android)]]
class cocos2d::CCTouchDispatcher {
	bool init() = ios 0x156dd8, android32 0x5d13a0;

	int getTargetPrio() const;

	void setDispatchEvents(bool) = ios 0x156dd0, android32 0x5d139a;
	void setPriority(int, cocos2d::CCTouchDelegate*) = android32 0x5d1ad0;

	// CCTouchDispatcher(cocos2d::CCTouchDispatcher const&);
	// CCTouchDispatcher();
	void addPrioTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = ios 0x156ffc, android32 0x5d15da;
	void addStandardDelegate(cocos2d::CCTouchDelegate*, int) = ios 0x157200, android32 0x5d1506;
	void addTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = ios 0x157014, android32 0x5d1550;
	void decrementForcePrio(int) = android32 0x5d1410;
	cocos2d::CCTouchHandler* findHandler(cocos2d::CCArray*, cocos2d::CCTouchDelegate*) = ios 0x157400, android32 0x5d1720;
	cocos2d::CCTouchHandler* findHandler(cocos2d::CCTouchDelegate*) = ios 0x1574b8, android32 0x5d16ac;
	void forceAddHandler(cocos2d::CCTouchHandler*, cocos2d::CCArray*) = ios 0x157400, android32 0x5d14a2;
	void forceRemoveAllDelegates() = android32 0x5d1686;
	void forceRemoveDelegate(cocos2d::CCTouchDelegate*) = ios 0x157294, android32 0x5d1600;
	void incrementForcePrio(int) = android32 0x5d1402;
	bool isDispatchEvents() = android32 0x5d1394;
	bool isUsingForcePrio() = android32 0x5d1496;
	void rearrangeHandlers(cocos2d::CCArray*) = android32 0x5d1a68;
	void registerForcePrio(cocos2d::CCObject*, int) = ios 0x156f0c, android32 0x5d1420;
	void removeAllDelegates() = android32 0x5d169a;
	void removeDelegate(cocos2d::CCTouchDelegate*) = ios 0x157384, android32 0x5d1758;
	void touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int) = ios 0x157580, android32 0x5d1798;
	void unregisterForcePrio(cocos2d::CCObject*) = ios 0x156f88, android32 0x5d146c;

	virtual void touchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x157968, android32 0x5d1a1e, android32 0x5d1a10;
	virtual void touchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x157994, android32 0x5d1a34, android32 0x5d1a26;
	virtual void touchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x1579c0, android32 0x5d1a4a, android32 0x5d1a3c;
	virtual void touchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = ios 0x1579ec, android32 0x5d1a60, android32 0x5d1a52;
}

[[link(win, android)]]
class cocos2d::CCTouchDelegate {
	// CCTouchDelegate(cocos2d::CCTouchDelegate const&);
	// CCTouchDelegate();

	virtual void setPreviousPriority(int) {}
	virtual int getPreviousPriority() { return 0; }
}

[[link(win, android)]]
class cocos2d::CCMoveTo {
	static cocos2d::CCMoveTo* create(float, cocos2d::CCPoint const&) = ios 0x192864, android32 0x58f294;

	bool initWithDuration(float, cocos2d::CCPoint const&) = android32 0x58f276;

	// CCMoveTo(cocos2d::CCMoveTo const&);
	// CCMoveTo();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = android32 0x58f2dc;
	virtual void startWithTarget(cocos2d::CCNode*) = android32 0x58dc78;
}

[[link(win, android)]]
class cocos2d::CCTextureCache {
	static void purgeSharedTextureCache() = android32 0x5cb97c;
	static void reloadAllTextures() = android32 0x5cc740;
	static cocos2d::CCTextureCache* sharedTextureCache() = ios 0x113704, android32 0x5cb954;

	// CCTextureCache(cocos2d::CCTextureCache const&);
	// CCTextureCache();
	cocos2d::CCTexture2D* addETCImage(char const*) = android32 0x5cba38;
	cocos2d::CCTexture2D* addImage(char const*, bool) = ios 0x1142dc, android32 0x5cc0d8;
	void addImageAsync(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler, int, cocos2d::CCTexture2DPixelFormat) = android32 0x5cccf0;
	void addImageAsyncCallBack(float) = android32 0x5cbe78;
	cocos2d::CCTexture2D* addPVRImage(char const*) = android32 0x5cc00c;
	cocos2d::CCTexture2D* addUIImage(cocos2d::CCImage*, char const*) = android32 0x5cc3a4;
	char const* description() = android32 0x5cb994;
	void dumpCachedTextureInfo() = android32 0x5cbc60;
	void prepareAsyncLoading() = android32 0x5ccfd8;
	bool reloadTexture(char const*) = android32 0x5cc2f8;
	void removeAllTextures() = android32 0x5cbaf8;
	void removeTexture(cocos2d::CCTexture2D*) = android32 0x5cbbac;
	void removeTextureForKey(char const*) = android32 0x5cbbc8;
	void removeUnusedTextures() = android32 0x5cbb00;
	cocos2d::CCDictionary* snapshotTextures() = android32 0x5cb9b4;
	cocos2d::CCTexture2D* textureForKey(char const*) = android32 0x5cbc14;
}

[[link(win)]]
class cocos2d::CCEGLView {
	// CCEGLView();
	// CCEGLView(cocos2d::CCEGLView const&);
	virtual void swapBuffers() = android32 0x5b7e36;
	// rest are in extras
}

[[link(win, android)]]
class cocos2d::CCIMEDispatcher {
	static cocos2d::CCIMEDispatcher* sharedDispatcher() = android32 0x5c9ab8;

	// CCIMEDispatcher();
	
	void addDelegate(cocos2d::CCIMEDelegate*) = android32 0x5c989c;
	bool attachDelegateWithIME(cocos2d::CCIMEDelegate*) = android32 0x5c98d0;
	bool detachDelegateWithIME(cocos2d::CCIMEDelegate*) = android32 0x5c9932;
	void dispatchDeleteBackward() = android32 0x5c99ba;
	void dispatchDeleteForward() = android32 0x5c99ca;
	void dispatchInsertText(char const*, int, cocos2d::enumKeyCodes) = android32 0x5c999c;
	void dispatchKeyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&) = android32 0x5c9a60;
	void dispatchKeyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&) = android32 0x5c9a20;
	void dispatchKeyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&) = android32 0x5c9a40;
	void dispatchKeyboardWillHide() = android32 0x5c9a80;
	void dispatchKeyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&) = android32 0x5c9a00;
	char const* getContentText() = android32 0x5c99dc;
	bool hasDelegate() = android32 0x5c9890;
	void removeDelegate(cocos2d::CCIMEDelegate*) = android32 0x5c9966;
}

[[link(win, android)]]
class cocos2d::CCKeyboardDispatcher {
	static cocos2d::enumKeyCodes convertKeyCode(cocos2d::enumKeyCodes) = android32 0x5d1fac;

	bool getAltKeyPressed() const;
	bool getBlockRepeat() const;
	bool getCommandKeyPressed() const;
	bool getControlKeyPressed() const;
	bool getShiftKeyPressed() const;

	void setBlockRepeat(bool);

	// CCKeyboardDispatcher(cocos2d::CCKeyboardDispatcher const&);
	// CCKeyboardDispatcher();
	void addDelegate(cocos2d::CCKeyboardDelegate*) = android32 0x5d1efe;
	bool dispatchKeyboardMSG(cocos2d::enumKeyCodes, bool, bool) = android32 0x5d1fce;
	void forceAddDelegate(cocos2d::CCKeyboardDelegate*) = android32 0x5d1ee4;
	void forceRemoveDelegate(cocos2d::CCKeyboardDelegate*) = android32 0x5d1f20;
	char const* keyToString(cocos2d::enumKeyCodes) = android32 0x5d20b4;
	void removeDelegate(cocos2d::CCKeyboardDelegate*) = android32 0x5d1f68;
	void updateModifierKeys(bool, bool, bool, bool) = android32 0x5d1f8a;
}

[[link(win, android)]]
class cocos2d::CCDirector {
	static cocos2d::CCDirector* sharedDirector() = ios 0x17bf5c, android32 0x599c30;

	float getActualDeltaTime() const;
	double getAnimationInterval();
	float getContentScaleFactor() = android32 0x59afae;
	cocos2d::CCDirectorDelegate* getDelegate() const;
	bool getDontCallWillSwitch() const;
	void getFPSImageData(unsigned char**, unsigned int*) = android32 0x59ae84;
	bool getIsTransitioning() const;
	cocos2d::TextureQuality getLoadedTextureQuality() const;
	cocos2d::CCScene* getNextScene();
	cocos2d::CCNode* getNotificationNode() = android32 0x59b0ac;
	cocos2d::CCEGLView* getOpenGLView();
	cocos2d::ccDirectorProjection getProjection();
	cocos2d::CCScene* getRunningScene();
	cocos2d::CCScene* getSceneReference() const;
	float getScreenBottom() = android32 0x59b0f4;
	float getScreenLeft() = android32 0x59b0f8;
	float getScreenRight() = android32 0x59b0fc;
	float getScreenScaleFactor() = android32 0x59b0e0;
	float getScreenScaleFactorH() = android32 0x59b0e8;
	float getScreenScaleFactorMax() = android32 0x59b0e4;
	float getScreenScaleFactorW() = android32 0x59b0ec;
	float getScreenTop() = android32 0x59b0f0;
	float getSecondsPerFrame();
	bool getSmoothFix() const;
	bool getSmoothFixCheck() const;
	int getSmoothFixCounter() const;
	unsigned int getTotalFrames();
	cocos2d::CCPoint getVisibleOrigin() = android32 0x59a818;
	cocos2d::CCSize getVisibleSize() = android32 0x59a7f4;
	cocos2d::CCSize getWinSize() = ios 0x17cbe4, android32 0x59a62c;
	cocos2d::CCSize getWinSizeInPixels() = android32 0x59a7cc;
	float getZEye() = android32 0x59a230;

	void setActualDeltaTime(float);
	void setAlphaBlending(bool) = android32 0x59a3b4;
	void setContentScaleFactor(float) = android32 0x59afb4;
	void setDefaultValues() = android32 0x599d90;
	void setDelegate(cocos2d::CCDirectorDelegate*) = android32 0x59b0da;
	void setDeltaTime(float) = android32 0x59a034;
	void setDepthTest(bool) = ios 0x17c4e4, android32 0x59a424;
	void setDisplayStats(bool);
	void setDontCallWillSwitch(bool);
	void setGLDefaultValues() = android32 0x59a450;
	void setNextDeltaTimeZero(bool) = android32 0x59a228;
	void setNextScene() = android32 0x59abc4;
	void setNotificationNode(cocos2d::CCNode*) = android32 0x59b0b2;
	void setOpenGLView(cocos2d::CCEGLView*) = android32 0x59af3e;
	void setProjection(cocos2d::ccDirectorProjection) = ios 0x17c514, android32 0x59a248;
	void setSceneReference(cocos2d::CCScene*);
	void setSmoothFix(bool);
	void setSmoothFixCheck(bool);
	void setViewport() = android32 0x59a1dc;

	// CCDirector(cocos2d::CCDirector const&);
	// CCDirector();
	void applySmoothFix() = android32 0x59a038;
	void calculateDeltaTime() = android32 0x59a094;
	void calculateMPF() = android32 0x59ad58;
	void checkSceneReference() = android32 0x59a8d8;
	cocos2d::CCPoint convertToGL(cocos2d::CCPoint const&) = ios 0x17cde4, android32 0x59a480;
	cocos2d::CCPoint convertToUI(cocos2d::CCPoint const&) = android32 0x59a550;
	void createStatsLabel() = android32 0x59af3c;
	void drawScene() = android32 0x59adb8;
	void end() = android32 0x59a9aa;
	bool isDisplayStats();
	bool isNextDeltaTimeZero();
	bool isPaused();
	bool isSendCleanupToScene();
	int levelForSceneInStack(cocos2d::CCScene*) = android32 0x59a970;
	void pause() = android32 0x59ac90;
	void popScene() = android32 0x59a9b2;
	bool popSceneWithTransition(float, cocos2d::PopTransition) = android32 0x59a9f0;
	void popToRootScene() = android32 0x59aad4;
	void popToSceneInStack(cocos2d::CCScene*) = android32 0x59aada;
	void popToSceneStackLevel(int) = android32 0x59aa58;
	void purgeCachedData() = android32 0x59a22e;
	void purgeDirector() = android32 0x59aaf2;
	bool pushScene(cocos2d::CCScene*) = ios 0x17cfb0, android32 0x59a864;
	void removeStatsLabel() = android32 0x59ae9c;
	bool replaceScene(cocos2d::CCScene*) = ios 0x17d038, android32 0x59a8f4;
	void resetSmoothFixCounter() = android32 0x59a13c;
	void reshapeProjection(cocos2d::CCSize const&) = android32 0x59a3c0;
	void resume() = android32 0x59acb8;
	void runWithScene(cocos2d::CCScene*) = ios 0x17cf84, android32 0x59a8bc;
	int sceneCount() = android32 0x59a8d0;
	void setupScreenScale(cocos2d::CCSize, cocos2d::CCSize, cocos2d::TextureQuality) = android32 0x59b060;
	void showFPSLabel() = android32 0x59a148;
	void showStats() = android32 0x59ace4;
	void toggleShowFPS(bool, gd::string, cocos2d::CCPoint) = android32 0x59a63c;
	void updateContentScale(cocos2d::TextureQuality) = android32 0x59afd2;
	void updateScreenScale(cocos2d::CCSize) = android32 0x59a70c;
	void willSwitchToScene(cocos2d::CCScene*) = android32 0x59a83c;

	virtual bool init() = android32 0x599e8c;
	virtual cocos2d::CCScheduler* getScheduler() = android32 0x599a48;
	virtual void setScheduler(cocos2d::CCScheduler*) = android32 0x599a8a;
	virtual cocos2d::CCActionManager* getActionManager() = android32 0x599a4c;
	virtual void setActionManager(cocos2d::CCActionManager*) = android32 0x599aaa;
	virtual cocos2d::CCTouchDispatcher* getTouchDispatcher() = android32 0x599a50;
	virtual void setTouchDispatcher(cocos2d::CCTouchDispatcher*) = android32 0x599aca;
	virtual cocos2d::CCKeypadDispatcher* getKeypadDispatcher() = android32 0x599a5c;
	virtual void setKeypadDispatcher(cocos2d::CCKeypadDispatcher*) = android32 0x599b1e;
	virtual cocos2d::CCKeyboardDispatcher* getKeyboardDispatcher() = android32 0x599a54;
	virtual void setKeyboardDispatcher(cocos2d::CCKeyboardDispatcher*) = android32 0x599aea;
	virtual cocos2d::CCMouseDispatcher* getMouseDispatcher() = android32 0x599a58;
	virtual void setMouseDispatcher(cocos2d::CCMouseDispatcher*) = android32 0x599b04;
	virtual cocos2d::CCAccelerometer* getAccelerometer() = android32 0x599a60;
	virtual void setAccelerometer(cocos2d::CCAccelerometer*) = android32 0x599a6c;
	virtual float getDeltaTime() = android32 0x599a44;
	virtual void setSceneDelegate(cocos2d::CCSceneDelegate*) = android32 0x599a3e;
	virtual cocos2d::CCSceneDelegate* getSceneDelegate() const;
}


[[link(win, android)]]
class cocos2d::CCNodeRGBA {
	static cocos2d::CCNodeRGBA* create() = android32 0x595964;

	// CCNodeRGBA(cocos2d::CCNodeRGBA const&);
	CCNodeRGBA() = ios 0x245b20;
	~CCNodeRGBA() = ios 0x245b50, android32 0x594b40, android32 0x594b1c;

	virtual bool init() = android32 0x594788;

	virtual void setColor(cocos2d::_ccColor3B const&) = android32 0x5948dc = android32 0x594830;
	virtual cocos2d::_ccColor3B const& getColor() = android32 0x593ede = android32 0x593ed8;
	virtual cocos2d::_ccColor3B const& getDisplayedColor() = android32 0x593eec = android32 0x593ee6;
	virtual unsigned char getDisplayedOpacity() = android32 0x593eb4 = android32 0x593eae;
	virtual unsigned char getOpacity() = android32 0x593ea6 = android32 0x593ea0;
	virtual void setOpacity(unsigned char) = android32 0x594828 = android32 0x5947c8;
	virtual void setOpacityModifyRGB(bool) = android32 0x2d9a9c = android32 0x2d9a9a;
	virtual bool isOpacityModifyRGB() = android32 0x2d9aa8 = android32 0x2d9aa4;
	virtual bool isCascadeColorEnabled() = android32 0x593efa = android32 0x593ef4;
	virtual void setCascadeColorEnabled(bool) = android32 0x593f08 = android32 0x593f02;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = android32 0x5949b8 = android32 0x5948e8;
	virtual bool isCascadeOpacityEnabled() = android32 0x593ec2 = android32 0x593ebc;
	virtual void setCascadeOpacityEnabled(bool) = android32 0x593ed0 = android32 0x593eca;
	virtual void updateDisplayedOpacity(unsigned char) = android32 0x594780 = android32 0x5946f8;
}


[[link(win, android)]]
class cocos2d::CCSprite {
	static cocos2d::CCSprite* create(char const*) = ios 0x240214, android32 0x5bda34;
	static cocos2d::CCSprite* create(char const*, cocos2d::CCRect const&) = android32 0x5bda6c;
	static cocos2d::CCSprite* create() = android32 0x5bdaf6;
	static cocos2d::CCSprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*) = android32 0x5bdaa8;
	static cocos2d::CCSprite* createWithSpriteFrameName(char const*) = ios 0x240310, android32 0x5bdae0;
	static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*) = android32 0x5bd9c0;
	static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = android32 0x5bd9f8;

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
	void setFlipX(bool) = ios 0x241bfc, android32 0x5bdb28;
	void setFlipY(bool) = ios 0x241c30, android32 0x5bdb58;
	void setTextureAtlas(cocos2d::CCTextureAtlas*);
	void setTlVertexMod(float);
	void setTrVertexMod(float);
	void setUseVertexMod(bool);

	// CCSprite(cocos2d::CCSprite const&);
	CCSprite() = ios 0x24073c;
	~CCSprite() = ios 0x2407c4, android32 0x5bcfd4, android32 0x5bcf9c;
	bool isFlipX() = android32 0x5bdb52;
	bool isFlipY() = android32 0x5bdb82;
	bool isTextureRectRotated();
	void updateColor() = android32 0x5bdb88;

	virtual bool init() = android32 0x5bcc9c;
	virtual void setVertexZ(float) = android32 0x5be592;
	virtual void setScaleX(float) = android32 0x5be48e;
	virtual void setScaleY(float) = android32 0x5be4de;
	virtual void setScale(float) = android32 0x5be52e;
	virtual void setPosition(cocos2d::CCPoint const&) = android32 0x5be2f4;
	virtual void setSkewX(float) = android32 0x5be412;
	virtual void setSkewY(float) = android32 0x5be450;
	virtual void setAnchorPoint(cocos2d::CCPoint const&) = android32 0x5be5d0;
	virtual void setVisible(bool) = android32 0x5be612;
	virtual void setRotation(float) = android32 0x5be358;
	virtual void setRotationX(float) = android32 0x5be396;
	virtual void setRotationY(float) = android32 0x5be3d4;
	virtual void ignoreAnchorPointForPosition(bool) = android32 0x5be60e;
	virtual void addChild(cocos2d::CCNode*) = android32 0x5be188;
	virtual void addChild(cocos2d::CCNode*, int) = android32 0x5be18c;
	virtual void addChild(cocos2d::CCNode*, int, int) = android32 0x5be190;
	virtual void removeChild(cocos2d::CCNode*, bool) = android32 0x5be264;
	virtual void removeAllChildrenWithCleanup(bool) = android32 0x5be284;
	virtual void reorderChild(cocos2d::CCNode*, int) = android32 0x5be218;
	virtual void sortAllChildren() = android32 0x5bcd48;
	virtual void draw() = android32 0x5bd6dc;
	virtual void updateTransform() = android32 0x5bddc8;
	virtual bool initWithTexture(cocos2d::CCTexture2D*) = android32 0x5bce74;
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = android32 0x5bccb0;
	virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = android32 0x5bdc90;
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = android32 0x5bcf6e;
	virtual bool initWithSpriteFrameName(char const*) = android32 0x5bce54;
	virtual bool initWithFile(char const*) = android32 0x5bced4;
	virtual bool initWithFile(char const*, cocos2d::CCRect const&) = android32 0x5bcf44;
	virtual void setChildColor(cocos2d::_ccColor3B const&) = android32 0x5bd7fc;
	virtual void setChildOpacity(unsigned char) = android32 0x5bd7a0;
	virtual cocos2d::CCSpriteBatchNode* getBatchNode() = android32 0x5bce40;
	virtual void setBatchNode(cocos2d::CCSpriteBatchNode*) = android32 0x5bd90c;
	virtual void refreshTextureRect() = android32 0x5bccc2;
	virtual void setTextureRect(cocos2d::CCRect const&) = android32 0x5bcd32;
	virtual void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&) = android32 0x5bcfe8;
	virtual void setVertexRect(cocos2d::CCRect const&) = android32 0x5bd250;
	virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = android32 0x5bd3fc;
	virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = android32 0x5bd8a0;
	virtual cocos2d::CCSpriteFrame* displayFrame() = android32 0x5bd47c;
	virtual void setDisplayFrameWithAnimationName(char const*, int) = android32 0x5bd450;
	virtual bool isDirty() = android32 0x2d65fe;
	virtual void setDirty(bool) = android32 0x2d6604;
	virtual void setTextureCoords(cocos2d::CCRect const&) = android32 0x5bd258;
	virtual void updateBlendFunc() = android32 0x5bd858;
	virtual void setReorderChildDirtyRecursively() = android32 0x5bd65c;
	virtual void setDirtyRecursively(bool) = android32 0x5bd694;

	virtual void setColor(cocos2d::_ccColor3B const&) = android32 0x5be6ea = android32 0x5be6b6;
	virtual void setOpacity(unsigned char) = android32 0x5be6ae = android32 0x5be650;
	virtual void setOpacityModifyRGB(bool) = android32 0x5bdc86 = android32 0x5bdc74;
	virtual bool isOpacityModifyRGB() = android32 0x5bce38 = android32 0x5bce32;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = android32 0x5be704 = android32 0x5be6f2;
	virtual void updateDisplayedOpacity(unsigned char) = android32 0x5be71e = android32 0x5be70c;

	virtual void setBlendFunc(cocos2d::_ccBlendFunc) = android32 0x2d65de = android32 0x2d65c8;
	virtual cocos2d::_ccBlendFunc getBlendFunc() = android32 0x2d65f6 = android32 0x2d65e6;
	virtual cocos2d::CCTexture2D* getTexture() = android32 0x5bce4c = android32 0x5bce46;
	virtual void setTexture(cocos2d::CCTexture2D*) = android32 0x5bd654 = android32 0x5bd59c;
}

[[link(win, android)]]
class cocos2d::CCLabelBMFont {
	~CCLabelBMFont() = ios 0x301fcc, android32 0x5a2624, android32 0x5a25a8;
	static cocos2d::CCLabelBMFont* create(char const*, char const*) = ios 0x301b04, android32 0x5a4d64;
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float) = android32 0x5a4d18;
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment) = android32 0x5a4cc8;
	static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = ios 0x301a44, android32 0x5a4c54;
	static cocos2d::CCLabelBMFont* create() = android32 0x5a3998;
	static cocos2d::CCLabelBMFont* createBatched(char const*, char const*, cocos2d::CCArray*, int) = android32 0x5a4db0;
	static void purgeCachedData() = android32 0x5a38d4;

	bool initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = ios 0x301b54, android32 0x5a4a1c;

	cocos2d::CCBMFontConfiguration* getConfiguration() const;
	int getExtraKerning() const;
	char const* getFntFile() = android32 0x5a3b78;
	bool getIsBatched() const;
	float getLetterPosXLeft(cocos2d::CCSprite*, float, bool) = android32 0x5a3aac;
	float getLetterPosXRight(cocos2d::CCSprite*, float, bool) = android32 0x5a3b12;
	cocos2d::CCArray* getTargetArray() const;

	void setExtraKerning(int);
	void setFntFile(char const*) = android32 0x5a4328;
	void setIsBatched(bool);
	void setTargetArray(cocos2d::CCArray*);
	void createFontChars() = android32 0x5a3c78;
	int kerningAmountForFirst(unsigned short, unsigned short) = android32 0x5a39cc;
	void limitLabelWidth(float, float, float) = ios 0x303e78, android32 0x5a3b84;

	virtual bool init() = ios 0x301ebc, android32 0x5a4e3c;
	virtual void setScaleX(float) = ios 0x303e20, android32 0x5a4ec8;
	virtual void setScaleY(float) = ios 0x303e4c, android32 0x5a4ede;
	virtual void setScale(float) = ios 0x303df4, android32 0x5a4eb2;
	virtual void setAnchorPoint(cocos2d::CCPoint const&) = ios 0x302e8c, android32 0x5a4e88;
	virtual void setString(char const*, bool) = ios 0x302840, android32 0x5a26b8;
	virtual void setCString(char const*) = ios 0x302a5c, android32 0x5a23e8;
	virtual void updateLabel() = ios 0x302ee0, android32 0x5a4618;
	virtual void setAlignment(cocos2d::CCTextAlignment) = ios 0x303dc4, android32 0x5a2584;
	virtual void setWidth(float) = ios 0x303dd4, android32 0x5a2590;
	virtual void setLineBreakWithoutSpace(bool) = ios 0x303de4, android32 0x5a259c;
	virtual void setString(unsigned short*, bool) = ios 0x3028c8, android32 0x5a42a4;

	virtual void setString(char const*) = ios 0x30281c, android32 0x5a23d2, android32 0x5a23c8;
	virtual char const* getString() = ios 0x302a24, android32 0x5a23e0, android32 0x5a23da;

	virtual void setColor(cocos2d::_ccColor3B const&) = ios 0x302a88, android32 0x5a2858, android32 0x5a27ac;
	virtual cocos2d::_ccColor3B const& getColor() = ios 0x302a68, android32 0x5a23f6, android32 0x5a23f0;
	virtual cocos2d::_ccColor3B const& getDisplayedColor() = ios 0x302a78, android32 0x5a2404, android32 0x5a23fe;
	virtual unsigned char getDisplayedOpacity() = ios 0x302b68, android32 0x5a2420, android32 0x5a241a;
	virtual unsigned char getOpacity() = ios 0x302b58, android32 0x5a2412, android32 0x5a240c;
	virtual void setOpacity(unsigned char) = ios 0x302b78, android32 0x5a28c0, android32 0x5a2860;
	virtual void setOpacityModifyRGB(bool) = ios 0x302c18, android32 0x5a27a4, android32 0x5a2738;
	virtual bool isOpacityModifyRGB() = ios 0x302cd0, android32 0x5a242e, android32 0x5a2428;
	virtual bool isCascadeColorEnabled() = ios 0x302e4c, android32 0x5a2554, android32 0x5a2550;
	virtual void setCascadeColorEnabled(bool) = ios 0x302e5c, android32 0x5a2562, android32 0x5a255c;
	virtual void updateDisplayedColor(cocos2d::_ccColor3B const&) = ios 0x302d78, android32 0x5a2548, android32 0x5a24a0;
	virtual bool isCascadeOpacityEnabled() = ios 0x302e6c, android32 0x5a256e, android32 0x5a256a;
	virtual void setCascadeOpacityEnabled(bool) = ios 0x302e7c, android32 0x5a257c, android32 0x5a2576;
	virtual void updateDisplayedOpacity(unsigned char) = ios 0x302ce0, android32 0x5a2498, android32 0x5a2438;
}

[[link(win, android)]]
class cocos2d::CCApplication {
	static cocos2d::CCApplication* sharedApplication() = ios 0x1b2588, android32 0x5b81e0;
	virtual void gameDidSave() = ios 0x1b27c8; // unsure if this is PlatformToolbox::gameDidSave
	virtual void openURL(char const*) = android32 0x5b8114;
}

[[link(win, android)]]
class cocos2d::CCArray {
	// static cocos2d::CCArray* create(cocos2d::CCObject*, ...);
	static cocos2d::CCArray* create() = android32 0x5991b4 = android32 0x599080;
	static cocos2d::CCArray* createWithArray(cocos2d::CCArray*) = android32 0x598f9e;
	static cocos2d::CCArray* createWithCapacity(unsigned int) = android32 0x5990ae;
	static cocos2d::CCArray* createWithContentsOfFile(char const*) = android32 0x599000;
	static cocos2d::CCArray* createWithContentsOfFileThreadSafe(char const*) = android32 0x598fb0;
	static cocos2d::CCArray* createWithObject(cocos2d::CCObject*) = android32 0x599230;

	bool init() = android32 0x599054;
	bool initWithArray(cocos2d::CCArray*) = android32 0x59931c;
	bool initWithCapacity(unsigned int) = android32 0x599012;
	bool initWithObject(cocos2d::CCObject*) = android32 0x59920c;
	// bool initWithObjects(cocos2d::CCObject*, ...);

	// CCArray(cocos2d::CCArray const&);
	// CCArray(unsigned int);
	// CCArray();
	void addObject(cocos2d::CCObject*) = android32 0x5991ae;
	void addObjectNew(cocos2d::CCObject*) = android32 0x59930e;
	void addObjectsFromArray(cocos2d::CCArray*) = android32 0x599314;
	unsigned int capacity() const;
	bool containsObject(cocos2d::CCObject*) const;
	unsigned int count() const;
	void exchangeObject(cocos2d::CCObject*, cocos2d::CCObject*) = android32 0x59938a;
	void exchangeObjectAtIndex(unsigned int, unsigned int) = android32 0x5993b8;
	void fastRemoveObject(cocos2d::CCObject*) = android32 0x599384;
	void fastRemoveObjectAtIndex(unsigned int) = android32 0x599372;
	void fastRemoveObjectAtIndexChild(unsigned int) = android32 0x59937e;
	void fastRemoveObjectAtIndexNew(unsigned int) = android32 0x599378;
	unsigned int indexOfObject(cocos2d::CCObject*) const;
	void insertObject(cocos2d::CCObject*, unsigned int) = android32 0x599340;
	bool isEqualToArray(cocos2d::CCArray*) = android32 0x59916a;
	cocos2d::CCObject* lastObject() = android32 0x599100;
	cocos2d::CCObject* objectAtIndex(unsigned int) = android32 0x5990f2;
	cocos2d::CCObject* randomObject() = android32 0x599114;
	void recreateNewIndexes() = android32 0x5991a8;
	void reduceMemoryFootprint() = android32 0x599412;
	void removeAllObjects() = android32 0x59936c;
	void removeLastObject(bool) = android32 0x599346;
	void removeObject(cocos2d::CCObject*, bool) = android32 0x599352;
	void removeObjectAtIndex(unsigned int, bool) = android32 0x599358;
	void removeObjectAtIndexChild(unsigned int, bool) = android32 0x59935e;
	void removeObjectsInArray(cocos2d::CCArray*) = android32 0x599364;
	void replaceObjectAtIndex(unsigned int, cocos2d::CCObject*, bool) = android32 0x5993be;
	void reverseObjects() = android32 0x5993dc;
	cocos2d::CCString* stringAtIndex(unsigned int) = android32 0x5990fc;

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = android32 0x5992b8;
	virtual void acceptVisitor(cocos2d::CCDataVisitor&) = android32 0x598f5c;
}

[[link(win, android)]]
class cocos2d::CCDictionary {
	static cocos2d::CCDictionary* create() = android32 0x5980a4;
	static cocos2d::CCDictionary* createWithContentsOfFile(char const*) = android32 0x598118;
	static cocos2d::CCDictionary* createWithContentsOfFileThreadSafe(char const*) = android32 0x5980cc;
	static cocos2d::CCDictionary* createWithDictionary(cocos2d::CCDictionary*) = android32 0x5980bc;

	gd::string getFirstKey() = android32 0x596c4c;

	void setObject(cocos2d::CCObject*, gd::string const&) = android32 0x5974c8;
	void setObject(cocos2d::CCObject*, int) = android32 0x597950;
	void setObjectUnSafe(cocos2d::CCObject*, gd::string const&) = android32 0x5970f4;
	void setObjectUnSafe(cocos2d::CCObject*, int) = android32 0x5976dc;

	// CCDictionary(cocos2d::CCDictionary const&);
	// CCDictionary();
	cocos2d::CCArray* allKeys() = android32 0x596b94;
	cocos2d::CCArray* allKeysForObject(cocos2d::CCObject*) = android32 0x596c98;
	char const* charForKey(gd::string const&) = android32 0x59707c;
	unsigned int count() = android32 0x596b88;
	cocos2d::CCObject* objectForKey(gd::string const&) = android32 0x596d68;
	cocos2d::CCObject* objectForKey(int) = android32 0x596f40;
	cocos2d::CCObject* randomObject() = android32 0x598034;
	void removeAllObjects() = android32 0x597f08;
	void removeObjectForElememt(cocos2d::CCDictElement*) = android32 0x597b14;
	void removeObjectForKey(gd::string const&) = android32 0x597bd4;
	void removeObjectForKey(int) = android32 0x597e34;
	void removeObjectsForKeys(cocos2d::CCArray*) = android32 0x597dc4;
	cocos2d::CCString const* valueForKey(gd::string const&) = android32 0x597014;
	cocos2d::CCString const* valueForKey(int) = android32 0x59708c;
	bool writeToFile(char const*) = android32 0x598128;

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = android32 0x597a44;
	virtual void acceptVisitor(cocos2d::CCDataVisitor&) = android32 0x596afc;
}

[[link(win, android)]]
class cocos2d::CCTransitionFade {
	static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*) = ios 0x1d1e60, android32 0x5a89e8;
	static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&) = ios 0x1d1dc4, android32 0x5a89b4;

	// CCTransitionFade(cocos2d::CCTransitionFade const&);
	// CCTransitionFade();

	virtual void onEnter() = android32 0x5a99b0;
	virtual void onExit() = android32 0x5a9f68;
	virtual bool initWithDuration(float, cocos2d::CCScene*) = android32 0x5a75f0;
	virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::_ccColor3B const&) = android32 0x5a82a8;
}

[[link(win, android)]]
class cocos2d::ZipUtils {
	static gd::string base64DecodeEnc(gd::string const&, gd::string) = android32 0x5c6540;
	static gd::string base64EncodeEnc(gd::string const&, gd::string) = android32 0x5c6604;
	static gd::string base64URLDecode(gd::string const&) = android32 0x5c66c4;
	static gd::string base64URLEncode(gd::string const&) = android32 0x5c6768;
	static void ccDecodeEncodedPvr(unsigned int*, int) = android32 0x5c680c;
	static int ccDeflateMemory(unsigned char*, unsigned int, unsigned char**) = android32 0x5c6d8c;
	static int ccInflateCCZFile(char const*, unsigned char**) = android32 0x5c6fd0;
	static int ccInflateGZipFile(char const*, unsigned char**) = android32 0x5c6f50;
	static int ccInflateMemory(unsigned char*, unsigned int, unsigned char**) = android32 0x5c6b48;
	static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int*, unsigned int) = android32 0x5c6a3c;
	static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int) = android32 0x5c6afc;
	static void ccSetPvrEncryptionKey(unsigned int, unsigned int, unsigned int, unsigned int) = android32 0x5c7134;
	static void ccSetPvrEncryptionKeyPart(int, unsigned int) = android32 0x5c710c;
	static gd::string compressString(gd::string const&, bool, int) = android32 0x5c6e50;
	static gd::string decompressString2(unsigned char*, bool, int, int) = android32 0x5c6b50;
	static gd::string decompressString(gd::string const&, bool, int) = android32 0x5c6c88;
	static gd::string encryptDecrypt(gd::string const&, int) = android32 0x5c6494;
	static gd::string encryptDecryptWKey(gd::string const&, gd::string) = android32 0x5c64d8;
	static unsigned char hexToChar(gd::string const&) = android32 0x5c694c;
	static gd::string urlDecode(gd::string const&) = android32 0x5c69ac;
}

[[link(win, android)]]
class cocos2d::CCDelayTime {
	static cocos2d::CCDelayTime* create(float) = ios 0x191bbc, android32 0x58fee0;

	// CCDelayTime(cocos2d::CCDelayTime const&);
	// CCDelayTime();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = android32 0x58eb48;
	virtual void update(float) = android32 0x58d338;
	virtual cocos2d::CCActionInterval* reverse() = android32 0x590130;
}

[[link(win, android)]]
class cocos2d::CCSequence {
	static cocos2d::CCSequence* create(cocos2d::CCArray*) = ios 0x191274, android32 0x58ecc0, android32 0x58ec8c;
	// static cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, ...);
	static cocos2d::CCSequence* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = android32 0x58ec18;
	static cocos2d::CCSequence* createWithVariableList(cocos2d::CCFiniteTimeAction*, va_list) = ios 0x19129c, android32 0x58ec58;

	bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = android32 0x58ebe6;

	// CCSequence(cocos2d::CCSequence const&);
	// CCSequence();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = android32 0x58ed30;
	virtual void update(float) = android32 0x58d0e0;
	virtual void startWithTarget(cocos2d::CCNode*) = android32 0x58d48a;
	virtual void stop() = android32 0x58d4da;
	virtual cocos2d::CCActionInterval* reverse() = android32 0x58ed0c;
}

[[link(win, android)]]
class cocos2d::CCMenuItemSprite {
	static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*) = android32 0x5aca94;
	static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = android32 0x5aca28;
	static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = android32 0x5acab8;

	bool initWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = ios 0x5626c, android32 0x5ac9b6;

	// CCMenuItemSprite(cocos2d::CCMenuItemSprite const&);
	// CCMenuItemSprite();

	virtual void selected() = android32 0x5abe9e;
	virtual void unselected() = android32 0x5abad2;
	virtual void setEnabled(bool) = ios 0x56490, android32 0x5abef0;
	virtual cocos2d::CCNode* getNormalImage() = ios 0x56038, android32 0x5abac0;
	virtual void setNormalImage(cocos2d::CCNode*) = ios 0x56040, android32 0x5abc1c;
	virtual cocos2d::CCNode* getSelectedImage() = ios 0x5610c, android32 0x5abac6;
	virtual void setSelectedImage(cocos2d::CCNode*) = ios 0x56114, android32 0x5abcac;
	virtual cocos2d::CCNode* getDisabledImage() = ios 0x561bc, android32 0x5abacc;
	virtual void setDisabledImage(cocos2d::CCNode*) = ios 0x561c4, android32 0x5abd24;
	virtual void updateImagesVisibility() = ios 0x564b0, android32 0x5abb1c;
}

[[link(win, android)]]
class cocos2d::CCMenuItem {
	~CCMenuItem() = ios 0x55eb0, android32 0x5ac128, android32 0x5ac0fc;
	static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = android32 0x5ac3f4;
	static cocos2d::CCMenuItem* create() = android32 0x5ac422;

	bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = ios 0x55e40, android32 0x5ac390;

	int getScriptTapHandler();

	void setTarget(cocos2d::CCObject* rec, cocos2d::SEL_MenuHandler selector) {
	    // i think its inlined on ios or something
            m_pListener = rec;
            m_pfnSelector = selector;
	}

	// CCMenuItem(cocos2d::CCMenuItem const&);
	// CCMenuItem();
	cocos2d::CCRect rect() = android32 0x5ac43a;

	virtual void activate() = ios 0x55f88, android32 0x5ac2a2;
	virtual void selected() = ios 0x55f04, android32 0x5aba70;
	virtual void unselected() = ios 0x55f10, android32 0x5aba78;
	virtual void registerScriptTapHandler(int) = ios 0x55f18, android32 0x5aba80;
	virtual void unregisterScriptTapHandler() = ios 0x55f48, android32 0x5ac0d8;
	virtual bool isEnabled() = ios 0x5600c, android32 0x5aba9a;
	virtual void setEnabled(bool) = ios 0x56004, android32 0x5aba94;
	virtual bool isSelected() = ios 0x56030, android32 0x5abaa0;
}

[[link(win, android)]]
class cocos2d::extension::CCScale9Sprite {
	static cocos2d::extension::CCScale9Sprite* create() = android32 0x57e5d0;
	static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const*) = android32 0x57e500;
	static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const*, cocos2d::CCRect) = android32 0x57e48c;
	static cocos2d::extension::CCScale9Sprite* create(char const*) = android32 0x57e390 = android32 0x57e31c;
	static cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect) = ios 0x21e9c8, android32 0x57e220, android32 0x57e2a8;

	CCScale9Sprite() = ios 0x21d3a4;
	~CCScale9Sprite() = ios 0x21d454, android32 0x57cd34, android32 0x57cca8;

	// where is updatePositions
	virtual bool init() = ios 0x21d51c, android32 0x57cd48;
	virtual void setContentSize(const cocos2d::CCSize& size) = ios 0x21e418, android32 0x57e758;
	virtual void visit() = ios 0x21f110, android32 0x57e7ac;
	virtual GLubyte getOpacity() = android32 0x57cc9e = android32 0x57cc98;
	virtual void setOpacity(GLubyte opacity) = android32 0x57dd54 = android32 0x57dcf0;
	virtual void updateDisplayedOpacity(GLubyte parentOpacity) = android32 0x57e782 = android32 0x57e768;
	virtual const cocos2d::ccColor3B& getColor() = android32 0x57cc90 = android32 0x57cc8a;
	virtual void setColor(const cocos2d::ccColor3B& color) = android32 0x57dce8 = android32 0x57dc7c;
	virtual void updateDisplayedColor(const cocos2d::ccColor3B& parentColor) = android32 0x57e7a4 = android32 0x57e78a;
	virtual void setOpacityModifyRGB(bool bValue) = android32 0x57dc74 = android32 0x57dc10;
	virtual bool isOpacityModifyRGB() = android32 0x57cc6a = android32 0x57cc64;
	virtual cocos2d::CCSize getPreferredSize() = android32 0x57da68;
	virtual void setPreferredSize(cocos2d::CCSize) = android32 0x57cffc;
	virtual cocos2d::CCRect getCapInsets() = android32 0x57cf74;
	virtual void setCapInsets(cocos2d::CCRect) = android32 0x57dd5c;
	virtual float getInsetLeft() = android32 0x57cc72;
	virtual void setInsetLeft(float) = android32 0x57e6f4;
	virtual float getInsetTop() = android32 0x57cc78;
	virtual void setInsetTop(float) = android32 0x57e6fc;
	virtual float getInsetRight() = android32 0x57cc7e;
	virtual void setInsetRight(float) = android32 0x57e704;
	virtual float getInsetBottom() = android32 0x57cc84;
	virtual void setInsetBottom(float) = android32 0x57e70c;
	virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, CCRect, bool, CCRect) = android32 0x57cf84;
	virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, CCRect, CCRect) = android32 0x57cd9c;
	virtual bool initWithFile(const char*, cocos2d::CCRect, cocos2d::CCRect) = ios 0x21e8f0, android32 0x57da78;
	virtual bool initWithFile(const char*, cocos2d::CCRect) = android32 0x57cdf0;
	virtual bool initWithFile(cocos2d::CCRect, const char*) = android32 0x57ce44;
	virtual bool initWithFile(const char*) = android32 0x57ce9c;
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = ios 0x21eb24, android32 0x57dad4;
	virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = android32 0x57cee4;
	virtual bool initWithSpriteFrameName(const char*, CCRect) = android32 0x57dbb8;
	virtual bool initWithSpriteFrameName(const char*) = android32 0x57cf2c;
	virtual bool updateWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = ios 0x21d68c, android32 0x57d018;
	virtual void setSpriteFrame(cocos2d::CCSpriteFrame*) = android32 0x57db3c;
}

[[link(win, android)]]
class cocos2d::extension::CCControlColourPicker {
	static cocos2d::extension::CCControlColourPicker* colourPicker() = ios 0x1b4e64, android32 0x57a0b8; // im confused
}

[[link(win, android)]]
class cocos2d::CCMenu {
	// static cocos2d::CCMenu* create(cocos2d::CCMenuItem*, ...) = ios 0x1dabec;
	static cocos2d::CCMenu* create() = ios 0x1dabc8, android32 0x5ab9dc, android32 0x5ab9a8;
	static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*) = ios 0x1dac74, android32 0x5ab900;
    	static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*);
    	// static cocos2d::CCMenu* createWithItems(cocos2d::CCMenuItem*, char*) = ios 0x1dac14;

	bool initWithArray(cocos2d::CCArray*) = android32 0x5ab7d0;

	void setHandlerPriority(int) = android32 0x5aaaa0;

	// CCMenu(cocos2d::CCMenu const&);
	// CCMenu();
	void alignItemsHorizontally() = android32 0x5aaddc;
	void alignItemsHorizontallyWithPadding(float) = android32 0x5aac54;
	// void alignItemsInColumns(unsigned int, ...);
	// void alignItemsInColumns(unsigned int, char*);
	void alignItemsInColumnsWithArray(cocos2d::CCArray*) = android32 0x5ab134;
	// void alignItemsInRows(unsigned int, ...);
	// void alignItemsInRows(unsigned int, char*);
	void alignItemsInRowsWithArray(cocos2d::CCArray*) = android32 0x5ab404;
	void alignItemsVertically() = android32 0x5aac48;
	void alignItemsVerticallyWithPadding(float) = android32 0x5aaac0;
	cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*) = android32 0x5aaf68;
	cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*, bool) = android32 0x5aade8;

	virtual bool init() = android32 0x5ab9ea;
	virtual void addChild(cocos2d::CCNode*) = android32 0x5ab9f0;
	virtual void addChild(cocos2d::CCNode*, int) = android32 0x5ab9f4;
	virtual void addChild(cocos2d::CCNode*, int, int) = android32 0x5ab9f8;
	virtual void removeChild(cocos2d::CCNode*, bool) = android32 0x5aba2c;
	virtual void onExit() = android32 0x5ab9fc;
	virtual void registerWithTouchDispatcher() = android32 0x5aaa74;

	virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x5aafea = android32 0x5aaf86;
	virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x5ab024 = android32 0x5aaff2;
	virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x5aaa4a = android32 0x5aaa24;
	virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = android32 0x5aaa6c = android32 0x5aaa52;
}

[[link(win, android)]]
class DS_Dictionary {
	DS_Dictionary();
	// ~DS_Dictionary();

	static void copyFile(const char*, const char*) = android32 0x5d3698;

	cocos2d::CCObject* decodeObjectForKey(const char*, bool, int) = android32 0x5d5ea8;

	bool loadRootSubDictFromFile(const char*) = android32 0x5d59a4;
	bool loadRootSubDictFromCompressedFile(const char*) = android32 0x5d5af0;
	bool loadRootSubDictFromString(gd::string const&) = android32 0x5d5c24;

	bool saveRootSubDictToFile(const char*) = android32 0x5d3558;
	bool saveRootSubDictToCompressedFile(const char*) = android32 0x5d37d8;
	gd::string saveRootSubDictToString() = android32 0x5d3764;

	bool stepIntoSubDictWithKey(const char*) = android32 0x5d5dc0;
	void stepOutOfSubDict() = android32 0x5d3970;
	void stepBackToRootSubDict() = android32 0x5d5cd0;

	unsigned int getNumKeys() = android32 0x5d398c;
	gd::string getKey(unsigned int) = android32 0x5d39e0;
	gd::vector<gd::string> getAllKeys() = android32 0x5d4fc8;
	unsigned int getIndexOfKey(const char*) = android32 0x5d3a64;
	unsigned int getIndexOfKeyWithClosestAlphaNumericalMatch(const char*) = android32 0x5d3afc;
	void removeKey(unsigned int) = android32 0x5d3b98;
	void removeKey(const char*) = android32 0x5d3c50;
	void removeAllKeys() = android32 0x5d3d0c;

	int getIntegerForKey(const char*) = android32 0x5d3d98;
	bool getBoolForKey(const char*) = android32 0x5d3e80;
	float getFloatForKey(const char*) = android32 0x5d3f48;
	gd::string getStringForKey(const char*) = android32 0x5d4044;
	cocos2d::CCPoint getVec2ForKey(const char*) = android32 0x5d4148;
	cocos2d::CCRect getRectForKey(const char*) = android32 0x5d5464;
	gd::vector<gd::string> getStringArrayForKey(const char*) = android32 0x5d5048;
	gd::vector<cocos2d::CCPoint> getVec2ArrayForKey(const char*) = android32 0x5d5738;
	gd::vector<cocos2d::CCRect> getRectArrayForKey(const char*) = android32 0x5d5598;
	cocos2d::CCArray* getArrayForKey(const char*, bool) = android32 0x5d65a8;
	cocos2d::CCDictionary* getDictForKey(const char*, bool) = android32 0x5d6294;
	cocos2d::CCObject* getObjectForKey(const char*) = android32 0x5d6434;

	void setIntegerForKey(const char*, int) = android32 0x5d6cb8;
	void setIntegerForKey(const char*, int, bool) = android32 0x5d6b34;
	void setBoolForKey(const char*, bool) = android32 0x5d4384;
	void setBoolForKey(const char*, bool, bool) = android32 0x5d4254;
	void setFloatForKey(const char*, float) = android32 0x5d6b2c;
	void setFloatForKey(const char*, float, bool) = android32 0x5d698c;
	void setStringForKey(const char*, const gd::string&) = android32 0x5d44e0;
	void setStringForKey(const char*, const gd::string&, bool) = android32 0x5d438c;
	void setVec2ForKey(const char*, const cocos2d::CCPoint&) = android32 0x5d4834;
	void setVec2ForKey(const char*, const cocos2d::CCPoint&, bool) = android32 0x5d4688;
	void setRectForKey(const char*, const cocos2d::CCRect&) = android32 0x5d4a10;
	void setRectForKey(const char*, const cocos2d::CCRect&, bool) = android32 0x5d483c;
	void setStringArrayForKey(const char*, const gd::vector<gd::string>&) = android32 0x5d4680;
	void setStringArrayForKey(const char*, const gd::vector<gd::string>&, bool) = android32 0x5d44e8;
	void setVec2ArrayForKey(const char*, const gd::vector<cocos2d::CCPoint>&) = android32 0x5d4c2c;
	void setVec2ArrayForKey(const char*, const gd::vector<cocos2d::CCPoint>&, bool) = android32 0x5d4a18;
	void setRectArrayForKey(const char*, const gd::vector<cocos2d::CCRect>&) = android32 0x5d4e74;
	void setRectArrayForKey(const char*, const gd::vector<cocos2d::CCRect>&, bool) = android32 0x5d4c34;
	void setArrayForKey(const char*, cocos2d::CCArray*) = android32 0x5d6094;
	void setBoolMapForKey(const char*, gd::map<gd::string, bool>&) = android32 0x5d6028;
	void setSubDictForKey(const char*) = android32 0x5d6020;
	void setSubDictForKey(const char*, bool, bool) = android32 0x5d5ee4;
	void setDictForKey(const char*, cocos2d::CCDictionary*) = android32 0x5d61fc;
	void setObjectForKey(const char*, cocos2d::CCObject*) = android32 0x5d60fc;

	void addBoolValuesToMapForKey(gd::map<gd::string, bool>&, const char*, bool) = android32 0x5d68f8;
	void addBoolValuesToMapForKeySpecial(gd::map<gd::string, bool>&, const char*, bool) = android32 0x5d680c;

	void checkCompatibility() = android32 0x5d34f8;
}

[[link(win, android)]]
class cocos2d::CCDrawNode {
	static cocos2d::CCDrawNode* create() = android32 0x59bfc4;

	cocos2d::_ccBlendFunc getBlendFunc() const;

	void setBlendFunc(cocos2d::_ccBlendFunc const&) = android32 0x59d6b6;

	// CCDrawNode(cocos2d::CCDrawNode const&);
	// CCDrawNode();
	void clear() = android32 0x59d698;
	void drawCircle(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&, unsigned int) = android32 0x59d568;
	void drawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&) = android32 0x59d07c;
	void drawDot(cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&) = android32 0x59c754;
	bool drawLines(cocos2d::CCPoint*, unsigned int, float, cocos2d::_ccColor4F const&) = android32 0x59d500;
	bool drawPolygon(cocos2d::CCPoint *verts, unsigned int count, const cocos2d::ccColor4F &fillColor, float borderWidth, const cocos2d::ccColor4F &borderColor) = android32 0x59ca80;
	void drawPreciseCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::_ccColor4F const&) = android32 0x59d1f4;
	bool drawRect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::_ccColor4F const&, float, cocos2d::_ccColor4F const&) = android32 0x59d488 = android32 0x59d3e0;
	void drawSegment(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::_ccColor4F const&) = android32 0x59ca44;
	void ensureCapacity(unsigned int) = android32 0x59bff6;
	void listenBackToForeground(cocos2d::CCObject*) = android32 0x59bebc;
	void render() = android32 0x59c5cc;

	virtual bool init() = android32 0x59c028;
	virtual void draw() = android32 0x59c668;
}

[[link(win, android)]]
class cocos2d::CCSpriteBatchNode {
    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int) = android32 0x5bf130;
}

[[link(win, android)]]
class cocos2d::CCActionManager {
	cocos2d::CCAction* getActionByTag(unsigned int, cocos2d::CCObject*) = android32 0x590f90;

	// CCActionManager(cocos2d::CCActionManager const&);
	// CCActionManager();
	void actionAllocWithHashElement(cocos2d::_hashElement*) = android32 0x590634;
	void addAction(cocos2d::CCAction*, cocos2d::CCNode*, bool) = ios 0x2fb3d8, android32 0x590888;
	void deleteHashElement(cocos2d::_hashElement*) = android32 0x590598;
	unsigned int numberOfRunningActionsInTarget(cocos2d::CCObject*) = android32 0x59106c;
	cocos2d::CCSet* pauseAllRunningActions() = android32 0x59082c;
	void pauseTarget(cocos2d::CCObject*) = android32 0x5906b4;
	void removeAction(cocos2d::CCAction*) = android32 0x590cf0;
	void removeActionAtIndex(unsigned int, cocos2d::_hashElement*) = android32 0x590658;
	void removeActionByTag(unsigned int, cocos2d::CCObject*) = android32 0x590ea0;
	void removeAllActions() = android32 0x590ca4;
	void removeAllActionsFromTarget(cocos2d::CCObject*) = android32 0x590bac;
	void resumeTarget(cocos2d::CCObject*) = android32 0x590770;
	void resumeTargets(cocos2d::CCSet*) = android32 0x59085e;

	virtual void update(float) = android32 0x590e00;
}

[[link(win, android)]]
class cocos2d::CCString {
	// static cocos2d::CCString* create(gd::string const&);
	static cocos2d::CCString* createWithContentsOfFile(char const*) = ios 0x2709e0, android32 0x598f04;
	static cocos2d::CCString* createWithData(unsigned char const*, unsigned long) = ios 0x2708a4, android32 0x598e38;
	// static cocos2d::CCString* createWithFormat(char const*, ...) = ios 0x270958;

	// bool initWithFormat(char const*, ...);
	// bool initWithFormatAndValist(char const*, char*);

	char const* getCString() const = ios 0x270528;

	// CCString(cocos2d::CCString const&);
	// CCString(gd::string const&);
	// CCString(char const*);
	// CCString();
	bool boolValue() const;
	int compare(char const*) const;
	double doubleValue() const;
	float floatValue() const;
	int intValue() const;
	unsigned int length() const;
	unsigned int uintValue() const;

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = android32 0x598c40;
	virtual bool isEqual(cocos2d::CCObject const*) = android32 0x598b78;
	virtual void acceptVisitor(cocos2d::CCDataVisitor&) = android32 0x598b2a;
}

[[link(win, android)]]
class cocos2d::CCTouch {
	cocos2d::CCPoint getDelta() const;
	int getID() const;
	cocos2d::CCPoint getLocation() const = ios 0x305508;
	cocos2d::CCPoint getLocationInView() const;
	cocos2d::CCPoint getPreviousLocation() const;
	cocos2d::CCPoint getPreviousLocationInView() const;
	cocos2d::CCPoint getStartLocation() const;
	cocos2d::CCPoint getStartLocationInView() const;

	void setTouchInfo(int, float, float) = android32 0x5b7810;

	// CCTouch(cocos2d::CCTouch const&);
	// CCTouch();
}

[[link(win, android)]]
class cocos2d {
	static cocos2d::CCAffineTransform CCAffineTransformConcat(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&) = android32 0x59608a;
	static bool CCAffineTransformEqualToTransform(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&) = android32 0x596118;
	static cocos2d::CCAffineTransform CCAffineTransformInvert(cocos2d::CCAffineTransform const&) = android32 0x59618e;
	static cocos2d::CCAffineTransform CCAffineTransformMakeIdentity() = android32 0x595db8;
	static cocos2d::CCAffineTransform CCAffineTransformRotate(cocos2d::CCAffineTransform const&, float) = android32 0x596010;
	static cocos2d::CCAffineTransform CCAffineTransformScale(cocos2d::CCAffineTransform const&, float, float) = android32 0x595fc2;
	static cocos2d::CCAffineTransform CCAffineTransformTranslate(cocos2d::CCAffineTransform const&, float, float) = android32 0x595f6c;
	static void CCLuaLog(char const*) = android32 0x5b8264;
	static void CCMessageBox(char const*, char const*) = android32 0x5b8260;
	static cocos2d::CCPoint CCPointFromString(char const*) = android32 0x598450;
	static void CCProfilingBeginTimingBlock(char const*) = android32 0x5c1f94;
	static void CCProfilingEndTimingBlock(char const*) = android32 0x5c1ffc;
	static void CCProfilingResetTimingBlock(char const*) = android32 0x5c20a0;
	static cocos2d::CCRect CCRectApplyAffineTransform(cocos2d::CCRect const&, cocos2d::CCAffineTransform const&) = android32 0x595dd4;
	static cocos2d::CCRect CCRectFromString(char const*) = android32 0x5984e0;
	static cocos2d::CCSize CCSizeFromString(char const*) = android32 0x5983c4;
	static cocos2d::CCBMFontConfiguration* FNTConfigLoadFile(char const*) = android32 0x5a3834;
	static void FNTConfigRemoveCache() = android32 0x5a28e4;
	static cocos2d::CCAffineTransform __CCAffineTransformMake(float, float, float, float, float, float) = android32 0x595cba;
	static cocos2d::CCPoint __CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&) = android32 0x595cd0;
	static cocos2d::CCSize __CCSizeApplyAffineTransform(cocos2d::CCSize const&, cocos2d::CCAffineTransform const&) = android32 0x595d50;
	static cocos2d::CCPoint ccCardinalSplineAt(cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, float, float) = android32 0x587c44;
	static void ccDrawCardinalSpline(cocos2d::CCPointArray*, float, unsigned int) = android32 0x59bac0;
	static void ccDrawCatmullRom(cocos2d::CCPointArray*, unsigned int) = android32 0x59bc50;
	static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool) = android32 0x59b740;
	static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool, float, float) = android32 0x59b5f8;
	static void ccDrawCircleSegment(cocos2d::CCPoint const&, float, float, float, unsigned int, bool, float, float) = android32 0x59b758;
	static void ccDrawColor4B(unsigned char, unsigned char, unsigned char, unsigned char) = ios 0x254420, android32 0x59be08;
	static void ccDrawColor4F(float, float, float, float) = android32 0x59bdc8;
	static void ccDrawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int) = android32 0x59bc5c;
	static void ccDrawFilledCircle(cocos2d::CCPoint const&, float, float, unsigned int) = android32 0x59b89c;
	static void ccDrawFree() = android32 0x59b15c;
	static void ccDrawInit() = android32 0x59b158;
	static void ccDrawLine(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = android32 0x59b33c;
	static void ccDrawLines(cocos2d::CCPoint const*, unsigned int) = android32 0x59b2ac;
	static void ccDrawPoint(cocos2d::CCPoint const&) = android32 0x59b180;
	static void ccDrawPoints(cocos2d::CCPoint const*, unsigned int) = android32 0x59b21c;
	static void ccDrawPoly(cocos2d::CCPoint const*, unsigned int, bool) = android32 0x59b480;
	static void ccDrawQuadBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int) = android32 0x59b9ac;
	static void ccDrawRect(cocos2d::CCPoint, cocos2d::CCPoint) = android32 0x59b3d8;
	static void ccDrawSolidPoly(cocos2d::CCPoint const*, unsigned int, cocos2d::_ccColor4F) = android32 0x59b4f8;
	static void ccDrawSolidRect(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::_ccColor4F) = ios 0x3ad68, android32 0x59b588;
	static void ccGLBindTexture2D(unsigned int) = android32 0x5bba18;
	static void ccGLBindTexture2DN(unsigned int, unsigned int) = android32 0x5bb9e4;
	static void ccGLBindVAO(unsigned int) = android32 0x5bba54;
	static void ccGLBlendFunc(unsigned int, unsigned int) = ios 0x1957d8, android32 0x5bb960;
	static void ccGLBlendResetToCache() = android32 0x5bb9ac;
	static void ccGLDeleteProgram(unsigned int) = android32 0x5bb930;
	static void ccGLDeleteTexture(unsigned int) = android32 0x5bba4c;
	static void ccGLDeleteTextureN(unsigned int, unsigned int) = android32 0x5bba20;
	static void ccGLEnable(cocos2d::ccGLServerState) = android32 0x5bba56;
	static void ccGLEnableVertexAttribs(unsigned int) = android32 0x5bba58;
	static void ccGLInvalidateStateCache() = android32 0x5bb8e4;
	static void ccGLUseProgram(unsigned int) = android32 0x5bb948;
	static void ccPointSize(float) = android32 0x59bddc;
	static void ccSetProjectionMatrixDirty() = android32 0x5bbae4;
	static bool ccVertexLineIntersect(float, float, float, float, float, float, float, float, float*) = android32 0x5c2f26;
	static void ccVertexLineToPolygon(cocos2d::CCPoint*, float, cocos2d::_ccVertex2F*, unsigned int, unsigned int) = android32 0x5c2ffc;
	static gd::vector<unsigned short> cc_utf16_vec_from_utf16_str(unsigned short const*) = android32 0x5c1374;
	static void cc_utf8_trim_ws(gd::vector<unsigned short>*) = android32 0x5c1324;
	static int cc_wcslen(unsigned short const*) = android32 0x5c1230;
	static float ccpAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = android32 0x5c24d4;
	static float ccpAngleSigned(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = android32 0x5c22f4;
	static cocos2d::CCPoint ccpClamp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = android32 0x5c2266;
	static cocos2d::CCPoint ccpCompMult(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = android32 0x5c22c8;
	static float ccpDistance(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = android32 0x5c2104;
	static cocos2d::CCPoint ccpForAngle(float) = android32 0x5c2190;
	static cocos2d::CCPoint ccpFromSize(cocos2d::CCSize const&) = android32 0x5c2298;
	static bool ccpFuzzyEqual(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float) = android32 0x5c22c4;
	static cocos2d::CCPoint ccpIntersectPoint(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = android32 0x5c2444;
	static float ccpLength(cocos2d::CCPoint const&) = android32 0x5c20ec;
	static cocos2d::CCPoint ccpLerp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float) = android32 0x5c21bc;
	static bool ccpLineIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, float*, float*) = android32 0x5c2304;
	static cocos2d::CCPoint ccpNormalize(cocos2d::CCPoint const&) = android32 0x5c2148;
	static cocos2d::CCPoint ccpRotateByAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float) = android32 0x5c22f8;
	static bool ccpSegmentIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = android32 0x5c23d8;
	static float ccpToAngle(cocos2d::CCPoint const&) = android32 0x5c21b2;
	static char const* cocos2dVersion() = android32 0x599a2c;
}

[[link(win, android)]]
class cocos2d::CCRotateBy {
	static cocos2d::CCRotateBy* create(float, float) = ios 0x1921e4, android32 0x58f050;
	static cocos2d::CCRotateBy* create(float, float, float) = android32 0x58f0a4;

	bool initWithDuration(float, float) = android32 0x58f03c;
	bool initWithDuration(float, float, float) = android32 0x58f090;

	// CCRotateBy(cocos2d::CCRotateBy const&);
	// CCRotateBy();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = android32 0x58f0fc;
	virtual void update(float) = android32 0x58d242;
	virtual void startWithTarget(cocos2d::CCNode*) = android32 0x58d3b4;
	virtual cocos2d::CCActionInterval* reverse() = android32 0x58f0e8;
}

[[link(win, android)]]
class cocos2d::CCRepeatForever {
	static cocos2d::CCRepeatForever* create(cocos2d::CCActionInterval*) = ios 0x191794, android32 0x58eee8;

	bool initWithAction(cocos2d::CCActionInterval*) = android32 0x58eed4;

	cocos2d::CCActionInterval* getInnerAction();

	void setInnerAction(cocos2d::CCActionInterval*);

	// CCRepeatForever(cocos2d::CCRepeatForever const&);
	// CCRepeatForever();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = android32 0x58ef40;
	virtual bool isDone() = android32 0x58d1b8;
	virtual void startWithTarget(cocos2d::CCNode*) = android32 0x58d37a;
	virtual void step(float) = android32 0x58e1d2;
	virtual cocos2d::CCActionInterval* reverse() = android32 0x58ef2c;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrameCache {
	static void purgeSharedSpriteFrameCache() = android32 0x5bfd60;
	static cocos2d::CCSpriteFrameCache* sharedSpriteFrameCache() = ios 0x3b8d98, android32 0x5bfdbc;

	bool init() = android32 0x5bfd78;

	// CCSpriteFrameCache();
	// CCSpriteFrameCache(cocos2d::CCSpriteFrameCache const&);
	void addSpriteFrame(cocos2d::CCSpriteFrame*, char const*) = android32 0x5c0358;
	void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*) = android32 0x5bfdfc;
	void addSpriteFramesWithFile(char const*, char const*) = android32 0x5c0332;
	void addSpriteFramesWithFile(char const*) = android32 0x5c0790;
	void addSpriteFramesWithFile(char const*, cocos2d::CCTexture2D*) = android32 0x5c0310;
	void removeSpriteFrameByName(char const*) = android32 0x5c0640;
	void removeSpriteFrames() = android32 0x5c05c0;
	void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*) = android32 0x5c039c;
	void removeSpriteFramesFromFile(char const*) = android32 0x5c0970;
	void removeSpriteFramesFromTexture(cocos2d::CCTexture2D*) = android32 0x5c0464;
	void removeUnusedSpriteFrames() = android32 0x5c06f4;
	cocos2d::CCSpriteFrame* spriteFrameByName(char const*) = ios 0x3b9c74, android32 0x5c052c;
}

[[link(win, android)]]
class cocos2d::CCFadeTo {
	static cocos2d::CCFadeTo* create(float, unsigned char) = ios 0x193adc, android32 0x58fc5c;

	bool initWithDuration(float, unsigned char) = android32 0x58fc4a;

	// CCFadeTo(cocos2d::CCFadeTo const&);
	// CCFadeTo();

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = android32 0x58fc9c;
	virtual void update(float) = android32 0x58d6c8;
	virtual void startWithTarget(cocos2d::CCNode*) = android32 0x58d690;
}