#import ios <Geode/cocos/particle_nodes/firePngData.h>

[[link(win, android)]]
class cocos2d::CCEGLViewProtocol {
    CCEGLViewProtocol();
    virtual ~CCEGLViewProtocol();

    cocos2d::CCRect const& getViewPortRect() const = ios inline {
        return m_obViewPortRect;
    }
    float getScaleX() const;
    float getScaleY() const;

    char const* getViewName();
    void updateDesignResolutionSize();
    void getSetOfTouchesEndOrCancel(cocos2d::CCSet&, int, int*, float*, float*);

    virtual cocos2d::CCSize const& getFrameSize() const = m1 0x46661c, imac 0x50f740;
    virtual void setFrameSize(float, float) = m1 0x466624, imac 0x50f750;
    virtual cocos2d::CCSize getVisibleSize() const = m1 0x466668, imac 0x50f790;
    virtual cocos2d::CCPoint getVisibleOrigin() const = m1 0x466698, imac 0x50f7e0;
    virtual void setDesignResolutionSize(float, float, ResolutionPolicy) = m1 0x4664fc, imac 0x50f5f0;
    virtual cocos2d::CCSize const& getDesignResolutionSize() const = m1 0x466614, imac 0x50f730;
    virtual void setTouchDelegate(cocos2d::EGLTouchDelegate*) = m1 0x4666e4, imac 0x50f850;
    virtual void setViewPortInPoints(float, float, float, float) = m1 0x4666ec, imac 0x50f860;
    virtual void setScissorInPoints(float, float, float, float) = m1 0x466718, imac 0x50f8a0;
    virtual bool isScissorEnabled() = m1 0x466744, imac 0x50f8e0;
    virtual cocos2d::CCRect getScissorRect() = m1 0x466764, imac 0x50f900;
    virtual void setViewName(char const*) = m1 0x4667f4, imac 0x50f9a0;
    virtual void pollInputEvents() = m1 0x466f98, imac 0x510130;
    virtual void handleTouchesBegin(int, int*, float*, float*) = m1 0x466818, imac 0x50f9d0;
    virtual void handleTouchesMove(int, int*, float*, float*) = m1 0x466ae8, imac 0x50fcb0;
    virtual void handleTouchesEnd(int, int*, float*, float*) = m1 0x466e28, imac 0x50ffe0;
    virtual void handleTouchesCancel(int, int*, float*, float*) = m1 0x466ed4, imac 0x510070;
}

[[link(win, android)]]
class cocos2d::CCActionEase : cocos2d::CCActionInterval {
    static cocos2d::CCActionEase* create(cocos2d::CCActionInterval*);

    // CCActionEase(cocos2d::CCActionEase const&);
    // CCActionEase();
    virtual ~CCActionEase();

    bool initWithAction(cocos2d::CCActionInterval* pAction);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46a850, imac 0x513e00;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x46a9fc, imac 0x513fc0;
    virtual void stop() = m1 0x46aa2c, imac 0x513ff0;
    virtual void update(float) = m1 0x46aa5c, imac 0x514020;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x46aa6c, imac 0x514040;
    virtual cocos2d::CCActionInterval* getInnerAction() = m1 0x46aa8c, imac 0x514060;
}

[[link(win, android)]]
class cocos2d::CCEaseRateAction : cocos2d::CCActionEase {
    static cocos2d::CCEaseRateAction* create(cocos2d::CCActionInterval* pAction, float fRate) = ios inline {
        CCEaseRateAction *pRet = new CCEaseRateAction();
        if (pRet)
        {
            if (pRet->initWithAction(pAction, fRate))
            {
                pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet;
    }

    // CCEaseRateAction(cocos2d::CCEaseRateAction const&);
    // CCEaseRateAction();
    [[since("4.2.1")]]
    virtual ~CCEaseRateAction() = ios inline {}

    bool initWithAction(cocos2d::CCActionInterval* pAction, float fRate) = ios inline {
        if (CCActionEase::initWithAction(pAction))
        {
            m_fRate = fRate;
            return true;
        }

        return false;
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline, m1 0x46aba8, imac 0x514180 {
        CCZone* pNewZone = NULL;
        CCEaseRateAction* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCEaseRateAction*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseRateAction();
            pNewZone = new CCZone(pCopy);
        }

        pCopy->initWithAction((CCActionInterval*)(m_pInner->copy()->autorelease()), m_fRate);

        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }

    virtual cocos2d::CCActionInterval* reverse() = ios inline, m1 0x46ad58, imac 0x514350 {
        return CCEaseRateAction::create(m_pInner->reverse(), 1 / m_fRate);
    }
}

[[link(win, android)]]
class cocos2d::CCEaseIn : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseIn* create(cocos2d::CCActionInterval*, float);

    // CCEaseIn(cocos2d::CCEaseIn const&);
    // CCEaseIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46ae4c, imac 0x514440;
    virtual void update(float) = m1 0x46af44, imac 0x514550;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x46af74, imac 0x514580;
}

[[link(win, android)]]
class cocos2d::CCEaseOut : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseOut* create(cocos2d::CCActionInterval*, float);

    // CCEaseOut(cocos2d::CCEaseOut const&);
    // CCEaseOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46b068, imac 0x514670;
    virtual void update(float) = m1 0x46b160, imac 0x514780;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x46b198, imac 0x5147b0;
}

[[link(win, android)]]
class cocos2d::CCEaseInOut : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseInOut* create(cocos2d::CCActionInterval*, float);

    // CCEaseInOut(cocos2d::CCEaseInOut const&);
    // CCEaseInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46b28c, imac 0x5148a0;
    virtual void update(float) = m1 0x46b384, imac 0x5149b0;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x46b3f0, imac 0x514a20;
}

[[link(win, android)]]
class cocos2d::CCEaseBackIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackIn* create(cocos2d::CCActionInterval*);

    // CCEaseBackIn(cocos2d::CCEaseBackIn const&);
    // CCEaseBackIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46d71c, imac 0x516d50;
    virtual void update(float) = m1 0x46d804, imac 0x516e50;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x46d838, imac 0x516e80;
}

[[link(win, android)]]
class cocos2d::CCEaseBackOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackOut* create(cocos2d::CCActionInterval*);

    // CCEaseBackOut(cocos2d::CCEaseBackOut const&);
    // CCEaseBackOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46d900, imac 0x516f40;
    virtual void update(float) = m1 0x46d9e8, imac 0x517040;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x46da28, imac 0x517080;
}

[[link(win, android)]]
class cocos2d::CCEaseBackInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackInOut* create(cocos2d::CCActionInterval* pAction) = ios inline {
        CCEaseBackInOut *pRet = new CCEaseBackInOut();
        if (pRet)
        {
            if (pRet->initWithAction(pAction))
            {
                pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet;
    }

    // CCEaseBackInOut(cocos2d::CCEaseBackInOut const&);
    // CCEaseBackInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline, m1 0x46daf0, imac 0x517140 {
        CCZone* pNewZone = NULL;
        CCEaseBackInOut* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCEaseBackInOut*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseBackInOut();
            pNewZone = new CCZone(pCopy);
        }

        pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));
    
        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float time) = ios inline, m1 0x46dbd8, imac 0x517240 {
        float overshoot = 1.70158f * 1.525f;

        time = time * 2;
        if (time < 1)
        {
            m_pInner->update((time * time * ((overshoot + 1) * time - overshoot)) / 2);
        }
        else
        {
            time = time - 2;
            m_pInner->update((time * time * ((overshoot + 1) * time + overshoot)) / 2 + 1);
        }
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline, m1 0x46dc6c, imac 0x5172d0 {
        return CCEaseBackInOut::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEaseBounce : cocos2d::CCActionEase {
    static cocos2d::CCEaseBounce* create(cocos2d::CCActionInterval* pAction) = ios inline {
        CCEaseBounce *pRet = new CCEaseBounce();
        if (pRet)
        {
            if (pRet->initWithAction(pAction))
            {
                pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet; 
    }

    // CCEaseBounce(cocos2d::CCEaseBounce const&);
    // CCEaseBounce();

    float bounceTime(float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline, m1 0x46cb34, imac 0x516240 {
        CCZone* pNewZone = NULL;
        CCEaseBounce* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCEaseBounce*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseBounce();
            pNewZone = new CCZone(pCopy);
        }

        pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));
        
        CC_SAFE_DELETE(pNewZone);
        return pCopy; 
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline, m1 0x46cd04, imac 0x516400 {
        return CCEaseBounce::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEaseBounceIn : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceIn* create(cocos2d::CCActionInterval*);

    // CCEaseBounceIn(cocos2d::CCEaseBounceIn const&);
    // CCEaseBounceIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46cdcc, imac 0x5164c0;
    virtual void update(float) = m1 0x46ceb4, imac 0x5165c0;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x46cfc4, imac 0x5166a0;
}

[[link(win, android)]]
class cocos2d::CCEaseBounceOut : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceOut* create(cocos2d::CCActionInterval*);

    // CCEaseBounceOut(cocos2d::CCEaseBounceOut const&);
    // CCEaseBounceOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46d08c, imac 0x516760;
    virtual void update(float) = m1 0x46d174, imac 0x516860;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x46d27c, imac 0x516920;
}

[[link(win, android)]]
class cocos2d::CCEaseBounceInOut : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceInOut* create(cocos2d::CCActionInterval* pAction) = ios inline {
        CCEaseBounceInOut *pRet = new CCEaseBounceInOut();
        if (pRet)
        {
            if (pRet->initWithAction(pAction))
            {
                pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet;
    }

    // CCEaseBounceInOut(cocos2d::CCEaseBounceInOut const&);
    // CCEaseBounceInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline, m1 0x46d344, imac 0x5169e0 {
        CCZone* pNewZone = NULL;
        CCEaseBounceInOut* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCEaseBounceInOut*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseBounceInOut();
            pNewZone = new CCZone(pCopy);
        }

        pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));
    
        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float time) = ios inline, m1 0x46d42c, imac 0x516ae0 {
        float newT = 0;
        if (time < 0.5f)
        {
            time = time * 2;
            newT = (1 - bounceTime(1 - time)) * 0.5f;
        }
        else
        {
            newT = bounceTime(time * 2 - 1) * 0.5f + 0.5f;
        }

        m_pInner->update(newT);
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline, m1 0x46d654, imac 0x516c90 {
        return CCEaseBounceInOut::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEaseElastic : cocos2d::CCActionEase {
    static cocos2d::CCEaseElastic* create(cocos2d::CCActionInterval* pAction, float fPeriod) = ios inline {
        CCEaseElastic *pRet = new CCEaseElastic();
        if (pRet)
        {
            if (pRet->initWithAction(pAction, fPeriod))
            {
                pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet; 
    }
    static cocos2d::CCEaseElastic* create(cocos2d::CCActionInterval* pAction) = ios inline {
        return cocos2d::CCEaseElastic::create(pAction, 0.3f);
    }

    // CCEaseElastic(cocos2d::CCEaseElastic const&);
    // CCEaseElastic();

    bool initWithAction(cocos2d::CCActionInterval* pAction, float fPeriod) = ios inline {
        if (CCActionEase::initWithAction(pAction))
        {
            m_fPeriod = fPeriod;
            return true;
        }

        return false;
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline, m1 0x46c174, imac 0x5157c0 {
        CCZone* pNewZone = NULL;
        CCEaseElastic* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCEaseElastic*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseElastic();
            pNewZone = new CCZone(pCopy);
        }

        pCopy->initWithAction((cocos2d::CCActionInterval *)(m_pInner->copy()->autorelease()), m_fPeriod);

        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline, m1 0x46c26c, imac 0x5158d0 {
        return nullptr;
    }
}

[[link(win, android)]]
class cocos2d::CCEaseElasticIn : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval* pAction) = ios inline {
        return cocos2d::CCEaseElasticIn::create(pAction, 0.3f);
    }
    static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval*, float);

    // CCEaseElasticIn(cocos2d::CCEaseElasticIn const&);
    // CCEaseElasticIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46c340, imac 0x5159c0;
    virtual void update(float) = m1 0x46c438, imac 0x515ad0;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x46c4c8, imac 0x515b70;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticOut : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*);
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*, float);

    // CCEaseElasticOut(cocos2d::CCEaseElasticOut const&);
    // CCEaseElasticOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46c5c4, imac 0x515c80;
    virtual void update(float) = m1 0x46c6bc, imac 0x515d90;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x46c754, imac 0x515e30;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticInOut : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticInOut* create(cocos2d::CCActionInterval* pAction) = ios inline {
        return CCEaseElasticInOut::create(pAction, 0.3f);
    }
    static cocos2d::CCEaseElasticInOut* create(cocos2d::CCActionInterval* pAction, float fPeriod) = ios inline {
        CCEaseElasticInOut *pRet = new CCEaseElasticInOut();
        if (pRet)
        {
            if (pRet->initWithAction(pAction, fPeriod))
            {
                    pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet; 
    }

    // CCEaseElasticInOut(cocos2d::CCEaseElasticInOut const&);
    // CCEaseElasticInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline, m1 0x46c850, imac 0x515f40 {
        CCZone* pNewZone = NULL;
        CCEaseElasticInOut* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCEaseElasticInOut*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseElasticInOut();
            pNewZone = new CCZone(pCopy);
        }

        pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()), m_fPeriod);

        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float time) = ios inline, m1 0x46c948, imac 0x516050 {
        float newT = 0;
        if (time == 0 || time == 1)
        {
            newT = time;
        }
        else
        {
            time = time * 2;
            if (! m_fPeriod)
            {
                m_fPeriod = 0.3f * 1.5f;
            }

            float s = m_fPeriod / 4;

            time = time - 1;
            if (time < 0)
            {
                newT = -0.5f * powf(2, 10 * time) * sinf((time -s) * (M_PI * 2) / m_fPeriod);
            }
            else
            {
                newT = powf(2, -10 * time) * sinf((time - s) * (M_PI * 2) / m_fPeriod) * 0.5f + 1;
            }
        }

        m_pInner->update(newT);
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline, m1 0x46ca5c, imac 0x516170 {
        return CCEaseElasticInOut::create(m_pInner->reverse(), m_fPeriod);
    }
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialIn* create(cocos2d::CCActionInterval*);

    // CCEaseExponentialIn(cocos2d::CCEaseExponentialIn const&);
    // CCEaseExponentialIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46b4c8, imac 0x514af0;
    virtual void update(float) = m1 0x46b5b0, imac 0x514bf0;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x46b624, imac 0x514c40;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialInOut* create(cocos2d::CCActionInterval* pAction) = ios inline {
        CCEaseExponentialInOut *pRet = new CCEaseExponentialInOut();
        if (pRet)
        {
            if (pRet->initWithAction(pAction))
            {
                pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet; 
    }

    // CCEaseExponentialInOut(cocos2d::CCEaseExponentialInOut const&);
    // CCEaseExponentialInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline, m1 0x46b900, imac 0x514f10 {
        CCZone* pNewZone = NULL;
        CCEaseExponentialInOut* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCEaseExponentialInOut*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseExponentialInOut();
            pNewZone = new CCZone(pCopy);
        }

        pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));

        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float time) = ios inline, m1 0x46b9e8, imac 0x515010 {
        time /= 0.5f;
        if (time < 1)
        {
            time = 0.5f * powf(2, 10 * (time - 1));
        }
        else
        {
            time = 0.5f * (-powf(2, -10 * (time - 1)) + 2);
        }

        m_pInner->update(time);
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline, m1 0x46ba54, imac 0x515080 {
        return CCEaseExponentialInOut::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialOut* create(cocos2d::CCActionInterval*);

    // CCEaseExponentialOut(cocos2d::CCEaseExponentialOut const&);
    // CCEaseExponentialOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46b6ec, imac 0x514d00;
    virtual void update(float) = m1 0x46b7d4, imac 0x514e00;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x46b838, imac 0x514e50;
}

[[link(win, android)]]
class cocos2d::CCEaseSineIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineIn* create(cocos2d::CCActionInterval* pAction) = ios inline {
        CCEaseSineIn *pRet = new CCEaseSineIn();
        if (pRet)
        {
            if (pRet->initWithAction(pAction))
            {
                pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet; 
    }

    // CCEaseSineIn(cocos2d::CCEaseSineIn const&);
    // CCEaseSineIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline, m1 0x46bb1c, imac 0x515140 {
        CCZone* pNewZone = NULL;
        CCEaseSineIn* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject)
        {
            //in case of being called at sub class
            pCopy = (CCEaseSineIn*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseSineIn();
            pNewZone = new CCZone(pCopy);
        }
        pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));
        
        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float time) = ios inline, m1 0x46bc04, imac 0x515240 {
        m_pInner->update(-1 * cosf(time * (float)M_PI_2) + 1);
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline, m1 0x46bc48, imac 0x515280 {
        return CCEaseSineOut::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEaseSineOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineOut* create(cocos2d::CCActionInterval* pAction) = ios inline {
        CCEaseSineOut *pRet = new CCEaseSineOut();
        if (pRet)
        {
            if (pRet->initWithAction(pAction))
            {
                pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet; 
    }

    // CCEaseSineOut(cocos2d::CCEaseSineOut const&);
    // CCEaseSineOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline, m1 0x46bd10, imac 0x515340 {
        CCZone* pNewZone = NULL;
        CCEaseSineOut* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCEaseSineOut*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseSineOut();
            pNewZone = new CCZone(pCopy);
        }

        pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));
    
        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float time) = ios inline, m1 0x46bdf8, imac 0x515440 {
        m_pInner->update(sinf(time * (float)M_PI_2));
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline, m1 0x46be34, imac 0x515470 {
        return CCEaseSineIn::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEaseSineInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineInOut* create(cocos2d::CCActionInterval* pAction) = ios inline {
         CCEaseSineInOut *pRet = new CCEaseSineInOut();
        if (pRet)
        {
            if (pRet->initWithAction(pAction))
            {
                pRet->autorelease();
            }
            else
            {
                CC_SAFE_RELEASE_NULL(pRet);
            }
        }

        return pRet; 
    }

    // CCEaseSineInOut(cocos2d::CCEaseSineInOut const&);
    // CCEaseSineInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline, m1 0x46befc, imac 0x515530 {
        CCZone* pNewZone = NULL;
        CCEaseSineInOut* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject)
        {
            //in case of being called at sub class
            pCopy = (CCEaseSineInOut*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCEaseSineInOut();
            pNewZone = new CCZone(pCopy);
        }

        pCopy->initWithAction((CCActionInterval *)(m_pInner->copy()->autorelease()));
        
        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float time) = ios inline, m1 0x46bfe4, imac 0x515630 {
        m_pInner->update(-0.5f * (cosf((float)M_PI * time) - 1));
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline, m1 0x46c030, imac 0x515670 {
        return CCEaseSineInOut::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCMotionStreak : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::ccColor3B const&, cocos2d::CCTexture2D*);
    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::ccColor3B const&, char const*);

    bool initWithFade(float, float, float, cocos2d::ccColor3B const&, cocos2d::CCTexture2D*);
    bool initWithFade(float, float, float, cocos2d::ccColor3B const&, char const*);

    // bool getDontOpacityFade() const;
    // float getM_fMaxSeg() const;

    // void setDontOpacityFade(bool);
    // void setFastMode(bool);
    // void setM_fMaxSeg(float);
    // void setStartingPositionInitialized(bool);
    void setStroke(float);

    // CCMotionStreak(cocos2d::CCMotionStreak const&);
    CCMotionStreak();

    void enableRepeatMode(float);
    // bool isFastMode();
    // bool isStartingPositionInitialized();
    void reset();
    void resumeStroke();
    void stopStroke();
    void tintWithColor(cocos2d::ccColor3B) = ios inline {
        this->setColor(p0);
        for (int i = 0; i < m_uNuPoints * 2; i++) {
            *reinterpret_cast<ccColor3B*>(m_pColorPointer + i * 4) = p0;
        }
    }
    void updateFade(float);

    virtual ~CCMotionStreak();

    virtual void update(float) = m1 0x4c3f60, imac 0x5764e0;
    virtual void setPosition(cocos2d::CCPoint const&) = m1 0x4c3d68, imac 0x576240;
    virtual void draw() = m1 0x4c471c, imac 0x576b90;

    virtual unsigned char getOpacity() = m1 0x4c3ec8, imac 0x5763f0;
    virtual void setOpacity(unsigned char) = m1 0x4c3ec0, imac 0x5763d0;
    virtual void setOpacityModifyRGB(bool) = m1 0x4c3ed8, imac 0x576410;
    virtual bool isOpacityModifyRGB() = m1 0x4c3ee0, imac 0x576430;

    virtual void setBlendFunc(cocos2d::ccBlendFunc) = m1 0x4c3ea0, imac 0x576390;
    virtual cocos2d::ccBlendFunc getBlendFunc() = m1 0x4c3eb0, imac 0x5763b0;
    virtual cocos2d::CCTexture2D* getTexture() = m1 0x4c3e00, imac 0x5762e0;
    virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x4c3e10, imac 0x576300;

    bool m_bFastMode;
    bool m_bStartingPositionInitialized;
    bool m_bStroke;
    cocos2d::CCTexture2D* m_pTexture;
    cocos2d::ccBlendFunc m_tBlendFunc;
    float m_fStroke;
    float m_fFadeDelta;
    float m_fMinSeg;
    uint32_t m_uMaxPoints;
    uint32_t m_uNuPoints;
    uint32_t m_uPreviousNuPoints;
    cocos2d::CCPoint* m_pPointVertexes;
    float* m_pPointState;
    cocos2d::ccVertex2F* m_pVertices;
    uint8_t* m_pColorPointer;
    cocos2d::ccTex2F* m_pTexCoords;
    bool m_bRepeatMode;
    float m_fRepeatSpeed;
    float m_fRepeatTime;
    bool m_idk;
    float m_fMaxSeg;
    bool m_bDontOpacityFade;
    cocos2d::CCPoint m_tPositionR;
}

[[link(win, android)]]
class cocos2d::CCMoveBy : cocos2d::CCActionInterval {
    static cocos2d::CCMoveBy* create(float, cocos2d::CCPoint const&);

    bool initWithDuration(float, cocos2d::CCPoint const&) = ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_positionDelta = p1;
        return true;
    }

    // CCMoveBy(cocos2d::CCMoveBy const&);
    // CCMoveBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x33a700, imac 0x3b7e10;
    virtual void update(float) = m1 0x33a8c0, imac 0x3b8000;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33a828, imac 0x3b7f60;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x33a87c, imac 0x3b7fb0;
}

[[link(win, android)]]
class cocos2d::CCMoveTo : cocos2d::CCMoveBy {
    static cocos2d::CCMoveTo* create(float, cocos2d::CCPoint const&);

    bool initWithDuration(float, cocos2d::CCPoint const&) = ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_endPosition = p1;
        return true;
    }

    // CCMoveTo(cocos2d::CCMoveTo const&);
    // CCMoveTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x33aa9c, imac 0x3b8220;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33abd8, imac 0x3b8380;
}

[[link(win, android)]]
class cocos2d::CCRemoveSelf : cocos2d::CCActionInstant {
    static cocos2d::CCRemoveSelf* create(bool isNeedCleanUp) = ios inline {
        CCRemoveSelf *pRet = new CCRemoveSelf();

        if (pRet && pRet->init(isNeedCleanUp)) {
            pRet->autorelease();
        }

        return pRet;
    }

    bool init(bool isNeedCleanUp) = ios inline {
        m_bIsNeedCleanUp = isNeedCleanUp;
        return true;
    }

    // CCRemoveSelf(cocos2d::CCRemoveSelf const&);
    // CCRemoveSelf();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline, m1 0x6b2c38, imac 0x7ac430 {
        CCZone *pNewZone = NULL;
        CCRemoveSelf *pRet = NULL;

        if (pZone && pZone->m_pCopyObject) {
            pRet = (CCRemoveSelf*)(pZone->m_pCopyObject);
        } else {
            pRet = new CCRemoveSelf();
            pZone = pNewZone = new cocos2d::CCZone(pRet);
        }

        cocos2d::CCActionInstant::copyWithZone(pZone);
        pRet->init(m_bIsNeedCleanUp);
        CC_SAFE_DELETE(pNewZone);
        return pRet;
    }
    virtual void update(float time) = ios inline, m1 0x6b2bc0, imac 0x7ac3b0 {
        CC_UNUSED_PARAM(time);
        m_pTarget->removeFromParentAndCleanup(m_bIsNeedCleanUp);
    }
    virtual cocos2d::CCFiniteTimeAction* reverse() = ios inline, m1 0x6b2bd8, imac 0x7ac3d0 {
        return (CCFiniteTimeAction*)(cocos2d::CCRemoveSelf::create(m_bIsNeedCleanUp));
    }
}

[[link(win, android)]]
class cocos2d::CCScaleBy : cocos2d::CCScaleTo {
    static cocos2d::CCScaleBy* create(float duration, float s) = ios inline {
        cocos2d::CCScaleBy *pScaleBy = new cocos2d::CCScaleBy();
        pScaleBy->initWithDuration(duration, s);
        pScaleBy->autorelease();

        return pScaleBy;
    }
    static cocos2d::CCScaleBy* create(float duration, float sx, float sy) = ios inline {
        cocos2d::CCScaleBy *pScaleBy = new cocos2d::CCScaleBy();
        pScaleBy->initWithDuration(duration, sx, sy);
        pScaleBy->autorelease();

        return pScaleBy;
    }

    // CCScaleBy(cocos2d::CCScaleBy const&);
    // CCScaleBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline, m1 0x33c568, imac 0x3ba1d0 {
        CCZone* pNewZone = NULL;
        CCScaleTo* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject)
        {
            //in case of being called at sub class
            pCopy = (CCScaleBy*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCScaleBy();
            pZone = pNewZone = new CCZone(pCopy);
        }

        CCScaleTo::copyWithZone(pZone);


        pCopy->initWithDuration(m_fDuration, m_fEndScaleX, m_fEndScaleY);
        
        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = ios inline, m1 0x33c658, imac 0x3ba2e0 {
        cocos2d::CCScaleTo::startWithTarget(pTarget);
        m_fDeltaX = m_fStartScaleX * m_fEndScaleX - m_fStartScaleX;
        m_fDeltaY = m_fStartScaleY * m_fEndScaleY - m_fStartScaleY;
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline, m1 0x33c6c8, imac 0x3ba340 {
        return cocos2d::CCScaleBy::create(m_fDuration, 1 / m_fEndScaleX, 1 / m_fEndScaleY);
    }
}

[[link(win, android)]]
class cocos2d::CCScaleTo : cocos2d::CCActionInterval {
    static cocos2d::CCScaleTo* create(float, float);
    static cocos2d::CCScaleTo* create(float, float, float);

    bool initWithDuration(float duration, float s) = ios inline {
        if (cocos2d::CCActionInterval::initWithDuration(duration))
        {
            m_fEndScaleX = s;
            m_fEndScaleY = s;

            return true;
        }

        return false;
    }
    bool initWithDuration(float duration, float sx, float sy) = ios inline {
        if (cocos2d::CCActionInterval::initWithDuration(duration))
        {
            m_fEndScaleX = sx;
            m_fEndScaleY = sy;

            return true;
        }

        return false;
    }

    // CCScaleTo(cocos2d::CCScaleTo const&);
    // CCScaleTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x33c264, imac 0x3b9e60;
    virtual void update(float) = m1 0x33c3c0, imac 0x3b9fe0;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33c354, imac 0x3b9f70;
}

[[link(win, android)]]
class cocos2d::CCSkewBy : cocos2d::CCSkewTo {
    static cocos2d::CCSkewBy* create(float t, float sx, float sy) = ios inline {
	CCSkewBy *pSkewBy = new CCSkewBy();
        if (pSkewBy)
        {
            if (pSkewBy->initWithDuration(t, sx, sy))
            {
                pSkewBy->autorelease();
            }
            else
            {
                CC_SAFE_DELETE(pSkewBy);
            }
        }

        return pSkewBy;
    }

    // CCSkewBy(cocos2d::CCSkewBy const&);
    // CCSkewBy();

    virtual void startWithTarget(cocos2d::CCNode* pTarget) = ios inline, m1 0x33b084, imac 0x3b8930 {
	CCSkewTo::startWithTarget(pTarget);
        m_fDeltaX = m_fSkewX;
        m_fDeltaY = m_fSkewY;
        m_fEndSkewX = m_fStartSkewX + m_fDeltaX;
        m_fEndSkewY = m_fStartSkewY + m_fDeltaY;
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline, m1 0x33b160, imac 0x3b8a40 {
	return create(m_fDuration, -m_fSkewX, -m_fSkewY);
    }
    virtual bool initWithDuration(float t, float deltaSkewX, float deltaSkewY) = ios inline, m1 0x33b058, imac 0x3b88e0 {
	bool bRet = false;

        if (CCSkewTo::initWithDuration(t, deltaSkewX, deltaSkewY))
        {
            m_fSkewX = deltaSkewX;
            m_fSkewY = deltaSkewY;

            bRet = true;
        }

        return bRet;
    }
}

[[link(win, android)]]
class cocos2d::CCSkewTo : cocos2d::CCActionInterval {
    static cocos2d::CCSkewTo* create(float t, float sx, float sy) = ios inline {
	CCSkewTo *pSkewTo = new CCSkewTo();
        if (pSkewTo)
        {
            if (pSkewTo->initWithDuration(t, sx, sy))
            {
                pSkewTo->autorelease();
            }
            else
            {
                CC_SAFE_DELETE(pSkewTo);
            }
        }

        return pSkewTo;
    }

    [[since("4.2.1")]]
    CCSkewTo() = ios inline {
        m_fSkewX = 0.0;
        m_fSkewY = 0.0;
        m_fStartSkewX = 0.0;
        m_fStartSkewY = 0.0;
        m_fEndSkewX = 0.0;
        m_fEndSkewY = 0.0;
        m_fDeltaX = 0.0;
        m_fDeltaY = 0.0;
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline, m1 0x33ad58, imac 0x3b8530 {
        CCZone* pNewZone = NULL;
        CCSkewTo* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCSkewTo*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCSkewTo();
            pZone = pNewZone = new CCZone(pCopy);
        }

        CCActionInterval::copyWithZone(pZone);

        pCopy->initWithDuration(m_fDuration, m_fEndSkewX, m_fEndSkewY);

        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float t) = ios inline, m1 0x33af18, imac 0x3b8760 {
        m_pTarget->setSkewX(m_fStartSkewX + m_fDeltaX * t);
        m_pTarget->setSkewY(m_fStartSkewY + m_fDeltaY * t);
    }
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = ios inline, m1 0x33ae30, imac 0x3b8610 {
        CCActionInterval::startWithTarget(pTarget);

        m_fStartSkewX = pTarget->getSkewX();

        if (m_fStartSkewX > 0)
        {
            m_fStartSkewX = fmodf(m_fStartSkewX, 180.f);
        }
        else
        {
            m_fStartSkewX = fmodf(m_fStartSkewX, -180.f);
        }

        m_fDeltaX = m_fEndSkewX - m_fStartSkewX;

        if (m_fDeltaX > 180)
        {
            m_fDeltaX -= 360;
        }
        if (m_fDeltaX < -180)
        {
            m_fDeltaX += 360;
        }

        m_fStartSkewY = pTarget->getSkewY();

        if (m_fStartSkewY > 0)
        {
            m_fStartSkewY = fmodf(m_fStartSkewY, 360.f);
        }
        else
        {
            m_fStartSkewY = fmodf(m_fStartSkewY, -360.f);
        }

        m_fDeltaY = m_fEndSkewY - m_fStartSkewY;

        if (m_fDeltaY > 180)
        {
            m_fDeltaY -= 360;
        }
        if (m_fDeltaY < -180)
        {
            m_fDeltaY += 360;
        }
    }
    virtual bool initWithDuration(float t, float sx, float sy) = ios inline, m1 0x33ad30, imac 0x3b84f0 {
        bool bRet = false;

        if (CCActionInterval::initWithDuration(t))
        {
            m_fEndSkewX = sx;
            m_fEndSkewY = sy;

            bRet = true;
        }

        return bRet;
    }
}

[[link(win, android)]]
class cocos2d::CCTintTo : cocos2d::CCActionInterval {
    static cocos2d::CCTintTo* create(float, unsigned char, unsigned char, unsigned char);

    bool initWithDuration(float, unsigned char, unsigned char, unsigned char) = ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_to.r = p1;
        m_to.g = p2;
        m_to.b = p3;
        return true;
    }

    // CCTintTo(cocos2d::CCTintTo const&);
    // CCTintTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x33d2b8, imac 0x3bb0c0;
    virtual void update(float) = m1 0x33d418, imac 0x3bb230;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33d3ac, imac 0x3bb1d0;
}

[[link(win, android)]]
class cocos2d::CCAction : cocos2d::CCObject {
    static cocos2d::CCAction* create() = ios inline {
        auto ret = new CCAction();
        ret->autorelease();
        return ret;
    }

    // cocos2d::CCNode* getOriginalTarget();
    // float getSpeedMod() const;
    // int getTag();
    // cocos2d::CCNode* getTarget();

    // void setOriginalTarget(cocos2d::CCNode*);
    // void setSpeedMod(float);
    // void setTarget(cocos2d::CCNode*);

    // CCAction(cocos2d::CCAction const&);
    CCAction();
    virtual ~CCAction();
    char const* description() = ios inline {
        return CCString::createWithFormat("<CCAction | Tag = %d>", m_nTag)->getCString();
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x51d284, imac 0x5f3d90;
    virtual void update(float) = m1 0x51d36c, imac 0x5f3e90;
    //virtual void setTag(int);
    virtual bool isDone() = m1 0x51d360, imac 0x5f3e70;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x51d350, imac 0x5f3e50;
    virtual void stop() = m1 0x51d358, imac 0x5f3e60;
    virtual void step(float) = m1 0x51d368, imac 0x5f3e80;

    cocos2d::CCNode* m_pOriginalTarget;
    cocos2d::CCNode* m_pTarget;
    int m_nTag;
    float m_fSpeedMod;
}

[[link(win, android)]]
class cocos2d::CCActionInstant : cocos2d::CCFiniteTimeAction {
    // CCActionInstant(cocos2d::CCActionInstant const&);
    CCActionInstant() = ios inline {}

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b2608, imac 0x7abe20;
    virtual void update(float) = m1 0x6b26e0, imac 0x7abf00;
    virtual bool isDone() = m1 0x6b26c8, imac 0x7abed0;
    virtual void step(float) = m1 0x6b26d0, imac 0x7abee0;
    virtual cocos2d::CCFiniteTimeAction* reverse() = m1 0x6b26e4, imac 0x7abf10;
}

[[link(win, android)]]
class cocos2d::CCActionInterval : cocos2d::CCFiniteTimeAction {
    static cocos2d::CCActionInterval* create(float) = ios inline {
        auto ret = new CCActionInterval();
        ret->initWithDuration(p0);
        ret->autorelease();
        return ret;
    }

    bool initWithDuration(float d);

    float getAmplitudeRate() = ios inline {
        return 0.f;
    }
    // float getElapsed();
    // bool getM_bFirstTick() const;

    void setAmplitudeRate(float) = ios inline {}

    // CCActionInterval(cocos2d::CCActionInterval const&);
    // CCActionInterval();
    // ~CCActionInterval();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x337dc8, imac 0x3b4fa0;
    virtual bool isDone() = ,, m1 0x337eac, imac 0x3b50a0;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x337f40, imac 0x3b5160;
    virtual void step(float) = m1 0x337ebc, imac 0x3b50c0;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x337f6c, imac 0x3b5180;

    float m_elapsed;
    bool m_bFirstTick;
}

[[link(win, android)]]
class cocos2d::CCFiniteTimeAction : cocos2d::CCAction {
    // CCFiniteTimeAction(cocos2d::CCFiniteTimeAction const&);
    // CCFiniteTimeAction();

    virtual cocos2d::CCFiniteTimeAction* reverse() = ios inline, m1 0x51d370, imac 0x5f3ea0 {
        return nullptr;
    }

    float m_fDuration;
}

[[link(win, android)]]
class cocos2d::CCScene : cocos2d::CCNode {
    static cocos2d::CCScene* create();

    int getHighestChildZ();

    // CCScene(cocos2d::CCScene const&);
    CCScene();
    virtual ~CCScene();

    virtual bool init() = m1 0x230f00, imac 0x2909b0;
}

[[link(win, android)]]
class cocos2d::CCSet : cocos2d::CCObject {
    static cocos2d::CCSet* create() = ios inline {
        auto ret = new CCSet();
        ret->autorelease();
        return ret;
    }

    //CCSet(cocos2d::CCSet const&);
    CCSet();
    virtual ~CCSet();
    void addObject(cocos2d::CCObject*);
    cocos2d::CCObject* anyObject() = ios inline {
        if (!m_pSet || m_pSet->empty())
        {
            return 0;
        }
        
        cocos2d::CCSetIterator it;

        for( it = m_pSet->begin(); it != m_pSet->end(); ++it)
        {
            if (*it)
            {
                return (*it);
            }
        }

        return 0;
    }
    cocos2d::CCSetIterator begin();
    bool containsObject(cocos2d::CCObject*);
    cocos2d::CCSet* copy();
    int count();
    cocos2d::CCSetIterator end();
    cocos2d::CCSet* mutableCopy();
    void removeAllObjects();
    void removeObject(cocos2d::CCObject*);

    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = m1 0x6b9268, imac 0x7b30f0;

    gd::set<cocos2d::CCObject*> m_pSet;
}

[[link(win, android)]]
class cocos2d::CCShaderCache : cocos2d::CCObject {
    static void purgeSharedShaderCache();
    static cocos2d::CCShaderCache* sharedShaderCache();

    bool init();

    // CCShaderCache(cocos2d::CCShaderCache const&);
    CCShaderCache();
    virtual ~CCShaderCache();

    void addProgram(cocos2d::CCGLProgram*, char const*);
    void loadDefaultShader(cocos2d::CCGLProgram*, int);
    void loadDefaultShaders();
    cocos2d::CCGLProgram* programForKey(char const*);
    void reloadDefaultShaders() = ios inline {
        CCGLProgram* program;
        program = this->programForKey(kCCShader_PositionTextureColor);
        program->reset();
        this->loadDefaultShader(program, 0);
        program = this->programForKey(kCCShader_PositionTextureColorAlphaTest);
        program->reset();
        this->loadDefaultShader(program, 1);
        program = this->programForKey(kCCShader_PositionColor);
        program->reset();
        this->loadDefaultShader(program, 2);
        program = this->programForKey(kCCShader_PositionTexture);
        program->reset();
        this->loadDefaultShader(program, 3);
        program = this->programForKey(kCCShader_PositionTexture_uColor);
        program->reset();
        this->loadDefaultShader(program, 4);
        program = this->programForKey(kCCShader_PositionTextureA8Color);
        program->reset();
        this->loadDefaultShader(program, 5);
        program = this->programForKey(kCCShader_Position_uColor);
        program->reset();
        this->loadDefaultShader(program, 6);
        program = this->programForKey(kCCShader_PositionLengthTexureColor);
        program->reset();
        this->loadDefaultShader(program, 7);
    }
}

[[link(win, android)]]
class cocos2d::CCParticleSystem : cocos2d::CCNode, cocos2d::CCTextureProtocol {
    static cocos2d::CCParticleSystem* create(char const*);
    static cocos2d::CCParticleSystem* createWithTotalParticles(unsigned int);

    void initParticle(cocos2d::sCCParticle*);
    bool initWithDictionary(cocos2d::CCDictionary*, char const*, bool);
    bool initWithDictionary(cocos2d::CCDictionary* p0, bool p1) = ios inline {
        return cocos2d::CCParticleSystem::initWithDictionary(p0, "", p1);
    }
    bool initWithFile(char const*, bool);

    // unsigned int getAtlasIndex() const;
    // bool getDontCleanupOnFinish() const;
    // bool getDynamicRotationIsDir() const;
    // bool getEndRGBVarSync() const;
    // float getFadeInTime() const;
    // float getFadeInTimeVar() const;
    // float getFadeOutTime() const;
    // float getFadeOutTimeVar() const;
    // float getFrictionPos() const;
    // float getFrictionPosVar() const;
    // float getFrictionRot() const;
    // float getFrictionRotVar() const;
    // float getFrictionSize() const;
    // float getFrictionSizeVar() const;
    // bool getOrderSensitive() const;
    // float getRespawn() const;
    // float getRespawnVar() const;
    // bool getStartRGBVarSync() const;
    // bool getStartRadiusEqualToEnd() const;
    // bool getStartSizeEqualToEnd() const;
    // bool getStartSpinEqualToEnd() const;
    float getTimeElapsed();
    // bool getUseUniformColorMode() const;
    // bool getUsingSchedule() const;
    // bool getWasRemoved() const;

    // void setAtlasIndex(unsigned int);
    // void setDontCleanupOnFinish(bool);
    // void setDynamicRotationIsDir(bool);
    // void setEndAlpha(float);
    // void setEndRGBVarSync(bool);
    // void setFadeInTime(float);
    // void setFadeInTimeVar(float);
    // void setFadeOutTime(float);
    // void setFadeOutTimeVar(float);
    // void setFrictionPos(float);
    // void setFrictionPosVar(float);
    // void setFrictionRot(float);
    // void setFrictionRotVar(float);
    // void setFrictionSize(float);
    // void setFrictionSizeVar(float);
    // void setOrderSensitive(bool);
    // void setRespawn(float);
    // void setRespawnVar(float);
    // void setStartAlpha(float);
    // void setStartRGBVarSync(bool);
    // void setStartRadiusEqualToEnd(bool);
    // void setStartSizeEqualToEnd(bool);
    // void setStartSpinEqualToEnd(bool);
    // void setUsingSchedule(bool);
    // void setWasRemoved(bool);

    // CCParticleSystem(cocos2d::CCParticleSystem const&);
    CCParticleSystem();
    virtual ~CCParticleSystem();
    bool addParticle();
    void calculateWorldSpace();
    bool isFull();
    void loadDefaults();
    void loadScaledDefaults(float);
    void resetSystem();
    void resumeSystem();
    void saveDefaults();
    void stopSystem();
    // void toggleUniformColorMode(bool);
    void updateVisible();

    virtual void update(float) = m1 0x6ce3ec, imac 0x7c99b0;
    virtual bool init() = m1 0x6cb974, imac 0x7c6920;
    virtual void setScaleX(float) = m1 0x6cf574, imac 0x7cb180;
    virtual void setScaleY(float) = m1 0x6cf580, imac 0x7cb1a0;
    virtual void setScale(float) = m1 0x6cf55c, imac 0x7cb140;
    virtual void setVisible(bool) = m1 0x6cf180, imac 0x7caa50;
    virtual void setRotation(float) = m1 0x6cf568, imac 0x7cb160;
    virtual cocos2d::CCParticleBatchNode* getBatchNode() = m1 0x6cf4c4, imac 0x7cb060;
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = m1 0x6cf4cc, imac 0x7cb070;
    virtual unsigned int getParticleCount() = m1 0x6cf28c, imac 0x7cac60;
    virtual float getDuration() = m1 0x6cf294, imac 0x7cac70;
    virtual void setDuration(float) = m1 0x6cf29c, imac 0x7cac80;
    virtual cocos2d::CCPoint const& getSourcePosition() = m1 0x6cf2a4, imac 0x7cac90;
    virtual void setSourcePosition(cocos2d::CCPoint const&) = m1 0x6cf2ac, imac 0x7caca0;
    virtual cocos2d::CCPoint const& getPosVar() = m1 0x6cf2b4, imac 0x7cacc0;
    virtual void setPosVar(cocos2d::CCPoint const&) = m1 0x6cf2bc, imac 0x7cacd0;
    virtual float getLife() = m1 0x6cf2c4, imac 0x7cacf0;
    virtual void setLife(float) = m1 0x6cf2cc, imac 0x7cad00;
    virtual float getLifeVar() = m1 0x6cf2d4, imac 0x7cad10;
    virtual void setLifeVar(float) = m1 0x6cf2dc, imac 0x7cad20;
    virtual float getAngle() = m1 0x6cf2e4, imac 0x7cad30;
    virtual void setAngle(float) = m1 0x6cf2ec, imac 0x7cad40;
    virtual float getAngleVar() = m1 0x6cf2f4, imac 0x7cad50;
    virtual void setAngleVar(float) = m1 0x6cf2fc, imac 0x7cad60;
    virtual void updateEmissionRate() = m1 0x6cd340, imac 0x7c8510;
    virtual cocos2d::CCPoint const& getGravity() = m1 0x6cf1fc, imac 0x7cab40;
    virtual void setGravity(cocos2d::CCPoint const&) = m1 0x6cf1f4, imac 0x7cab20;
    virtual float getSpeed() = m1 0x6cf20c, imac 0x7cab60;
    virtual void setSpeed(float) = m1 0x6cf204, imac 0x7cab50;
    virtual float getSpeedVar() = m1 0x6cf21c, imac 0x7cab80;
    virtual void setSpeedVar(float) = m1 0x6cf214, imac 0x7cab70;
    virtual float getTangentialAccel() = m1 0x6cf1ac, imac 0x7caa90;
    virtual void setTangentialAccel(float) = m1 0x6cf1a4, imac 0x7caa80;
    virtual float getTangentialAccelVar() = m1 0x6cf1bc, imac 0x7caab0;
    virtual void setTangentialAccelVar(float) = m1 0x6cf1b4, imac 0x7caaa0;
    virtual float getRadialAccel() = m1 0x6cf1cc, imac 0x7caad0;
    virtual void setRadialAccel(float) = m1 0x6cf1c4, imac 0x7caac0;
    virtual float getRadialAccelVar() = m1 0x6cf1dc, imac 0x7caaf0;
    virtual void setRadialAccelVar(float) = m1 0x6cf1d4, imac 0x7caae0;
    virtual bool getRotationIsDir() = m1 0x6cf1ec, imac 0x7cab10;
    virtual void setRotationIsDir(bool) = m1 0x6cf1e4, imac 0x7cab00;
    virtual float getStartRadius() = m1 0x6cf22c, imac 0x7caba0;
    virtual void setStartRadius(float) = m1 0x6cf224, imac 0x7cab90;
    virtual float getStartRadiusVar() = m1 0x6cf23c, imac 0x7cabc0;
    virtual void setStartRadiusVar(float) = m1 0x6cf234, imac 0x7cabb0;
    virtual float getEndRadius() = m1 0x6cf24c, imac 0x7cabe0;
    virtual void setEndRadius(float) = m1 0x6cf244, imac 0x7cabd0;
    virtual float getEndRadiusVar() = m1 0x6cf25c, imac 0x7cac00;
    virtual void setEndRadiusVar(float) = m1 0x6cf254, imac 0x7cabf0;
    virtual float getRotatePerSecond() = m1 0x6cf26c, imac 0x7cac20;
    virtual void setRotatePerSecond(float) = m1 0x6cf264, imac 0x7cac10;
    virtual float getRotatePerSecondVar() = m1 0x6cf27c, imac 0x7cac40;
    virtual void setRotatePerSecondVar(float) = m1 0x6cf274, imac 0x7cac30;
    virtual bool isActive() = m1 0x6cf284, imac 0x7cac50;
    virtual bool isBlendAdditive() = m1 0x6cf15c, imac 0x7caa30;
    virtual void setBlendAdditive(bool) = m1 0x6cf0e4, imac 0x7ca9d0;
    virtual float getStartSize() = m1 0x6cf304, imac 0x7cad70;
    virtual void setStartSize(float) = m1 0x6cf30c, imac 0x7cad80;
    virtual float getStartSizeVar() = m1 0x6cf314, imac 0x7cad90;
    virtual void setStartSizeVar(float) = m1 0x6cf31c, imac 0x7cada0;
    virtual float getEndSize() = m1 0x6cf324, imac 0x7cadb0;
    virtual void setEndSize(float) = m1 0x6cf32c, imac 0x7cadc0;
    virtual float getEndSizeVar() = m1 0x6cf334, imac 0x7cadd0;
    virtual void setEndSizeVar(float) = m1 0x6cf33c, imac 0x7cade0;
    virtual cocos2d::ccColor4F const& getStartColor() = m1 0x6cf344, imac 0x7cadf0;
    virtual void setStartColor(cocos2d::ccColor4F const&) = m1 0x6cf34c, imac 0x7cae00;
    virtual cocos2d::ccColor4F const& getStartColorVar() = m1 0x6cf35c, imac 0x7cae10;
    virtual void setStartColorVar(cocos2d::ccColor4F const&) = m1 0x6cf364, imac 0x7cae20;
    virtual cocos2d::ccColor4F const& getEndColor() = m1 0x6cf374, imac 0x7cae30;
    virtual void setEndColor(cocos2d::ccColor4F const&) = m1 0x6cf37c, imac 0x7cae40;
    virtual cocos2d::ccColor4F const& getEndColorVar() = m1 0x6cf38c, imac 0x7cae50;
    virtual void setEndColorVar(cocos2d::ccColor4F const&) = m1 0x6cf394, imac 0x7cae60;
    virtual float getStartSpin() = m1 0x6cf3a4, imac 0x7cae70;
    virtual void setStartSpin(float) = m1 0x6cf3ac, imac 0x7cae80;
    virtual float getStartSpinVar() = m1 0x6cf3b4, imac 0x7cae90;
    virtual void setStartSpinVar(float) = m1 0x6cf3bc, imac 0x7caea0;
    virtual float getEndSpin() = m1 0x6cf3c4, imac 0x7caeb0;
    virtual void setEndSpin(float) = m1 0x6cf3cc, imac 0x7caec0;
    virtual float getEndSpinVar() = m1 0x6cf3d4, imac 0x7caed0;
    virtual void setEndSpinVar(float) = m1 0x6cf3dc, imac 0x7caee0;
    virtual float getEmissionRate() = m1 0x6cf3e4, imac 0x7caef0;
    virtual void setEmissionRate(float) = m1 0x6cf3ec, imac 0x7caf00;
    virtual unsigned int getTotalParticles() = m1 0x6cf3f4, imac 0x7caf10;
    virtual void setTotalParticles(unsigned int) = m1 0x6cf3fc, imac 0x7caf20;
    virtual bool getOpacityModifyRGB() = m1 0x6cf484, imac 0x7cafe0;
    virtual void setOpacityModifyRGB(bool) = m1 0x6cf48c, imac 0x7caff0;
    virtual cocos2d::tCCPositionType getPositionType() = m1 0x6cf494, imac 0x7cb000;
    virtual void setPositionType(cocos2d::tCCPositionType) = m1 0x6cf49c, imac 0x7cb010;
    virtual bool isAutoRemoveOnFinish() = m1 0x6cf4a4, imac 0x7cb020;
    virtual void setAutoRemoveOnFinish(bool) = m1 0x6cf4ac, imac 0x7cb030;
    virtual int getEmitterMode() = m1 0x6cf4b4, imac 0x7cb040;
    virtual void setEmitterMode(int) = m1 0x6cf4bc, imac 0x7cb050;
    virtual bool initWithTotalParticles(unsigned int, bool) = m1 0x6cd210, imac 0x7c83a0;
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&) = m1 0x6cef0c, imac 0x7ca720;
    virtual void postStep() = m1 0x6cef90, imac 0x7ca860;
    virtual void updateWithNoTime() = m1 0x6ceefc, imac 0x7ca700;
    virtual void updateBlendFunc() = m1 0x6cf064, imac 0x7ca940;

    virtual void setBlendFunc(cocos2d::ccBlendFunc) = m1 0x6cf414, imac 0x7caf50;
    virtual cocos2d::ccBlendFunc getBlendFunc() = m1 0x6cf404, imac 0x7caf30;
    virtual cocos2d::CCTexture2D* getTexture() = m1 0x6cf0d4, imac 0x7ca9b0;
    virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x6cef94, imac 0x7ca870;

    gd::string m_sPlistFile;
    float m_fElapsed;
    cocos2d::CCPoint modeA_gravity;
    float modeA_speed;
    float modeA_speedVar;
    float modeA_tangentialAccel;
    float modeA_tangentialAccelVar;
    float modeA_radialAccel;
    float modeA_radialAccelVar;
    bool modeA_rotationIsDir;
    float modeB_startRadius;
    float modeB_startRadiusVar;
    float modeB_endRadius;
    float modeB_endRadiusVar;
    float modeB_rotatePerSecond;
    float modeB_rotatePerSecondVar;
    cocos2d::sCCParticle* m_pParticles;
    float m_fEmitCounter;
    uint32_t m_uParticleIdx;
    cocos2d::CCParticleBatchNode* m_pBatchNode;
    uint32_t m_uAtlasIndex;
    bool m_bTransformSystemDirty;
    uint32_t m_uAllocatedParticles;
    bool m_bIsActive;
    uint32_t m_uParticleCount;
    float m_fDuration;
    cocos2d::CCPoint m_tSourcePosition;
    cocos2d::CCPoint m_tPosVar;
    float m_fLife;
    float m_fLifeVar;
    float m_fAngle;
    float m_fAngleVar;
    float m_fFadeInTime;
    float m_fFadeInTimeVar;
    float m_fFadeOutTime;
    float m_fFadeOutTimeVar;
    float m_fFrictionPos;
    float m_fFrictionPosVar;
    float m_fFrictionSize;
    float m_fFrictionSizeVar;
    float m_fFrictionRot;
    float m_fFrictionRotVar;
    float m_fRespawn;
    float m_fRespawnVar;
    bool m_bStartSpinEqualToEnd;
    bool m_bStartSizeEqualToEnd;
    bool m_bStartRadiusEqualToEnd;
    bool m_bDynamicRotationIsDir;
    bool m_bOrderSensitive;
    bool m_bStartRGBVarSync;
    bool m_bEndRGBVarSync;
    bool m_bWasRemoved;
    bool m_bUsingSchedule;
    float m_fStartSize;
    float m_fStartSizeVar;
    float m_fEndSize;
    float m_fEndSizeVar;
    cocos2d::ccColor4F m_tStartColor;
    cocos2d::ccColor4F m_tStartColorVar;
    cocos2d::ccColor4F m_tEndColor;
    cocos2d::ccColor4F m_tEndColorVar;
    float m_fStartSpin;
    float m_fStartSpinVar;
    float m_fEndSpin;
    float m_fEndSpinVar;
    float m_fEmissionRate;
    uint32_t m_uTotalParticles;
    cocos2d::CCTexture2D* m_pTexture;
    cocos2d::ccBlendFunc m_tBlendFunc;
    bool m_bOpacityModifyRGB;
    bool m_bIsBlendAdditive;
    cocos2d::tCCPositionType m_ePositionType;
    bool m_bIsAutoRemoveOnFinish;
    bool m_bDontCleanupOnFinish;
    int m_nEmitterMode;
    bool m_bWorldPosUninitialized;
    cocos2d::CCPoint m_tWorldPos;
    cocos2d::ccColor4F m_tUniformColor;
    cocos2d::ccColor4F m_tUniformDeltaColor;
    bool m_bUseUniformColorMode;
    float m_fDefaultStartSize;
    float m_fDefaultStartSizeVar;
    float m_fDefaultEndSize2;
    float m_fDefaultEndSize;
    float m_fDefaultAngle;
    float m_fDefaultModeASpeed;
    float m_fDefaultModeASpeedVar;
    cocos2d::CCPoint m_tDefaultPosVar;
    int m_nCustomParticleIndex;
}

[[link(win, android)]]
class cocos2d::CCParticleSnow : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSnow* create() = ios inline {
        CCParticleSnow* pRet = new CCParticleSnow();
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
    static cocos2d::CCParticleSnow* createWithTotalParticles(unsigned int numberOfParticles) = ios inline {
        CCParticleSnow* pRet = new CCParticleSnow();
        if (pRet && pRet->initWithTotalParticles(numberOfParticles))
        {
            pRet->autorelease();
        }
        else
        {
            CC_SAFE_DELETE(pRet);
        }
        return pRet;
    }

    // CCParticleSnow(cocos2d::CCParticleSnow const&);
    // CCParticleSnow();

    // virtual bool init() = m1 0x3ec694, imac 0x486a30;
    virtual bool initWithTotalParticles(unsigned int numberOfParticles) = ios inline, m1 0x3ec120, imac 0x486470 {
        if( CCParticleSystemQuad::initWithTotalParticles(numberOfParticles, false) ) 
        {
            // duration
            m_fDuration = kCCParticleDurationInfinity;

            // set gravity mode.
            setEmitterMode(kCCParticleModeGravity);

            // Gravity Mode: gravity
            setGravity(ccp(0,-1));

            // Gravity Mode: speed of particles
            setSpeed(5);
            setSpeedVar(1);

            // Gravity Mode: radial
            setRadialAccel(0);
            setRadialAccelVar(1);

            // Gravity mode: tangential
            setTangentialAccel(0);
            setTangentialAccelVar(1);

            // emitter position
            CCSize winSize = CCDirector::sharedDirector()->getWinSize();
            this->setPosition(ccp(winSize.width/2, winSize.height + 10));
            setPosVar(ccp(winSize.width/2, 0));

            // angle
            m_fAngle = -90;
            m_fAngleVar = 5;

            // life of particles
            m_fLife = 45;
            m_fLifeVar = 15;

            // size, in pixels
            m_fStartSize = 10.0f;
            m_fStartSizeVar = 5.0f;
            m_fEndSize = kCCParticleStartSizeEqualToEndSize;

            // emits per second
            m_fEmissionRate = 10;

            // color of particles
            m_tStartColor.r = 1.0f;
            m_tStartColor.g = 1.0f;
            m_tStartColor.b = 1.0f;
            m_tStartColor.a = 1.0f;
            m_tStartColorVar.r = 0.0f;
            m_tStartColorVar.g = 0.0f;
            m_tStartColorVar.b = 0.0f;
            m_tStartColorVar.a = 0.0f;
            m_tEndColor.r = 1.0f;
            m_tEndColor.g = 1.0f;
            m_tEndColor.b = 1.0f;
            m_tEndColor.a = 0.0f;
            m_tEndColorVar.r = 0.0f;
            m_tEndColorVar.g = 0.0f;
            m_tEndColorVar.b = 0.0f;
            m_tEndColorVar.a = 0.0f;

            // CCTexture2D* pTexture = getDefaultTexture();

            // getDefaultTexture : https://github.com/cocos2d/cocos2d-x/blob/v2/cocos2dx/particle_nodes/CCParticleExamples.cpp
            CCTexture2D* pTexture = NULL;
            CCImage* pImage = NULL;
            do 
            {
                bool bRet = false;
                const char* key = "__firePngData";
                pTexture = CCTextureCache::sharedTextureCache()->textureForKey(key);
                CC_BREAK_IF(pTexture != NULL);

                pImage = new CCImage();
                CC_BREAK_IF(NULL == pImage);
                bRet = pImage->initWithImageData((void*)__firePngData, sizeof(__firePngData), CCImage::kFmtPng);
                CC_BREAK_IF(!bRet);

                pTexture = CCTextureCache::sharedTextureCache()->addUIImage(pImage, key);
            } while (0);

            CC_SAFE_RELEASE(pImage);

            if (pTexture != NULL)
            {
                setTexture(pTexture);
            }

            // additive
            this->setBlendAdditive(false);
            return true;
        }
        return false;
    }
}

[[link(win, android)]]
class cocos2d::CCParticleFire : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFire* create() = ios inline {
        auto ret = new CCParticleFire();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCParticleFire* createWithTotalParticles(unsigned int) = ios inline {
        auto ret = new CCParticleFire();
        if (ret->initWithTotalParticles(p0)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    // CCParticleFire(cocos2d::CCParticleFire const&);
    // CCParticleFire();

    // virtual bool init() = m1 0x3ec634, imac 0x486970;
    virtual bool initWithTotalParticles(unsigned int) = ios inline, m1 0x3ea64c, imac 0x484ad0 {
        if (!CCParticleSystemQuad::initWithTotalParticles(p0, false)) return false;
        m_fDuration = kCCParticleDurationInfinity;
        m_nEmitterMode = kCCParticleModeGravity;
        modeA.gravity.x = 0.f;
        modeA.gravity.y = 0.f;
        modeA.radialAccel = 0.f;
        modeA.radialAccelVar = 0.f;
        modeA.speed = 60.f;
        modeA.speedVar = 20.f;
        m_fAngle = 90.f;
        m_fAngleVar = 10.f;
        auto winSize = CCDirector::sharedDirector()->getWinSize();
        this->setPosition(winSize / 2.f);
        m_tPosVar.x = 40.f;
        m_tPosVar.y = 20.f;
        m_fLife = 3.f;
        m_fLifeVar = .25f;
        m_fStartSize = 54.f;
        m_fStartSizeVar = 10.f;
        m_fEndSize = kCCParticleStartSizeEqualToEndSize;
        m_fEmissionRate = m_uTotalParticles / m_fLife;
        m_tStartColor.r = .76f;
        m_tStartColor.g = .25f;
        m_tStartColor.b = .12f;
        m_tStartColor.a = 1.f;
        m_tStartColorVar.r = 0.f;
        m_tStartColorVar.g = 0.f;
        m_tStartColorVar.b = 0.f;
        m_tStartColorVar.a = 0.f;
        m_tEndColor.r = 0.f;
        m_tEndColor.g = 0.f;
        m_tEndColor.b = 0.f;
        m_tEndColor.a = 1.f;
        m_tEndColorVar.r = 0.f;
        m_tEndColorVar.g = 0.f;
        m_tEndColorVar.b = 0.f;
        m_tEndColorVar.a = 0.f;
        auto textureCache = CCTextureCache::sharedTextureCache();
        auto texture = textureCache->textureForKey("__firePngData");
        if (!texture) {
            auto image = new CCImage();
            if (image->initWithImageData((void*)__firePngData, sizeof(__firePngData), CCImage::kFmtPng)) {
                texture = textureCache->addUIImage(image, "__firePngData");
            }
        }
        if (texture) this->setTexture(texture);
        this->setBlendAdditive(false);
        return true;
    }
}

[[link(win, android)]]
class cocos2d::CCParticleRain : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleRain* create() = ios inline {
        auto ret = new CCParticleRain();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCParticleRain* createWithTotalParticles(unsigned int) = ios inline {
        auto ret = new CCParticleRain();
        if (ret->initWithTotalParticles(p0)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    // CCParticleRain(cocos2d::CCParticleRain const&);
    // CCParticleRain();

    // virtual bool init() = m1 0x3ec6a4, imac 0x486a50;
    virtual bool initWithTotalParticles(unsigned int) = ios inline, m1 0x3ec428, imac 0x486760 {
        if (!CCParticleSystemQuad::initWithTotalParticles(p0, false)) return false;
        m_fDuration = kCCParticleDurationInfinity;
        this->setEmitterMode(kCCParticleModeGravity);
        this->setGravity({ 10.f, -10.f });
        this->setRadialAccel(0.f);
        this->setRadialAccelVar(1.f);
        this->setTangentialAccel(0.f);
        this->setTangentialAccelVar(1.f);
        this->setSpeed(130.f);
        this->setSpeedVar(30.f);
        m_fAngle = -90.f;
        m_fAngleVar = 5.f;
        auto winSize = CCDirector::sharedDirector()->getWinSize();
        this->setPosition(winSize / 2.f);
        this->setPosVar({ winSize.width / 2.f, 0.f });
        m_fLife = 4.5f;
        m_fLifeVar = 0.f;
        m_fStartSize = 4.f;
        m_fStartSizeVar = 2.f;
        m_fEndSize = kCCParticleStartSizeEqualToEndSize;
        m_fEmissionRate = 20.f;
        m_tStartColor.r = .7f;
        m_tStartColor.g = .8f;
        m_tStartColor.b = 1.f;
        m_tStartColor.a = 1.f;
        m_tStartColorVar.r = 0.f;
        m_tStartColorVar.g = 0.f;
        m_tStartColorVar.b = 0.f;
        m_tStartColorVar.a = 0.f;
        m_tEndColor.r = .7f;
        m_tEndColor.g = .8f;
        m_tEndColor.b = 1.f;
        m_tEndColor.a = .5f;
        m_tEndColorVar.r = 0.f;
        m_tEndColorVar.g = 0.f;
        m_tEndColorVar.b = 0.f;
        m_tEndColorVar.a = 0.f;
        auto textureCache = CCTextureCache::sharedTextureCache();
        auto texture = textureCache->textureForKey("__firePngData");
        if (!texture) {
            auto image = new CCImage();
            if (image->initWithImageData((void*)__firePngData, sizeof(__firePngData), CCImage::kFmtPng)) {
                texture = textureCache->addUIImage(image, "__firePngData");
            }
        }
        if (texture) this->setTexture(texture);
        this->setBlendAdditive(false);
        return true;
    }
}

[[link(win, android)]]
class cocos2d::CCParticleExplosion : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleExplosion* create() = ios inline {
        auto ret = new CCParticleExplosion();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCParticleExplosion* createWithTotalParticles(unsigned int) = ios inline {
        auto ret = new CCParticleExplosion();
        if (ret->initWithTotalParticles(p0)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    // CCParticleExplosion(cocos2d::CCParticleExplosion const&);
    // CCParticleExplosion();

    // virtual bool init() = m1 0x3ec694, imac 0x486a30;
    virtual bool initWithTotalParticles(unsigned int) = ios inline, m1 0x3ebb24, imac 0x485ed0 {
        if (!CCParticleSystemQuad::initWithTotalParticles(p0, false)) return false;
        m_fDuration = .1f;
        this->setEmitterMode(kCCParticleModeGravity);
        this->setGravity({ 0.f, 0.f });
        this->setSpeed(70.f);
        this->setSpeedVar(40.f);
        this->setRadialAccel(0.f);
        this->setRadialAccelVar(0.f);
        this->setTangentialAccel(0.f);
        this->setTangentialAccelVar(0.f);
        m_fAngle = 90.f;
        m_fAngleVar = 360.f;
        this->setPosition(CCDirector::sharedDirector()->getWinSize() / 2.f);
        this->setPosVar({ 0.f, 0.f });
        m_fLife = 5.f;
        m_fLifeVar = 2.f;
        m_fStartSize = 15.f;
        m_fStartSizeVar = 10.f;
        m_fEndSize = kCCParticleStartSizeEqualToEndSize;
        m_fEmissionRate = m_uTotalParticles / m_fDuration;
        m_tStartColor = { .7f, .1f, .2f, 1.f };
        m_tStartColorVar = { .5f, .5f, .5f, 0.f };
        m_tEndColor = { .5f, .5f, .5f, 0.f };
        m_tEndColorVar = { .5f, .5f, .5f, 0.f };
        auto textureCache = CCTextureCache::sharedTextureCache();
        auto texture = textureCache->textureForKey("__firePngData");
        if (!texture) {
            auto image = new CCImage();
            if (image->initWithImageData((void*)__firePngData, sizeof(__firePngData), CCImage::kFmtPng)) {
                texture = textureCache->addUIImage(image, "__firePngData");
            }
        }
        if (texture) this->setTexture(texture);
        this->setBlendAdditive(false);
        return true;
    }
}

[[link(win, android)]]
class cocos2d::CCParticleSystemQuad : cocos2d::CCParticleSystem {
    static cocos2d::CCParticleSystemQuad* create(char const*, bool);
    static cocos2d::CCParticleSystemQuad* create() = ios inline {
        CCParticleSystemQuad *pParticleSystemQuad = new CCParticleSystemQuad();
        if (pParticleSystemQuad && pParticleSystemQuad->init())
        {
            pParticleSystemQuad->autorelease();
            return pParticleSystemQuad;
        }
        CC_SAFE_DELETE(pParticleSystemQuad);
        return nullptr;
    }
    static cocos2d::CCParticleSystemQuad* createWithTotalParticles(unsigned int, bool);
    
    void initIndices();
    void initTexCoordsWithRect(cocos2d::CCRect const&);

    // unsigned char getOpacity();

    void setDisplayFrame(cocos2d::CCSpriteFrame*);
    // void setOpacity(unsigned char);
    void setTextureWithRect(cocos2d::CCTexture2D*, cocos2d::CCRect const&);

    // CCParticleSystemQuad(cocos2d::CCParticleSystemQuad const&);
    CCParticleSystemQuad();
    virtual ~CCParticleSystemQuad();
    bool allocMemory();
    void listenBackToForeground(cocos2d::CCObject*);
    [[missing(mac, ios)]]
    void setupVBO();
    [[missing(win, android)]]
    void setupVBOandVAO();
    void updateTexCoords();

    virtual void draw() = m1 0x52a850, imac 0x602f40;
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*) = m1 0x52ab28, imac 0x603510;
    virtual void setTotalParticles(unsigned int) = m1 0x52a918, imac 0x603010;
    virtual bool initWithTotalParticles(unsigned int, bool) = m1 0x529a30, imac 0x601af0;
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&) = m1 0x52a548, imac 0x602bd0;
    virtual void postStep() = m1 0x52a804, imac 0x602ef0;

    virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x52a364, imac 0x602a20;

    cocos2d::ccV3F_C4B_T2F_Quad* m_pQuads;
    uint16_t* m_pIndices;
    mac, ios {
        uint32_t m_uVAOname;
    }
    std::array<uint32_t, 2> m_pBuffersVBO;
    cocos2d::CCRect m_tTextureRect;
    cocos2d::ccColor4B m_tQuadColor;
    uint16_t m_uParticleIdx;
    uint8_t m_uOpacity;
}

[[link(win, android)]]
class cocos2d::CCProgressTimer : cocos2d::CCNodeRGBA {
    static cocos2d::CCProgressTimer* create(cocos2d::CCSprite*);

    bool initWithSprite(cocos2d::CCSprite*);

    // cocos2d::CCPoint getBarChangeRate() const;
    // float getPercentage();
    // cocos2d::CCSprite* getSprite();
    // cocos2d::CCProgressTimerType getType();

    void setAnchorPoint(cocos2d::CCPoint);
    // void setBarChangeRate(cocos2d::CCPoint);
    void setPercentage(float);
    // void setReverseDirection(bool);
    void setReverseProgress(bool);
    void setSprite(cocos2d::CCSprite*);
    void setType(cocos2d::CCProgressTimerType type) = ios inline {
        if (type != m_eType) {
            if (m_pVertexData) {
                free(m_pVertexData);
                m_pVertexData = nullptr;
                m_nVertexDataCount = 0;
            }
            m_eType = type;
        }
    }

    // CCProgressTimer(cocos2d::CCProgressTimer const&);
    CCProgressTimer();
    virtual ~CCProgressTimer();

    cocos2d::CCPoint boundaryTexCoord(char);
    // bool isReverseDirection();
    cocos2d::ccTex2F textureCoordFromAlphaPoint(cocos2d::CCPoint);
    void updateBar();
    void updateColor();
    void updateProgress();
    void updateRadial();
    cocos2d::ccVertex2F vertexFromAlphaPoint(cocos2d::CCPoint);

    virtual cocos2d::ccColor3B const& getColor() const = m1 0x52b4d0, imac 0x604270;
    virtual unsigned char getOpacity() const = m1 0x52b5c0, imac 0x604370;
    virtual void draw() = m1 0x52cb9c, imac 0x606150;
    virtual cocos2d::CCPoint getMidpoint() = m1 0x52cab4, imac 0x606030;
    virtual void setMidpoint(cocos2d::CCPoint) = m1 0x52cac0, imac 0x606050;

    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x52b3a8, imac 0x604140;
    virtual void setOpacity(unsigned char) = m1 0x52b4e0, imac 0x604290;
}

[[link(win, android)]]
class cocos2d::CCFadeIn : cocos2d::CCActionInterval {
    static cocos2d::CCFadeIn* create(float);

    // CCFadeIn(cocos2d::CCFadeIn const&);
    // CCFadeIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x33cb3c, imac 0x3ba860;
    virtual void update(float) = m1 0x33cc0c, imac 0x3ba930;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x33cc70, imac 0x3ba990;
}

[[link(win, android)]]
class cocos2d::CCFadeOut : cocos2d::CCActionInterval {
    static cocos2d::CCFadeOut* create(float);

    // CCFadeOut(cocos2d::CCFadeOut const&);
    // CCFadeOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x33cd88, imac 0x3baae0;
    virtual void update(float) = m1 0x33ce58, imac 0x3babb0;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x33cec4, imac 0x3bac20;
}

[[link(win, android)]]
class cocos2d::CCFadeTo : cocos2d::CCActionInterval {
    static cocos2d::CCFadeTo* create(float, unsigned char);

    bool initWithDuration(float, unsigned char) = ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_toOpacity = p1;
        return true;
    }

    // CCFadeTo(cocos2d::CCFadeTo const&);
    // CCFadeTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x33d00c, imac 0x3badc0;
    virtual void update(float) = m1 0x33d15c, imac 0x3baf20;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33d0f8, imac 0x3baec0;
}

[[link(win, android)]]
class cocos2d::CCFileUtils : cocos2d::TypeInfo {
    protected CCFileUtils();
    // CCFileUtils(cocos2d::CCFileUtils const&);
    virtual ~CCFileUtils();
    virtual void addSearchPath(char const*) = m1 0x3ae780, imac 0x43ccc0;
    virtual void addSearchResolutionsOrder(char const*) = m1 0x3ae260, imac 0x43c720;
    virtual gd::string addSuffix(gd::string, gd::string) = m1 0x3ac804, imac 0x43ac40;
    virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(gd::string const&) = m1 0x3ac104, imac 0x43a570;
    virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(gd::string const&) = m1 0x3ac0f4, imac 0x43a550;
    virtual gd::string fullPathForFilename(char const*, bool) = m1 0x3acde0, imac 0x43b2d0;
    virtual char const* fullPathFromRelativeFile(char const*, char const*) = m1 0x3addb4, imac 0x43c280;
    virtual unsigned char* getFileData(char const*, char const*, unsigned long*) = m1 0x3ac3dc, imac 0x43a820;
    virtual unsigned char* getFileDataFromZip(char const*, char const*, unsigned long*) = m1 0x3ac548, imac 0x43a960;
    virtual gd::string getFullPathForDirectoryAndFilename(gd::string const&, gd::string const&) = m1 0x3af0d8, imac 0x43d5a0;
    virtual gd::string getNewFilename(char const*) = m1 0x3ac668, imac 0x43aa90;
    virtual gd::string getPathForFilename(gd::string const&, gd::string const&, gd::string const&) = m1 0x3aca08, imac 0x43ae80;
    virtual gd::vector<gd::string> const& getSearchPaths() = m1 0x3ae360, imac 0x43c810;
    virtual gd::vector<gd::string> const& getSearchResolutionsOrder() = m1 0x3ae358, imac 0x43c800;
    virtual gd::string getWritablePath2() = m1 0x3af308, imac 0x43d7d0;
    virtual bool init() = m1 0x3ac2cc, imac 0x43a720;
    virtual bool isAbsolutePath(gd::string const&) = m1 0x3af240, imac 0x43d710;
    virtual bool isPopupNotify() = m1 0x3af26c, imac 0x43d740;
    virtual void loadFilenameLookupDictionaryFromFile(char const*) = m1 0x3aeef4, imac 0x43d430;
    virtual void purgeCachedEntries() = m1 0x3ac3ac, imac 0x43a7f0;
    static void purgeFileUtils();
    void removeAllPaths();
    virtual void removeFullPath(char const*) = m1 0x3adb44, imac 0x43c120;
    virtual void removeSearchPath(char const*) = m1 0x3aea98, imac 0x43cfd0;
    virtual void setFilenameLookupDictionary(cocos2d::CCDictionary*) = m1 0x3aee8c, imac 0x43d3c0;
    virtual void setPopupNotify(bool) = m1 0x3af260, imac 0x43d730;
    virtual void setSearchPaths(gd::vector<gd::string> const&) = m1 0x3ae368, imac 0x43c820;
    virtual void setSearchResolutionsOrder(gd::vector<gd::string> const&) = m1 0x3ae020, imac 0x43c4e0;
    static cocos2d::CCFileUtils* sharedFileUtils();
    virtual bool shouldUseHD() = m1 0x3ac7e0, imac 0x43ac10;
    virtual bool writeToFile(cocos2d::CCDictionary*, gd::string const&) = m1 0x3ac0fc, imac 0x43a560;
}

[[link(win, android)]]
class cocos2d::CCGLProgram : cocos2d::CCObject {
    bool initWithVertexShaderByteArray(char const*, char const*);
    bool initWithVertexShaderFilename(char const*, char const*) = ios inline {
        return this->initWithVertexShaderByteArray(
            CCString::createWithContentsOfFile(CCFileUtils::sharedFileUtils()->fullPathForFilename(p0, false).c_str())->getCString(),
            CCString::createWithContentsOfFile(CCFileUtils::sharedFileUtils()->fullPathForFilename(p1, false).c_str())->getCString()
        );
    }

    // unsigned int const getProgram();
    int getUniformLocationForName(char const*) = ios inline {
        return glGetUniformLocation(m_uProgram, p0);
    }

    void setUniformLocationWith1f(int, float);
    void setUniformLocationWith1i(int, int);
    void setUniformLocationWith2f(int, float, float);
    void setUniformLocationWith2fv(int, float*, unsigned int) = ios inline {
        if (this->updateUniformLocation(p0, p1, p2 * 8)) glUniform2fv(p0, p2, p1);
    }
    void setUniformLocationWith2i(int, int, int) = ios inline {
        GLint ints[2] = { p1, p2 };
        if (this->updateUniformLocation(p0, ints, 8)) glUniform2i(p0, p1, p2);
    }
    void setUniformLocationWith2iv(int, int*, unsigned int) = ios inline {
        if (this->updateUniformLocation(p0, p1, p2 * 8)) glUniform2iv(p0, p2, p1);
    }
    void setUniformLocationWith3f(int, float, float, float);
    void setUniformLocationWith3fv(int, float*, unsigned int) = ios inline {
        if (this->updateUniformLocation(p0, p1, p2 * 12)) glUniform3fv(p0, p2, p1);
    }
    void setUniformLocationWith3i(int, int, int, int) = ios inline {
        GLint ints[3] = { p1, p2, p3 };
        if (this->updateUniformLocation(p0, ints, 12)) glUniform3i(p0, p1, p2, p3);
    }
    void setUniformLocationWith3iv(int, int*, unsigned int) = ios inline {
        if (this->updateUniformLocation(p0, p1, p2 * 12)) glUniform3iv(p0, p2, p1);
    }
    void setUniformLocationWith4f(int, float, float, float, float);
    void setUniformLocationWith4fv(int, float*, unsigned int);
    void setUniformLocationWith4i(int, int, int, int, int) = ios inline {
        GLint ints[4] = { p1, p2, p3, p4 };
        if (this->updateUniformLocation(p0, ints, 16)) glUniform4i(p0, p1, p2, p3, p4);
    }
    void setUniformLocationWith4iv(int, int*, unsigned int) = ios inline {
        if (this->updateUniformLocation(p0, p1, p2 * 16)) glUniform4iv(p0, p2, p1);
    }
    void setUniformLocationWithMatrix3fv(int, float*, unsigned int);
    void setUniformLocationWithMatrix4fv(int, float*, unsigned int);
    void setUniformsForBuiltins();

    // CCGLProgram(cocos2d::CCGLProgram const&);
    virtual ~CCGLProgram();
    CCGLProgram();
    void addAttribute(char const*, unsigned int);
    bool compileShader(unsigned int*, unsigned int, char const*);
    char const* description() = ios inline {
        return CCString::createWithFormat("<CCGLProgram = " CC_FORMAT_PRINTF_SIZE_T " | Program = %i, VertexShader = %i, FragmentShader = %i>",
            (size_t)this, m_uProgram, m_uVertShader, m_uFragShader)->getCString();
    }
    char const* fragmentShaderLog() = ios inline {
        return this->logForOpenGLObject(m_uFragShader, (GLInfoFunction)&glGetShaderiv, (GLLogFunction)&glGetShaderInfoLog);
    }
    bool link();
    char const* logForOpenGLObject(unsigned int, GLInfoFunction, GLLogFunction) = ios inline {
        GLint logLength = 0;
        p1(p0, GL_INFO_LOG_LENGTH, &logLength);
        if (logLength < 1) return nullptr;
        auto logBytes = (char*)malloc(logLength);
        GLint charsWritten = 0;
        p2(p0, logLength, &charsWritten, logBytes);
        auto log = CCString::create(logBytes);
        free(logBytes);
        return log->getCString();
    }
    char const* programLog() = ios inline {
        return this->logForOpenGLObject(m_uProgram, (GLInfoFunction)&glGetProgramiv, (GLLogFunction)&glGetProgramInfoLog);
    }
    void reset();
    bool updateUniformLocation(int, void*, unsigned int);
    void updateUniforms();
    void use();
    char const* vertexShaderLog() = ios inline {
        return this->logForOpenGLObject(m_uVertShader, (GLInfoFunction)&glGetShaderiv, (GLLogFunction)&glGetShaderInfoLog);
    }
}

[[link(win, android)]]
class cocos2d::CCNode : cocos2d::CCObject {
    static cocos2d::CCNode* create();
    static void resetGlobalOrderOfArrival();

    // CCNode(cocos2d::CCNode const&);
    CCNode();
    virtual ~CCNode();

    cocos2d::CCAction* getActionByTag(int);
    cocos2d::CCComponent* getComponent(char const*) const = ios inline {
        return m_pComponentContainer->get(p0);
    }
    // int getScriptHandler();
    // cocos2d::CCAffineTransform getTransformTemp();
    // bool getUseChildIndex();

    void setAdditionalTransform(cocos2d::CCAffineTransform const& additionalTransform) = ios inline {
        m_sAdditionalTransform = additionalTransform;
        m_bTransformDirty = true;
        m_bAdditionalTransformDirty = true;
    } 
    void setUseChildIndex(bool);

    cocos2d::CCRect boundingBox();
    void childrenAlloc() = ios inline {
        m_pChildren = CCArray::createWithCapacity(4);
        m_pChildren->retain();
    }
    cocos2d::CCPoint convertToNodeSpace(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertToNodeSpaceAR(cocos2d::CCPoint const& worldPoint) = ios inline {
        return convertToNodeSpace(worldPoint) - m_obAnchorPointInPoints;
    }
    cocos2d::CCPoint convertToWindowSpace(cocos2d::CCPoint const&) = ios inline {
        return CCDirector::sharedDirector()->convertToUI(this->convertToWorldSpace(p0));
    }
    cocos2d::CCPoint convertToWorldSpace(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertToWorldSpaceAR(cocos2d::CCPoint const& point) = ios inline {
        return this->convertToWorldSpace(point + m_obAnchorPointInPoints);
    }
    cocos2d::CCPoint convertTouchToNodeSpace(cocos2d::CCTouch*);
    cocos2d::CCPoint convertTouchToNodeSpaceAR(cocos2d::CCTouch*) = ios inline {
        return this->convertToNodeSpaceAR(p0->getLocation());
    }
    char const* description() = ios inline {
        return CCString::createWithFormat("<CCNode | Tag = %d>", m_nTag)->getCString();
    }
    void detachChild(cocos2d::CCNode*, bool);
    void insertChild(cocos2d::CCNode*, int);
    unsigned int numberOfRunningActions() = ios inline {
        return m_pActionManager->numberOfRunningActionsInTarget(this);
    }
    void pauseSchedulerAndActions();
    void qsortAllChildrenWithIndex();
    void resumeSchedulerAndActions();
    cocos2d::CCAction* runAction(cocos2d::CCAction*);
    void schedule(cocos2d::SEL_SCHEDULE);
    void schedule(cocos2d::SEL_SCHEDULE, float);
    void schedule(cocos2d::SEL_SCHEDULE selector, float interval, unsigned int repeat, float delay) = ios inline {
        m_pScheduler->scheduleSelector(selector, this, interval, repeat, delay, !m_bRunning);
    }
    void scheduleOnce(cocos2d::SEL_SCHEDULE selector, float delay) = ios inline {
        this->schedule(selector, 0.0f, 0, delay);
    }
    void scheduleUpdate();
    void scheduleUpdateWithPriority(int);
    void scheduleUpdateWithPriorityLua(int, int) = ios inline {
        this->unscheduleUpdate();
        m_nUpdateScriptHandler = p0;
        m_pScheduler->scheduleUpdateForTarget(this, p1, !m_bRunning);
    }
    void sortAllChildrenNoIndex();
    void sortAllChildrenWithIndex() = ios inline {
        this->qsortAllChildrenWithIndex();
    }
    void stopAction(cocos2d::CCAction* action) = ios inline {
        m_pActionManager->removeAction(action);
    }
    void stopActionByTag(int);
    void stopAllActions();
    void transform();
    void transformAncestors();
    void unschedule(cocos2d::SEL_SCHEDULE);
    void unscheduleAllSelectors();
    void unscheduleUpdate();
    void updateChildIndexes();

    virtual void update(float) = m1 0x2165e8, imac 0x273e30;
    virtual bool init() = m1 0x214af8, imac 0x2720f0;
    virtual void setZOrder(int) = m1 0x214b48, imac 0x272180;
    virtual void _setZOrder(int) = m1 0x214b40, imac 0x272170;
    virtual int getZOrder() = m1 0x214b38, imac 0x272160;
    virtual void setVertexZ(float) = m1 0x214ba0, imac 0x2721d0;
    virtual float getVertexZ() = m1 0x214b98, imac 0x2721c0;
    virtual void setScaleX(float) = m1 0x214c50, imac 0x2722f0;
    virtual float getScaleX() = m1 0x214c48, imac 0x2722e0;
    virtual void setScaleY(float) = m1 0x214c6c, imac 0x272320;
    virtual float getScaleY() = m1 0x214c64, imac 0x272310;
    virtual void setScale(float) = m1 0x214c20, imac 0x2722a0;
    virtual float getScale() = m1 0x214c18, imac 0x272290;
    virtual void setScale(float, float) = m1 0x214c34, imac 0x2722c0;
    virtual void setPosition(cocos2d::CCPoint const&) = m1 0x214c88, imac 0x272350;
    virtual cocos2d::CCPoint const& getPosition() = m1 0x214c80, imac 0x272340;
    virtual void setPosition(float, float) = m1 0x214cb4, imac 0x272390;
    virtual void getPosition(float*, float*) = m1 0x214ca0, imac 0x272370;
    virtual void setPositionX(float) = m1 0x214d04, imac 0x2723f0;
    virtual float getPositionX() = m1 0x214cf4, imac 0x2723d0;
    virtual void setPositionY(float) = m1 0x214d48, imac 0x272430;
    virtual float getPositionY() = m1 0x214cfc, imac 0x2723e0;
    virtual void setSkewX(float) = m1 0x214b08, imac 0x272110;
    virtual float getSkewX() = m1 0x214b00, imac 0x272100;
    virtual void setSkewY(float) = m1 0x214b24, imac 0x272140;
    virtual float getSkewY() = m1 0x214b1c, imac 0x272130;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = m1 0x214eb8, imac 0x2725d0;
    virtual cocos2d::CCPoint const& getAnchorPoint() = m1 0x214eb0, imac 0x2725c0;
    virtual cocos2d::CCPoint const& getAnchorPointInPoints() = m1 0x214ea8, imac 0x2725b0;
    virtual void setContentSize(cocos2d::CCSize const&) = m1 0x214f6c, imac 0x272690;
    virtual cocos2d::CCSize const& getContentSize() const = m1 0x214f2c, imac 0x272650;
    virtual cocos2d::CCSize getScaledContentSize() = m1 0x214f34, imac 0x272660;
    virtual void setVisible(bool) = m1 0x214ea0, imac 0x2725a0;
    virtual bool isVisible() = m1 0x214e98, imac 0x272590;
    virtual void setRotation(float) = m1 0x214bb0, imac 0x2721f0;
    virtual float getRotation() = m1 0x214ba8, imac 0x2721e0;
    virtual void setRotationX(float) = m1 0x214be8, imac 0x272240;
    virtual float getRotationX() = m1 0x214be0, imac 0x272230;
    virtual void setRotationY(float) = m1 0x214c04, imac 0x272270;
    virtual float getRotationY() = m1 0x214bfc, imac 0x272260;
    virtual void setOrderOfArrival(unsigned int) = m1 0x215038, imac 0x2727b0;
    virtual unsigned int getOrderOfArrival() = m1 0x215030, imac 0x2727a0;
    virtual void setGLServerState(cocos2d::ccGLServerState) = m1 0x215058, imac 0x2727f0;
    virtual cocos2d::ccGLServerState getGLServerState() = m1 0x215050, imac 0x2727e0;
    virtual void ignoreAnchorPointForPosition(bool) = m1 0x215000, imac 0x272750;
    virtual bool isIgnoreAnchorPointForPosition() = m1 0x214ff8, imac 0x272740;
    virtual void addChild(cocos2d::CCNode*) = m1 0x2154a8, imac 0x272c60;
    virtual void addChild(cocos2d::CCNode*, int) = m1 0x215498, imac 0x272c40;
    virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x215340, imac 0x272af0;
    virtual cocos2d::CCNode* getChildByTag(int) = m1 0x2152bc, imac 0x272a70;
    virtual cocos2d::CCArray* getChildren() = m1 0x214d90, imac 0x272470;
    virtual unsigned int getChildrenCount() const = m1 0x214de4, imac 0x2724c0;
    virtual void setParent(cocos2d::CCNode*) = m1 0x214ff0, imac 0x272730;
    virtual cocos2d::CCNode* getParent() = m1 0x214fe8, imac 0x272720;
    virtual void removeFromParent() = m1 0x2154bc, imac 0x272c80;
    virtual void removeFromParentAndCleanup(bool) = m1 0x2154cc, imac 0x272ca0;
    virtual void removeMeAndCleanup() = m1 0x2154ec, imac 0x272cd0;
    virtual void removeChild(cocos2d::CCNode*) = m1 0x2154fc, imac 0x272cf0;
    virtual void removeChild(cocos2d::CCNode*, bool) = m1 0x21550c, imac 0x272d10;
    virtual void removeChildByTag(int) = m1 0x215688, imac 0x272e60;
    virtual void removeChildByTag(int, bool) = m1 0x215698, imac 0x272e80;
    virtual void removeAllChildren() = m1 0x2156e8, imac 0x272ec0;
    virtual void removeAllChildrenWithCleanup(bool) = m1 0x2156f8, imac 0x272ee0;
    virtual void reorderChild(cocos2d::CCNode*, int) = m1 0x21582c, imac 0x272ff0;
    virtual void sortAllChildren() = m1 0x215948, imac 0x273140;
    virtual cocos2d::CCGridBase* getGrid() = m1 0x214e54, imac 0x272540;
    virtual void setGrid(cocos2d::CCGridBase*) = m1 0x214e5c, imac 0x272550;
    virtual void* getUserData() = m1 0x215020, imac 0x272780;
    virtual void setUserData(void*) = m1 0x215028, imac 0x272790;
    virtual cocos2d::CCObject* getUserObject() = m1 0x215048, imac 0x2727d0;
    virtual void setUserObject(cocos2d::CCObject*) = m1 0x215060, imac 0x272800;
    virtual cocos2d::CCGLProgram* getShaderProgram() = m1 0x215040, imac 0x2727c0;
    virtual void setShaderProgram(cocos2d::CCGLProgram*) = m1 0x21509c, imac 0x272840;
    virtual cocos2d::CCCamera* getCamera() = m1 0x214df4, imac 0x2724e0;
    virtual bool isRunning() = m1 0x214fe0, imac 0x272710;
    virtual void registerScriptHandler(int) = m1 0x2162bc, imac 0x273a70;
    virtual void unregisterScriptHandler() = m1 0x2162ec, imac 0x273aa0;
    virtual void onEnter() = m1 0x215f84, imac 0x273750;
    virtual void onEnterTransitionDidFinish() = m1 0x2160b0, imac 0x273870;
    virtual void onExit() = m1 0x2161c4, imac 0x273970;
    virtual void onExitTransitionDidStart() = m1 0x216130, imac 0x2738e0;
    virtual void cleanup() = m1 0x2151b8, imac 0x272950;
    virtual void draw() = m1 0x215d58, imac 0x273510;
    virtual void visit() = m1 0x215d5c, imac 0x273520;
    virtual void setActionManager(cocos2d::CCActionManager*) = m1 0x21632c, imac 0x273ae0;
    virtual cocos2d::CCActionManager* getActionManager() = m1 0x21637c, imac 0x273b30;
    virtual void setScheduler(cocos2d::CCScheduler*) = m1 0x2163e8, imac 0x273bf0;
    virtual cocos2d::CCScheduler* getScheduler() = m1 0x216438, imac 0x273c40;
    virtual void updateTransform() = m1 0x2171f8, imac 0x274a50;
    virtual cocos2d::CCAffineTransform const nodeToParentTransform() = m1 0x216668, imac 0x273ea0;
    virtual cocos2d::CCAffineTransform const nodeToParentTransformFast() = m1 0x21692c, imac 0x2741b0;
    virtual cocos2d::CCAffineTransform const parentToNodeTransform() = m1 0x216da8, imac 0x2745e0;
    virtual cocos2d::CCAffineTransform nodeToWorldTransform() = m1 0x216e20, imac 0x274660;
    virtual cocos2d::CCAffineTransform nodeToWorldTransformFast() = m1 0x216eac, imac 0x2746f0;
    virtual cocos2d::CCAffineTransform worldToNodeTransform() = m1 0x216f38, imac 0x274780;
    virtual bool addComponent(cocos2d::CCComponent*) = m1 0x217260, imac 0x274ac0;
    virtual bool removeComponent(char const*) = m1 0x217270, imac 0x274ae0;
    virtual bool removeComponent(cocos2d::CCComponent*) = m1 0x217280, imac 0x274b00;
    virtual void removeAllComponents() = m1 0x217290, imac 0x274b20;
    virtual void updateTweenAction(float, char const*) = m1 0x2171f0, imac 0x274a30;
    virtual void updateTweenActionInt(float, int) = m1 0x2171f4, imac 0x274a40;

    float m_fRotationX;
    float m_fRotationY;
    float m_fScaleX;
    float m_fScaleY;
    float m_fVertexZ;
    cocos2d::CCPoint m_obPosition;
    float m_fSkewX;
    float m_fSkewY;
    cocos2d::CCPoint m_obAnchorPointInPoints;
    cocos2d::CCPoint m_obAnchorPoint;
    cocos2d::CCSize m_obContentSize;
    cocos2d::CCAffineTransform m_sAdditionalTransform;
    cocos2d::CCAffineTransform m_sTransform;
    cocos2d::CCAffineTransform m_sInverse;
    cocos2d::CCCamera* m_pCamera;
    cocos2d::CCGridBase* m_pGrid;
    cocos2d::CCArray* m_pChildren;
    cocos2d::CCNode* m_pParent;
    void* m_pUserData;
    cocos2d::CCObject* m_pUserObject;
    cocos2d::CCGLProgram* m_pShaderProgram;
    cocos2d::ccGLServerState m_eGLServerState;
    cocos2d::CCScheduler* m_pScheduler;
    cocos2d::CCActionManager* m_pActionManager;
    bool m_bRunning;
    bool m_bTransformDirty;
    bool m_bPositionDirty;
    float m_fTransformX;
    float m_fTransformY;
    bool m_bInverseDirty;
    bool m_bAdditionalTransformDirty;
    bool m_bVisible;
    bool m_bIgnoreAnchorPointForPosition;
    bool m_bReorderChildDirty;
    int m_nScriptHandler;
    int m_nUpdateScriptHandler;
    cocos2d::ccScriptType m_eScriptType;
    cocos2d::CCComponentContainer* m_pComponentContainer;
    bool m_bUseChildIndex;
    bool m_bDontPauseSchedulerAndActions;
}

[[link(win, android)]]
class cocos2d::CCScheduler : cocos2d::CCObject {
    // float getTimeScale();

    // void setTimeScale(float);

    // CCScheduler(cocos2d::CCScheduler const&);
    CCScheduler();
    virtual ~CCScheduler();

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

    virtual void update(float) = m1 0x3b4f9c, imac 0x443850;
}

[[link(win, android)]]
class cocos2d::CCLayer : cocos2d::CCNode, cocos2d::CCTouchDelegate, cocos2d::CCAccelerometerDelegate, cocos2d::CCKeypadDelegate, cocos2d::CCKeyboardDelegate, cocos2d::CCMouseDelegate {
    static cocos2d::CCLayer* create();

    // CCLayer(cocos2d::CCLayer const&);
    CCLayer();
    virtual ~CCLayer();

    // cocos2d::CCScriptHandlerEntry* getScriptAccelerateHandlerEntry();
    // cocos2d::CCScriptHandlerEntry* getScriptKeypadHandlerEntry();
    // cocos2d::CCTouchScriptHandlerEntry* getScriptTouchHandlerEntry();

    int excuteScriptTouchHandler(int, cocos2d::CCSet*);
    int excuteScriptTouchHandler(int, cocos2d::CCTouch*);
    void registerScriptAccelerateHandler(int);
    void registerScriptKeypadHandler(int);
    void unregisterScriptAccelerateHandler();
    void unregisterScriptKeypadHandler();

    virtual bool init() = m1 0x411f50, imac 0x4b0080;
    virtual void onEnter() = m1 0x4127fc, imac 0x4b0970;
    virtual void onEnterTransitionDidFinish() = m1 0x412a20, imac 0x4b0b70;
    virtual void onExit() = m1 0x41290c, imac 0x4b0a70;
    virtual void registerWithTouchDispatcher() = m1 0x4120bc, imac 0x4b0210;
    virtual void registerScriptTouchHandler(int, bool, int, bool) = m1 0x41213c, imac 0x4b0290;
    virtual void unregisterScriptTouchHandler() = m1 0x41219c, imac 0x4b02f0;
    virtual bool isTouchEnabled() = m1 0x412258, imac 0x4b03a0;
    virtual void setTouchEnabled(bool) = m1 0x412260, imac 0x4b03b0;
    virtual void setTouchMode(cocos2d::ccTouchesMode) = m1 0x4122c0, imac 0x4b0410;
    virtual int getTouchMode() = m1 0x412380, imac 0x4b04c0;
    virtual void setTouchPriority(int) = m1 0x41231c, imac 0x4b0460;
    virtual int getTouchPriority() = m1 0x412378, imac 0x4b04b0;
    virtual bool isAccelerometerEnabled() = m1 0x412388, imac 0x4b04d0;
    virtual void setAccelerometerEnabled(bool) = m1 0x412390, imac 0x4b04e0;
    virtual void setAccelerometerInterval(double) = m1 0x4123cc, imac 0x4b0520;
    virtual bool isKeypadEnabled() = m1 0x4124c8, imac 0x4b0620;
    virtual void setKeypadEnabled(bool) = m1 0x4124d0, imac 0x4b0630;
    virtual bool isKeyboardEnabled() = m1 0x412548, imac 0x4b06a0;
    virtual void setKeyboardEnabled(bool) = m1 0x412550, imac 0x4b06b0;
    virtual bool isMouseEnabled() = m1 0x4125bc, imac 0x4b0710;
    virtual void setMouseEnabled(bool) = m1 0x4125c4, imac 0x4b0720;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x412a5c, imac 0x4b0bb0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x412b0c, imac 0x4b0c30;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x412b9c, imac 0x4b0cb0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x412c2c, imac 0x4b0d30;
    virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x412cbc, imac 0x4b0db0;
    virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x412d4c, imac 0x4b0e30;
    virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x412ddc, imac 0x4b0eb0;
    virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x412e6c, imac 0x4b0f30;
    virtual void setPreviousPriority(int) = m1 0x600c, imac 0x6b00;
    virtual int getPreviousPriority() = m1 0x6014, imac 0x6b10;

    virtual void didAccelerate(cocos2d::CCAcceleration*) = m1 0x412404, imac 0x4b0550;

    virtual void keyBackClicked() = m1 0x41266c, imac 0x4b07d0;
    virtual void keyMenuClicked() = m1 0x41270c, imac 0x4b0870;

    virtual void keyDown(cocos2d::enumKeyCodes, double) = m1 0x41278c, imac 0x4b08f0;

    bool m_bTouchEnabled;
    bool m_bAccelerometerEnabled;
    bool m_bKeypadEnabled;
    bool m_bKeyboardEnabled;
    bool m_bMouseEnabled;
    cocos2d::CCTouchScriptHandlerEntry* m_pScriptTouchHandlerEntry;
    cocos2d::CCScriptHandlerEntry* m_pScriptKeypadHandlerEntry;
    cocos2d::CCScriptHandlerEntry* m_pScriptAccelerateHandlerEntry;
    int m_nTouchPriority;
    cocos2d::ccTouchesMode m_eTouchMode;
    int m_uPreviousPriority;
}

[[link(win, android)]]
class cocos2d::CCLayerGradient : cocos2d::CCLayerColor {
    static cocos2d::CCLayerGradient* create(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&);
    static cocos2d::CCLayerGradient* create(cocos2d::ccColor4B const& a1, cocos2d::ccColor4B const& a2, cocos2d::CCPoint const& a3) = ios inline {
    	auto ret = create(a1, a2);
    	ret->setVector(a3);
    	return ret;
    }
    static cocos2d::CCLayerGradient* create() = ios inline {
        auto ret = new CCLayerGradient();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    // bool getShouldPremultiply() const;

    // void setShouldPremultiply(bool);
    void setValues(cocos2d::ccColor3B const&, unsigned char, cocos2d::ccColor3B const&, unsigned char, cocos2d::CCPoint const&);

    // CCLayerGradient(cocos2d::CCLayerGradient const&);
    // CCLayerGradient();

    virtual bool init() = m1 0x414dcc, imac 0x4b3600;
    [[since("4.10.1")]]
    virtual void visit() = m1 0x41524c, imac 0x4b3af0;

    virtual void updateColor() = m1 0x414efc, imac 0x4b3740;
    virtual bool initWithColor(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&) = m1 0x414e04, imac 0x4b3630;
    virtual bool initWithColor(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&, cocos2d::CCPoint const&) = m1 0x414e64, imac 0x4b3690;
    virtual cocos2d::ccColor3B const& getStartColor() = m1 0x41511c, imac 0x4b3930;
    virtual void setStartColor(cocos2d::ccColor3B const&) = m1 0x415124, imac 0x4b3940;
    virtual cocos2d::ccColor3B const& getEndColor() = m1 0x415150, imac 0x4b3990;
    virtual void setEndColor(cocos2d::ccColor3B const&) = m1 0x415130, imac 0x4b3960;
    virtual unsigned char getStartOpacity() = m1 0x415168, imac 0x4b39c0;
    virtual void setStartOpacity(unsigned char) = m1 0x415158, imac 0x4b39a0;
    virtual unsigned char getEndOpacity() = m1 0x415180, imac 0x4b39f0;
    virtual void setEndOpacity(unsigned char) = m1 0x415170, imac 0x4b39d0;
    virtual cocos2d::CCPoint const& getVector() = m1 0x4151b8, imac 0x4b3a30;
    virtual void setVector(cocos2d::CCPoint const&) = m1 0x415188, imac 0x4b3a00;
    virtual void setCompressedInterpolation(bool) = m1 0x41523c, imac 0x4b3ad0;
    virtual bool isCompressedInterpolation() = m1 0x415234, imac 0x4b3ac0;

    cocos2d::ccColor3B m_startColor;
    cocos2d::ccColor3B m_endColor;
    uint8_t m_startOpacity;
    uint8_t m_endOpacity;
    cocos2d::CCPoint m_AlongVector;
    bool m_bCompressedInterpolation;
    bool m_bShouldPremultiply;
}

[[link(win, android)]]
class cocos2d::CCObject : cocos2d::CCCopying {
    static cocos2d::CCObject* createWithCoder(DS_Dictionary*);

    // CCObject(cocos2d::CCObject const&);
    CCObject();
    virtual ~CCObject();

    // cocos2d::CCObjectType getObjType() const;

    // void setObjType(cocos2d::CCObjectType);

    cocos2d::CCObject* autorelease();
    cocos2d::CCObject* copy();
    bool isSingleReference() const = ios inline {
        return m_uReference == 1;
    }
    void release();
    void retain();
    unsigned int retainCount() const;

    virtual int getTag() const = m1 0x3efc78, imac 0x48a600;
    virtual bool isEqual(cocos2d::CCObject const*) = m1 0x3efc54, imac 0x48a5d0;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = m1 0x3efc60, imac 0x48a5e0;
    virtual void encodeWithCoder(DS_Dictionary*) = m1 0x3efc88, imac 0x48a620;
    virtual bool canEncode() = m1 0x3efc94, imac 0x48a640;
    virtual void setTag(int) = m1 0x3efc80, imac 0x48a610;

    uint32_t m_uID;
    int m_nLuaID;
    int m_nTag;
    uint32_t m_uReference;
    uint32_t m_uAutoReleaseCount;
    cocos2d::CCObjectType m_eObjType;
    int m_uIndexInArray;
    int m_nChildIndex;
    int m_unknown2;
    int m_nZOrder;
    int m_uOrderOfArrival;
    int m_unknown5;
}

[[link(win, android)]]
class cocos2d::CCActionCamera : cocos2d::CCActionInterval {
    // CCActionCamera(cocos2d::CCActionCamera const&);
    // CCActionCamera();

    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x2f1b48, imac 0x367370;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x2f1bb4, imac 0x3673e0;
}

[[link(win, android)]]
class cocos2d::CCOrbitCamera : cocos2d::CCActionCamera {
    static cocos2d::CCOrbitCamera* create(float, float, float, float, float, float, float);

    bool initWithDuration(float, float, float, float, float, float, float);
    // CCOrbitCamera(cocos2d::CCOrbitCamera const&);
    // CCOrbitCamera();

    void sphericalRadius(float*, float*, float*);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x2f1d30, imac 0x3675e0;
    virtual void update(float) = m1 0x2f20d4, imac 0x367a40;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x2f1e50, imac 0x367730;
}

[[link(win, android)]]
class cocos2d::CCLayerColor : cocos2d::CCLayerRGBA, cocos2d::CCBlendProtocol {
    static cocos2d::CCLayerColor* create(cocos2d::ccColor4B const&);
    static cocos2d::CCLayerColor* create(cocos2d::ccColor4B const&, float, float);
    static cocos2d::CCLayerColor* create() = ios inline {
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
    CCLayerColor();
    virtual ~CCLayerColor();

    void setVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);

    void addToVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);
    void changeHeight(float);
    void changeWidth(float);
    void changeWidthAndHeight(float, float);

    virtual bool init() = m1 0x4141f8, imac 0x4b2950;
    virtual void setContentSize(cocos2d::CCSize const&) = m1 0x4143c8, imac 0x4b2b40;
    virtual void draw() = m1 0x414528, imac 0x4b2c80;
    virtual bool initWithColor(cocos2d::ccColor4B const&, float, float) = m1 0x414244, imac 0x4b29a0;
    virtual bool initWithColor(cocos2d::ccColor4B const&) = m1 0x414330, imac 0x4b2a90;
    virtual void updateColor() = m1 0x4144ac, imac 0x4b2c30;

    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x4145f4, imac 0x4b2d50;
    virtual void setOpacity(unsigned char) = m1 0x4147a8, imac 0x4b2ed0;

    virtual void setBlendFunc(cocos2d::ccBlendFunc) = m1 0x413da8, imac 0x4b23b0;
    virtual cocos2d::ccBlendFunc getBlendFunc() = m1 0x413d98, imac 0x4b2390;

    std::array<cocos2d::ccVertex2F, 4> m_pSquareVertices;
    std::array<cocos2d::ccColor4F, 4> m_pSquareColors;
    cocos2d::ccBlendFunc m_tBlendFunc;
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA : cocos2d::CCLayer, cocos2d::CCRGBAProtocol {
    // static cocos2d::CCLayerRGBA* create();

    // CCLayerRGBA(cocos2d::CCLayerRGBA const&);
    CCLayerRGBA();
    virtual ~CCLayerRGBA();

    virtual bool init() = m1 0x4132dc, imac 0x4b1590;

    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x413514, imac 0x4b17d0;
    virtual cocos2d::ccColor3B const& getColor() = m1 0x4134f4, imac 0x4b1790;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = m1 0x413504, imac 0x4b17b0;
    virtual unsigned char getDisplayedOpacity() = m1 0x413378, imac 0x4b1630;
    virtual unsigned char getOpacity() = m1 0x413368, imac 0x4b1610;
    virtual void setOpacity(unsigned char) = m1 0x413388, imac 0x4b1650;
    virtual bool isCascadeColorEnabled() = m1 0x413970, imac 0x4b1d30;
    virtual void setCascadeColorEnabled(bool) = m1 0x413980, imac 0x4b1d50;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = m1 0x413840, imac 0x4b1ad0;
    virtual bool isCascadeOpacityEnabled() = m1 0x413950, imac 0x4b1cf0;
    virtual void setCascadeOpacityEnabled(bool) = m1 0x413960, imac 0x4b1d10;
    virtual void updateDisplayedOpacity(unsigned char) = m1 0x4136a8, imac 0x4b1950;

    uint8_t _displayedOpacity;
    uint8_t _realOpacity;
    cocos2d::ccColor3B _displayedColor;
    cocos2d::ccColor3B _realColor;
    bool _cascadeOpacityEnabled;
    bool _cascadeColorEnabled;
}

[[link(win, android)]]
class cocos2d::CCMouseDispatcher : cocos2d::CCObject {
    // CCMouseDispatcher(cocos2d::CCMouseDispatcher const&);
    CCMouseDispatcher();
    virtual ~CCMouseDispatcher();

    void addDelegate(cocos2d::CCMouseDelegate*);
    bool dispatchScrollMSG(float, float);
    void forceAddDelegate(cocos2d::CCMouseDelegate*) = ios inline {
        if (auto handler = CCMouseHandler::handlerWithDelegate(p0)) m_pMouseHandlers->addObject(handler);
    }
    void forceRemoveDelegate(cocos2d::CCMouseDelegate*);
    void removeDelegate(cocos2d::CCMouseDelegate*);

    cocos2d::CCArray* m_pMouseHandlers;
    bool m_bLocked;
    bool m_bToAdd;
    bool m_bToRemove;
    cocos2d::ccCArray* m_pHandlersToAdd;
    cocos2d::ccCArray* m_pHandlersToRemove;
}

[[link(win, android)]]
class cocos2d::CCTargetedTouchHandler : cocos2d::CCTouchHandler {
    static cocos2d::CCTargetedTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int, bool);
    virtual ~CCTargetedTouchHandler();

    bool initWithDelegate(cocos2d::CCTouchDelegate*, int, bool);

    cocos2d::CCSet* getClaimedTouches();

    void setSwallowsTouches(bool);

    // CCTargetedTouchHandler(cocos2d::CCTargetedTouchHandler const&);
    // CCTargetedTouchHandler();
    bool isSwallowsTouches();

    bool m_bSwallowsTouches;
    cocos2d::CCSet* m_pClaimedTouches;
}

[[link(win, android)]]
class cocos2d::CCTexture2D : cocos2d::CCObject {
    static void PVRImagesHavePremultipliedAlpha(bool);
    static cocos2d::CCTexture2DPixelFormat defaultAlphaPixelFormat();
    static void setDefaultAlphaPixelFormat(cocos2d::CCTexture2DPixelFormat);

    bool initPremultipliedATextureWithImage(cocos2d::CCImage*, unsigned int, unsigned int);
    bool initWithData(void const*, cocos2d::CCTexture2DPixelFormat, unsigned int, unsigned int, cocos2d::CCSize const&);
    bool initWithETCFile(char const*);
    bool initWithImage(cocos2d::CCImage*);
    bool initWithPVRFile(char const*);
    bool initWithString(char const*, char const*, float);
    bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment);
    bool initWithString(char const*, cocos2d::ccFontDefinition*);

    cocos2d::CCSize const& getContentSizeInPixels();

    void setAliasTexParameters();
    void setAntiAliasTexParameters();
    void setTexParameters(cocos2d::ccTexParams*);

    // CCTexture2D(cocos2d::CCTexture2D const&);
    virtual ~CCTexture2D(); //
    CCTexture2D();
    unsigned int bitsPerPixelForFormat(cocos2d::CCTexture2DPixelFormat) = ios inline {
        switch (p0) {
            case kCCTexture2DPixelFormat_RGBA8888:
            case kCCTexture2DPixelFormat_RGB888:
                return 32;
            case kCCTexture2DPixelFormat_RGB565:
            case kCCTexture2DPixelFormat_RGBA4444:
            case kCCTexture2DPixelFormat_RGB5A1:
            case kCCTexture2DPixelFormat_AI88:
                return 16;
            case kCCTexture2DPixelFormat_A8:
            case kCCTexture2DPixelFormat_I8:
                return 8;
            case kCCTexture2DPixelFormat_PVRTC4:
                return 4;
            case kCCTexture2DPixelFormat_PVRTC2:
                return 2;
            default:
                return -1;
        }
    }
    unsigned int bitsPerPixelForFormat() = ios inline {
        return this->bitsPerPixelForFormat(m_ePixelFormat);
    }
    char const* description();
    void drawAtPoint(cocos2d::CCPoint const&);
    void drawInRect(cocos2d::CCRect const&);
    void generateMipmap();
    bool hasMipmaps();
    bool hasPremultipliedAlpha();
    void* keepData(void*, unsigned int);
    void releaseData(void*);
    void releaseGLTexture();
    char const* stringForFormat();

    virtual cocos2d::CCTexture2DPixelFormat getPixelFormat() = m1 0x3deabc, imac 0x477bb0;
    virtual unsigned int getPixelsWide() = m1 0x3deac4, imac 0x477bc0;
    virtual unsigned int getPixelsHigh() = m1 0x3deacc, imac 0x477bd0;
    virtual unsigned int getName() = m1 0x3dead4, imac 0x477be0;
    virtual float getMaxS() = m1 0x3deb3c, imac 0x477c70;
    virtual void setMaxS(float) = m1 0x3deb44, imac 0x477c80;
    virtual float getMaxT() = m1 0x3deb4c, imac 0x477c90;
    virtual void setMaxT(float) = m1 0x3deb54, imac 0x477ca0;
    virtual cocos2d::CCSize getContentSize() = m1 0x3deadc, imac 0x477bf0;
    virtual cocos2d::CCGLProgram* getShaderProgram() = m1 0x3deb5c, imac 0x477cb0;
    virtual void setShaderProgram(cocos2d::CCGLProgram*) = m1 0x3deb64, imac 0x477cc0;
}

[[link(win, android)]]
class cocos2d::CCTextureAtlas : cocos2d::CCObject {
	static cocos2d::CCTextureAtlas* create(char const*, unsigned int);
	static cocos2d::CCTextureAtlas* createWithTexture(cocos2d::CCTexture2D*, unsigned int);

	bool initWithFile(char const*, unsigned int);
	bool initWithTexture(cocos2d::CCTexture2D*, unsigned int);

    // void setDirty(bool);

	// CCTextureAtlas(cocos2d::CCTextureAtlas const&);
    CCTextureAtlas();
    virtual ~CCTextureAtlas();

	char const* description();
	void drawNumberOfQuads(unsigned int);
	void drawNumberOfQuads(unsigned int, unsigned int);
	void drawQuads();
	void fillWithEmptyQuadsFromIndex(unsigned int, unsigned int);
	void increaseTotalQuadsWith(unsigned int);
	void insertQuad(cocos2d::ccV3F_C4B_T2F_Quad*, unsigned int);
	void insertQuadFromIndex(unsigned int, unsigned int);
	void insertQuads(cocos2d::ccV3F_C4B_T2F_Quad*, unsigned int, unsigned int);
    // bool isDirty();
	void listenBackToForeground(cocos2d::CCObject*);
	void mapBuffers();
	void moveQuadsFromIndex(unsigned int, unsigned int);
	void moveQuadsFromIndex(unsigned int, unsigned int, unsigned int);
	void removeAllQuads();
	void removeQuadAtIndex(unsigned int);
	void removeQuadsAtIndex(unsigned int, unsigned int);
	bool resizeCapacity(unsigned int);
	void setupIndices();
    [[missing(mac, ios)]]
	void setupVBO();
    [[missing(win, android)]]
    void setupVBOandVAO();
	void updateQuad(cocos2d::ccV3F_C4B_T2F_Quad*, unsigned int);

	virtual unsigned int getTotalQuads() = m1 0x40f584, imac 0x4ac850;
	virtual unsigned int getCapacity() = m1 0x40f58c, imac 0x4ac860;
	virtual cocos2d::CCTexture2D* getTexture() = m1 0x40f594, imac 0x4ac870;
	virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x40f59c, imac 0x4ac880;
	virtual cocos2d::ccV3F_C4B_T2F_Quad* getQuads() = m1 0x40f5d8, imac 0x4ac8c0;
	virtual void setQuads(cocos2d::ccV3F_C4B_T2F_Quad*) = m1 0x40f5e8, imac 0x4ac8d0;
}

[[link(win, android)]]
class cocos2d::CCTextureCache : cocos2d::CCObject {
    static void purgeSharedTextureCache();
    static void reloadAllTextures();
    static cocos2d::CCTextureCache* sharedTextureCache();

    // CCTextureCache(cocos2d::CCTextureCache const&);
    CCTextureCache();
    virtual ~CCTextureCache();

    cocos2d::CCTexture2D* addETCImage(char const*);
    cocos2d::CCTexture2D* addImage(char const*, bool);
    void addImageAsync(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler, int, cocos2d::CCTexture2DPixelFormat);
    void addImageAsyncCallBack(float);
    cocos2d::CCTexture2D* addPVRImage(char const*);
    cocos2d::CCTexture2D* addUIImage(cocos2d::CCImage*, char const*);
    char const* description();
    void dumpCachedTextureInfo();
    void prepareAsyncLoading();
    bool reloadTexture(char const*);
    void removeAllTextures();
    void removeTexture(cocos2d::CCTexture2D*);
    void removeTextureForKey(char const*);
    void removeUnusedTextures();
    cocos2d::CCDictionary* snapshotTextures();
    cocos2d::CCTexture2D* textureForKey(char const*);
}

[[link(win, android)]]
class cocos2d::CCTouch : cocos2d::CCObject {
    cocos2d::CCPoint getLocationInView() const;
    cocos2d::CCPoint getLocation() const;
    cocos2d::CCPoint getPreviousLocation() const = ios inline {
    	return CCDirector::sharedDirector()->convertToGL(m_prevPoint);
    }
    cocos2d::CCPoint getStartLocation() const = ios inline {
    	return CCDirector::sharedDirector()->convertToGL(m_startPoint);
    }
    cocos2d::CCPoint getDelta() const = ios inline {
    	return getLocation() - getPreviousLocation();
    }

    cocos2d::CCPoint getPreviousLocationInView() const;
    cocos2d::CCPoint getStartLocationInView() const;

    int m_nId;
    bool m_startPointCaptured;
    cocos2d::CCPoint m_startPoint;
    cocos2d::CCPoint m_point;
    cocos2d::CCPoint m_prevPoint;
}

[[link(win, android)]]
class cocos2d::CCTouchDelegate {
    // CCTouchDelegate(cocos2d::CCTouchDelegate const&);
    // CCTouchDelegate();

    virtual void setPreviousPriority(int) = mac inline, ios inline {}
    virtual int getPreviousPriority() = mac inline, ios inline { return 0; }
}

[[link(win, android)]]
class cocos2d::CCTouchDispatcher : cocos2d::CCObject, cocos2d::EGLTouchDelegate {
    bool init();

    // int getTargetPrio() const;

    void setDispatchEvents(bool);
    void setPriority(int p1, cocos2d::CCTouchDelegate* p2) = ios inline {
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
    virtual ~CCTouchDispatcher();

    void addPrioTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool);
    void addStandardDelegate(cocos2d::CCTouchDelegate*, int);
    void addTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool);
    void decrementForcePrio(int);
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCArray*, cocos2d::CCTouchDelegate*);
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCTouchDelegate*);
    void forceAddHandler(cocos2d::CCTouchHandler*, cocos2d::CCArray*);
    void forceRemoveAllDelegates();
    void forceRemoveDelegate(cocos2d::CCTouchDelegate*);
    void incrementForcePrio(int);
    bool isDispatchEvents();
    bool isUsingForcePrio();
    void rearrangeHandlers(cocos2d::CCArray* handlers) = ios inline {
        std::sort(handlers->data->arr, handlers->data->arr + handlers->data->num, [](const CCObject* p1, const CCObject* p2) {
            return ((CCTouchHandler*)p1)->getPriority() < ((CCTouchHandler*)p2)->getPriority();
        });
    }
    void registerForcePrio(cocos2d::CCObject*, int);
    void removeAllDelegates();
    void removeDelegate(cocos2d::CCTouchDelegate*);
    void touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int);
    void unregisterForcePrio(cocos2d::CCObject*);

    virtual void touchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x42b364, imac 0x4cc5f0;
    virtual void touchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x42b398, imac 0x4cc630;
    virtual void touchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x42b3cc, imac 0x4cc670;
    virtual void touchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = m1 0x42b400, imac 0x4cc6b0;

    cocos2d::CCArray* m_pTargetedHandlers;
    cocos2d::CCArray* m_pStandardHandlers;
    bool m_bLocked;
    bool m_bToAdd;
    bool m_bToRemove;
    cocos2d::CCArray* m_pHandlersToAdd;
    cocos2d::ccCArray* m_pHandlersToRemove;
    bool m_bToQuit;
    bool m_bDispatchEvents;
    int m_targetPrio;
    cocos2d::CCDictionary* m_pForcePrioDict;
    int m_forcePrio;
}

[[link(win, android)]]
class cocos2d::CCTouchHandler : cocos2d::CCObject {
    static cocos2d::CCTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int);
    virtual ~CCTouchHandler();

    cocos2d::CCTouchDelegate* getDelegate();
    int getEnabledSelectors();
    int getPriority() = ios inline {
    	return m_nPriority;
    }

    void setDelegate(cocos2d::CCTouchDelegate*);
    void setEnalbedSelectors(int);
    void setPriority(int prio) = ios inline {
    	m_nPriority = prio;
    }

    // CCTouchHandler(cocos2d::CCTouchHandler const&);
    // CCTouchHandler();

    virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int) = m1 0x3e6eb8, imac 0x480d30;

    cocos2d::CCTouchDelegate* m_pDelegate;
    int m_nPriority;
    int m_nEnabledSelectors;
}

[[link(win, android)]]
class cocos2d::CCMouseHandler : cocos2d::CCObject {
    static cocos2d::CCMouseHandler* handlerWithDelegate(cocos2d::CCMouseDelegate*);

    // CCMouseHandler(cocos2d::CCMouseHandler const&);
    // CCMouseHandler();
    virtual ~CCMouseHandler();

    cocos2d::CCMouseDelegate* getDelegate();
    void setDelegate(cocos2d::CCMouseDelegate*) = ios inline {
        if (auto delegate = geode::cast::typeinfo_cast<cocos2d::CCObject*>(p0)) delegate->retain();
        if (auto delegate = geode::cast::typeinfo_cast<cocos2d::CCObject*>(m_pDelegate)) delegate->release();
        m_pDelegate = p0;
    }

    virtual bool initWithDelegate(cocos2d::CCMouseDelegate*) = m1 0x226088, imac 0x284580;

    cocos2d::CCMouseDelegate* m_pDelegate;
}

[[link(win, android)]]
class cocos2d::CCEGLView {
    protected CCEGLView();
    protected virtual ~CCEGLView() = ios inline {}

    virtual void end() = m1 0x45ae34, imac 0x503110;
    virtual void swapBuffers() = m1 0x45ae8c, imac 0x503180;
    virtual bool isOpenGLReady() = m1 0x45ae08, imac 0x5030e0;
    virtual void setIMEKeyboardState(bool) = m1 0x45aec4, imac 0x503200;
    [[missing(android, mac, ios)]]
    virtual void setFrameSize(float, float);
    [[missing(win, android)]]
    virtual bool setContentScaleFactor(float);
    [[missing(android, ios)]]
    virtual void setViewPortInPoints(float, float, float, float);
    [[missing(android, ios)]]
    virtual void setScissorInPoints(float, float, float, float);
    [[missing(win, android, ios)]]
    virtual void setMultiTouchMask(bool);

    [[missing(android, mac, ios)]]
    void toggleFullScreen(bool, bool, bool);
    [[missing(android, mac, ios)]]
    void pollEvents();
    [[missing(android, mac, ios)]]
    void setupWindow(cocos2d::CCRect);
    [[missing(android, mac, ios)]]
    bool initGlew();
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
    static cocos2d::CCEGLView* sharedOpenGLView();
}

[[link(win, android)]]
class cocos2d::CCImage : cocos2d::CCObject {
    bool initWithImageData(void*, int, cocos2d::CCImage::EImageFormat, int, int, int, int);
    bool initWithImageFile(char const*, cocos2d::CCImage::EImageFormat);
    bool initWithImageFileThreadSafe(char const*, cocos2d::CCImage::EImageFormat);
    bool initWithString(char const*, int, int, cocos2d::CCImage::ETextAlign, char const*, int);

    // int getBitsPerComponent() const;
    // unsigned char* getData();
    // int getDataLen();
    // unsigned short getHeight() const;
    // unsigned short getWidth() const;

    CCImage();
    virtual ~CCImage();

    bool _initWithJpgData(void*, int);
    bool _initWithPngData(void*, int);
    bool _initWithRawData(void*, int, int, int, int, bool);
    bool _initWithTiffData(void*, int);
    // bool _initWithWebpData(void*, int);
    bool _saveImageToJPG(char const*);
    bool _saveImageToPNG(char const*, bool);
    // bool hasAlpha();
    // bool isPremultipliedAlpha();
    bool saveToFile(char const*, bool);
}

[[link(win, android)]]
class cocos2d::CCIMEDelegate {
    protected CCIMEDelegate();
    virtual ~CCIMEDelegate();
    virtual bool attachWithIME() = m1 0x41bcd8, imac 0x4bba40;
    virtual bool detachWithIME() = m1 0x41bf10, imac 0x4bbc30;
}

[[link(win, android)]]
class cocos2d::CCIMEDispatcher {
    static cocos2d::CCIMEDispatcher* sharedDispatcher();

    private CCIMEDispatcher();
    ~CCIMEDispatcher();

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
class cocos2d::CCKeyboardDispatcher : cocos2d::CCObject {
    static cocos2d::enumKeyCodes convertKeyCode(cocos2d::enumKeyCodes);

    // bool getAltKeyPressed() const;
    // bool getBlockRepeat() const;
    // bool getCommandKeyPressed() const;
    // bool getControlKeyPressed() const;
    // bool getShiftKeyPressed() const;

    // void setBlockRepeat(bool);

    // CCKeyboardDispatcher(cocos2d::CCKeyboardDispatcher const&);
    CCKeyboardDispatcher();
    virtual ~CCKeyboardDispatcher();

    void addDelegate(cocos2d::CCKeyboardDelegate*); // 
    bool dispatchKeyboardMSG(cocos2d::enumKeyCodes, bool, bool);
    void forceAddDelegate(cocos2d::CCKeyboardDelegate*); // 
    void forceRemoveDelegate(cocos2d::CCKeyboardDelegate*); // 
    char const* keyToString(cocos2d::enumKeyCodes);
    void removeDelegate(cocos2d::CCKeyboardDelegate*); // 
    void updateModifierKeys(bool, bool, bool, bool);

    cocos2d::CCArray* m_pDelegates;
    bool m_bLocked;
    bool m_bToAdd;
    bool m_bToRemove;
    cocos2d::ccCArray* m_pHandlersToAdd;
    cocos2d::ccCArray* m_pHandlersToRemove;
    bool m_bShiftPressed;
    bool m_bControlPressed;
    bool m_bAltPressed;
    bool m_bCommandPressed;
    bool m_bBlockRepeat;
}

[[link(win, android)]]
class cocos2d::CCKeypadDispatcher : cocos2d::CCObject {
    // CCKeypadDispatcher(cocos2d::CCKeypadDispatcher const&);
    CCKeypadDispatcher();
    virtual ~CCKeypadDispatcher();

    void addDelegate(cocos2d::CCKeypadDelegate*);
    bool dispatchKeypadMSG(cocos2d::ccKeypadMSGType);
    void forceAddDelegate(cocos2d::CCKeypadDelegate*);
    void forceRemoveDelegate(cocos2d::CCKeypadDelegate*);
    void removeDelegate(cocos2d::CCKeypadDelegate*);

    cocos2d::CCArray* m_pDelegates;
    bool m_bLocked;
    bool m_bToAdd;
    bool m_bToRemove;
    cocos2d::ccCArray* m_pHandlersToAdd;
    cocos2d::ccCArray* m_pHandlersToRemove;
}

[[link(win, android)]]
class cocos2d::CCDirector : cocos2d::CCObject, cocos2d::TypeInfo {
    static cocos2d::CCDirector* sharedDirector();

    // float getActualDeltaTime() const;
    // double getAnimationInterval();
    float getContentScaleFactor(); // 
    cocos2d::CCDirectorDelegate* getDelegate() const;
    // bool getDontCallWillSwitch() const;
    void getFPSImageData(unsigned char**, unsigned int*);
    // bool getIsTransitioning() const;
    // cocos2d::TextureQuality getLoadedTextureQuality() const;
    // cocos2d::CCScene* getNextScene();
    cocos2d::CCNode* getNotificationNode();
    // cocos2d::CCEGLView* getOpenGLView();
    // cocos2d::ccDirectorProjection getProjection();
    // cocos2d::CCScene* getRunningScene();
    // cocos2d::CCScene* getSceneReference() const;
    float getScreenScaleFactor();
    float getScreenScaleFactorH();
    float getScreenScaleFactorMax();
    float getScreenScaleFactorW();
    // float getSecondsPerFrame();
    // bool getSmoothFix() const;
    // bool getSmoothFixCheck() const;
    // int getSmoothFixCounter() const;
    // unsigned int getTotalFrames();
    cocos2d::CCPoint getVisibleOrigin() = ios inline {
        return m_pobOpenGLView ? m_pobOpenGLView->getVisibleOrigin() : cocos2d::CCPoint { 0.f, 0.f };
    }
    cocos2d::CCSize getVisibleSize() = ios inline {
        return m_pobOpenGLView ? m_pobOpenGLView->getVisibleSize() : cocos2d::CCSize { 0.f, 0.f };
    }
    cocos2d::CCSize getWinSize();
    cocos2d::CCSize getWinSizeInPixels();
    float getZEye();
    //getScreenTop = idk if i should add the function
    //getScreenBottom() = 
    //getScreenLeft() = 

    // void setActualDeltaTime(float);
    void setAlphaBlending(bool);
    void setContentScaleFactor(float);
    void setDefaultValues();
    void setDelegate(cocos2d::CCDirectorDelegate*);
    void setDeltaTime(float);
    void setDepthTest(bool);
    // void setDisplayStats(bool);
    // void setDontCallWillSwitch(bool);
    void setGLDefaultValues();
    void setNextDeltaTimeZero(bool);
    void setNextScene();
    void setNotificationNode(cocos2d::CCNode*);
    void setOpenGLView(cocos2d::CCEGLView*);
    void setProjection(cocos2d::ccDirectorProjection);
    // void setSceneReference(cocos2d::CCScene*);
    // void setSmoothFix(bool);
    // void setSmoothFixCheck(bool);
    void setViewport();

    // CCDirector(cocos2d::CCDirector const&);
    CCDirector();
    virtual ~CCDirector();
    void applySmoothFix();
    void calculateDeltaTime();
    void calculateMPF();
    void checkSceneReference();
    cocos2d::CCPoint convertToGL(cocos2d::CCPoint const&);
    cocos2d::CCPoint convertToUI(cocos2d::CCPoint const&) = ios inline {
        kmMat4 projection;
        kmGLGetMatrix(KM_GL_PROJECTION, &projection);
        kmMat4 modelView;
        kmGLGetMatrix(KM_GL_MODELVIEW, &modelView);
        kmMat4 transform;
        kmMat4Multiply(&transform, &projection, &modelView);
        kmVec3 clipCoord;
        kmVec3 glCoord = { p0.x, p0.y, 0.0f };
        kmVec3TransformCoord(&clipCoord, &glCoord, &transform);
        auto glSize = m_pobOpenGLView->getDesignResolutionSize();
        return {
            glSize.width * (clipCoord.x * 0.5f + 0.5f),
            glSize.height * (-clipCoord.y * 0.5f + 0.5f)
        };
    }
    void createStatsLabel();
    void drawScene();
    void end();
    // bool isDisplayStats();
    // bool isNextDeltaTimeZero();
    // bool isPaused();
    // bool isSendCleanupToScene();
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
    bool replaceScene(cocos2d::CCScene*);
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
    void willSwitchToScene(cocos2d::CCScene*);

    virtual bool init() = m1 0x3e80d0, imac 0x482030;
    virtual cocos2d::CCScheduler* getScheduler() = m1 0x3ea154, imac 0x484520;
    virtual void setScheduler(cocos2d::CCScheduler*) = m1 0x3ea10c, imac 0x4844e0;
    virtual cocos2d::CCActionManager* getActionManager() = m1 0x3ea1a4, imac 0x484570;
    virtual void setActionManager(cocos2d::CCActionManager*) = m1 0x3ea15c, imac 0x484530;
    virtual cocos2d::CCTouchDispatcher* getTouchDispatcher() = m1 0x3ea1f4, imac 0x4845c0;
    virtual void setTouchDispatcher(cocos2d::CCTouchDispatcher*) = m1 0x3ea1ac, imac 0x484580;
    virtual cocos2d::CCKeypadDispatcher* getKeypadDispatcher() = m1 0x3ea2c0, imac 0x4846b0;
    virtual void setKeypadDispatcher(cocos2d::CCKeypadDispatcher*) = m1 0x3ea284, imac 0x484670;
    virtual cocos2d::CCKeyboardDispatcher* getKeyboardDispatcher() = m1 0x3ea238, imac 0x484610;
    virtual void setKeyboardDispatcher(cocos2d::CCKeyboardDispatcher*) = m1 0x3ea1fc, imac 0x4845d0;
    virtual cocos2d::CCMouseDispatcher* getMouseDispatcher() = m1 0x3ea27c, imac 0x484660;
    virtual void setMouseDispatcher(cocos2d::CCMouseDispatcher*) = m1 0x3ea240, imac 0x484620;
    virtual cocos2d::CCAccelerometer* getAccelerometer() = m1 0x3ea300, imac 0x4846f0;
    virtual void setAccelerometer(cocos2d::CCAccelerometer*) = m1 0x3ea2c8, imac 0x4846c0;
    virtual float getDeltaTime() = m1 0x3e8f9c, imac 0x4830f0;
}

[[link(win, android)]]
class cocos2d::CCNodeRGBA : cocos2d::CCNode, cocos2d::CCRGBAProtocol {
    static cocos2d::CCNodeRGBA* create() = ios inline {
    	auto pRet = new cocos2d::CCNodeRGBA();

    	if (pRet->init()) {
    		pRet->autorelease();
    		return pRet;
    	}

    	delete pRet;
    	return nullptr;
    }

    // CCNodeRGBA(cocos2d::CCNodeRGBA const&);
    CCNodeRGBA();
    virtual ~CCNodeRGBA();

    virtual bool init() = m1 0x21731c, imac 0x274c20;

    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x2176f8, imac 0x275020;
    virtual cocos2d::ccColor3B const& getColor() = m1 0x2176d8, imac 0x274fe0;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = m1 0x2176e8, imac 0x275000;
    virtual unsigned char getDisplayedOpacity() = m1 0x2173a4, imac 0x274cd0;
    virtual unsigned char getOpacity() = m1 0x217394, imac 0x274cb0;
    virtual void setOpacity(unsigned char) = m1 0x2173b4, imac 0x274cf0;
    virtual bool isCascadeColorEnabled() = m1 0x21799c, imac 0x2753b0;
    virtual void setCascadeColorEnabled(bool) = m1 0x2179ac, imac 0x2753d0;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = m1 0x21788c, imac 0x275190;
    virtual bool isCascadeOpacityEnabled() = m1 0x2176b8, imac 0x274fa0;
    virtual void setCascadeOpacityEnabled(bool) = m1 0x2176c8, imac 0x274fc0;
    virtual void updateDisplayedOpacity(unsigned char) = m1 0x217520, imac 0x274e20;

    uint8_t _displayedOpacity;
    uint8_t _realOpacity;
    cocos2d::ccColor3B _displayedColor;
    cocos2d::ccColor3B _realColor;
    bool _cascadeColorEnabled;
    bool _cascadeOpacityEnabled;
}

[[link(win, android)]]
class cocos2d::CCSequence : cocos2d::CCActionInterval {
    static cocos2d::CCSequence* create(cocos2d::CCArray*);
    // static cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, ...);
    static cocos2d::CCSequence* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);
    static cocos2d::CCSequence* createWithVariableList(cocos2d::CCFiniteTimeAction*, va_list);

    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);

    // CCSequence(cocos2d::CCSequence const&);
    // CCSequence();
    virtual ~CCSequence();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x3384c8, imac 0x3b5890;
    virtual void update(float) = m1 0x33875c, imac 0x3b5b50;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3386d0, imac 0x3b5ad0;
    virtual void stop() = m1 0x338718, imac 0x3b5b10;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x3388d8, imac 0x3b5cd0;
}

[[link(win, android)]]
class cocos2d::CCSprite : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    static cocos2d::CCSprite* create(char const*);
    static cocos2d::CCSprite* create(char const*, cocos2d::CCRect const&);
    static cocos2d::CCSprite* create();
    static cocos2d::CCSprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*);
    static cocos2d::CCSprite* createWithSpriteFrameName(char const*);
    static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*);
    static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);

    // unsigned int getAtlasIndex();
    // float getBlVertexMod() const;
    // float getBrVertexMod() const;
    // bool getDontDraw() const;
    // cocos2d::CCPoint const& getOffsetPosition();
    // cocos2d::ccV3F_C4B_T2F_Quad getQuad();
    // cocos2d::CCTextureAtlas* getTextureAtlas();
    // cocos2d::CCRect const& getTextureRect();
    // float getTlVertexMod() const;
    // float getTrVertexMod() const;
    // cocos2d::CCPoint const& getUnflippedOffsetPosition();
    // bool getUseVertexMod() const;

    // void setAtlasIndex(unsigned int);
    // void setBlVertexMod(float);
    // void setBrVertexMod(float);
    // void setDontDraw(bool);
    void setFlipX(bool);
    void setFlipY(bool);
    // void setTextureAtlas(cocos2d::CCTextureAtlas*);
    // void setTlVertexMod(float);
    // void setTrVertexMod(float);
    // void setUseVertexMod(bool);

    // CCSprite(cocos2d::CCSprite const&);
    CCSprite();
    virtual ~CCSprite();
    bool isFlipX();
    bool isFlipY();
    // bool isTextureRectRotated();
    void updateColor();

    virtual bool init() = m1 0x2299f8, imac 0x2882e0;
    virtual void setVertexZ(float) = m1 0x22b230, imac 0x289db0;
    virtual void setScaleX(float) = m1 0x22b0a0, imac 0x289c50;
    virtual void setScaleY(float) = m1 0x22b120, imac 0x289cc0;
    virtual void setScale(float) = m1 0x22b1a0, imac 0x289d30;
    virtual void setPosition(cocos2d::CCPoint const&) = m1 0x22adc4, imac 0x2899a0;
    virtual void setSkewX(float) = m1 0x22afb8, imac 0x289b70;
    virtual void setSkewY(float) = m1 0x22b02c, imac 0x289be0;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = m1 0x22b2a4, imac 0x289e20;
    virtual void setVisible(bool) = m1 0x22b31c, imac 0x289ea0;
    virtual void setRotation(float) = m1 0x22ae5c, imac 0x289a20;
    virtual void setRotationX(float) = m1 0x22aed0, imac 0x289a90;
    virtual void setRotationY(float) = m1 0x22af44, imac 0x289b00;
    virtual void ignoreAnchorPointForPosition(bool) = m1 0x22b318, imac 0x289e90;
    virtual void addChild(cocos2d::CCNode*) = m1 0x22a8f0, imac 0x2894e0;
    virtual void addChild(cocos2d::CCNode*, int) = m1 0x22a8f4, imac 0x2894f0;
    virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x22a8f8, imac 0x289500;
    virtual void removeChild(cocos2d::CCNode*, bool) = m1 0x22aa60, imac 0x289640;
    virtual void removeAllChildrenWithCleanup(bool) = m1 0x22aaa8, imac 0x289680;
    virtual void reorderChild(cocos2d::CCNode*, int) = m1 0x22a9cc, imac 0x2895c0;
    virtual void sortAllChildren() = m1 0x22ab5c, imac 0x289740;
    virtual void draw() = m1 0x22a7e0, imac 0x2893c0;
    virtual void updateTransform() = m1 0x22a3f4, imac 0x288eb0;
    virtual bool initWithTexture(cocos2d::CCTexture2D*) = m1 0x229b74, imac 0x2884a0;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = m1 0x229b64, imac 0x288480;
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool) = m1 0x229a10, imac 0x288300;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x229ce8, imac 0x288600;
    virtual bool initWithSpriteFrameName(char const*) = m1 0x229d4c, imac 0x288650;
    virtual bool initWithFile(char const*) = m1 0x229bf0, imac 0x288510;
    virtual bool initWithFile(char const*, cocos2d::CCRect const&) = m1 0x229c84, imac 0x2885a0;
    virtual void setChildColor(cocos2d::ccColor3B const&) = m1 0x22b714, imac 0x28a4b0;
    virtual void setChildOpacity(unsigned char) = m1 0x22b5b8, imac 0x28a280;
    virtual cocos2d::CCSpriteBatchNode* getBatchNode() = m1 0x22bb1c, imac 0x28ac80;
    virtual void setBatchNode(cocos2d::CCSpriteBatchNode*) = m1 0x22bb24, imac 0x28ac90;
    virtual void refreshTextureRect() = m1 0x229ef8, imac 0x288850;
    virtual void setTextureRect(cocos2d::CCRect const&) = m1 0x229f7c, imac 0x2888e0;
    virtual void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&) = m1 0x229f90, imac 0x288900;
    virtual void setVertexRect(cocos2d::CCRect const&) = m1 0x22a220, imac 0x288c60;
    virtual void setDisplayFrame(cocos2d::CCSpriteFrame*) = m1 0x22b89c, imac 0x28a970;
    virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*) = m1 0x22b970, imac 0x28aa40;
    virtual cocos2d::CCSpriteFrame* displayFrame() = m1 0x22ba14, imac 0x28aad0;
    virtual void setDisplayFrameWithAnimationName(char const*, int) = m1 0x22b91c, imac 0x28a9f0;
    virtual void setTextureCoords(cocos2d::CCRect const&) = m1 0x22a228, imac 0x288c80;
    virtual void updateBlendFunc() = m1 0x22bb70, imac 0x28ad00;
    virtual void setReorderChildDirtyRecursively() = m1 0x22ace0, imac 0x2898c0;
    virtual void setDirtyRecursively(bool) = m1 0x22ad48, imac 0x289920;

    virtual void setOpacity(unsigned char) = m1 0x22b4c0, imac 0x28a0d0;
    virtual void updateDisplayedOpacity(unsigned char) = m1 0x22b850, imac 0x28a820;
    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x22b660, imac 0x28a330;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = m1 0x22b804, imac 0x28a6d0;
    virtual void setOpacityModifyRGB(bool) = m1 0x22b7bc, imac 0x28a560;
    virtual bool isOpacityModifyRGB() = m1 0x22b7f4, imac 0x28a6b0;

    virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x22bbcc, imac 0x28ad60;
    virtual cocos2d::CCTexture2D* getTexture() = m1 0x22bd0c, imac 0x28aed0;

    cocos2d::CCTextureAtlas* m_pobTextureAtlas;
    uint32_t m_uAtlasIndex;
    cocos2d::CCSpriteBatchNode* m_pobBatchNode;
    bool m_bDirty;
    bool m_bRecursiveDirty;
    bool m_bHasChildren;
    bool m_bShouldBeHidden;
    cocos2d::CCAffineTransform m_transformToBatch;
    cocos2d::ccBlendFunc m_sBlendFunc;
    cocos2d::CCTexture2D* m_pobTexture;
    cocos2d::CCRect m_obRect;
    bool m_bRectRotated;
    cocos2d::CCPoint m_obOffsetPosition;
    cocos2d::CCPoint m_obUnflippedOffsetPositionFromCenter;
    cocos2d::ccV3F_C4B_T2F_Quad m_sQuad;
    bool m_bOpacityModifyRGB;
    bool m_bFlipX;
    bool m_bFlipY;
    bool m_bDontDraw;
    bool m_bUseVertexMod;
    float m_fTlVertexMod;
    float m_fTrVertexMod;
    float m_fBlVertexMod;
    float m_fBrVertexMod;
    float m_fTextureLeft;
    float m_fTextureRight;
    float m_fTextureBottom;
    float m_fTextureTop;
}

[[link(win, android)]]
class cocos2d::CCLabelBMFont : cocos2d::CCSpriteBatchNode, cocos2d::CCLabelProtocol, cocos2d::CCRGBAProtocol {
    CCLabelBMFont();

    static cocos2d::CCLabelBMFont* create(char const*, char const*);
    static cocos2d::CCLabelBMFont* create(char const* str, char const* fntFile, float width) = ios inline {
        return cocos2d::CCLabelBMFont::create(str, fntFile, width, kCCTextAlignmentLeft, CCPointZero);
    }
    static cocos2d::CCLabelBMFont* create(char const* str, char const* fntFile, float width, cocos2d::CCTextAlignment alignment) = ios inline {
        return cocos2d::CCLabelBMFont::create(str, fntFile, width, alignment, CCPointZero);
    }
    static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint);
    static cocos2d::CCLabelBMFont* create() = ios inline {
    	auto pRet = new CCLabelBMFont();

    	if (pRet && pRet->init())
    	{
    		pRet->autorelease();
    		return pRet;
    	}

    	CC_SAFE_DELETE(pRet);
    	return nullptr;
    }
    static cocos2d::CCLabelBMFont* createBatched(char const*, char const*, cocos2d::CCArray*, int);
    static void purgeCachedData();

    bool initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint);

    cocos2d::CCBMFontConfiguration* getConfiguration() const;
    // int getExtraKerning() const;
    char const* getFntFile() = ios inline {
        return m_sFntFile.c_str();
    }
    // bool getIsBatched() const;
    float getLetterPosXLeft(cocos2d::CCSprite*, float, bool);
    float getLetterPosXRight(cocos2d::CCSprite*, float, bool);
    // cocos2d::CCArray* getTargetArray() const;

    // void setExtraKerning(int);
    void setFntFile(char const* filename) = ios inline {
        if (filename != NULL && strcmp(filename, m_sFntFile.c_str()) != 0 ) {
            CCBMFontConfiguration *newConf = FNTConfigLoadFile(filename);
            CCAssert( newConf, "CCLabelBMFont: Impossible to create font. Please check file");

            m_sFntFile = filename;

            CC_SAFE_RETAIN(newConf);
            CC_SAFE_RELEASE(m_pConfiguration);
            m_pConfiguration = newConf;

            this->setTexture(CCTextureCache::sharedTextureCache()->addImage(m_pConfiguration->getAtlasName(), false));
            this->createFontChars();
        }
    }
    // void setIsBatched(bool);
    // void setTargetArray(cocos2d::CCArray*);
    void createFontChars();
    int kerningAmountForFirst(unsigned short, unsigned short);
    void limitLabelWidth(float, float, float);

    virtual ~CCLabelBMFont();
    virtual bool init() = m1 0x5042a0, imac 0x5d84b0;
    virtual void setScaleX(float) = m1 0x506624, imac 0x5dae60;
    virtual void setScaleY(float) = m1 0x506650, imac 0x5dae80;
    virtual void setScale(float) = m1 0x5065f8, imac 0x5dae40;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = m1 0x50580c, imac 0x5d9c30;
    virtual void setString(char const*) = m1 0x504de0, imac 0x5d9160;
    virtual void setString(char const*, bool) = m1 0x504e04, imac 0x5d91b0;
    virtual char const* getString() = m1 0x50502c, imac 0x5d93e0;
    virtual void setCString(char const*) = m1 0x505064, imac 0x5d9430;
    virtual void updateLabel() = m1 0x505860, imac 0x5d9c70;
    virtual void setAlignment(cocos2d::CCTextAlignment) = m1 0x5065c8, imac 0x5dade0;
    virtual void setWidth(float) = m1 0x5065d8, imac 0x5dae00;
    virtual void setLineBreakWithoutSpace(bool) = m1 0x5065e8, imac 0x5dae20;
    virtual void setString(unsigned short*, bool) = m1 0x504e8c, imac 0x5d9230;

    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x505090, imac 0x5d9490;
    virtual cocos2d::ccColor3B const& getColor() = m1 0x505070, imac 0x5d9450;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = m1 0x505080, imac 0x5d9470;
    virtual unsigned char getDisplayedOpacity() = m1 0x505234, imac 0x5d9630;
    virtual unsigned char getOpacity() = m1 0x505224, imac 0x5d9610;
    virtual void setOpacity(unsigned char) = m1 0x505244, imac 0x5d9650;
    virtual void setOpacityModifyRGB(bool) = m1 0x5053b0, imac 0x5d9790;
    virtual bool isOpacityModifyRGB() = m1 0x505510, imac 0x5d98f0;
    virtual bool isCascadeColorEnabled() = m1 0x5057cc, imac 0x5d9bb0;
    virtual void setCascadeColorEnabled(bool) = m1 0x5057dc, imac 0x5d9bd0;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = m1 0x505638, imac 0x5d9a10;
    virtual bool isCascadeOpacityEnabled() = m1 0x5057ec, imac 0x5d9bf0;
    virtual void setCascadeOpacityEnabled(bool) = m1 0x5057fc, imac 0x5d9c10;
    virtual void updateDisplayedOpacity(unsigned char) = m1 0x505520, imac 0x5d9910;

    uint16_t* m_sString;
    gd::string m_sFntFile;
    uint16_t* m_sInitialString;
    gd::string m_sInitialStringUTF8;
    cocos2d::CCTextAlignment m_pAlignment;
    float m_fWidth;
    cocos2d::CCBMFontConfiguration* m_pConfiguration;
    bool m_bLineBreakWithoutSpaces;
    cocos2d::CCPoint m_tImageOffset;
    cocos2d::CCSprite* m_pReusedChar;
    uint8_t m_cDisplayedOpacity;
    uint8_t m_cRealOpacity;
    cocos2d::ccColor3B m_tDisplayedColor;
    cocos2d::ccColor3B m_tRealColor;
    bool m_bCascadeColorEnabled;
    bool m_bCascadeOpacityEnabled;
    bool m_bIsOpacityModifyRGB;
    bool m_bIsBatched;
    cocos2d::CCArray* m_pTargetArray;
    cocos2d::CCTexture2D* m_pSomeTexture;
    int m_nExtraKerning;
}

[[link(win, android)]]
class cocos2d::CCLabelTTF : cocos2d::CCSprite, cocos2d::CCLabelProtocol {
	static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize) = ios inline {
        return CCLabelTTF::create(string, fontName, fontSize,
            CCSizeZero, kCCTextAlignmentCenter, kCCVerticalTextAlignmentTop);
    }
	static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment hAlignment) = ios inline {
        return CCLabelTTF::create(string, fontName, fontSize, dimensions, hAlignment, kCCVerticalTextAlignmentTop);
    }
	static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment hAlignment, cocos2d::CCVerticalTextAlignment vAlignment) = ios inline {
        CCLabelTTF *pRet = new CCLabelTTF();
        if(pRet && pRet->initWithString(string, fontName, fontSize, dimensions, hAlignment, vAlignment))
        {
            pRet->autorelease();
            return pRet;
        }
        CC_SAFE_DELETE(pRet);
        return NULL;
    }
	static cocos2d::CCLabelTTF* create() = ios inline {
        auto ret = new CCLabelTTF();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
	static cocos2d::CCLabelTTF* createWithFontDefinition(char const*, cocos2d::ccFontDefinition&) = ios inline {
        auto ret = new CCLabelTTF();
        if (ret->initWithStringAndTextDefinition(p0, p1)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

	bool initWithString(char const* label, char const* fontName, float fontSize);
	bool initWithString(char const* label, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment alignment) = ios inline {
        return this->initWithString(label, fontName, fontSize, dimensions, alignment, kCCVerticalTextAlignmentTop);
    }
	bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment);
	bool initWithStringAndTextDefinition(char const*, cocos2d::ccFontDefinition&) = ios inline {
        if (!CCSprite::init()) return false;
        this->setShaderProgram(CCShaderCache::sharedShaderCache()->programForKey(kCCShader_PositionTextureColor));
        _updateWithTextDefinition(p1, false);
        this->setString(p0);
        return true;
    }

	// cocos2d::CCSize getDimensions();
	char const* getFontName() = ios inline {
        return m_pFontName->c_str();
    }
	// float getFontSize();
	// cocos2d::CCTextAlignment getHorizontalAlignment();
	cocos2d::ccFontDefinition* getTextDefinition() = ios inline {
        auto definition = new ccFontDefinition();
        *definition = _prepareTextDefinition(false);
        return definition;
    }
	// cocos2d::CCVerticalTextAlignment getVerticalAlignment();

	// void setDimensions(cocos2d::CCSize const&);
	void setFontFillColor(cocos2d::ccColor3B const&, bool) = ios inline {
        if (m_textFillColor.r != p0.r || m_textFillColor.g != p0.g || m_textFillColor.b != p0.b) {
            m_textFillColor = p0;
            if (p1) this->updateTexture();
        }
    }
	void setFontName(char const*) = ios inline {
        if (m_pFontName->compare(p0)) {
            delete m_pFontName;
            m_pFontName = new std::string(p0);
            if (m_string.size() > 0) this->updateTexture();
        }
    }
	// void setFontSize(float);
	// void setHorizontalAlignment(cocos2d::CCTextAlignment);
	void setTextDefinition(cocos2d::ccFontDefinition*) = ios inline {
        if (p0) _updateWithTextDefinition(*p0, true);
    }
	// void setVerticalAlignment(cocos2d::CCVerticalTextAlignment);

	// CCLabelTTF(cocos2d::CCLabelTTF const&);
	CCLabelTTF();
    virtual ~CCLabelTTF();
	cocos2d::ccFontDefinition _prepareTextDefinition(bool) = ios inline {
        auto factor = CCDirector::sharedDirector()->getContentScaleFactor();

        ccFontDefinition texDef;
        texDef.m_fontSize = p0 ? m_fFontSize * factor : m_fFontSize;
        texDef.m_fontName = *m_pFontName;
        texDef.m_alignment = m_hAlignment;
        texDef.m_vertAlignment = m_vAlignment;
        texDef.m_dimensions = p0 ? CCSize { m_tDimensions.width * factor, m_tDimensions.height * factor } : m_tDimensions;
        
        if (m_strokeEnabled) {
            texDef.m_stroke.m_strokeEnabled = true;
            texDef.m_stroke.m_strokeColor = m_strokeColor;
            texDef.m_stroke.m_strokeSize = p0 ? m_strokeSize * factor : m_strokeSize;
        }
        else texDef.m_stroke.m_strokeEnabled = false;

        if (m_shadowEnabled) {
            texDef.m_shadow.m_shadowEnabled = true;
            texDef.m_shadow.m_shadowBlur = m_shadowBlur;
            texDef.m_shadow.m_shadowOpacity = m_shadowOpacity;
            texDef.m_shadow.m_shadowOffset = p0 ? CCSize { m_shadowOffset.width * factor, m_shadowOffset.height * factor } : m_shadowOffset;
        }
        else texDef.m_shadow.m_shadowEnabled = false;

        texDef.m_fontFillColor = m_textFillColor;

        return texDef;
    }
	void _updateWithTextDefinition(cocos2d::ccFontDefinition&, bool) = ios inline {
        m_tDimensions = p0.m_dimensions;
        m_hAlignment = p0.m_alignment;
        m_vAlignment = p0.m_vertAlignment;
        m_pFontName = new std::string(p0.m_fontName);
        m_fFontSize = p0.m_fontSize;

        if (p0.m_shadow.m_shadowEnabled) {
            this->enableShadow(p0.m_shadow.m_shadowOffset, p0.m_shadow.m_shadowOpacity, p0.m_shadow.m_shadowBlur, false);
        }

        if (p0.m_stroke.m_strokeEnabled) {
            this->enableStroke(p0.m_stroke.m_strokeColor, p0.m_stroke.m_strokeSize, false);
        }

        this->setFontFillColor(p0.m_fontFillColor, false);

        if (p1) this->updateTexture();
    }
	char const* description() = ios inline {
        return CCString::createWithFormat("<CCLabelTTF | FontName = %s, FontSize = %.1f>", m_pFontName->c_str(), m_fFontSize)->getCString();
    }
	void disableShadow(bool) = ios inline {
        if (m_shadowEnabled) {
            m_shadowEnabled = false;
            if (p0) this->updateTexture();
        }
    }
	void disableStroke(bool) = ios inline {
        if (m_strokeEnabled) {
            m_strokeEnabled = false;
            if (p0) this->updateTexture();
        }
    }
	void enableShadow(cocos2d::CCSize const&, float, float, bool) = ios inline {
        auto changed = false;
        if (!m_shadowEnabled) {
            m_shadowEnabled = true;
            changed = true;
        }
        if (m_shadowOffset.width != p0.width || m_shadowOffset.height != p0.height) {
            m_shadowOffset = p0;
            changed = true;
        }
        if (m_shadowOpacity != p1) {
            m_shadowOpacity = p1;
            changed = true;
        }
        if (m_shadowBlur != p2) {
            m_shadowBlur = p2;
            changed = true;
        }
        if (changed && p3) this->updateTexture();
    }
	void enableStroke(cocos2d::ccColor3B const&, float, bool) = ios inline {
        auto changed = false;
        if (!m_strokeEnabled) {
            m_strokeEnabled = true;
            changed = true;
        }
        if (m_strokeColor.r != p0.r || m_strokeColor.g != p0.g || m_strokeColor.b != p0.b) {
            m_strokeColor = p0;
            changed = true;
        }
        if (m_strokeSize != p1) {
            m_strokeSize = p1;
            changed = true;
        }
        if (changed && p2) this->updateTexture();
    }
	bool updateTexture();

	virtual bool init() = m1 0x33f3e8, imac 0x3bd560;

	virtual void setString(char const*) = m1 0x33f4e4, imac 0x3bd690;
	virtual char const* getString() = m1 0x33f6e0, imac 0x3bd8c0;
}

[[link(win, android)]]
class cocos2d::CCActionManager : cocos2d::CCObject {
    CCActionManager();
    virtual ~CCActionManager();

    virtual void update(float) = m1 0x1ddfe4, imac 0x2343e0;

    void addAction(cocos2d::CCAction*, cocos2d::CCNode*, bool);
    void removeAllActions() = ios inline {
        struct tHashElement {
            ccArray* actions;
            CCObject* target;
            unsigned int actionIndex;
            CCAction* currentAction;
            bool currentActionSalvaged;
            bool paused;
            UT_hash_handle hh;
        };

        for (auto element = reinterpret_cast<tHashElement*>(m_pTargets); element != nullptr; element = static_cast<tHashElement*>(element->hh.next)) {
            this->removeAllActionsFromTarget(element->target);
        }
    }
    void removeAllActionsFromTarget(cocos2d::CCObject*);
    void removeAction(cocos2d::CCAction*);
    void removeActionByTag(unsigned int, cocos2d::CCObject*);
    cocos2d::CCAction* getActionByTag(unsigned int, cocos2d::CCObject*);
    void pauseTarget(cocos2d::CCObject*);
    void resumeTarget(cocos2d::CCObject*);
    cocos2d::CCSet* pauseAllRunningActions() = ios inline {
        struct tHashElement {
            ccArray* actions;
            CCObject* target;
            unsigned int actionIndex;
            CCAction* currentAction;
            bool currentActionSalvaged;
            bool paused;
            UT_hash_handle hh;
        };

        auto targets = new CCSet();
        targets->autorelease();
        for (auto element = reinterpret_cast<tHashElement*>(m_pTargets); element != nullptr; element = static_cast<tHashElement*>(element->hh.next)) {
            if (!element->paused) {
                element->paused = true;
                targets->addObject(element->target);
            }
        }
        return targets;
    }
    void resumeTargets(cocos2d::CCSet*) = ios inline {
        for (auto it = p0->begin(); it != p0->end(); ++it) {
            this->resumeTarget(*it);
        }
    }
    unsigned int numberOfRunningActionsInTarget(cocos2d::CCObject* target) = ios inline {
        struct tHashElement {
            ccArray* actions;
            CCObject* target;
            unsigned int actionIndex;
            CCAction* currentAction;
            bool currentActionSalvaged;
            bool paused;
            UT_hash_handle hh;
        };

        tHashElement* element = nullptr;
        HASH_FIND_INT(reinterpret_cast<tHashElement*>(m_pTargets), &target, element);
        return element && element->actions ? element->actions->num : 0;
    }

    void removeActionAtIndex(unsigned int, cocos2d::_hashElement*);
    void deleteHashElement(cocos2d::_hashElement*);
    void actionAllocWithHashElement(cocos2d::_hashElement*);
}

[[link(win, android)]]
class cocos2d::CCAnimate : cocos2d::CCActionInterval {
    static cocos2d::CCAnimate* create(cocos2d::CCAnimation*);

    bool initWithAnimation(cocos2d::CCAnimation*);

    // cocos2d::CCAnimation* getAnimation() const;
    // bool getRecenterChildren() const;
    // bool getRecenterFrames() const;

    // void setAnimation(cocos2d::CCAnimation*);
    // void setRecenterChildren(bool);
    // void setRecenterFrames(bool);

    // CCAnimate(cocos2d::CCAnimate const&);
    CCAnimate();
    virtual ~CCAnimate();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x33e0f0, imac 0x3bc0e0;
    virtual void update(float) = m1 0x33e3a0, imac 0x3bc3e0;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33e2e8, imac 0x3bc320;
    virtual void stop() = m1 0x33e354, imac 0x3bc390;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x33e5b4, imac 0x3bc630;

    gd::vector<float>* m_pSplitTimes;
    int m_nNextFrame;
    cocos2d::CCSpriteFrame* m_pOrigFrame;
    uint32_t m_uExecutedLoops;
    bool m_bRecenterFrames;
    bool m_bRecenterChildren;
}

[[link(win, android)]]
class cocos2d::CCAnimation : cocos2d::CCObject {
    // static cocos2d::CCAnimation* create(cocos2d::CCArray*, float);
    static cocos2d::CCAnimation* create(cocos2d::CCArray*, float, unsigned int);
    static cocos2d::CCAnimation* create();
    static cocos2d::CCAnimation* createWithSpriteFrames(cocos2d::CCArray*, float);

    bool init();
    bool initWithAnimationFrames(cocos2d::CCArray*, float, unsigned int);
    bool initWithSpriteFrames(cocos2d::CCArray*, float);

    // float getDelayPerUnit() const;
    // cocos2d::CCArray* getFrames() const;
    // unsigned int getLoops() const;
    // bool getRestoreOriginalFrame() const;
    // float getTotalDelayUnits() const;

    // void setDelayPerUnit(float);
    // void setFrames(cocos2d::CCArray*);
    // void setLoops(unsigned int);
    // void setRestoreOriginalFrame(bool);

    // CCAnimation(cocos2d::CCAnimation const&);
    CCAnimation();
    virtual ~CCAnimation();

    void addSpriteFrame(cocos2d::CCSpriteFrame*);
    void addSpriteFrameWithFileName(char const*);
    void addSpriteFrameWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x236d14, imac 0x296ad0;
    virtual float getDuration() = m1 0x236d08, imac 0x296ac0;
}

[[link(win, android)]]
class cocos2d::CCAnimationCache : cocos2d::CCObject {
    static cocos2d::CCAnimationCache* sharedAnimationCache();
    static void purgeSharedAnimationCache();

    bool init();

    [[since("4.2.1")]]
    CCAnimationCache() = ios inline {
        m_pAnimations = nullptr;
    }
    [[since("4.2.1")]]
    virtual ~CCAnimationCache();

    void addAnimation(cocos2d::CCAnimation*, const char*);
    void addAnimationsWithDictionary(cocos2d::CCDictionary*, const char*);
    void addAnimationsWithFile(const char*);
    cocos2d::CCAnimation* animationByName(const char*);
	void parseVersion1(cocos2d::CCDictionary*);
	void parseVersion2(cocos2d::CCDictionary*);
    void removeAnimationByName(const char*) = ios inline {
        if (p0) m_pAnimations->removeObjectForKey(p0);
    }
}

[[link(win, android)]]
class cocos2d::CCApplication : cocos2d::CCApplicationProtocol {
    static cocos2d::CCApplication* sharedApplication();

    virtual ~CCApplication();

    [[missing(android, mac, ios)]]
    void toggleVerticalSync(bool);
    [[missing(android, mac, ios)]]
    void setupVerticalSync();
    [[missing(android, mac, ios)]]
    void updateVerticalSync();
    [[missing(android, mac, ios)]]
    void updateControllerKeys(CXBOXController* controller, int userIndex);

    [[missing(android, mac, ios)]]
    int getTimeElapsed();
    [[missing(android, mac, ios)]]
    void resetForceTimer();

    [[missing(android, mac, ios)]]
    void leftMouseDown();
    [[missing(android, mac, ios)]]
    void leftMouseUp();

    [[missing(android, mac, ios)]]
    void logTimeElapsed(gd::string);

    [[missing(android, mac, ios)]]
    void moveMouse(int relX, int relY);

    [[missing(android, mac, ios)]]
    void shutdownApplication();
    [[missing(android, mac, ios)]]
    void toggleMouseControl(bool);
    [[missing(android, mac, ios)]]
    void updateController();
    [[missing(android, mac, ios)]]
    void updateMouseControl();

    [[missing(android, ios)]]
    void setResourceRootPath(gd::string const&);
    [[missing(android, ios)]]
    gd::string const& getResourceRootPath();
    [[missing(android, ios)]]
    void setStartupScriptFilename(gd::string const&);
    [[missing(android, ios)]]
    gd::string const& getStartupScriptFilename();

    CCApplication();

    virtual int run();
    virtual void setAnimationInterval(double) = m1 0x2b6224, imac 0x329030;
    virtual cocos2d::ccLanguageType getCurrentLanguage() = m1 0x2b6264, imac 0x329090;
    virtual cocos2d::TargetPlatform getTargetPlatform() = m1 0x2b6250, imac 0x329070;
    virtual void openURL(char const*) = m1 0x2b6b20, imac 0x329d90;

    PAD = win 0xc8, mac 0x30;
}

[[link(win, android)]]
class cocos2d::CCArray : cocos2d::CCObject {
    // static cocos2d::CCArray* create(cocos2d::CCObject*, ...);
    // static cocos2d::CCArray* create();
    // static cocos2d::CCArray* createWithArray(cocos2d::CCArray*);
    // static cocos2d::CCArray* createWithCapacity(unsigned int);
    static cocos2d::CCArray* createWithContentsOfFile(char const*);
    static cocos2d::CCArray* createWithContentsOfFileThreadSafe(char const*);
    // static cocos2d::CCArray* createWithObject(cocos2d::CCObject*);

    // bool init();
    bool initWithArray(cocos2d::CCArray*);
    // bool initWithCapacity(unsigned int);
    bool initWithObject(cocos2d::CCObject*);
    // bool initWithObjects(cocos2d::CCObject*, ...);

    // CCArray(cocos2d::CCArray const&);
    // CCArray(unsigned int);
    // CCArray();
    // void addObject(cocos2d::CCObject*);
    void addObjectNew(cocos2d::CCObject*) = ios inline {
        ccArrayEnsureExtraCapacity(data, 1);
        p0->retain();
        data->arr[data->num] = p0;
        p0->m_uIndexInArray = data->num;
        data->num++;
    }
    // void addObjectsFromArray(cocos2d::CCArray*);
    unsigned int capacity() const;
    // bool containsObject(cocos2d::CCObject*) const;
    // unsigned int count() const;
    void exchangeObject(cocos2d::CCObject*, cocos2d::CCObject*);
    void exchangeObjectAtIndex(unsigned int, unsigned int);
    // void fastRemoveObject(cocos2d::CCObject*);
    // void fastRemoveObjectAtIndex(unsigned int);
    void fastRemoveObjectAtIndexChild(unsigned int) = ios inline {
        auto last = --data->num;
        data->arr[last]->m_uUnknown = p0;
        CC_SAFE_RELEASE(data->arr[p0]);
        data->arr[p0] = data->arr[last];
    }
    void fastRemoveObjectAtIndexNew(unsigned int) = ios inline {
        auto last = --data->num;
        data->arr[last]->m_uIndexInArray = p0;
        CC_SAFE_RELEASE(data->arr[p0]);
        data->arr[p0] = data->arr[last];
    }
    unsigned int indexOfObject(cocos2d::CCObject*) const;
    // void insertObject(cocos2d::CCObject*, unsigned int);
    bool isEqualToArray(cocos2d::CCArray*);
    // cocos2d::CCObject* lastObject();
    // cocos2d::CCObject* objectAtIndex(unsigned int);
    cocos2d::CCObject* randomObject();
    void recreateNewIndexes() = ios inline {
        for (int i = 0; i < data->num; i++) {
            data->arr[i]->m_uIndexInArray = i;
        }
    }
    void reduceMemoryFootprint();
    // void removeAllObjects();
    // void removeLastObject(bool);
    void removeObject(cocos2d::CCObject*, bool);
    // void removeObjectAtIndex(unsigned int, bool);
    void removeObjectAtIndexChild(unsigned int, bool);
    void removeObjectsInArray(cocos2d::CCArray*);
    void replaceObjectAtIndex(unsigned int, cocos2d::CCObject*, bool);
    void reverseObjects();
    cocos2d::CCString* stringAtIndex(unsigned int);

    // virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x632d6c, imac 0x71ff10;
    // virtual void acceptVisitor(cocos2d::CCDataVisitor&) = m1 0x632e6c, imac 0x720010;

    cocos2d::ccArray* data;
}

[[link(win, android)]]
class cocos2d::CCDictionary : cocos2d::CCObject {
    static cocos2d::CCDictionary* create();
    static cocos2d::CCDictionary* createWithContentsOfFile(char const*);
    static cocos2d::CCDictionary* createWithContentsOfFileThreadSafe(char const*);
    static cocos2d::CCDictionary* createWithDictionary(cocos2d::CCDictionary*);

    gd::string getFirstKey();
    
    void setObject(cocos2d::CCObject*, gd::string const&);
    void setObject(cocos2d::CCObject*, intptr_t);
    void setObjectUnSafe(cocos2d::CCObject*, gd::string const&);
    void setObjectUnSafe(cocos2d::CCObject*, intptr_t);

    // CCDictionary(cocos2d::CCDictionary const&);
    CCDictionary();
    virtual ~CCDictionary();
    cocos2d::CCArray* allKeys();
    cocos2d::CCArray* allKeysForObject(cocos2d::CCObject*) = ios inline {
        auto keyCount = this->count();
        if (keyCount <= 0) return nullptr;
        auto arr = CCArray::createWithCapacity(keyCount);
        CCDictElement* element;
        CCDictElement* temp;
        if (m_eDictType == kCCDictStr) {
            HASH_ITER(hh, m_pElements, element, temp) {
                if (element->getObject() == p0) {
                    auto key = new CCString(element->getStrKey());
                    arr->addObject(key);
                    key->release();
                }
            }
        }
        else if (m_eDictType == kCCDictInt) {
            HASH_ITER(hh, m_pElements, element, temp) {
                if (element->getObject() == p0) {
                    auto key = new CCInteger(element->getIntKey());
                    arr->addObject(key);
                    key->release();
                }
            }
        }
        return arr;
    }
    char const* charForKey(gd::string const&) = ios inline {
        return this->valueForKey(p0)->getCString();
    }
    unsigned int count();
    cocos2d::CCObject* objectForKey(gd::string const&);
    cocos2d::CCObject* objectForKey(intptr_t);
    cocos2d::CCObject* randomObject() = ios inline {
        if (m_eDictType == kCCDictUnknown) return nullptr;
        auto key = this->allKeys()->randomObject();
        if (m_eDictType == kCCDictInt) return this->objectForKey(static_cast<CCInteger*>(key)->getValue());
        else if (m_eDictType == kCCDictStr) return this->objectForKey(static_cast<CCString*>(key)->getCString());
        else return nullptr;
    }
    void removeAllObjects();
    void removeObjectForElememt(cocos2d::CCDictElement*);
    void removeObjectForKey(gd::string const&);
    void removeObjectForKey(intptr_t);
    void removeObjectsForKeys(cocos2d::CCArray*);
    cocos2d::CCString const* valueForKey(gd::string const&);
    cocos2d::CCString const* valueForKey(intptr_t);
    bool writeToFile(char const*) = ios inline {
        return CCFileUtils::sharedFileUtils()->writeToFile(this, p0);
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x29eb10, imac 0x30f7c0;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = m1 0x29efd0, imac 0x30fc50;

    cocos2d::CCDictElement* m_pElements;
    int m_eDictType;
}

[[link(win, android)]]
class cocos2d::CCRenderTexture : cocos2d::CCNode {
    static cocos2d::CCRenderTexture* create(int, int);
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat);
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = ios inline {
        auto ret = new CCRenderTexture();
        if (ret->initWithWidthAndHeight(p0, p1, p2, p3)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat) = ios inline {
        return this->initWithWidthAndHeight(p0, p1, p2, 0);
    }
    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int);

    cocos2d::ccColor4F const& getClearColor() const;
    float getClearDepth() const;
    unsigned int getClearFlags() const;
    int getClearStencil() const;

    void setAutoDraw(bool);
    void setClearColor(cocos2d::ccColor4F const&);
    void setClearDepth(float);
    void setClearFlags(unsigned int);
    void setClearStencil(float);

    // CCRenderTexture(cocos2d::CCRenderTexture const&);
    [[since("4.0.1")]]
    CCRenderTexture() = ios inline {
        m_pSprite = nullptr;
        m_uFBO = 0;
        m_uDepthRenderBufffer = 0;
        m_nOldFBO = 0;
        m_pTexture = nullptr;
        m_pTextureCopy = nullptr;
        m_pUITextureImage = nullptr;
        m_ePixelFormat = kCCTexture2DPixelFormat_RGBA8888;
        m_uClearFlags = 0;
        m_sClearColor = { 0.0f, 0.0f, 0.0f, 0.0f };
        m_fClearDepth = 0.0f;
        m_nClearStencil = 0;
        m_bAutoDraw = false;
    }
    [[since("4.0.1")]]
    virtual ~CCRenderTexture();
    void begin();
    void beginWithClear(float, float, float, float, float, int, unsigned int);
    void beginWithClear(float, float, float, float);
    void beginWithClear(float, float, float, float, float) = ios inline {
        this->beginWithClear(p0, p1, p2, p3, p4, 0, GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    }
    void beginWithClear(float, float, float, float, float, int) = ios inline {
        this->beginWithClear(p0, p1, p2, p3, p4, p5, GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
    }
    void clear(float, float, float, float);
    void clearDepth(float);
    void clearStencil(int);
    void end();
    // void endToLua();
    bool isAutoDraw() const;
    void listenToBackground(cocos2d::CCObject*);
    void listenToForeground(cocos2d::CCObject*);
    cocos2d::CCImage* newCCImage(bool flipImage) = ios inline {
        if (!m_pTexture) return nullptr;

        auto& s = m_pTexture->getContentSizeInPixels();
        int width = s.width;
        int height = s.height;
        auto buffer = new uint8_t[width * height * 4];
        auto data = new uint8_t[width * height * 4];
        auto image = new CCImage();

        this->begin();
        glPixelStorei(GL_PACK_ALIGNMENT, 1);
        glReadPixels(0, 0, width, height, GL_RGBA, GL_UNSIGNED_BYTE, data);
        this->end();

        if (flipImage) {
            for (int i = 0; i < height; i++) {
                memcpy(&buffer[i * width * 4], &data[(height - i - 1) * width * 4], width * 4);
            }

            image->initWithImageData(buffer, width * height * 4, CCImage::kFmtRawData, width, height, 8);
        }
        else image->initWithImageData(data, width * height * 4, CCImage::kFmtRawData, width, height, 8);    

        delete[] buffer;
        delete[] data;
        return image;
    }
    bool saveToFile(char const*);
    bool saveToFile(char const*, cocos2d::eImageFormat);
    void updateInternalScale(float, float);

    virtual void draw() = m1 0x51ed84, imac 0x5f5ae0;
    virtual void visit() = m1 0x51ecec, imac 0x5f5a50;
    virtual cocos2d::CCSprite* getSprite() = m1 0x51df78, imac 0x5f4bc0;
    virtual void setSprite(cocos2d::CCSprite*) = m1 0x51df80, imac 0x5f4bd0;
}

[[link(win, android)]]
class cocos2d::CCRepeat : cocos2d::CCActionInterval {
    static cocos2d::CCRepeat* create(cocos2d::CCFiniteTimeAction* pAction, unsigned int times) = ios inline {
        CCRepeat* pRepeat = new CCRepeat();
        pRepeat->initWithAction(pAction, times);
        pRepeat->autorelease();

        return pRepeat;
    }

    bool initWithAction(cocos2d::CCFiniteTimeAction* pAction, unsigned int times) = ios inline {
        float d = pAction->getDuration() * times;

        if (CCActionInterval::initWithDuration(d))
        {
            m_uTimes = times;
            m_pInnerAction = pAction;
            pAction->retain();

            m_bActionInstant = geode::cast::typeinfo_cast<CCActionInstant*>(pAction) ? true : false;
            //an instant action needs to be executed one time less in the update method since it uses startWithTarget to execute the action
            if (m_bActionInstant) 
            {
                m_uTimes -=1;
            }
            m_uTotal = 0;

            return true;
        }

        return false;
    }

    // cocos2d::CCFiniteTimeAction* getInnerAction();

    // void setInnerAction(cocos2d::CCFiniteTimeAction*);

    // CCRepeat(cocos2d::CCRepeat const&);
    // CCRepeat();
    [[since("4.2.1")]]
    virtual ~CCRepeat() = ios inline {
        CC_SAFE_RELEASE(m_pInnerAction);
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline, m1 0x338b40, imac 0x3b5f50 {
        CCZone* pNewZone = NULL;
        CCRepeat* pCopy = NULL;
        if(pZone && pZone->m_pCopyObject) 
        {
            //in case of being called at sub class
            pCopy = (CCRepeat*)(pZone->m_pCopyObject);
        }
        else
        {
            pCopy = new CCRepeat();
            pZone = pNewZone = new CCZone(pCopy);
        }

        CCActionInterval::copyWithZone(pZone);

        pCopy->initWithAction((CCFiniteTimeAction*)(m_pInnerAction->copy()->autorelease()), m_uTimes);

        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float dt) = ios inline, m1 0x338dd0, imac 0x3b61f0 {
        if (dt >= m_fNextDt) {
            while (dt > m_fNextDt && m_uTotal < m_uTimes) {
                m_pInnerAction->update(1.0f);
                m_uTotal++;
                m_pInnerAction->stop();
                m_pInnerAction->startWithTarget(m_pTarget);
                m_fNextDt += m_pInnerAction->getDuration() / m_fDuration;
            }
            if (dt >= 1.0f && m_uTotal < m_uTimes) m_uTotal++;
            if (!m_bActionInstant) {
                if (m_uTotal == m_uTimes) {
                    m_pInnerAction->update(1);
                    m_pInnerAction->stop();
                }
                else m_pInnerAction->update(dt - (m_fNextDt - m_pInnerAction->getDuration() / m_fDuration));
            }
        }
        else m_pInnerAction->update(fmodf(dt * m_uTimes, 1.0f));
    }
    virtual bool isDone() = ios inline, m1 0x338f44, imac 0x3b6310 {
        return m_uTotal == m_uTimes;
    }
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = ios inline, m1 0x338d48, imac 0x3b6170 {
        m_uTotal = 0;
        m_fNextDt = m_pInnerAction->getDuration()/m_fDuration;
        CCActionInterval::startWithTarget(pTarget);
        m_pInnerAction->startWithTarget(pTarget);
    }
    virtual void stop() = ios inline, m1 0x338da0, imac 0x3b61c0 {
        m_pInnerAction->stop();
        CCActionInterval::stop();
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline, m1 0x338f54, imac 0x3b6320 {
        return CCRepeat::create(m_pInnerAction->reverse(), m_uTimes);
    }
}

[[link(win, android)]]
class cocos2d::CCRepeatForever : cocos2d::CCActionInterval {
    static cocos2d::CCRepeatForever* create(cocos2d::CCActionInterval*);

    bool initWithAction(cocos2d::CCActionInterval*) = ios inline {
        p0->retain();
        m_pInnerAction = p0;
        return true;
    }

    // cocos2d::CCActionInterval* getInnerAction();

    // void setInnerAction(cocos2d::CCActionInterval*);

    // CCRepeatForever(cocos2d::CCRepeatForever const&);
    // CCRepeatForever();
    [[since("4.2.1")]]
    virtual ~CCRepeatForever();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x3390d8, imac 0x3b64a0;
    virtual bool isDone() = m1 0x339280, imac 0x3b6630;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3391a8, imac 0x3b6580;
    virtual void step(float) = m1 0x3391e8, imac 0x3b65c0;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x339288, imac 0x3b6640;
}

[[link(win, android)]]
class cocos2d::CCBezierBy : cocos2d::CCActionInterval {
    static cocos2d::CCBezierBy* create(float, cocos2d::ccBezierConfig const&);

    bool initWithDuration(float, cocos2d::ccBezierConfig const&);

    // CCBezierBy(cocos2d::CCBezierBy const&);
    // CCBezierBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x33bab8, imac 0x3b9510;
    virtual void update(float) = m1 0x33bc08, imac 0x3b9690;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33ba64, imac 0x3b94c0;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x33bd60, imac 0x3b9830;
}

[[link(win, android)]]
class cocos2d::CCBezierTo : cocos2d::CCBezierBy {
    static cocos2d::CCBezierTo* create(float, cocos2d::ccBezierConfig const&);

    bool initWithDuration(float, cocos2d::ccBezierConfig const&);

    // CCBezierTo(cocos2d::CCBezierTo const&);
    // CCBezierTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x33bf24, imac 0x3b9a50;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33c024, imac 0x3b9b80;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInT : cocos2d::CCTransitionMoveInL {
    static cocos2d::CCTransitionMoveInT* create(float, cocos2d::CCScene*);

    // CCTransitionMoveInT(cocos2d::CCTransitionMoveInT const&);
    CCTransitionMoveInT();
    virtual ~CCTransitionMoveInT();

    virtual void initScenes() = m1 0xbc99c, imac 0xd5d30;
}

[[link(win, android)]]
class cocos2d::CCTransitionFade : cocos2d::CCTransitionScene {
    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::ccColor3B const&);

    // CCTransitionFade(cocos2d::CCTransitionFade const&);
    CCTransitionFade();
    virtual ~CCTransitionFade();

    virtual void onEnter() = m1 0xbf3b4, imac 0xd8ae0;
    virtual void onExit() = m1 0xbf4f0, imac 0xd8c10;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = m1 0xbf38c, imac 0xd8ac0;
    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::ccColor3B const&) = m1 0xbf348, imac 0xd8a70;
}

[[link(win, android)]]
class cocos2d::CCTransitionRotoZoom : cocos2d::CCTransitionScene {
    static cocos2d::CCTransitionRotoZoom* create(float, cocos2d::CCScene*);

    // CCTransitionRotoZoom(cocos2d::CCTransitionRotoZoom const&);
    CCTransitionRotoZoom();
    virtual ~CCTransitionRotoZoom();

    virtual void onEnter() = m1 0xbbd68, imac 0xd5020;
}

[[link(win, android)]]
class cocos2d::CCTransitionScene : cocos2d::CCScene {
    static cocos2d::CCTransitionScene* create(float, cocos2d::CCScene*);

    void finish();
    void hideOutShowIn();
    void setNewScene(float);

    // CCTransitionScene(cocos2d::CCTransitionScene const&);
    CCTransitionScene();

    virtual ~CCTransitionScene();

    virtual void onEnter() = m1 0xbb91c, imac 0xd4ba0;
    virtual void onExit() = m1 0xbb970, imac 0xd4bf0;
    virtual void cleanup() = m1 0xbb9c4, imac 0xd4c50;
    virtual void draw() = m1 0xbb6f0, imac 0xd4960;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = m1 0xbb600, imac 0xd4890;
    virtual void sceneOrder() = m1 0xbb6e4, imac 0xd4950;
}

[[link(win, android)]]
class cocos2d::CCTransitionCrossFade : cocos2d::CCTransitionScene {
	static cocos2d::CCTransitionCrossFade* create(float, cocos2d::CCScene*);

	// CCTransitionCrossFade(cocos2d::CCTransitionCrossFade const&);
    CCTransitionCrossFade();
    virtual ~CCTransitionCrossFade();

	virtual void onEnter() = m1 0xbf708, imac 0xd8e40;
	virtual void onExit() = m1 0xbfa40, imac 0xd9180;
	virtual void draw() = m1 0xbf704, imac 0xd8e30;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeBL : cocos2d::CCTransitionFadeTR {
	static cocos2d::CCTransitionFadeBL* create(float, cocos2d::CCScene*);

	// CCTransitionFadeBL(cocos2d::CCTransitionFadeBL const&);
    CCTransitionFadeBL();
    virtual ~CCTransitionFadeBL();

	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = m1 0xc06e8, imac 0xd9f40;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeDown : cocos2d::CCTransitionFadeTR {
	static cocos2d::CCTransitionFadeDown* create(float, cocos2d::CCScene*);

	// CCTransitionFadeDown(cocos2d::CCTransitionFadeDown const&);
    CCTransitionFadeDown();
    virtual ~CCTransitionFadeDown();

	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = m1 0xc0a78, imac 0xda340;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeTR : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionFadeTR* create(float, cocos2d::CCScene*);

	// CCTransitionFadeTR(cocos2d::CCTransitionFadeTR const&);
    CCTransitionFadeTR();
    virtual ~CCTransitionFadeTR();

	virtual void onEnter() = m1 0xc0414, imac 0xd9c20;
	virtual void sceneOrder() = m1 0xc040c, imac 0xd9c10;
	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = m1 0xc0510, imac 0xd9d20;

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xc051c, imac 0xd9d40;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeUp : cocos2d::CCTransitionFadeTR {
	static cocos2d::CCTransitionFadeUp* create(float, cocos2d::CCScene*);

	// CCTransitionFadeUp(cocos2d::CCTransitionFadeUp const&);
    CCTransitionFadeUp();
    virtual ~CCTransitionFadeUp();

	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = m1 0xc08b0, imac 0xda140;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipAngular : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionFlipAngular* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionFlipAngular(cocos2d::CCTransitionFlipAngular const&);
    CCTransitionFlipAngular();
    virtual ~CCTransitionFlipAngular();

	virtual void onEnter() = m1 0xbe2d0, imac 0xd7880;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipX : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionFlipX(cocos2d::CCTransitionFlipX const&);
    CCTransitionFlipX();
    virtual ~CCTransitionFlipX();

	virtual void onEnter() = m1 0xbdbb4, imac 0xd70d0;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipY : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionFlipY(cocos2d::CCTransitionFlipY const&);
    CCTransitionFlipY();
    virtual ~CCTransitionFlipY();

	virtual void onEnter() = m1 0xbdf44, imac 0xd74a0;
}

[[link(win, android)]]
class cocos2d::CCTransitionJumpZoom : cocos2d::CCTransitionScene {
	static cocos2d::CCTransitionJumpZoom* create(float, cocos2d::CCScene*);

	// CCTransitionJumpZoom(cocos2d::CCTransitionJumpZoom const&);
    CCTransitionJumpZoom();
    virtual ~CCTransitionJumpZoom();

	virtual void onEnter() = m1 0xbc0a8, imac 0xd5380;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInB : cocos2d::CCTransitionMoveInL {
	static cocos2d::CCTransitionMoveInB* create(float, cocos2d::CCScene*);

	// CCTransitionMoveInB(cocos2d::CCTransitionMoveInB const&);
    CCTransitionMoveInB();
    virtual ~CCTransitionMoveInB();

	virtual void initScenes() = m1 0xbcbb0, imac 0xd5f70;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInL : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionMoveInL* create(float, cocos2d::CCScene*);

	// CCTransitionMoveInL(cocos2d::CCTransitionMoveInL const&);
    CCTransitionMoveInL();
    virtual ~CCTransitionMoveInL();

	virtual void onEnter() = m1 0xbc444, imac 0xd5780;
	virtual void initScenes() = m1 0xbc570, imac 0xd58b0;
	virtual cocos2d::CCActionInterval* action() = m1 0xbc520, imac 0xd5850;

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xbc560, imac 0xd5890;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInR : cocos2d::CCTransitionMoveInL {
	static cocos2d::CCTransitionMoveInR* create(float, cocos2d::CCScene*);

	// CCTransitionMoveInR(cocos2d::CCTransitionMoveInR const&);
    CCTransitionMoveInR();
    virtual ~CCTransitionMoveInR();

	virtual void initScenes() = m1 0xbc788, imac 0xd5af0;
}

[[link(win, android)]]
class cocos2d::CCTransitionShrinkGrow : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionShrinkGrow* create(float, cocos2d::CCScene*);

	// CCTransitionShrinkGrow(cocos2d::CCTransitionShrinkGrow const&);
    CCTransitionShrinkGrow();
    virtual ~CCTransitionShrinkGrow();

	virtual void onEnter() = m1 0xbd910, imac 0xd6de0;

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xbda98, imac 0xd6f60;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInB : cocos2d::CCTransitionSlideInL {
	static cocos2d::CCTransitionSlideInB* create(float, cocos2d::CCScene*);

	// CCTransitionSlideInB(cocos2d::CCTransitionSlideInB const&);
    CCTransitionSlideInB();
    virtual ~CCTransitionSlideInB();

	virtual void sceneOrder() = m1 0xbd684, imac 0xd6b20;
	virtual void initScenes() = m1 0xbd690, imac 0xd6b30;
	virtual cocos2d::CCActionInterval* action() = m1 0xbd6f4, imac 0xd6ba0;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInL : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionSlideInL* create(float, cocos2d::CCScene*);

	// CCTransitionSlideInL(cocos2d::CCTransitionSlideInL const&);
    CCTransitionSlideInL();
    virtual ~CCTransitionSlideInL();

	virtual void onEnter() = m1 0xbcd20, imac 0xd6120;
	virtual void sceneOrder() = m1 0xbce28, imac 0xd6210;
	virtual void initScenes() = m1 0xbce30, imac 0xd6220;
	virtual cocos2d::CCActionInterval* action() = m1 0xbce94, imac 0xd6290;

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xbcef4, imac 0xd62f0;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInR : cocos2d::CCTransitionSlideInL {
	static cocos2d::CCTransitionSlideInR* create(float, cocos2d::CCScene*);

	// CCTransitionSlideInR(cocos2d::CCTransitionSlideInR const&);
    CCTransitionSlideInR();
    virtual ~CCTransitionSlideInR();

	virtual void sceneOrder() = m1 0xbd170, imac 0xd65a0;
	virtual void initScenes() = m1 0xbd17c, imac 0xd65b0;
	virtual cocos2d::CCActionInterval* action() = m1 0xbd1dc, imac 0xd6610;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInT : cocos2d::CCTransitionSlideInL {
	static cocos2d::CCTransitionSlideInT* create(float, cocos2d::CCScene*);

	// CCTransitionSlideInT(cocos2d::CCTransitionSlideInT const&);
    CCTransitionSlideInT();
    virtual ~CCTransitionSlideInT();

	virtual void sceneOrder() = m1 0xbd3fc, imac 0xd6860;
	virtual void initScenes() = m1 0xbd404, imac 0xd6870;
	virtual cocos2d::CCActionInterval* action() = m1 0xbd464, imac 0xd68d0;
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitCols : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionSplitCols* create(float, cocos2d::CCScene*);

	// CCTransitionSplitCols(cocos2d::CCTransitionSplitCols const&);
    CCTransitionSplitCols();
    virtual ~CCTransitionSplitCols();

	virtual void onEnter() = m1 0xbff40, imac 0xd96e0;
	virtual cocos2d::CCActionInterval* action() = m1 0xc0054, imac 0xd97d0;

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xc0068, imac 0xd97f0;
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitRows : cocos2d::CCTransitionSplitCols {
	static cocos2d::CCTransitionSplitRows* create(float, cocos2d::CCScene*);

	// CCTransitionSplitRows(cocos2d::CCTransitionSplitRows const&);
    CCTransitionSplitRows();
    virtual ~CCTransitionSplitRows();

	virtual cocos2d::CCActionInterval* action() = m1 0xc0194, imac 0xd9980;
}

[[link(win, android)]]
class cocos2d::CCTransitionTurnOffTiles : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionTurnOffTiles* create(float, cocos2d::CCScene*);

	// CCTransitionTurnOffTiles(cocos2d::CCTransitionTurnOffTiles const&);
    CCTransitionTurnOffTiles();
    virtual ~CCTransitionTurnOffTiles();

	virtual void onEnter() = m1 0xbfc74, imac 0xd93e0;
	virtual void sceneOrder() = m1 0xbfc6c, imac 0xd93d0;

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xbfd74, imac 0xd94e0;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipAngular : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionZoomFlipAngular(cocos2d::CCTransitionZoomFlipAngular const&);
    CCTransitionZoomFlipAngular();
    virtual ~CCTransitionZoomFlipAngular();

	virtual void onEnter() = m1 0xbee34, imac 0xd84f0;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipX : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionZoomFlipX(cocos2d::CCTransitionZoomFlipX const&);
    CCTransitionZoomFlipX();
    virtual ~CCTransitionZoomFlipX();

	virtual void onEnter() = m1 0xbe668, imac 0xd7c60;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipY : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionZoomFlipY(cocos2d::CCTransitionZoomFlipY const&);
    CCTransitionZoomFlipY();
    virtual ~CCTransitionZoomFlipY();

	virtual void onEnter() = m1 0xbea50, imac 0xd80a0;
}

[[link(win, android)]]
class cocos2d::CCTurnOffTiles : cocos2d::CCTiledGrid3DAction {
	static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&);
	static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&, unsigned int);

	// CCTurnOffTiles(cocos2d::CCTurnOffTiles const&);
	// CCTurnOffTiles();
    virtual ~CCTurnOffTiles();

	void shuffle(unsigned int*, unsigned int);
	void turnOffTile(cocos2d::CCPoint const&);
	void turnOnTile(cocos2d::CCPoint const&);

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6bc884, imac 0x7b6890;
	virtual void update(float) = m1 0x6bcc78, imac 0x7b6c50;
	virtual void startWithTarget(cocos2d::CCNode*) = m1 0x6bcb28, imac 0x7b6b40;
	virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int) = m1 0x6bc854, imac 0x7b6860;
}

[[link(win, android)]]
class cocos2d::CCBlink : cocos2d::CCActionInterval {
    static cocos2d::CCBlink* create(float, unsigned int);

    bool initWithDuration(float, unsigned int) = ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_nTimes = p1;
        return true;
    }

    // CCBlink(cocos2d::CCBlink const&);
    // CCBlink();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x33c8a0, imac 0x3ba570;
    virtual void update(float) = m1 0x33c990, imac 0x3ba680;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33c85c, imac 0x3ba530;
    virtual void stop() = m1 0x33c828, imac 0x3ba500;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x33ca18, imac 0x3ba700;
}

[[link(win, android)]]
class cocos2d::CCHide : cocos2d::CCActionInstant {
    static cocos2d::CCHide* create();

    // CCHide(cocos2d::CCHide const&);
    // CCHide();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b2940, imac 0x7ac160;
    virtual void update(float) = m1 0x6b28d4, imac 0x7ac0f0;
    virtual cocos2d::CCFiniteTimeAction* reverse() = m1 0x6b28e8, imac 0x7ac110;
}

[[link(win, android)]]
class cocos2d::CCShow : cocos2d::CCActionInstant {
    static cocos2d::CCShow* create();

    // CCShow(cocos2d::CCShow const&);
    // CCShow();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b2814, imac 0x7ac040;
    virtual void update(float) = m1 0x6b2750, imac 0x7abf80;
    virtual cocos2d::CCFiniteTimeAction* reverse() = m1 0x6b2764, imac 0x7abfa0;
}

[[link(win, android)]]
class cocos2d::CCCallFunc : cocos2d::CCActionInstant {
    static cocos2d::CCCallFunc* create(cocos2d::CCObject*, cocos2d::SEL_CallFunc);

    // CCCallFunc(cocos2d::CCCallFunc const&);
    // CCCallFunc();
    [[since("4.2.1")]]
    virtual ~CCCallFunc();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b347c, imac 0x7acc70;
    virtual void update(float) = m1 0x6b3580, imac 0x7acd70;
    virtual bool initWithTarget(cocos2d::CCObject*) = m1 0x6b3324, imac 0x7acb30;
    virtual void execute() = m1 0x6b358c, imac 0x7acd80;
}

[[link(win, android)]]
class cocos2d::CCCallFuncN : cocos2d::CCCallFunc, cocos2d::TypeInfo {
    static cocos2d::CCCallFuncN* create(cocos2d::CCObject* pSelectorTarget, cocos2d::SEL_CallFuncN selector) = ios inline {
	CCCallFuncN *pRet = new CCCallFuncN();

        if (pRet && pRet->initWithTarget(pSelectorTarget, selector))
        {
            pRet->autorelease();
            return pRet;
        }

        CC_SAFE_DELETE(pRet);
        return NULL;
    }

    virtual bool initWithTarget(cocos2d::CCObject* pSelectorTarget, cocos2d::SEL_CallFuncN selector) = ios inline, m1 0x6b3780, imac 0x7acf70 {
        if (CCCallFunc::initWithTarget(pSelectorTarget)) {
            m_pCallFuncN = selector;
            return true;
        }

        return false;
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* zone) = ios inline, m1 0x6b37d4, imac 0x7acfc0 {
        cocos2d::CCZone* pNewZone = NULL;
        CCCallFuncN* pRet = NULL;

        if (zone && zone->m_pCopyObject) {
            //in case of being called at sub class
            pRet = (CCCallFuncN*) (zone->m_pCopyObject);
        } else {
            pRet = new CCCallFuncN();
            zone = pNewZone = new CCZone(pRet);
        }

        CCCallFunc::copyWithZone(zone);
        pRet->initWithTarget(m_pSelectorTarget, m_pCallFuncN);
        CC_SAFE_DELETE(pNewZone);
        return pRet;
    }
    
    virtual void execute() = ios inline, m1 0x6b35fc, imac 0x7acde0 {
        if (m_pCallFuncN) {
            (m_pSelectorTarget->*m_pCallFuncN)(m_pTarget);
        }
        // if (m_nScriptHandler) {
        //     CCScriptEngineManager::sharedManager()->getScriptEngine()->executeCallFuncActionEvent(this, m_pTarget);
        // }
    }
}

[[link(win, android)]]
class cocos2d::CCCallFuncND : cocos2d::CCCallFuncN {
    static cocos2d::CCCallFuncND* create(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*) = ios inline {
        auto ret = new CCCallFuncND();
        if (ret->initWithTarget(p0, p1, p2)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    // CCCallFuncND(cocos2d::CCCallFuncND const&);
    // CCCallFuncND();

    virtual bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*) = ios inline, m1 0x6b397c, imac 0x7ad1a0 {
        if (!CCCallFunc::initWithTarget(p0)) return false;
        m_pData = p2;
        m_pCallFuncND = p1;
        return true;
    }
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios inline, m1 0x6b39e0, imac 0x7ad210 {
        cocos2d::CCZone* zone = nullptr;
        cocos2d::CCCallFuncND* ret = nullptr;
        if (p0 && p0->m_pCopyObject) {
            ret = static_cast<cocos2d::CCCallFuncND*>(p0->m_pCopyObject);
        } else {
            ret = new cocos2d::CCCallFuncND();
            zone = p0 = new cocos2d::CCZone(ret);
        }
        CCCallFunc::copyWithZone(p0);
        ret->initWithTarget(m_pSelectorTarget, m_pCallFuncND, m_pData);
        CC_SAFE_DELETE(zone);
        return ret;
    }
    virtual void execute() = ios inline, m1 0x6b3adc, imac 0x7ad330 {
        if (m_pCallFuncND) {
            (m_pSelectorTarget->*m_pCallFuncND)(m_pTarget, m_pData);
        }
    }
}

[[link(win, android)]]
class cocos2d::CCCallFuncO : cocos2d::CCCallFunc, cocos2d::TypeInfo {
    static cocos2d::CCCallFuncO* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*);

    // cocos2d::CCObject* getObject();

    // void setObject(cocos2d::CCObject*);

    // CCCallFuncO(cocos2d::CCCallFuncO const&);
    CCCallFuncO() = ios inline {
        m_pObject = nullptr;
    }
    virtual ~CCCallFuncO();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b3d7c, imac 0x7ad670;
    virtual void execute() = m1 0x6b3c1c, imac 0x7ad4e0;
    virtual bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*) = m1 0x6b3d0c, imac 0x7ad600;
}

[[link(win, android)]]
class cocos2d::CCClippingNode : cocos2d::CCNode {
    static cocos2d::CCClippingNode* create();
    static cocos2d::CCClippingNode* create(cocos2d::CCNode* stencil);

    protected CCClippingNode();
    virtual ~CCClippingNode();

    virtual bool init() = m1 0x631dc0, imac 0x71ecc0;

    virtual bool init(cocos2d::CCNode* pStencil) = m1 0x631dd0, imac 0x71ece0;
    virtual void onEnter() = m1 0x631e40, imac 0x71ed50;
    virtual void onEnterTransitionDidFinish() = m1 0x631e6c, imac 0x71ed80;
    virtual void onExit() = m1 0x631ec8, imac 0x71ede0;
    virtual void onExitTransitionDidStart() = m1 0x631e98, imac 0x71edb0;
    virtual void visit() = m1 0x631ef8, imac 0x71ee10;

    cocos2d::CCNode* getStencil() const;
    void setStencil(cocos2d::CCNode* pStencil);

    float getAlphaThreshold() const;
    void setAlphaThreshold(float fAlphaThreshold);

    bool isInverted() const;
    void setInverted(bool bInverted);
}

[[link(win, android)]]
class cocos2d::CCDrawNode : cocos2d::CCNodeRGBA {
    static cocos2d::CCDrawNode* create();

    cocos2d::ccBlendFunc getBlendFunc() const;

    void setBlendFunc(cocos2d::ccBlendFunc const&);

    // CCDrawNode(cocos2d::CCDrawNode const&);
    CCDrawNode();
    virtual ~CCDrawNode();
    void clear();
    bool drawCircle(cocos2d::CCPoint const&, float, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&, unsigned int);
    void drawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::ccColor4F const&) = ios inline {
        auto vertices = new CCPoint[p4 + 1];
        if (p4 != 0) {
            auto factor = 0.f;
            for (int i = 0; i <= p4; i++) {
                auto& vertex = vertices[i];
                auto result = 1.f - factor;
                auto num1 = powf(result, 2.f) * 3.f * factor;
                auto num2 = result * 3.f * factor * factor;
                auto num3 = factor * factor * factor;
                vertex.x = p0.x * powf(result, 3.f) + p1.x * num1 + p2.x * num2 + p3.x * num3;
                vertex.y = p0.y * powf(result, 3.f) + p1.y * num1 + p2.y * num2 + p3.y * num3;
            }
        }
        vertices[p4] = p3;
        this->drawPolygon(vertices, p4 + 1, { 0.f, 0.f, 0.f, 0.f }, 2.f, p5);
        delete[] vertices;
    }
    bool drawDot(cocos2d::CCPoint const& pos, float radius, cocos2d::ccColor4F const& color) = ios inline {
        if (m_bUseArea && pos.x + radius < m_fMinAreaX || pos.x - radius > m_fMaxAreaX || pos.y + radius < m_fMinAreaY || pos.y - radius > m_fMaxAreaY) return false;

        unsigned int vertex_count = 2*3;
        cocos2d::CCDrawNode::ensureCapacity(vertex_count);

        cocos2d::ccV2F_C4B_T2F a = {{pos.x - radius, pos.y - radius}, cocos2d::ccc4BFromccc4F(color), {-1.0, -1.0} };
        cocos2d::ccV2F_C4B_T2F b = {{pos.x - radius, pos.y + radius}, cocos2d::ccc4BFromccc4F(color), {-1.0,  1.0} };
        cocos2d::ccV2F_C4B_T2F c = {{pos.x + radius, pos.y + radius}, cocos2d::ccc4BFromccc4F(color), { 1.0,  1.0} };
        cocos2d::ccV2F_C4B_T2F d = {{pos.x + radius, pos.y - radius}, cocos2d::ccc4BFromccc4F(color), { 1.0, -1.0} };

        cocos2d::ccV2F_C4B_T2F_Triangle *triangles = (cocos2d::ccV2F_C4B_T2F_Triangle *)(m_pBuffer + m_nBufferCount);
        cocos2d::ccV2F_C4B_T2F_Triangle triangle0 = {a, b, c};
        cocos2d::ccV2F_C4B_T2F_Triangle triangle1 = {a, c, d};
        triangles[0] = triangle0;
        triangles[1] = triangle1;

        m_nBufferCount += vertex_count;

        m_bDirty = true;
        return true;
    }
    bool drawLines(cocos2d::CCPoint*, unsigned int, float, cocos2d::ccColor4F const&);
    bool drawPolygon(cocos2d::CCPoint*, unsigned int, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&);
    void drawPreciseCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::ccColor4F const&) = ios inline {
        auto d01 = ccpDistance(p0, p1);
        auto d12 = ccpDistance(p1, p2);
        auto d23 = ccpDistance(p3, p2);
        auto l = d01 + d12 + d23;
        auto t1 = d01 / l;
        auto t2 = (d01 + d12) / l;
        auto u2 = 1.f - t2;
        auto u1 = 1.f - t1;
        auto a1 = u1 * t1 * u1 * 3.f;
        auto b1 = u1 * t1 * t1 * 3.f;
        auto a2 = u2 * t2 * u2 * 3.f;
        auto b2 = u2 * t2 * t2 * 3.f;
        auto rx = p1.x - powf(u1, 3.f) * p0.x - powf(t1, 3.f) * p3.x;
        auto ry = p1.y - powf(u1, 3.f) * p0.y - powf(t1, 3.f) * p3.y;
        auto ratio = a1 / a2;
        auto denom = b1 - (b2 * a1) / a2;
        auto x = (rx - (p2.x - powf(u2, 3.f) * p0.x - powf(t2, 3.f) * p3.x) * ratio) / denom;
        auto y = (ry - (p2.y - powf(t1, 3.f) * p0.y - powf(t2, 3.f) * p3.y) * ratio) / denom;
        this->drawCubicBezier(p0, { (rx - x * b1) / a1, (ry - y * b1) / a1 }, { x, y }, p3, p4, p5);
    }
    bool drawRect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&);
    bool drawRect(cocos2d::CCRect const&, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&);
    bool drawSegment(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::ccColor4F const&);
    void ensureCapacity(unsigned int);
    void listenBackToForeground(cocos2d::CCObject*) = ios inline {
        this->init();
    }
    void render();

    void disableDrawArea();
    void enableDrawArea(cocos2d::CCRect&);
    [[since("4.10.1")]]
    bool is_circle_on_screen(cocos2d::CCRect const&, cocos2d::CCPoint const&, float) = ios inline {
        return p1.x + p2 >= m_fMinAreaX && p1.x - p2 <= m_fMaxAreaX && p1.y + p2 >= m_fMinAreaY && p1.y - p2 <= m_fMaxAreaY;
    }
    [[since("4.10.1")]]
    bool is_segment_on_screen(cocos2d::CCRect const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);

    virtual bool init() = m1 0x536180, imac 0x610940;
    virtual void draw() = m1 0x536344, imac 0x610b30;

    uint32_t m_uVao;
    uint32_t m_uVbo;
    uint32_t m_uBufferCapacity;
    int m_nBufferCount;
    cocos2d::ccV2F_C4B_T2F* m_pBuffer;
    cocos2d::ccBlendFunc m_sBlendFunc;
    bool m_bDirty;
    bool m_bUseArea;
    cocos2d::CCRect m_rDrawArea;
    float m_fMinAreaX;
    float m_fMaxAreaX;
    float m_fMaxAreaY;
    float m_fMinAreaY;
}

[[link(win, android)]]
class cocos2d::CCSpriteBatchNode : cocos2d::CCNode, cocos2d::CCTextureProtocol {
    static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int);
    static cocos2d::CCSpriteBatchNode* create(char const* fileImage, unsigned int capacity);

    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int);
    bool initWithFile(char const*, unsigned int);
    void removeChildAtIndex(unsigned int, bool);
    void insertChild(cocos2d::CCSprite*, unsigned int);
    void appendChild(cocos2d::CCSprite*);
    void removeSpriteFromAtlas(cocos2d::CCSprite*);
    unsigned int rebuildIndexInOrder(cocos2d::CCSprite*, unsigned int);
    unsigned int highestAtlasIndexInChild(cocos2d::CCSprite*);
    unsigned int lowestAtlasIndexInChild(cocos2d::CCSprite*);
    unsigned int atlasIndexForChild(cocos2d::CCSprite*, int);
    void reorderBatch(bool);
    void insertQuadFromSprite(cocos2d::CCSprite*, unsigned int);
    void updateQuadFromSprite(cocos2d::CCSprite*, unsigned int);
    cocos2d::CCSpriteBatchNode* addSpriteWithoutQuad(cocos2d::CCSprite*, unsigned int, int);
    int getAtlasCapacity();
    int getUsedAtlasCapacity();
    void increaseAtlasCapacity(unsigned int);
    void increaseAtlasCapacity();
    void manualSortAllChildren();
    void updateAtlasIndex(cocos2d::CCSprite*, int*);
    void swap(int, int);
    void updateBlendFunc();

    CCSpriteBatchNode();
    virtual ~CCSpriteBatchNode();

    virtual bool init() = m1 0x13c72c, imac 0x176230;
    virtual void addChild(cocos2d::CCNode*) = m1 0x13cbac, imac 0x1766e0;
    virtual void addChild(cocos2d::CCNode*, int) = m1 0x13cbb0, imac 0x1766f0;
    virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x13c95c, imac 0x1764a0;
    virtual void removeChild(cocos2d::CCNode*, bool) = m1 0x13cc28, imac 0x176760;
    virtual void removeAllChildrenWithCleanup(bool) = m1 0x13ce8c, imac 0x176a40;
    virtual void reorderChild(cocos2d::CCNode*, int) = m1 0x13cbb4, imac 0x176700;
    virtual void sortAllChildren() = m1 0x13cf2c, imac 0x176af0;
    virtual void draw() = m1 0x13d4b8, imac 0x1772b0;
    virtual void visit() = m1 0x13c8ac, imac 0x176400;

    virtual void setBlendFunc(cocos2d::ccBlendFunc) = m1 0x13dd24, imac 0x177b20;
    virtual cocos2d::ccBlendFunc getBlendFunc() = m1 0x13dd34, imac 0x177b40;
    virtual cocos2d::CCTexture2D* getTexture() = m1 0x13dd44, imac 0x177b60;
    virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x13dd64, imac 0x177b90;

    cocos2d::CCTextureAtlas* m_pobTextureAtlas;
    cocos2d::ccBlendFunc m_blendFunc;
    cocos2d::CCArray* m_pobDescendants;
    bool m_bManualSortChildren;
    bool m_bManualSortAllChildrenDirty;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrame : cocos2d::CCObject {
    static cocos2d::CCSpriteFrame* create(char const* filename, cocos2d::CCRect const& rect) = ios inline {
    	CCRect rectInPixels = CC_RECT_POINTS_TO_PIXELS( rect );
    	return create(filename, rect, false, CCPointZero, rectInPixels.size);
    }
    static cocos2d::CCSpriteFrame* create(char const* filename, cocos2d::CCRect const& rect, bool rotated, cocos2d::CCPoint const& offset, cocos2d::CCSize const& size) = ios inline {
        auto ret = new CCSpriteFrame();
        ret->initWithTextureFilename(filename, rect, rotated, offset, size);
        ret->autorelease();
        return ret;
    }
    static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D* pobTexture, cocos2d::CCRect const& rect) = ios inline {
        CCSpriteFrame *pSpriteFrame = new CCSpriteFrame();;
        pSpriteFrame->initWithTexture(pobTexture, rect);
        pSpriteFrame->autorelease();
    
        return pSpriteFrame;
    }
    static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);

    bool initWithTexture(cocos2d::CCTexture2D* pobTexture, cocos2d::CCRect const& rect) = ios inline {
        CCRect rectInPixels = CC_RECT_POINTS_TO_PIXELS(rect);
        return initWithTexture(pobTexture, rectInPixels, false, CCPointZero, rectInPixels.size);
    }
    bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);
    bool initWithTextureFilename(char const* filename, cocos2d::CCRect const& rect) = ios inline {
        CCRect rectInPixels = CC_RECT_POINTS_TO_PIXELS( rect );
    	return initWithTextureFilename(filename, rectInPixels, false, CCPointZero, rectInPixels.size);
    }
    bool initWithTextureFilename(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&);

    cocos2d::CCPoint const& getOffset();
    cocos2d::CCPoint const& getOffsetInPixels();
    // cocos2d::CCSize const& getOriginalSize();
    // cocos2d::CCSize const& getOriginalSizeInPixels();
    // cocos2d::CCRect const& getRect();
    // cocos2d::CCRect const& getRectInPixels();
    cocos2d::CCTexture2D* getTexture();

    void setOffset(cocos2d::CCPoint const&) = ios inline {
        m_obOffset = p0;
        m_obOffsetInPixels = CC_POINT_POINTS_TO_PIXELS(m_obOffset);
    }
    void setOffsetInPixels(cocos2d::CCPoint const&) = ios inline {
        m_obOffsetInPixels = p0;
        m_obOffset = CC_POINT_PIXELS_TO_POINTS(m_obOffsetInPixels);
    }
    // void setOriginalSize(cocos2d::CCSize const&);
    // void setOriginalSizeInPixels(cocos2d::CCSize const&);
    void setRect(cocos2d::CCRect const&) = ios inline {
        m_obRect = p0;
        m_obRectInPixels = CC_RECT_POINTS_TO_PIXELS(m_obRect);
    }
    void setRectInPixels(cocos2d::CCRect const&) = ios inline {
        m_obRectInPixels = p0;
        m_obRect = CC_RECT_PIXELS_TO_POINTS(p0);
    }
    // void setRotated(bool);
    void setTexture(cocos2d::CCTexture2D*);

    // CCSpriteFrame(cocos2d::CCSpriteFrame const&);
    [[since("4.2.1")]]
    virtual ~CCSpriteFrame();

    // bool isRotated();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x2e3a80, imac 0x357cc0;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrameCache : cocos2d::CCObject {
    static cocos2d::CCSpriteFrameCache* sharedSpriteFrameCache();
    static void purgeSharedSpriteFrameCache();

    bool init();

    // CCSpriteFrameCache();
    // CCSpriteFrameCache(cocos2d::CCSpriteFrameCache const&);
    virtual ~CCSpriteFrameCache();

    void addSpriteFrame(cocos2d::CCSpriteFrame* pobFrame, char const* pszFrameName) = ios inline {
        m_pSpriteFrames->setObject(pobFrame, pszFrameName);
    }
    void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*);
    void addSpriteFramesWithFile(char const* plist, char const* textureFilename) = ios inline {
        if (auto texture = CCTextureCache::sharedTextureCache()->addImage(textureFilename, false)) {
            this->addSpriteFramesWithFile(plist, texture);
        }
    }
    void addSpriteFramesWithFile(char const*);
    void addSpriteFramesWithFile(char const* plist, cocos2d::CCTexture2D* texture) = ios inline {
        this->addSpriteFramesWithDictionary(CCContentManager::sharedManager()->addDict(plist, false), texture);
    }
    void removeSpriteFrameByName(char const* name) = ios inline {
        if (!name) return;
        if (auto key = static_cast<CCString*>(m_pSpriteFramesAliases->objectForKey(name))) {
            m_pSpriteFrames->removeObjectForKey(key->getCString());
            m_pSpriteFramesAliases->removeObjectForKey(name);
        }
        else m_pSpriteFrames->removeObjectForKey(name);
        m_pLoadedFileNames->clear();
    }
    void removeSpriteFrames();
    void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*);
    void removeSpriteFramesFromFile(char const*);
    void removeSpriteFramesFromTexture(cocos2d::CCTexture2D*);
    void removeUnusedSpriteFrames();
    cocos2d::CCSpriteFrame* spriteFrameByName(char const*);
}

[[link(win, android)]]
class cocos2d::CCString : cocos2d::CCObject {
    static cocos2d::CCString* createWithContentsOfFile(char const*);
    static cocos2d::CCString* createWithData(unsigned char const*, unsigned long);
    // static cocos2d::CCString* createWithFormat(char const*, ...);

    char const* getCString() const;

    bool boolValue() const;
    int intValue() const;
    float floatValue() const;
    unsigned int uintValue() const = ios inline {
        if (this->length()) return 0;
        return atoi(m_sString.c_str());
    }
    double doubleValue() const;
    unsigned int length() const;
    int compare(char const*) const = ios inline {
        return strcmp(this->getCString(), p0);
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b1728, imac 0x7aabe0;
    virtual bool isEqual(cocos2d::CCObject const*) = m1 0x6b1828, imac 0x7aace0;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = m1 0x6b1c18, imac 0x7ab150;

    gd::string m_sString; 
}

[[link(win, android)]]
class cocos2d::CCMenuItem : cocos2d::CCNodeRGBA {
    virtual ~CCMenuItem();
    static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
    static cocos2d::CCMenuItem* create();

    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

    // int getScriptTapHandler();

    void setTarget(cocos2d::CCObject* rec, cocos2d::SEL_MenuHandler selector) = ios inline {
    	m_pListener = rec;
    	m_pfnSelector = selector;
    }

    // CCMenuItem(cocos2d::CCMenuItem const&);
    // CCMenuItem();
    cocos2d::CCRect rect();

    virtual void activate() = m1 0x3401a0, imac 0x3be550;
    virtual void selected() = m1 0x34011c, imac 0x3be4c0;
    virtual void unselected() = m1 0x340128, imac 0x3be4d0;
    virtual void registerScriptTapHandler(int) = m1 0x340130, imac 0x3be4e0;
    virtual void unregisterScriptTapHandler() = m1 0x340160, imac 0x3be510;
    virtual bool isEnabled() = m1 0x340228, imac 0x3be5d0;
    virtual void setEnabled(bool) = m1 0x340220, imac 0x3be5c0;
    virtual bool isSelected() = m1 0x34024c, imac 0x3be630;

    bool m_bSelected;
    bool m_bEnabled;
    cocos2d::CCObject* m_pListener;
    cocos2d::SEL_MenuHandler m_pfnSelector;
    int m_nScriptTapHandler;
    float m_fSizeMult;
}

[[link(win, android)]]
class cocos2d::CCMenuItemSprite : cocos2d::CCMenuItem {
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*) = ios inline {
        return create(p0, p1, p2, nullptr, nullptr);
    }
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = ios inline {
        return create(p0, p1, nullptr, p2, p3);
    }
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = ios inline {
        auto ret = new CCMenuItemSprite();
        if (ret->initWithNormalSprite(p0, p1, p2, p3, p4)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool initWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

    virtual void selected() = m1 0x34173c, imac 0x3bfb90;
    virtual void unselected() = m1 0x3417c8, imac 0x3bfc30;
    virtual void setEnabled(bool) = m1 0x341848, imac 0x3bfcb0;
    virtual cocos2d::CCNode* getNormalImage() = m1 0x341260, imac 0x3bf6c0;
    virtual void setNormalImage(cocos2d::CCNode*) = m1 0x341268, imac 0x3bf6d0;
    virtual cocos2d::CCNode* getSelectedImage() = m1 0x341334, imac 0x3bf790;
    virtual void setSelectedImage(cocos2d::CCNode*) = m1 0x34133c, imac 0x3bf7a0;
    virtual cocos2d::CCNode* getDisabledImage() = m1 0x3413e4, imac 0x3bf840;
    virtual void setDisabledImage(cocos2d::CCNode*) = m1 0x3413ec, imac 0x3bf850;
    virtual void updateImagesVisibility() = m1 0x341868, imac 0x3bfcd0;

    cocos2d::CCNode* m_pNormalImage;
    cocos2d::CCNode* m_pSelectedImage;
    cocos2d::CCNode* m_pDisabledImage;
}

[[link(win, android)]]
class cocos2d::CCMenuItemImage : cocos2d::CCMenuItemSprite {
    static cocos2d::CCMenuItemImage* create() = ios inline {
        auto ret = new CCMenuItemImage();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCMenuItemImage* create(char const*, char const*) = ios inline {
        return create(p0, p1, nullptr, nullptr, nullptr);
    }
    static cocos2d::CCMenuItemImage* create(char const*, char const*, char const*) = ios inline {
        auto ret = new CCMenuItemImage();
        if (ret->initWithNormalImage(p0, p1, p2, nullptr, nullptr)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCMenuItemImage* create(char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = ios inline {
        return create(p0, p1, nullptr, p2, p3);
    }
    static cocos2d::CCMenuItemImage* create(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = ios inline {
        auto ret = new CCMenuItemImage();
        if (ret->initWithNormalImage(p0, p1, p2, p3, p4)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool initWithNormalImage(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
    void setNormalSpriteFrame(cocos2d::CCSpriteFrame*) = ios inline {
        this->setNormalImage(CCSprite::createWithSpriteFrame(p0));
    }
    void setSelectedSpriteFrame(cocos2d::CCSpriteFrame*) = ios inline {
        this->setSelectedImage(CCSprite::createWithSpriteFrame(p0));
    }
    void setDisabledSpriteFrame(cocos2d::CCSpriteFrame*) = ios inline {
        this->setDisabledImage(CCSprite::createWithSpriteFrame(p0));
    }

    virtual bool init() = m1 0x341a94, imac 0x3bff00;
}

[[link(win, android)]]
class cocos2d::CCMenu : cocos2d::CCLayerRGBA {
    // static cocos2d::CCMenu* create(cocos2d::CCMenuItem*, ...);
    static cocos2d::CCMenu* create();
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

    virtual bool init() = m1 0x69b3c0, imac 0x792b00;
    virtual void addChild(cocos2d::CCNode*) = m1 0x69b3c8, imac 0x792b10;
    virtual void addChild(cocos2d::CCNode*, int) = m1 0x69b3cc, imac 0x792b20;
    virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x69b3d0, imac 0x792b30;
    virtual void removeChild(cocos2d::CCNode*, bool) = m1 0x69b420, imac 0x792ba0;
    virtual void onExit() = m1 0x69b3d4, imac 0x792b40;
    virtual void registerWithTouchDispatcher() = m1 0x69b550, imac 0x792ca0;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x69b5a0, imac 0x792cf0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x69b878, imac 0x792fa0;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x69b788, imac 0x792ec0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x69b810, imac 0x792f40;

    bool m_bEnabled;
    cocos2d::tCCMenuState m_eState;
    cocos2d::CCMenuItem* m_pSelectedItem;
}

[[link(win, android)]]
class cocos2d::CCRotateBy : cocos2d::CCActionInterval {
    static cocos2d::CCRotateBy* create(float, float);
    static cocos2d::CCRotateBy* create(float, float, float);

    bool initWithDuration(float, float) = ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_fAngleX = p1;
        m_fAngleY = p1;
        return true;
    }
    bool initWithDuration(float, float, float) = ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_fAngleX = p1;
        m_fAngleY = p2;
        return true;
    }

    // CCRotateBy(cocos2d::CCRotateBy const&);
    // CCRotateBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x33a364, imac 0x3b7a20;
    virtual void update(float) = m1 0x33a4b4, imac 0x3b7b80;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33a45c, imac 0x3b7b30;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x33a540, imac 0x3b7bf0;
}

[[link(win, android)]]
class cocos2d::CCRotateTo : cocos2d::CCActionInterval {
    static cocos2d::CCRotateTo* create(float, float);
    static cocos2d::CCRotateTo* create(float fDuration, float fDeltaAngleX, float fDeltaAngleY) = ios inline {
        CCRotateTo* pRotateTo = new CCRotateTo();
        pRotateTo->initWithDuration(fDuration, fDeltaAngleX, fDeltaAngleY);
        pRotateTo->autorelease();

        return pRotateTo;
    }

    bool initWithDuration(float, float) = ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_fDstAngleX = p1;
        m_fDstAngleY = p1;
        return true;
    }

    // CCRotateTo(cocos2d::CCRotateTo const&);
    // CCRotateTo();

    virtual bool initWithDuration(float fDuration, float fDeltaAngleX, float fDeltaAngleY) = m1 0x339f48, imac 0x3b7530;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x339f74, imac 0x3b7570;
    virtual void update(float) = m1 0x33a13c, imac 0x3b77b0;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33a05c, imac 0x3b7660;
}

[[link(win, android)]]
class cocos2d::CCDelayTime : cocos2d::CCActionInterval {
    static cocos2d::CCDelayTime* create(float);

    // CCDelayTime(cocos2d::CCDelayTime const&);
    // CCDelayTime();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x33d8c0, imac 0x3bb750;
    virtual void update(float) = m1 0x33d990, imac 0x3bb820;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x33d994, imac 0x3bb830;
}

[[link(win, android)]]
class cocos2d::CCActionTween {
    static cocos2d::CCActionTween* create(float, int, float, float);
    static cocos2d::CCActionTween* create(float, char const*, float, float);

    bool initWithDuration(float, char const*, float, float) = ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_strKey = p1;
        // m_nIntTag = 0;
        m_fFrom = p2;
        m_fTo = p3;
        return true;
    }

    // CCActionTween(cocos2d::CCActionTween const&);
    // CCActionTween();
    void updateTargetValue(float) = ios inline {
        m_fTo = p0;
        m_fDelta = p0 - m_fFrom;
    }

    virtual void update(float) = m1 0x6ac100, imac 0x7a5060;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x6ac0c4, imac 0x7a5010;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x6ac154, imac 0x7a50d0;
}

[[link(win, android)]]
class cocos2d::CCTextFieldTTF : cocos2d::CCLabelTTF, cocos2d::CCIMEDelegate {
    CCTextFieldTTF();
    virtual ~CCTextFieldTTF();

    static cocos2d::CCTextFieldTTF* textFieldWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize) = ios inline {
        auto ret = new CCTextFieldTTF();
        if (ret->initWithPlaceHolder("", dimensions, alignment, fontName, fontSize)) {
            ret->autorelease();
            if (placeholder) ret->setPlaceHolder(placeholder);
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCTextFieldTTF* textFieldWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize);

    bool initWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize) = ios inline {
        if (placeholder) {
            CC_SAFE_DELETE(m_pPlaceHolder);
            m_pPlaceHolder = new std::string(placeholder);
        }
        return CCLabelTTF::initWithString(m_pPlaceHolder->c_str(), fontName, fontSize, dimensions, alignment);
    }
    bool initWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize) = ios inline {
        if (placeholder) {
            CC_SAFE_DELETE(m_pPlaceHolder);
            m_pPlaceHolder = new std::string(placeholder);
        }
        return CCLabelTTF::initWithString(m_pPlaceHolder->c_str(), fontName, fontSize);
    }

    // void setDelegate(cocos2d::CCTextFieldDelegate* var);

    virtual void draw() = m1 0x21e86c, imac 0x27c6f0;
    virtual const cocos2d::ccColor3B& getColorSpaceHolder() = m1 0x21e928, imac 0x27c790;
    virtual void setColorSpaceHolder(const cocos2d::ccColor3B& color) = m1 0x21e930, imac 0x27c7a0;
    virtual const char* getPlaceHolder() = m1 0x21ed34, imac 0x27cc10;
    virtual void setPlaceHolder(const char* text) = m1 0x21ebe8, imac 0x27cab0;
    virtual void setSecureTextEntry(bool value) = m1 0x21ed4c, imac 0x27cc30;
    virtual bool isSecureTextEntry() = m1 0x21ed98, imac 0x27cc70;

    virtual void setString(const char* text) = m1 0x21e944, imac 0x27c7c0;
    virtual const char* getString() = m1 0x21ebb8, imac 0x27ca70;

    virtual bool attachWithIME() = m1 0x21dfcc, imac 0x27be70;
    virtual bool detachWithIME() = m1 0x21e058, imac 0x27bef0;
    virtual bool canAttachWithIME() = m1 0x21e0e4, imac 0x27bf70;
    virtual bool canDetachWithIME() = m1 0x21e150, imac 0x27bfc0;
    virtual void insertText(const char* text, int len, cocos2d::enumKeyCodes keyCode) = m1 0x21e1bc, imac 0x27c010;
    virtual void deleteBackward() = m1 0x21e534, imac 0x27c350;
    [[since("4.10.1")]]
    virtual void deleteForward() = m1 0x21e4d4, imac 0x27c2f0;
    virtual const char* getContentText() = m1 0x21e83c, imac 0x27c6b0;
}

[[link(win, android)]]
class cocos2d {
    static cocos2d::CCAffineTransform CCAffineTransformConcat(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&);
    static bool CCAffineTransformEqualToTransform(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&) = ios inline {
        return p0.a == p1.a && p0.b == p1.b && p0.c == p1.c && p0.d == p1.d && p0.tx == p1.tx && p0.ty == p1.ty;
    }
    static cocos2d::CCAffineTransform CCAffineTransformInvert(cocos2d::CCAffineTransform const&);
    static cocos2d::CCAffineTransform CCAffineTransformMakeIdentity();
    static cocos2d::CCAffineTransform CCAffineTransformRotate(cocos2d::CCAffineTransform const&, float);
    static cocos2d::CCAffineTransform CCAffineTransformScale(cocos2d::CCAffineTransform const&, float, float) = ios inline {
        return CCAffineTransformMake(p0.a * p1, p0.b * p1, p0.c * p2, p0.d * p2, p0.tx, p0.ty);
    }
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
    static cocos2d::CCSize __CCSizeApplyAffineTransform(cocos2d::CCSize const&, cocos2d::CCAffineTransform const&) = ios inline {
        return { p1.a * p0.width + p1.c * p0.height, p1.b * p0.width + p1.d * p0.height };
    }
    static cocos2d::CCPoint ccCardinalSplineAt(cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, float, float);
    static void ccDrawCardinalSpline(cocos2d::CCPointArray*, float, unsigned int);
    static void ccDrawCatmullRom(cocos2d::CCPointArray*, unsigned int);
    static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool);
    static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool, float, float);
    static void ccDrawCircleSegment(cocos2d::CCPoint const&, float, float, float, unsigned int, bool, float, float);
    static void ccDrawColor4B(unsigned char, unsigned char, unsigned char, unsigned char);
    static void ccDrawColor4F(float, float, float, float);
    static void ccDrawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
    static void ccDrawFilledCircle(cocos2d::CCPoint const&, float, float, unsigned int);
    static void ccDrawFree();
    static void ccDrawInit();
    static void ccDrawLine(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static void ccDrawLines(cocos2d::CCPoint const*, unsigned int);
    static void ccDrawPoint(cocos2d::CCPoint const&);
    static void ccDrawPoints(cocos2d::CCPoint const*, unsigned int);
    static void ccDrawPoly(cocos2d::CCPoint const*, unsigned int, bool);
    static void ccDrawQuadBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
    static void ccDrawRect(cocos2d::CCPoint, cocos2d::CCPoint);
    static void ccDrawSolidPoly(cocos2d::CCPoint const*, unsigned int, cocos2d::ccColor4F);
    static void ccDrawSolidRect(cocos2d::CCPoint origin, cocos2d::CCPoint destination, cocos2d::ccColor4F color) = ios inline {
    	CCPoint vertices[] = {
    		origin,
    		CCPoint{destination.x, origin.y},
    		destination,
    		CCPoint{origin.x, destination.y}
    	};

    	ccDrawSolidPoly(vertices, 4, color);
    }
    static void ccGLBindTexture2D(unsigned int);
    static void ccGLBindTexture2DN(unsigned int, unsigned int);
    static void ccGLBindVAO(unsigned int);
    static void ccGLBlendFunc(unsigned int, unsigned int);
    static void ccGLBlendResetToCache() = ios inline {
        glBlendEquation(GL_FUNC_ADD);
        auto sfactor = *reinterpret_cast<GLenum*>(geode::base::get() + 0x83f124);
        auto dfactor = *reinterpret_cast<GLenum*>(geode::base::get() + 0x83f128);
        if (sfactor == GL_ONE && dfactor == GL_ZERO) {
            glDisable(GL_BLEND);
        }
        else {
            glEnable(GL_BLEND);
            glBlendFunc(sfactor, dfactor);
        }
    }
    static void ccGLDeleteProgram(unsigned int);
    static void ccGLDeleteTexture(unsigned int);
    static void ccGLDeleteTextureN(unsigned int, unsigned int) = ios inline {
        auto currentTexture = reinterpret_cast<GLuint*>(geode::base::get() + 0x83f0e4 + p0 * 4);
        if (*currentTexture == p1) *currentTexture = -1;
        glDeleteTextures(1, &p1);
    }
    static void ccGLEnable(cocos2d::ccGLServerState);
    static void ccGLEnableVertexAttribs(unsigned int);
    static void ccGLInvalidateStateCache();
    static void ccGLUseProgram(unsigned int);
    static void ccPointSize(float);
    static void ccSetProjectionMatrixDirty();
    static bool ccVertexLineIntersect(float, float, float, float, float, float, float, float, float*);
    static void ccVertexLineToPolygon(cocos2d::CCPoint*, float, cocos2d::ccVertex2F*, unsigned int, unsigned int);
    static gd::vector<unsigned short> cc_utf16_vec_from_utf16_str(unsigned short const*);
    static void cc_utf8_trim_ws(gd::vector<unsigned short>*);
    static int cc_wcslen(unsigned short const*);
    static float ccpAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpAngleSigned(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static cocos2d::CCPoint ccpClamp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static cocos2d::CCPoint ccpCompMult(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpDistance(cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static cocos2d::CCPoint ccpForAngle(float);
    static cocos2d::CCPoint ccpFromSize(cocos2d::CCSize const& size) = ios inline {
        return size;
    }
    static bool ccpFuzzyEqual(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
    static cocos2d::CCPoint ccpIntersectPoint(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpLength(cocos2d::CCPoint const&);
    static cocos2d::CCPoint ccpLerp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
    static bool ccpLineIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, float*, float*);
    static cocos2d::CCPoint ccpNormalize(cocos2d::CCPoint const&);
    static cocos2d::CCPoint ccpRotateByAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
    static bool ccpSegmentIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpToAngle(cocos2d::CCPoint const& point) = ios inline {
        return point.getAngle();
    }
    static char const* cocos2dVersion();
    static float clampf(float, float, float);
    static void CCLog(char const*);
    static bool isspace_unicode(unsigned short);
    static long cc_utf8_strlen(char const*, int);
    static unsigned int cc_utf8_find_last_not_char(gd::vector<unsigned short>, unsigned short);
    static unsigned short* cc_utf8_to_utf16(char const*, int*);
    static char* cc_utf16_to_utf8(unsigned short const*, long, long*, long*);
    // static cocos2d::CCPoint ccpCompOp(cocos2d::CCPoint const&, float (float)*);
}

[[link(win, android)]]
class DS_Dictionary {
    DS_Dictionary();
    void addBoolValuesToMapForKey(gd::map<gd::string, bool>&, char const*, bool);
    void addBoolValuesToMapForKeySpecial(gd::map<gd::string, bool>&, char const*, bool);
    void checkCompatibility();
    gd::string cleanStringWhiteSpace(gd::string const&);
    static void copyFile(char const*, char const*);
    cocos2d::CCObject* decodeObjectForKey(char const*, bool, int);
    gd::vector<gd::string> getAllKeys();
    cocos2d::CCArray* getArrayForKey(char const*, bool);
    bool getBoolForKey(char const*);
    cocos2d::CCDictionary* getDictForKey(char const*, bool);
    float getFloatForKey(char const*);
    unsigned int getIndexOfKey(char const*);
    unsigned int getIndexOfKeyWithClosestAlphaNumericalMatch(char const*);
    int getIntegerForKey(char const*);
    gd::string getKey(unsigned int);
    unsigned int getNumKeys();
    cocos2d::CCObject* getObjectForKey(char const*);
    gd::vector<cocos2d::CCRect> getRectArrayForKey(char const*);
    cocos2d::CCRect getRectForKey(char const*);
    gd::vector<gd::string> getStringArrayForKey(char const*);
    gd::string getStringForKey(char const*);
    gd::vector<cocos2d::CCPoint> getVec2ArrayForKey(char const*);
    cocos2d::CCPoint getVec2ForKey(char const*);
    bool loadRootSubDictFromCompressedFile(char const*);
    bool loadRootSubDictFromFile(char const*);
    bool loadRootSubDictFromString(gd::string const&);
    bool rectFromString(gd::string const&, cocos2d::CCRect&);
    void removeAllKeys();
    void removeKey(unsigned int);
    void removeKey(char const*);
    bool saveRootSubDictToCompressedFile(char const*);
    bool saveRootSubDictToFile(char const*);
    gd::string saveRootSubDictToString();
    void setArrayForKey(char const*, cocos2d::CCArray*);
    void setBoolForKey(char const*, bool, bool);
    void setBoolForKey(char const*, bool);
    void setBoolMapForKey(char const*, gd::map<gd::string, bool>&);
    void setDictForKey(char const*, cocos2d::CCDictionary*);
    void setFloatForKey(char const*, float);
    void setFloatForKey(char const*, float, bool);
    void setIntegerForKey(char const*, int);
    void setIntegerForKey(char const*, int, bool);
    void setObjectForKey(char const*, cocos2d::CCObject*);
    void setRectArrayForKey(char const*, gd::vector<cocos2d::CCRect> const&);
    void setRectArrayForKey(char const*, gd::vector<cocos2d::CCRect> const&, bool);
    void setRectForKey(char const*, cocos2d::CCRect const&);
    void setRectForKey(char const*, cocos2d::CCRect const&, bool);
    void setStringArrayForKey(char const*, gd::vector<gd::string> const&);
    void setStringArrayForKey(char const*, gd::vector<gd::string> const&, bool);
    void setStringForKey(char const*, gd::string const&);
    void setStringForKey(char const*, gd::string const&, bool);
    void setSubDictForKey(char const*) = ios inline {
        this->setSubDictForKey(p0, false, false);
    }
    void setSubDictForKey(char const*, bool, bool);
    void setVec2ArrayForKey(char const*, gd::vector<cocos2d::CCPoint> const&);
    void setVec2ArrayForKey(char const*, gd::vector<cocos2d::CCPoint> const&, bool);
    void setVec2ForKey(char const*, cocos2d::CCPoint const&);
    void setVec2ForKey(char const*, cocos2d::CCPoint const&, bool);
    void split(gd::string const&, char const*, gd::vector<gd::string>&);
    bool splitWithForm(gd::string const&, gd::vector<gd::string>&);
    void stepBackToRootSubDict();
    bool stepIntoSubDictWithKey(char const*);
    void stepOutOfSubDict() = ios inline {
        if (dictTree.size() > 1) dictTree.pop_back();
    }
    bool vec2FromString(gd::string const&, cocos2d::CCPoint&);
}

[[link(win, android)]]
class CCContentManager : cocos2d::CCObject {
    static CCContentManager* sharedManager();

    cocos2d::CCDictionary* addDict(char const*, bool);
    cocos2d::CCDictionary* addDictDS(char const*);
    void clearCache();
    bool init() = ios inline {
        m_pDictCache = cocos2d::CCDictionary::create();
        m_pDictCache->retain();
        return true;
    }
}

[[link(win, android)]]
class ObjectDecoder : cocos2d::CCNode {
    // virtual ~ObjectDecoder();

    static ObjectDecoder* sharedDecoder();

    cocos2d::CCObject* getDecodedObject(int, DS_Dictionary*);

    virtual bool init() = m1 0x69a5cc, imac 0x791df0;
}

[[link(win, android)]]
class cocos2d::extension::CCControl : cocos2d::CCLayerRGBA {
    static cocos2d::extension::CCControl* create() = ios inline {
        auto ret = new CCControl();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    CCControl();
    virtual ~CCControl();

    bool hasVisibleParents() = ios inline {
        for (auto parent = this->getParent(); parent != nullptr; parent = parent->getParent()) {
            if (!parent->isVisible()) return false;
        }
        return true;
    }
    cocos2d::CCArray* dispatchListforControlEvent(cocos2d::extension::CCControlEvent);
    void addTargetWithActionForControlEvent(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent);
    void removeTargetWithActionForControlEvent(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent);
    void addHandleOfControlEvent(int, cocos2d::extension::CCControlEvent) = ios inline {
        m_mapHandleOfControlEvent[p1] = p0;
    }
    void removeHandleOfControlEvent(cocos2d::extension::CCControlEvent) = ios inline {
        if (auto it = m_mapHandleOfControlEvent.find(p0); it != m_mapHandleOfControlEvent.end()) {
            m_mapHandleOfControlEvent.erase(it);
        }
    }
    int getHandleOfControlEvent(cocos2d::extension::CCControlEvent) = ios inline {
        auto it = m_mapHandleOfControlEvent.find(p0);
        return it != m_mapHandleOfControlEvent.end() ? it->second : -1;
    }

    virtual bool init() = m1 0x2ddc38, imac 0x351050;
    virtual void onEnter() = m1 0x2ddf94, imac 0x3514c0;
    virtual void onExit() = m1 0x2ddf98, imac 0x3514d0;
    virtual void registerWithTouchDispatcher() = m1 0x2ddf44, imac 0x351470;
    virtual void setOpacityModifyRGB(bool) = m1 0x2de9e8, imac 0x351fa0;
    virtual bool isOpacityModifyRGB() = m1 0x2deb40, imac 0x352100;
    virtual void setEnabled(bool) = m1 0x2dec10, imac 0x3521f0;
    virtual bool isEnabled() = m1 0x2dec30, imac 0x352220;
    virtual void setSelected(bool) = m1 0x2dec38, imac 0x352230;
    virtual bool isSelected() = m1 0x2dec48, imac 0x352250;
    virtual void setHighlighted(bool) = m1 0x2dec50, imac 0x352260;
    virtual bool isHighlighted() = m1 0x2dec60, imac 0x352280;
    virtual void needsLayout() = m1 0x2dec0c, imac 0x3521e0;
    virtual void sendActionsForControlEvents(unsigned int) = m1 0x2ddf9c, imac 0x3514e0;
    virtual void addTargetWithActionForControlEvents(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, unsigned int) = m1 0x2de244, imac 0x351790;
    virtual void removeTargetWithActionForControlEvents(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, unsigned int) = m1 0x2de6b8, imac 0x351c50;
    virtual cocos2d::CCPoint getTouchLocation(cocos2d::CCTouch*) = m1 0x2deb50, imac 0x352120;
    virtual bool isTouchInside(cocos2d::CCTouch*) = m1 0x2deb9c, imac 0x352170;
}

[[link(win, android)]]
class cocos2d::extension::CCControlColourPicker : cocos2d::extension::CCControl {
    CCControlColourPicker() = android inline, mac inline, ios inline {
        m_colourPicker = nullptr;
        m_huePicker = nullptr;
        m_background = nullptr;
        m_colorTarget = nullptr;
        m_delegate = nullptr;
    }
    virtual ~CCControlColourPicker() = mac inline, ios inline {}

    static cocos2d::extension::CCControlColourPicker* colourPicker();

    cocos2d::ccColor3B const& getColorValue() const = android inline, mac inline, ios inline {
        return m_rgb;
    }

    void hueSliderValueChanged(cocos2d::CCObject*, unsigned int);
    void colourSliderValueChanged(cocos2d::CCObject*, unsigned int);
    void updateControlPicker() = ios inline {
        m_huePicker->setHue(m_hsv.h);
        m_colourPicker->updateWithHSV(m_hsv);
    }
    void updateHueAndControlPicker();

    virtual bool init() = m1 0x2e1818, imac 0x355240;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2e1f54, imac 0x355b40;
    virtual void setColorValue(cocos2d::ccColor3B const&) = m1 0x2e1e14, imac 0x355990;
}

[[link(win, android)]]
class cocos2d::extension::CCControlHuePicker : cocos2d::extension::CCControl {
    [[since("4.2.1")]]
    CCControlHuePicker();
    [[since("4.2.1")]]
    virtual ~CCControlHuePicker();

    static cocos2d::extension::CCControlHuePicker* create(cocos2d::CCNode*, cocos2d::CCPoint);

    bool checkSliderPosition(cocos2d::CCPoint);
    void updateSliderPosition(cocos2d::CCPoint);

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2e2e0c, imac 0x356dd0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2e2f10, imac 0x356ed0;
    virtual void setEnabled(bool) = m1 0x2e2c40, imac 0x356be0;
    virtual bool initWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint) = m1 0x2e29a4, imac 0x3568e0;
    virtual void setHue(float) = m1 0x2e2b60, imac 0x356ac0;
    virtual void setHuePercentage(float) = m1 0x2e2b7c, imac 0x356af0;
    [[since("4.10.1")]]
    virtual void registerWithTouchDispatcher() = m1 0x2e2b28, imac 0x356a80;
}

[[link(win, android)]]
class cocos2d::extension::CCControlSaturationBrightnessPicker : cocos2d::extension::CCControl {
    [[since("4.2.1")]]
    CCControlSaturationBrightnessPicker();
    [[since("4.2.1")]]
    virtual ~CCControlSaturationBrightnessPicker();

    static cocos2d::extension::CCControlSaturationBrightnessPicker* create(cocos2d::CCNode*, cocos2d::CCPoint);

    bool checkSliderPosition(cocos2d::CCPoint);
    void updateSliderPosition(cocos2d::CCPoint);

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2f2b74, imac 0x3687c0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2f2c78, imac 0x3688c0;
    virtual void setEnabled(bool) = m1 0x2f2778, imac 0x3682e0;
    virtual bool initWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint) = m1 0x2f250c, imac 0x368030;
    virtual void updateWithHSV(cocos2d::extension::HSV) = m1 0x2f27c8, imac 0x368330;
    virtual void updateDraggerWithHSV(cocos2d::extension::HSV) = m1 0x2f283c, imac 0x3683d0;
    [[since("4.10.1")]]
    virtual void registerWithTouchDispatcher() = m1 0x2f2b3c, imac 0x368780;
}

[[link(win, android)]]
class cocos2d::extension::CCScale9Sprite : cocos2d::CCNodeRGBA {
    static cocos2d::extension::CCScale9Sprite* create() = ios inline {
        auto ret = new CCScale9Sprite();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const* spriteFrameName) = ios inline {
    	CCScale9Sprite* ret = new CCScale9Sprite;
    	if (ret->initWithSpriteFrameName(spriteFrameName)) {
    		ret->autorelease();
    		return ret;
    	}

    	delete ret;
    	return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrameName(char const* spriteFrameName, cocos2d::CCRect capInsets) = ios inline {
    	CCScale9Sprite* ret = new CCScale9Sprite;
    	if (ret->initWithSpriteFrameName(spriteFrameName, capInsets)) {
    		ret->autorelease();
    		return ret;
    	}

    	delete ret;
    	return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* create(char const* pszname) = ios inline {
    	CCScale9Sprite* ret = new CCScale9Sprite;
    	if (ret->initWithFile(pszname)) {
    		ret->autorelease();
    		return ret;
    	}

    	delete ret;
    	return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect);
    static cocos2d::extension::CCScale9Sprite* create(char const* filename, cocos2d::CCRect rect, cocos2d::CCRect capInsets) = ios inline {
        CCScale9Sprite* ret = new CCScale9Sprite;
        if (ret->initWithFile(filename, rect, capInsets)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* create(cocos2d::CCRect capInsets, char const* filename) = ios inline {
        CCScale9Sprite* ret = new CCScale9Sprite;
        if (ret->initWithFile(capInsets, filename)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = ios inline {
        auto ret = new CCScale9Sprite();
        if (ret->initWithSpriteFrame(p0, p1)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*) = ios inline {
        auto ret = new CCScale9Sprite();
        if (ret->initWithSpriteFrame(p0)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    CCScale9Sprite();
    virtual ~CCScale9Sprite();

    void updatePositions();
    void updateCapInset();
    cocos2d::extension::CCScale9Sprite* resizableSpriteWithCapInsets(cocos2d::CCRect) = ios inline {
        auto ret = new CCScale9Sprite();
        if (ret->initWithBatchNode(_scale9Image, m_spriteRect, p0)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    [[since("4.10.1")]]
    void setBlendAdditive(bool);

    virtual bool init() = m1 0x36c874, imac 0x3f38f0;
    virtual void setContentSize(const cocos2d::CCSize& size) = m1 0x36d874, imac 0x3f4a20;
    virtual void visit() = m1 0x36ebf0, imac 0x3f5d60;
    virtual unsigned char getOpacity() = m1 0x36ef1c, imac 0x3f60b0;
    virtual void setOpacity(unsigned char) = m1 0x36edb4, imac 0x3f5f30;
    virtual void updateDisplayedOpacity(unsigned char) = m1 0x36ea44, imac 0x3f5b30;
    virtual const cocos2d::ccColor3B& getColor() = m1 0x36eda4, imac 0x3f5f10;
    virtual void setColor(const cocos2d::ccColor3B& color) = m1 0x36ec24, imac 0x3f5d90;
    virtual void updateDisplayedColor(const cocos2d::ccColor3B& parentColor) = m1 0x36eab0, imac 0x3f5ba0;
    virtual void setOpacityModifyRGB(bool bValue) = m1 0x36e8d4, imac 0x3f59b0;
    virtual bool isOpacityModifyRGB() = m1 0x36ea34, imac 0x3f5b10;
    virtual cocos2d::CCSize getPreferredSize() = m1 0x36e720, imac 0x3f57b0;
    virtual void setPreferredSize(cocos2d::CCSize) = m1 0x36e6ec, imac 0x3f5780;
    virtual cocos2d::CCRect getCapInsets() = m1 0x36e7c4, imac 0x3f5870;
    virtual void setCapInsets(cocos2d::CCRect) = m1 0x36e72c, imac 0x3f57d0;
    virtual float getInsetLeft() = m1 0x36ebb0, imac 0x3f5ca0;
    virtual void setInsetLeft(float) = m1 0x36ebd0, imac 0x3f5ce0;
    virtual float getInsetTop() = m1 0x36ebb8, imac 0x3f5cb0;
    virtual void setInsetTop(float) = m1 0x36ebd8, imac 0x3f5d00;
    virtual float getInsetRight() = m1 0x36ebc0, imac 0x3f5cc0;
    virtual void setInsetRight(float) = m1 0x36ebe0, imac 0x3f5d20;
    virtual float getInsetBottom() = m1 0x36ebc8, imac 0x3f5cd0;
    virtual void setInsetBottom(float) = m1 0x36ebe8, imac 0x3f5d40;
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = m1 0x36c940, imac 0x3f39b0;
    virtual bool initWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, cocos2d::CCRect) = m1 0x36c8d4, imac 0x3f3950;
    virtual bool initWithFile(const char*, cocos2d::CCRect, cocos2d::CCRect) = m1 0x36dd4c, imac 0x3f4f30;
    virtual bool initWithFile(const char*, cocos2d::CCRect) = m1 0x36de8c, imac 0x3f5040;
    virtual bool initWithFile(cocos2d::CCRect, const char*) = m1 0x36dfa0, imac 0x3f5130;
    virtual bool initWithFile(const char*) = m1 0x36e0c0, imac 0x3f5220;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = m1 0x36e198, imac 0x3f52e0;
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x36e2d0, imac 0x3f53f0;
    virtual bool initWithSpriteFrameName(const char*, cocos2d::CCRect) = m1 0x36e3a8, imac 0x3f54b0;
    virtual bool initWithSpriteFrameName(const char*) = m1 0x36e4cc, imac 0x3f55b0;
    virtual bool updateWithBatchNode(cocos2d::CCSpriteBatchNode*, cocos2d::CCRect, bool, cocos2d::CCRect) = m1 0x36c9e4, imac 0x3f3a50;
    virtual void setSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x36eb1c, imac 0x3f5c10;
}

[[link(win, android)]]
class cocos2d::extension::CCHttpClient : cocos2d::CCObject {
    private CCHttpClient();
    virtual ~CCHttpClient();

    static cocos2d::extension::CCHttpClient* getInstance();
    static void destroyInstance() = ios inline {
        auto instance = *reinterpret_cast<CCHttpClient**>(geode::base::get() + 0x8601c0);
        CCDirector::sharedDirector()->getScheduler()->unscheduleSelector(schedule_selector(CCHttpClient::dispatchResponseCallbacks), instance);
        instance->release();
    }
    void send(cocos2d::extension::CCHttpRequest* request);
    bool lazyInitThreadSemphore();
    void dispatchResponseCallbacks(float);

    int _timeoutForConnect;
    int _timeoutForRead;
}

[[link(win, android)]]
class cocos2d::extension::CCHttpRequest : cocos2d::CCObject {
    int _requestType;
    gd::string _url;
    gd::vector<char> _requestData;
    gd::string _tag;
    cocos2d::CCObject* _pTarget;
    cocos2d::extension::SEL_HttpResponse _pSelector;
    void* _pUserData;
    gd::vector<gd::string> _headers;
    int _type;
    bool _shouldCancel;
    int _downloadProgress;
    int _readTimeout;
    int _connectTimeout;
}

[[link(win, android)]]
class cocos2d::extension::CCHttpResponse : cocos2d::CCObject {
    cocos2d::extension::CCHttpRequest* _pHttpRequest;
    bool _succeed;
    gd::vector<char> _responseData;
    gd::vector<char> _responseHeader;
    int _responseCode;
    gd::string _errorBuffer;
}

[[link(win, android)]]
class cocos2d::ZipUtils {
    static gd::string base64DecodeEnc(gd::string const&, gd::string);
    static gd::string base64EncodeEnc(gd::string const&, gd::string);
    static gd::string base64URLDecode(gd::string const&);
    static gd::string base64URLEncode(gd::string const&);
    // static void ccDecodeEncodedPvr(unsigned int*, int);
    static int ccDeflateMemory(unsigned char* data, unsigned int size, unsigned char** out);
    static int ccInflateCCZFile(char const*, unsigned char**);
    static int ccInflateGZipFile(char const*, unsigned char**);
    // static int ccInflateMemory(unsigned char* data, unsigned int size, unsigned char** out);
    // static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int*, unsigned int);
    // static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int);
    static void ccSetPvrEncryptionKey(unsigned int, unsigned int, unsigned int, unsigned int);
    static void ccSetPvrEncryptionKeyPart(int, unsigned int);
    static gd::string compressString(gd::string const& data, bool encrypt, int encryptionKey);
    static gd::string decompressString2(unsigned char* data, bool encrypt, int size, int encryptionKey);
    static gd::string decompressString(gd::string const& data, bool encrypt, int encryptionKey);
    static gd::string encryptDecrypt(gd::string const& data, int encryptionKey);
    static gd::string encryptDecryptWKey(gd::string const&, gd::string) = android64 inline, mac inline, ios inline {
		std::string ret;
		ret.resize(p0.size());
		for (int i = 0; i < p0.size(); i++) {
			ret[i] = p0[i] ^ p1[i % p1.size()];
		}
		return ret;
	}
    static unsigned char hexToChar(gd::string const&);
    static gd::string urlDecode(gd::string const&);
}

[[link(win, android)]]
class cocos2d::extension::CCControlUtils {
    static cocos2d::CCSprite* addSpriteToTargetWithPosAndAnchor(char const*, cocos2d::CCNode*, cocos2d::CCPoint, cocos2d::CCPoint);
    static cocos2d::extension::HSV HSVfromRGB(cocos2d::extension::RGBA);
    static cocos2d::extension::RGBA RGBfromHSV(cocos2d::extension::HSV);
    static cocos2d::CCRect CCRectUnion(cocos2d::CCRect const&, cocos2d::CCRect const&) = ios inline {
        CCRect result;
        auto x1 = std::min(p0.getMinX(), p1.getMinX());
        auto x2 = std::max(p0.getMaxX(), p1.getMaxX());
        auto y1 = std::min(p0.getMinY(), p1.getMinY());
        auto y2 = std::max(p0.getMaxY(), p1.getMaxY());
        result.origin.x = x1;
        result.origin.y = x2;
        result.size.width = x2 - x1;
        result.size.height = y2 - y1;
        return result;
    }
}

[[link(win, android)]]
class cocos2d::CCSpawn : cocos2d::CCActionInterval {
    static cocos2d::CCSpawn* create(cocos2d::CCArray* arrayOfActions) = ios inline {
        CCSpawn* pRet = NULL;
        do 
        {
            unsigned  int count = arrayOfActions->count();
            CC_BREAK_IF(count == 0);
            CCFiniteTimeAction* prev = (CCFiniteTimeAction*)arrayOfActions->objectAtIndex(0);
            if (count > 1)
            {
                for (unsigned int i = 1; i < arrayOfActions->count(); ++i)
                {
                    prev = createWithTwoActions(prev, (CCFiniteTimeAction*)arrayOfActions->objectAtIndex(i));
                }
            }
            else
            {
                // If only one action is added to CCSpawn, make up a CCSpawn by adding a simplest finite time action.
                // ExtraAction doesnt exist for some reason
                CCFiniteTimeAction* action = new CCFiniteTimeAction();
                if (action) {
                    action->autorelease();
                }
                prev = createWithTwoActions(prev, action);
            }
            pRet = (CCSpawn*)prev;
        }while (0);

        return pRet;
    }
    // static cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction*, ...);
    static cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction* first, ...) = mac inline, ios inline {
        va_list args;
        va_start(args, first);
        auto* array = cocos2d::CCArray::create();
        array->addObject(first);
        while (auto* action = va_arg(args, cocos2d::CCFiniteTimeAction*)) {
            array->addObject(action);
        }
        va_end(args);
        return cocos2d::CCSpawn::create(array);
    }
    static cocos2d::CCSpawn* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);
    // static cocos2d::CCSpawn* createWithVariableList(cocos2d::CCFiniteTimeAction*, char*);

    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*);

    // CCSpawn(cocos2d::CCSpawn const&);
    // CCSpawn();
    virtual ~CCSpawn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x339a58, imac 0x3b7000;
    virtual void update(float) = m1 0x339cbc, imac 0x3b7260;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x339c28, imac 0x3b71f0;
    virtual void stop() = m1 0x339c7c, imac 0x3b7230;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x339d20, imac 0x3b72b0;
}

[[link(win, android)]]
class cocos2d::CCSpeed : cocos2d::CCAction {
    static cocos2d::CCSpeed* create(cocos2d::CCActionInterval*, float);

    bool initWithAction(cocos2d::CCActionInterval*, float);

    // cocos2d::CCActionInterval* getInnerAction();
    // float getSpeed();

    void setInnerAction(cocos2d::CCActionInterval*);
    // void setSpeed(float);

    // CCSpeed(cocos2d::CCSpeed const&);
    // CCSpeed();
    virtual ~CCSpeed();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x51d524, imac 0x5f4080;
    virtual bool isDone() = m1 0x51d70c, imac 0x5f4290;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x51d6ac, imac 0x5f4220;
    virtual void stop() = m1 0x51d6c0, imac 0x5f4240;
    virtual void step(float) = m1 0x51d6f0, imac 0x5f4270;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x51d71c, imac 0x5f42a0;
}

[[link(win, android)]]
class pugi::xml_document : pugi::xml_node {
    xml_document();
    ~xml_document();
}

[[link(android)]]
class pugi::xml_node {
    // i'm not bothering
    xml_node() = win inline, mac inline, ios inline {
    	_root = nullptr;
    }
}

[[link(android)]]
class cocos2d::CCLightning : cocos2d::CCNode, cocos2d::CCRGBAProtocol {
    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float);
    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint) = win inline, ios inline {
    	auto ret = new CCLightning();
    	if (ret->initWithStrikePoint(p0)) {
    		ret->autorelease();
    		return ret;
    	}
    	delete ret;
    	return nullptr;
    }

    bool initWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float);
    bool initWithStrikePoint(cocos2d::CCPoint) = win inline, ios inline {
    	return this->initWithStrikePoint(p0, CCPointZero, .5f);
    }

    CCLightning();
    virtual ~CCLightning() = win inline {
        if (m_lightningPoints) {
            free(m_lightningPoints);
            m_lightningPoints = nullptr;
        }
    }

    void strike();
    void strikeFinished();
    void strikeRandom() = win inline, ios inline {
    	m_seed = rand();
    	this->strike();
    }
    void strikeWithSeed(uint64_t seed) = win inline, ios inline {
    	m_seed = seed;
    	this->strike();
    }

    virtual void draw() = m1 0x508bc4, imac 0x5dd8f0;
    virtual bool isOpacityModifyRGB() = m1 0x508e3c, imac 0x5ddc10;
    virtual void setOpacityModifyRGB(bool) = m1 0x508e4c, imac 0x5ddc30;
    virtual unsigned char getOpacity() = m1 0x508dc4, imac 0x5ddb40;
    virtual unsigned char getDisplayedOpacity() = m1 0x508dd4, imac 0x5ddb60;
    virtual void setOpacity(unsigned char) = m1 0x508df0, imac 0x5ddb90;
    virtual void updateDisplayedOpacity(unsigned char) = m1 0x508e5c, imac 0x5ddc50;
    virtual bool isCascadeOpacityEnabled() = m1 0x508e6c, imac 0x5ddc70;
    virtual void setCascadeOpacityEnabled(bool) = m1 0x508e7c, imac 0x5ddc90;
    virtual cocos2d::ccColor3B const& getColor() = m1 0x508e00, imac 0x5ddbb0;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = m1 0x508e8c, imac 0x5ddcb0;
    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x508e10, imac 0x5ddbd0;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = m1 0x508e9c, imac 0x5ddcd0;
    virtual bool isCascadeColorEnabled() = m1 0x508ec4, imac 0x5ddd10;
    virtual void setCascadeColorEnabled(bool) = m1 0x508ed4, imac 0x5ddd30;

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
class cocos2d::CCConfiguration : cocos2d::CCObject {
	static void purgeConfiguration();
	static cocos2d::CCConfiguration* sharedConfiguration();

	bool init();

	bool getBool(char const*, bool) const;
	char const* getCString(char const*, char const*) const;
	int getMaxModelviewStackDepth() const;
	int getMaxTextureSize() const;
	int getMaxTextureUnits() const;
	double getNumber(char const*, double) const;
	cocos2d::CCObject* getObject(char const*) const;

	void setObject(char const*, cocos2d::CCObject*);

	private CCConfiguration();
	// CCConfiguration(cocos2d::CCConfiguration const&);
    virtual ~CCConfiguration();

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

[[link(win, android)]]
class cocos2d::CCPoolManager {
	CCPoolManager();
    ~CCPoolManager();

	void addObject(cocos2d::CCObject*);
	void finalize();
	cocos2d::CCAutoreleasePool* getCurReleasePool() = ios inline {
        if (!m_pCurReleasePool) this->push();
        return m_pCurReleasePool;
    }
	void pop();
	static void purgePoolManager();
	void push();
	void removeObject(cocos2d::CCObject*);
	static cocos2d::CCPoolManager* sharedPoolManager();
}

[[link(win, android)]]
class cocos2d::CCZone {
    CCZone(cocos2d::CCObject* object) = win inline {
        m_pCopyObject = object;
    }
}

[[link(android)]]
class cocos2d::CCDisplayLinkDirector : cocos2d::CCDirector {
    virtual void setAnimationInterval(double) = m1 0x3ea388, imac 0x484790;
    virtual void stopAnimation() = m1 0x3ea37c, imac 0x484780;
    virtual void startAnimation() = m1 0x3ea308, imac 0x484700;
    virtual void mainLoop() = m1 0x3ea344, imac 0x484740;
}

[[link(win, android)]]
class cocos2d::CCScriptEngineManager {
    // cocos2d::CCScriptEngineProtocol* getScriptEngine();
    void setScriptEngine(cocos2d::CCScriptEngineProtocol* engine) = ios inline {
        if (m_pScriptEngine) delete m_pScriptEngine;
        m_pScriptEngine = engine;
    }
    void removeScriptEngine();

    ~CCScriptEngineManager();
    
    static cocos2d::CCScriptEngineManager* sharedManager();
    static void purgeSharedManager();
}

[[link(win, android)]]
class cocos2d::CCJumpBy : cocos2d::CCActionInterval {
    static cocos2d::CCJumpBy* create(float, cocos2d::CCPoint const&, float, unsigned int) = ios inline {
        auto ret = new CCJumpBy();
        ret->initWithDuration(p0, p1, p2, p3);
        ret->autorelease();
        return ret;
    }

    bool initWithDuration(float, cocos2d::CCPoint const&, float, unsigned int) = ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_delta = p1;
        m_height = p2;
        m_nJumps = p3;
        return true;
    }

    // CCJumpBy(cocos2d::CCJumpBy const&);
    // CCJumpBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline, m1 0x33b350, imac 0x3b8cb0 {
        CCZone* pNewZone = nullptr;
        CCJumpBy* pCopy = nullptr;
        if (pZone && pZone->m_pCopyObject) {
            pCopy = (CCJumpBy*)(pZone->m_pCopyObject);
        }
        else {
            pCopy = new CCJumpBy();
            pZone = pNewZone = new CCZone(pCopy);
        }

        CCActionInterval::copyWithZone(pZone);

        pCopy->initWithDuration(m_fDuration, m_delta, m_height, m_nJumps);

        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void update(float t) = ios inline, m1 0x33b4e0, imac 0x3b8e70 {
        if (m_pTarget) {
            float frac = fmodf(t * m_nJumps, 1.f);
            float y = m_height * 4.f * frac * (1.f - frac);
            y += m_delta.y * t;

            float x = m_delta.x * t;
            CCPoint currentPos = m_pTarget->getPosition();

            CCPoint diff = currentPos - m_previousPos;
            m_startPosition = diff + m_startPosition;

            CCPoint newPos = m_startPosition + CCPoint { x, y };
            m_pTarget->setPosition(newPos);

            m_previousPos = newPos;
        }
    }
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = ios inline, m1 0x33b48c, imac 0x3b8e20 {
        CCActionInterval::startWithTarget(pTarget);
        m_previousPos = m_startPosition = pTarget->getPosition();
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline, m1 0x33b5dc, imac 0x3b8fa0 {
        return CCJumpBy::create(m_fDuration, -m_delta, m_height, m_nJumps);
    }
}

[[link(win, android)]]
class cocos2d::CCJumpTo : cocos2d::CCActionInterval {
    static cocos2d::CCJumpTo* create(float, cocos2d::CCPoint const&, float, int) = ios inline {
        auto ret = new CCJumpTo();
        ret->initWithDuration(p0, p1, p2, p3);
        ret->autorelease();
        return ret;
    }

    // CCJumpTo(cocos2d::CCJumpTo const&);
    // CCJumpTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline, m1 0x33b72c, imac 0x3b9120 {
        CCZone* pNewZone = nullptr;
        CCJumpTo* pCopy = nullptr;
        if (pZone && pZone->m_pCopyObject) {
            pCopy = (CCJumpTo*)(pZone->m_pCopyObject);
        }
        else {
            pCopy = new CCJumpTo();
            pZone = pNewZone = new CCZone(pCopy);
        }

        CCJumpBy::copyWithZone(pZone);

        pCopy->initWithDuration(m_fDuration, m_delta, m_height, m_nJumps);

        CC_SAFE_DELETE(pNewZone);
        return pCopy;
    }
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = ios inline, m1 0x33b874, imac 0x3b9290 {
        CCJumpBy::startWithTarget(pTarget);
        m_delta = m_delta - m_startPosition;
    }
}

[[link(win, android)]]
class cocos2d::CCBMFontConfiguration : cocos2d::CCObject {
    static cocos2d::CCBMFontConfiguration* create(char const*);

    bool initWithFNTfile(char const*) = ios inline {
        m_pKerningDictionary = nullptr;
        m_pFontDefDictionary = nullptr;
        m_pCharacterSet = this->parseConfigFile(p0);
        return m_pCharacterSet != nullptr;
    }

    // CCBMFontConfiguration(cocos2d::CCBMFontConfiguration const&);
    CCBMFontConfiguration() = ios inline {
        m_pFontDefDictionary = nullptr;
        m_nCommonHeight = 0;
        m_pKerningDictionary = nullptr;
        m_pCharacterSet = nullptr;
    }
    virtual ~CCBMFontConfiguration();

    char const* description() = ios inline {
        return CCString::createWithFormat(
            "<CCBMFontConfiguration = " CC_FORMAT_PRINTF_SIZE_T " | Glphys:%d Kernings:%d | Image = %s>",
            (size_t)this,
            HASH_COUNT(m_pFontDefDictionary),
            HASH_COUNT(m_pKerningDictionary),
            m_sAtlasName.c_str()
        )->getCString();
    }
    void parseCharacterDefinition(gd::string, cocos2d::_BMFontDef*);
    void parseCommonArguments(gd::string);
    gd::set<unsigned int>* parseConfigFile(char const*);
    void parseImageFileName(gd::string, char const*);
    void parseInfoArguments(gd::string);
    void parseKerningEntry(gd::string);
    void purgeFontDefDictionary();
    void purgeKerningDictionary();
}

[[link(win, android)]]
class cocos2d::CCGrabber : cocos2d::CCObject {
    [[since("4.10.1")]]
    CCGrabber() = ios inline {
        memset(m_oldClearColor, 0, sizeof(m_oldClearColor));
        glGenFramebuffers(1, &m_FBO);
    }
    [[since("4.10.1")]]
    virtual ~CCGrabber() = ios inline {
        glDeleteFramebuffers(1, &m_FBO);
    }

    void grab(cocos2d::CCTexture2D*) = ios inline {
        glGetIntegerv(GL_FRAMEBUFFER_BINDING, &m_oldFBO);
        glBindFramebuffer(GL_FRAMEBUFFER, m_FBO);
        glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, p0->getName(), 0);
        glCheckFramebufferStatus(GL_FRAMEBUFFER);
        glBindFramebuffer(GL_FRAMEBUFFER, m_oldFBO);
    }
    void beforeRender(cocos2d::CCTexture2D*) = ios inline {
        glGetIntegerv(GL_FRAMEBUFFER_BINDING, &m_oldFBO);
        glBindFramebuffer(GL_FRAMEBUFFER, m_FBO);
        glGetFloatv(GL_COLOR_CLEAR_VALUE, m_oldClearColor);
        glClearColor(0, 0, 0, 0);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    }
    void afterRender(cocos2d::CCTexture2D*) = ios inline {
        glBindFramebuffer(GL_FRAMEBUFFER, m_oldFBO);
        glClearColor(m_oldClearColor[0], m_oldClearColor[1], m_oldClearColor[2], m_oldClearColor[3]);
    }
}

[[link(win, android)]]
class cocos2d::CCFollow : cocos2d::CCAction {
    static cocos2d::CCFollow* create(cocos2d::CCNode*, cocos2d::CCRect const&);

    virtual ~CCFollow();

    bool initWithTarget(cocos2d::CCNode*, cocos2d::CCRect const&);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x51dafc, imac 0x5f46a0;
    virtual void step(float) = m1 0x51dca8, imac 0x5f4850;
    virtual bool isDone() = m1 0x51dd80, imac 0x5f4930;
    virtual void stop() = m1 0x51dda4, imac 0x5f4950;
}

[[link(win, android)]]
class cocos2d::CCCardinalSplineBy : cocos2d::CCCardinalSplineTo {
    static cocos2d::CCCardinalSplineBy* create(float, cocos2d::CCPointArray*, float);

    CCCardinalSplineBy();

    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x26d2c0, imac 0x2d2130;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x26cffc, imac 0x2d1df0;
    virtual void updatePosition(cocos2d::CCPoint&) = m1 0x26cfa4, imac 0x2d1da0;
}

[[link(win, android)]]
class cocos2d::CCCardinalSplineTo : cocos2d::CCActionInterval {
    static cocos2d::CCCardinalSplineTo* create(float, cocos2d::CCPointArray*, float);

    CCCardinalSplineTo();
    virtual ~CCCardinalSplineTo();

    bool initWithDuration(float, cocos2d::CCPointArray*, float);

    virtual cocos2d::CCCardinalSplineTo* copyWithZone(cocos2d::CCZone*) = m1 0x26c968, imac 0x2d1700;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x26c8f4, imac 0x2d1690;
    virtual void update(float) = m1 0x26ca84, imac 0x2d1830;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x26cd34, imac 0x2d1b50;
    virtual void updatePosition(cocos2d::CCPoint&) = m1 0x26ccfc, imac 0x2d1b20;
}

[[link(win, android)]]
class cocos2d::CCCatmullRomBy : cocos2d::CCCardinalSplineBy {
    static cocos2d::CCCatmullRomBy* create(float, cocos2d::CCPointArray*);

    bool initWithDuration(float, cocos2d::CCPointArray*);
}

[[link(win, android)]]
class cocos2d::CCCatmullRomTo : cocos2d::CCCardinalSplineTo {
    static cocos2d::CCCatmullRomTo* create(float, cocos2d::CCPointArray*);

    bool initWithDuration(float, cocos2d::CCPointArray*);
}

[[link(win, android)]]
class cocos2d::CCAccelAmplitude : cocos2d::CCActionInterval {
    static cocos2d::CCAccelAmplitude* create(cocos2d::CCAction*, float);

    virtual ~CCAccelAmplitude();

    bool initWithAction(cocos2d::CCAction*, float);

    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x1b63cc, imac 0x20a540;
    virtual void update(float) = m1 0x1b6400, imac 0x20a570;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x1b644c, imac 0x20a5c0;
}

[[link(win, android)]]
class cocos2d::CCAccelDeccelAmplitude : cocos2d::CCActionInterval {
    static cocos2d::CCAccelDeccelAmplitude* create(cocos2d::CCAction*, float);

    virtual ~CCAccelDeccelAmplitude();

    bool initWithAction(cocos2d::CCAction*, float);

    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x1b6094, imac 0x20a220;
    virtual void update(float) = m1 0x1b60c8, imac 0x20a250;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x1b610c, imac 0x20a2b0;
}

[[link(win, android)]]
class cocos2d::CCDeccelAmplitude : cocos2d::CCActionInterval {
    static cocos2d::CCDeccelAmplitude* create(cocos2d::CCAction*, float);

    virtual ~CCDeccelAmplitude();

    bool initWithAction(cocos2d::CCAction*, float);

    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x1b66ec, imac 0x20a850;
    virtual void update(float) = m1 0x1b6720, imac 0x20a880;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x1b6774, imac 0x20a8e0;
}

[[link(win, android)]]
class cocos2d::CCGrid3DAction : cocos2d::CCGridAction {
    cocos2d::ccVertex3F vertex(cocos2d::CCPoint const&);
    cocos2d::ccVertex3F originalVertex(cocos2d::CCPoint const&);
    void setVertex(cocos2d::CCPoint const&, cocos2d::ccVertex3F const&);

    virtual cocos2d::CCGridBase* getGrid() = m1 0x1b5c94, imac 0x209e40;
}

[[link(win, android)]]
class cocos2d::CCGridAction : cocos2d::CCActionInterval {
    static cocos2d::CCGridAction* create(float, cocos2d::CCSize const&);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x1b5b94, imac 0x209d30;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x1b5aa4, imac 0x209c50;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x1b5b90, imac 0x209d20;
    virtual bool initWithDuration(float, cocos2d::CCSize const&) = m1 0x1b5a60, imac 0x209c20;
    virtual cocos2d::CCGridBase* getGrid() = m1 0x1b5b88, imac 0x209d10;
}

[[link(win, android)]]
class cocos2d::CCReuseGrid : cocos2d::CCActionInstant {
    static cocos2d::CCReuseGrid* create(int);

    bool initWithTimes(int);

    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x1b6984, imac 0x20aae0;
}

[[link(win, android)]]
class cocos2d::CCStopGrid : cocos2d::CCActionInstant {
    static cocos2d::CCStopGrid* create();

    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x1b6850, imac 0x20a9b0;
}

[[link(win, android)]]
class cocos2d::CCTiledGrid3DAction : cocos2d::CCGridAction {
    static cocos2d::CCTiledGrid3DAction* create(float, cocos2d::CCSize const&);

    cocos2d::ccQuad3 tile(cocos2d::CCPoint const&);
    cocos2d::ccQuad3 originalTile(cocos2d::CCPoint const&);
    void setTile(cocos2d::CCPoint const&, cocos2d::ccQuad3 const&);

    virtual cocos2d::CCGridBase* getGrid() = m1 0x1b5d34, imac 0x209ee0;
}

[[link(win, android)]]
class cocos2d::CCFlipX3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCFlipX3D* create(float);

    virtual bool initWithDuration(float) = m1 0x21f2b0, imac 0x27d1c0;
    virtual bool initWithSize(cocos2d::CCSize const&, float) = m1 0x21f300, imac 0x27d210;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x21f320, imac 0x27d240;
    virtual void update(float) = m1 0x21f430, imac 0x27d360;
}

[[link(win, android)]]
class cocos2d::CCFlipY3D : cocos2d::CCFlipX3D {
    static cocos2d::CCFlipY3D* create(float);

    virtual void update(float) = m1 0x21f89c, imac 0x27d830;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x21f78c, imac 0x27d710;
}

[[link(win, android)]]
class cocos2d::CCLens3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCLens3D* create(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float);

    void setPosition(cocos2d::CCPoint const&);
    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x21fd2c, imac 0x27dd40;
    virtual void update(float) = m1 0x21feac, imac 0x27dee0;
}

[[link(win, android)]]
class cocos2d::CCLiquid : cocos2d::CCGrid3DAction {
    static cocos2d::CCLiquid* create(float, cocos2d::CCSize const&, unsigned int, float);

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x2209fc, imac 0x27eb30;
    virtual void update(float) = m1 0x220b28, imac 0x27ec70;
}

[[link(win, android)]]
class cocos2d::CCRipple3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCRipple3D* create(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float);

    void setPosition(cocos2d::CCPoint const&);
    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x220218, imac 0x27e2d0;
    virtual void update(float) = m1 0x220364, imac 0x27e450;
}

[[link(win, android)]]
class cocos2d::CCShaky3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCShaky3D* create(float, cocos2d::CCSize const&, int, bool);

    bool initWithDuration(float, cocos2d::CCSize const&, int, bool);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x22061c, imac 0x27e740;
    virtual void update(float) = m1 0x220740, imac 0x27e870;
}

[[link(win, android)]]
class cocos2d::CCTwirl : cocos2d::CCGrid3DAction {
    static cocos2d::CCTwirl* create(float, cocos2d::CCSize const&, cocos2d::CCPoint, unsigned int, float);

    void setPosition(cocos2d::CCPoint const&);
    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint, unsigned int, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x22127c, imac 0x27f430;
    virtual void update(float) = m1 0x2213dc, imac 0x27f5c0;
}

[[link(win, android)]]
class cocos2d::CCWaves : cocos2d::CCGrid3DAction {
    static cocos2d::CCWaves* create(float, cocos2d::CCSize const&, unsigned int, float, bool, bool);

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float, bool, bool);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x220e04, imac 0x27ef60;
    virtual void update(float) = m1 0x220f4c, imac 0x27f0c0;
}

[[link(win, android)]]
class cocos2d::CCWaves3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCWaves3D* create(float, cocos2d::CCSize const&, unsigned int, float);

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x21ef4c, imac 0x27ce20;
    virtual void update(float) = m1 0x21f078, imac 0x27cf60;
}

[[link(win, android)]]
class cocos2d::CCFlipX : cocos2d::CCActionInstant {
    static cocos2d::CCFlipX* create(bool);

    bool initWithFlipX(bool);

    virtual void update(float) = m1 0x6b2d74, imac 0x7ac560;
    virtual cocos2d::CCFiniteTimeAction* reverse() = m1 0x6b2d84, imac 0x7ac580;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b2de8, imac 0x7ac5e0;
}

[[link(win, android)]]
class cocos2d::CCFlipY : cocos2d::CCActionInstant {
    static cocos2d::CCFlipY* create(bool);

    bool initWithFlipY(bool);

    virtual void update(float) = m1 0x6b2f28, imac 0x7ac710;
    virtual cocos2d::CCFiniteTimeAction* reverse() = m1 0x6b2f38, imac 0x7ac730;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b2f9c, imac 0x7ac790;
}

[[link(win, android)]]
class cocos2d::CCPlace : cocos2d::CCActionInstant {
    static cocos2d::CCPlace* create(cocos2d::CCPoint const&);

    bool initWithPosition(cocos2d::CCPoint const&);

    virtual void update(float) = m1 0x6b320c, imac 0x7aca00;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b3114, imac 0x7ac910;
}

[[link(win, android)]]
class cocos2d::CCToggleVisibility : cocos2d::CCActionInstant {
    static cocos2d::CCToggleVisibility* create();

    virtual void update(float) = m1 0x6b2a58, imac 0x7ac260;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b2a94, imac 0x7ac290;
}

[[link(win, android)]]
class cocos2d::CCReverseTime : cocos2d::CCActionInterval {
    static cocos2d::CCReverseTime* create(cocos2d::CCFiniteTimeAction*);

    CCReverseTime();
    virtual ~CCReverseTime();

    bool initWithAction(cocos2d::CCFiniteTimeAction*);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x33db28, imac 0x3bba00;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33dd0c, imac 0x3bbc10;
    virtual void stop() = m1 0x33dd4c, imac 0x3bbc50;
    virtual void update(float) = m1 0x33dd7c, imac 0x3bbc80;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x33dd9c, imac 0x3bbcb0;
}

[[link(win, android)]]
class cocos2d::CCTargetedAction : cocos2d::CCActionInterval {
    static cocos2d::CCTargetedAction* create(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*);

    CCTargetedAction();
    virtual ~CCTargetedAction();

    bool initWithTarget(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x33e8a0, imac 0x3bc950;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33e9a4, imac 0x3bca70;
    virtual void stop() = m1 0x33e9dc, imac 0x3bcaa0;
    virtual void update(float) = m1 0x33e9ec, imac 0x3bcab0;
}

[[link(win, android)]]
class cocos2d::CCTintBy : cocos2d::CCActionInterval {
    static cocos2d::CCTintBy* create(float, short, short, short);

    bool initWithDuration(float, short, short, short);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x33d5bc, imac 0x3bb420;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x33d6bc, imac 0x3bb540;
    virtual void update(float) = m1 0x33d734, imac 0x3bb5b0;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x33d804, imac 0x3bb680;
}

[[link(win, android)]]
class cocos2d::CCPageTurn3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCPageTurn3D* create(float, cocos2d::CCSize const&);

    virtual void update(float) = m1 0x2a0cf0, imac 0x311ab0;
}

[[link(win, android)]]
class cocos2d::CCProgressFromTo : cocos2d::CCActionInterval {
    static cocos2d::CCProgressFromTo* create(float, float, float);

    bool initWithDuration(float, float, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x3a968c, imac 0x437770;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x3a9774, imac 0x437870;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3a9808, imac 0x437920;
    virtual void update(float) = m1 0x3a980c, imac 0x437930;
}

[[link(win, android)]]
class cocos2d::CCProgressTo : cocos2d::CCActionInterval {
    static cocos2d::CCProgressTo* create(float, float);

    bool initWithDuration(float, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x3a9478, imac 0x437510;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3a9560, imac 0x437610;
    virtual void update(float) = m1 0x3a95a0, imac 0x437650;
}

[[link(win, android)]]
class cocos2d::CCFadeOutBLTiles : cocos2d::CCFadeOutTRTiles {
    static cocos2d::CCFadeOutBLTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = m1 0x6bc254, imac 0x7b6270;
}

[[link(win, android)]]
class cocos2d::CCFadeOutDownTiles : cocos2d::CCFadeOutUpTiles {
    static cocos2d::CCFadeOutDownTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = m1 0x6bc5e0, imac 0x7b6600;
}

[[link(win, android)]]
class cocos2d::CCFadeOutTRTiles : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCFadeOutTRTiles* create(float, cocos2d::CCSize const&);

    void turnOnTile(cocos2d::CCPoint const&);
    void turnOffTile(cocos2d::CCPoint const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = m1 0x6bbe48, imac 0x7b5e40;
    virtual void transformTile(cocos2d::CCPoint const&, float) = m1 0x6bbf3c, imac 0x7b5f30;
    virtual void update(float) = m1 0x6bbffc, imac 0x7b6010;
}

[[link(win, android)]]
class cocos2d::CCFadeOutUpTiles : cocos2d::CCFadeOutTRTiles {
    static cocos2d::CCFadeOutUpTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float) = m1 0x6bc3c8, imac 0x7b63e0;
    virtual void transformTile(cocos2d::CCPoint const&, float) = m1 0x6bc448, imac 0x7b6460;
}

[[link(win, android)]]
class cocos2d::CCJumpTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCJumpTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float);

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6bd21c, imac 0x7b7220;
    virtual void update(float) = m1 0x6bd348, imac 0x7b7360;
}

[[link(win, android)]]
class cocos2d::CCShakyTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCShakyTiles3D* create(float, cocos2d::CCSize const&, int, bool);

    virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool) = m1 0x6bab00, imac 0x7b4b00;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6bab3c, imac 0x7b4b30;
    virtual void update(float) = m1 0x6bac54, imac 0x7b4c50;
}

[[link(win, android)]]
class cocos2d::CCShatteredTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCShatteredTiles3D* create(float, cocos2d::CCSize const&, int, bool);

    virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool) = m1 0x6bb018, imac 0x7b4fd0;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6bb058, imac 0x7b5010;
    virtual void update(float) = m1 0x6bb170, imac 0x7b5130;
}

[[link(win, android)]]
class cocos2d::CCShuffleTiles : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCShuffleTiles* create(float, cocos2d::CCSize const&, unsigned int);

    virtual ~CCShuffleTiles();

    void shuffle(unsigned int*, unsigned int);
    cocos2d::CCSize getDelta(cocos2d::CCSize const&);
    void placeTile(cocos2d::CCPoint const&, cocos2d::Tile*);

    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int) = m1 0x6bb540, imac 0x7b54c0;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x6bb904, imac 0x7b58b0;
    virtual void update(float) = m1 0x6bbc0c, imac 0x7b5bd0;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6bb570, imac 0x7b54f0;
}

[[link(win, android)]]
class cocos2d::CCSplitCols : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCSplitCols* create(float, unsigned int);

    virtual bool initWithDuration(float, unsigned int) = m1 0x6bd938, imac 0x7b79c0;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6bd98c, imac 0x7b7a10;
    virtual void update(float) = m1 0x6bdae8, imac 0x7b7b80;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x6bdaa8, imac 0x7b7b40;
}

[[link(win, android)]]
class cocos2d::CCSplitRows : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCSplitRows* create(float, unsigned int);

    virtual bool initWithDuration(float, unsigned int) = m1 0x6bd5b0, imac 0x7b7610;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6bd604, imac 0x7b7660;
    virtual void update(float) = m1 0x6bd760, imac 0x7b77d0;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x6bd720, imac 0x7b7790;
}

[[link(win, android)]]
class cocos2d::CCWavesTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCWavesTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float);

    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float) = m1 0x6bce40, imac 0x7b6e20;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6bce84, imac 0x7b6e60;
    virtual void update(float) = m1 0x6bcf9c, imac 0x7b6f80;
}

[[link(win, android)]]
class cocos2d::CCAtlasNode : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    static cocos2d::CCAtlasNode* create(char const*, unsigned int, unsigned int, unsigned int);

    CCAtlasNode();
    virtual ~CCAtlasNode();

    bool initWithTileFile(char const*, unsigned int, unsigned int, unsigned int);
    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int, unsigned int, unsigned int);
    void calculateMaxItems();
    void updateBlendFunc();
    void updateOpacityModifyRGB();
    void setIgnoreContentScaleFactor(bool);

    virtual cocos2d::CCTextureAtlas* getTextureAtlas() = m1 0x2b7b38, imac 0x32aeb0;
    virtual void setTextureAtlas(cocos2d::CCTextureAtlas*) = m1 0x2b7afc, imac 0x32ae70;
    virtual cocos2d::ccBlendFunc getBlendFunc() = m1 0x2b79e0, imac 0x32ad30;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = m1 0x2b79f4, imac 0x32ad50;
    virtual unsigned int getQuadsToDraw() = m1 0x2b7b40, imac 0x32aec0;
    virtual void setQuadsToDraw(unsigned int) = m1 0x2b7b48, imac 0x32aed0;
    virtual void updateAtlasValues() = m1 0x2b7610, imac 0x32a970;
    virtual void draw() = m1 0x2b7614, imac 0x32a980;
    virtual cocos2d::CCTexture2D* getTexture() = m1 0x2b7adc, imac 0x32ae40;
    virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x2b7a08, imac 0x32ad70;
    virtual bool isOpacityModifyRGB() = m1 0x2b79c8, imac 0x32ad00;
    virtual void setOpacityModifyRGB(bool) = m1 0x2b7900, imac 0x32ac50;
    virtual cocos2d::ccColor3B const& getColor() = m1 0x2b7720, imac 0x32aa70;
    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x2b7754, imac 0x32aab0;
    virtual void setOpacity(unsigned char) = m1 0x2b7868, imac 0x32abc0;
}

[[link(win, android)]]
class cocos2d::CCAutoreleasePool : cocos2d::CCObject {
    CCAutoreleasePool();
    virtual ~CCAutoreleasePool() = ios inline {
        CC_SAFE_DELETE(m_pManagedObjectArray);
    }

    void addObject(cocos2d::CCObject*) = ios inline {
        m_pManagedObjectArray->addObject(p0);
        p0->m_uAutoReleaseCount++;
        p0->release();
    }
    void removeObject(cocos2d::CCObject*) = ios inline {
        for (int i = 0; i < p0->m_uAutoReleaseCount; i++) {
            m_pManagedObjectArray->removeObject(p0, false);
        }
    }
    void clear();
}

[[link(win, android)]]
class cocos2d::CCDataVisitor {
    virtual void visit(cocos2d::CCBool const*) = ios inline, m1 0x415e1c, imac 0x4b4b40 {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCInteger const*) = ios inline, m1 0x415e28, imac 0x4b4b50 {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCFloat const*) = ios inline, m1 0x415e34, imac 0x4b4b60 {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCDouble const*) = ios inline, m1 0x415e40, imac 0x4b4b70 {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCString const*) = ios inline, m1 0x415e4c, imac 0x4b4b80 {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCArray const*) = ios inline, m1 0x415e58, imac 0x4b4b90 {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCDictionary const*) = ios inline, m1 0x415e64, imac 0x4b4ba0 {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCSet const*) = ios inline, m1 0x415e70, imac 0x4b4bb0 {
        return visitObject(p0);
    }
}

[[link(win, android)]]
class cocos2d::CCPrettyPrinter : cocos2d::CCDataVisitor {
    [[since("4.10.1")]]
    CCPrettyPrinter(int) = win inline {
        setIndentLevel(p0);
    }

    void setIndentLevel(int);

    virtual void clear() = m1 0x41606c, imac 0x4b4d70;
    virtual gd::string getResult() = m1 0x416090, imac 0x4b4da0;
    virtual void visitObject(cocos2d::CCObject const*) = m1 0x4160b8, imac 0x4b4de0;
    virtual void visit(cocos2d::CCBool const*) = m1 0x416138, imac 0x4b4e60;
    virtual void visit(cocos2d::CCInteger const*) = m1 0x4161c8, imac 0x4b4ef0;
    virtual void visit(cocos2d::CCFloat const*) = m1 0x41624c, imac 0x4b4f70;
    virtual void visit(cocos2d::CCDouble const*) = m1 0x4162d4, imac 0x4b4ff0;
    virtual void visit(cocos2d::CCString const*) = m1 0x416358, imac 0x4b5070;
    virtual void visit(cocos2d::CCArray const*) = m1 0x416384, imac 0x4b50a0;
    virtual void visit(cocos2d::CCDictionary const*) = m1 0x4167d0, imac 0x4b55b0;
    virtual void visit(cocos2d::CCSet const*) = m1 0x416b9c, imac 0x4b5a50;
}

[[link(win, android)]]
class cocos2d::CCDictElement {
    private CCDictElement(char const*, cocos2d::CCObject*) = win inline, ios inline {
        m_iKey = 0;
        auto pStart = p0;
        int len = strlen(p0);
        if (len > MAX_KEY_LEN) pStart = p0 + len - MAX_KEY_LEN;
        strncpy(m_szKey, pStart, std::min(len, MAX_KEY_LEN));
        m_pObject = p1;
        memset(&hh, 0, sizeof(hh));
    }
    private CCDictElement(intptr_t, cocos2d::CCObject*) = win inline, ios inline {
        m_szKey[0] = '\0';
        m_iKey = p0;
        m_pObject = p1;
        memset(&hh, 0, sizeof(hh));
    }
    ~CCDictElement() = ios inline {}
}

[[link(win, android)]]
class cocos2d::CCPointArray : cocos2d::CCObject {
    static cocos2d::CCPointArray* create(unsigned int);

    CCPointArray();
    virtual ~CCPointArray();

    bool initWithCapacity(unsigned int);
    void addControlPoint(cocos2d::CCPoint);
    void insertControlPoint(cocos2d::CCPoint&, unsigned int);
    void replaceControlPoint(cocos2d::CCPoint&, unsigned int);
    cocos2d::CCPoint getControlPointAtIndex(unsigned int);
    void removeControlPointAtIndex(unsigned int);
    unsigned int count();
    cocos2d::CCPointArray* reverse();
    void reverseInline();
    gd::vector<cocos2d::CCPoint*> const* getControlPoints();
    void setControlPoints(gd::vector<cocos2d::CCPoint*>*);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x26ba5c, imac 0x2d0660;
}

[[link(win, android)]]
class cocos2d::CCGrid3D : cocos2d::CCGridBase {
    static cocos2d::CCGrid3D* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool);
    static cocos2d::CCGrid3D* create(cocos2d::CCSize const&);

    CCGrid3D();
    virtual ~CCGrid3D();

    cocos2d::ccVertex3F vertex(cocos2d::CCPoint const&);
    cocos2d::ccVertex3F originalVertex(cocos2d::CCPoint const&);
    void setVertex(cocos2d::CCPoint const&, cocos2d::ccVertex3F const&);

    virtual void blit() = m1 0x43ee84, imac 0x4e38a0;
    virtual void reuse() = m1 0x43f3d8, imac 0x4e4040;
    virtual void calculateVertexPoints() = m1 0x43ef28, imac 0x4e3940;
}

[[link(win, android)]]
class cocos2d::CCGridBase : cocos2d::CCObject {
    static cocos2d::CCGridBase* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool);
    static cocos2d::CCGridBase* create(cocos2d::CCSize const&);

    virtual ~CCGridBase();

    void setActive(bool);
    void setTextureFlipped(bool);
    bool initWithSize(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool);
    bool initWithSize(cocos2d::CCSize const&);
    void beforeDraw();
    void afterDraw(cocos2d::CCNode*);
    void set2DProjection();

    virtual void blit() = m1 0x43eb74, imac 0x4e3550;
    virtual void reuse() = m1 0x43eb78, imac 0x4e3560;
    virtual void calculateVertexPoints() = m1 0x43eb7c, imac 0x4e3570;
}

[[link(win, android)]]
class cocos2d::CCTiledGrid3D : cocos2d::CCGridBase {
    static cocos2d::CCTiledGrid3D* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool);
    static cocos2d::CCTiledGrid3D* create(cocos2d::CCSize const&);

    CCTiledGrid3D();
    virtual ~CCTiledGrid3D();

    cocos2d::ccQuad3 tile(cocos2d::CCPoint const&);
    cocos2d::ccQuad3 originalTile(cocos2d::CCPoint const&);
    void setTile(cocos2d::CCPoint const&, cocos2d::ccQuad3 const&);

    virtual void blit() = m1 0x43f73c, imac 0x4e43d0;
    virtual void reuse() = m1 0x43faf0, imac 0x4e4a90;
    virtual void calculateVertexPoints() = m1 0x43f7e0, imac 0x4e4470;
}

[[link(win, android)]]
class cocos2d::extension::CCInvocation : cocos2d::CCObject {
    static cocos2d::extension::CCInvocation* create(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent);

    [[since("4.10.1")]]
    CCInvocation(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = win inline, ios inline {
        m_action = p1;
        m_target = p0;
        m_controlEvent = p2;
    }

    void invoke(cocos2d::CCObject*);
}

[[link(win, android)]]
class cocos2d::extension::CCControlButton : cocos2d::extension::CCControl {
    static cocos2d::extension::CCControlButton* create(cocos2d::CCNode*, cocos2d::extension::CCScale9Sprite*);
    static cocos2d::extension::CCControlButton* create(gd::string, char const*, float);
    static cocos2d::extension::CCControlButton* create(cocos2d::extension::CCScale9Sprite*);
    static cocos2d::extension::CCControlButton* create();

    CCControlButton();
    virtual ~CCControlButton();

    bool doesAdjustBackgroundImage();
    void setAdjustBackgroundImage(bool);

    virtual void needsLayout() = m1 0x2e0b98, imac 0x354520;
    virtual void setEnabled(bool) = m1 0x2e00a8, imac 0x353a90;
    virtual void setSelected(bool) = m1 0x2e00d4, imac 0x353ab0;
    virtual void setHighlighted(bool) = m1 0x2e0100, imac 0x353ad0;
    virtual cocos2d::CCSize getPreferredSize() = m1 0x2e02d0, imac 0x353c80;
    virtual void setPreferredSize(cocos2d::CCSize) = m1 0x2e021c, imac 0x353bc0;
    virtual bool getZoomOnTouchDown() = m1 0x2e0214, imac 0x353bb0;
    virtual void setZoomOnTouchDown(bool) = m1 0x2e020c, imac 0x353ba0;
    virtual cocos2d::CCPoint getLabelAnchorPoint() = m1 0x2e02e4, imac 0x353cb0;
    virtual void setLabelAnchorPoint(cocos2d::CCPoint) = m1 0x2e02f0, imac 0x353cd0;
    virtual unsigned char getOpacity() = m1 0x2e14ec, imac 0x354ea0;
    virtual void setOpacity(unsigned char) = m1 0x2e1440, imac 0x354de0;
    virtual cocos2d::ccColor3B const& getColor() = m1 0x2e15a8, imac 0x354f80;
    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x2e14fc, imac 0x354ec0;
    virtual void setMargins(int, int) = m1 0x2e0094, imac 0x353a70;
    virtual bool init() = m1 0x2df858, imac 0x353120;
    virtual bool initWithLabelAndBackgroundSprite(cocos2d::CCNode*, cocos2d::extension::CCScale9Sprite*) = m1 0x2df8a8, imac 0x353170;
    virtual bool initWithTitleAndFontNameAndFontSize(gd::string, char const*, float) = m1 0x2dfdbc, imac 0x353700;
    virtual bool initWithBackgroundSprite(cocos2d::extension::CCScale9Sprite*) = m1 0x2dff60, imac 0x3538e0;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2e1064, imac 0x354a40;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2e1204, imac 0x354be0;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2e1374, imac 0x354d20;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2e15b8, imac 0x354fa0;
    virtual cocos2d::CCString* getTitleForState(unsigned int) = m1 0x2e0338, imac 0x353d10;
    virtual void setTitleForState(cocos2d::CCString*, unsigned int) = m1 0x2e03e0, imac 0x353da0;
    virtual cocos2d::ccColor3B const getTitleColorForState(unsigned int) = m1 0x2e0458, imac 0x353e10;
    virtual void setTitleColorForState(cocos2d::ccColor3B, unsigned int) = m1 0x2e04b4, imac 0x353e70;
    virtual cocos2d::CCNode* getTitleLabelForState(unsigned int) = m1 0x2e057c, imac 0x353f30;
    virtual void setTitleLabelForState(cocos2d::CCNode*, unsigned int) = m1 0x2e05bc, imac 0x353f70;
    virtual void setTitleTTFForState(char const*, unsigned int) = m1 0x2e06a4, imac 0x354040;
    virtual char const* getTitleTTFForState(unsigned int) = m1 0x2e075c, imac 0x3540e0;
    virtual void setTitleTTFSizeForState(float, unsigned int) = m1 0x2e07c4, imac 0x354150;
    virtual float getTitleTTFSizeForState(unsigned int) = m1 0x2e0838, imac 0x3541d0;
    virtual void setTitleBMFontForState(char const*, unsigned int) = m1 0x2e089c, imac 0x354240;
    virtual char const* getTitleBMFontForState(unsigned int) = m1 0x2e0950, imac 0x3542e0;
    virtual cocos2d::extension::CCScale9Sprite* getBackgroundSpriteForState(unsigned int) = m1 0x2e09b8, imac 0x354350;
    virtual void setBackgroundSpriteForState(cocos2d::extension::CCScale9Sprite*, unsigned int) = m1 0x2e09f8, imac 0x354390;
    virtual void setBackgroundSpriteFrameForState(cocos2d::CCSpriteFrame*, unsigned int) = m1 0x2e0b5c, imac 0x3544f0;
}

[[link(win, android)]]
class cocos2d::extension::CCControlPotentiometer : cocos2d::extension::CCControl {
    static cocos2d::extension::CCControlPotentiometer* create(char const*, char const*, char const*);

    CCControlPotentiometer();
    virtual ~CCControlPotentiometer();

    bool initWithTrackSprite_ProgressTimer_ThumbSprite(cocos2d::CCSprite*, cocos2d::CCProgressTimer*, cocos2d::CCSprite*);
    void setValue(float);
    float getValue();
    void setMinimumValue(float);
    float getMinimumValue();
    void setMaximumValue(float);
    float getMaximumValue();
    void potentiometerBegan(cocos2d::CCPoint);
    void potentiometerMoved(cocos2d::CCPoint);
    void potentiometerEnded(cocos2d::CCPoint);
    float distanceBetweenPointAndPoint(cocos2d::CCPoint, cocos2d::CCPoint);
    float angleInDegreesBetweenLineFromPoint_toPoint_toLineFromPoint_toPoint(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);

    virtual void setEnabled(bool) = m1 0x2e5ea4, imac 0x35a870;
    virtual bool isTouchInside(cocos2d::CCTouch*) = m1 0x2e6030, imac 0x35aa40;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2e613c, imac 0x35ab70;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2e630c, imac 0x35ad30;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2e6544, imac 0x35af90;
}

[[link(win, android)]]
class cocos2d::extension::CCControlSlider : cocos2d::extension::CCControl {
    static cocos2d::extension::CCControlSlider* create(char const*, char const*, char const*);
    static cocos2d::extension::CCControlSlider* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*);

    CCControlSlider();
    virtual ~CCControlSlider();

    cocos2d::CCPoint locationFromTouch(cocos2d::CCTouch*);
    void sliderBegan(cocos2d::CCPoint);
    void sliderMoved(cocos2d::CCPoint);
    void sliderEnded(cocos2d::CCPoint);
    float valueForLocation(cocos2d::CCPoint);

    virtual void setValue(float) = m1 0x324d84, imac 0x39fbe0;
    virtual void setMinimumValue(float) = m1 0x324dd8, imac 0x39fc30;
    virtual void setMaximumValue(float) = m1 0x324e08, imac 0x39fc80;
    virtual void setEnabled(bool) = m1 0x324d34, imac 0x39fb90;
    virtual bool isTouchInside(cocos2d::CCTouch*) = m1 0x324e38, imac 0x39fcd0;
    virtual bool initWithSprites(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = m1 0x324a78, imac 0x39f8d0;
    virtual void needsLayout() = m1 0x325518, imac 0x3a03e0;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x324f88, imac 0x39fe10;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x3251b8, imac 0x3a0060;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x32534c, imac 0x3a0210;
}

[[link(win, android)]]
class cocos2d::extension::CCControlStepper : cocos2d::extension::CCControl {
    static cocos2d::extension::CCControlStepper* create(cocos2d::CCSprite*, cocos2d::CCSprite*);

    CCControlStepper();
    virtual ~CCControlStepper();

    bool initWithMinusSpriteAndPlusSprite(cocos2d::CCSprite*, cocos2d::CCSprite*);
    void updateLayoutUsingTouchLocation(cocos2d::CCPoint);
    void startAutorepeat();
    void stopAutorepeat();

    virtual void setWraps(bool) = m1 0x328698, imac 0x3a3cf0;
    virtual void setMinimumValue(double) = m1 0x328724, imac 0x3a3d60;
    virtual void setMaximumValue(double) = m1 0x328738, imac 0x3a3d90;
    virtual void setValue(double) = m1 0x32874c, imac 0x3a3dc0;
    virtual double getValue() = m1 0x32875c, imac 0x3a3de0;
    virtual void setStepValue(double) = m1 0x328764, imac 0x3a3df0;
    virtual void setValueWithSendingEvent(double, bool) = m1 0x328774, imac 0x3a3e10;
    virtual bool isContinuous() = m1 0x32876c, imac 0x3a3e00;
    virtual void update(float) = m1 0x3288c4, imac 0x3a3f70;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x328a34, imac 0x3a40f0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x328bdc, imac 0x3a42a0;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x328dc8, imac 0x3a4490;
}

[[link(win, android)]]
class cocos2d::extension::CCControlSwitch : cocos2d::extension::CCControl {
    static cocos2d::extension::CCControlSwitch* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*);
    static cocos2d::extension::CCControlSwitch* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCLabelTTF*, cocos2d::CCLabelTTF*);

    CCControlSwitch();
    virtual ~CCControlSwitch();

    bool initWithMaskSprite(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*);
    bool initWithMaskSprite(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCLabelTTF*, cocos2d::CCLabelTTF*);
    void setOn(bool, bool);
    void setOn(bool);
    cocos2d::CCPoint locationFromTouch(cocos2d::CCTouch*);

    virtual void setEnabled(bool) = m1 0x32cb24, imac 0x3a8760;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x32cb9c, imac 0x3a87f0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x32cc68, imac 0x3a88e0;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x32cd18, imac 0x3a89b0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x32ce40, imac 0x3a8ae0;
}

[[link(win, android)]]
class cocos2d::extension::CCEditBox : cocos2d::extension::CCControlButton, cocos2d::CCIMEDelegate {
    static cocos2d::extension::CCEditBox* create(cocos2d::CCSize const&, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*);

    CCEditBox();
    virtual ~CCEditBox();

    bool initWithSizeAndBackgroundSprite(cocos2d::CCSize const&, cocos2d::extension::CCScale9Sprite*);
    void setDelegate(cocos2d::extension::CCEditBoxDelegate*);
    cocos2d::extension::CCEditBoxDelegate* getDelegate();
    void registerScriptEditBoxHandler(int);
    void unregisterScriptEditBoxHandler();
    void setText(char const*);
    char const* getText();
    void setFont(char const*, int);
    void setFontName(char const*);
    void setFontSize(int);
    void setFontColor(cocos2d::ccColor3B const&);
    void setPlaceholderFont(char const*, int);
    void setPlaceholderFontName(char const*);
    void setPlaceholderFontSize(int);
    void setPlaceholderFontColor(cocos2d::ccColor3B const&);
    void setPlaceHolder(char const*);
    char const* getPlaceHolder();
    void setInputMode(cocos2d::extension::EditBoxInputMode);
    void setMaxLength(int);
    int getMaxLength();
    void setInputFlag(cocos2d::extension::EditBoxInputFlag);
    void setReturnType(cocos2d::extension::KeyboardReturnType);
    void touchDownAction(cocos2d::CCObject*, cocos2d::extension::CCControlEvent);

    virtual void setPosition(cocos2d::CCPoint const&) = m1 0x40d6ec, imac 0x4aa640;
    virtual void setVisible(bool) = m1 0x40d730, imac 0x4aa680;
    virtual void setContentSize(cocos2d::CCSize const&) = m1 0x40d774, imac 0x4aa6c0;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = m1 0x40d7b8, imac 0x4aa700;
    virtual void visit() = m1 0x40d7fc, imac 0x4aa740;
    virtual void onEnter() = m1 0x40d838, imac 0x4aa770;
    virtual void onExit() = m1 0x40d874, imac 0x4aa7a0;
    virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&) = m1 0x40d8b0, imac 0x4aa7d0;
    virtual void keyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&) = m1 0x40d98c, imac 0x4aa8e0;
    virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&) = m1 0x40d994, imac 0x4aa900;
    virtual void keyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&) = m1 0x40d9e4, imac 0x4aa980;
}

[[link(win, android)]]
class cocos2d::extension::CCScrollView : cocos2d::CCLayer {
    static cocos2d::extension::CCScrollView* create(cocos2d::CCSize, cocos2d::CCNode*);
    static cocos2d::extension::CCScrollView* create();

    CCScrollView();
    virtual ~CCScrollView();

    bool initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*);
    void setContentOffset(cocos2d::CCPoint, bool);
    cocos2d::CCPoint getContentOffset();
    void setContentOffsetInDuration(cocos2d::CCPoint, float);
    void setZoomScale(float);
    void setZoomScale(float, bool);
    float getZoomScale();
    void setZoomScaleInDuration(float, float);
    cocos2d::CCPoint minContainerOffset();
    cocos2d::CCPoint maxContainerOffset();
    bool isNodeVisible(cocos2d::CCNode*);
    void pause(cocos2d::CCObject*);
    void resume(cocos2d::CCObject*);
    void setViewSize(cocos2d::CCSize);
    cocos2d::CCNode* getContainer();
    void setContainer(cocos2d::CCNode*);
    void updateInset();
    void relocateContainer(bool);
    void deaccelerateScrolling(float);
    void performedAnimatedScroll(float);
    void stoppedAnimatedScroll(cocos2d::CCNode*);
    void beforeDraw();
    void afterDraw();
    cocos2d::CCRect getViewRect();
    void registerScriptHandler(int, int);
    void unregisterScriptHandler(int);
    int getScriptHandler(int);

    virtual bool init() = m1 0x36fe6c, imac 0x3f70d0;
    virtual void registerWithTouchDispatcher() = m1 0x36feb4, imac 0x3f7110;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x371358, imac 0x3f86b0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x3715b4, imac 0x3f8930;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x3718e0, imac 0x3f8d00;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x371990, imac 0x3f8dc0;
    virtual void setContentSize(cocos2d::CCSize const&) = m1 0x370c48, imac 0x3f7f80;
    virtual cocos2d::CCSize const& getContentSize() const = m1 0x370c38, imac 0x3f7f60;
    virtual void visit() = m1 0x3711b8, imac 0x3f8540;
    virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x370db4, imac 0x3f8150;
    virtual void addChild(cocos2d::CCNode*, int) = m1 0x370e70, imac 0x3f81e0;
    virtual void addChild(cocos2d::CCNode*) = m1 0x370ec4, imac 0x3f8220;
    virtual void setTouchEnabled(bool) = m1 0x3700d4, imac 0x3f7360;
}

[[link(win, android)]]
class cocos2d::extension::CCArrayForObjectSorting : cocos2d::CCArray {
    void insertSortedObject(cocos2d::extension::CCSortableObject*);
    void removeSortedObject(cocos2d::extension::CCSortableObject*);
    void setObjectID_ofSortedObject(unsigned int, cocos2d::extension::CCSortableObject*);
    cocos2d::extension::CCSortableObject* objectWithObjectID(unsigned int);
    unsigned int indexOfSortedObject(cocos2d::extension::CCSortableObject*);
}

[[link(win, android)]]
class cocos2d::extension::CCTableView : cocos2d::extension::CCScrollView, cocos2d::extension::CCScrollViewDelegate {
    static cocos2d::extension::CCTableView* create(cocos2d::extension::CCTableViewDataSource*, cocos2d::CCSize);
    static cocos2d::extension::CCTableView* create(cocos2d::extension::CCTableViewDataSource*, cocos2d::CCSize, cocos2d::CCNode*);

    CCTableView();
    virtual ~CCTableView();

    void setVerticalFillOrder(cocos2d::extension::CCTableViewVerticalFillOrder);
    cocos2d::extension::CCTableViewVerticalFillOrder getVerticalFillOrder();
    bool initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*);
    void updateCellAtIndex(unsigned int);
    void insertCellAtIndex(unsigned int);
    void removeCellAtIndex(unsigned int);
    void reloadData();
    cocos2d::extension::CCTableViewCell* dequeueCell();
    cocos2d::extension::CCTableViewCell* cellAtIndex(unsigned int);
    int __indexFromOffset(cocos2d::CCPoint);
    unsigned int _indexFromOffset(cocos2d::CCPoint);
    cocos2d::CCPoint __offsetFromIndex(unsigned int);
    cocos2d::CCPoint _offsetFromIndex(unsigned int);
    void _moveCellOutOfSight(cocos2d::extension::CCTableViewCell*);
    void _setIndexForCell(unsigned int, cocos2d::extension::CCTableViewCell*);
    void _addCellIfNecessary(cocos2d::extension::CCTableViewCell*);
    void _updateCellPositions();
    void _updateContentSize();
    void unregisterAllScriptHandler();

    virtual void scrollViewDidScroll(cocos2d::extension::CCScrollView*) = m1 0x39fcb8, imac 0x42d1d0;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x39ffd4, imac 0x42d5a0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x3a014c, imac 0x42d720;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x39fef4, imac 0x42d4a0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x3a01f4, imac 0x42d7d0;
}

[[link(win, android)]]
class cocos2d::extension::CCTableViewCell : cocos2d::CCNode, cocos2d::extension::CCSortableObject {
    unsigned int getIdx();
    void setIdx(unsigned int);
    void reset();

    virtual void setObjectID(unsigned int) = m1 0x3a9300, imac 0x437330;
    virtual unsigned int getObjectID() = m1 0x3a9310, imac 0x437350;
}

[[link(win, android)]]
class cocos2d::CCKeypadHandler : cocos2d::CCObject {
    static cocos2d::CCKeypadHandler* handlerWithDelegate(cocos2d::CCKeypadDelegate*);

    virtual ~CCKeypadHandler();

    cocos2d::CCKeypadDelegate* getDelegate();
    void setDelegate(cocos2d::CCKeypadDelegate*) = ios inline {
        if (auto delegate = geode::cast::typeinfo_cast<cocos2d::CCObject*>(p0)) delegate->retain();
        if (auto delegate = geode::cast::typeinfo_cast<cocos2d::CCObject*>(m_pDelegate)) delegate->release();
        m_pDelegate = p0;
    }

    virtual bool initWithDelegate(cocos2d::CCKeypadDelegate*) = m1 0x342eb8, imac 0x3c15b0;
}

[[link(win, android)]]
class cocos2d::CCLayerMultiplex : cocos2d::CCLayer {
    static cocos2d::CCLayerMultiplex* create();
    static cocos2d::CCLayerMultiplex* createWithArray(cocos2d::CCArray*);
    static cocos2d::CCLayerMultiplex* create(cocos2d::CCLayer*);
    static cocos2d::CCLayerMultiplex* createWithLayer(cocos2d::CCLayer*);

    CCLayerMultiplex();
    virtual ~CCLayerMultiplex();

    void addLayer(cocos2d::CCLayer*);
    bool initWithLayers(cocos2d::CCLayer*, va_list);
    bool initWithArray(cocos2d::CCArray*);
    void switchTo(unsigned int);
    void switchToAndReleaseMe(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCTouchScriptHandlerEntry : cocos2d::CCScriptHandlerEntry {
    static cocos2d::CCTouchScriptHandlerEntry* create(int, bool, int, bool);

    [[since("4.10.1")]]
    virtual ~CCTouchScriptHandlerEntry();

    bool init(bool, int, bool);
}

[[link(win, android)]]
class cocos2d::CCTransitionSceneOriented : cocos2d::CCTransitionScene {
    static cocos2d::CCTransitionSceneOriented* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    CCTransitionSceneOriented();
    virtual ~CCTransitionSceneOriented();

    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::tOrientation) = m1 0xbbb94, imac 0xd4e40;
}

[[link(win, android)]]
class cocos2d::CCTransitionPageTurn : cocos2d::CCTransitionScene {
    static cocos2d::CCTransitionPageTurn* create(float, cocos2d::CCScene*, bool);

    CCTransitionPageTurn();
    virtual ~CCTransitionPageTurn();

    cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);

    virtual bool initWithDuration(float, cocos2d::CCScene*, bool) = m1 0x3586f8, imac 0x3d9460;
    virtual void onEnter() = m1 0x358720, imac 0x3d94a0;
    virtual void sceneOrder() = m1 0x358714, imac 0x3d9480;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgress : cocos2d::CCTransitionScene {
    static cocos2d::CCTransitionProgress* create(float, cocos2d::CCScene*);

    CCTransitionProgress();

    virtual void onEnter() = m1 0x22daf0, imac 0x28d000;
    virtual void onExit() = m1 0x22dca0, imac 0x28d1b0;
    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = m1 0x22dcf4, imac 0x28d220;
    virtual void setupTransition() = m1 0x22dcdc, imac 0x28d1f0;
    virtual void sceneOrder() = m1 0x22dcd4, imac 0x28d1e0;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressHorizontal : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressHorizontal* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = m1 0x22e108, imac 0x28d5b0;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressInOut : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressInOut* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = m1 0x22e4d0, imac 0x28d950;
    virtual void sceneOrder() = m1 0x22e4b0, imac 0x28d910;
    virtual void setupTransition() = m1 0x22e4b8, imac 0x28d920;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressOutIn : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressOutIn* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = m1 0x22e6a8, imac 0x28db00;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCCW : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressRadialCCW* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = m1 0x22dcfc, imac 0x28d230;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCW : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressRadialCW* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = m1 0x22df6c, imac 0x28d440;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressVertical : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressVertical* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = m1 0x22e2dc, imac 0x28d760;
}

[[link(win, android)]]
class cocos2d::CCLabelAtlas : cocos2d::CCAtlasNode, cocos2d::CCLabelProtocol {
    static cocos2d::CCLabelAtlas* create(char const*, char const*, unsigned int, unsigned int, unsigned int);
    static cocos2d::CCLabelAtlas* create(char const*, char const*);

    bool initWithString(char const*, char const*, unsigned int, unsigned int, unsigned int);
    bool initWithString(char const*, char const*);
    bool initWithString(char const*, cocos2d::CCTexture2D*, unsigned int, unsigned int, unsigned int);

    virtual void updateAtlasValues() = m1 0x6a0f70, imac 0x799360;
    virtual void setString(char const*) = m1 0x6a11c0, imac 0x799630;
    virtual char const* getString() = m1 0x6a1298, imac 0x799720;
}

[[link(win, android)]]
class cocos2d::CCMenuItemAtlasFont : cocos2d::CCMenuItemLabel {
    static cocos2d::CCMenuItemAtlasFont* create(char const*, char const*, int, int, char);
    static cocos2d::CCMenuItemAtlasFont* create(char const*, char const*, int, int, char, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

    bool initWithString(char const*, char const*, int, int, char, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
}

[[link(win, android)]]
class cocos2d::CCMenuItemFont : cocos2d::CCMenuItemLabel {
    static void setFontSize(unsigned int);
    static unsigned int fontSize();
    static void setFontName(char const*);
    static char const* fontName();
    static cocos2d::CCMenuItemFont* create(char const*);
    static cocos2d::CCMenuItemFont* create(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);

    bool initWithString(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
    void setFontSizeObj(unsigned int);
    unsigned int fontSizeObj();
    void setFontNameObj(char const*);
    char const* fontNameObj();
    void recreateLabel();
}

[[link(win, android)]]
class cocos2d::CCMenuItemLabel : cocos2d::CCMenuItem {
    static cocos2d::CCMenuItemLabel* create(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
    static cocos2d::CCMenuItemLabel* create(cocos2d::CCNode*);

    [[since("until 4.10.1")]]
    ~CCMenuItemLabel() = mac inline {}

    bool initWithLabel(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
    void setString(char const*);

    virtual cocos2d::ccColor3B const& getDisabledColor() = m1 0x340260, imac 0x3be660;
    virtual void setDisabledColor(cocos2d::ccColor3B const&) = m1 0x340268, imac 0x3be670;
    virtual cocos2d::CCNode* getLabel() = m1 0x34027c, imac 0x3be690;
    virtual void setLabel(cocos2d::CCNode*) = m1 0x340284, imac 0x3be6a0;
    virtual void activate() = m1 0x340814, imac 0x3bec40;
    virtual void selected() = m1 0x3408b8, imac 0x3becd0;
    virtual void unselected() = m1 0x340960, imac 0x3bed60;
    virtual void setEnabled(bool) = m1 0x3409d0, imac 0x3bedc0;
}

[[link(win, android)]]
class cocos2d::CCMenuItemToggle : cocos2d::CCMenuItem {
    static cocos2d::CCMenuItemToggle* createWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCArray*);
    static cocos2d::CCMenuItemToggle* createWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCMenuItem*);
    static cocos2d::CCMenuItemToggle* create();
    static cocos2d::CCMenuItemToggle* create(cocos2d::CCMenuItem*);

    virtual ~CCMenuItemToggle();

    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCMenuItem*, va_list);
    bool initWithItem(cocos2d::CCMenuItem*);
    void addSubItem(cocos2d::CCMenuItem*);
    cocos2d::CCMenuItem* selectedItem();

    virtual unsigned int getSelectedIndex() = m1 0x342920, imac 0x3c0f90;
    virtual void setSelectedIndex(unsigned int) = m1 0x342824, imac 0x3c0ea0;
    virtual cocos2d::CCArray* getSubItems() = m1 0x34206c, imac 0x3c0500;
    virtual void setSubItems(cocos2d::CCArray*) = m1 0x342030, imac 0x3c04c0;
    virtual void activate() = m1 0x342984, imac 0x3c1000;
    virtual void selected() = m1 0x342928, imac 0x3c0fa0;
    virtual void unselected() = m1 0x342958, imac 0x3c0fd0;
    virtual void setEnabled(bool) = m1 0x342a34, imac 0x3c10b0;
}

[[link(win, android)]]
class cocos2d::CCParticleFireworks : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFireworks* create();
    static cocos2d::CCParticleFireworks* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = m1 0x3ea9ac, imac 0x484e20;
}

[[link(win, android)]]
class cocos2d::CCParticleFlower : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFlower* create();
    static cocos2d::CCParticleFlower* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = m1 0x3eb1f8, imac 0x485620;
}

[[link(win, android)]]
class cocos2d::CCParticleGalaxy : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleGalaxy* create();
    static cocos2d::CCParticleGalaxy* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = m1 0x3eaee8, imac 0x485340;
}

[[link(win, android)]]
class cocos2d::CCParticleMeteor : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleMeteor* create();
    static cocos2d::CCParticleMeteor* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = m1 0x3eb508, imac 0x485910;
}

[[link(win, android)]]
class cocos2d::CCParticleSmoke : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSmoke* create();
    static cocos2d::CCParticleSmoke* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = m1 0x3ebe28, imac 0x4861a0;
}

[[link(win, android)]]
class cocos2d::CCParticleSpiral : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSpiral* create();
    static cocos2d::CCParticleSpiral* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = m1 0x3eb820, imac 0x485c00;
}

[[link(win, android)]]
class cocos2d::CCParticleSun : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSun* create();
    static cocos2d::CCParticleSun* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = m1 0x3eac14, imac 0x485090;
}

[[link(win, android)]]
class cocos2d::CCParticleBatchNode : cocos2d::CCNode, cocos2d::CCTextureProtocol {
    static cocos2d::CCParticleBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int);
    static cocos2d::CCParticleBatchNode* create(char const*, unsigned int);

    CCParticleBatchNode();
    virtual ~CCParticleBatchNode();

    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int);
    bool initWithFile(char const*, unsigned int);
    void insertChild(cocos2d::CCParticleSystem*, unsigned int);
    void removeChildAtIndex(unsigned int, bool);
    void disableParticle(unsigned int);
    void updateAllAtlasIndexes();
    void increaseAtlasCapacityTo(unsigned int);
    unsigned int searchNewPositionInChildrenForZ(int);
    void getCurrentIndex(unsigned int*, unsigned int*, cocos2d::CCNode*, int);
    unsigned int addChildHelper(cocos2d::CCParticleSystem*, int, int);
    void updateBlendFunc();

    virtual void addChild(cocos2d::CCNode*) = m1 0x349c28, imac 0x3c8780;
    virtual void addChild(cocos2d::CCNode*, int) = m1 0x349c2c, imac 0x3c8790;
    virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x349c30, imac 0x3c87a0;
    virtual void removeChild(cocos2d::CCNode*, bool) = m1 0x34a57c, imac 0x3c8ff0;
    virtual void reorderChild(cocos2d::CCNode*, int) = m1 0x34a0f0, imac 0x3c8be0;
    virtual void removeAllChildrenWithCleanup(bool) = m1 0x34a6c4, imac 0x3c9120;
    virtual void draw() = m1 0x34a750, imac 0x3c91b0;
    virtual cocos2d::CCTexture2D* getTexture() = m1 0x34a92c, imac 0x3c9390;
    virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x34a86c, imac 0x3c92f0;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = m1 0x34a94c, imac 0x3c93c0;
    virtual cocos2d::ccBlendFunc getBlendFunc() = m1 0x34a95c, imac 0x3c93e0;
    virtual void visit() = m1 0x349ba4, imac 0x3c8710;
}

[[link(win, android)]]
class cocos2d::CCDevice {
    static int getDPI();
}

[[link(win, android)]]
class cocos2d::CCSAXParser {
    static void startElement(void*, cocos2d::CC_XML_CHAR const*, const CC_XML_CHAR **);
    static void endElement(void*, cocos2d::CC_XML_CHAR const*);
    static void textHandler(void*, cocos2d::CC_XML_CHAR const*, int);

    CCSAXParser();
    ~CCSAXParser();

    bool init(char const*);
    bool parse(char const*, unsigned int);
    bool parse(char const*);
    void setDelegator(cocos2d::CCSAXDelegator*);
}

[[link(win, android)]]
class cocos2d::CCThread {
    ~CCThread();

    void createAutoreleasePool();
}

[[link(win, android)]]
class cocos2d::CCTime {
    static int gettimeofdayCocos2d(cocos2d::cc_timeval*, void*);
    static double timersubCocos2d(cocos2d::cc_timeval*, cocos2d::cc_timeval*);
}

[[link(win, android)]]
class cocos2d::CCKeyboardHandler : cocos2d::CCObject {
    static cocos2d::CCKeyboardHandler* handlerWithDelegate(cocos2d::CCKeyboardDelegate*);

    virtual ~CCKeyboardHandler();

    cocos2d::CCKeyboardDelegate* getDelegate();
    void setDelegate(cocos2d::CCKeyboardDelegate*) = ios inline {
        if (auto delegate = geode::cast::typeinfo_cast<cocos2d::CCObject*>(p0)) delegate->retain();
        if (auto delegate = geode::cast::typeinfo_cast<cocos2d::CCObject*>(m_pDelegate)) delegate->release();
        m_pDelegate = p0;
    }

    virtual bool initWithDelegate(cocos2d::CCKeyboardDelegate*) = m1 0x3af7ec, imac 0x43dce0;
}

[[link(win, android)]]
class cocos2d::CCSchedulerScriptHandlerEntry : cocos2d::CCScriptHandlerEntry {
    static cocos2d::CCSchedulerScriptHandlerEntry* create(int, float, bool);

    [[since("4.10.1")]]
    virtual ~CCSchedulerScriptHandlerEntry();

    bool init(float, bool);
}

[[link(win, android)]]
class cocos2d::CCScriptHandlerEntry : cocos2d::CCObject {
    static cocos2d::CCScriptHandlerEntry* create(int);

    [[since("4.10.1")]]
    virtual ~CCScriptHandlerEntry();
}

[[link(win, android)]]
class cocos2d::CCAnimationFrame : cocos2d::CCObject {
    CCAnimationFrame();
    virtual ~CCAnimationFrame();

    bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, float, cocos2d::CCDictionary*);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x236488, imac 0x2961d0;
}

[[link(win, android)]]
class cocos2d::CCComponent : cocos2d::CCObject {
    static cocos2d::CCComponent* create();

    protected CCComponent();
    virtual ~CCComponent();

    char const* getName() const;
    void setName(char const*);
    void setOwner(cocos2d::CCNode*);
    cocos2d::CCNode* getOwner() const;

    virtual bool init() = m1 0x8caa4, imac 0x9bd70;
    virtual void onEnter() = m1 0x8caac, imac 0x9bd80;
    virtual void onExit() = m1 0x8cab0, imac 0x9bd90;
    virtual void update(float) = m1 0x8cab4, imac 0x9bda0;
    virtual bool serialize(void*) = m1 0x8cab8, imac 0x9bdb0;
    virtual bool isEnabled() const = m1 0x8cb5c, imac 0x9be70;
    virtual void setEnabled(bool) = m1 0x8cb64, imac 0x9be80;
}

[[link(win, android)]]
class cocos2d::CCComponentContainer {
    protected CCComponentContainer(cocos2d::CCNode*) = win inline {
        m_pComponents = nullptr;
        m_pOwner = p0;
    }
    virtual ~CCComponentContainer();

    bool isEmpty() const;
    void alloc();

    virtual cocos2d::CCComponent* get(char const*) const = m1 0x260ec8, imac 0x2c4bb0;
    virtual bool add(cocos2d::CCComponent*) = m1 0x260ff8, imac 0x2c4cd0;
    virtual bool remove(char const*) = m1 0x26120c, imac 0x2c4ef0;
    virtual bool remove(cocos2d::CCComponent*) = m1 0x2614d8, imac 0x2c51c0;
    virtual void removeAll() = m1 0x26166c, imac 0x2c5360;
    virtual void visit(float) = m1 0x26180c, imac 0x2c5550;
}

[[link(win, android)]]
class cocos2d::CCUserDefault {
    static cocos2d::CCUserDefault* sharedUserDefault();
    static void purgeSharedUserDefault();
    static gd::string const& getXMLFilePath();
    static bool isXMLFileExist();
    static bool createXMLFile();
    static void initXMLFilePath();

    private CCUserDefault();
    ~CCUserDefault();

    bool getBoolForKey(char const*);
    bool getBoolForKey(char const*, bool);
    int getIntegerForKey(char const*);
    int getIntegerForKey(char const*, int);
    float getFloatForKey(char const*);
    float getFloatForKey(char const*, float);
    double getDoubleForKey(char const*);
    double getDoubleForKey(char const*, double);
    gd::string getStringForKey(char const*);
    gd::string getStringForKey(char const*, gd::string const&);
    void setBoolForKey(char const*, bool);
    void setIntegerForKey(char const*, int);
    void setFloatForKey(char const*, float);
    void setDoubleForKey(char const*, double);
    void setStringForKey(char const*, gd::string const&);
    void flush();
}

[[link(win, android)]]
class cocos2d::CCNotificationCenter : cocos2d::CCObject {
    static cocos2d::CCNotificationCenter* sharedNotificationCenter();
    static void purgeNotificationCenter();

    CCNotificationCenter();
    virtual ~CCNotificationCenter();

    void addObserver(cocos2d::CCObject*, cocos2d::SEL_CallFuncO, char const*, cocos2d::CCObject*);
    void removeObserver(cocos2d::CCObject*, char const*);
    int removeAllObservers(cocos2d::CCObject*);
    void registerScriptObserver(cocos2d::CCObject*, int, char const*);
    void unregisterScriptObserver(cocos2d::CCObject*, char const*);
    void postNotification(char const*);
    void postNotification(char const*, cocos2d::CCObject*);
    int getObserverHandlerByName(char const*);
    bool observerExisted(cocos2d::CCObject*, char const*);
}

[[link(win, android)]]
class cocos2d::CCNotificationObserver : cocos2d::CCObject {
    CCNotificationObserver(cocos2d::CCObject*, cocos2d::SEL_CallFuncO, char const*, cocos2d::CCObject*) = win inline {
        m_target = p0;
        m_selector = p1;
        m_object = p3;
        m_name = new char[strlen(p2) + 1];
        memset(m_name, 0, strlen(p2) + 1);
        std::string orig = p2;
        orig.copy(m_name, strlen(p2));
        m_nHandler = 0;
    }
    virtual ~CCNotificationObserver();

    void performSelector(cocos2d::CCObject*);

    virtual cocos2d::CCObject* getTarget() = m1 0x2292f8, imac 0x287b90;
    virtual cocos2d::SEL_CallFuncO getSelector() = m1 0x229300, imac 0x287ba0;
    virtual char* getName() = m1 0x22930c, imac 0x287bb0;
    virtual cocos2d::CCObject* getObject() = m1 0x229314, imac 0x287bc0;
    virtual int getHandler() = m1 0x22931c, imac 0x287bd0;
    virtual void setHandler(int) = m1 0x229324, imac 0x287be0;
}

[[link(win, android)]]
class cocos2d::CCProfiler : cocos2d::CCObject {
    static cocos2d::CCProfiler* sharedProfiler();

    virtual ~CCProfiler();

    void displayTimers();
    bool init();
    cocos2d::CCProfilingTimer* createAndAddTimerWithName(char const*);
    void releaseTimer(char const*);
    void releaseAllTimers();
}

[[link(win, android)]]
class cocos2d::CCProfilingTimer : cocos2d::CCObject {
    CCProfilingTimer();
    virtual ~CCProfilingTimer();

    bool initWithName(char const*);
    char const* description();
    void reset();
}

[[link(win, android)]]
class cocos2d::CCTextureETC : cocos2d::CCObject {
    CCTextureETC();
    virtual ~CCTextureETC();

    bool initWithFile(char const*);
    unsigned int getName() const;
    unsigned int getWidth() const;
    unsigned int getHeight() const;
    bool loadTexture(char const*);
}

[[link(win, android)]]
class cocos2d::CCTexturePVR : cocos2d::CCObject {
    static cocos2d::CCTexturePVR* create(char const*);

    CCTexturePVR();
    virtual ~CCTexturePVR();

    bool initWithContentsOfFile(char const*);
    bool unpackPVRv2Data(unsigned char*, unsigned int);
    bool unpackPVRv3Data(unsigned char*, unsigned int);
    bool createGLTexture();
}

[[link(win, android)]]
class cocos2d::CCParallaxNode : cocos2d::CCNode {
    static cocos2d::CCParallaxNode* create();

    CCParallaxNode();
    virtual ~CCParallaxNode();

    cocos2d::CCPoint absolutePosition();

    virtual void addChild(cocos2d::CCNode*, unsigned int, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = m1 0x410664, imac 0x4ae450;
    virtual void addChild(cocos2d::CCNode*, unsigned int, int) = m1 0x410660, imac 0x4ae440;
    virtual void removeChild(cocos2d::CCNode*, bool) = m1 0x410814, imac 0x4ae610;
    virtual void removeAllChildrenWithCleanup(bool) = m1 0x4108a4, imac 0x4ae690;
    virtual void visit() = m1 0x41096c, imac 0x4ae750;
}

[[link(win, android)]]
class cocos2d::CCTMXLayer : cocos2d::CCSpriteBatchNode {
    static cocos2d::CCTMXLayer* create(cocos2d::CCTMXTilesetInfo*, cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);

    CCTMXLayer();
    virtual ~CCTMXLayer();

    bool initWithTilesetInfo(cocos2d::CCTMXTilesetInfo*, cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);
    void releaseMap();
    cocos2d::CCSprite* tileAt(cocos2d::CCPoint const&);
    unsigned int tileGIDAt(cocos2d::CCPoint const&);
    unsigned int tileGIDAt(cocos2d::CCPoint const&, cocos2d::ccTMXTileFlags*);
    void setTileGID(unsigned int, cocos2d::CCPoint const&);
    void setTileGID(unsigned int, cocos2d::CCPoint const&, cocos2d::ccTMXTileFlags);
    void removeTileAt(cocos2d::CCPoint const&);
    cocos2d::CCPoint positionAt(cocos2d::CCPoint const&);
    cocos2d::CCString* propertyNamed(char const*);
    void setupTiles();
    cocos2d::CCPoint positionForIsoAt(cocos2d::CCPoint const&);
    cocos2d::CCPoint positionForOrthoAt(cocos2d::CCPoint const&);
    cocos2d::CCPoint positionForHexAt(cocos2d::CCPoint const&);
    cocos2d::CCPoint calculateLayerOffset(cocos2d::CCPoint const&);
    cocos2d::CCSprite* appendTileForGID(unsigned int, cocos2d::CCPoint const&);
    cocos2d::CCSprite* insertTileForGID(unsigned int, cocos2d::CCPoint const&);
    cocos2d::CCSprite* updateTileForGID(unsigned int, cocos2d::CCPoint const&);
    void parseInternalProperties();
    void setupTileSprite(cocos2d::CCSprite*, cocos2d::CCPoint, unsigned int);
    cocos2d::CCSprite* reusedTileWithRect(cocos2d::CCRect);
    int vertexZForPos(cocos2d::CCPoint const&);
    unsigned int atlasIndexForExistantZ(unsigned int);
    unsigned int atlasIndexForNewZ(int);

    virtual cocos2d::CCTMXTilesetInfo* getTileSet() = m1 0x1feca0, imac 0x259b70;
    virtual void setTileSet(cocos2d::CCTMXTilesetInfo*) = m1 0x1feca8, imac 0x259b80;
    virtual cocos2d::CCDictionary* getProperties() = m1 0x200354, imac 0x25b4d0;
    virtual void setProperties(cocos2d::CCDictionary*) = m1 0x20035c, imac 0x25b4e0;
    virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x20020c, imac 0x25b300;
    virtual void removeChild(cocos2d::CCNode*, bool) = m1 0x200210, imac 0x25b310;
}

[[link(win, android)]]
class cocos2d::CCTMXLayerInfo : cocos2d::CCObject {
    CCTMXLayerInfo();
    virtual ~CCTMXLayerInfo();

    virtual cocos2d::CCDictionary* getProperties() = m1 0x42b6c0, imac 0x4cc960;
    virtual void setProperties(cocos2d::CCDictionary*) = m1 0x42b6c8, imac 0x4cc970;
}

[[link(win, android)]]
class cocos2d::CCTMXMapInfo : cocos2d::CCObject, cocos2d::CCSAXDelegator {
    static cocos2d::CCTMXMapInfo* formatWithTMXFile(char const*);
    static cocos2d::CCTMXMapInfo* formatWithXML(char const*, char const*);

    CCTMXMapInfo();
    virtual ~CCTMXMapInfo();

    bool initWithTMXFile(char const*);
    bool initWithXML(char const*, char const*);
    bool parseXMLFile(char const*);
    bool parseXMLString(char const*);
    cocos2d::CCDictionary* getTileProperties();
    void setTileProperties(cocos2d::CCDictionary*);
    void internalInit(char const*, char const*);

    virtual cocos2d::CCArray* getLayers() = m1 0x42c108, imac 0x4cd3f0;
    virtual void setLayers(cocos2d::CCArray*) = m1 0x42c110, imac 0x4cd400;
    virtual cocos2d::CCArray* getTilesets() = m1 0x42c14c, imac 0x4cd440;
    virtual void setTilesets(cocos2d::CCArray*) = m1 0x42c154, imac 0x4cd450;
    virtual cocos2d::CCArray* getObjectGroups() = m1 0x42c190, imac 0x4cd490;
    virtual void setObjectGroups(cocos2d::CCArray*) = m1 0x42c198, imac 0x4cd4a0;
    virtual cocos2d::CCDictionary* getProperties() = m1 0x42c1d4, imac 0x4cd4e0;
    virtual void setProperties(cocos2d::CCDictionary*) = m1 0x42c1dc, imac 0x4cd4f0;
    virtual void startElement(void*, char const*, char const**) = m1 0x42c25c, imac 0x4cd580;
    virtual void endElement(void*, char const*) = m1 0x42ebb0, imac 0x4d0720;
    virtual void textHandler(void*, char const*, int) = m1 0x42f028, imac 0x4d0b60;
}

[[link(win, android)]]
class cocos2d::CCTMXObjectGroup : cocos2d::CCObject {
    CCTMXObjectGroup();
    virtual ~CCTMXObjectGroup();

    cocos2d::CCString* propertyNamed(char const*);
    cocos2d::CCDictionary* objectNamed(char const*);

    virtual cocos2d::CCDictionary* getProperties() = m1 0x400938, imac 0x49c620;
    virtual void setProperties(cocos2d::CCDictionary*) = m1 0x400940, imac 0x49c630;
    virtual cocos2d::CCArray* getObjects() = m1 0x40097c, imac 0x49c670;
    virtual void setObjects(cocos2d::CCArray*) = m1 0x400984, imac 0x49c680;
}

[[link(win, android)]]
class cocos2d::CCTMXTiledMap : cocos2d::CCNode {
    static cocos2d::CCTMXTiledMap* create(char const*);
    static cocos2d::CCTMXTiledMap* createWithXML(char const*, char const*);

    CCTMXTiledMap();
    virtual ~CCTMXTiledMap();

    bool initWithTMXFile(char const*);
    bool initWithXML(char const*, char const*);
    cocos2d::CCTMXLayer* layerNamed(char const*);
    cocos2d::CCTMXObjectGroup* objectGroupNamed(char const*);
    cocos2d::CCString* propertyNamed(char const*);
    cocos2d::CCDictionary* propertiesForGID(int);
    cocos2d::CCTMXLayer* parseLayer(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);
    cocos2d::CCTMXTilesetInfo* tilesetForLayer(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);
    void buildWithMapInfo(cocos2d::CCTMXMapInfo*);

    virtual cocos2d::CCArray* getObjectGroups() = m1 0x46ea98, imac 0x5182f0;
    virtual void setObjectGroups(cocos2d::CCArray*) = m1 0x46eaa0, imac 0x518300;
    virtual cocos2d::CCDictionary* getProperties() = m1 0x46eadc, imac 0x518340;
    virtual void setProperties(cocos2d::CCDictionary*) = m1 0x46eae4, imac 0x518350;
}

[[link(win, android)]]
class cocos2d::CCTMXTilesetInfo : cocos2d::CCObject {
    CCTMXTilesetInfo();
    virtual ~CCTMXTilesetInfo();

    cocos2d::CCRect rectForGID(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCTileMapAtlas : cocos2d::CCAtlasNode {
    static cocos2d::CCTileMapAtlas* create(char const*, char const*, int, int);

    CCTileMapAtlas();
    virtual ~CCTileMapAtlas();

    bool initWithTileFile(char const*, char const*, int, int);
    cocos2d::ccColor3B tileAt(cocos2d::CCPoint const&);
    void setTile(cocos2d::ccColor3B const&, cocos2d::CCPoint const&);
    void releaseMap();
    void loadTGAfile(char const*);
    void calculateItemsToRender();
    void updateAtlasValueAt(cocos2d::CCPoint const&, cocos2d::ccColor3B const&, unsigned int);

    virtual cocos2d::sImageTGA* getTGAInfo() = m1 0x1d6aa4, imac 0x22d210;
    virtual void setTGAInfo(cocos2d::sImageTGA*) = m1 0x1d6a9c, imac 0x22d200;
    virtual void updateAtlasValues() = m1 0x1d6860, imac 0x22cfd0;
}

[[link(win, android)]]
class cocos2d::CCStandardTouchHandler : cocos2d::CCTouchHandler {
    static cocos2d::CCStandardTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int);

    virtual ~CCStandardTouchHandler();

    virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int) = m1 0x3e7030, imac 0x480eb0;
}

[[link(win, android)]]
class cocos2d::CCCamera : cocos2d::CCObject {
    static float getZEye();

    // private CCCamera(cocos2d::CCCamera const&);
    CCCamera();
    virtual ~CCCamera();

    void init();
    char const* description();
    void restore();
    void locate();
    void setEyeXYZ(float, float, float);
    void setCenterXYZ(float, float, float);
    void setUpXYZ(float, float, float);
    void getEyeXYZ(float*, float*, float*);
    void getCenterXYZ(float*, float*, float*);
    void getUpXYZ(float*, float*, float*);
}

[[link(win, android)]]
class cocos2d::CCTimer : cocos2d::CCObject {
    static cocos2d::CCTimer* timerWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE);
    static cocos2d::CCTimer* timerWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE, float);
    static cocos2d::CCTimer* timerWithScriptHandler(int, float);

    CCTimer();

    float getInterval() const;
    void setInterval(float);
    cocos2d::SEL_SCHEDULE getSelector() const;
    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE);
    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_SCHEDULE, float, unsigned int, float);
    bool initWithScriptHandler(int, float);

    virtual void update(float) = m1 0x3b2c50, imac 0x4415a0;
}
