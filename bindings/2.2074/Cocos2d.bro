#import ios <Geode/cocos/particle_nodes/firePngData.h>

[[link(win, android)]]
class cocos2d::CCEGLViewProtocol {
    CCEGLViewProtocol() = m1 0x459be0, imac 0x4f9a90, ios 0x2e66b0;
    virtual ~CCEGLViewProtocol() = m1 0x459c34, imac 0x4f9af0, ios 0x2e6704;

    cocos2d::CCRect const& getViewPortRect() const = m1 0x45a684, imac 0x4fa5e0, ios inline {
        return m_obViewPortRect;
    }
    float getScaleX() const;
    float getScaleY() const;

    char const* getViewName();
    void updateDesignResolutionSize();
    void getSetOfTouchesEndOrCancel(cocos2d::CCSet&, int, int*, float*, float*);

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
    virtual void handleTouchesBegin(int, int*, float*, float*) = m1 0x459f5c, imac 0x4f9f00, ios 0x2e6a20;
    virtual void handleTouchesMove(int, int*, float*, float*) = m1 0x45a21c, imac 0x4fa1d0, ios 0x2e6c58;
    virtual void handleTouchesEnd(int, int*, float*, float*) = m1 0x45a54c, imac 0x4fa4e0, ios 0x2e6ecc;
    virtual void handleTouchesCancel(int, int*, float*, float*) = m1 0x45a5e8, imac 0x4fa560, ios 0x2e6f68;
}

[[link(win, android)]]
class cocos2d::CCActionEase : cocos2d::CCActionInterval {
    static cocos2d::CCActionEase* create(cocos2d::CCActionInterval*) = m1 0x45dce8, imac 0x4fe2a0, ios 0x26ae04;

    // CCActionEase(cocos2d::CCActionEase const&);
    // CCActionEase();
    virtual ~CCActionEase() = m1 0x45ded4, imac 0x4fe490, ios 0x26afb8;

    bool initWithAction(cocos2d::CCActionInterval* pAction) = ios 0x26ae94, imac 0x4fe340, m1 0x45dd90;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45ddd8, imac 0x4fe380, ios 0x26aedc;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x45df8c, imac 0x4fe550, ios 0x26b00c;
    virtual void stop() = m1 0x45dfbc, imac 0x4fe580, ios 0x26b03c;
    virtual void update(float) = m1 0x45dfec, imac 0x4fe5b0, ios 0x26b06c;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x45dffc, imac 0x4fe5d0, ios 0x26b07c;
    virtual cocos2d::CCActionInterval* getInnerAction() = m1 0x45e01c, imac 0x4fe5f0, ios 0x26b09c;
}

[[link(win, android)]]
class cocos2d::CCEaseRateAction : cocos2d::CCActionEase {
    static cocos2d::CCEaseRateAction* create(cocos2d::CCActionInterval* pAction, float fRate) = m1 0x45e024, imac 0x4fe600, ios inline {
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
    virtual ~CCEaseRateAction() = m1 0x45e230, imac 0x4fe820, ios inline {}

    bool initWithAction(cocos2d::CCActionInterval* pAction, float fRate) = m1 0x45e0e0, imac 0x4fe6c0, ios inline {
        if (CCActionEase::initWithAction(pAction))
        {
            m_fRate = fRate;
            return true;
        }

        return false;
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x45e138, imac 0x4fe710, ios inline {
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

    virtual cocos2d::CCActionInterval* reverse() = m1 0x45e2e8, imac 0x4fe8e0, ios inline {
        return CCEaseRateAction::create(m_pInner->reverse(), 1 / m_fRate);
    }
}

[[link(win, android)]]
class cocos2d::CCEaseIn : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseIn* create(cocos2d::CCActionInterval*, float) = m1 0x45e320, imac 0x4fe910, ios 0x26b0a4;

    // CCEaseIn(cocos2d::CCEaseIn const&);
    // CCEaseIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45e3dc, imac 0x4fe9d0, ios 0x26b144;
    virtual void update(float) = imac 0x4feae0, m1 0x45e4d4, ios 0x26b220;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x45e504, imac 0x4feb10, ios 0x26b250;
}

[[link(win, android)]]
class cocos2d::CCEaseOut : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseOut* create(cocos2d::CCActionInterval*, float) = m1 0x45e53c, imac 0x4feb40, ios 0x26b288;

    // CCEaseOut(cocos2d::CCEaseOut const&);
    // CCEaseOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45e5f8, imac 0x4fec00, ios 0x26b328;
    virtual void update(float) = imac 0x4fed10, m1 0x45e6f0, ios 0x26b404;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x45e728, imac 0x4fed40, ios 0x26b43c;
}

[[link(win, android)]]
class cocos2d::CCEaseInOut : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseInOut* create(cocos2d::CCActionInterval*, float) = m1 0x45e760, imac 0x4fed70, ios 0x26b474;

    // CCEaseInOut(cocos2d::CCEaseInOut const&);
    // CCEaseInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45e81c, imac 0x4fee30, ios 0x26b514;
    virtual void update(float) = imac 0x4fef40, m1 0x45e914, ios 0x26b5f0;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4fefb0, m1 0x45e980, ios 0x26b65c;
}

[[link(win, android)]]
class cocos2d::CCEaseBackIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackIn* create(cocos2d::CCActionInterval*) = m1 0x460c04, imac 0x501240, ios 0x26c2b0;

    // CCEaseBackIn(cocos2d::CCEaseBackIn const&);
    // CCEaseBackIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x460cac, imac 0x5012e0, ios 0x26c340;
    virtual void update(float) = imac 0x5013e0, m1 0x460d94, ios 0x26c408;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x460dc8, imac 0x501410, ios 0x26c434;
}

[[link(win, android)]]
class cocos2d::CCEaseBackOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackOut* create(cocos2d::CCActionInterval*) = m1 0x460de8, imac 0x501430, ios 0x26c454;

    // CCEaseBackOut(cocos2d::CCEaseBackOut const&);
    // CCEaseBackOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x460e90, imac 0x5014d0, ios 0x26c4e4;
    virtual void update(float) = imac 0x5015d0, m1 0x460f78, ios 0x26c5ac;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x460fb8, imac 0x501610, ios 0x26c5e4;
}

[[link(win, android)]]
class cocos2d::CCEaseBackInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackInOut* create(cocos2d::CCActionInterval* pAction) = m1 0x460fd8, imac 0x501630, ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x461080, imac 0x5016d0, ios inline {
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
    virtual void update(float time) = m1 0x461168, imac 0x5017d0, ios inline {
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
    virtual cocos2d::CCActionInterval* reverse() = m1 0x4611fc, imac 0x501860, ios inline {
        return CCEaseBackInOut::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEaseBounce : cocos2d::CCActionEase {
    static cocos2d::CCEaseBounce* create(cocos2d::CCActionInterval* pAction) = m1 0x46001c, imac 0x500730, ios inline {
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

    float bounceTime(float) = m1 0x4601ac, imac 0x5008d0, ios 0x26bea4;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x4600c4, imac 0x5007d0, ios inline {
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
    virtual cocos2d::CCActionInterval* reverse() = m1 0x460294, imac 0x500990, ios inline {
        return CCEaseBounce::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEaseBounceIn : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceIn* create(cocos2d::CCActionInterval*) = m1 0x4602b4, imac 0x5009b0, ios 0x26bf54;

    // CCEaseBounceIn(cocos2d::CCEaseBounceIn const&);
    // CCEaseBounceIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46035c, imac 0x500a50, ios 0x26bfe4;
    virtual void update(float) = m1 0x460444, imac 0x500b50, ios 0x26c0ac;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x460554, imac 0x500c30, ios 0x26c0ec;
}

[[link(win, android)]]
class cocos2d::CCEaseBounceOut : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceOut* create(cocos2d::CCActionInterval*) = imac 0x500c50, m1 0x460574, ios 0x26c10c;

    // CCEaseBounceOut(cocos2d::CCEaseBounceOut const&);
    // CCEaseBounceOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x46061c, imac 0x500cf0, ios 0x26c19c;
    virtual void update(float) = imac 0x500df0, m1 0x460704, ios 0x26c264;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x500eb0, m1 0x46080c, ios 0x26c290;
}

[[link(win, android)]]
class cocos2d::CCEaseBounceInOut : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceInOut* create(cocos2d::CCActionInterval* pAction) = m1 0x46082c, imac 0x500ed0, ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x4608d4, imac 0x500f70, ios inline {
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
    virtual void update(float time) = m1 0x4609bc, imac 0x501070, ios inline {
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
    virtual cocos2d::CCActionInterval* reverse() = m1 0x460be4, imac 0x501220, ios inline {
        return CCEaseBounceInOut::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEaseElastic : cocos2d::CCActionEase {
    static cocos2d::CCEaseElastic* create(cocos2d::CCActionInterval* pAction, float fPeriod) = m1 0x45f5f0, imac 0x4ffc40, ios inline {
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
    static cocos2d::CCEaseElastic* create(cocos2d::CCActionInterval* pAction) = m1 0x45f5e0, imac 0x4ffc20, ios inline {
        return cocos2d::CCEaseElastic::create(pAction, 0.3f);
    }

    // CCEaseElastic(cocos2d::CCEaseElastic const&);
    // CCEaseElastic();

    bool initWithAction(cocos2d::CCActionInterval* pAction, float fPeriod) = m1 0x45f6ac, imac 0x4ffd00, ios inline {
        if (CCActionEase::initWithAction(pAction))
        {
            m_fPeriod = fPeriod;
            return true;
        }

        return false;
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x45f704, imac 0x4ffd50, ios inline {
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
    virtual cocos2d::CCActionInterval* reverse() = m1 0x45f7fc, imac 0x4ffe60, ios inline {
        return nullptr;
    }
}

[[link(win, android)]]
class cocos2d::CCEaseElasticIn : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval* pAction) = m1 0x45f804, imac 0x4ffe70, ios inline {
        return cocos2d::CCEaseElasticIn::create(pAction, 0.3f);
    }
    static cocos2d::CCEaseElasticIn* create(cocos2d::CCActionInterval*, float) = m1 0x45f814, imac 0x4ffe90, ios 0x26ba20;

    // CCEaseElasticIn(cocos2d::CCEaseElasticIn const&);
    // CCEaseElasticIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45f8d0, imac 0x4fff50, ios 0x26bac0;
    virtual void update(float) = imac 0x500060, m1 0x45f9c8, ios 0x26bb9c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x500100, m1 0x45fa58, ios 0x26bc28;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticOut : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*) = m1 0x45fb44, imac 0x5001f0, ios 0x26bcf8;
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*, float) = m1 0x45fa88, imac 0x500130, ios 0x26bc58;

    // CCEaseElasticOut(cocos2d::CCEaseElasticOut const&);
    // CCEaseElasticOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45fb54, imac 0x500210, ios 0x26bd04;
    virtual void update(float) = imac 0x500320, m1 0x45fc4c, ios 0x26bde0;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5003c0, m1 0x45fce4, ios 0x26be74;
}

[[link(win, android)]]
class cocos2d::CCEaseElasticInOut : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticInOut* create(cocos2d::CCActionInterval* pAction) = m1 0x45fd14, imac 0x5003f0, ios inline {
        return CCEaseElasticInOut::create(pAction, 0.3f);
    }
    static cocos2d::CCEaseElasticInOut* create(cocos2d::CCActionInterval* pAction, float fPeriod) = m1 0x45fd24, imac 0x500410, ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x45fde0, imac 0x5004d0, ios inline {
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
    virtual void update(float time) = m1 0x45fed8, imac 0x5005e0, ios inline {
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
    virtual cocos2d::CCActionInterval* reverse() = m1 0x45ffec, imac 0x500700, ios inline {
        return CCEaseElasticInOut::create(m_pInner->reverse(), m_fPeriod);
    }
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialIn* create(cocos2d::CCActionInterval*) = m1 0x45e9b0, imac 0x4fefe0, ios 0x26b68c;

    // CCEaseExponentialIn(cocos2d::CCEaseExponentialIn const&);
    // CCEaseExponentialIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45ea58, imac 0x4ff080, ios 0x26b71c;
    virtual void update(float) = imac 0x4ff180, m1 0x45eb40, ios 0x26b7e4;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x45ebb4, imac 0x4ff1d0, ios 0x26b83c;
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialInOut* create(cocos2d::CCActionInterval* pAction) = m1 0x45ede8, imac 0x4ff400, ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x45ee90, imac 0x4ff4a0, ios inline {
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
    virtual void update(float time) = imac 0x4ff5a0, m1 0x45ef78, ios inline {
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
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4ff610, m1 0x45efe4, ios inline {
        return CCEaseExponentialInOut::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialOut* create(cocos2d::CCActionInterval*) = m1 0x45ebd4, imac 0x4ff1f0, ios 0x26b85c;

    // CCEaseExponentialOut(cocos2d::CCEaseExponentialOut const&);
    // CCEaseExponentialOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x45ec7c, imac 0x4ff290, ios 0x26b8ec;
    virtual void update(float) = imac 0x4ff390, m1 0x45ed64, ios 0x26b9b4;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4ff3e0, m1 0x45edc8, ios 0x26ba00;
}

[[link(win, android)]]
class cocos2d::CCEaseSineIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineIn* create(cocos2d::CCActionInterval* pAction) = m1 0x45f004, imac 0x4ff630, ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x45f0ac, imac 0x4ff6d0, ios inline {
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
    virtual void update(float time) = m1 0x45f194, imac 0x4ff7d0, ios inline {
        m_pInner->update(-1 * cosf(time * (float)M_PI_2) + 1);
    }
    virtual cocos2d::CCActionInterval* reverse() = m1 0x45f1d8, imac 0x4ff810, ios inline {
        return CCEaseSineOut::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEaseSineOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineOut* create(cocos2d::CCActionInterval* pAction) = imac 0x4ff830, m1 0x45f1f8, ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x45f2a0, imac 0x4ff8d0, ios inline {
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
    virtual void update(float time) = m1 0x45f388, imac 0x4ff9d0, ios inline {
        m_pInner->update(sinf(time * (float)M_PI_2));
    }
    virtual cocos2d::CCActionInterval* reverse() = m1 0x45f3c4, imac 0x4ffa00, ios inline {
        return CCEaseSineIn::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEaseSineInOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseSineInOut* create(cocos2d::CCActionInterval* pAction) = m1 0x45f3e4, imac 0x4ffa20, ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x45f48c, imac 0x4ffac0, ios inline {
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
    virtual void update(float time) = m1 0x45f574, imac 0x4ffbc0, ios inline {
        m_pInner->update(-0.5f * (cosf((float)M_PI * time) - 1));
    }
    virtual cocos2d::CCActionInterval* reverse() = imac 0x4ffc00, m1 0x45f5c0, ios inline {
        return CCEaseSineInOut::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCMotionStreak : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::ccColor3B const&, cocos2d::CCTexture2D*) = m1 0x4b6074, imac 0x55f5a0, ios 0x17a2c0;
    static cocos2d::CCMotionStreak* create(float, float, float, cocos2d::ccColor3B const&, char const*) = m1 0x4b5ee0, imac 0x55f3e0, ios 0x17a1b8;

    bool initWithFade(float, float, float, cocos2d::ccColor3B const&, cocos2d::CCTexture2D*) = imac 0x55f6e0, m1 0x4b6180, ios 0x17a350;
    bool initWithFade(float, float, float, cocos2d::ccColor3B const&, char const*) = imac 0x55f530, m1 0x4b5ffc, ios 0x17a248;

    // bool getDontOpacityFade() const;
    // float getM_fMaxSeg() const;

    // void setDontOpacityFade(bool);
    // void setFastMode(bool);
    // void setM_fMaxSeg(float);
    // void setStartingPositionInitialized(bool);
    void setStroke(float) = m1 0x4b6c40, imac 0x560180, ios 0x17aaf8;

    // CCMotionStreak(cocos2d::CCMotionStreak const&);
    CCMotionStreak() = imac 0x55f120, m1 0x4b5cf4, ios 0x17a068;

    void enableRepeatMode(float) = m1 0x4b64ac, imac 0x55fac0, ios 0x17a5b4;
    // bool isFastMode();
    // bool isStartingPositionInitialized();
    void reset() = m1 0x4b6c48, imac 0x560190, ios 0x17ab00;
    void resumeStroke() = m1 0x4b6510, imac 0x55fb40, ios 0x17a618;
    void stopStroke() = m1 0x4b6508, imac 0x55fb30, ios 0x17a610;
    void tintWithColor(cocos2d::ccColor3B) = m1 0x4b6334, imac 0x55f8d0, ios inline {
        this->setColor(p0);
        for (int i = 0; i < m_uNuPoints * 2; i++) {
            *reinterpret_cast<ccColor3B*>(m_pColorPointer + i * 4) = p0;
        }
    }
    void updateFade(float) = m1 0x4b64f8, imac 0x55fb10, ios 0x17a600;

    virtual ~CCMotionStreak() = imac 0x55f2c0, m1 0x4b5e2c, ios 0x17a104;

    virtual void update(float) = imac 0x55fb50, m1 0x4b651c, ios 0x17a624;
    virtual void setPosition(cocos2d::CCPoint const&) = imac 0x55f8b0, m1 0x4b6324, ios 0x17a4f4;
    virtual void draw() = imac 0x5601b0, m1 0x4b6c54, ios 0x17ab0c;

    virtual unsigned char getOpacity() = m1 0x4b6484, imac 0x55fa60, ios 0x17a58c;
    virtual void setOpacity(unsigned char) = m1 0x4b647c, imac 0x55fa40, ios 0x17a584;
    virtual void setOpacityModifyRGB(bool) = m1 0x4b6494, imac 0x55fa80, ios 0x17a59c;
    virtual bool isOpacityModifyRGB() = m1 0x4b649c, imac 0x55faa0, ios 0x17a5a4;

    virtual void setBlendFunc(cocos2d::ccBlendFunc) = m1 0x4b645c, imac 0x55fa00, ios 0x17a564;
    virtual cocos2d::ccBlendFunc getBlendFunc() = m1 0x4b646c, imac 0x55fa20, ios 0x17a574;
    virtual cocos2d::CCTexture2D* getTexture() = m1 0x4b63bc, imac 0x55f950, ios 0x17a504;
    virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x4b63cc, imac 0x55f970, ios 0x17a514;

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
    static cocos2d::CCMoveBy* create(float, cocos2d::CCPoint const&) = imac 0x3a5080, m1 0x331aa8, ios 0x18ed24;

    bool initWithDuration(float, cocos2d::CCPoint const&) = m1 0x331b8c, imac 0x3a5180, ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_positionDelta = p1;
        return true;
    }

    // CCMoveBy(cocos2d::CCMoveBy const&);
    // CCMoveBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a51c0, m1 0x331bc4, ios 0x18ee00;
    virtual void update(float) = imac 0x3a53c0, m1 0x331d8c, ios 0x18efb4;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x331cf4, imac 0x3a5320, ios 0x18ef1c;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a5370, m1 0x331d48, ios 0x18ef70;
}

[[link(win, android)]]
class cocos2d::CCMoveTo : cocos2d::CCMoveBy {
    static cocos2d::CCMoveTo* create(float, cocos2d::CCPoint const&) = imac 0x3a5490, m1 0x331e58, ios 0x18f080;

    bool initWithDuration(float, cocos2d::CCPoint const&) = m1 0x331f40, imac 0x3a55a0, ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_endPosition = p1;
        return true;
    }

    // CCMoveTo(cocos2d::CCMoveTo const&);
    // CCMoveTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a55e0, m1 0x331f78, ios 0x18f160;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3320bc, imac 0x3a5750, ios 0x18f290;
}

[[link(win, android)]]
class cocos2d::CCRemoveSelf : cocos2d::CCActionInstant {
    static cocos2d::CCRemoveSelf* create(bool isNeedCleanUp) = m1 0x6a9d38, imac 0x796bc0, ios inline {
        CCRemoveSelf *pRet = new CCRemoveSelf();

        if (pRet && pRet->init(isNeedCleanUp)) {
            pRet->autorelease();
        }

        return pRet;
    }

    bool init(bool isNeedCleanUp) = m1 0x6a9d98, imac 0x796c20, ios inline {
        m_bIsNeedCleanUp = isNeedCleanUp;
        return true;
    }

    // CCRemoveSelf(cocos2d::CCRemoveSelf const&);
    // CCRemoveSelf();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = imac 0x796cb0, m1 0x6a9e1c, ios inline {
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
    virtual void update(float time) = imac 0x796c30, m1 0x6a9da4, ios inline {
        CC_UNUSED_PARAM(time);
        m_pTarget->removeFromParentAndCleanup(m_bIsNeedCleanUp);
    }
    virtual cocos2d::CCFiniteTimeAction* reverse() = imac 0x796c50, m1 0x6a9dbc, ios inline {
        return (CCFiniteTimeAction*)(cocos2d::CCRemoveSelf::create(m_bIsNeedCleanUp));
    }
}

[[link(win, android)]]
class cocos2d::CCScaleBy : cocos2d::CCScaleTo {
    static cocos2d::CCScaleBy* create(float duration, float s) = imac 0x3a7430, m1 0x3339d0, ios inline {
        cocos2d::CCScaleBy *pScaleBy = new cocos2d::CCScaleBy();
        pScaleBy->initWithDuration(duration, s);
        pScaleBy->autorelease();

        return pScaleBy;
    }
    static cocos2d::CCScaleBy* create(float duration, float sx, float sy) = m1 0x333a68, imac 0x3a74f0, ios inline {
        cocos2d::CCScaleBy *pScaleBy = new cocos2d::CCScaleBy();
        pScaleBy->initWithDuration(duration, sx, sy);
        pScaleBy->autorelease();

        return pScaleBy;
    }

    // CCScaleBy(cocos2d::CCScaleBy const&);
    // CCScaleBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x333b0c, imac 0x3a75c0, ios inline {
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
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = m1 0x333c04, imac 0x3a76d0, ios inline {
        cocos2d::CCScaleTo::startWithTarget(pTarget);
        m_fDeltaX = m_fStartScaleX * m_fEndScaleX - m_fStartScaleX;
        m_fDeltaY = m_fStartScaleY * m_fEndScaleY - m_fStartScaleY;
    }
    virtual cocos2d::CCActionInterval* reverse() = m1 0x333c74, imac 0x3a7730, ios inline {
        return cocos2d::CCScaleBy::create(m_fDuration, 1 / m_fEndScaleX, 1 / m_fEndScaleY);
    }
}

[[link(win, android)]]
class cocos2d::CCScaleTo : cocos2d::CCActionInterval {
    static cocos2d::CCScaleTo* create(float, float) = m1 0x333670, imac 0x3a7040, ios 0x18f9fc;
    static cocos2d::CCScaleTo* create(float, float, float) = m1 0x333730, imac 0x3a7140, ios 0x18fa94;

    bool initWithDuration(float duration, float s) = m1 0x333708, imac 0x3a7100, ios inline {
        if (cocos2d::CCActionInterval::initWithDuration(duration))
        {
            m_fEndScaleX = s;
            m_fEndScaleY = s;

            return true;
        }

        return false;
    }
    bool initWithDuration(float duration, float sx, float sy) = m1 0x3337d4, imac 0x3a7210, ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x3337fc, imac 0x3a7250, ios 0x18fb38;
    virtual void update(float) = imac 0x3a73d0, m1 0x333960, ios 0x18fc90;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3338f4, imac 0x3a7360, ios 0x18fc24;
}

[[link(win, android)]]
class cocos2d::CCSkewBy : cocos2d::CCSkewTo {
    static cocos2d::CCSkewBy* create(float t, float sx, float sy) = m1 0x33249c, imac 0x3a5bd0, ios inline {
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

    virtual void startWithTarget(cocos2d::CCNode* pTarget) = m1 0x33257c, imac 0x3a5d00, ios inline {
	CCSkewTo::startWithTarget(pTarget);
        m_fDeltaX = m_fSkewX;
        m_fDeltaY = m_fSkewY;
        m_fEndSkewX = m_fStartSkewX + m_fDeltaX;
        m_fEndSkewY = m_fStartSkewY + m_fDeltaY;
    }
    virtual cocos2d::CCActionInterval* reverse() = m1 0x332658, imac 0x3a5e10, ios inline {
	return create(m_fDuration, -m_fSkewX, -m_fSkewY);
    }
    virtual bool initWithDuration(float t, float deltaSkewX, float deltaSkewY) = m1 0x332550, imac 0x3a5cb0, ios inline {
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
    static cocos2d::CCSkewTo* create(float t, float sx, float sy) = m1 0x332154, imac 0x3a57d0, ios inline {
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
    CCSkewTo() = m1 0x3321f0, imac 0x3a5880, ios inline {
        m_fSkewX = 0.0;
        m_fSkewY = 0.0;
        m_fStartSkewX = 0.0;
        m_fStartSkewY = 0.0;
        m_fEndSkewX = 0.0;
        m_fEndSkewY = 0.0;
        m_fDeltaX = 0.0;
        m_fDeltaY = 0.0;
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x332248, imac 0x3a5900, ios inline {
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
    virtual void update(float t) = m1 0x332410, imac 0x3a5b30, ios inline {
        m_pTarget->setSkewX(m_fStartSkewX + m_fDeltaX * t);
        m_pTarget->setSkewY(m_fStartSkewY + m_fDeltaY * t);
    }
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = m1 0x332328, imac 0x3a59e0, ios inline {
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
    virtual bool initWithDuration(float t, float sx, float sy) = m1 0x332220, imac 0x3a58c0, ios inline {
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
    static cocos2d::CCTintTo* create(float, unsigned char, unsigned char, unsigned char) = imac 0x3a83a0, m1 0x3347a0, ios 0x190558;

    bool initWithDuration(float, unsigned char, unsigned char, unsigned char) = m1 0x33484c, imac 0x3a8470, ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_to.r = p1;
        m_to.g = p2;
        m_to.b = p3;
        return true;
    }

    // CCTintTo(cocos2d::CCTintTo const&);
    // CCTintTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a84c0, m1 0x33487c, ios 0x190604;
    virtual void update(float) = imac 0x3a8630, m1 0x3349e4, ios 0x190760;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x334978, imac 0x3a85d0, ios 0x1906f4;
}

[[link(win, android)]]
class cocos2d::CCAction : cocos2d::CCObject {
    static cocos2d::CCAction* create() = m1 0x50f9ec, imac 0x5dcab0, ios inline {
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
    CCAction() = m1 0x50f94c, imac 0x5dc9c0, ios 0x264808;
    virtual ~CCAction() = m1 0x50f9ac, imac 0x5dca40, ios 0x264838;
    char const* description() = imac 0x5dcb10, m1 0x50fa50, ios inline {
        return CCString::createWithFormat("<CCAction | Tag = %d>", m_nTag)->getCString();
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5dcb30, m1 0x50fa7c, ios 0x264878;
    virtual void update(float) = m1 0x50fb64, imac 0x5dcc30, ios 0x264944;
    //virtual void setTag(int) = m1 0x1b6e5c, imac 0x205680;
    virtual bool isDone() = m1 0x50fb58, imac 0x5dcc10, ios 0x264938;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x5dcbf0, m1 0x50fb48, ios 0x264928;
    virtual void stop() = m1 0x50fb50, imac 0x5dcc00, ios 0x264930;
    virtual void step(float) = m1 0x50fb60, imac 0x5dcc20, ios 0x264940;

    cocos2d::CCNode* m_pOriginalTarget;
    cocos2d::CCNode* m_pTarget;
    int m_nTag;
    float m_fSpeedMod;
}

[[link(win, android)]]
class cocos2d::CCActionInstant : cocos2d::CCFiniteTimeAction {
    // CCActionInstant(cocos2d::CCActionInstant const&);
    CCActionInstant() = m1 0x6a9794, imac 0x796640, ios inline {}

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6a97dc, imac 0x7966a0, ios 0x1b0e04;
    virtual void update(float) = m1 0x6a98b8, imac 0x796780, ios 0x1b0ec4;
    virtual bool isDone() = m1 0x6a98a0, imac 0x796750, ios 0x1b0eac;
    virtual void step(float) = m1 0x6a98a8, imac 0x796760, ios 0x1b0eb4;
    virtual cocos2d::CCFiniteTimeAction* reverse() = m1 0x6a98bc, imac 0x796790, ios 0x1b0ec8;
}

[[link(win, android)]]
class cocos2d::CCActionInterval : cocos2d::CCFiniteTimeAction {
    static cocos2d::CCActionInterval* create(float) = m1 0x32f198, imac 0x3a2220, ios inline {
        auto ret = new CCActionInterval();
        ret->initWithDuration(p0);
        ret->autorelease();
        return ret;
    }

    bool initWithDuration(float d) = m1 0x32f224, imac 0x3a22c0, ios 0x18d7f4;

    float getAmplitudeRate() = m1 0x32f3a8, imac 0x3a2490, ios inline {
        return 0.f;
    }
    // float getElapsed();
    // bool getM_bFirstTick() const;

    void setAmplitudeRate(float) = m1 0x32f3a4, imac 0x3a2480, ios inline {}

    // CCActionInterval(cocos2d::CCActionInterval const&);
    // CCActionInterval();
    // ~CCActionInterval() = ios 0x264838;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x32f248, imac 0x3a2300, ios 0x18d818;
    virtual bool isDone() = m1 0x32f32c, imac 0x3a2400, ios 0x18d8f0,;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x32f3b0, imac 0x3a24a0, ios 0x18d968;
    virtual void step(float) = m1 0x32f33c, imac 0x3a2420, ios 0x18d900;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x32f3dc, imac 0x3a24c0, ios 0x18d994;

    float m_elapsed;
    bool m_bFirstTick;
}

[[link(win, android)]]
class cocos2d::CCFiniteTimeAction : cocos2d::CCAction {
    // CCFiniteTimeAction(cocos2d::CCFiniteTimeAction const&);
    // CCFiniteTimeAction();

    virtual cocos2d::CCFiniteTimeAction* reverse() = m1 0x50fb68, imac 0x5dcc40, ios inline {
        return nullptr;
    }

    float m_fDuration;
}

[[link(win, android)]]
class cocos2d::CCScene : cocos2d::CCNode {
    static cocos2d::CCScene* create() = imac 0x27eef0, m1 0x2288ec, ios 0x240218;

    int getHighestChildZ() = imac 0x27efb0, m1 0x2289cc, ios 0x24028c;

    // CCScene(cocos2d::CCScene const&);
    CCScene() = imac 0x27ed80, m1 0x228780, ios 0x240128;
    virtual ~CCScene() = imac 0x27ee60, m1 0x228878, ios 0x2401a4;

    virtual bool init() = m1 0x228894, imac 0x27eea0, ios 0x2401c0;
}

[[link(win, android)]]
class cocos2d::CCSet : cocos2d::CCObject {
    static cocos2d::CCSet* create() = m1 0x6b06cc, imac 0x79e1e0, ios inline {
        auto ret = new CCSet();
        ret->autorelease();
        return ret;
    }

    //CCSet(cocos2d::CCSet const&) = imac 0x79df40, m1 0x6b0448, ios 0x1af714;
    CCSet() = imac 0x79def0, m1 0x6b03e8, ios 0x1af6b0;
    virtual ~CCSet() = imac 0x79e050, m1 0x6b0560, ios 0x1af7e8;
    void addObject(cocos2d::CCObject*) = imac 0x79e300, m1 0x6b07f0, ios 0x1af93c;
    cocos2d::CCObject* anyObject() = imac 0x79e4d0, m1 0x6b09ec, ios inline {
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
    cocos2d::CCSetIterator begin() = imac 0x79e4b0, m1 0x6b09d4, ios 0x1afa04;
    bool containsObject(cocos2d::CCObject*) = imac 0x79e460, m1 0x6b0984, ios 0x1af9b4;
    cocos2d::CCSet* copy() = m1 0x6b0754, imac 0x79e270, ios 0x1af8e4;
    int count() = imac 0x79e2f0, m1 0x6b07e4, ios 0x1af930;
    cocos2d::CCSetIterator end() = imac 0x79e4c0, m1 0x6b09e0, ios 0x1afa10;
    cocos2d::CCSet* mutableCopy() = imac 0x79e2b0, m1 0x6b079c, ios 0x1af92c;
    void removeAllObjects() = m1 0x6b061c, imac 0x79e110, ios 0x1af83c;
    void removeObject(cocos2d::CCObject*) = m1 0x6b08b0, imac 0x79e3b0, ios 0x1af980;

    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = m1 0x6b06b4, imac 0x79e1c0, ios 0x1af8cc;

    gd::set<cocos2d::CCObject*> m_pSet;
}

[[link(win, android)]]
class cocos2d::CCShaderCache : cocos2d::CCObject {
    static void purgeSharedShaderCache() = m1 0x1a6c20, imac 0x1f0430, ios 0x12b69c;
    static cocos2d::CCShaderCache* sharedShaderCache() = imac 0x1f0310, m1 0x1a6b00, ios 0x12b5e4;

    bool init() = m1 0x1a6bd0, imac 0x1f03e0, ios 0x12b64c;

    // CCShaderCache(cocos2d::CCShaderCache const&);
    CCShaderCache();
    virtual ~CCShaderCache();

    void addProgram(cocos2d::CCGLProgram*, char const*) = m1 0x1a7b4c, imac 0x1f12e0, ios 0x12bd34;
    void loadDefaultShader(cocos2d::CCGLProgram*, int) = imac 0x1f0c90, m1 0x1a74ac, ios 0x12bac4;
    void loadDefaultShaders() = imac 0x1f0550, m1 0x1a6d1c, ios 0x12b718;
    cocos2d::CCGLProgram* programForKey(char const*) = m1 0x1a7a58, imac 0x1f11f0, ios 0x12bcc8;
    void reloadDefaultShaders() = m1 0x1a76b0, imac 0x1f0e70, ios inline {
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
    static cocos2d::CCParticleSystem* create(char const*) = imac 0x7b1480, m1 0x6c2654;
    static cocos2d::CCParticleSystem* createWithTotalParticles(unsigned int);

    void initParticle(cocos2d::sCCParticle*) = imac 0x7b3670, m1 0x6c4620, ios 0x197e0c;
    bool initWithDictionary(cocos2d::CCDictionary*, char const*, bool) = imac 0x7b1800, m1 0x6c29f0, ios 0x196b0c;
    bool initWithDictionary(cocos2d::CCDictionary* p0, bool p1) = imac 0x7b31f0, m1 0x6c425c, ios inline {
        return cocos2d::CCParticleSystem::initWithDictionary(p0, "", p1);
    }
    bool initWithFile(char const*, bool) = m1 0x6c26d8, imac 0x7b14e0, ios 0x196990;

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
    CCParticleSystem() = m1 0x6c250c, imac 0x7b12c0, ios 0x196830;
    virtual ~CCParticleSystem() = m1 0x6c4450, imac 0x7b3470, ios 0x197d38;
    bool addParticle();
    void calculateWorldSpace();
    bool isFull();
    void loadDefaults();
    void loadScaledDefaults(float) = m1 0x6c66b4, imac 0x7b60e0, ios 0x199ab8;
    void resetSystem() = imac 0x7b4740, m1 0x6c5358, ios 0x198a38;
    void resumeSystem() = imac 0x7b4730, m1 0x6c534c, ios 0x198a2c;
    void saveDefaults();
    void stopSystem() = imac 0x7b4700, m1 0x6c5338, ios 0x198a18;
    // void toggleUniformColorMode(bool);
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
    virtual cocos2d::ccColor4F const& getStartColor() = m1 0x6c63f0, imac 0x7b5c80, ios 0x1998c4;
    virtual void setStartColor(cocos2d::ccColor4F const&) = m1 0x6c63f8, imac 0x7b5c90, ios 0x1998cc;
    virtual cocos2d::ccColor4F const& getStartColorVar() = m1 0x6c6408, imac 0x7b5ca0, ios 0x1998dc;
    virtual void setStartColorVar(cocos2d::ccColor4F const&) = m1 0x6c6410, imac 0x7b5cb0, ios 0x1998e4;
    virtual cocos2d::ccColor4F const& getEndColor() = m1 0x6c6420, imac 0x7b5cc0, ios 0x1998f4;
    virtual void setEndColor(cocos2d::ccColor4F const&) = m1 0x6c6428, imac 0x7b5cd0, ios 0x1998fc;
    virtual cocos2d::ccColor4F const& getEndColorVar() = m1 0x6c6438, imac 0x7b5ce0, ios 0x19990c;
    virtual void setEndColorVar(cocos2d::ccColor4F const&) = m1 0x6c6440, imac 0x7b5cf0, ios 0x199914;
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

    virtual void setBlendFunc(cocos2d::ccBlendFunc) = imac 0x7b5de0, m1 0x6c64c0, ios 0x199994;
    virtual cocos2d::ccBlendFunc getBlendFunc() = m1 0x6c64b0, imac 0x7b5dc0, ios 0x199984;
    virtual cocos2d::CCTexture2D* getTexture() = m1 0x6c618c, imac 0x7b5850, ios 0x199678;
    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x7b5710, m1 0x6c604c, ios 0x1995a8;

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
    static cocos2d::CCParticleSnow* create() = m1 0x3e2810, imac 0x473c10, ios inline {
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
    static cocos2d::CCParticleSnow* createWithTotalParticles(unsigned int numberOfParticles) = imac 0x473c90, m1 0x3e28a0, ios inline {
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

    // virtual bool init() = m1 0x3e2ea8, imac 0x4742d0;
    virtual bool initWithTotalParticles(unsigned int numberOfParticles) = m1 0x3e2934, imac 0x473d10, ios inline {
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
    static cocos2d::CCParticleFire* create() = m1 0x3e0d34, imac 0x472260, ios inline {
        auto ret = new CCParticleFire();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCParticleFire* createWithTotalParticles(unsigned int) = m1 0x3e0dc4, imac 0x4722e0, ios inline {
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

    // virtual bool init() = m1 0x3e2e48, imac 0x474210;
    virtual bool initWithTotalParticles(unsigned int) = m1 0x3e0e58, imac 0x472360, ios inline {
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
    static cocos2d::CCParticleRain* create() = m1 0x3e2b18, imac 0x473f00, ios inline {
        auto ret = new CCParticleRain();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCParticleRain* createWithTotalParticles(unsigned int) = m1 0x3e2ba8, imac 0x473f80, ios inline {
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

    // virtual bool init() = m1 0x3e2eb8, imac 0x4742f0;
    virtual bool initWithTotalParticles(unsigned int) = m1 0x3e2c3c, imac 0x474000, ios inline {
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
    static cocos2d::CCParticleExplosion* create() = m1 0x3e2214, imac 0x473670, ios inline {
        auto ret = new CCParticleExplosion();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCParticleExplosion* createWithTotalParticles(unsigned int) = m1 0x3e22a4, imac 0x4736f0, ios inline {
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

    // virtual bool init() = m1 0x3e2ea8, imac 0x4742d0;
    virtual bool initWithTotalParticles(unsigned int) = m1 0x3e2338, imac 0x473770, ios inline {
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
    static cocos2d::CCParticleSystemQuad* create(char const*, bool) = imac 0x5eb190, m1 0x51c418, ios 0x252a98;
    static cocos2d::CCParticleSystemQuad* create() = m1 0x51d1bc, imac 0x5ec500, ios inline {
        CCParticleSystemQuad *pParticleSystemQuad = new CCParticleSystemQuad();
        if (pParticleSystemQuad && pParticleSystemQuad->init())
        {
            pParticleSystemQuad->autorelease();
            return pParticleSystemQuad;
        }
        CC_SAFE_DELETE(pParticleSystemQuad);
        return nullptr;
    }
    static cocos2d::CCParticleSystemQuad* createWithTotalParticles(unsigned int, bool) = m1 0x51c500, imac 0x5eb270, ios 0x252b1c;
    
    void initIndices();
    void initTexCoordsWithRect(cocos2d::CCRect const&) = imac 0x5eb360, m1 0x51c5f0;

    // unsigned char getOpacity();

    void setDisplayFrame(cocos2d::CCSpriteFrame*) = m1 0x51c9b8, imac 0x5eb6d0, ios 0x252dd4;
    // void setOpacity(unsigned char);
    void setTextureWithRect(cocos2d::CCTexture2D*, cocos2d::CCRect const&);

    // CCParticleSystemQuad(cocos2d::CCParticleSystemQuad const&);
    CCParticleSystemQuad() = m1 0x51c298, imac 0x5eafb0, ios 0x25298c;
    virtual ~CCParticleSystemQuad() = imac 0x5eb0b0, m1 0x51c380, ios 0x252a00;
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
    static cocos2d::CCProgressTimer* create(cocos2d::CCSprite*) = imac 0x5ec770, m1 0x51d3fc, ios 0x3f5550;

    bool initWithSprite(cocos2d::CCSprite*) = m1 0x51d4b8, imac 0x5ec850, ios 0x3f55a8;

    // cocos2d::CCPoint getBarChangeRate() const;
    // float getPercentage();
    // cocos2d::CCSprite* getSprite();
    // cocos2d::CCProgressTimerType getType();

    void setAnchorPoint(cocos2d::CCPoint);
    // void setBarChangeRate(cocos2d::CCPoint);
    void setPercentage(float) = imac 0x5ec9f0, m1 0x51d61c, ios 0x3f5678;
    // void setReverseDirection(bool);
    void setReverseProgress(bool);
    void setSprite(cocos2d::CCSprite*) = imac 0x5eca70, m1 0x51d68c, ios 0x3f56c4;
    void setType(cocos2d::CCProgressTimerType type) = imac 0x5ecc80, m1 0x51d828, ios inline {
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
    CCProgressTimer() = m1 0x51d2f4, imac 0x5ec630, ios 0x3f54cc;
    virtual ~CCProgressTimer() = m1 0x51d70c, imac 0x5ecb00, ios 0x3f5744;

    cocos2d::CCPoint boundaryTexCoord(char) = m1 0x51efd8, imac 0x5eed10, ios 0x3f62fc;
    // bool isReverseDirection();
    cocos2d::ccTex2F textureCoordFromAlphaPoint(cocos2d::CCPoint) = m1 0x51dad4, imac 0x5ecf70, ios 0x3f58f4;
    void updateBar() = m1 0x51e384, imac 0x5edab0, ios 0x3f5de0;
    void updateColor();
    void updateProgress() = m1 0x51d80c, imac 0x5ecc50, ios 0x3f57b0;
    void updateRadial() = m1 0x51dc2c, imac 0x5ed0b0, ios 0x3f5a28;
    cocos2d::ccVertex2F vertexFromAlphaPoint(cocos2d::CCPoint) = m1 0x51db98, imac 0x5ed020, ios 0x3f59a8;

    virtual cocos2d::ccColor3B const& getColor() const = m1 0x51d9d4, imac 0x5ece50, ios 0x3f5874;
    virtual unsigned char getOpacity() const = m1 0x51dac4, imac 0x5ecf50, ios 0x3f58e4;
    virtual void draw() = imac 0x5eeda0, m1 0x51f054, ios 0x3f636c;
    virtual cocos2d::CCPoint getMidpoint() = imac 0x5eec80, m1 0x51ef70, ios 0x3f6294;
    virtual void setMidpoint(cocos2d::CCPoint) = imac 0x5eeca0, m1 0x51ef7c, ios 0x3f62a0;

    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x51d8ac, imac 0x5ecd20, ios 0x3f57cc;
    virtual void setOpacity(unsigned char) = m1 0x51d9e4, imac 0x5ece70, ios 0x3f5884;
}

[[link(win, android)]]
class cocos2d::CCFadeIn : cocos2d::CCActionInterval {
    static cocos2d::CCFadeIn* create(float) = m1 0x334064, imac 0x3a7bb0, ios 0x18ff90;

    // CCFadeIn(cocos2d::CCFadeIn const&);
    // CCFadeIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a7c50, m1 0x3340f0, ios 0x19001c;
    virtual void update(float) = imac 0x3a7d20, m1 0x3341c4, ios 0x1900d4;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x334228, imac 0x3a7d80, ios 0x190138;
}

[[link(win, android)]]
class cocos2d::CCFadeOut : cocos2d::CCActionInterval {
    static cocos2d::CCFadeOut* create(float) = imac 0x3a7e30, m1 0x3342b4, ios 0x190140;

    // CCFadeOut(cocos2d::CCFadeOut const&);
    // CCFadeOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a7ed0, m1 0x334340, ios 0x1901cc;
    virtual void update(float) = imac 0x3a7fa0, m1 0x334414, ios 0x190284;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x334480, imac 0x3a8010, ios 0x1902f0;
}

[[link(win, android)]]
class cocos2d::CCFadeTo : cocos2d::CCActionInterval {
    static cocos2d::CCFadeTo* create(float, unsigned char) = imac 0x3a80c0, m1 0x33450c, ios 0x1902f8;

    bool initWithDuration(float, unsigned char) = m1 0x3345a0, imac 0x3a8170, ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_toOpacity = p1;
        return true;
    }

    // CCFadeTo(cocos2d::CCFadeTo const&);
    // CCFadeTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a81b0, m1 0x3345c8, ios 0x19038c;
    virtual void update(float) = imac 0x3a8320, m1 0x334720, ios 0x1904d8;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3346bc, imac 0x3a82c0, ios 0x190474;
}

[[link(win, android)]]
class cocos2d::CCFileUtils : cocos2d::TypeInfo {
    protected CCFileUtils();
    // CCFileUtils(cocos2d::CCFileUtils const&);
    virtual ~CCFileUtils();
    virtual void addSearchPath(char const*) = m1 0x3a42d4, imac 0x4294e0, ios 0x155a30;
    virtual void addSearchResolutionsOrder(char const*) = imac 0x428f30, m1 0x3a3d24, ios 0x155538;
    virtual gd::string addSuffix(gd::string, gd::string) = imac 0x4273f0, m1 0x3a21f4, ios 0x15459c;
    virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(gd::string const&) = m1 0x3a1a70, imac 0x426cf0, ios 0x153f80;
    virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(gd::string const&) = m1 0x3a1a60, imac 0x426cd0, ios 0x153f70;
    virtual gd::string fullPathForFilename(char const*, bool) = imac 0x427a70, m1 0x3a27f4, ios 0x1549ec;
    virtual char const* fullPathFromRelativeFile(char const*, char const*) = imac 0x428a50, m1 0x3a3828, ios 0x1550e0;
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
    virtual void setFilenameLookupDictionary(cocos2d::CCDictionary*) = imac 0x429a70, m1 0x3a4a4c, ios 0x155d54;
    virtual void setPopupNotify(bool) = imac 0x429cd0, m1 0x3a4e20, ios 0x155fbc;
    virtual void setSearchPaths(gd::vector<gd::string> const&) = imac 0x429070, m1 0x3a3e68, ios 0x1556b0;
    virtual void setSearchResolutionsOrder(gd::vector<gd::string> const&) = imac 0x428cb0, m1 0x3a3ab0, ios 0x15524c;
    static cocos2d::CCFileUtils* sharedFileUtils() = imac 0x5f4090, m1 0x523b94, ios 0x23604c;
    virtual bool shouldUseHD() = imac 0x4273c0, m1 0x3a21d0, ios 0x154578;
    virtual bool writeToFile(cocos2d::CCDictionary*, gd::string const&) = m1 0x3a1a68, imac 0x426ce0, ios 0x153f78;
}

[[link(win, android)]]
class cocos2d::CCGLProgram : cocos2d::CCObject {
    bool initWithVertexShaderByteArray(char const*, char const*) = imac 0x417e60, m1 0x393990, ios 0x138260;
    bool initWithVertexShaderFilename(char const*, char const*) = m1 0x393b00, imac 0x417fd0, ios inline {
        return this->initWithVertexShaderByteArray(
            CCString::createWithContentsOfFile(CCFileUtils::sharedFileUtils()->fullPathForFilename(p0, false).c_str())->getCString(),
            CCString::createWithContentsOfFile(CCFileUtils::sharedFileUtils()->fullPathForFilename(p1, false).c_str())->getCString()
        );
    }

    // unsigned int const getProgram();
    int getUniformLocationForName(char const*) = m1 0x3947a0, imac 0x418b80, ios inline {
        return glGetUniformLocation(m_uProgram, p0);
    }

    void setUniformLocationWith1f(int, float) = m1 0x394ad8, imac 0x418e60, ios 0x1389e0;
    void setUniformLocationWith1i(int, int) = m1 0x393d78, imac 0x418210, ios 0x1384f0;
    void setUniformLocationWith2f(int, float, float) = m1 0x394b38, imac 0x418ea0, ios 0x138a40;
    void setUniformLocationWith2fv(int, float*, unsigned int) = m1 0x394d74, imac 0x419070, ios inline {
        if (this->updateUniformLocation(p0, p1, p2 * 8)) glUniform2fv(p0, p2, p1);
    }
    void setUniformLocationWith2i(int, int, int) = m1 0x3947a8, imac 0x418b90, ios inline {
        GLint ints[2] = { p1, p2 };
        if (this->updateUniformLocation(p0, ints, 8)) glUniform2i(p0, p1, p2);
    }
    void setUniformLocationWith2iv(int, int*, unsigned int) = m1 0x3949d8, imac 0x418d70, ios inline {
        if (this->updateUniformLocation(p0, p1, p2 * 8)) glUniform2iv(p0, p2, p1);
    }
    void setUniformLocationWith3f(int, float, float, float) = m1 0x394be4, imac 0x418f30, ios 0x138aec;
    void setUniformLocationWith3fv(int, float*, unsigned int) = m1 0x394dc8, imac 0x4190c0, ios inline {
        if (this->updateUniformLocation(p0, p1, p2 * 12)) glUniform3fv(p0, p2, p1);
    }
    void setUniformLocationWith3i(int, int, int, int) = m1 0x394854, imac 0x418c20, ios inline {
        GLint ints[3] = { p1, p2, p3 };
        if (this->updateUniformLocation(p0, ints, 12)) glUniform3i(p0, p1, p2, p3);
    }
    void setUniformLocationWith3iv(int, int*, unsigned int) = m1 0x394a2c, imac 0x418dc0, ios inline {
        if (this->updateUniformLocation(p0, p1, p2 * 12)) glUniform3iv(p0, p2, p1);
    }
    void setUniformLocationWith4f(int, float, float, float, float) = m1 0x394ca8, imac 0x418fd0, ios 0x138bb0;
    void setUniformLocationWith4fv(int, float*, unsigned int) = m1 0x394e7c, imac 0x419160, ios 0x138cd8;
    void setUniformLocationWith4i(int, int, int, int, int) = m1 0x39490c, imac 0x418cc0, ios inline {
        GLint ints[4] = { p1, p2, p3, p4 };
        if (this->updateUniformLocation(p0, ints, 16)) glUniform4i(p0, p1, p2, p3, p4);
    }
    void setUniformLocationWith4iv(int, int*, unsigned int) = m1 0x394a84, imac 0x418e10, ios inline {
        if (this->updateUniformLocation(p0, p1, p2 * 16)) glUniform4iv(p0, p2, p1);
    }
    void setUniformLocationWithMatrix3fv(int, float*, unsigned int) = m1 0x394e20, imac 0x419110, ios 0x138c7c;
    void setUniformLocationWithMatrix4fv(int, float*, unsigned int) = m1 0x394ed0, imac 0x4191b0, ios 0x138d2c;
    void setUniformsForBuiltins() = imac 0x419200, m1 0x394f28, ios 0x138d84;

    // CCGLProgram(cocos2d::CCGLProgram const&);
    virtual ~CCGLProgram() = m1 0x3937f0, imac 0x417cb0, ios 0x1380ec;
    CCGLProgram() = m1 0x3937b0, imac 0x417c60, ios 0x1380ac;
    void addAttribute(char const*, unsigned int) = imac 0x4180e0, m1 0x393c30, ios 0x1383dc;
    bool compileShader(unsigned int*, unsigned int, char const*) = m1 0x393a34, imac 0x417f00, ios 0x138304;
    char const* description() = imac 0x4180b0, m1 0x393bfc, ios inline {
        return CCString::createWithFormat("<CCGLProgram = " CC_FORMAT_PRINTF_SIZE_T " | Program = %i, VertexShader = %i, FragmentShader = %i>",
            (size_t)this, m_uProgram, m_uVertShader, m_uFragShader)->getCString();
    }
    char const* fragmentShaderLog() = m1 0x3940a8, imac 0x4184f0, ios inline {
        return this->logForOpenGLObject(m_uFragShader, (GLInfoFunction)&glGetShaderiv, (GLLogFunction)&glGetShaderInfoLog);
    }
    bool link() = m1 0x393dcc, imac 0x418250, ios 0x138544;
    char const* logForOpenGLObject(unsigned int, GLInfoFunction, GLLogFunction) = m1 0x393e10, imac 0x418290, ios inline {
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
    char const* programLog() = m1 0x3941f0, imac 0x418620, ios inline {
        return this->logForOpenGLObject(m_uProgram, (GLInfoFunction)&glGetProgramiv, (GLLogFunction)&glGetProgramInfoLog);
    }
    void reset() = m1 0x3951e0, imac 0x419530, ios 0x138f20;
    bool updateUniformLocation(int, void*, unsigned int) = m1 0x394338, imac 0x418750, ios 0x138588;
    void updateUniforms() = imac 0x418100, m1 0x393c44, ios 0x1383f0;
    void use() = m1 0x393d70, imac 0x418200, ios 0x1384e8;
    char const* vertexShaderLog() = m1 0x393f60, imac 0x4183c0, ios inline {
        return this->logForOpenGLObject(m_uVertShader, (GLInfoFunction)&glGetShaderiv, (GLLogFunction)&glGetShaderInfoLog);
    }
}

[[link(win, android)]]
class cocos2d::CCNode : cocos2d::CCObject {
    static cocos2d::CCNode* create() = m1 0x20cad4, imac 0x260d40, ios 0x23b3f0;
    static void resetGlobalOrderOfArrival() = m1 0x20c198, imac 0x260200, ios 0x23ab14;

    // CCNode(cocos2d::CCNode const&);
    CCNode() = imac 0x260210, m1 0x20c1a8, ios 0x23ab24;
    virtual ~CCNode() = imac 0x2603c0, m1 0x20c334, ios 0x23ac80;

    cocos2d::CCAction* getActionByTag(int) = imac 0x261ff0, m1 0x20dd80, ios 0x23c214;
    cocos2d::CCComponent* getComponent(char const*) const = m1 0x20ec24, imac 0x262f20, ios inline {
        return m_pComponentContainer->get(p0);
    }
    // int getScriptHandler();
    // cocos2d::CCAffineTransform getTransformTemp();
    // bool getUseChildIndex();

    void setAdditionalTransform(cocos2d::CCAffineTransform const& additionalTransform) = m1 0x20e760, imac 0x262a30, ios inline {
        m_sAdditionalTransform = additionalTransform;
        m_bTransformDirty = true;
        m_bAdditionalTransformDirty = true;
    } 
    void setUseChildIndex(bool) = m1 0x20d228, imac 0x261460, ios 0x23b978;

    cocos2d::CCRect boundingBox() = imac 0x260cd0, m1 0x20ca74, ios 0x23b390;
    void childrenAlloc() = m1 0x20cc30, imac 0x260e90, ios inline {
        m_pChildren = CCArray::createWithCapacity(4);
        m_pChildren->retain();
    }
    cocos2d::CCPoint convertToNodeSpace(cocos2d::CCPoint const&) = imac 0x262c40, m1 0x20e94c, ios 0x23ccb8;
    cocos2d::CCPoint convertToNodeSpaceAR(cocos2d::CCPoint const& worldPoint) = m1 0x20e9dc, imac 0x262cc0, ios inline {
        return convertToNodeSpace(worldPoint) - m_obAnchorPointInPoints;
    }
    cocos2d::CCPoint convertToWindowSpace(cocos2d::CCPoint const&) = m1 0x20eaa0, imac 0x262d80, ios inline {
        return CCDirector::sharedDirector()->convertToUI(this->convertToWorldSpace(p0));
    }
    cocos2d::CCPoint convertToWorldSpace(cocos2d::CCPoint const&) = imac 0x262c80, m1 0x20e994, ios 0x23cd00;
    cocos2d::CCPoint convertToWorldSpaceAR(cocos2d::CCPoint const& point) = m1 0x20ea40, imac 0x262d20, ios inline {
        return this->convertToWorldSpace(point + m_obAnchorPointInPoints);
    }
    cocos2d::CCPoint convertTouchToNodeSpace(cocos2d::CCTouch*) = imac 0x262de0, m1 0x20eaf8, ios 0x23cd48;
    cocos2d::CCPoint convertTouchToNodeSpaceAR(cocos2d::CCTouch*) = m1 0x20eb50, imac 0x262e40, ios inline {
        return this->convertToNodeSpaceAR(p0->getLocation());
    }
    char const* description() = imac 0x260e70, m1 0x20cc04, ios inline {
        return CCString::createWithFormat("<CCNode | Tag = %d>", m_nTag)->getCString();
    }
    void detachChild(cocos2d::CCNode*, bool) = m1 0x20cf8c, imac 0x2611f0, ios 0x23b72c;
    void insertChild(cocos2d::CCNode*, int) = m1 0x20ce04, imac 0x261020, ios 0x23b654;
    unsigned int numberOfRunningActions() = m1 0x20dd8c, imac 0x262010, ios inline {
        return m_pActionManager->numberOfRunningActionsInTarget(this);
    }
    void pauseSchedulerAndActions() = m1 0x20dc28, imac 0x261e70, ios 0x23c0c4;
    void qsortAllChildrenWithIndex() = m1 0x20d628, imac 0x261880, ios 0x23bb40;
    void resumeSchedulerAndActions() = imac 0x261c50, m1 0x20da08, ios 0x23bed0;
    cocos2d::CCAction* runAction(cocos2d::CCAction*) = imac 0x261f80, m1 0x20dd34, ios 0x23c1d0;
    void schedule(cocos2d::SEL_SCHEDULE) = imac 0x2621b0, m1 0x20dee8, ios 0x23c2fc;
    void schedule(cocos2d::SEL_SCHEDULE, float) = imac 0x262210, m1 0x20df28, ios 0x23c320;
    void schedule(cocos2d::SEL_SCHEDULE selector, float interval, unsigned int repeat, float delay) = imac 0x2621e0, m1 0x20df0c, ios inline {
        m_pScheduler->scheduleSelector(selector, this, interval, repeat, delay, !m_bRunning);
    }
    void scheduleOnce(cocos2d::SEL_SCHEDULE selector, float delay) = imac 0x262240, m1 0x20df48, ios inline {
        this->schedule(selector, 0.0f, 0, delay);
    }
    void scheduleUpdate() = imac 0x262090, m1 0x20ddf0, ios 0x23c278;
    void scheduleUpdateWithPriority(int) = m1 0x20de0c, imac 0x2620c0, ios 0x23c294;
    void scheduleUpdateWithPriorityLua(int, int) = m1 0x20de28, imac 0x2620f0, ios inline {
        this->unscheduleUpdate();
        m_nUpdateScriptHandler = p0;
        m_pScheduler->scheduleUpdateForTarget(this, p1, !m_bRunning);
    }
    void sortAllChildrenNoIndex() = m1 0x20d50c, imac 0x261780, ios 0x23ba30;
    void sortAllChildrenWithIndex() = m1 0x20d480, imac 0x2616f0, ios inline {
        this->qsortAllChildrenWithIndex();
    }
    void stopAction(cocos2d::CCAction* action) = m1 0x20dd6c, imac 0x261fb0, ios inline {
        m_pActionManager->removeAction(action);
    }
    void stopActionByTag(int) = m1 0x20dd74, imac 0x261fd0, ios 0x23c208;
    void stopAllActions() = imac 0x260e30, m1 0x20cbec, ios 0x23b4fc;
    void transform() = m1 0x20d820, imac 0x261a70, ios 0x23bd34;
    void transformAncestors() = m1 0x20d8e4, imac 0x261b30, ios 0x23bddc;
    void unschedule(cocos2d::SEL_SCHEDULE) = imac 0x262270, m1 0x20df6c, ios 0x23c340;
    void unscheduleAllSelectors() = imac 0x260e50, m1 0x20cbf8, ios 0x23b508;
    void unscheduleUpdate() = imac 0x262160, m1 0x20de9c, ios 0x23c2b0;
    void updateChildIndexes() = m1 0x20c750, imac 0x260900, ios 0x23b07c;

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
    void pauseTarget(cocos2d::CCObject*) = imac 0x42f860, m1 0x3aa664, ios 0x1aed80;
    void priorityIn(cocos2d::_listEntry**, cocos2d::CCObject*, int, bool);
    void removeHashElement(cocos2d::_hashSelectorEntry*);
    void removeUpdateFromHash(cocos2d::_listEntry*);
    void resumeTarget(cocos2d::CCObject*) = m1 0x3aa474, imac 0x42f630, ios 0x1aeb90;
    void resumeTargets(cocos2d::CCSet*);
    unsigned int scheduleScriptFunc(unsigned int, float, bool);
    void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, unsigned int, float, bool) = imac 0x42e250, m1 0x3a8f7c, ios 0x1ad808;
    void scheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*, float, bool) = imac 0x42e230, m1 0x3a8f6c, ios 0x1ad7f8;
    void scheduleUpdateForTarget(cocos2d::CCObject*, int, bool) = imac 0x42ee60, m1 0x3a9bec, ios 0x1ae428;
    void unscheduleAll() = m1 0x3a8d94, imac 0x42e060, ios 0x1ad6a0;
    void unscheduleAllForTarget(cocos2d::CCObject*) = m1 0x3aa208, imac 0x42f420, ios 0x1ae9ec;
    void unscheduleAllWithMinPriority(int);
    void unscheduleScriptEntry(unsigned int);
    void unscheduleSelector(cocos2d::SEL_SCHEDULE, cocos2d::CCObject*) = imac 0x42dd60, m1 0x3a8a88, ios 0x1ad400;
    void unscheduleUpdateForTarget(cocos2d::CCObject const*);

    virtual void update(float) = imac 0x42fea0, m1 0x3aac3c, ios 0x1aef78;
}

[[link(win, android)]]
class cocos2d::CCLayer : cocos2d::CCNode, cocos2d::CCTouchDelegate, cocos2d::CCAccelerometerDelegate, cocos2d::CCKeypadDelegate, cocos2d::CCKeyboardDelegate, cocos2d::CCMouseDelegate {
    static cocos2d::CCLayer* create() = imac 0x49d570, m1 0x408478, ios 0x14bd1c;

    // CCLayer(cocos2d::CCLayer const&);
    CCLayer() = imac 0x49cfb0, m1 0x40805c, ios 0x14bb5c;
    virtual ~CCLayer() = imac 0x49d170, m1 0x4081b4, ios 0x14bc08;

    // cocos2d::CCScriptHandlerEntry* getScriptAccelerateHandlerEntry();
    // cocos2d::CCScriptHandlerEntry* getScriptKeypadHandlerEntry();
    // cocos2d::CCTouchScriptHandlerEntry* getScriptTouchHandlerEntry();

    int excuteScriptTouchHandler(int, cocos2d::CCSet*);
    int excuteScriptTouchHandler(int, cocos2d::CCTouch*);
    void registerScriptAccelerateHandler(int);
    void registerScriptKeypadHandler(int);
    void unregisterScriptAccelerateHandler();
    void unregisterScriptKeypadHandler() = m1 0x408234, imac 0x49d240;

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
    static cocos2d::CCLayerGradient* create(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&) = m1 0x40ad84, imac 0x4a0430, ios 0x14d52c;
    static cocos2d::CCLayerGradient* create(cocos2d::ccColor4B const& a1, cocos2d::ccColor4B const& a2, cocos2d::CCPoint const& a3) = ios inline, imac 0x4a06f0, m1 0x40afac {
    	auto ret = create(a1, a2);
    	ret->setVector(a3);
    	return ret;
    }
    static cocos2d::CCLayerGradient* create() = m1 0x40b05c, imac 0x4a0780, ios inline {
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

    virtual bool init() = imac 0x4a07f0, m1 0x40b0e8, ios 0x14d62c;
    [[since("4.11.0")]]
    virtual void visit() = m1 0x40b560, imac 0x4a0ce0, ios 0x14da6c;

    virtual void updateColor() = imac 0x4a0930, m1 0x40b218, ios 0x14d744;
    virtual bool initWithColor(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&) = imac 0x4a0820, m1 0x40b120, ios 0x14d664;
    virtual bool initWithColor(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&, cocos2d::CCPoint const&) = imac 0x4a0880, m1 0x40b180, ios 0x14d6c4;
    virtual cocos2d::ccColor3B const& getStartColor() = m1 0x40b430, imac 0x4a0b20, ios 0x14d93c;
    virtual void setStartColor(cocos2d::ccColor3B const&) = m1 0x40b438, imac 0x4a0b30, ios 0x14d944;
    virtual cocos2d::ccColor3B const& getEndColor() = m1 0x40b464, imac 0x4a0b80, ios 0x14d970;
    virtual void setEndColor(cocos2d::ccColor3B const&) = imac 0x4a0b50, m1 0x40b444, ios 0x14d950;
    virtual unsigned char getStartOpacity() = m1 0x40b47c, imac 0x4a0bb0, ios 0x14d988;
    virtual void setStartOpacity(unsigned char) = m1 0x40b46c, imac 0x4a0b90, ios 0x14d978;
    virtual unsigned char getEndOpacity() = m1 0x40b494, imac 0x4a0be0, ios 0x14d9a0;
    virtual void setEndOpacity(unsigned char) = m1 0x40b484, imac 0x4a0bc0, ios 0x14d990;
    virtual cocos2d::CCPoint const& getVector() = m1 0x40b4cc, imac 0x4a0c20, ios 0x14d9d8;
    virtual void setVector(cocos2d::CCPoint const&) = imac 0x4a0bf0, m1 0x40b49c, ios 0x14d9a8;
    virtual void setCompressedInterpolation(bool) = m1 0x40b550, imac 0x4a0cc0, ios 0x14da5c;
    virtual bool isCompressedInterpolation() = m1 0x40b548, imac 0x4a0cb0, ios 0x14da54;

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
    static cocos2d::CCObject* createWithCoder(DS_Dictionary*) = m1 0x3e6390, imac 0x477ec0, ios 0x88ad0;

    // CCObject(cocos2d::CCObject const&);
    CCObject() = imac 0x477bd0, m1 0x3e6090, ios 0x88938;
    virtual ~CCObject() = imac 0x477c70, m1 0x3e6120, ios 0x88980;

    // cocos2d::CCObjectType getObjType() const;

    // void setObjType(cocos2d::CCObjectType);

    cocos2d::CCObject* autorelease() = m1 0x3e6314, imac 0x477e10, ios 0x88a6c;
    cocos2d::CCObject* copy();
    bool isSingleReference() const = m1 0x3e6340, imac 0x477e40, ios inline {
        return m_uReference == 1;
    }
    void release() = imac 0x477de0, m1 0x3e62e0, ios 0x88a38;
    void retain() = imac 0x477e00, m1 0x3e6304, ios 0x88a5c;
    unsigned int retainCount() const;

    virtual int getTag() const = m1 0x3e637c, imac 0x477e90, ios 0x88abc;
    virtual bool isEqual(cocos2d::CCObject const*) = imac 0x477e60, m1 0x3e6358, ios 0x88a98;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = m1 0x3e6364, imac 0x477e70, ios 0x88aa4;
    virtual void encodeWithCoder(DS_Dictionary*) = m1 0x3e638c, imac 0x477eb0, ios 0x88acc;
    virtual bool canEncode() = m1 0x3e6398, imac 0x477ed0, ios 0x88ad8;
    virtual void setTag(int) = m1 0x3e6384, imac 0x477ea0, ios 0x88ac4;

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

    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x2e7f94, imac 0x354130;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x2e8004, imac 0x3541a0;
}

[[link(win, android)]]
class cocos2d::CCOrbitCamera : cocos2d::CCActionCamera {
    static cocos2d::CCOrbitCamera* create(float, float, float, float, float, float, float) = m1 0x2e8008, imac 0x3541b0;

    bool initWithDuration(float, float, float, float, float, float, float) = m1 0x2e8104, imac 0x3542f0;
    // CCOrbitCamera(cocos2d::CCOrbitCamera const&);
    // CCOrbitCamera();

    void sphericalRadius(float*, float*, float*) = m1 0x2e8430, imac 0x3546c0;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3543a0, m1 0x2e8180;
    virtual void update(float) = imac 0x354800, m1 0x2e853c;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x2e82a8, imac 0x3544f0;
}

[[link(win, android)]]
class cocos2d::CCLayerColor : cocos2d::CCLayerRGBA, cocos2d::CCBlendProtocol {
    static cocos2d::CCLayerColor* create(cocos2d::ccColor4B const&) = imac 0x49fbb0, m1 0x40a558, ios 0x14d0c8;
    static cocos2d::CCLayerColor* create(cocos2d::ccColor4B const&, float, float) = m1 0x40a3dc, imac 0x49f9e0, ios 0x14cfec;
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
    CCLayerColor() = imac 0x49f1a0, m1 0x409e3c, ios 0x14cf2c;
    virtual ~CCLayerColor() = imac 0x49f480, m1 0x40a034, ios 0x14cf90;

    void setVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);

    void addToVertices(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint);
    void changeHeight(float);
    void changeWidth(float);
    void changeWidthAndHeight(float, float);

    virtual bool init() = imac 0x49fd80, m1 0x40a6a4, ios 0x14d18c;
    virtual void setContentSize(cocos2d::CCSize const&) = imac 0x49ff70, m1 0x40a874, ios 0x14d33c;
    virtual void draw() = m1 0x40a9d4, imac 0x4a00b0, ios 0x14d3a8;
    virtual bool initWithColor(cocos2d::ccColor4B const&, float, float) = imac 0x49fdd0, m1 0x40a6f0, ios 0x14d1d8;
    virtual bool initWithColor(cocos2d::ccColor4B const&) = m1 0x40a7dc, imac 0x49fec0, ios 0x14d2a4;
    virtual void updateColor() = imac 0x4a0060, m1 0x40a958, ios 0x14d354;

    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x4a0180, m1 0x40aaa0, ios 0x14d474;
    virtual void setOpacity(unsigned char) = imac 0x4a0300, m1 0x40ac4c, ios 0x14d4d0;

    virtual void setBlendFunc(cocos2d::ccBlendFunc) = m1 0x40a254, imac 0x49f7e0, ios 0x14cfdc;
    virtual cocos2d::ccBlendFunc getBlendFunc() = m1 0x40a244, imac 0x49f7c0, ios 0x14cfcc;

    std::array<cocos2d::ccVertex2F, 4> m_pSquareVertices;
    std::array<cocos2d::ccColor4F, 4> m_pSquareColors;
    cocos2d::ccBlendFunc m_tBlendFunc;
}

[[link(win, android)]]
class cocos2d::CCLayerRGBA : cocos2d::CCLayer, cocos2d::CCRGBAProtocol {
    // static cocos2d::CCLayerRGBA* create();

    // CCLayerRGBA(cocos2d::CCLayerRGBA const&);
    CCLayerRGBA() = imac 0x49e3f0, m1 0x4093d0, ios 0x14ca90;
    virtual ~CCLayerRGBA() = imac 0x49e690, m1 0x4095a0, ios 0x14cae0;

    virtual bool init() = imac 0x49e9d0, m1 0x4097b0, ios 0x14cb1c;

    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x4099d4, imac 0x49ec10, ios 0x14cc58;
    virtual cocos2d::ccColor3B const& getColor() = m1 0x4099b4, imac 0x49ebd0, ios 0x14cc38;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = m1 0x4099c4, imac 0x49ebf0, ios 0x14cc48;
    virtual unsigned char getDisplayedOpacity() = m1 0x40984c, imac 0x49ea70, ios 0x14cb88;
    virtual unsigned char getOpacity() = m1 0x40983c, imac 0x49ea50, ios 0x14cb78;
    virtual void setOpacity(unsigned char) = m1 0x40985c, imac 0x49ea90, ios 0x14cb98;
    virtual bool isCascadeColorEnabled() = m1 0x409e1c, imac 0x49f160, ios 0x14cf0c;
    virtual void setCascadeColorEnabled(bool) = m1 0x409e2c, imac 0x49f180, ios 0x14cf1c;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = m1 0x409cf0, imac 0x49ef00, ios 0x14cdec;
    virtual bool isCascadeOpacityEnabled() = m1 0x409dfc, imac 0x49f120, ios 0x14ceec;
    virtual void setCascadeOpacityEnabled(bool) = m1 0x409e0c, imac 0x49f140, ios 0x14cefc;
    virtual void updateDisplayedOpacity(unsigned char) = m1 0x409b60, imac 0x49ed80, ios 0x14cd28;

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
    CCMouseDispatcher() = m1 0x4b0964, imac 0x55a150, ios 0x2fe324;
    virtual ~CCMouseDispatcher() = m1 0x4b09d4, imac 0x55a1c0, ios 0x2fe398;

    void addDelegate(cocos2d::CCMouseDelegate*) = m1 0x4b0c20, imac 0x55a410, ios 0x2fe4e0;
    bool dispatchScrollMSG(float, float) = imac 0x55a490, m1 0x4b0cb4;
    void forceAddDelegate(cocos2d::CCMouseDelegate*) = m1 0x4b0c78, imac 0x55a460, ios inline {
        if (auto handler = CCMouseHandler::handlerWithDelegate(p0)) m_pMouseHandlers->addObject(handler);
    }
    void forceRemoveDelegate(cocos2d::CCMouseDelegate*) = m1 0x4b0b8c, imac 0x55a380, ios 0x2fe44c;
    void removeDelegate(cocos2d::CCMouseDelegate*) = m1 0x4b0ad4, imac 0x55a2e0, ios 0x2fe404;

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
    virtual ~CCTargetedTouchHandler() = m1 0x3dda34, imac 0x46e770, ios 0x10634;

    bool initWithDelegate(cocos2d::CCTouchDelegate*, int, bool);

    cocos2d::CCSet* getClaimedTouches() = imac 0x46e5e0, m1 0x3dd8b8, ios 0x10540;

    void setSwallowsTouches(bool);

    // CCTargetedTouchHandler(cocos2d::CCTargetedTouchHandler const&);
    // CCTargetedTouchHandler();
    bool isSwallowsTouches();

    bool m_bSwallowsTouches;
    cocos2d::CCSet* m_pClaimedTouches;
}

[[link(win, android)]]
class cocos2d::CCTexture2D : cocos2d::CCObject {
    static void PVRImagesHavePremultipliedAlpha(bool) = m1 0x3d667c, imac 0x466800, ios 0x13113c;
    static cocos2d::CCTexture2DPixelFormat defaultAlphaPixelFormat();
    static void setDefaultAlphaPixelFormat(cocos2d::CCTexture2DPixelFormat) = imac 0x4669c0, m1 0x3d683c;

    bool initPremultipliedATextureWithImage(cocos2d::CCImage*, unsigned int, unsigned int) = m1 0x3d590c, imac 0x465a10, ios 0x130acc;
    bool initWithData(void const*, cocos2d::CCTexture2DPixelFormat, unsigned int, unsigned int, cocos2d::CCSize const&) = imac 0x465650, m1 0x3d557c, ios 0x1307ac;
    bool initWithETCFile(char const*) = imac 0x466730, m1 0x3d65b4;
    bool initWithImage(cocos2d::CCImage*) = m1 0x3d5890, imac 0x4659b0, ios 0x130a5c;
    bool initWithPVRFile(char const*) = imac 0x466650, m1 0x3d64dc;
    bool initWithString(char const*, char const*, float) = imac 0x4662a0, m1 0x3d6128;
    bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment) = imac 0x466300, m1 0x3d6198;
    bool initWithString(char const*, cocos2d::ccFontDefinition*);

    cocos2d::CCSize const& getContentSizeInPixels() = m1 0x3d54cc, imac 0x465550, ios 0x130738;

    void setAliasTexParameters() = m1 0x3d6778, imac 0x4668f0, ios 0x1311e0;
    void setAntiAliasTexParameters();
    void setTexParameters(cocos2d::ccTexParams*) = imac 0x466860, m1 0x3d66e0, ios 0x131148;

    // CCTexture2D(cocos2d::CCTexture2D const&);
    virtual ~CCTexture2D() = m1 0x3d5378, ios 0x130660, imac 0x4653b0; //imac 0x465400
    CCTexture2D() = m1 0x3d52b0, imac 0x4652f0, ios 0x1305f8;
    unsigned int bitsPerPixelForFormat(cocos2d::CCTexture2DPixelFormat) = m1 0x3d582c, imac 0x465950, ios inline {
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
    unsigned int bitsPerPixelForFormat() = m1 0x3d6854, imac 0x4669e0, ios inline {
        return this->bitsPerPixelForFormat(m_ePixelFormat);
    }
    char const* description() = imac 0x465970, m1 0x3d584c;
    void drawAtPoint(cocos2d::CCPoint const&) = m1 0x3d62d0, imac 0x466450;
    void drawInRect(cocos2d::CCRect const&) = m1 0x3d63e8, imac 0x466560;
    void generateMipmap() = imac 0x466810, m1 0x3d6688;
    bool hasMipmaps();
    bool hasPremultipliedAlpha();
    void* keepData(void*, unsigned int);
    void releaseData(void*);
    void releaseGLTexture() = imac 0x4655f0, m1 0x3d5538;
    char const* stringForFormat() = m1 0x3d6818, imac 0x466990;

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
class cocos2d::CCTextureAtlas : cocos2d::CCObject {
	static cocos2d::CCTextureAtlas* create(char const*, unsigned int);
	static cocos2d::CCTextureAtlas* createWithTexture(cocos2d::CCTexture2D*, unsigned int);

	bool initWithFile(char const*, unsigned int);
	bool initWithTexture(cocos2d::CCTexture2D*, unsigned int);

    // void setDirty(bool);

	// CCTextureAtlas(cocos2d::CCTextureAtlas const&);
    CCTextureAtlas() = m1 0x4059f8, imac 0x499bf0, ios 0x268f60;
    virtual ~CCTextureAtlas() = m1 0x405a28, imac 0x499c30, ios 0x268f90;

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

	virtual unsigned int getTotalQuads() = m1 0x405abc, imac 0x499cf0, ios 0x269024;
	virtual unsigned int getCapacity() = m1 0x405ac4, imac 0x499d00, ios 0x26902c;
	virtual cocos2d::CCTexture2D* getTexture() = m1 0x405acc, imac 0x499d10, ios 0x269034;
	virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x405ad4, imac 0x499d20, ios 0x26903c;
	virtual cocos2d::ccV3F_C4B_T2F_Quad* getQuads() = m1 0x405b10, imac 0x499d60, ios 0x269078;
	virtual void setQuads(cocos2d::ccV3F_C4B_T2F_Quad*) = m1 0x405b20, imac 0x499d70, ios 0x269088;
}

[[link(win, android)]]
class cocos2d::CCTextureCache : cocos2d::CCObject {
    static void purgeSharedTextureCache();
    static void reloadAllTextures();
    static cocos2d::CCTextureCache* sharedTextureCache() = imac 0x5d4630, m1 0x508118, ios 0x115eac;

    // CCTextureCache(cocos2d::CCTextureCache const&);
    CCTextureCache();
    virtual ~CCTextureCache();

    cocos2d::CCTexture2D* addETCImage(char const*);
    cocos2d::CCTexture2D* addImage(char const*, bool) = imac 0x5d58c0, m1 0x509308, ios 0x116a94;
    void addImageAsync(char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler, int, cocos2d::CCTexture2DPixelFormat) = imac 0x5d4b00, m1 0x5085b8, ios 0x11603c;
    void addImageAsyncCallBack(float);
    cocos2d::CCTexture2D* addPVRImage(char const*);
    cocos2d::CCTexture2D* addUIImage(cocos2d::CCImage*, char const*) = imac 0x5d6700, m1 0x50a210, ios 0x117460;
    char const* description() = imac 0x5d4910, m1 0x5083f4;
    void dumpCachedTextureInfo();
    void prepareAsyncLoading() = imac 0x5d4ac0, m1 0x508584, ios 0x116008;
    bool reloadTexture(char const*);
    void removeAllTextures();
    void removeTexture(cocos2d::CCTexture2D*);
    void removeTextureForKey(char const*) = imac 0x5d6ca0, m1 0x50a7e4, ios 0x1175f0;
    void removeUnusedTextures();
    cocos2d::CCDictionary* snapshotTextures();
    cocos2d::CCTexture2D* textureForKey(char const*) = imac 0x5d6d20, m1 0x50a874, ios 0x117670;
}

[[link(win, android)]]
class cocos2d::CCTouch : cocos2d::CCObject {
    cocos2d::CCPoint getLocationInView() const = m1 0x4f71c, imac 0x59ab0, ios 0x2fe8d0;
    cocos2d::CCPoint getPreviousLocationInView() const = m1 0x4f728, imac 0x59ad0;
    cocos2d::CCPoint getLocation() const = m1 0x4f740, imac 0x59b10, ios 0x2fe8dc;
    cocos2d::CCPoint getPreviousLocation() const = ios inline, m1 0x4f76c, imac 0x59b40 {
    	return CCDirector::sharedDirector()->convertToGL(m_prevPoint);
    }
    cocos2d::CCPoint getStartLocation() const = ios inline, m1 0x4f798, imac 0x59b70 {
    	return CCDirector::sharedDirector()->convertToGL(m_startPoint);
    }
    cocos2d::CCPoint getDelta() const = ios inline, m1 0x4f7c4, imac 0x59ba0 {
    	return getLocation() - getPreviousLocation();
    }

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
    bool init() = m1 0x4203d4, imac 0x4b86d0, ios 0x15220c;

    // int getTargetPrio() const;

    void setDispatchEvents(bool);
    void setPriority(int p1, cocos2d::CCTouchDelegate* p2) = imac 0x4b90d0, m1 0x420e50, ios inline {
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

    void addPrioTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x4b8980, m1 0x420668, ios 0x152430;
    void addStandardDelegate(cocos2d::CCTouchDelegate*, int);
    void addTargetedDelegate(cocos2d::CCTouchDelegate*, int, bool) = imac 0x4b89a0, m1 0x420680, ios 0x152448;
    void decrementForcePrio(int);
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCArray*, cocos2d::CCTouchDelegate*);
    cocos2d::CCTouchHandler* findHandler(cocos2d::CCTouchDelegate*) = imac 0x4b8f90, m1 0x420cec, ios 0x1528d8;
    void forceAddHandler(cocos2d::CCTouchHandler*, cocos2d::CCArray*);
    void forceRemoveAllDelegates();
    void forceRemoveDelegate(cocos2d::CCTouchDelegate*) = m1 0x420a38, imac 0x4b8d10, ios 0x1526c0;
    void incrementForcePrio(int);
    bool isDispatchEvents();
    bool isUsingForcePrio() = m1 0x420658, imac 0x4b8970, ios 0x152420;
    void rearrangeHandlers(cocos2d::CCArray* handlers) = m1 0x420dc8, imac 0x4b9050, ios inline {
        std::sort(handlers->data->arr, handlers->data->arr + handlers->data->num, [](const CCObject* p1, const CCObject* p2) {
            return ((CCTouchHandler*)p1)->getPriority() < ((CCTouchHandler*)p2)->getPriority();
        });
    }
    void registerForcePrio(cocos2d::CCObject*, int) = imac 0x4b8880, m1 0x420540, ios 0x152340;
    void removeAllDelegates();
    void removeDelegate(cocos2d::CCTouchDelegate*) = m1 0x420b2c, imac 0x4b8e00, ios 0x1527ac;
    void touches(cocos2d::CCSet*, cocos2d::CCEvent*, unsigned int) = imac 0x4b9220, m1 0x420fc0, ios 0x152998;
    void unregisterForcePrio(cocos2d::CCObject*) = imac 0x4b8920, m1 0x4205f4, ios 0x1523bc;

    virtual void touchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b9840, m1 0x421540, ios 0x152d68;
    virtual void touchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b9880, m1 0x42156c, ios 0x152d94;
    virtual void touchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b98c0, m1 0x421598, ios 0x152dc0;
    virtual void touchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*) = imac 0x4b9900, m1 0x4215c4, ios 0x152dec;

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
    virtual ~CCTouchHandler() = ios 0x10430, m1 0x3dd690, imac 0x46e390;

    cocos2d::CCTouchDelegate* getDelegate() = m1 0x3dd4e4, imac 0x46e1c0, ios 0x103c4;
    int getEnabledSelectors();
    int getPriority() = ios inline, m1 0x3dd558, imac 0x46e240 {
    	return m_nPriority;
    }

    void setDelegate(cocos2d::CCTouchDelegate*);
    void setEnalbedSelectors(int);
    void setPriority(int prio) = ios inline, m1 0x3dd560, imac 0x46e250 {
    	m_nPriority = prio;
    }

    // CCTouchHandler(cocos2d::CCTouchHandler const&);
    // CCTouchHandler();

    virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int) = m1 0x3dd620, imac 0x46e330, ios 0x103d4;

    cocos2d::CCTouchDelegate* m_pDelegate;
    int m_nPriority;
    int m_nEnabledSelectors;
}

[[link(win, android)]]
class cocos2d::CCMouseHandler : cocos2d::CCObject {
    static cocos2d::CCMouseHandler* handlerWithDelegate(cocos2d::CCMouseDelegate*) = m1 0x21dc04, imac 0x272be0, ios 0x888b8;

    // CCMouseHandler(cocos2d::CCMouseHandler const&);
    // CCMouseHandler();
    virtual ~CCMouseHandler() = m1 0x21da44, imac 0x272a00, ios 0x88804;

    cocos2d::CCMouseDelegate* getDelegate() = m1 0x21da3c, imac 0x2729f0, ios 0x887fc;
    void setDelegate(cocos2d::CCMouseDelegate*) = m1 0x21db44, imac 0x272b20, ios inline {
        if (auto delegate = geode::cast::typeinfo_cast<cocos2d::CCObject*>(p0)) delegate->retain();
        if (auto delegate = geode::cast::typeinfo_cast<cocos2d::CCObject*>(m_pDelegate)) delegate->release();
        m_pDelegate = p0;
    }

    virtual bool initWithDelegate(cocos2d::CCMouseDelegate*) = m1 0x21dbb0, imac 0x272b90, ios 0x88870;

    cocos2d::CCMouseDelegate* m_pDelegate;
}

[[link(win, android)]]
class cocos2d::CCEGLView {
    protected CCEGLView() = m1 0x451210, imac 0x4f0030, ios 0x12d970;
    protected virtual ~CCEGLView() = m1 0x451260, imac 0x4f0090, ios inline {}

    virtual void end() = m1 0x4512e4, imac 0x4f0140, ios 0x12da5c;
    virtual void swapBuffers() = m1 0x45133c, imac 0x4f01b0, ios 0x12da84;
    virtual bool isOpenGLReady() = m1 0x4512b8, imac 0x4f0110, ios 0x12da00;
    virtual void setIMEKeyboardState(bool) = m1 0x451358, imac 0x4f01f0, ios 0x12daa0;
    [[missing(android, mac, ios)]]
    virtual void setFrameSize(float, float);
    [[missing(win, android)]]
    virtual bool setContentScaleFactor(float) = m1 0x4512dc, imac 0x4f0130, ios 0x12da24;
    [[missing(android, ios)]]
    virtual void setViewPortInPoints(float, float, float, float) = m1 0x451390, imac 0x4f0240;
    [[missing(android, ios)]]
    virtual void setScissorInPoints(float, float, float, float) = m1 0x451438, imac 0x4f0330;
    [[missing(win, android, ios)]]
    virtual void setMultiTouchMask(bool) = m1 0x4514e0, imac 0x4f0420;

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
    static cocos2d::CCEGLView* sharedOpenGLView() = m1 0x45119c, imac 0x4effd0, ios 0x12dad8;
}

[[link(win, android)]]
class cocos2d::CCImage : cocos2d::CCObject {
    bool initWithImageData(void*, int, cocos2d::CCImage::EImageFormat, int, int, int, int) = imac 0x476d80, m1 0x3e5670, ios 0x2f5f0;
    bool initWithImageFile(char const*, cocos2d::CCImage::EImageFormat) = imac 0x476b70, m1 0x3e5430, ios 0x2f4dc;
    bool initWithImageFileThreadSafe(char const*, cocos2d::CCImage::EImageFormat) = imac 0x477360, m1 0x3e5a5c;
    bool initWithString(char const*, int, int, cocos2d::CCImage::ETextAlign, char const*, int);

    // int getBitsPerComponent() const;
    // unsigned char* getData();
    // int getDataLen();
    // unsigned short getHeight() const;
    // unsigned short getWidth() const;

    CCImage() = imac 0x476a70, m1 0x3e534c, ios 0x2f45c;
    virtual ~CCImage() = imac 0x476ab0, m1 0x3e5378, ios 0x2f488;

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
    protected CCIMEDelegate() = m1 0x411c08, imac 0x4a88b0, ios 0x1d45b8;
    virtual ~CCIMEDelegate() = imac 0x4a8ab0, m1 0x411e18, ios 0x1d46f8;
    virtual bool attachWithIME() = imac 0x4a8c50, m1 0x411f90, ios 0x1d47b4;
    virtual bool detachWithIME() = imac 0x4a8e40, m1 0x4121d0, ios 0x1d48b8;
}

[[link(win, android)]]
class cocos2d::CCIMEDispatcher {
    static cocos2d::CCIMEDispatcher* sharedDispatcher() = imac 0x4a89a0, m1 0x411d04;

    private CCIMEDispatcher();
    ~CCIMEDispatcher();

    void addDelegate(cocos2d::CCIMEDelegate*);
    bool attachDelegateWithIME(cocos2d::CCIMEDelegate*);
    bool detachDelegateWithIME(cocos2d::CCIMEDelegate*);
    void dispatchDeleteBackward() = m1 0x4124e0, imac 0x4a9140, ios 0x1d49c4;
    void dispatchDeleteForward() = m1 0x412500, imac 0x4a9160;
    void dispatchInsertText(char const*, int, cocos2d::enumKeyCodes) = imac 0x4a9110, m1 0x4124b4, ios 0x1d4998;
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
    static cocos2d::enumKeyCodes convertKeyCode(cocos2d::enumKeyCodes) = m1 0x1a82ac, imac 0x1f1a50;

    // bool getAltKeyPressed() const;
    // bool getBlockRepeat() const;
    // bool getCommandKeyPressed() const;
    // bool getControlKeyPressed() const;
    // bool getShiftKeyPressed() const;

    // void setBlockRepeat(bool);

    // CCKeyboardDispatcher(cocos2d::CCKeyboardDispatcher const&);
    CCKeyboardDispatcher() = m1 0x1a7cd0, imac 0x1f1460;
    virtual ~CCKeyboardDispatcher() = m1 0x1a7d48, imac 0x1f14e0;

    void addDelegate(cocos2d::CCKeyboardDelegate*) = m1 0x1a7f94, imac 0x1f1730; // ios 0x239960
    bool dispatchKeyboardMSG(cocos2d::enumKeyCodes, bool, bool) = imac 0x1f17b0, m1 0x1a8028;
    void forceAddDelegate(cocos2d::CCKeyboardDelegate*) = m1 0x1a7fec, imac 0x1f1780; // ios 0x2399a8
    void forceRemoveDelegate(cocos2d::CCKeyboardDelegate*) = m1 0x1a7f00, imac 0x1f16a0; // ios 0x2398cc
    char const* keyToString(cocos2d::enumKeyCodes) = imac 0x1f1aa0, m1 0x1a82e0;
    void removeDelegate(cocos2d::CCKeyboardDelegate*) = imac 0x1f1600, m1 0x1a7e48; // ios 0x239884
    void updateModifierKeys(bool, bool, bool, bool) = imac 0x1f1a70, m1 0x1a82c8;

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
    CCKeypadDispatcher() = m1 0x5142d4, imac 0x5e1c40, ios 0x1b09f8;
    virtual ~CCKeypadDispatcher() = m1 0x514344, imac 0x5e1cb0, ios 0x1b0a6c;

    void addDelegate(cocos2d::CCKeypadDelegate*) = m1 0x514590, imac 0x5e1f00, ios 0x1b0bb4;
    bool dispatchKeypadMSG(cocos2d::ccKeypadMSGType) = m1 0x514624, imac 0x5e1f80, ios 0x1b0c38;
    void forceAddDelegate(cocos2d::CCKeypadDelegate*) = m1 0x5145e8, imac 0x5e1f50, ios 0x1b0bfc;
    void forceRemoveDelegate(cocos2d::CCKeypadDelegate*) = m1 0x5144fc, imac 0x5e1e70, ios 0x1b0b20;
    void removeDelegate(cocos2d::CCKeypadDelegate*) = m1 0x514444, imac 0x5e1dd0, ios 0x1b0ad8;

    cocos2d::CCArray* m_pDelegates;
    bool m_bLocked;
    bool m_bToAdd;
    bool m_bToRemove;
    cocos2d::ccCArray* m_pHandlersToAdd;
    cocos2d::ccCArray* m_pHandlersToRemove;
}

[[link(win, android)]]
class cocos2d::CCDirector : cocos2d::CCObject, cocos2d::TypeInfo {
    static cocos2d::CCDirector* sharedDirector() = imac 0x46f500, m1 0x3de6d0, ios 0x178534;

    // float getActualDeltaTime() const;
    // double getAnimationInterval();
    float getContentScaleFactor(); // ios 0x179bdc
    cocos2d::CCDirectorDelegate* getDelegate() const;
    // bool getDontCallWillSwitch() const;
    void getFPSImageData(unsigned char**, unsigned int*);
    // bool getIsTransitioning() const;
    // cocos2d::TextureQuality getLoadedTextureQuality() const;
    // cocos2d::CCScene* getNextScene();
    cocos2d::CCNode* getNotificationNode() = m1 0x3e07cc, imac 0x471a60;
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
    cocos2d::CCPoint getVisibleOrigin() = m1 0x3dfef4, imac 0x471100, ios inline {
        return m_pobOpenGLView ? m_pobOpenGLView->getVisibleOrigin() : cocos2d::CCPoint { 0.f, 0.f };
    }
    cocos2d::CCSize getVisibleSize() = m1 0x3dfed0, imac 0x4710c0, ios inline {
        return m_pobOpenGLView ? m_pobOpenGLView->getVisibleSize() : cocos2d::CCSize { 0.f, 0.f };
    }
    cocos2d::CCSize getWinSize() = imac 0x470920, m1 0x3df874, ios 0x1791c4;
    cocos2d::CCSize getWinSizeInPixels() = imac 0x471080, m1 0x3dfeb4, ios 0x1794e0;
    float getZEye();
    //getScreenTop = ios 0x18260c, idk if i should add the function
    //getScreenBottom() = ios 0x182614
    //getScreenLeft() = ios 0x18261C

    // void setActualDeltaTime(float);
    void setAlphaBlending(bool);
    void setContentScaleFactor(float);
    void setDefaultValues() = imac 0x46f8f0, m1 0x3dea54;
    void setDelegate(cocos2d::CCDirectorDelegate*);
    void setDeltaTime(float);
    void setDepthTest(bool) = m1 0x3ded0c, imac 0x46fc40, ios 0x178abc;
    // void setDisplayStats(bool);
    // void setDontCallWillSwitch(bool);
    void setGLDefaultValues() = m1 0x3decac, imac 0x46fbd0, ios 0x178a70;
    void setNextDeltaTimeZero(bool);
    void setNextScene() = m1 0x3df328, imac 0x470340, ios 0x178d8c;
    void setNotificationNode(cocos2d::CCNode*) = m1 0x3e07d4, imac 0x471a70;
    void setOpenGLView(cocos2d::CCEGLView*);
    void setProjection(cocos2d::ccDirectorProjection) = imac 0x46fc80, m1 0x3ded3c, ios 0x178aec;
    // void setSceneReference(cocos2d::CCScene*);
    // void setSmoothFix(bool);
    // void setSmoothFixCheck(bool);
    void setViewport() = imac 0x470d60, m1 0x3dfc30, ios 0x179380;

    // CCDirector(cocos2d::CCDirector const&);
    CCDirector() = m1 0x3de790, imac 0x46f5d0, ios 0x1785a4;
    virtual ~CCDirector() = m1 0x3deb9c, imac 0x46fa50, ios 0x17895c;
    void applySmoothFix();
    void calculateDeltaTime() = m1 0x3df20c, imac 0x470210;
    void calculateMPF() = m1 0x3df594, imac 0x4705f0;
    void checkSceneReference();
    cocos2d::CCPoint convertToGL(cocos2d::CCPoint const&) = imac 0x470e50, m1 0x3dfd04, ios 0x1793d8;
    cocos2d::CCPoint convertToUI(cocos2d::CCPoint const&) = m1 0x3dfde0, imac 0x470f70, ios inline {
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
    void drawScene() = m1 0x3deef0, imac 0x46fe90, ios 0x178c64;
    void end() = m1 0x3e02dc, imac 0x4714b0, ios 0x179760;
    // bool isDisplayStats();
    // bool isNextDeltaTimeZero();
    // bool isPaused();
    // bool isSendCleanupToScene();
    int levelForSceneInStack(cocos2d::CCScene*);
    void pause() = m1 0x3e066c, imac 0x4718c0, ios 0x179a84;
    void popScene() = imac 0x471430, m1 0x3e025c, ios 0x1796e8;
    bool popSceneWithTransition(float, cocos2d::PopTransition) = imac 0x4714c0, m1 0x3e02e8, ios 0x17976c;
    void popToRootScene() = imac 0x4715a0, m1 0x3e03b8, ios 0x17983c;
    void popToSceneInStack(cocos2d::CCScene*) = imac 0x471720, m1 0x3e0514, ios 0x17992c;
    void popToSceneStackLevel(int) = imac 0x4715b0, m1 0x3e03c0, ios 0x179844;
    void purgeCachedData();
    void purgeDirector() = m1 0x3e0564, imac 0x471780, ios 0x17997c;
    bool pushScene(cocos2d::CCScene*) = imac 0x471230, m1 0x3e0034, ios 0x179580;
    void removeStatsLabel() = imac 0x471990, m1 0x3e0734;
    bool replaceScene(cocos2d::CCScene*) = imac 0x4712e0, m1 0x3e00fc, ios 0x179608;
    void resetSmoothFixCounter() = m1 0x3df678, imac 0x4706e0, ios 0x178ff4;
    void reshapeProjection(cocos2d::CCSize const&);
    void resume() = m1 0x3e06bc, imac 0x471910, ios 0x179ac8;
    void runWithScene(cocos2d::CCScene*) = m1 0x3dff70, imac 0x471190, ios 0x179554;
    int sceneCount() = m1 0x3e04c0, imac 0x4716b0, ios 0x179924;
    void setupScreenScale(cocos2d::CCSize, cocos2d::CCSize, cocos2d::TextureQuality);
    void showFPSLabel() = imac 0x470510, m1 0x3df4dc;
    void showStats() = m1 0x3df444, imac 0x470470;
    void toggleShowFPS(bool, gd::string, cocos2d::CCPoint) = imac 0x470800, m1 0x3df778, ios 0x1790c8;
    void updateContentScale(cocos2d::TextureQuality) = imac 0x470c00, m1 0x3dfb18, ios 0x1792dc;
    void updateScreenScale(cocos2d::CCSize);
    void willSwitchToScene(cocos2d::CCScene*) = imac 0x471140, m1 0x3dff18, ios 0x1794fc;

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
    static cocos2d::CCNodeRGBA* create() = m1 0x20ed04, imac 0x2630c0, ios inline {
    	auto pRet = new cocos2d::CCNodeRGBA();

    	if (pRet->init()) {
    		pRet->autorelease();
    		return pRet;
    	}

    	delete pRet;
    	return nullptr;
    }

    // CCNodeRGBA(cocos2d::CCNodeRGBA const&);
    CCNodeRGBA() = imac 0x262fc0, m1 0x20ec74, ios 0x23ce40;
    virtual ~CCNodeRGBA() = imac 0x263060, m1 0x20ecd4, ios 0x23ce70;

    virtual bool init() = imac 0x2630a0, m1 0x20ecf0, ios 0x23ce8c;

    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x20f0b0, imac 0x2634b0, ios 0x23d064;
    virtual cocos2d::ccColor3B const& getColor() = m1 0x20f090, imac 0x263470, ios 0x23d044;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = m1 0x20f0a0, imac 0x263490, ios 0x23d054;
    virtual unsigned char getDisplayedOpacity() = m1 0x20ed78, imac 0x263150, ios 0x23ceb0;
    virtual unsigned char getOpacity() = m1 0x20ed68, imac 0x263130, ios 0x23cea0;
    virtual void setOpacity(unsigned char) = m1 0x20ed88, imac 0x263170, ios 0x23cec0;
    virtual bool isCascadeColorEnabled() = m1 0x20f348, imac 0x263840, ios 0x23d234;
    virtual void setCascadeColorEnabled(bool) = m1 0x20f358, imac 0x263860, ios 0x23d244;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = m1 0x20f23c, imac 0x263620, ios 0x23d134;
    virtual bool isCascadeOpacityEnabled() = m1 0x20f070, imac 0x263430, ios 0x23d024;
    virtual void setCascadeOpacityEnabled(bool) = m1 0x20f080, imac 0x263450, ios 0x23d034;
    virtual void updateDisplayedOpacity(unsigned char) = m1 0x20eee0, imac 0x2632b0, ios 0x23cf60;

    uint8_t _displayedOpacity;
    uint8_t _realOpacity;
    cocos2d::ccColor3B _displayedColor;
    cocos2d::ccColor3B _realColor;
    bool _cascadeColorEnabled;
    bool _cascadeOpacityEnabled;
}

[[link(win, android)]]
class cocos2d::CCSequence : cocos2d::CCActionInterval {
    static cocos2d::CCSequence* create(cocos2d::CCArray*) = imac 0x3a2980, m1 0x32f72c, ios 0x18db38;
    // static cocos2d::CCSequence* create(cocos2d::CCFiniteTimeAction*, ...) = imac 0x3a2600, m1 0x33d1fc, ios 0x18da90;
    static cocos2d::CCSequence* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3a24d0, m1 0x32f3e4, ios 0x18d99c;
    static cocos2d::CCSequence* createWithVariableList(cocos2d::CCFiniteTimeAction*, va_list) = imac 0x3a26b0, m1 0x32f52c, ios 0x18dab8;

    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = imac 0x3a25a0, m1 0x32f4a0, ios 0x18da2c;

    // CCSequence(cocos2d::CCSequence const&);
    // CCSequence();
    virtual ~CCSequence() = m1 0x32fa6c, imac 0x3a2d20, ios 0x18dcc8;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x32f938, imac 0x3a2bd0, ios 0x18dbd4;
    virtual void update(float) = imac 0x3a2e80, m1 0x32fbd0, ios 0x18ddb0;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x32fb48, imac 0x3a2e10, ios 0x18dd28;
    virtual void stop() = imac 0x3a2e50, m1 0x32fb90, ios 0x18dd70;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a3020, m1 0x32fd74, ios 0x18df14;
}

[[link(win, android)]]
class cocos2d::CCSprite : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    static cocos2d::CCSprite* create(char const*) = imac 0x276440, m1 0x2210dc, ios 0x2374c8;
    static cocos2d::CCSprite* create(char const*, cocos2d::CCRect const&) = imac 0x276530, m1 0x2211cc;
    static cocos2d::CCSprite* create() = imac 0x276760, m1 0x2213ec, ios 0x2375ec;
    static cocos2d::CCSprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*) = imac 0x276630, m1 0x2212d0, ios 0x237544;
    static cocos2d::CCSprite* createWithSpriteFrameName(char const*) = m1 0x2213c4, imac 0x276730, ios 0x2375c4;
    static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*) = imac 0x2761b0, m1 0x220e60, ios 0x2373bc;
    static cocos2d::CCSprite* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&) = imac 0x276340, m1 0x220fd8, ios 0x23743c;

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
    void setFlipX(bool) = imac 0x278420, m1 0x222e04, ios 0x238ea0;
    void setFlipY(bool) = imac 0x278470, m1 0x222e38, ios 0x238ed4;
    // void setTextureAtlas(cocos2d::CCTextureAtlas*);
    // void setTlVertexMod(float);
    // void setTrVertexMod(float);
    // void setUseVertexMod(bool);

    // CCSprite(cocos2d::CCSprite const&);
    CCSprite() = imac 0x276c00, m1 0x221864, ios 0x2379f0;
    virtual ~CCSprite() = imac 0x276ca0, m1 0x2218ec, ios 0x237a78;
    bool isFlipX() = m1 0x222e30, imac 0x278460, ios 0x238ecc;
    bool isFlipY() = m1 0x222e64, imac 0x2784b0, ios 0x238f00;
    // bool isTextureRectRotated();
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
    virtual void setChildColor(cocos2d::ccColor3B const&) = m1 0x223190, imac 0x2789b0, ios 0x239150;
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
    virtual void setColor(cocos2d::ccColor3B const&) = imac 0x278830, m1 0x2230c8, ios 0x2390e4;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = m1 0x22327c, imac 0x278bc0, ios 0x239234;
    virtual void setOpacityModifyRGB(bool) = imac 0x278a50, m1 0x223234, ios 0x2391ec;
    virtual bool isOpacityModifyRGB() = m1 0x22326c, imac 0x278ba0, ios 0x239224;

    virtual void setTexture(cocos2d::CCTexture2D*) = imac 0x279250, m1 0x223640, ios 0x2395e8;
    virtual cocos2d::CCTexture2D* getTexture() = m1 0x223780, imac 0x2793c0, ios 0x239728;

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
    CCLabelBMFont() = imac 0x5c0350, m1 0x4f5d58, ios 0x2fb2e8;

    static cocos2d::CCLabelBMFont* create(char const*, char const*) = imac 0x5bfed0, m1 0x4f58bc, ios 0x2faee0;
    static cocos2d::CCLabelBMFont* create(char const* str, char const* fntFile, float width) = m1 0x4f57fc, imac 0x5bfe20, ios inline {
        return cocos2d::CCLabelBMFont::create(str, fntFile, width, kCCTextAlignmentLeft, CCPointZero);
    }
    static cocos2d::CCLabelBMFont* create(char const* str, char const* fntFile, float width, cocos2d::CCTextAlignment alignment) = imac 0x5bfcd0, m1 0x4f5678, ios inline {
        return cocos2d::CCLabelBMFont::create(str, fntFile, width, alignment, CCPointZero);
    }
    static cocos2d::CCLabelBMFont* create(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = imac 0x5bfd80, m1 0x4f573c, ios 0x2fae20;
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
    static cocos2d::CCLabelBMFont* createBatched(char const*, char const*, cocos2d::CCArray*, int) = imac 0x5c0250, m1 0x4f5c40, ios 0x2fb1d0;
    static void purgeCachedData() = m1 0x4f55bc, imac 0x5bfc20, ios 0x2fae1c;

    bool initWithString(char const*, char const*, float, cocos2d::CCTextAlignment, cocos2d::CCPoint) = imac 0x5bff80, m1 0x4f5984, ios 0x2faf30;

    cocos2d::CCBMFontConfiguration* getConfiguration() const;
    // int getExtraKerning() const;
    char const* getFntFile() = imac 0x5c3320, m1 0x4f8678, ios inline {
        return m_sFntFile.c_str();
    }
    // bool getIsBatched() const;
    float getLetterPosXLeft(cocos2d::CCSprite*, float, bool) = m1 0x4f83a8, imac 0x5c3030, ios 0x2fce78;
    float getLetterPosXRight(cocos2d::CCSprite*, float, bool) = m1 0x4f844c, imac 0x5c30e0, ios 0x2fcf1c;
    // cocos2d::CCArray* getTargetArray() const;

    // void setExtraKerning(int);
    void setFntFile(char const* filename) = imac 0x5c3240, m1 0x4f85a4, ios inline {
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
    void createFontChars() = imac 0x5c06b0, m1 0x4f6020, ios 0x2fb578;
    int kerningAmountForFirst(unsigned short, unsigned short) = m1 0x4f5f00, imac 0x5c0590, ios 0x2fb460;
    void limitLabelWidth(float, float, float) = imac 0x5c3360, m1 0x4f869c, ios 0x2fd074;

    virtual ~CCLabelBMFont() = imac 0x5c0480, m1 0x4f5e34, ios 0x2fb3ac;
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

    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x4f6ac4, imac 0x5c12e0, ios 0x2fbe60;
    virtual cocos2d::ccColor3B const& getColor() = m1 0x4f6aa4, imac 0x5c12a0, ios 0x2fbe40;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = m1 0x4f6ab4, imac 0x5c12c0, ios 0x2fbe50;
    virtual unsigned char getDisplayedOpacity() = m1 0x4f6c60, imac 0x5c1470, ios 0x2fbf40;
    virtual unsigned char getOpacity() = m1 0x4f6c50, imac 0x5c1450, ios 0x2fbf30;
    virtual void setOpacity(unsigned char) = m1 0x4f6c70, imac 0x5c1490, ios 0x2fbf50;
    virtual void setOpacityModifyRGB(bool) = imac 0x5c15d0, m1 0x4f6dc8, ios 0x2fbff0;
    virtual bool isOpacityModifyRGB() = m1 0x4f6f28, imac 0x5c1730, ios 0x2fc0a0;
    virtual bool isCascadeColorEnabled() = m1 0x4f71e4, imac 0x5c19f0, ios 0x2fc20c;
    virtual void setCascadeColorEnabled(bool) = m1 0x4f71f4, imac 0x5c1a10, ios 0x2fc21c;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = imac 0x5c1850, m1 0x4f7050, ios 0x2fc140;
    virtual bool isCascadeOpacityEnabled() = m1 0x4f7204, imac 0x5c1a30, ios 0x2fc22c;
    virtual void setCascadeOpacityEnabled(bool) = m1 0x4f7214, imac 0x5c1a50, ios 0x2fc23c;
    virtual void updateDisplayedOpacity(unsigned char) = imac 0x5c1750, m1 0x4f6f38, ios 0x2fc0b0;

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
	static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize) = m1 0x336634, imac 0x3aa5f0, ios inline {
        return CCLabelTTF::create(string, fontName, fontSize,
            CCSizeZero, kCCTextAlignmentCenter, kCCVerticalTextAlignmentTop);
    }
	static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment hAlignment) = m1 0x336790, imac 0x3aa770, ios inline {
        return CCLabelTTF::create(string, fontName, fontSize, dimensions, hAlignment, kCCVerticalTextAlignmentTop);
    }
	static cocos2d::CCLabelTTF* create(char const* string, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment hAlignment, cocos2d::CCVerticalTextAlignment vAlignment) = m1 0x336648, imac 0x3aa610, ios inline {
        CCLabelTTF *pRet = new CCLabelTTF();
        if(pRet && pRet->initWithString(string, fontName, fontSize, dimensions, hAlignment, vAlignment))
        {
            pRet->autorelease();
            return pRet;
        }
        CC_SAFE_DELETE(pRet);
        return NULL;
    }
	static cocos2d::CCLabelTTF* create() = m1 0x336520, imac 0x3aa4d0, ios inline {
        auto ret = new CCLabelTTF();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
	static cocos2d::CCLabelTTF* createWithFontDefinition(char const*, cocos2d::ccFontDefinition&) = m1 0x336904, imac 0x3aa900, ios inline {
        auto ret = new CCLabelTTF();
        if (ret->initWithStringAndTextDefinition(p0, p1)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

	bool initWithString(char const* label, char const* fontName, float fontSize) = m1 0x336b18, imac 0x3aab10, ios 0x72828;
	bool initWithString(char const* label, char const* fontName, float fontSize, cocos2d::CCSize const& dimensions, cocos2d::CCTextAlignment alignment) = m1 0x336b2c, imac 0x3aab30, ios inline {
        return this->initWithString(label, fontName, fontSize, dimensions, alignment, kCCVerticalTextAlignmentTop);
    }
	bool initWithString(char const*, char const*, float, cocos2d::CCSize const&, cocos2d::CCTextAlignment, cocos2d::CCVerticalTextAlignment) = m1 0x336798, imac 0x3aa780, ios 0x7270c;
	bool initWithStringAndTextDefinition(char const*, cocos2d::ccFontDefinition&) = m1 0x336a6c, imac 0x3aaa70, ios inline {
        if (!CCSprite::init()) return false;
        this->setShaderProgram(CCShaderCache::sharedShaderCache()->programForKey(kCCShader_PositionTextureColor));
        _updateWithTextDefinition(p1, false);
        this->setString(p0);
        return true;
    }

	// cocos2d::CCSize getDimensions();
	char const* getFontName() = m1 0x336f98, imac 0x3ab060, ios inline {
        return m_pFontName->c_str();
    }
	// float getFontSize();
	// cocos2d::CCTextAlignment getHorizontalAlignment();
	cocos2d::ccFontDefinition* getTextDefinition() = m1 0x337110, imac 0x3ab240, ios inline {
        auto definition = new ccFontDefinition();
        *definition = _prepareTextDefinition(false);
        return definition;
    }
	// cocos2d::CCVerticalTextAlignment getVerticalAlignment();

	// void setDimensions(cocos2d::CCSize const&);
	void setFontFillColor(cocos2d::ccColor3B const&, bool) = m1 0x3370fc, imac 0x3ab210, ios inline {
        if (m_textFillColor.r != p0.r || m_textFillColor.g != p0.g || m_textFillColor.b != p0.b) {
            m_textFillColor = p0;
            if (p1) this->updateTexture();
        }
    }
	void setFontName(char const*) = m1 0x336fb0, imac 0x3ab080, ios inline {
        if (m_pFontName->compare(p0)) {
            delete m_pFontName;
            m_pFontName = new std::string(p0);
            if (m_string.size() > 0) this->updateTexture();
        }
    }
	// void setFontSize(float);
	// void setHorizontalAlignment(cocos2d::CCTextAlignment);
	void setTextDefinition(cocos2d::ccFontDefinition*) = m1 0x337100, imac 0x3ab220, ios inline {
        if (p0) _updateWithTextDefinition(*p0, true);
    }
	// void setVerticalAlignment(cocos2d::CCVerticalTextAlignment);

	// CCLabelTTF(cocos2d::CCLabelTTF const&);
	CCLabelTTF() = m1 0x336200, imac 0x3aa150, ios 0x725b4;
    virtual ~CCLabelTTF() = m1 0x336380, imac 0x3aa310, ios 0x7267c;
	cocos2d::ccFontDefinition _prepareTextDefinition(bool) = m1 0x337280, imac 0x3ab390, ios inline {
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
	void _updateWithTextDefinition(cocos2d::ccFontDefinition&, bool) = m1 0x336b34, imac 0x3aab40, ios inline {
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
	char const* description() = m1 0x336e34, imac 0x3aae90, ios inline {
        return CCString::createWithFormat("<CCLabelTTF | FontName = %s, FontSize = %.1f>", m_pFontName->c_str(), m_fFontSize)->getCString();
    }
	void disableShadow(bool) = m1 0x3370f0, imac 0x3ab1e0, ios inline {
        if (m_shadowEnabled) {
            m_shadowEnabled = false;
            if (p0) this->updateTexture();
        }
    }
	void disableStroke(bool) = m1 0x3370f8, imac 0x3ab200, ios inline {
        if (m_strokeEnabled) {
            m_strokeEnabled = false;
            if (p0) this->updateTexture();
        }
    }
	void enableShadow(cocos2d::CCSize const&, float, float, bool) = m1 0x3370ec, imac 0x3ab1d0, ios inline {
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
	void enableStroke(cocos2d::ccColor3B const&, float, bool) = m1 0x3370f4, imac 0x3ab1f0, ios inline {
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
	bool updateTexture() = m1 0x336c44, imac 0x3aac60, ios 0x72894;

	virtual bool init() = m1 0x336af0, imac 0x3aaae0, ios 0x72800;

	virtual void setString(char const*) = m1 0x336bec, imac 0x3aac10, ios 0x7283c;
	virtual char const* getString() = m1 0x336dfc, imac 0x3aae40, ios 0x729a4;
}

[[link(win, android)]]
class cocos2d::CCActionManager : cocos2d::CCObject {
    CCActionManager() = m1 0x1d472c, imac 0x2217c0, ios 0x2f3ec8;
    virtual ~CCActionManager() = m1 0x1d4754, imac 0x2217f0, ios 0x2f3ef0;

    virtual void update(float) = m1 0x1d59d8, imac 0x2228a0, ios 0x2f4cdc;

    void addAction(cocos2d::CCAction*, cocos2d::CCNode*, bool) = m1 0x1d4dfc, imac 0x221dd0, ios 0x2f4378;
    void removeAllActions() = m1 0x1d47a0, imac 0x221840, ios inline {
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
    void removeAllActionsFromTarget(cocos2d::CCObject*) = m1 0x1d5274, imac 0x222210, ios 0x2f47b8;
    void removeAction(cocos2d::CCAction*) = m1 0x1d53f8, imac 0x222370, ios 0x2f493c;
    void removeActionByTag(unsigned int, cocos2d::CCObject*) = m1 0x1d55ac, imac 0x2224f0, ios 0x2f4a70;
    cocos2d::CCAction* getActionByTag(unsigned int, cocos2d::CCObject*) = m1 0x1d5798, imac 0x222690, ios 0x2f4bb0;
    void pauseTarget(cocos2d::CCObject*) = imac 0x221b10, m1 0x1d4aec, ios 0x2f4184;
    void resumeTarget(cocos2d::CCObject*) = m1 0x1d4be8, imac 0x221bf0, ios 0x2f4280;
    cocos2d::CCSet* pauseAllRunningActions() = m1 0x1d4ce0, imac 0x221cd0, ios inline {
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
    void resumeTargets(cocos2d::CCSet*) = m1 0x1d4d68, imac 0x221d40, ios inline {
        for (auto it = p0->begin(); it != p0->end(); ++it) {
            this->resumeTarget(*it);
        }
    }
    unsigned int numberOfRunningActionsInTarget(cocos2d::CCObject* target) = m1 0x1d58cc, imac 0x2227b0, ios inline {
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

    void removeActionAtIndex(unsigned int, cocos2d::_hashElement*) = m1 0x1d4a08, imac 0x221a80, ios 0x2f40c8;
    void deleteHashElement(cocos2d::_hashElement*) = m1 0x1d4874, imac 0x221930, ios 0x2f3f54;
    void actionAllocWithHashElement(cocos2d::_hashElement*) = m1 0x1d49c0, imac 0x221a40, ios 0x2f4080;
}

[[link(win, android)]]
class cocos2d::CCAnimate : cocos2d::CCActionInterval {
    static cocos2d::CCAnimate* create(cocos2d::CCAnimation*) = imac 0x3a90d0, m1 0x335390, ios 0x1908e8;

    bool initWithAnimation(cocos2d::CCAnimation*) = m1 0x3354a0, imac 0x3a9210, ios 0x190940;

    // cocos2d::CCAnimation* getAnimation() const;
    // bool getRecenterChildren() const;
    // bool getRecenterFrames() const;

    // void setAnimation(cocos2d::CCAnimation*);
    // void setRecenterChildren(bool);
    // void setRecenterFrames(bool);

    // CCAnimate(cocos2d::CCAnimate const&);
    CCAnimate() = m1 0x335908, imac 0x3a9790, ios 0x190c9c;
    virtual ~CCAnimate() = m1 0x335974, imac 0x3a9810, ios 0x190d08;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a9660, m1 0x3357f8, ios 0x190be4;
    virtual void update(float) = imac 0x3a9960, m1 0x335aa4, ios 0x190e38;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3359f8, imac 0x3a98b0, ios 0x190d8c;
    virtual void stop() = imac 0x3a9920, m1 0x335a60, ios 0x190df4;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a9ba0, m1 0x335ca8, ios 0x191034;

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
    static cocos2d::CCAnimation* create(cocos2d::CCArray*, float, unsigned int) = m1 0x22e300, imac 0x284c00;
    static cocos2d::CCAnimation* create() = m1 0x22dffc, imac 0x2848d0;
    static cocos2d::CCAnimation* createWithSpriteFrames(cocos2d::CCArray*, float) = m1 0x22e128, m1 0x22e128, imac 0x284a00, ios 0x1a73f4;

    bool init() = m1 0x22e0cc, imac 0x2849b0;
    bool initWithAnimationFrames(cocos2d::CCArray*, float, unsigned int) = m1 0x22e3fc, imac 0x284d00;
    bool initWithSpriteFrames(cocos2d::CCArray*, float) = m1 0x22e1b0, imac 0x284a90;

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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x285040, m1 0x22e720, ios 0x1a7710;
    virtual float getDuration() = imac 0x285030, m1 0x22e714, ios 0x1a7704;
}

[[link(win, android)]]
class cocos2d::CCAnimationCache : cocos2d::CCObject {
    static cocos2d::CCAnimationCache* sharedAnimationCache() = m1 0x3cb55c, imac 0x45a5d0, ios 0x1d4ed8;
    static void purgeSharedAnimationCache() = m1 0x3cb66c, imac 0x45a6e0, ios 0x1d4f88;

    bool init() = m1 0x3cb624, imac 0x45a6a0, ios 0x1d4f40;

    [[since("4.2.1")]]
    CCAnimationCache() = m1 0x3cb698, imac 0x45a710, ios inline {
        m_pAnimations = nullptr;
    }
    [[since("4.2.1")]]
    virtual ~CCAnimationCache() = m1 0x3cb6bc, imac 0x45a740, ios 0x1d4fb4;

    void addAnimation(cocos2d::CCAnimation*, const char*) = m1 0x3cb774, imac 0x45a800, ios 0x1d5008;
    void addAnimationsWithDictionary(cocos2d::CCDictionary*, const char*) = m1 0x3cc124, imac 0x45b1b0;
    void addAnimationsWithFile(const char*) = m1 0x3cc37c, imac 0x45b3d0;
    cocos2d::CCAnimation* animationByName(const char*) = m1 0x3cb988, imac 0x45a9f0, ios 0x1d5078;
	void parseVersion1(cocos2d::CCDictionary*) = m1 0x3cba7c, imac 0x45aae0;
	void parseVersion2(cocos2d::CCDictionary*) = m1 0x3cbce8, imac 0x45ad80;
    void removeAnimationByName(const char*) = m1 0x3cb880, imac 0x45a900, ios inline {
        if (p0) m_pAnimations->removeObjectForKey(p0);
    }
}

[[link(win, android)]]
class cocos2d::CCApplication : cocos2d::CCApplicationProtocol {
    static cocos2d::CCApplication* sharedApplication() = imac 0x314fe0, m1 0x2ab200, ios 0x1af428;

    virtual ~CCApplication() = m1 0x2ab124, imac 0x314ee0, ios 0x1af2ec;

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
    virtual void setAnimationInterval(double) = m1 0x2ab1cc, imac 0x314f90, ios 0x1af3fc;
    virtual cocos2d::ccLanguageType getCurrentLanguage() = m1 0x2ab20c, imac 0x314ff0, ios 0x1af448;
    virtual cocos2d::TargetPlatform getTargetPlatform() = m1 0x2ab1f8, imac 0x314fd0, ios 0x1af60c;
    virtual void openURL(char const*) = imac 0x315dc0, m1 0x2aba20, ios 0x1af380;

    PAD = win 0xc8, mac 0x30;
}

[[link(win, android)]]
class cocos2d::CCArray : cocos2d::CCObject {
    // static cocos2d::CCArray* create(cocos2d::CCObject*, ...);
    // static cocos2d::CCArray* create() = ios 0x249214;
    // static cocos2d::CCArray* createWithArray(cocos2d::CCArray*);
    // static cocos2d::CCArray* createWithCapacity(unsigned int);
    static cocos2d::CCArray* createWithContentsOfFile(char const*);
    static cocos2d::CCArray* createWithContentsOfFileThreadSafe(char const*);
    // static cocos2d::CCArray* createWithObject(cocos2d::CCObject*) = ios 0x249270;

    // bool init() = imac 0x7094e0;
    bool initWithArray(cocos2d::CCArray*);
    // bool initWithCapacity(unsigned int);
    bool initWithObject(cocos2d::CCObject*);
    // bool initWithObjects(cocos2d::CCObject*, ...);

    // CCArray(cocos2d::CCArray const&);
    // CCArray(unsigned int);
    // CCArray();
    // void addObject(cocos2d::CCObject*) = ios 0x249394;
    void addObjectNew(cocos2d::CCObject*) = m1 0x6294e0, imac 0x709e70, ios inline {
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
    // void fastRemoveObjectAtIndex(unsigned int) = imac 0x709f10, m1 0x629530;
    void fastRemoveObjectAtIndexChild(unsigned int) = m1 0x629540, imac 0x709f30, ios inline {
        auto last = --data->num;
        data->arr[last]->m_uUnknown = p0;
        CC_SAFE_RELEASE(data->arr[p0]);
        data->arr[p0] = data->arr[last];
    }
    void fastRemoveObjectAtIndexNew(unsigned int) = m1 0x629538, imac 0x709f20, ios inline {
        auto last = --data->num;
        data->arr[last]->m_uIndexInArray = p0;
        CC_SAFE_RELEASE(data->arr[p0]);
        data->arr[p0] = data->arr[last];
    }
    unsigned int indexOfObject(cocos2d::CCObject*) const;
    // void insertObject(cocos2d::CCObject*, unsigned int) = ios 0x2494f4;
    bool isEqualToArray(cocos2d::CCArray*);
    // cocos2d::CCObject* lastObject();
    // cocos2d::CCObject* objectAtIndex(unsigned int) = m1 0x6293a0, imac 0x709d40;
    cocos2d::CCObject* randomObject();
    void recreateNewIndexes() = m1 0x6294d8, imac 0x709e60, ios inline {
        for (int i = 0; i < data->num; i++) {
            data->arr[i]->m_uIndexInArray = i;
        }
    }
    void reduceMemoryFootprint();
    // void removeAllObjects() = ios 0x249528;
    // void removeLastObject(bool);
    void removeObject(cocos2d::CCObject*, bool);
    // void removeObjectAtIndex(unsigned int, bool);
    void removeObjectAtIndexChild(unsigned int, bool) = m1 0x629514, imac 0x709ed0, ios 0x249520;
    void removeObjectsInArray(cocos2d::CCArray*);
    void replaceObjectAtIndex(unsigned int, cocos2d::CCObject*, bool);
    void reverseObjects();
    cocos2d::CCString* stringAtIndex(unsigned int) = m1 0x629390, imac 0x709d20, ios 0x24943c;

    // virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios 0x249634, imac 0x70a140, m1 0x62971c;
    // virtual void acceptVisitor(cocos2d::CCDataVisitor&) = ios 0x2496f8, imac 0x70a240, m1 0x62981c;

    cocos2d::ccArray* data;
}

[[link(win, android)]]
class cocos2d::CCDictionary : cocos2d::CCObject {
    static cocos2d::CCDictionary* create() = m1 0x294464, imac 0x2fc010, ios 0x41c0c4;
    static cocos2d::CCDictionary* createWithContentsOfFile(char const*) = m1 0x294600, imac 0x2fc1a0, ios 0x41c1e0;
    static cocos2d::CCDictionary* createWithContentsOfFileThreadSafe(char const*) = m1 0x2944e8, imac 0x2fc090, ios 0x41c148;
    static cocos2d::CCDictionary* createWithDictionary(cocos2d::CCDictionary*) = m1 0x2944c0, imac 0x2fc070, ios 0x41c120;

    gd::string getFirstKey() = m1 0x292580, imac 0x2f9e70, ios 0x41a7f4;
    
    void setObject(cocos2d::CCObject*, gd::string const&) = imac 0x2fa5f0, m1 0x292d74, ios 0x41ad70;
    void setObject(cocos2d::CCObject*, intptr_t) = imac 0x2faff0, m1 0x2935bc, ios 0x41b528;
    void setObjectUnSafe(cocos2d::CCObject*, gd::string const&) = m1 0x293120, imac 0x2faa20, ios 0x41b098;
    void setObjectUnSafe(cocos2d::CCObject*, intptr_t) = m1 0x293750, imac 0x2fb1a0, ios 0x41b6ac;

    // CCDictionary(cocos2d::CCDictionary const&);
    CCDictionary() = m1 0x292204, imac 0x2f9ab0, ios 0x41a508;
    virtual ~CCDictionary() = m1 0x29222c, imac 0x2f9ae0, ios 0x41a530;
    cocos2d::CCArray* allKeys() = imac 0x2f9d40, m1 0x292450, ios 0x41a6d4;
    cocos2d::CCArray* allKeysForObject(cocos2d::CCObject*) = m1 0x2925e8, imac 0x2f9ed0, ios inline {
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
    char const* charForKey(gd::string const&) = m1 0x292744, imac 0x2fa010, ios inline {
        return this->valueForKey(p0)->getCString();
    }
    unsigned int count() = imac 0x2f9d20, m1 0x292434, ios 0x41a6b8;
    cocos2d::CCObject* objectForKey(gd::string const&) = imac 0x2fa0b0, m1 0x29288c, ios 0x41a8fc;
    cocos2d::CCObject* objectForKey(intptr_t) = imac 0x2fa440, m1 0x292b98, ios 0x41aba8;
    cocos2d::CCObject* randomObject() = m1 0x294340, imac 0x2fbef0, ios inline {
        if (m_eDictType == kCCDictUnknown) return nullptr;
        auto key = this->allKeys()->randomObject();
        if (m_eDictType == kCCDictInt) return this->objectForKey(static_cast<CCInteger*>(key)->getValue());
        else if (m_eDictType == kCCDictStr) return this->objectForKey(static_cast<CCString*>(key)->getCString());
        else return nullptr;
    }
    void removeAllObjects() = m1 0x292260, imac 0x2f9b10, ios 0x41a564;
    void removeObjectForElememt(cocos2d::CCDictElement*) = m1 0x293dbc, imac 0x2fb910, ios 0x41bca0;
    void removeObjectForKey(gd::string const&) = imac 0x2fb510, m1 0x293a98, ios 0x41b9d8;
    void removeObjectForKey(intptr_t) = imac 0x2fba60, m1 0x293f08, ios 0x41bdcc;
    void removeObjectsForKeys(cocos2d::CCArray*) = m1 0x294048, imac 0x2fbba0, ios 0x41bf00;
    cocos2d::CCString const* valueForKey(gd::string const&) = imac 0x2fa030, m1 0x2927ec, ios 0x41a868;
    cocos2d::CCString const* valueForKey(intptr_t) = imac 0x2fa570, m1 0x292cd4, ios 0x41acdc;
    bool writeToFile(char const*) = m1 0x294628, imac 0x2fc1c0, ios inline {
        return CCFileUtils::sharedFileUtils()->writeToFile(this, p0);
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x2fbcf0, m1 0x294174, ios 0x41bfa4;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = m1 0x2945e8, imac 0x2fc180, ios 0x41c1c8;

    cocos2d::CCDictElement* m_pElements;
    int m_eDictType;
}

[[link(win, android)]]
class cocos2d::CCRenderTexture : cocos2d::CCNode {
    static cocos2d::CCRenderTexture* create(int, int) = imac 0x5ddfa0, m1 0x510d58, ios 0x3b8bc8;
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat) = imac 0x5dda60, m1 0x510844, ios 0x3b87c0;
    static cocos2d::CCRenderTexture* create(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = m1 0x510924, imac 0x5ddb30, ios inline {
        auto ret = new CCRenderTexture();
        if (ret->initWithWidthAndHeight(p0, p1, p2, p3)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat) = m1 0x51091c, imac 0x5ddb20, ios inline {
        return this->initWithWidthAndHeight(p0, p1, p2, 0);
    }
    bool initWithWidthAndHeight(int, int, cocos2d::CCTexture2DPixelFormat, unsigned int) = m1 0x510a0c, imac 0x5ddc00, ios 0x3b8888;

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
    CCRenderTexture() = m1 0x510664, imac 0x5dd7c0, ios inline {
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
    virtual ~CCRenderTexture() = m1 0x5106fc, imac 0x5dd880, ios 0x3b86dc;
    void begin() = imac 0x5de080, m1 0x510e4c, ios 0x3b8cac;
    void beginWithClear(float, float, float, float, float, int, unsigned int) = imac 0x5de350, m1 0x5110d8, ios 0x3b8e8c;
    void beginWithClear(float, float, float, float) = imac 0x5de2b0, m1 0x511038, ios 0x3b8e7c;
    void beginWithClear(float, float, float, float, float) = imac 0x5de4f0, m1 0x511220, ios inline {
        this->beginWithClear(p0, p1, p2, p3, p4, 0, GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    }
    void beginWithClear(float, float, float, float, float, int) = m1 0x5112f0, imac 0x5de5d0, ios inline {
        this->beginWithClear(p0, p1, p2, p3, p4, p5, GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);
    }
    void clear(float, float, float, float);
    void clearDepth(float);
    void clearStencil(int);
    void end() = imac 0x5de5e0, m1 0x5112f8, ios 0x3b8fb4;
    // void endToLua();
    bool isAutoDraw() const;
    void listenToBackground(cocos2d::CCObject*);
    void listenToForeground(cocos2d::CCObject*);
    cocos2d::CCImage* newCCImage(bool flipImage) = m1 0x5117a4, imac 0x5deb40, ios inline {
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

    virtual void draw() = imac 0x5de890, m1 0x511588, ios 0x3b908c;
    virtual void visit() = m1 0x5114fc, imac 0x5de800, ios 0x3b9000;
    virtual cocos2d::CCSprite* getSprite() = m1 0x51079c, imac 0x5dd970, ios 0x3b8774;
    virtual void setSprite(cocos2d::CCSprite*) = m1 0x5107a4, imac 0x5dd980, ios 0x3b877c;
}

[[link(win, android)]]
class cocos2d::CCRepeat : cocos2d::CCActionInterval {
    static cocos2d::CCRepeat* create(cocos2d::CCFiniteTimeAction* pAction, unsigned int times) = imac 0x3a3110, m1 0x32fe54, ios inline {
        CCRepeat* pRepeat = new CCRepeat();
        pRepeat->initWithAction(pAction, times);
        pRepeat->autorelease();

        return pRepeat;
    }

    bool initWithAction(cocos2d::CCFiniteTimeAction* pAction, unsigned int times) = m1 0x32ff44, imac 0x3a3210, ios inline {
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
    virtual ~CCRepeat() = m1 0x330134, imac 0x3a3400, ios inline {
        CC_SAFE_RELEASE(m_pInnerAction);
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x32ffdc, imac 0x3a32a0, ios inline {
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
    virtual void update(float dt) = imac 0x3a3540, m1 0x330274, ios inline {
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
    virtual bool isDone() = imac 0x3a3670, m1 0x3303e4, ios inline {
        return m_uTotal == m_uTimes;
    }
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = imac 0x3a34c0, m1 0x3301ec, ios inline {
        m_uTotal = 0;
        m_fNextDt = m_pInnerAction->getDuration()/m_fDuration;
        CCActionInterval::startWithTarget(pTarget);
        m_pInnerAction->startWithTarget(pTarget);
    }
    virtual void stop() = m1 0x330244, imac 0x3a3510, ios inline {
        m_pInnerAction->stop();
        CCActionInterval::stop();
    }
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a3680, m1 0x3303f4, ios inline {
        return CCRepeat::create(m_pInnerAction->reverse(), m_uTimes);
    }
}

[[link(win, android)]]
class cocos2d::CCRepeatForever : cocos2d::CCActionInterval {
    static cocos2d::CCRepeatForever* create(cocos2d::CCActionInterval*) = m1 0x3304dc, imac 0x3a3770, ios 0x18dfb0;

    bool initWithAction(cocos2d::CCActionInterval*) = m1 0x330548, imac 0x3a37e0, ios inline {
        p0->retain();
        m_pInnerAction = p0;
        return true;
    }

    // cocos2d::CCActionInterval* getInnerAction();

    // void setInnerAction(cocos2d::CCActionInterval*);

    // CCRepeatForever(cocos2d::CCRepeatForever const&);
    // CCRepeatForever();
    [[since("4.2.1")]]
    virtual ~CCRepeatForever() = m1 0x330424, imac 0x3a36b0, ios 0x18df5c;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a3800, m1 0x330578, ios 0x18e01c;
    virtual bool isDone() = m1 0x330728, imac 0x3a3990, ios 0x18e1c0;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x330650, imac 0x3a38e0, ios 0x18e0e8;
    virtual void step(float) = imac 0x3a3920, m1 0x330690, ios 0x18e128;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a39a0, m1 0x330730, ios 0x18e1c8;
}

[[link(win, android)]]
class cocos2d::CCBezierBy : cocos2d::CCActionInterval {
    static cocos2d::CCBezierBy* create(float, cocos2d::ccBezierConfig const&) = m1 0x332e24, imac 0x3a66f0, ios 0x18f2f4;

    bool initWithDuration(float, cocos2d::ccBezierConfig const&) = m1 0x332f40, imac 0x3a6830, ios 0x18f3bc;

    // CCBezierBy(cocos2d::CCBezierBy const&);
    // CCBezierBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x332ff4, imac 0x3a68f0, ios 0x18f470;
    virtual void update(float) = m1 0x33314c, imac 0x3a6a80, ios 0x18f580;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x332fa0, imac 0x3a68a0, ios 0x18f41c;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x3332b8, imac 0x3a6c20, ios 0x18f6ec;
}

[[link(win, android)]]
class cocos2d::CCBezierTo : cocos2d::CCBezierBy {
    static cocos2d::CCBezierTo* create(float, cocos2d::ccBezierConfig const&) = m1 0x333390, imac 0x3a6cf0, ios 0x18f7c4;

    bool initWithDuration(float, cocos2d::ccBezierConfig const&) = m1 0x333440, imac 0x3a6dd0, ios 0x18f844;

    // CCBezierTo(cocos2d::CCBezierTo const&);
    // CCBezierTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x3334a0, imac 0x3a6e40, ios 0x18f8a4;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3335a8, imac 0x3a6f70, ios 0x18f96c;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInT : cocos2d::CCTransitionMoveInL {
    static cocos2d::CCTransitionMoveInT* create(float, cocos2d::CCScene*) = imac 0xd6340, m1 0xbe858, ios 0x1cece8;

    // CCTransitionMoveInT(cocos2d::CCTransitionMoveInT const&);
    CCTransitionMoveInT();
    virtual ~CCTransitionMoveInT();

    virtual void initScenes() = m1 0xbe900, imac 0xd63d0, ios 0x1ced80;
}

[[link(win, android)]]
class cocos2d::CCTransitionFade : cocos2d::CCTransitionScene {
    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*) = m1 0xc122c, imac 0xd9090, ios 0x1cee8c;
    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::ccColor3B const&) = m1 0xc1190, imac 0xd8ff0, ios 0x1cedf0;

    // CCTransitionFade(cocos2d::CCTransitionFade const&);
    CCTransitionFade();
    virtual ~CCTransitionFade();

    virtual void onEnter() = imac 0xd9180, m1 0xc1318, ios 0x1cef04;
    virtual void onExit() = imac 0xd92b0, m1 0xc1454, ios 0x1cf008;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xd9160, m1 0xc12f0, ios 0x1ceedc;
    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::ccColor3B const&) = imac 0xd9110, m1 0xc12ac, ios 0x1cee98;
}

[[link(win, android)]]
class cocos2d::CCTransitionRotoZoom : cocos2d::CCTransitionScene {
    static cocos2d::CCTransitionRotoZoom* create(float, cocos2d::CCScene*) = m1 0xbdb68, imac 0xd5550;

    // CCTransitionRotoZoom(cocos2d::CCTransitionRotoZoom const&);
    CCTransitionRotoZoom();
    virtual ~CCTransitionRotoZoom();

    virtual void onEnter() = imac 0xd56c0, m1 0xbdccc;
}

[[link(win, android)]]
class cocos2d::CCTransitionScene : cocos2d::CCScene {
    static cocos2d::CCTransitionScene* create(float, cocos2d::CCScene*);

    void finish();
    void hideOutShowIn();
    void setNewScene(float);

    // CCTransitionScene(cocos2d::CCTransitionScene const&);
    CCTransitionScene();

    virtual ~CCTransitionScene() = imac 0xd4db0, m1 0xbd3dc, ios 0x1ce7a4;

    virtual void onEnter() = imac 0xd5240, m1 0xbd884, ios 0x1ceaf4;
    virtual void onExit() = imac 0xd5290, m1 0xbd8d8, ios 0x1ceb48;
    virtual void cleanup() = imac 0xd52f0, m1 0xbd92c, ios 0x1ceb9c;
    virtual void draw() = imac 0xd4ff0, m1 0xbd638, ios 0x1ce8bc;
    virtual bool initWithDuration(float, cocos2d::CCScene*) = imac 0xd4f20, m1 0xbd540, ios 0x1ce7fc;
    virtual void sceneOrder() = m1 0xbd62c, imac 0xd4fe0, ios 0x1ce8b0;
}

[[link(win, android)]]
class cocos2d::CCTransitionCrossFade : cocos2d::CCTransitionScene {
	static cocos2d::CCTransitionCrossFade* create(float, cocos2d::CCScene*) = m1 0xc15c8, imac 0xd9450;

	// CCTransitionCrossFade(cocos2d::CCTransitionCrossFade const&);
    CCTransitionCrossFade();
    virtual ~CCTransitionCrossFade();

	virtual void onEnter() = m1 0xc166c, imac 0xd94e0;
	virtual void onExit() = m1 0xc19a4, imac 0xd9820;
	virtual void draw() = m1 0xc1668, imac 0xd94d0;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeBL : cocos2d::CCTransitionFadeTR {
	static cocos2d::CCTransitionFadeBL* create(float, cocos2d::CCScene*) = m1 0xc25a4, imac 0xda550;

	// CCTransitionFadeBL(cocos2d::CCTransitionFadeBL const&);
    CCTransitionFadeBL();
    virtual ~CCTransitionFadeBL();

	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = m1 0xc264c, imac 0xda5e0;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeDown : cocos2d::CCTransitionFadeTR {
	static cocos2d::CCTransitionFadeDown* create(float, cocos2d::CCScene*) = m1 0xc2934, imac 0xda950;

	// CCTransitionFadeDown(cocos2d::CCTransitionFadeDown const&);
    CCTransitionFadeDown();
    virtual ~CCTransitionFadeDown();

	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = m1 0xc29dc, imac 0xda9e0;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeTR : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionFadeTR* create(float, cocos2d::CCScene*) = m1 0xc22c8, imac 0xda220;

	// CCTransitionFadeTR(cocos2d::CCTransitionFadeTR const&);
    CCTransitionFadeTR();
    virtual ~CCTransitionFadeTR();

	virtual void onEnter() = m1 0xc2378, imac 0xda2c0;
	virtual void sceneOrder() = m1 0xc2370, imac 0xda2b0;
	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = m1 0xc2474, imac 0xda3c0;

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xc2480, imac 0xda3e0;
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeUp : cocos2d::CCTransitionFadeTR {
	static cocos2d::CCTransitionFadeUp* create(float, cocos2d::CCScene*) = m1 0xc276c, imac 0xda750;

	// CCTransitionFadeUp(cocos2d::CCTransitionFadeUp const&);
    CCTransitionFadeUp();
    virtual ~CCTransitionFadeUp();

	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&) = m1 0xc2814, imac 0xda7e0;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipAngular : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionFlipAngular* create(float, cocos2d::CCScene*) = m1 0xc0448, imac 0xd8150;
	static cocos2d::CCTransitionFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionFlipAngular(cocos2d::CCTransitionFlipAngular const&);
    CCTransitionFlipAngular();
    virtual ~CCTransitionFlipAngular();

	virtual void onEnter() = m1 0xc0234, imac 0xd7f20;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipX : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*) = m1 0xbfd24, imac 0xd7990;
	static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionFlipX(cocos2d::CCTransitionFlipX const&);
    CCTransitionFlipX();
    virtual ~CCTransitionFlipX();

	virtual void onEnter() = m1 0xbfb18, imac 0xd7770;
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipY : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*) = m1 0xc00b4, imac 0xd7d70;
	static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionFlipY(cocos2d::CCTransitionFlipY const&);
    CCTransitionFlipY();
    virtual ~CCTransitionFlipY();

	virtual void onEnter() = m1 0xbfea8, imac 0xd7b40;
}

[[link(win, android)]]
class cocos2d::CCTransitionJumpZoom : cocos2d::CCTransitionScene {
	static cocos2d::CCTransitionJumpZoom* create(float, cocos2d::CCScene*) = m1 0xbdf6c, imac 0xd59a0;

	// CCTransitionJumpZoom(cocos2d::CCTransitionJumpZoom const&);
    CCTransitionJumpZoom();
    virtual ~CCTransitionJumpZoom();

	virtual void onEnter() = m1 0xbe00c, imac 0xd5a20;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInB : cocos2d::CCTransitionMoveInL {
	static cocos2d::CCTransitionMoveInB* create(float, cocos2d::CCScene*) = m1 0xbea6c, imac 0xd6580;

	// CCTransitionMoveInB(cocos2d::CCTransitionMoveInB const&);
    CCTransitionMoveInB();
    virtual ~CCTransitionMoveInB();

	virtual void initScenes() = m1 0xbeb14, imac 0xd6610;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInL : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionMoveInL* create(float, cocos2d::CCScene*) = m1 0xbe300, imac 0xd5d90;

	// CCTransitionMoveInL(cocos2d::CCTransitionMoveInL const&);
    CCTransitionMoveInL();
    virtual ~CCTransitionMoveInL();

	virtual void onEnter() = m1 0xbe3a8, imac 0xd5e20;
	virtual void initScenes() = m1 0xbe4d4, imac 0xd5f50;
	virtual cocos2d::CCActionInterval* action() = m1 0xbe484, imac 0xd5ef0;

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xbe4c4, imac 0xd5f30;
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInR : cocos2d::CCTransitionMoveInL {
	static cocos2d::CCTransitionMoveInR* create(float, cocos2d::CCScene*) = m1 0xbe644, imac 0xd6100;

	// CCTransitionMoveInR(cocos2d::CCTransitionMoveInR const&);
    CCTransitionMoveInR();
    virtual ~CCTransitionMoveInR();

	virtual void initScenes() = m1 0xbe6ec, imac 0xd6190;
}

[[link(win, android)]]
class cocos2d::CCTransitionShrinkGrow : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionShrinkGrow* create(float, cocos2d::CCScene*) = m1 0xbf7cc, imac 0xd73f0;

	// CCTransitionShrinkGrow(cocos2d::CCTransitionShrinkGrow const&);
    CCTransitionShrinkGrow();
    virtual ~CCTransitionShrinkGrow();

	virtual void onEnter() = m1 0xbf874, imac 0xd7480;

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xbf9fc, imac 0xd7600;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInB : cocos2d::CCTransitionSlideInL {
	static cocos2d::CCTransitionSlideInB* create(float, cocos2d::CCScene*) = m1 0xbf540, imac 0xd7130;

	// CCTransitionSlideInB(cocos2d::CCTransitionSlideInB const&);
    CCTransitionSlideInB();
    virtual ~CCTransitionSlideInB();

	virtual void sceneOrder() = m1 0xbf5e8, imac 0xd71c0;
	virtual void initScenes() = m1 0xbf5f4, imac 0xd71d0;
	virtual cocos2d::CCActionInterval* action() = m1 0xbf658, imac 0xd7240;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInL : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionSlideInL* create(float, cocos2d::CCScene*) = m1 0xbee70, imac 0xd69d0;

	// CCTransitionSlideInL(cocos2d::CCTransitionSlideInL const&);
    CCTransitionSlideInL();
    virtual ~CCTransitionSlideInL();

	virtual void onEnter() = m1 0xbec84, imac 0xd67c0;
	virtual void sceneOrder() = m1 0xbed8c, imac 0xd68b0;
	virtual void initScenes() = m1 0xbed94, imac 0xd68c0;
	virtual cocos2d::CCActionInterval* action() = m1 0xbedf8, imac 0xd6930;

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xbee58, imac 0xd6990;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInR : cocos2d::CCTransitionSlideInL {
	static cocos2d::CCTransitionSlideInR* create(float, cocos2d::CCScene*) = m1 0xbf02c, imac 0xd6bb0;

	// CCTransitionSlideInR(cocos2d::CCTransitionSlideInR const&);
    CCTransitionSlideInR();
    virtual ~CCTransitionSlideInR();

	virtual void sceneOrder() = m1 0xbf0d4, imac 0xd6c40;
	virtual void initScenes() = m1 0xbf0e0, imac 0xd6c50;
	virtual cocos2d::CCActionInterval* action() = m1 0xbf140, imac 0xd6cb0;
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInT : cocos2d::CCTransitionSlideInL {
	static cocos2d::CCTransitionSlideInT* create(float, cocos2d::CCScene*) = m1 0xbf2b8, imac 0xd6e70;

	// CCTransitionSlideInT(cocos2d::CCTransitionSlideInT const&);
    CCTransitionSlideInT();
    virtual ~CCTransitionSlideInT();

	virtual void sceneOrder() = m1 0xbf360, imac 0xd6f00;
	virtual void initScenes() = m1 0xbf368, imac 0xd6f10;
	virtual cocos2d::CCActionInterval* action() = m1 0xbf3c8, imac 0xd6f70;
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitCols : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionSplitCols* create(float, cocos2d::CCScene*) = m1 0xc1dfc, imac 0xd9cf0;

	// CCTransitionSplitCols(cocos2d::CCTransitionSplitCols const&);
    CCTransitionSplitCols();
    virtual ~CCTransitionSplitCols();

	virtual void onEnter() = m1 0xc1ea4, imac 0xd9d80;
	virtual cocos2d::CCActionInterval* action() = m1 0xc1fb8, imac 0xd9e70;

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xc1fcc, imac 0xd9e90;
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitRows : cocos2d::CCTransitionSplitCols {
	static cocos2d::CCTransitionSplitRows* create(float, cocos2d::CCScene*) = m1 0xc210c, imac 0xda040;

	// CCTransitionSplitRows(cocos2d::CCTransitionSplitRows const&);
    CCTransitionSplitRows();
    virtual ~CCTransitionSplitRows();

	virtual cocos2d::CCActionInterval* action() = m1 0xc20f8, imac 0xda020;
}

[[link(win, android)]]
class cocos2d::CCTransitionTurnOffTiles : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionTurnOffTiles* create(float, cocos2d::CCScene*) = m1 0xc1b28, imac 0xd99e0;

	// CCTransitionTurnOffTiles(cocos2d::CCTransitionTurnOffTiles const&);
    CCTransitionTurnOffTiles();
    virtual ~CCTransitionTurnOffTiles();

	virtual void onEnter() = m1 0xc1bd8, imac 0xd9a80;
	virtual void sceneOrder() = m1 0xc1bd0, imac 0xd9a70;

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*) = m1 0xc1cd8, imac 0xd9b80;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipAngular : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*) = m1 0xc100c, imac 0xd8e40;
	static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionZoomFlipAngular(cocos2d::CCTransitionZoomFlipAngular const&);
    CCTransitionZoomFlipAngular();
    virtual ~CCTransitionZoomFlipAngular();

	virtual void onEnter() = m1 0xc0d98, imac 0xd8b90;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipX : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*) = m1 0xc0830, imac 0xd8590;
	static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionZoomFlipX(cocos2d::CCTransitionZoomFlipX const&);
    CCTransitionZoomFlipX();
    virtual ~CCTransitionZoomFlipX();

	virtual void onEnter() = m1 0xc05cc, imac 0xd8300;
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipY : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*) = m1 0xc0c18, imac 0xd89e0;
	static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionZoomFlipY(cocos2d::CCTransitionZoomFlipY const&);
    CCTransitionZoomFlipY();
    virtual ~CCTransitionZoomFlipY();

	virtual void onEnter() = m1 0xc09b4, imac 0xd8740;
}

[[link(win, android)]]
class cocos2d::CCTurnOffTiles : cocos2d::CCTiledGrid3DAction {
	static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&) = m1 0x6b3aac, imac 0x7a1760;
	static cocos2d::CCTurnOffTiles* create(float, cocos2d::CCSize const&, unsigned int) = m1 0x6b3b98, imac 0x7a1850;

	// CCTurnOffTiles(cocos2d::CCTurnOffTiles const&);
	// CCTurnOffTiles();
    virtual ~CCTurnOffTiles() = m1 0x6b3de4, imac 0x7a1aa0;

	void shuffle(unsigned int*, unsigned int) = m1 0x6b3e9c, imac 0x7a1b60;
	void turnOffTile(cocos2d::CCPoint const&) = m1 0x6b3f38, imac 0x7a1bf0;
	void turnOnTile(cocos2d::CCPoint const&) = m1 0x6b3ef8, imac 0x7a1bb0;

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b3cc4, imac 0x7a1970;
	virtual void update(float) = m1 0x6b4068, imac 0x7a1d30;
	virtual void startWithTarget(cocos2d::CCNode*) = m1 0x6b3f64, imac 0x7a1c20;
	virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int) = m1 0x6b3c94, imac 0x7a1940;
}

[[link(win, android)]]
class cocos2d::CCBlink : cocos2d::CCActionInterval {
    static cocos2d::CCBlink* create(float, unsigned int) = imac 0x3a7800, m1 0x333d14, ios 0x18fd00;

    bool initWithDuration(float, unsigned int) = m1 0x333dac, imac 0x3a78b0, ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_nTimes = p1;
        return true;
    }

    // CCBlink(cocos2d::CCBlink const&);
    // CCBlink();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a7960, m1 0x333e4c, ios 0x18fe10;
    virtual void update(float) = imac 0x3a7a70, m1 0x333f44, ios 0x18fefc;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x333e08, imac 0x3a7920, ios 0x18fdcc;
    virtual void stop() = imac 0x3a78f0, m1 0x333dd4, ios 0x18fd98;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a7af0, m1 0x333fcc, ios 0x18ff84;
}

[[link(win, android)]]
class cocos2d::CCHide : cocos2d::CCActionInstant {
    static cocos2d::CCHide* create() = m1 0x6a9994, imac 0x796870, ios 0x1b0f4c;

    // CCHide(cocos2d::CCHide const&);
    // CCHide();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6a9b1c, imac 0x7969e0, ios 0x1b1064;
    virtual void update(float) = m1 0x6a9ab0, imac 0x796970, ios 0x1b104c;
    virtual cocos2d::CCFiniteTimeAction* reverse() = m1 0x6a9ac4, imac 0x796990, ios 0x1b1060;
}

[[link(win, android)]]
class cocos2d::CCShow : cocos2d::CCActionInstant {
    static cocos2d::CCShow* create() = m1 0x6a98d0, imac 0x7967b0, ios 0x1b0edc;

    // CCShow(cocos2d::CCShow const&);
    // CCShow();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6a99ec, imac 0x7968c0, ios 0x1b0fa4;
    virtual void update(float) = m1 0x6a9928, imac 0x796800, ios 0x1b0f34;
    virtual cocos2d::CCFiniteTimeAction* reverse() = m1 0x6a993c, imac 0x796820, ios 0x1b0f48;
}

[[link(win, android)]]
class cocos2d::CCCallFunc : cocos2d::CCActionInstant {
    static cocos2d::CCCallFunc* create(cocos2d::CCObject*, cocos2d::SEL_CallFunc) = imac 0x7972a0, m1 0x6aa418, ios 0x1b110c;

    // CCCallFunc(cocos2d::CCCallFunc const&);
    // CCCallFunc();
    [[since("4.2.1")]]
    virtual ~CCCallFunc() = m1 0x6aa558, imac 0x7973f0, ios 0x1b11f0;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6aa670, imac 0x7974f0, ios 0x1b1264;
    virtual void update(float) = m1 0x6aa77c, imac 0x7975f0, ios 0x1b1364;
    virtual bool initWithTarget(cocos2d::CCObject*) = m1 0x6aa518, imac 0x7973b0, ios 0x1b11b0;
    virtual void execute() = m1 0x6aa788, imac 0x797600, ios 0x1b1370;
}

[[link(win, android)]]
class cocos2d::CCCallFuncN : cocos2d::CCCallFunc, cocos2d::TypeInfo {
    static cocos2d::CCCallFuncN* create(cocos2d::CCObject* pSelectorTarget, cocos2d::SEL_CallFuncN selector) = imac 0x7976c0, m1 0x6aa86c, ios inline {
	CCCallFuncN *pRet = new CCCallFuncN();

        if (pRet && pRet->initWithTarget(pSelectorTarget, selector))
        {
            pRet->autorelease();
            return pRet;
        }

        CC_SAFE_DELETE(pRet);
        return NULL;
    }

    virtual bool initWithTarget(cocos2d::CCObject* pSelectorTarget, cocos2d::SEL_CallFuncN selector) = m1 0x6aa97c, imac 0x7977f0, ios inline {
        if (CCCallFunc::initWithTarget(pSelectorTarget)) {
            m_pCallFuncN = selector;
            return true;
        }

        return false;
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* zone) = m1 0x6aa9d0, imac 0x797840, ios inline {
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
    
    virtual void execute() = m1 0x6aa7f8, imac 0x797660, ios inline {
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
    static cocos2d::CCCallFuncND* create(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*) = m1 0x6aaab0, imac 0x797930, ios inline {
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

    virtual bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*) = m1 0x6aab78, imac 0x797a20, ios inline {
        if (!CCCallFunc::initWithTarget(p0)) return false;
        m_pData = p2;
        m_pCallFuncND = p1;
        return true;
    }
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6aabdc, imac 0x797a90, ios inline {
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
    virtual void execute() = m1 0x6aacd8, imac 0x797bb0, ios inline {
        if (m_pCallFuncND) {
            (m_pSelectorTarget->*m_pCallFuncND)(m_pTarget, m_pData);
        }
    }
}

[[link(win, android)]]
class cocos2d::CCCallFuncO : cocos2d::CCCallFunc, cocos2d::TypeInfo {
    static cocos2d::CCCallFuncO* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*) = imac 0x797da0, m1 0x6aae4c, ios 0x1b1470;

    // cocos2d::CCObject* getObject();

    // void setObject(cocos2d::CCObject*);

    // CCCallFuncO(cocos2d::CCCallFuncO const&);
    CCCallFuncO() = m1 0x6aad48, imac 0x797c50, ios inline {
        m_pObject = nullptr;
    }
    virtual ~CCCallFuncO() = m1 0x6aad80, imac 0x797cb0, ios 0x1b13e0;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x797ef0, m1 0x6aaf78, ios 0x1b157c;
    virtual void execute() = imac 0x797d60, m1 0x6aae18, ios 0x1b143c;
    virtual bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*) = m1 0x6aaf08, imac 0x797e80, ios 0x1b1530;
}

[[link(win, android)]]
class cocos2d::CCClippingNode : cocos2d::CCNode {
    static cocos2d::CCClippingNode* create() = imac 0x708da0, m1 0x628634;
    static cocos2d::CCClippingNode* create(cocos2d::CCNode* stencil) = imac 0x708e30, m1 0x6286bc;

    protected CCClippingNode() = m1 0x628524, imac 0x708c50;
    virtual ~CCClippingNode() = m1 0x62857c, imac 0x708cd0;

    virtual bool init() = m1 0x62875c, imac 0x708ee0;

    virtual bool init(cocos2d::CCNode* pStencil) = m1 0x62876c, imac 0x708f00;
    virtual void onEnter() = m1 0x6287dc, imac 0x708f70;
    virtual void onEnterTransitionDidFinish() = m1 0x628808, imac 0x708fa0;
    virtual void onExit() = m1 0x628864, imac 0x709000;
    virtual void onExitTransitionDidStart() = m1 0x628834, imac 0x708fd0;
    virtual void visit() = imac 0x709030, m1 0x628894;

    cocos2d::CCNode* getStencil() const = m1 0x628bbc, imac 0x709390;
    void setStencil(cocos2d::CCNode* pStencil) = imac 0x7093a0, m1 0x628bc4;

    float getAlphaThreshold() const;
    void setAlphaThreshold(float fAlphaThreshold) = imac 0x7093f0, m1 0x628c10;

    bool isInverted() const;
    void setInverted(bool bInverted) = imac 0x709410, m1 0x628c20;
}

[[link(win, android)]]
class cocos2d::CCDrawNode : cocos2d::CCNodeRGBA {
    static cocos2d::CCDrawNode* create() = imac 0x5f94f0, m1 0x528650, ios 0x45aa0;

    cocos2d::ccBlendFunc getBlendFunc() const = m1 0x52a0fc, imac 0x5fb260, ios 0x46a30;

    void setBlendFunc(cocos2d::ccBlendFunc const&) = imac 0x5fb270, m1 0x52a104, ios 0x46a38;

    // CCDrawNode(cocos2d::CCDrawNode const&);
    CCDrawNode() = m1 0x528418, imac 0x5f9230, ios 0x459a4;
    virtual ~CCDrawNode() = m1 0x528508, imac 0x5f9330, ios 0x45a1c;
    void clear() = imac 0x5fb240, m1 0x52a0ec, ios 0x46a20;
    bool drawCircle(cocos2d::CCPoint const&, float, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&, unsigned int) = imac 0x5fb090, m1 0x529f50, ios 0x46890;
    void drawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::ccColor4F const&) = m1 0x528ed8, imac 0x5f9e80, ios inline {
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
    bool drawDot(cocos2d::CCPoint const& pos, float radius, cocos2d::ccColor4F const& color) = imac 0x5f99d0, m1 0x528ae8, ios inline {
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
    bool drawLines(cocos2d::CCPoint*, unsigned int, float, cocos2d::ccColor4F const&) = imac 0x5fb010, m1 0x529ed0, ios 0x46810;
    bool drawPolygon(cocos2d::CCPoint*, unsigned int, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&) = imac 0x5fa0e0, m1 0x5290cc, ios 0x45dcc;
    void drawPreciseCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int, cocos2d::ccColor4F const&) = imac 0x5f9bb0, m1 0x528ce8, ios inline {
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
    bool drawRect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&) = imac 0x5faee0, m1 0x529d94, ios 0x466e4;
    bool drawRect(cocos2d::CCRect const&, cocos2d::ccColor4F const&, float, cocos2d::ccColor4F const&) = m1 0x529d10, imac 0x5fae60, ios 0x46660;
    bool drawSegment(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float, cocos2d::ccColor4F const&) = imac 0x5fa890, m1 0x5298c0, ios 0x462c0;
    void ensureCapacity(unsigned int) = imac 0x5f95c0, m1 0x528728, ios 0x45b14;
    void listenBackToForeground(cocos2d::CCObject*) = m1 0x52a110, imac 0x5fb280, ios inline {
        this->init();
    }
    void render() = imac 0x5f9770, m1 0x5288b4, ios 0x45c70;

    void disableDrawArea() = m1 0x528a70, imac 0x5f9950, ios 0x45dc4;
    void enableDrawArea(cocos2d::CCRect&) = m1 0x528a10, imac 0x5f98e0, ios 0x45d64;
    [[since("4.11.0")]]
    bool is_circle_on_screen(cocos2d::CCRect const&, cocos2d::CCPoint const&, float) = m1 0x528a78, imac 0x5f9960, ios inline {
        return p1.x + p2 >= m_fMinAreaX && p1.x - p2 <= m_fMaxAreaX && p1.y + p2 >= m_fMinAreaY && p1.y - p2 <= m_fMaxAreaY;
    }
    [[since("4.11.0")]]
    bool is_segment_on_screen(cocos2d::CCRect const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = m1 0x529820, imac 0x5fa7e0, ios 0x46224;

    virtual bool init() = imac 0x5f9610, m1 0x52877c, ios 0x45b68;
    virtual void draw() = m1 0x52893c, imac 0x5f9800, ios 0x45cf8;

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
    static cocos2d::CCSpriteBatchNode* createWithTexture(cocos2d::CCTexture2D*, unsigned int) = m1 0x132d50, imac 0x165920, ios 0x1d7dac;
    static cocos2d::CCSpriteBatchNode* create(char const* fileImage, unsigned int capacity) = m1 0x132f40, imac 0x165b50, ios 0x1d7f4c;

    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int) = imac 0x165a10, m1 0x132e04, ios 0x1d7e30;
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

    CCSpriteBatchNode() = imac 0x165ce0, m1 0x1330c8, ios 0x1d807c;
    virtual ~CCSpriteBatchNode() = imac 0x165d30, m1 0x1330f8, ios 0x1d80ac;

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

    virtual void setBlendFunc(cocos2d::ccBlendFunc) = m1 0x1346c4, imac 0x1675c0, ios 0x1d8bb4;
    virtual cocos2d::ccBlendFunc getBlendFunc() = m1 0x1346d4, imac 0x1675e0, ios 0x1d8bc4;
    virtual cocos2d::CCTexture2D* getTexture() = m1 0x1346e4, imac 0x167600, ios 0x1d8bd4;
    virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x134704, imac 0x167630, ios 0x1d8bf4;

    cocos2d::CCTextureAtlas* m_pobTextureAtlas;
    cocos2d::ccBlendFunc m_blendFunc;
    cocos2d::CCArray* m_pobDescendants;
    bool m_bManualSortChildren;
    bool m_bManualSortAllChildrenDirty;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrame : cocos2d::CCObject {
    static cocos2d::CCSpriteFrame* create(char const* filename, cocos2d::CCRect const& rect) = ios inline, m1 0x2d9348, imac 0x343d10 {
    	CCRect rectInPixels = CC_RECT_POINTS_TO_PIXELS( rect );
    	return create(filename, rect, false, CCPointZero, rectInPixels.size);
    }
    static cocos2d::CCSpriteFrame* create(char const* filename, cocos2d::CCRect const& rect, bool rotated, cocos2d::CCPoint const& offset, cocos2d::CCSize const& size) = m1 0x2d990c, imac 0x344460, ios inline {
        auto ret = new CCSpriteFrame();
        ret->initWithTextureFilename(filename, rect, rotated, offset, size);
        ret->autorelease();
        return ret;
    }
    static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D* pobTexture, cocos2d::CCRect const& rect) = m1 0x2d94f4, imac 0x343f20, ios inline {
        CCSpriteFrame *pSpriteFrame = new CCSpriteFrame();;
        pSpriteFrame->initWithTexture(pobTexture, rect);
        pSpriteFrame->autorelease();
    
        return pSpriteFrame;
    }
    static cocos2d::CCSpriteFrame* createWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = m1 0x2d96a0, imac 0x344130, ios 0x24d078;

    bool initWithTexture(cocos2d::CCTexture2D* pobTexture, cocos2d::CCRect const& rect) = m1 0x2d95e0, imac 0x344040, ios inline {
        CCRect rectInPixels = CC_RECT_POINTS_TO_PIXELS(rect);
        return initWithTexture(pobTexture, rectInPixels, false, CCPointZero, rectInPixels.size);
    }
    bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x344270, m1 0x2d97ac, ios 0x24d17c;
    bool initWithTextureFilename(char const* filename, cocos2d::CCRect const& rect) = m1 0x2d9434, imac 0x343e30, ios inline {
        CCRect rectInPixels = CC_RECT_POINTS_TO_PIXELS( rect );
    	return initWithTextureFilename(filename, rectInPixels, false, CCPointZero, rectInPixels.size);
    }
    bool initWithTextureFilename(char const*, cocos2d::CCRect const&, bool, cocos2d::CCPoint const&, cocos2d::CCSize const&) = imac 0x3445a0, m1 0x2d9a18, ios 0x24d2dc;

    cocos2d::CCPoint const& getOffset() = m1 0x2d9f70, imac 0x344c50, ios 0x24d5e4;
    cocos2d::CCPoint const& getOffsetInPixels() = m1 0x2d9fe4, imac 0x344cf0, ios 0x24d5ec;
    // cocos2d::CCSize const& getOriginalSize();
    // cocos2d::CCSize const& getOriginalSizeInPixels();
    // cocos2d::CCRect const& getRect();
    // cocos2d::CCRect const& getRectInPixels();
    cocos2d::CCTexture2D* getTexture() = imac 0x344d90, m1 0x2da058, ios 0x24d5f4;

    void setOffset(cocos2d::CCPoint const&) = imac 0x344c60, m1 0x2d9f78, ios inline {
        m_obOffset = p0;
        m_obOffsetInPixels = CC_POINT_POINTS_TO_PIXELS(m_obOffset);
    }
    void setOffsetInPixels(cocos2d::CCPoint const&) = imac 0x344d00, m1 0x2d9fec, ios inline {
        m_obOffsetInPixels = p0;
        m_obOffset = CC_POINT_PIXELS_TO_POINTS(m_obOffsetInPixels);
    }
    // void setOriginalSize(cocos2d::CCSize const&);
    // void setOriginalSizeInPixels(cocos2d::CCSize const&);
    void setRect(cocos2d::CCRect const&) = imac 0x344a90, m1 0x2d9e34, ios inline {
        m_obRect = p0;
        m_obRectInPixels = CC_RECT_POINTS_TO_PIXELS(m_obRect);
    }
    void setRectInPixels(cocos2d::CCRect const&) = imac 0x344b70, m1 0x2d9ed0, ios inline {
        m_obRectInPixels = p0;
        m_obRect = CC_RECT_PIXELS_TO_POINTS(p0);
    }
    // void setRotated(bool);
    void setTexture(cocos2d::CCTexture2D*) = imac 0x344a50, m1 0x2d9df0, ios 0x24d5a0;

    // CCSpriteFrame(cocos2d::CCSpriteFrame const&);
    [[since("4.2.1")]]
    virtual ~CCSpriteFrame() = imac 0x3447a0, m1 0x2d9b74, ios 0x24d438;

    // bool isRotated();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3448f0, m1 0x2d9cd8, ios 0x24d4ac;
}

[[link(win, android)]]
class cocos2d::CCSpriteFrameCache : cocos2d::CCObject {
    static cocos2d::CCSpriteFrameCache* sharedSpriteFrameCache() = imac 0x307a40, m1 0x29eb7c, ios 0x3b462c;
    static void purgeSharedSpriteFrameCache();

    bool init();

    // CCSpriteFrameCache();
    // CCSpriteFrameCache(cocos2d::CCSpriteFrameCache const&);
    virtual ~CCSpriteFrameCache();

    void addSpriteFrame(cocos2d::CCSpriteFrame* pobFrame, char const* pszFrameName) = m1 0x29fe38, imac 0x308cb0, ios inline {
        m_pSpriteFrames->setObject(pobFrame, pszFrameName);
    }
    void addSpriteFramesWithDictionary(cocos2d::CCDictionary*, cocos2d::CCTexture2D*) = imac 0x307d30, m1 0x29ee50, ios 0x3b47bc;
    void addSpriteFramesWithFile(char const* plist, char const* textureFilename) = m1 0x29f928, imac 0x3088d0, ios inline {
        if (auto texture = CCTextureCache::sharedTextureCache()->addImage(textureFilename, false)) {
            this->addSpriteFramesWithFile(plist, texture);
        }
    }
    void addSpriteFramesWithFile(char const*) = imac 0x308940, m1 0x29f998, ios 0x3b5070;
    void addSpriteFramesWithFile(char const* plist, cocos2d::CCTexture2D* texture) = m1 0x29f8e0, imac 0x308890, ios inline {
        this->addSpriteFramesWithDictionary(CCContentManager::sharedManager()->addDict(plist, false), texture);
    }
    void removeSpriteFrameByName(char const* name) = m1 0x2a0020, imac 0x308e80, ios inline {
        if (!name) return;
        if (auto key = static_cast<CCString*>(m_pSpriteFramesAliases->objectForKey(name))) {
            m_pSpriteFrames->removeObjectForKey(key->getCString());
            m_pSpriteFramesAliases->removeObjectForKey(name);
        }
        else m_pSpriteFrames->removeObjectForKey(name);
        m_pLoadedFileNames->clear();
    }
    void removeSpriteFrames() = m1 0x29ff44, imac 0x308db0;
    void removeSpriteFramesFromDictionary(cocos2d::CCDictionary*) = m1 0x2a05e4, imac 0x309370, ios 0x3b53e4;
    void removeSpriteFramesFromFile(char const*) = m1 0x2a030c, imac 0x309190, ios 0x3b52d4;
    void removeSpriteFramesFromTexture(cocos2d::CCTexture2D*) = m1 0x2a0830, imac 0x3095d0;
    void removeUnusedSpriteFrames() = m1 0x29ff90, imac 0x308df0;
    cocos2d::CCSpriteFrame* spriteFrameByName(char const*) = imac 0x3098e0, m1 0x2a0b38, ios 0x3b5508;
}

[[link(win, android)]]
class cocos2d::CCString : cocos2d::CCObject {
    static cocos2d::CCString* createWithContentsOfFile(char const*) = m1 0x6a8d88, imac 0x795990, ios 0x268148;
    static cocos2d::CCString* createWithData(unsigned char const*, unsigned long) = imac 0x7956c0, m1 0x6a8b3c, ios 0x26800c;
    // static cocos2d::CCString* createWithFormat(char const*, ...) = ios 0x2680c0, m1 0x6a8cd0;

    char const* getCString() const = imac 0x7950f0, m1 0x6a84a8, ios 0x267ca4;

    bool boolValue() const = imac 0x7954b0, m1 0x6a8838, ios 0x267e58;
    int intValue() const = imac 0x7953c0, m1 0x6a874c, ios 0x267da8;
    float floatValue() const = imac 0x795440, m1 0x6a87bc, ios 0x267dec;
    unsigned int uintValue() const = m1 0x6a8790, imac 0x795410, ios inline {
        if (this->length()) return 0;
        return atoi(m_sString.c_str());
    }
    double doubleValue() const = m1 0x6a880c, imac 0x795480, ios 0x267e2c;
    unsigned int length() const = m1 0x6a8778, imac 0x7953f0, ios 0x267dd4;
    int compare(char const*) const = m1 0x6a88c8, imac 0x795510, ios inline {
        return strcmp(this->getCString(), p0);
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6a88e4, imac 0x795530, ios 0x267ec4;
    virtual bool isEqual(cocos2d::CCObject const*) = m1 0x6a89f0, imac 0x795580, ios 0x267f1c;
    virtual void acceptVisitor(cocos2d::CCDataVisitor&) = m1 0x6a8df0, imac 0x7959f0, ios 0x2681b0;

    gd::string m_sString; 
}

[[link(win, android)]]
class cocos2d::CCMenuItem : cocos2d::CCNodeRGBA {
    virtual ~CCMenuItem() = imac 0x3ab8e0, m1 0x33770c, ios 0x505dc;
    static cocos2d::CCMenuItem* create(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3ab790, m1 0x3375e0;
    static cocos2d::CCMenuItem* create() = imac 0x3ab6d0, m1 0x337538;

    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3ab860, m1 0x33769c;

    // int getScriptTapHandler();

    void setTarget(cocos2d::CCObject* rec, cocos2d::SEL_MenuHandler selector) = ios inline, imac 0x3abb90, m1 0x337958 {
    	m_pListener = rec;
    	m_pfnSelector = selector;
    }

    // CCMenuItem(cocos2d::CCMenuItem const&);
    // CCMenuItem();
    cocos2d::CCRect rect() = m1 0x337934, imac 0x3abb30, ios 0x50740;

    virtual void activate() = imac 0x3abaa0, m1 0x3378a8, ios 0x506b4;
    virtual void selected() = m1 0x337824, imac 0x3aba10, ios 0x50630;
    virtual void unselected() = m1 0x337830, imac 0x3aba20, ios 0x5063c;
    virtual void registerScriptTapHandler(int) = m1 0x337838, imac 0x3aba30, ios 0x50644;
    virtual void unregisterScriptTapHandler() = m1 0x337868, imac 0x3aba60, ios 0x50674;
    virtual bool isEnabled() = m1 0x33792c, imac 0x3abb20, ios 0x50738;
    virtual void setEnabled(bool) = m1 0x337924, imac 0x3abb10, ios 0x50730;
    virtual bool isSelected() = m1 0x337950, imac 0x3abb80, ios 0x5075c;

    bool m_bSelected;
    bool m_bEnabled;
    cocos2d::CCObject* m_pListener;
    cocos2d::SEL_MenuHandler m_pfnSelector;
    int m_nScriptTapHandler;
    float m_fSizeMult;
}

[[link(win, android)]]
class cocos2d::CCMenuItemSprite : cocos2d::CCMenuItem {
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*) = m1 0x338b98, imac 0x3ace20, ios inline {
        return create(p0, p1, p2, nullptr, nullptr);
    }
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = m1 0x338d14, imac 0x3acfb0, ios inline {
        return create(p0, p1, nullptr, p2, p3);
    }
    static cocos2d::CCMenuItemSprite* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = m1 0x338ba8, imac 0x3ace40, ios inline {
        auto ret = new CCMenuItemSprite();
        if (ret->initWithNormalSprite(p0, p1, p2, p3, p4)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool initWithNormalSprite(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = imac 0x3acfd0, m1 0x338d28, ios 0x50998;

    virtual void selected() = imac 0x3ad0c0, m1 0x338e40, ios 0x50ab0;
    virtual void unselected() = imac 0x3ad160, m1 0x338ecc, ios 0x50b3c;
    virtual void setEnabled(bool) = imac 0x3ad1e0, m1 0x338f4c, ios 0x50bbc;
    virtual cocos2d::CCNode* getNormalImage() = m1 0x338964, imac 0x3acc10, ios 0x50764;
    virtual void setNormalImage(cocos2d::CCNode*) = imac 0x3acc20, m1 0x33896c, ios 0x5076c;
    virtual cocos2d::CCNode* getSelectedImage() = m1 0x338a38, imac 0x3acce0, ios 0x50838;
    virtual void setSelectedImage(cocos2d::CCNode*) = imac 0x3accf0, m1 0x338a40, ios 0x50840;
    virtual cocos2d::CCNode* getDisabledImage() = m1 0x338ae8, imac 0x3acd80, ios 0x508e8;
    virtual void setDisabledImage(cocos2d::CCNode*) = imac 0x3acd90, m1 0x338af0, ios 0x508f0;
    virtual void updateImagesVisibility() = imac 0x3ad200, m1 0x338f6c, ios 0x50bdc;

    cocos2d::CCNode* m_pNormalImage;
    cocos2d::CCNode* m_pSelectedImage;
    cocos2d::CCNode* m_pDisabledImage;
}

[[link(win, android)]]
class cocos2d::CCMenuItemImage : cocos2d::CCMenuItemSprite {
    static cocos2d::CCMenuItemImage* create() = m1 0x339058, imac 0x3ad2f0, ios inline {
        auto ret = new CCMenuItemImage();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCMenuItemImage* create(char const*, char const*) = m1 0x3393cc, imac 0x3ad640, ios inline {
        return create(p0, p1, nullptr, nullptr, nullptr);
    }
    static cocos2d::CCMenuItemImage* create(char const*, char const*, char const*) = m1 0x3395ec, imac 0x3ad8a0, ios inline {
        auto ret = new CCMenuItemImage();
        if (ret->initWithNormalImage(p0, p1, p2, nullptr, nullptr)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCMenuItemImage* create(char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = m1 0x339534, imac 0x3ad7d0, ios inline {
        return create(p0, p1, nullptr, p2, p3);
    }
    static cocos2d::CCMenuItemImage* create(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = m1 0x339470, imac 0x3ad6f0, ios inline {
        auto ret = new CCMenuItemImage();
        if (ret->initWithNormalImage(p0, p1, p2, p3, p4)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    bool initWithNormalImage(char const*, char const*, char const*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = m1 0x33927c, imac 0x3ad500, ios 0x50ce8;
    void setNormalSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x339694, imac 0x3ad960, ios inline {
        this->setNormalImage(CCSprite::createWithSpriteFrame(p0));
    }
    void setSelectedSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x3396c8, imac 0x3ad990, ios inline {
        this->setSelectedImage(CCSprite::createWithSpriteFrame(p0));
    }
    void setDisabledSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x3396fc, imac 0x3ad9c0, ios inline {
        this->setDisabledImage(CCSprite::createWithSpriteFrame(p0));
    }

    virtual bool init() = m1 0x339194, imac 0x3ad430, ios 0x50cb8;
}

[[link(win, android)]]
class cocos2d::CCMenu : cocos2d::CCLayerRGBA {
    // static cocos2d::CCMenu* create(cocos2d::CCMenuItem*, ...) = ios 0x1d8d28, m1 0x6a6d58, imac 0x79e7b0;
    static cocos2d::CCMenu* create() = imac 0x77c950, m1 0x691950, ios 0x1d8d04;
    static cocos2d::CCMenu* createWithArray(cocos2d::CCArray*) = imac 0x77cb50, m1 0x691aa8, ios 0x1d8db0;
    static cocos2d::CCMenu* createWithItem(cocos2d::CCMenuItem*) = m1 0x691cf4, imac 0x77cda0, ios 0x1d8ff0;
    // static cocos2d::CCMenu* createWithItems(cocos2d::CCMenuItem*, char*);

    bool initWithArray(cocos2d::CCArray*) = m1 0x691b60, imac 0x77cc20, ios 0x1d8e5c;

    void setHandlerPriority(int);

    // CCMenu(cocos2d::CCMenu const&);
    // CCMenu();
    void alignItemsHorizontally();
    void alignItemsHorizontallyWithPadding(float) = imac 0x77d5c0, m1 0x6924f8, ios 0x1d95bc;
    // void alignItemsInColumns(unsigned int, ...);
    // void alignItemsInColumns(unsigned int, char*);
    void alignItemsInColumnsWithArray(cocos2d::CCArray*);
    // void alignItemsInRows(unsigned int, ...);
    // void alignItemsInRows(unsigned int, char*);
    void alignItemsInRowsWithArray(cocos2d::CCArray*);
    void alignItemsVertically();
    void alignItemsVerticallyWithPadding(float) = imac 0x77d370, m1 0x69230c, ios 0x1d93e0;
    cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*) = m1 0x691fb4, imac 0x77d050, ios 0x1d923c;
    cocos2d::CCMenuItem* itemForTouch(cocos2d::CCTouch*, bool) = m1 0x693500, imac 0x77e9e0, ios 0x1d9790;

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

    bool m_bEnabled;
    cocos2d::tCCMenuState m_eState;
    cocos2d::CCMenuItem* m_pSelectedItem;
}

[[link(win, android)]]
class cocos2d::CCRotateBy : cocos2d::CCActionInterval {
    static cocos2d::CCRotateBy* create(float, float) = imac 0x3a4bb0, m1 0x33167c, ios 0x18ea00;
    static cocos2d::CCRotateBy* create(float, float, float) = m1 0x331744, imac 0x3a4cb0, ios 0x18ea9c;

    bool initWithDuration(float, float) = m1 0x331718, imac 0x3a4c70, ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_fAngleX = p1;
        m_fAngleY = p1;
        return true;
    }
    bool initWithDuration(float, float, float) = m1 0x3317ec, imac 0x3a4d70, ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_fAngleX = p1;
        m_fAngleY = p2;
        return true;
    }

    // CCRotateBy(cocos2d::CCRotateBy const&);
    // CCRotateBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x331818, imac 0x3a4db0, ios 0x18eb44;
    virtual void update(float) = m1 0x331970, imac 0x3a4f20, ios 0x18ec90;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x331918, imac 0x3a4ed0, ios 0x18ec38;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a4fa0, m1 0x3319f8, ios 0x18ed0c;
}

[[link(win, android)]]
class cocos2d::CCRotateTo : cocos2d::CCActionInterval {
    static cocos2d::CCRotateTo* create(float, float) = imac 0x3a46d0, m1 0x331280, ios 0x18e6f4;
    static cocos2d::CCRotateTo* create(float fDuration, float fDeltaAngleX, float fDeltaAngleY) = m1 0x33134c, imac 0x3a47d0, ios inline {
        CCRotateTo* pRotateTo = new CCRotateTo();
        pRotateTo->initWithDuration(fDuration, fDeltaAngleX, fDeltaAngleY);
        pRotateTo->autorelease();

        return pRotateTo;
    }

    bool initWithDuration(float, float) = m1 0x331320, imac 0x3a4790, ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_fDstAngleX = p1;
        m_fDstAngleY = p1;
        return true;
    }

    // CCRotateTo(cocos2d::CCRotateTo const&);
    // CCRotateTo();

    virtual bool initWithDuration(float fDuration, float fDeltaAngleX, float fDeltaAngleY) = m1 0x3313f8, imac 0x3a48a0, ios 0x18e794;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a48e0, m1 0x331424, ios 0x18e7c0;
    virtual void update(float) = m1 0x3315f4, imac 0x3a4b30, ios 0x18e984;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x331514, imac 0x3a49e0, ios 0x18e8a4;
}

[[link(win, android)]]
class cocos2d::CCDelayTime : cocos2d::CCActionInterval {
    static cocos2d::CCDelayTime* create(float) = m1 0x330e74, imac 0x3a42c0, ios 0x18e3d8;

    // CCDelayTime(cocos2d::CCDelayTime const&);
    // CCDelayTime();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x3a8b50, m1 0x334e94, ios 0x190824;
    virtual void update(float) = m1 0x334f68, imac 0x3a8c20, ios 0x1908dc;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x334f6c, imac 0x3a8c30, ios 0x1908e0;
}

[[link(win, android)]]
class cocos2d::CCActionTween {
    static cocos2d::CCActionTween* create(float, int, float, float) = m1 0x6a3064, imac 0x78f760, ios 0x3a1a20;
    static cocos2d::CCActionTween* create(float, char const*, float, float) = m1 0x6a314c, imac 0x78f860, ios 0x3a1a4c;

    bool initWithDuration(float, char const*, float, float) = m1 0x6a322c, imac 0x78f960, ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_strKey = p1;
        // m_nIntTag = 0;
        m_fFrom = p2;
        m_fTo = p3;
        return true;
    }

    // CCActionTween(cocos2d::CCActionTween const&);
    // CCActionTween();
    void updateTargetValue(float) = m1 0x6a32b4, imac 0x78f9f0, ios inline {
        m_fTo = p0;
        m_fDelta = p0 - m_fFrom;
    }

    virtual void update(float) = m1 0x6a32c4, imac 0x78fa10, ios 0x3a1b58;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x6a3288, imac 0x78f9c0, ios 0x3a1b2c;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x6a3318, imac 0x78fa80, ios 0x3a1ba0;
}

[[link(win, android)]]
class cocos2d::CCTextFieldTTF : cocos2d::CCLabelTTF, cocos2d::CCIMEDelegate {
    CCTextFieldTTF() = m1 0x2154a4, imac 0x269d00, ios 0x1cbd3c;
    virtual ~CCTextFieldTTF() = m1 0x21557c, imac 0x269e20, ios 0x1cbe04;

    static cocos2d::CCTextFieldTTF* textFieldWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize) = imac 0x269f70, m1 0x21565c, ios inline {
        auto ret = new CCTextFieldTTF();
        if (ret->initWithPlaceHolder("", dimensions, alignment, fontName, fontSize)) {
            ret->autorelease();
            if (placeholder) ret->setPlaceHolder(placeholder);
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::CCTextFieldTTF* textFieldWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize) = ios 0x1cbee4, m1 0x21586c, imac 0x26a180;

    bool initWithPlaceHolder(const char* placeholder, const cocos2d::CCSize& dimensions, cocos2d::CCTextAlignment alignment, const char* fontName, float fontSize) = m1 0x215724, imac 0x26a020, ios inline {
        if (placeholder) {
            CC_SAFE_DELETE(m_pPlaceHolder);
            m_pPlaceHolder = new std::string(placeholder);
        }
        return CCLabelTTF::initWithString(m_pPlaceHolder->c_str(), fontName, fontSize, dimensions, alignment);
    }
    bool initWithPlaceHolder(const char* placeholder, const char* fontName, float fontSize) = m1 0x215930, imac 0x26a210, ios inline {
        if (placeholder) {
            CC_SAFE_DELETE(m_pPlaceHolder);
            m_pPlaceHolder = new std::string(placeholder);
        }
        return CCLabelTTF::initWithString(m_pPlaceHolder->c_str(), fontName, fontSize);
    }

    // void setDelegate(cocos2d::CCTextFieldDelegate* var);

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
    [[since("4.11.0")]]
    virtual void deleteForward() = m1 0x215f74, imac 0x26a7e0, ios 0x1cc374;
    virtual const char* getContentText() = m1 0x2162fc, imac 0x26abc0, ios 0x1cc608;
}

[[link(win, android)]]
class cocos2d {
    static cocos2d::CCAffineTransform CCAffineTransformConcat(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&) = m1 0x1df550, imac 0x22e910, ios 0x40b448;
    static bool CCAffineTransformEqualToTransform(cocos2d::CCAffineTransform const&, cocos2d::CCAffineTransform const&) = m1 0x1df5a8, imac 0x22e980, ios inline {
        return p0.a == p1.a && p0.b == p1.b && p0.c == p1.c && p0.d == p1.d && p0.tx == p1.tx && p0.ty == p1.ty;
    }
    static cocos2d::CCAffineTransform CCAffineTransformInvert(cocos2d::CCAffineTransform const&) = m1 0x1df614, imac 0x22e9e0, ios 0x40b4a8;
    static cocos2d::CCAffineTransform CCAffineTransformMakeIdentity() = m1 0x1df294, imac 0x22e590, ios 0x40b254;
    static cocos2d::CCAffineTransform CCAffineTransformRotate(cocos2d::CCAffineTransform const&, float) = m1 0x1df50c, imac 0x22e8c0, ios 0x40b404;
    static cocos2d::CCAffineTransform CCAffineTransformScale(cocos2d::CCAffineTransform const&, float, float) = m1 0x1df4ec, imac 0x22e8a0, ios inline {
        return CCAffineTransformMake(p0.a * p1, p0.b * p1, p0.c * p2, p0.d * p2, p0.tx, p0.ty);
    }
    static cocos2d::CCAffineTransform CCAffineTransformTranslate(cocos2d::CCAffineTransform const&, float, float) = m1 0x1df4c0, imac 0x22e860, ios 0x40b3d8;
    static void CCLuaLog(char const*);
    static void CCMessageBox(char const*, char const*);
    static cocos2d::CCPoint CCPointFromString(char const*) = m1 0x4a7ec0, imac 0x550ab0, ios 0x1a9c78;
    static void CCProfilingBeginTimingBlock(char const*);
    static void CCProfilingEndTimingBlock(char const*);
    static void CCProfilingResetTimingBlock(char const*);
    static cocos2d::CCRect CCRectApplyAffineTransform(cocos2d::CCRect const&, cocos2d::CCAffineTransform const&) = m1 0x1df2a8, imac 0x22e5b0, ios 0x40b268;
    static cocos2d::CCRect CCRectFromString(char const*) = m1 0x4a7204, imac 0x54fcc0, ios 0x1a93ec;
    static cocos2d::CCSize CCSizeFromString(char const*) = m1 0x4a7fec, imac 0x550bb0, ios 0x1a9d4c;
    static cocos2d::CCBMFontConfiguration* FNTConfigLoadFile(char const*) = m1 0x4f1f3c, imac 0x5bc460, ios 0x2f8b04;
    static void FNTConfigRemoveCache() = m1 0x4f221c, imac 0x5bc730, ios 0x2f8c94;
    static cocos2d::CCAffineTransform __CCAffineTransformMake(float, float, float, float, float, float) = m1 0x1df1d8, imac 0x22e490, ios 0x40b1e8;
    static cocos2d::CCPoint __CCPointApplyAffineTransform(cocos2d::CCPoint const&, cocos2d::CCAffineTransform const&) = m1 0x1df1e8, imac 0x22e4c0, ios 0x40b1f8;
    static cocos2d::CCSize __CCSizeApplyAffineTransform(cocos2d::CCSize const&, cocos2d::CCAffineTransform const&) = m1 0x1df244, imac 0x22e530, ios inline {
        return { p1.a * p0.width + p1.c * p0.height, p1.b * p0.width + p1.d * p0.height };
    }
    static cocos2d::CCPoint ccCardinalSplineAt(cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, cocos2d::CCPoint&, float, float);
    static void ccDrawCardinalSpline(cocos2d::CCPointArray*, float, unsigned int);
    static void ccDrawCatmullRom(cocos2d::CCPointArray*, unsigned int);
    static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool) = imac 0x1f6f00, m1 0x1ac960, ios 0x24b7f0;
    static void ccDrawCircle(cocos2d::CCPoint const&, float, float, unsigned int, bool, float, float) = imac 0x1f6ab0, m1 0x1ac600;
    static void ccDrawCircleSegment(cocos2d::CCPoint const&, float, float, float, unsigned int, bool, float, float);
    static void ccDrawColor4B(unsigned char, unsigned char, unsigned char, unsigned char) = imac 0x1f7ec0, m1 0x1ad624, ios 0x24bae4;
    static void ccDrawColor4F(float, float, float, float);
    static void ccDrawCubicBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
    static void ccDrawFilledCircle(cocos2d::CCPoint const&, float, float, unsigned int) = imac 0x1f7360, m1 0x1acccc, ios 0x24b988;
    static void ccDrawFree();
    static void ccDrawInit();
    static void ccDrawLine(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = m1 0x1ac0ec, imac 0x1f65e0, ios 0x24b408;
    static void ccDrawLines(cocos2d::CCPoint const*, unsigned int) = m1 0x1abfd8, imac 0x1f64d0, ios 0x24b34c;
    static void ccDrawPoint(cocos2d::CCPoint const&);
    static void ccDrawPoints(cocos2d::CCPoint const*, unsigned int);
    static void ccDrawPoly(cocos2d::CCPoint const*, unsigned int, bool);
    static void ccDrawQuadBezier(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, unsigned int);
    static void ccDrawRect(cocos2d::CCPoint, cocos2d::CCPoint) = m1 0x1ac234, imac 0x1f6710, ios 0x24b4e8;
    static void ccDrawSolidPoly(cocos2d::CCPoint const*, unsigned int, cocos2d::ccColor4F) = imac 0x1f68b0, m1 0x1ac3d0, ios 0x24b5b0;
    static void ccDrawSolidRect(cocos2d::CCPoint origin, cocos2d::CCPoint destination, cocos2d::ccColor4F color) = imac 0x1f6800, m1 0x1ac2fc, ios inline {
    	CCPoint vertices[] = {
    		origin,
    		CCPoint{destination.x, origin.y},
    		destination,
    		CCPoint{origin.x, destination.y}
    	};

    	ccDrawSolidPoly(vertices, 4, color);
    }
    static void ccGLBindTexture2D(unsigned int) = m1 0x2dcb6c, imac 0x347f80, ios 0x191efc;
    static void ccGLBindTexture2DN(unsigned int, unsigned int) = m1 0x2dcbb8, imac 0x347fc0, ios 0x191f08;
    static void ccGLBindVAO(unsigned int);
    static void ccGLBlendFunc(unsigned int, unsigned int) = imac 0x347ed0, m1 0x2dcaa4, ios 0x191e84;
    static void ccGLBlendResetToCache() = m1 0x2dcb18, imac 0x347f30, ios inline {
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
    static void ccGLDeleteTexture(unsigned int) = m1 0x2dcc18, imac 0x348000, ios 0x191f60;
    static void ccGLDeleteTextureN(unsigned int, unsigned int) = m1 0x2dcc58, imac 0x348040, ios inline {
        auto currentTexture = reinterpret_cast<GLuint*>(geode::base::get() + 0x83f0e4 + p0 * 4);
        if (*currentTexture == p1) *currentTexture = -1;
        glDeleteTextures(1, &p1);
    }
    static void ccGLEnable(cocos2d::ccGLServerState) = imac 0x3480a0, m1 0x2dccc4, ios 0x191fbc;
    static void ccGLEnableVertexAttribs(unsigned int) = m1 0x2dccc8, imac 0x3480b0, ios 0x191fc0;
    static void ccGLInvalidateStateCache();
    static void ccGLUseProgram(unsigned int) = imac 0x347eb0, m1 0x2dca88, ios 0x191e68;
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
    static float ccpDistance(cocos2d::CCPoint const&, cocos2d::CCPoint const&) = m1 0x2d8278, imac 0x342880, ios 0x1b1dec;
    static cocos2d::CCPoint ccpForAngle(float);
    static cocos2d::CCPoint ccpFromSize(cocos2d::CCSize const& size) = m1 0x2d83dc, imac 0x342a90, ios inline {
        return size;
    }
    static bool ccpFuzzyEqual(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
    static cocos2d::CCPoint ccpIntersectPoint(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpLength(cocos2d::CCPoint const&);
    static cocos2d::CCPoint ccpLerp(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float) = m1 0x2d830c, imac 0x342960, ios 0x1b1e78;
    static bool ccpLineIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, float*, float*) = m1 0x2d8538, imac 0x342c70, ios 0x1b1f4c;
    static cocos2d::CCPoint ccpNormalize(cocos2d::CCPoint const&) = imac 0x3428c0, m1 0x2d82a8, ios 0x1b1e1c;
    static cocos2d::CCPoint ccpRotateByAngle(cocos2d::CCPoint const&, cocos2d::CCPoint const&, float);
    static bool ccpSegmentIntersect(cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    static float ccpToAngle(cocos2d::CCPoint const& point) = m1 0x2d8304, imac 0x342940, ios inline {
        return point.getAngle();
    }
    static char const* cocos2dVersion() = m1 0x2d7a00, imac 0x341de0, ios 0x80138;
    static float clampf(float, float, float) = m1 0x2d8370, imac 0x3429d0, ios 0x1b1edc;
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
    DS_Dictionary() = m1 0x135e9c, imac 0x169200, ios 0x1643c4;
    void addBoolValuesToMapForKey(gd::map<gd::string, bool>&, char const*, bool) = m1 0x13d518, imac 0x171590;
    void addBoolValuesToMapForKeySpecial(gd::map<gd::string, bool>&, char const*, bool) = m1 0x13d1dc, imac 0x171230;
    void checkCompatibility();
    gd::string cleanStringWhiteSpace(gd::string const&);
    static void copyFile(char const*, char const*);
    cocos2d::CCObject* decodeObjectForKey(char const*, bool, int);
    gd::vector<gd::string> getAllKeys() = imac 0x16ccb0, m1 0x13935c;
    cocos2d::CCArray* getArrayForKey(char const*, bool) = imac 0x1707b0, m1 0x13c84c, ios 0x165ed4;
    bool getBoolForKey(char const*) = imac 0x16d3e0, m1 0x1399d4, ios 0x165010;
    cocos2d::CCDictionary* getDictForKey(char const*, bool) = m1 0x13d6c8, imac 0x171760;
    float getFloatForKey(char const*) = imac 0x16d4e0, m1 0x139acc;
    unsigned int getIndexOfKey(char const*);
    unsigned int getIndexOfKeyWithClosestAlphaNumericalMatch(char const*);
    int getIntegerForKey(char const*) = imac 0x16d2a0, m1 0x1398c8, ios 0x164f04;
    gd::string getKey(unsigned int) = imac 0x16cb80, m1 0x139234;
    unsigned int getNumKeys();
    cocos2d::CCObject* getObjectForKey(char const*) = imac 0x170930, m1 0x13c9b4, ios 0x165ff0;
    gd::vector<cocos2d::CCRect> getRectArrayForKey(char const*);
    cocos2d::CCRect getRectForKey(char const*);
    gd::vector<gd::string> getStringArrayForKey(char const*);
    gd::string getStringForKey(char const*) = imac 0x16d620, m1 0x139bec;
    gd::vector<cocos2d::CCPoint> getVec2ArrayForKey(char const*);
    cocos2d::CCPoint getVec2ForKey(char const*);
    bool loadRootSubDictFromCompressedFile(char const*) = imac 0x16a5b0, m1 0x1372fc;
    bool loadRootSubDictFromFile(char const*);
    bool loadRootSubDictFromString(gd::string const&) = m1 0x1376b0, imac 0x16a9f0, ios 0x1645d4;
    bool rectFromString(gd::string const&, cocos2d::CCRect&);
    void removeAllKeys();
    void removeKey(unsigned int);
    void removeKey(char const*);
    bool saveRootSubDictToCompressedFile(char const*);
    bool saveRootSubDictToFile(char const*);
    gd::string saveRootSubDictToString() = imac 0x16c030, m1 0x1388ec, ios 0x164824;
    void setArrayForKey(char const*, cocos2d::CCArray*) = imac 0x170440, m1 0x13c4d0;
    void setBoolForKey(char const*, bool, bool);
    void setBoolForKey(char const*, bool) = imac 0x16e790, m1 0x13ab9c, ios 0x165750;
    void setBoolMapForKey(char const*, gd::map<gd::string, bool>&) = m1 0x13cf9c, imac 0x170fe0, ios 0x1663b4;
    void setDictForKey(char const*, cocos2d::CCDictionary*) = imac 0x170db0, m1 0x13cd9c, ios 0x1662a8;
    void setFloatForKey(char const*, float) = imac 0x16e9c0, m1 0x13ad84;
    void setFloatForKey(char const*, float, bool);
    void setIntegerForKey(char const*, int) = imac 0x16e4c0, m1 0x13a930, ios 0x16551c;
    void setIntegerForKey(char const*, int, bool);
    void setObjectForKey(char const*, cocos2d::CCObject*);
    void setRectArrayForKey(char const*, gd::vector<cocos2d::CCRect> const&);
    void setRectArrayForKey(char const*, gd::vector<cocos2d::CCRect> const&, bool);
    void setRectForKey(char const*, cocos2d::CCRect const&);
    void setRectForKey(char const*, cocos2d::CCRect const&, bool);
    void setStringArrayForKey(char const*, gd::vector<gd::string> const&);
    void setStringArrayForKey(char const*, gd::vector<gd::string> const&, bool);
    void setStringForKey(char const*, gd::string const&) = imac 0x16ecb0, m1 0x13b008, ios 0x165acc;
    void setStringForKey(char const*, gd::string const&, bool);
    void setSubDictForKey(char const*) = m1 0x13a5f4, imac 0x16e0d0, ios inline {
        this->setSubDictForKey(p0, false, false);
    }
    void setSubDictForKey(char const*, bool, bool) = m1 0x13a698, imac 0x16e180, ios 0x16532c;
    void setVec2ArrayForKey(char const*, gd::vector<cocos2d::CCPoint> const&);
    void setVec2ArrayForKey(char const*, gd::vector<cocos2d::CCPoint> const&, bool);
    void setVec2ForKey(char const*, cocos2d::CCPoint const&);
    void setVec2ForKey(char const*, cocos2d::CCPoint const&, bool);
    void split(gd::string const&, char const*, gd::vector<gd::string>&);
    bool splitWithForm(gd::string const&, gd::vector<gd::string>&);
    void stepBackToRootSubDict();
    bool stepIntoSubDictWithKey(char const*) = imac 0x16c5d0, m1 0x138dc0, ios 0x164b90;
    void stepOutOfSubDict() = imac 0x16c8a0, m1 0x138ff0, ios inline {
        if (dictTree.size() > 1) dictTree.pop_back();
    }
    bool vec2FromString(gd::string const&, cocos2d::CCPoint&);
}

[[link(win, android)]]
class CCContentManager : cocos2d::CCObject {
    static CCContentManager* sharedManager() = m1 0x13ff04, imac 0x174130, ios 0x40a69c;

    cocos2d::CCDictionary* addDict(char const*, bool) = m1 0x140068, imac 0x1742a0, ios 0x40a764;
    cocos2d::CCDictionary* addDictDS(char const*) = m1 0x14022c, imac 0x174470;
    void clearCache() = m1 0x14042c, imac 0x174670, ios 0x40a83c;
    bool init() = m1 0x13ff84, imac 0x1741b0, ios inline {
        m_pDictCache = cocos2d::CCDictionary::create();
        m_pDictCache->retain();
        return true;
    }
}

[[link(win, android)]]
class ObjectDecoder : cocos2d::CCNode {
    // virtual ~ObjectDecoder();

    static ObjectDecoder* sharedDecoder() = m1 0x690e28, imac 0x77c040, ios 0x235830;

    cocos2d::CCObject* getDecodedObject(int, DS_Dictionary*) = m1 0x690ea0, imac 0x77c0c0, ios 0x23589c;

    virtual bool init() = m1 0x690e9c, imac 0x77c0b0, ios 0x235898;
}

[[link(win, android)]]
class cocos2d::extension::CCControl : cocos2d::CCLayerRGBA {
    static cocos2d::extension::CCControl* create() = m1 0x2d397c, imac 0x33d630, ios inline {
        auto ret = new CCControl();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    CCControl() = m1 0x2d38b4, imac 0x33d4d0, ios 0x1a8a80;
    virtual ~CCControl() = m1 0x2d3b10, imac 0x33d7f0, ios 0x1a8bb0;

    bool hasVisibleParents() = m1 0x2d4ad0, imac 0x33e920, ios inline {
        for (auto parent = this->getParent(); parent != nullptr; parent = parent->getParent()) {
            if (!parent->isVisible()) return false;
        }
        return true;
    }
    cocos2d::CCArray* dispatchListforControlEvent(cocos2d::extension::CCControlEvent) = m1 0x2d3fa0, imac 0x33ddb0, ios 0x1a8e58;
    void addTargetWithActionForControlEvent(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = m1 0x2d4490, imac 0x33e290, ios 0x1a8f2c;
    void removeTargetWithActionForControlEvent(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = m1 0x2d4688, imac 0x33e4b0, ios 0x1a8ff4;
    void addHandleOfControlEvent(int, cocos2d::extension::CCControlEvent) = m1 0x2d4b44, imac 0x33e980, ios inline {
        m_mapHandleOfControlEvent[p1] = p0;
    }
    void removeHandleOfControlEvent(cocos2d::extension::CCControlEvent) = m1 0x2d4c08, imac 0x33ea50, ios inline {
        if (auto it = m_mapHandleOfControlEvent.find(p0); it != m_mapHandleOfControlEvent.end()) {
            m_mapHandleOfControlEvent.erase(it);
        }
    }
    int getHandleOfControlEvent(cocos2d::extension::CCControlEvent) = m1 0x2d4010, imac 0x33de10, ios inline {
        auto it = m_mapHandleOfControlEvent.find(p0);
        return it != m_mapHandleOfControlEvent.end() ? it->second : -1;
    }

    virtual bool init() = m1 0x2d3a44, imac 0x33d720, ios 0x1a8ae4;
    virtual void onEnter() = m1 0x2d3dac, imac 0x33db90, ios 0x1a8cb4;
    virtual void onExit() = m1 0x2d3db0, imac 0x33dba0, ios 0x1a8cb8;
    virtual void registerWithTouchDispatcher() = m1 0x2d3d50, imac 0x33db40, ios 0x1a8c58;
    virtual void setOpacityModifyRGB(bool) = m1 0x2d4850, imac 0x33e630, ios 0x1a90fc;
    virtual bool isOpacityModifyRGB() = m1 0x2d49a8, imac 0x33e790, ios 0x1a91a4;
    virtual void setEnabled(bool) = m1 0x2d4a78, imac 0x33e880, ios 0x1a9274;
    virtual bool isEnabled() = m1 0x2d4a98, imac 0x33e8b0, ios 0x1a9294;
    virtual void setSelected(bool) = m1 0x2d4aa0, imac 0x33e8c0, ios 0x1a929c;
    virtual bool isSelected() = m1 0x2d4ab0, imac 0x33e8e0, ios 0x1a92ac;
    virtual void setHighlighted(bool) = m1 0x2d4ab8, imac 0x33e8f0, ios 0x1a92b4;
    virtual bool isHighlighted() = m1 0x2d4ac8, imac 0x33e910, ios 0x1a92c4;
    virtual void needsLayout() = m1 0x2d4a74, imac 0x33e870, ios 0x1a9270;
    virtual void sendActionsForControlEvents(unsigned int) = m1 0x2d3db4, imac 0x33dbb0, ios 0x1a8cbc;
    virtual void addTargetWithActionForControlEvents(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, unsigned int) = m1 0x2d4060, imac 0x33de60, ios 0x1a8eb4;
    virtual void removeTargetWithActionForControlEvents(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, unsigned int) = m1 0x2d4520, imac 0x33e300, ios 0x1a8f7c;
    virtual cocos2d::CCPoint getTouchLocation(cocos2d::CCTouch*) = m1 0x2d49b8, imac 0x33e7b0, ios 0x1a91b4;
    virtual bool isTouchInside(cocos2d::CCTouch*) = m1 0x2d4a04, imac 0x33e800, ios 0x1a9200;
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

    static cocos2d::extension::CCControlColourPicker* colourPicker() = imac 0x3424e0, m1 0x2d7fe0, ios 0x1b1bd8;

    cocos2d::ccColor3B const& getColorValue() const = android inline, mac inline, ios inline {
        return m_rgb;
    }

    void hueSliderValueChanged(cocos2d::CCObject*, unsigned int) = m1 0x2d7d44, imac 0x342180, ios 0x1b19d8;
    void colourSliderValueChanged(cocos2d::CCObject*, unsigned int) = m1 0x2d7e2c, imac 0x3422b0, ios 0x1b1abc;
    void updateControlPicker() = m1 0x2d8170, imac 0x342700, ios inline {
        m_huePicker->setHue(m_hsv.h);
        m_colourPicker->updateWithHSV(m_hsv);
    }
    void updateHueAndControlPicker() = m1 0x2d7eec, imac 0x342390, ios 0x1b1b78;

    virtual bool init() = m1 0x2d7a70, imac 0x341e50, ios 0x1b1744;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2d81b8, imac 0x342760, ios 0x1b1d2c;
    virtual void setColorValue(cocos2d::ccColor3B const&) = m1 0x2d8074, imac 0x3425b0, ios 0x1b1c6c;
}

[[link(win, android)]]
class cocos2d::extension::CCControlHuePicker : cocos2d::extension::CCControl {
    [[since("4.2.1")]]
    CCControlHuePicker() = m1 0x2d8834, imac 0x342fa0, ios 0x1b3948;
    [[since("4.2.1")]]
    virtual ~CCControlHuePicker() = m1 0x2d892c, imac 0x343100, ios 0x1b39c4;

    static cocos2d::extension::CCControlHuePicker* create(cocos2d::CCNode*, cocos2d::CCPoint) = m1 0x2d8b20, imac 0x3433f0, ios 0x1b3a74;

    bool checkSliderPosition(cocos2d::CCPoint) = m1 0x2d8f7c, imac 0x343900, ios 0x1b3eb4;
    void updateSliderPosition(cocos2d::CCPoint) = m1 0x2d8ee4, imac 0x343860, ios 0x1b3e20;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2d9064, imac 0x343a00, ios 0x1b3f38;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2d9168, imac 0x343b00, ios 0x1b3fc0;
    virtual void setEnabled(bool) = m1 0x2d8e94, imac 0x343810, ios 0x1b3dd0;
    virtual bool initWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint) = m1 0x2d8c00, imac 0x343510, ios 0x1b3af8;
    virtual void setHue(float) = m1 0x2d8db4, imac 0x3436f0, ios 0x1b3cf4;
    virtual void setHuePercentage(float) = m1 0x2d8dd0, imac 0x343720, ios 0x1b3d10;
    [[since("4.11.0")]]
    virtual void registerWithTouchDispatcher() = m1 0x2d8d7c, imac 0x3436b0, ios 0x1b3cbc;
}

[[link(win, android)]]
class cocos2d::extension::CCControlSaturationBrightnessPicker : cocos2d::extension::CCControl {
    [[since("4.2.1")]]
    CCControlSaturationBrightnessPicker() = m1 0x2e863c, imac 0x354950, ios 0x1bfae0;
    [[since("4.2.1")]]
    virtual ~CCControlSaturationBrightnessPicker() = m1 0x2e8754, imac 0x354ad0, ios 0x1bfb6c;

    static cocos2d::extension::CCControlSaturationBrightnessPicker* create(cocos2d::CCNode*, cocos2d::CCPoint) = m1 0x2e8aec, imac 0x354f70, ios 0x1bfd84;

    bool checkSliderPosition(cocos2d::CCPoint) = m1 0x2e8ebc, imac 0x355430, ios 0x1c00e0;
    void updateSliderPosition(cocos2d::CCPoint) = m1 0x2e8d28, imac 0x355230, ios 0x1bff4c;

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2e8fd8, imac 0x355580, ios 0x1c01fc;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2e90dc, imac 0x355680, ios 0x1c0284;
    virtual void setEnabled(bool) = m1 0x2e8bdc, imac 0x3550a0, ios 0x1bfe08;
    virtual bool initWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint) = m1 0x2e8974, imac 0x354df0, ios 0x1bfc0c;
    virtual void updateWithHSV(cocos2d::extension::HSV) = m1 0x2e8c2c, imac 0x3550f0, ios 0x1bfe58;
    virtual void updateDraggerWithHSV(cocos2d::extension::HSV) = m1 0x2e8ca0, imac 0x355190, ios 0x1bfec8;
    [[since("4.11.0")]]
    virtual void registerWithTouchDispatcher() = m1 0x2e8fa0, imac 0x355540, ios 0x1c01c4;
}

[[link(win, android)]]
class cocos2d::extension::CCScale9Sprite : cocos2d::CCNodeRGBA {
    static cocos2d::extension::CCScale9Sprite* create() = imac 0x3e3e90, m1 0x36627c, ios inline {
        auto ret = new CCScale9Sprite();
        if (ret->init()) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
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
    static cocos2d::extension::CCScale9Sprite* create(char const*, cocos2d::CCRect) = imac 0x3e3810, m1 0x365afc, ios 0x216814;
    static cocos2d::extension::CCScale9Sprite* create(char const* filename, cocos2d::CCRect rect, cocos2d::CCRect capInsets) = m1 0x3659d4, imac 0x3e3710, ios inline {
        CCScale9Sprite* ret = new CCScale9Sprite;
        if (ret->initWithFile(filename, rect, capInsets)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* create(cocos2d::CCRect capInsets, char const* filename) = m1 0x365c1c, imac 0x3e3900, ios inline {
        CCScale9Sprite* ret = new CCScale9Sprite;
        if (ret->initWithFile(capInsets, filename)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*, cocos2d::CCRect) = m1 0x365e2c, imac 0x3e3ad0, ios inline {
        auto ret = new CCScale9Sprite();
        if (ret->initWithSpriteFrame(p0, p1)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    static cocos2d::extension::CCScale9Sprite* createWithSpriteFrame(cocos2d::CCSpriteFrame*) = m1 0x365f30, imac 0x3e3bb0, ios inline {
        auto ret = new CCScale9Sprite();
        if (ret->initWithSpriteFrame(p0)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }

    CCScale9Sprite() = m1 0x3642fc, imac 0x3e1e50, ios 0x2151f4;
    virtual ~CCScale9Sprite() = m1 0x3643b0, imac 0x3e1f40, ios 0x2152a4;

    void updatePositions() = m1 0x3654ac, imac 0x3e31b0, ios 0x21628c;
    void updateCapInset() = m1 0x3663e0, imac 0x3e4000, ios 0x216be8;
    cocos2d::extension::CCScale9Sprite* resizableSpriteWithCapInsets(cocos2d::CCRect) = m1 0x3661b4, imac 0x3e3de0, ios inline {
        auto ret = new CCScale9Sprite();
        if (ret->initWithBatchNode(_scale9Image, m_spriteRect, p0)) {
            ret->autorelease();
            return ret;
        }
        delete ret;
        return nullptr;
    }
    [[since("4.11.0")]]
    void setBlendAdditive(bool) = m1 0x366b38, imac 0x3e4820, ios 0x21711c;

    virtual bool init() = m1 0x364478, imac 0x3e2060, ios 0x21536c;
    virtual void setContentSize(const cocos2d::CCSize& size) = m1 0x365484, imac 0x3e3190, ios 0x216264;
    virtual void visit() = imac 0x3e44d0, m1 0x3667fc, ios 0x216f54;
    virtual unsigned char getOpacity() = m1 0x366b28, imac 0x3e4800, ios 0x21710c;
    virtual void setOpacity(unsigned char) = m1 0x3669c0, imac 0x3e46a0, ios 0x217058;
    virtual void updateDisplayedOpacity(unsigned char) = m1 0x366650, imac 0x3e42a0, ios 0x216da8;
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
    private CCHttpClient() = m1 0x3a06b8, imac 0x4256d0, ios 0x2408ec;
    virtual ~CCHttpClient() = m1 0x3a074c, imac 0x425760, ios 0x240980;

    static cocos2d::extension::CCHttpClient* getInstance() = imac 0x425520, m1 0x3a04ec, ios 0x240778;
    static void destroyInstance() = m1 0x3a0550, imac 0x425580, ios inline {
        auto instance = *reinterpret_cast<CCHttpClient**>(geode::base::get() + 0x8601c0);
        CCDirector::sharedDirector()->getScheduler()->unscheduleSelector(schedule_selector(CCHttpClient::dispatchResponseCallbacks), instance);
        instance->release();
    }
    void send(cocos2d::extension::CCHttpRequest* request) = imac 0x426430, m1 0x3a12c0, ios 0x241138;
    bool lazyInitThreadSemphore() = imac 0x425880, m1 0x3a0864, ios 0x2409f4;
    void dispatchResponseCallbacks(float) = m1 0x3a0594, imac 0x4255c0, ios 0x2407c8;

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
    static gd::string base64EncodeEnc(gd::string const&, gd::string) = imac 0x1f3b90, m1 0x1a9720, ios 0x23dd10;
    static gd::string base64URLDecode(gd::string const&) = imac 0x1f3dd0, m1 0x1a9990, ios 0x23df70;
    static gd::string base64URLEncode(gd::string const&) = imac 0x1f3eb0, m1 0x1a9aa0, ios 0x23e064;
    // static void ccDecodeEncodedPvr(unsigned int*, int);
    static int ccDeflateMemory(unsigned char* data, unsigned int size, unsigned char** out) = imac 0x1f3290, m1 0x1a8dd8, ios 0x23d50c;
    static int ccInflateCCZFile(char const*, unsigned char**);
    static int ccInflateGZipFile(char const*, unsigned char**);
    // static int ccInflateMemory(unsigned char* data, unsigned int size, unsigned char** out) = imac 0x1f3660, m1 0x1a91b0;
    // static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int*, unsigned int) = imac 0x1f45f0, m1 0x1aa1b8;
    // static int ccInflateMemoryWithHint(unsigned char*, unsigned int, unsigned char**, unsigned int) = imac 0x1f4720, m1 0x1aa2e0;
    static void ccSetPvrEncryptionKey(unsigned int, unsigned int, unsigned int, unsigned int);
    static void ccSetPvrEncryptionKeyPart(int, unsigned int);
    static gd::string compressString(gd::string const& data, bool encrypt, int encryptionKey) = imac 0x1f3020, m1 0x1a8b18, ios 0x23d2b8;
    static gd::string decompressString2(unsigned char* data, bool encrypt, int size, int encryptionKey) = imac 0x1f33b0, m1 0x1a8efc, ios 0x23d618;
    static gd::string decompressString(gd::string const& data, bool encrypt, int encryptionKey) = m1 0x1a921c, imac 0x1f36c0, ios 0x23d8a0;
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
    static cocos2d::CCSprite* addSpriteToTargetWithPosAndAnchor(char const*, cocos2d::CCNode*, cocos2d::CCPoint, cocos2d::CCPoint) = m1 0x3247f0, imac 0x396590, ios 0x1d4c08;
    static cocos2d::extension::HSV HSVfromRGB(cocos2d::extension::RGBA) = m1 0x324868, imac 0x3965f0, ios 0x1d4c80;
    static cocos2d::extension::RGBA RGBfromHSV(cocos2d::extension::HSV) = m1 0x324914, imac 0x3966e0, ios 0x1d4d28;
    static cocos2d::CCRect CCRectUnion(cocos2d::CCRect const&, cocos2d::CCRect const&) = m1 0x324a34, imac 0x396830, ios inline {
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
    static cocos2d::CCSpawn* create(cocos2d::CCArray* arrayOfActions) = m1 0x3309f8, imac 0x3a3db0, ios inline {
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
    // static cocos2d::CCSpawn* create(cocos2d::CCFiniteTimeAction*, ...) = m1 0x33e430, imac 0x3b9e30;
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
    static cocos2d::CCSpawn* createWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = m1 0x33096c, imac 0x3a3d20, ios 0x18e290;
    // static cocos2d::CCSpawn* createWithVariableList(cocos2d::CCFiniteTimeAction*, char*);

    bool initWithTwoActions(cocos2d::CCFiniteTimeAction*, cocos2d::CCFiniteTimeAction*) = m1 0x330bdc, imac 0x3a3f80, ios 0x18e31c;

    // CCSpawn(cocos2d::CCSpawn const&);
    // CCSpawn();
    virtual ~CCSpawn() = m1 0x330ffc, imac 0x3a4470, ios 0x18e554;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x330f00, imac 0x3a4360, ios 0x18e464;
    virtual void update(float) = imac 0x3a45d0, m1 0x33116c, ios 0x18e648;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3310d8, imac 0x3a4560, ios 0x18e5b4;
    virtual void stop() = imac 0x3a45a0, m1 0x33112c, ios 0x18e608;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x3a4620, m1 0x3311d0, ios 0x18e6ac;
}

[[link(win, android)]]
class cocos2d::CCSpeed : cocos2d::CCAction {
    static cocos2d::CCSpeed* create(cocos2d::CCActionInterval*, float) = imac 0x5dcd40, m1 0x50fc4c;

    bool initWithAction(cocos2d::CCActionInterval*, float) = m1 0x50fcdc, imac 0x5dcde0;

    // cocos2d::CCActionInterval* getInnerAction();
    // float getSpeed();

    void setInnerAction(cocos2d::CCActionInterval*) = m1 0x50ffb8, imac 0x5dd0f0;
    // void setSpeed(float);

    // CCSpeed(cocos2d::CCSpeed const&);
    // CCSpeed();
    virtual ~CCSpeed() = m1 0x50fb70, imac 0x5dcc50;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = imac 0x5dce20, m1 0x50fd1c;
    virtual bool isDone() = m1 0x50ff04, imac 0x5dd030;
    virtual void startWithTarget(cocos2d::CCNode*) = imac 0x5dcfc0, m1 0x50fea4;
    virtual void stop() = imac 0x5dcfe0, m1 0x50feb8;
    virtual void step(float) = imac 0x5dd010, m1 0x50fee8;
    virtual cocos2d::CCActionInterval* reverse() = imac 0x5dd040, m1 0x50ff14;
}

[[link(win, android)]]
class pugi::xml_document : pugi::xml_node {
    xml_document() = imac 0x62aa40, m1 0x5553cc, ios 0x3a593c;
    ~xml_document() = imac 0x62ab90, m1 0x555520, ios 0x3a5a20;
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
    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = win 0x44540, imac 0x5c5940, m1 0x4fa830, ios 0x347118;
    static cocos2d::CCLightning* lightningWithStrikePoint(cocos2d::CCPoint) = win inline, ios inline, imac 0x5c5780, m1 0x4fa6c4 {
    	auto ret = new CCLightning();
    	if (ret->initWithStrikePoint(p0)) {
    		ret->autorelease();
    		return ret;
    	}
    	delete ret;
    	return nullptr;
    }

    bool initWithStrikePoint(cocos2d::CCPoint, cocos2d::CCPoint, float) = win 0x445e0, imac 0x5c5a90, m1 0x4fa950, ios 0x3471b0;
    bool initWithStrikePoint(cocos2d::CCPoint) = win inline, ios inline, m1 0x4fa7dc, imac 0x5c58e0 {
    	return this->initWithStrikePoint(p0, CCPointZero, .5f);
    }

    CCLightning() = win 0x44400, m1 0x4fa4a4, imac 0x5c54e0, ios 0x347014;
    virtual ~CCLightning() = win inline, m1 0x4fa5f4, imac 0x5c5680, ios 0x3470bc {
        if (m_lightningPoints) {
            free(m_lightningPoints);
            m_lightningPoints = nullptr;
        }
    }

    void strike() = win 0x44880, m1 0x4faa74, imac 0x5c5bd0, ios 0x347290;
    void strikeFinished() = win 0x448f0, m1 0x4facc8, imac 0x5c5e60, ios 0x3473fc;
    void strikeRandom() = win inline, ios inline, m1 0x4fabe0, imac 0x5c5d80 {
    	m_seed = rand();
    	this->strike();
    }
    void strikeWithSeed(uint64_t seed) = win inline, ios inline, imac 0x5c5df0, m1 0x4fac58 {
    	m_seed = seed;
    	this->strike();
    }

    virtual void draw() = win 0x44700, imac 0x5c5c30, m1 0x4faae0, ios 0x3472fc;
    virtual bool isOpacityModifyRGB() = win 0x44960, m1 0x4fad58, imac 0x5c5f50, ios 0x34748c;
    virtual void setOpacityModifyRGB(bool) = win 0x44970, m1 0x4fad68, imac 0x5c5f70, ios 0x34749c;
    virtual unsigned char getOpacity() = win 0x44910, m1 0x4face0, imac 0x5c5e80, ios 0x347414;
    virtual unsigned char getDisplayedOpacity() = win 0x44920, m1 0x4facf0, imac 0x5c5ea0, ios 0x347424;
    virtual void setOpacity(unsigned char) = win 0x44930, m1 0x4fad0c, imac 0x5c5ed0, ios 0x347440;
    virtual void updateDisplayedOpacity(unsigned char) = win 0x44980, m1 0x4fad78, imac 0x5c5f90, ios 0x3474ac;
    virtual bool isCascadeOpacityEnabled() = win 0x44990, m1 0x4fad88, imac 0x5c5fb0, ios 0x3474bc;
    virtual void setCascadeOpacityEnabled(bool) = win 0x449a0, m1 0x4fad98, imac 0x5c5fd0, ios 0x3474cc;
    virtual cocos2d::ccColor3B const& getColor() = win 0x44940, m1 0x4fad1c, imac 0x5c5ef0, ios 0x347450;
    virtual cocos2d::ccColor3B const& getDisplayedColor() = win 0x449b0, m1 0x4fada8, imac 0x5c5ff0, ios 0x3474dc;
    virtual void setColor(cocos2d::ccColor3B const&) = win 0x44950, m1 0x4fad2c, imac 0x5c5f10, ios 0x347460;
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&) = win 0x449c0, m1 0x4fadb8, imac 0x5c6010, ios 0x3474ec;
    virtual bool isCascadeColorEnabled() = win 0x449d0, m1 0x4fade0, imac 0x5c6050, ios 0x347514;
    virtual void setCascadeColorEnabled(bool) = win 0x449e0, m1 0x4fadf0, imac 0x5c6070, ios 0x347524;

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
	static cocos2d::CCConfiguration* sharedConfiguration() = m1 0x4634e8, imac 0x503d50, ios 0x3252e4;

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

	bool checkForGLExtension(gd::string const&) const = m1 0x4634b4, imac 0x503d20, ios 0x3252b0;
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
	CCPoolManager() = m1 0x366fc4, imac 0x3e4ca0, ios 0x1b4274;
    ~CCPoolManager() = m1 0x367018, imac 0x3e4cf0, ios 0x1b42c8;

	void addObject(cocos2d::CCObject*) = m1 0x367390, imac 0x3e5070, ios 0x1b448c;
	void finalize() = m1 0x367110, imac 0x3e4df0, ios 0x1b431c;
	cocos2d::CCAutoreleasePool* getCurReleasePool() = m1 0x3673dc, imac 0x3e50b0, ios inline {
        if (!m_pCurReleasePool) this->push();
        return m_pCurReleasePool;
    }
	void pop() = m1 0x367288, imac 0x3e4f70, ios 0x1b43d0;
	static void purgePoolManager() = m1 0x366f90, imac 0x3e4c50, ios 0x1b4244;
	void push() = m1 0x3671cc, imac 0x3e4ec0, ios 0x1b437c;
	void removeObject(cocos2d::CCObject*) = m1 0x36733c, imac 0x3e5020, ios 0x1b4438;
	static cocos2d::CCPoolManager* sharedPoolManager() = m1 0x366e98, imac 0x3e4b70, ios 0x1b41f4;
}

[[link(win, android)]]
class cocos2d::CCZone {
    CCZone(cocos2d::CCObject* object) = win inline, m1 0xdf7f8, imac 0xfc970, ios 0x2534b4 {
        m_pCopyObject = object;
    }
}

[[link(android)]]
class cocos2d::CCDisplayLinkDirector : cocos2d::CCDirector {
    virtual void setAnimationInterval(double) = win 0xbcf10, m1 0x3e0aa8, imac 0x471d80, ios 0x179e68;
    virtual void stopAnimation() = win 0xbda50, m1 0x3e0a9c, imac 0x471d70, ios 0x179e5c;
    virtual void startAnimation() = win 0xbda10, m1 0x3e0a24, imac 0x471cf0, ios 0x179de4;
    virtual void mainLoop() = win 0xbc600, m1 0x3e0a60, imac 0x471d30, ios 0x179e20;
}

[[link(win, android)]]
class cocos2d::CCScriptEngineManager {
    // cocos2d::CCScriptEngineProtocol* getScriptEngine();
    void setScriptEngine(cocos2d::CCScriptEngineProtocol* engine) = m1 0x29eaa8, imac 0x307980, ios inline {
        if (m_pScriptEngine) delete m_pScriptEngine;
        m_pScriptEngine = engine;
    }
    void removeScriptEngine();

    ~CCScriptEngineManager();
    
    static cocos2d::CCScriptEngineManager* sharedManager() = m1 0x29e3d8, imac 0x3072f0, ios 0x2726e0;
    static void purgeSharedManager();
}

[[link(win, android)]]
class cocos2d::CCJumpBy : cocos2d::CCActionInterval {
    static cocos2d::CCJumpBy* create(float, cocos2d::CCPoint const&, float, unsigned int) = m1 0x332700, imac 0x3a5ef0, ios inline {
        auto ret = new CCJumpBy();
        ret->initWithDuration(p0, p1, p2, p3);
        ret->autorelease();
        return ret;
    }

    bool initWithDuration(float, cocos2d::CCPoint const&, float, unsigned int) = m1 0x3327f0, imac 0x3a6010, ios inline {
        if (!CCActionInterval::initWithDuration(p0)) return false;
        m_delta = p1;
        m_height = p2;
        m_nJumps = p3;
        return true;
    }

    // CCJumpBy(cocos2d::CCJumpBy const&);
    // CCJumpBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x33284c, imac 0x3a6080, ios inline {
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
    virtual void update(float t) = m1 0x3329e4, imac 0x3a6240, ios inline {
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
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = m1 0x332990, imac 0x3a61f0, ios inline {
        CCActionInterval::startWithTarget(pTarget);
        m_previousPos = m_startPosition = pTarget->getPosition();
    }
    virtual cocos2d::CCActionInterval* reverse() = m1 0x332af0, imac 0x3a6370, ios inline {
        return CCJumpBy::create(m_fDuration, -m_delta, m_height, m_nJumps);
    }
}

[[link(win, android)]]
class cocos2d::CCJumpTo : cocos2d::CCActionInterval {
    static cocos2d::CCJumpTo* create(float, cocos2d::CCPoint const&, float, int) = m1 0x332b48, imac 0x3a63d0, ios inline {
        auto ret = new CCJumpTo();
        ret->initWithDuration(p0, p1, p2, p3);
        ret->autorelease();
        return ret;
    }

    // CCJumpTo(cocos2d::CCJumpTo const&);
    // CCJumpTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = m1 0x332c44, imac 0x3a64f0, ios inline {
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
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = m1 0x332d94, imac 0x3a6670, ios inline {
        CCJumpBy::startWithTarget(pTarget);
        m_delta = m_delta - m_startPosition;
    }
}

[[link(win, android)]]
class cocos2d::CCBMFontConfiguration : cocos2d::CCObject {
    static cocos2d::CCBMFontConfiguration* create(char const*) = ios 0x2f8bf8, m1 0x4f2174, imac 0x5bc6a0;

    bool initWithFNTfile(char const*) = m1 0x4f228c, imac 0x5bc7c0, ios inline {
        m_pKerningDictionary = nullptr;
        m_pFontDefDictionary = nullptr;
        m_pCharacterSet = this->parseConfigFile(p0);
        return m_pCharacterSet != nullptr;
    }

    // CCBMFontConfiguration(cocos2d::CCBMFontConfiguration const&);
    CCBMFontConfiguration() = m1 0x4f30cc, imac 0x5bd4d0, ios inline {
        m_pFontDefDictionary = nullptr;
        m_nCommonHeight = 0;
        m_pKerningDictionary = nullptr;
        m_pCharacterSet = nullptr;
    }
    virtual ~CCBMFontConfiguration() = m1 0x4f3104, imac 0x5bd520, ios 0x2f9730;

    char const* description() = m1 0x4f3460, imac 0x5bd880, ios inline {
        return CCString::createWithFormat(
            "<CCBMFontConfiguration = " CC_FORMAT_PRINTF_SIZE_T " | Glphys:%d Kernings:%d | Image = %s>",
            (size_t)this,
            HASH_COUNT(m_pFontDefDictionary),
            HASH_COUNT(m_pKerningDictionary),
            m_sAtlasName.c_str()
        )->getCString();
    }
    void parseCharacterDefinition(gd::string, cocos2d::_BMFontDef*) = m1 0x4f401c, imac 0x5be470, ios 0x2fa078;
    void parseCommonArguments(gd::string) = m1 0x4f3698, imac 0x5bdac0, ios 0x2f9b50;
    gd::set<unsigned int>* parseConfigFile(char const*) = m1 0x4f22c0, imac 0x5bc7f0, ios 0x2f8ccc;
    void parseImageFileName(gd::string, char const*) = m1 0x4f3d7c, imac 0x5be1e0, ios 0x2f9f30;
    void parseInfoArguments(gd::string) = m1 0x4f34bc, imac 0x5bd8e0, ios 0x2f9a2c;
    void parseKerningEntry(gd::string) = m1 0x4f4d8c, imac 0x5bf370, ios 0x2fa818;
    void purgeFontDefDictionary() = m1 0x4f31a4, imac 0x5bd5b0, ios 0x2f97b8;
    void purgeKerningDictionary() = m1 0x4f32fc, imac 0x5bd710, ios 0x2f98ec;
}

[[link(win, android)]]
class cocos2d::CCGrabber : cocos2d::CCObject {
    [[since("4.11.0")]]
    CCGrabber() = m1 0x514fe8, imac 0x5e29e0, ios inline {
        memset(m_oldClearColor, 0, sizeof(m_oldClearColor));
        glGenFramebuffers(1, &m_FBO);
    }
    [[since("4.11.0")]]
    virtual ~CCGrabber() = m1 0x515138, imac 0x5e2b40, ios inline {
        glDeleteFramebuffers(1, &m_FBO);
    }

    void grab(cocos2d::CCTexture2D*) = m1 0x515040, imac 0x5e2a30, ios inline {
        glGetIntegerv(GL_FRAMEBUFFER_BINDING, &m_oldFBO);
        glBindFramebuffer(GL_FRAMEBUFFER, m_FBO);
        glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, p0->getName(), 0);
        glCheckFramebufferStatus(GL_FRAMEBUFFER);
        glBindFramebuffer(GL_FRAMEBUFFER, m_oldFBO);
    }
    void beforeRender(cocos2d::CCTexture2D*) = m1 0x5150b0, imac 0x5e2aa0, ios inline {
        glGetIntegerv(GL_FRAMEBUFFER_BINDING, &m_oldFBO);
        glBindFramebuffer(GL_FRAMEBUFFER, m_FBO);
        glGetFloatv(GL_COLOR_CLEAR_VALUE, m_oldClearColor);
        glClearColor(0, 0, 0, 0);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    }
    void afterRender(cocos2d::CCTexture2D*) = m1 0x515108, imac 0x5e2b00, ios inline {
        glBindFramebuffer(GL_FRAMEBUFFER, m_oldFBO);
        glClearColor(m_oldClearColor[0], m_oldClearColor[1], m_oldClearColor[2], m_oldClearColor[3]);
    }
}

[[link(win, android)]]
class cocos2d::CCFollow : cocos2d::CCAction {
    static cocos2d::CCFollow* create(cocos2d::CCNode*, cocos2d::CCRect const&) = m1 0x5100e0, imac 0x5dd220;

    virtual ~CCFollow() = m1 0x510004, imac 0x5dd130;

    bool initWithTarget(cocos2d::CCNode*, cocos2d::CCRect const&) = m1 0x5101a4, imac 0x5dd2f0;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x5102f4, imac 0x5dd440;
    virtual void step(float) = m1 0x5104a8, imac 0x5dd600;
    virtual bool isDone() = m1 0x5105a4, imac 0x5dd6e0;
    virtual void stop() = m1 0x5105c8, imac 0x5dd700;
}

[[link(win, android)]]
class cocos2d::CCCardinalSplineBy : cocos2d::CCCardinalSplineTo {
    static cocos2d::CCCardinalSplineBy* create(float, cocos2d::CCPointArray*, float) = m1 0x263560, imac 0x2bed30;

    CCCardinalSplineBy() = m1 0x263608, imac 0x2bedd0;

    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x263a94, imac 0x2bf2b0;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x2637a0, imac 0x2bef50;
    virtual void updatePosition(cocos2d::CCPoint&) = m1 0x263748, imac 0x2bef00;
}

[[link(win, android)]]
class cocos2d::CCCardinalSplineTo : cocos2d::CCActionInterval {
    static cocos2d::CCCardinalSplineTo* create(float, cocos2d::CCPointArray*, float) = m1 0x262e1c, imac 0x2be550;

    CCCardinalSplineTo() = m1 0x262f14, imac 0x2be640;
    virtual ~CCCardinalSplineTo() = m1 0x262fcc, imac 0x2be700;

    bool initWithDuration(float, cocos2d::CCPointArray*, float) = m1 0x262f6c, imac 0x2be6a0;

    virtual cocos2d::CCCardinalSplineTo* copyWithZone(cocos2d::CCZone*) = m1 0x26315c, imac 0x2be8a0;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x2630e8, imac 0x2be830;
    virtual void update(float) = m1 0x263280, imac 0x2be9e0;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x263534, imac 0x2bed00;
    virtual void updatePosition(cocos2d::CCPoint&) = m1 0x2634fc, imac 0x2becd0;
}

[[link(win, android)]]
class cocos2d::CCCatmullRomBy : cocos2d::CCCardinalSplineBy {
    static cocos2d::CCCatmullRomBy* create(float, cocos2d::CCPointArray*) = m1 0x263c98, imac 0x2bf4a0;

    bool initWithDuration(float, cocos2d::CCPointArray*) = m1 0x263e04, imac 0x2bf600;
}

[[link(win, android)]]
class cocos2d::CCCatmullRomTo : cocos2d::CCCardinalSplineTo {
    static cocos2d::CCCatmullRomTo* create(float, cocos2d::CCPointArray*) = m1 0x263b24, imac 0x2bf340;

    bool initWithDuration(float, cocos2d::CCPointArray*) = m1 0x263c40, imac 0x2bf450;
}

[[link(win, android)]]
class cocos2d::CCAccelAmplitude : cocos2d::CCActionInterval {
    static cocos2d::CCAccelAmplitude* create(cocos2d::CCAction*, float) = m1 0x1ae044, imac 0x1f88f0;

    virtual ~CCAccelAmplitude() = m1 0x1ae158, imac 0x1f89f0;

    bool initWithAction(cocos2d::CCAction*, float) = m1 0x1ae10c, imac 0x1f89b0;

    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x1ae228, imac 0x1f8ab0;
    virtual void update(float) = m1 0x1ae25c, imac 0x1f8ae0;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x1ae2a8, imac 0x1f8b30;
}

[[link(win, android)]]
class cocos2d::CCAccelDeccelAmplitude : cocos2d::CCActionInterval {
    static cocos2d::CCAccelDeccelAmplitude* create(cocos2d::CCAction*, float) = m1 0x1add24, imac 0x1f85d0;

    virtual ~CCAccelDeccelAmplitude() = m1 0x1ade38, imac 0x1f86d0;

    bool initWithAction(cocos2d::CCAction*, float) = m1 0x1addec, imac 0x1f8690;

    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x1adef0, imac 0x1f8790;
    virtual void update(float) = m1 0x1adf24, imac 0x1f87c0;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x1adf68, imac 0x1f8820;
}

[[link(win, android)]]
class cocos2d::CCDeccelAmplitude : cocos2d::CCActionInterval {
    static cocos2d::CCDeccelAmplitude* create(cocos2d::CCAction*, float) = m1 0x1ae384, imac 0x1f8c00;

    virtual ~CCDeccelAmplitude() = m1 0x1ae498, imac 0x1f8d00;

    bool initWithAction(cocos2d::CCAction*, float) = m1 0x1ae44c, imac 0x1f8cc0;

    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x1ae550, imac 0x1f8dc0;
    virtual void update(float) = m1 0x1ae584, imac 0x1f8df0;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x1ae5d8, imac 0x1f8e50;
}

[[link(win, android)]]
class cocos2d::CCGrid3DAction : cocos2d::CCGridAction {
    cocos2d::ccVertex3F vertex(cocos2d::CCPoint const&) = m1 0x1adae0, imac 0x1f83c0;
    cocos2d::ccVertex3F originalVertex(cocos2d::CCPoint const&) = m1 0x1adb10, imac 0x1f83f0;
    void setVertex(cocos2d::CCPoint const&, cocos2d::ccVertex3F const&) = m1 0x1adb40, imac 0x1f8420;

    virtual cocos2d::CCGridBase* getGrid() = m1 0x1adad8, imac 0x1f83b0;
}

[[link(win, android)]]
class cocos2d::CCGridAction : cocos2d::CCActionInterval {
    static cocos2d::CCGridAction* create(float, cocos2d::CCSize const&) = m1 0x1ad7bc, imac 0x1f80b0;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x1ad9d0, imac 0x1f82a0;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x1ad8e0, imac 0x1f81c0;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x1ad9cc, imac 0x1f8290;
    virtual bool initWithDuration(float, cocos2d::CCSize const&) = m1 0x1ad89c, imac 0x1f8180;
    virtual cocos2d::CCGridBase* getGrid() = m1 0x1ad9c4, imac 0x1f8280;
}

[[link(win, android)]]
class cocos2d::CCReuseGrid : cocos2d::CCActionInstant {
    static cocos2d::CCReuseGrid* create(int) = m1 0x1ae768, imac 0x1f8fd0;

    bool initWithTimes(int) = m1 0x1ae7d8, imac 0x1f9040;

    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x1ae7e4, imac 0x1f9050;
}

[[link(win, android)]]
class cocos2d::CCStopGrid : cocos2d::CCActionInstant {
    static cocos2d::CCStopGrid* create() = m1 0x1ae700, imac 0x1f8f60;

    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x1ae6b4, imac 0x1f8f20;
}

[[link(win, android)]]
class cocos2d::CCTiledGrid3DAction : cocos2d::CCGridAction {
    static cocos2d::CCTiledGrid3DAction* create(float, cocos2d::CCSize const&) = m1 0x1adc28, imac 0x1f84f0;

    cocos2d::ccQuad3 tile(cocos2d::CCPoint const&) = m1 0x1adb80, imac 0x1f8460;
    cocos2d::ccQuad3 originalTile(cocos2d::CCPoint const&) = m1 0x1adbb8, imac 0x1f8490;
    void setTile(cocos2d::CCPoint const&, cocos2d::ccQuad3 const&) = m1 0x1adbf0, imac 0x1f84c0;

    virtual cocos2d::CCGridBase* getGrid() = m1 0x1adb78, imac 0x1f8450;
}

[[link(win, android)]]
class cocos2d::CCFlipX3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCFlipX3D* create(float) = m1 0x216ca8, imac 0x26b610;

    virtual bool initWithDuration(float) = m1 0x216da0, imac 0x26b700;
    virtual bool initWithSize(cocos2d::CCSize const&, float) = m1 0x216df0, imac 0x26b750;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x216e10, imac 0x26b780;
    virtual void update(float) = m1 0x216f28, imac 0x26b8b0;
}

[[link(win, android)]]
class cocos2d::CCFlipY3D : cocos2d::CCFlipX3D {
    static cocos2d::CCFlipY3D* create(float) = m1 0x21718c, imac 0x26bb70;

    virtual void update(float) = m1 0x21739c, imac 0x26bd90;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x217284, imac 0x26bc60;
}

[[link(win, android)]]
class cocos2d::CCLens3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCLens3D* create(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float) = m1 0x217600, imac 0x26c070;

    void setPosition(cocos2d::CCPoint const&) = m1 0x2177ec, imac 0x26c260;
    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float) = m1 0x21774c, imac 0x26c1c0;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x21783c, imac 0x26c2a0;
    virtual void update(float) = m1 0x2179cc, imac 0x26c450;
}

[[link(win, android)]]
class cocos2d::CCLiquid : cocos2d::CCGrid3DAction {
    static cocos2d::CCLiquid* create(float, cocos2d::CCSize const&, unsigned int, float) = m1 0x2183e4, imac 0x26cf60;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float) = m1 0x2184e8, imac 0x26d060;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x21852c, imac 0x26d0a0;
    virtual void update(float) = m1 0x218660, imac 0x26d1f0;
}

[[link(win, android)]]
class cocos2d::CCRipple3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCRipple3D* create(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float) = m1 0x217b9c, imac 0x26c690;

    void setPosition(cocos2d::CCPoint const&) = m1 0x217d30, imac 0x26c830;
    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float) = m1 0x217cc4, imac 0x26c7c0;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x217d38, imac 0x26c840;
    virtual void update(float) = m1 0x217e8c, imac 0x26c9c0;
}

[[link(win, android)]]
class cocos2d::CCShaky3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCShaky3D* create(float, cocos2d::CCSize const&, int, bool) = m1 0x218018, imac 0x26cb90;

    bool initWithDuration(float, cocos2d::CCSize const&, int, bool) = m1 0x218114, imac 0x26cc80;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x218150, imac 0x26ccb0;
    virtual void update(float) = m1 0x218274, imac 0x26cde0;
}

[[link(win, android)]]
class cocos2d::CCTwirl : cocos2d::CCGrid3DAction {
    static cocos2d::CCTwirl* create(float, cocos2d::CCSize const&, cocos2d::CCPoint, unsigned int, float) = m1 0x218c18, imac 0x26d830;

    void setPosition(cocos2d::CCPoint const&) = m1 0x218dac, imac 0x26d9c0;
    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint, unsigned int, float) = m1 0x218d48, imac 0x26d960;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x218db4, imac 0x26d9d0;
    virtual void update(float) = m1 0x218f28, imac 0x26db60;
}

[[link(win, android)]]
class cocos2d::CCWaves : cocos2d::CCGrid3DAction {
    static cocos2d::CCWaves* create(float, cocos2d::CCSize const&, unsigned int, float, bool, bool) = m1 0x2187d4, imac 0x26d370;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float, bool, bool) = m1 0x2188e0, imac 0x26d480;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x21893c, imac 0x26d4e0;
    virtual void update(float) = m1 0x218a8c, imac 0x26d650;
}

[[link(win, android)]]
class cocos2d::CCWaves3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCWaves3D* create(float, cocos2d::CCSize const&, unsigned int, float) = m1 0x2168ec, imac 0x26b210;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float) = m1 0x2169f0, imac 0x26b310;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x216a34, imac 0x26b350;
    virtual void update(float) = m1 0x216b68, imac 0x26b4a0;
}

[[link(win, android)]]
class cocos2d::CCFlipX : cocos2d::CCActionInstant {
    static cocos2d::CCFlipX* create(bool) = m1 0x6a9ef8, imac 0x796d70;

    bool initWithFlipX(bool) = m1 0x6a9f58, imac 0x796dd0;

    virtual void update(float) = m1 0x6a9f64, imac 0x796de0;
    virtual cocos2d::CCFiniteTimeAction* reverse() = m1 0x6a9f74, imac 0x796e00;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6a9fd8, imac 0x796e60;
}

[[link(win, android)]]
class cocos2d::CCFlipY : cocos2d::CCActionInstant {
    static cocos2d::CCFlipY* create(bool) = m1 0x6aa0b8, imac 0x796f20;

    bool initWithFlipY(bool) = m1 0x6aa118, imac 0x796f80;

    virtual void update(float) = m1 0x6aa124, imac 0x796f90;
    virtual cocos2d::CCFiniteTimeAction* reverse() = m1 0x6aa134, imac 0x796fb0;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6aa198, imac 0x797010;
}

[[link(win, android)]]
class cocos2d::CCPlace : cocos2d::CCActionInstant {
    static cocos2d::CCPlace* create(cocos2d::CCPoint const&) = m1 0x6aa278, imac 0x7970d0;

    bool initWithPosition(cocos2d::CCPoint const&) = m1 0x6aa2fc, imac 0x797170;

    virtual void update(float) = m1 0x6aa400, imac 0x797280;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6aa318, imac 0x797190;
}

[[link(win, android)]]
class cocos2d::CCToggleVisibility : cocos2d::CCActionInstant {
    static cocos2d::CCToggleVisibility* create() = m1 0x6a9be0, imac 0x796a90;

    virtual void update(float) = m1 0x6a9c38, imac 0x796ae0;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6a9c74, imac 0x796b10;
}

[[link(win, android)]]
class cocos2d::CCReverseTime : cocos2d::CCActionInterval {
    static cocos2d::CCReverseTime* create(cocos2d::CCFiniteTimeAction*) = m1 0x334ff8, imac 0x3a8ce0;

    CCReverseTime() = m1 0x335208, imac 0x3a8f20;
    virtual ~CCReverseTime() = m1 0x335230, imac 0x3a8f50;

    bool initWithAction(cocos2d::CCFiniteTimeAction*) = m1 0x3350a4, imac 0x3a8da0;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x335100, imac 0x3a8e00;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3352e8, imac 0x3a9010;
    virtual void stop() = m1 0x335328, imac 0x3a9050;
    virtual void update(float) = m1 0x335358, imac 0x3a9080;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x335378, imac 0x3a90b0;
}

[[link(win, android)]]
class cocos2d::CCTargetedAction : cocos2d::CCActionInterval {
    static cocos2d::CCTargetedAction* create(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*) = m1 0x335e84, imac 0x3a9da0;

    CCTargetedAction() = m1 0x335d80, imac 0x3a9c80;
    virtual ~CCTargetedAction() = m1 0x335da8, imac 0x3a9cb0;

    bool initWithTarget(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*) = m1 0x335f28, imac 0x3a9e50;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x335f94, imac 0x3a9ec0;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3360a0, imac 0x3a9fe0;
    virtual void stop() = m1 0x3360d8, imac 0x3aa010;
    virtual void update(float) = m1 0x3360e8, imac 0x3aa020;
}

[[link(win, android)]]
class cocos2d::CCTintBy : cocos2d::CCActionInterval {
    static cocos2d::CCTintBy* create(float, short, short, short) = m1 0x334aa8, imac 0x3a8710;

    bool initWithDuration(float, short, short, short) = m1 0x334b58, imac 0x3a87e0;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x334b88, imac 0x3a8820;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x334c90, imac 0x3a8940;
    virtual void update(float) = m1 0x334d08, imac 0x3a89b0;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x334dd8, imac 0x3a8a80;
}

[[link(win, android)]]
class cocos2d::CCPageTurn3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCPageTurn3D* create(float, cocos2d::CCSize const&) = m1 0x296198, imac 0x2fdf50;

    virtual void update(float) = m1 0x296278, imac 0x2fe030;
}

[[link(win, android)]]
class cocos2d::CCProgressFromTo : cocos2d::CCActionInterval {
    static cocos2d::CCProgressFromTo* create(float, float, float) = m1 0x3a01dc, imac 0x4251a0;

    bool initWithDuration(float, float, float) = m1 0x3a0278, imac 0x425250;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x3a02b0, imac 0x425290;
    virtual cocos2d::CCActionInterval* reverse() = m1 0x3a03a0, imac 0x425390;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3a0434, imac 0x425440;
    virtual void update(float) = m1 0x3a0438, imac 0x425450;
}

[[link(win, android)]]
class cocos2d::CCProgressTo : cocos2d::CCActionInterval {
    static cocos2d::CCProgressTo* create(float, float) = m1 0x39ffd0, imac 0x424f50;

    bool initWithDuration(float, float) = m1 0x3a0060, imac 0x424ff0;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x3a0094, imac 0x425020;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x3a0184, imac 0x425130;
    virtual void update(float) = m1 0x3a01c4, imac 0x425170;
}

[[link(win, android)]]
class cocos2d::CCFadeOutBLTiles : cocos2d::CCFadeOutTRTiles {
    static cocos2d::CCFadeOutBLTiles* create(float, cocos2d::CCSize const&) = m1 0x6b35b8, imac 0x7a1270;

    virtual float testFunc(cocos2d::CCSize const&, float) = m1 0x6b3698, imac 0x7a1350;
}

[[link(win, android)]]
class cocos2d::CCFadeOutDownTiles : cocos2d::CCFadeOutUpTiles {
    static cocos2d::CCFadeOutDownTiles* create(float, cocos2d::CCSize const&) = m1 0x6b3940, imac 0x7a1600;

    virtual float testFunc(cocos2d::CCSize const&, float) = m1 0x6b3a20, imac 0x7a16e0;
}

[[link(win, android)]]
class cocos2d::CCFadeOutTRTiles : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCFadeOutTRTiles* create(float, cocos2d::CCSize const&) = m1 0x6b31ac, imac 0x7a0e40;

    void turnOnTile(cocos2d::CCPoint const&) = m1 0x6b3314, imac 0x7a0fa0;
    void turnOffTile(cocos2d::CCPoint const&) = m1 0x6b3354, imac 0x7a0fe0;

    virtual float testFunc(cocos2d::CCSize const&, float) = m1 0x6b328c, imac 0x7a0f20;
    virtual void transformTile(cocos2d::CCPoint const&, float) = m1 0x6b3380, imac 0x7a1010;
    virtual void update(float) = m1 0x6b3440, imac 0x7a10f0;
}

[[link(win, android)]]
class cocos2d::CCFadeOutUpTiles : cocos2d::CCFadeOutTRTiles {
    static cocos2d::CCFadeOutUpTiles* create(float, cocos2d::CCSize const&) = m1 0x6b372c, imac 0x7a13e0;

    virtual float testFunc(cocos2d::CCSize const&, float) = m1 0x6b380c, imac 0x7a14c0;
    virtual void transformTile(cocos2d::CCPoint const&, float) = m1 0x6b388c, imac 0x7a1540;
}

[[link(win, android)]]
class cocos2d::CCJumpTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCJumpTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float) = m1 0x6b44cc, imac 0x7a21c0;

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float) = m1 0x6b45d0, imac 0x7a22c0;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b4614, imac 0x7a2300;
    virtual void update(float) = m1 0x6b4748, imac 0x7a2450;
}

[[link(win, android)]]
class cocos2d::CCShakyTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCShakyTiles3D* create(float, cocos2d::CCSize const&, int, bool) = m1 0x6b1e70, imac 0x79fad0;

    virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool) = m1 0x6b1f6c, imac 0x79fbc0;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b1fa8, imac 0x79fbf0;
    virtual void update(float) = m1 0x6b20c8, imac 0x79fd20;
}

[[link(win, android)]]
class cocos2d::CCShatteredTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCShatteredTiles3D* create(float, cocos2d::CCSize const&, int, bool) = m1 0x6b2388, imac 0x79ffb0;

    virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool) = m1 0x6b2488, imac 0x7a00a0;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b24c8, imac 0x7a00e0;
    virtual void update(float) = m1 0x6b25e8, imac 0x7a0210;
}

[[link(win, android)]]
class cocos2d::CCShuffleTiles : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCShuffleTiles* create(float, cocos2d::CCSize const&, unsigned int) = m1 0x6b28d0, imac 0x7a04b0;

    virtual ~CCShuffleTiles() = m1 0x6b2b14, imac 0x7a0700;

    void shuffle(unsigned int*, unsigned int) = m1 0x6b2bfc, imac 0x7a0800;
    cocos2d::CCSize getDelta(cocos2d::CCSize const&) = m1 0x6b2c58, imac 0x7a0850;
    void placeTile(cocos2d::CCPoint const&, cocos2d::Tile*) = m1 0x6b2ce4, imac 0x7a08f0;

    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int) = m1 0x6b29c8, imac 0x7a05a0;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x6b2d90, imac 0x7a09a0;
    virtual void update(float) = m1 0x6b3050, imac 0x7a0cb0;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b29f8, imac 0x7a05d0;
}

[[link(win, android)]]
class cocos2d::CCSplitCols : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCSplitCols* create(float, unsigned int) = m1 0x6b4c4c, imac 0x7a29c0;

    virtual bool initWithDuration(float, unsigned int) = m1 0x6b4d40, imac 0x7a2ab0;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b4d94, imac 0x7a2b00;
    virtual void update(float) = m1 0x6b4ef8, imac 0x7a2c70;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x6b4eb8, imac 0x7a2c30;
}

[[link(win, android)]]
class cocos2d::CCSplitRows : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCSplitRows* create(float, unsigned int) = m1 0x6b48bc, imac 0x7a2610;

    virtual bool initWithDuration(float, unsigned int) = m1 0x6b49b0, imac 0x7a2700;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b4a04, imac 0x7a2750;
    virtual void update(float) = m1 0x6b4b68, imac 0x7a28c0;
    virtual void startWithTarget(cocos2d::CCNode*) = m1 0x6b4b28, imac 0x7a2880;
}

[[link(win, android)]]
class cocos2d::CCWavesTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCWavesTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float) = m1 0x6b412c, imac 0x7a1e00;

    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float) = m1 0x6b4230, imac 0x7a1f00;
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x6b4274, imac 0x7a1f40;
    virtual void update(float) = m1 0x6b4394, imac 0x7a2070;
}

[[link(win, android)]]
class cocos2d::CCAtlasNode : cocos2d::CCNodeRGBA, cocos2d::CCTextureProtocol {
    static cocos2d::CCAtlasNode* create(char const*, unsigned int, unsigned int, unsigned int) = m1 0x2ac110, imac 0x3165b0;

    CCAtlasNode() = m1 0x2abf98, imac 0x3163b0;
    virtual ~CCAtlasNode() = m1 0x2ac028, imac 0x316490;

    bool initWithTileFile(char const*, unsigned int, unsigned int, unsigned int) = m1 0x2ac204, imac 0x3166a0;
    bool initWithTexture(cocos2d::CCTexture2D*, unsigned int, unsigned int, unsigned int) = m1 0x2ac264, imac 0x316700;
    void calculateMaxItems() = m1 0x2ac474, imac 0x316920;
    void updateBlendFunc() = m1 0x2ac3fc, imac 0x3168b0;
    void updateOpacityModifyRGB() = m1 0x2ac440, imac 0x3168f0;
    void setIgnoreContentScaleFactor(bool) = m1 0x2ac8a8, imac 0x316d60;

    virtual cocos2d::CCTextureAtlas* getTextureAtlas() = m1 0x2aca08, imac 0x316ef0;
    virtual void setTextureAtlas(cocos2d::CCTextureAtlas*) = m1 0x2ac9cc, imac 0x316eb0;
    virtual cocos2d::ccBlendFunc getBlendFunc() = m1 0x2ac8b0, imac 0x316d70;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = m1 0x2ac8c4, imac 0x316d90;
    virtual unsigned int getQuadsToDraw() = m1 0x2aca10, imac 0x316f00;
    virtual void setQuadsToDraw(unsigned int) = m1 0x2aca18, imac 0x316f10;
    virtual void updateAtlasValues() = m1 0x2ac4f8, imac 0x3169b0;
    virtual void draw() = m1 0x2ac4fc, imac 0x3169c0;
    virtual cocos2d::CCTexture2D* getTexture() = m1 0x2ac9ac, imac 0x316e80;
    virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x2ac8d8, imac 0x316db0;
    virtual bool isOpacityModifyRGB() = m1 0x2ac898, imac 0x316d40;
    virtual void setOpacityModifyRGB(bool) = m1 0x2ac7d0, imac 0x316c90;
    virtual cocos2d::ccColor3B const& getColor() = m1 0x2ac608, imac 0x316ab0;
    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x2ac634, imac 0x316af0;
    virtual void setOpacity(unsigned char) = m1 0x2ac740, imac 0x316c00;
}

[[link(win, android)]]
class cocos2d::CCAutoreleasePool : cocos2d::CCObject {
    CCAutoreleasePool() = m1 0x366c48, imac 0x3e4940, ios 0x1b407c;
    virtual ~CCAutoreleasePool() = m1 0x366ccc, imac 0x3e49c0, ios inline {
        CC_SAFE_DELETE(m_pManagedObjectArray);
    }

    void addObject(cocos2d::CCObject*) = m1 0x366d9c, imac 0x3e4a80, ios inline {
        m_pManagedObjectArray->addObject(p0);
        p0->m_uAutoReleaseCount++;
        p0->release();
    }
    void removeObject(cocos2d::CCObject*) = m1 0x366dd0, imac 0x3e4ab0, ios inline {
        for (int i = 0; i < p0->m_uAutoReleaseCount; i++) {
            m_pManagedObjectArray->removeObject(p0, false);
        }
    }
    void clear() = m1 0x366e24, imac 0x3e4b00, ios 0x1b4180;
}

[[link(win, android)]]
class cocos2d::CCDataVisitor {
    virtual void visit(cocos2d::CCBool const*) = m1 0x40c130, imac 0x4a1d30, ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCInteger const*) = m1 0x40c13c, imac 0x4a1d40, ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCFloat const*) = m1 0x40c148, imac 0x4a1d50, ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCDouble const*) = m1 0x40c154, imac 0x4a1d60, ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCString const*) = m1 0x40c160, imac 0x4a1d70, ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCArray const*) = m1 0x40c16c, imac 0x4a1d80, ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCDictionary const*) = m1 0x40c178, imac 0x4a1d90, ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCSet const*) = m1 0x40c184, imac 0x4a1da0, ios inline {
        return visitObject(p0);
    }
}

[[link(win, android)]]
class cocos2d::CCPrettyPrinter : cocos2d::CCDataVisitor {
    [[since("4.11.0")]]
    CCPrettyPrinter(int) = win inline, m1 0x40c190, imac 0x4a1db0, ios 0x24d6c4 {
        setIndentLevel(p0);
    }

    void setIndentLevel(int) = m1 0x40c248, imac 0x4a1e50, ios 0x24d738;

    virtual void clear() = m1 0x40c384, imac 0x4a1f60, ios 0x24d7bc;
    virtual gd::string getResult() = m1 0x40c3a8, imac 0x4a1f90, ios 0x24d7e0;
    virtual void visitObject(cocos2d::CCObject const*) = m1 0x40c3d4, imac 0x4a1fd0, ios 0x24d80c;
    virtual void visit(cocos2d::CCBool const*) = m1 0x40c454, imac 0x4a2050, ios 0x24d88c;
    virtual void visit(cocos2d::CCInteger const*) = m1 0x40c4e4, imac 0x4a20d0, ios 0x24d91c;
    virtual void visit(cocos2d::CCFloat const*) = m1 0x40c568, imac 0x4a2150, ios 0x24d9a0;
    virtual void visit(cocos2d::CCDouble const*) = m1 0x40c5f0, imac 0x4a21d0, ios 0x24da28;
    virtual void visit(cocos2d::CCString const*) = m1 0x40c674, imac 0x4a2250, ios 0x24daac;
    virtual void visit(cocos2d::CCArray const*) = m1 0x40c6a0, imac 0x4a2280, ios 0x24dad8;
    virtual void visit(cocos2d::CCDictionary const*) = m1 0x40cb14, imac 0x4a27a0, ios 0x24ddb8;
    virtual void visit(cocos2d::CCSet const*) = m1 0x40cee8, imac 0x4a2c50, ios 0x24e038;
}

[[link(win, android)]]
class cocos2d::CCDictElement {
    private CCDictElement(char const*, cocos2d::CCObject*) = win inline, m1 0x292134, imac 0x2f9960, ios inline {
        m_iKey = 0;
        auto pStart = p0;
        int len = strlen(p0);
        if (len > MAX_KEY_LEN) pStart = p0 + len - MAX_KEY_LEN;
        strncpy(m_szKey, pStart, std::min(len, MAX_KEY_LEN));
        m_pObject = p1;
        memset(&hh, 0, sizeof(hh));
    }
    private CCDictElement(intptr_t, cocos2d::CCObject*) = win inline, m1 0x2921b8, imac 0x2f9a20, ios inline {
        m_szKey[0] = '\0';
        m_iKey = p0;
        m_pObject = p1;
        memset(&hh, 0, sizeof(hh));
    }
    ~CCDictElement() = m1 0x2921d4, imac 0x2f9a60, ios inline {}
}

[[link(win, android)]]
class cocos2d::CCPointArray : cocos2d::CCObject {
    static cocos2d::CCPointArray* create(unsigned int) = m1 0x261e98, imac 0x2bd380;

    CCPointArray() = m1 0x2623b8, imac 0x2bd900;
    virtual ~CCPointArray() = m1 0x262210, imac 0x2bd770;

    bool initWithCapacity(unsigned int) = m1 0x261f28, imac 0x2bd420;
    void addControlPoint(cocos2d::CCPoint) = m1 0x2623e4, imac 0x2bd940;
    void insertControlPoint(cocos2d::CCPoint&, unsigned int) = m1 0x262588, imac 0x2bdb30;
    void replaceControlPoint(cocos2d::CCPoint&, unsigned int) = m1 0x2629cc, imac 0x2be020;
    cocos2d::CCPoint getControlPointAtIndex(unsigned int) = m1 0x262988, imac 0x2bdfd0;
    void removeControlPointAtIndex(unsigned int) = m1 0x262a04, imac 0x2be050;
    unsigned int count() = m1 0x262a6c, imac 0x2be0b0;
    cocos2d::CCPointArray* reverse() = m1 0x262a80, imac 0x2be0d0;
    void reverseInline() = m1 0x262d10, imac 0x2be3d0;
    gd::vector<cocos2d::CCPoint*> const* getControlPoints() = m1 0x2623dc, imac 0x2bd930;
    void setControlPoints(gd::vector<cocos2d::CCPoint*>*) = m1 0x26218c, imac 0x2bd6f0;

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x261f5c, imac 0x2bd450;
}

[[link(win, android)]]
class cocos2d::CCGrid3D : cocos2d::CCGridBase {
    static cocos2d::CCGrid3D* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = m1 0x4352a8, imac 0x4d0b80;
    static cocos2d::CCGrid3D* create(cocos2d::CCSize const&) = m1 0x4353cc, imac 0x4d0ca0;

    CCGrid3D() = m1 0x435498, imac 0x4d0d50;
    virtual ~CCGrid3D() = m1 0x435500, imac 0x4d0db0;

    cocos2d::ccVertex3F vertex(cocos2d::CCPoint const&) = m1 0x435abc, imac 0x4d1580;
    cocos2d::ccVertex3F originalVertex(cocos2d::CCPoint const&) = m1 0x435af0, imac 0x4d15c0;
    void setVertex(cocos2d::CCPoint const&, cocos2d::ccVertex3F const&) = m1 0x435b24, imac 0x4d1600;

    virtual void blit() = m1 0x4355ac, imac 0x4d0ea0;
    virtual void reuse() = m1 0x435b68, imac 0x4d1650;
    virtual void calculateVertexPoints() = m1 0x435650, imac 0x4d0f40;
}

[[link(win, android)]]
class cocos2d::CCGridBase : cocos2d::CCObject {
    static cocos2d::CCGridBase* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = m1 0x434e6c, imac 0x4d0700;
    static cocos2d::CCGridBase* create(cocos2d::CCSize const&) = m1 0x434cb4, imac 0x4d0550;

    virtual ~CCGridBase() = m1 0x434ffc, imac 0x4d0890;

    void setActive(bool) = m1 0x4350d8, imac 0x4d0980;
    void setTextureFlipped(bool) = m1 0x435100, imac 0x4d09b0;
    bool initWithSize(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = m1 0x434f28, imac 0x4d07d0;
    bool initWithSize(cocos2d::CCSize const&) = m1 0x434d78, imac 0x4d0610;
    void beforeDraw() = m1 0x43519c, imac 0x4d0a60;
    void afterDraw(cocos2d::CCNode*) = m1 0x4351d0, imac 0x4d0a90;
    void set2DProjection() = m1 0x435120, imac 0x4d09d0;

    virtual void blit() = m1 0x43529c, imac 0x4d0b50;
    virtual void reuse() = m1 0x4352a0, imac 0x4d0b60;
    virtual void calculateVertexPoints() = m1 0x4352a4, imac 0x4d0b70;
}

[[link(win, android)]]
class cocos2d::CCTiledGrid3D : cocos2d::CCGridBase {
    static cocos2d::CCTiledGrid3D* create(cocos2d::CCSize const&, cocos2d::CCTexture2D*, bool) = m1 0x435d44, imac 0x4d1870;
    static cocos2d::CCTiledGrid3D* create(cocos2d::CCSize const&) = m1 0x435e00, imac 0x4d1930;

    CCTiledGrid3D() = m1 0x435c30, imac 0x4d1720;
    virtual ~CCTiledGrid3D() = m1 0x435c98, imac 0x4d1780;

    cocos2d::ccQuad3 tile(cocos2d::CCPoint const&) = m1 0x43624c, imac 0x4d2040;
    cocos2d::ccQuad3 originalTile(cocos2d::CCPoint const&) = m1 0x436210, imac 0x4d1ff0;
    void setTile(cocos2d::CCPoint const&, cocos2d::ccQuad3 const&) = m1 0x4361d4, imac 0x4d1fa0;

    virtual void blit() = m1 0x435ecc, imac 0x4d19e0;
    virtual void reuse() = m1 0x436288, imac 0x4d2090;
    virtual void calculateVertexPoints() = m1 0x435f70, imac 0x4d1a80;
}

[[link(win, android)]]
class cocos2d::extension::CCInvocation : cocos2d::CCObject {
    static cocos2d::extension::CCInvocation* create(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = m1 0x34e314, imac 0x3c5070, ios 0x214a80;

    [[since("4.11.0")]]
    CCInvocation(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, cocos2d::extension::CCControlEvent) = win inline, m1 0x34e3e8, imac 0x3c5140, ios inline {
        m_action = p1;
        m_target = p0;
        m_controlEvent = p2;
    }

    void invoke(cocos2d::CCObject*) = m1 0x34e438, imac 0x3c5190, ios 0x214b04;
}

[[link(win, android)]]
class cocos2d::extension::CCControlButton : cocos2d::extension::CCControl {
    static cocos2d::extension::CCControlButton* create(cocos2d::CCNode*, cocos2d::extension::CCScale9Sprite*) = m1 0x2d5f04, imac 0x3401e0;
    static cocos2d::extension::CCControlButton* create(gd::string, char const*, float) = m1 0x2d604c, imac 0x340380;
    static cocos2d::extension::CCControlButton* create(cocos2d::extension::CCScale9Sprite*) = m1 0x2d61ec, imac 0x340560;
    static cocos2d::extension::CCControlButton* create() = m1 0x2d7894, imac 0x341c40;

    CCControlButton() = m1 0x2d5858, imac 0x33f9f0;
    virtual ~CCControlButton() = m1 0x2d59a8, imac 0x33fbd0;

    bool doesAdjustBackgroundImage() = m1 0x2d6518, imac 0x3408d0;
    void setAdjustBackgroundImage(bool) = m1 0x2d5ef4, imac 0x3401c0;

    virtual void needsLayout() = m1 0x2d6de4, imac 0x341150;
    virtual void setEnabled(bool) = m1 0x2d62e8, imac 0x3406c0;
    virtual void setSelected(bool) = m1 0x2d6314, imac 0x3406e0;
    virtual void setHighlighted(bool) = m1 0x2d6340, imac 0x340700;
    virtual cocos2d::CCSize getPreferredSize() = m1 0x2d650c, imac 0x3408b0;
    virtual void setPreferredSize(cocos2d::CCSize) = m1 0x2d6458, imac 0x3407f0;
    virtual bool getZoomOnTouchDown() = m1 0x2d6450, imac 0x3407e0;
    virtual void setZoomOnTouchDown(bool) = m1 0x2d6448, imac 0x3407d0;
    virtual cocos2d::CCPoint getLabelAnchorPoint() = m1 0x2d6520, imac 0x3408e0;
    virtual void setLabelAnchorPoint(cocos2d::CCPoint) = m1 0x2d652c, imac 0x340900;
    virtual unsigned char getOpacity() = m1 0x2d7744, imac 0x341ab0;
    virtual void setOpacity(unsigned char) = m1 0x2d7698, imac 0x3419f0;
    virtual cocos2d::ccColor3B const& getColor() = m1 0x2d7800, imac 0x341b90;
    virtual void setColor(cocos2d::ccColor3B const&) = m1 0x2d7754, imac 0x341ad0;
    virtual void setMargins(int, int) = m1 0x2d62d4, imac 0x3406a0;
    virtual bool init() = m1 0x2d5a8c, imac 0x33fd50;
    virtual bool initWithLabelAndBackgroundSprite(cocos2d::CCNode*, cocos2d::extension::CCScale9Sprite*) = m1 0x2d5adc, imac 0x33fda0;
    virtual bool initWithTitleAndFontNameAndFontSize(gd::string, char const*, float) = m1 0x2d5ffc, imac 0x340330;
    virtual bool initWithBackgroundSprite(cocos2d::extension::CCScale9Sprite*) = m1 0x2d61a0, imac 0x340510;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2d7294, imac 0x341650;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2d7460, imac 0x3417f0;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2d75cc, imac 0x341930;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2d7810, imac 0x341bb0;
    virtual cocos2d::CCString* getTitleForState(unsigned int) = m1 0x2d6574, imac 0x340940;
    virtual void setTitleForState(cocos2d::CCString*, unsigned int) = m1 0x2d6620, imac 0x3409d0;
    virtual cocos2d::ccColor3B const getTitleColorForState(unsigned int) = m1 0x2d6698, imac 0x340a40;
    virtual void setTitleColorForState(cocos2d::ccColor3B, unsigned int) = m1 0x2d66f4, imac 0x340aa0;
    virtual cocos2d::CCNode* getTitleLabelForState(unsigned int) = m1 0x2d67bc, imac 0x340b60;
    virtual void setTitleLabelForState(cocos2d::CCNode*, unsigned int) = m1 0x2d67fc, imac 0x340ba0;
    virtual void setTitleTTFForState(char const*, unsigned int) = m1 0x2d68e4, imac 0x340c70;
    virtual char const* getTitleTTFForState(unsigned int) = m1 0x2d699c, imac 0x340d10;
    virtual void setTitleTTFSizeForState(float, unsigned int) = m1 0x2d6a04, imac 0x340d80;
    virtual float getTitleTTFSizeForState(unsigned int) = m1 0x2d6a78, imac 0x340e00;
    virtual void setTitleBMFontForState(char const*, unsigned int) = m1 0x2d6adc, imac 0x340e70;
    virtual char const* getTitleBMFontForState(unsigned int) = m1 0x2d6b90, imac 0x340f10;
    virtual cocos2d::extension::CCScale9Sprite* getBackgroundSpriteForState(unsigned int) = m1 0x2d6bf8, imac 0x340f80;
    virtual void setBackgroundSpriteForState(cocos2d::extension::CCScale9Sprite*, unsigned int) = m1 0x2d6c38, imac 0x340fc0;
    virtual void setBackgroundSpriteFrameForState(cocos2d::CCSpriteFrame*, unsigned int) = m1 0x2d6da8, imac 0x341120;
}

[[link(win, android)]]
class cocos2d::extension::CCControlPotentiometer : cocos2d::extension::CCControl {
    static cocos2d::extension::CCControlPotentiometer* create(char const*, char const*, char const*) = m1 0x2dbe08, imac 0x3471e0;

    CCControlPotentiometer() = m1 0x2dbb48, imac 0x346e00;
    virtual ~CCControlPotentiometer() = m1 0x2dbbc8, imac 0x346eb0;

    bool initWithTrackSprite_ProgressTimer_ThumbSprite(cocos2d::CCSprite*, cocos2d::CCProgressTimer*, cocos2d::CCSprite*) = m1 0x2dbf28, imac 0x347320;
    void setValue(float) = m1 0x2dc0a0, imac 0x347490;
    float getValue() = m1 0x2dc17c, imac 0x347570;
    void setMinimumValue(float) = m1 0x2dc184, imac 0x347580;
    float getMinimumValue() = m1 0x2dc210, imac 0x347620;
    void setMaximumValue(float) = m1 0x2dc218, imac 0x347630;
    float getMaximumValue() = m1 0x2dc2b0, imac 0x3476e0;
    void potentiometerBegan(cocos2d::CCPoint) = m1 0x2dc4b0, imac 0x3478e0;
    void potentiometerMoved(cocos2d::CCPoint) = m1 0x2dc630, imac 0x347a40;
    void potentiometerEnded(cocos2d::CCPoint) = m1 0x2dc888, imac 0x347ca0;
    float distanceBetweenPointAndPoint(cocos2d::CCPoint, cocos2d::CCPoint) = m1 0x2dc3b0, imac 0x3477f0;
    float angleInDegreesBetweenLineFromPoint_toPoint_toLineFromPoint_toPoint(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::CCPoint) = m1 0x2dc930, imac 0x347d40;

    virtual void setEnabled(bool) = m1 0x2dc12c, imac 0x347520;
    virtual bool isTouchInside(cocos2d::CCTouch*) = m1 0x2dc2b8, imac 0x3476f0;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2dc3d0, imac 0x347820;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2dc5e4, imac 0x3479f0;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x2dc828, imac 0x347c50;
}

[[link(win, android)]]
class cocos2d::extension::CCControlSlider : cocos2d::extension::CCControl {
    static cocos2d::extension::CCControlSlider* create(char const*, char const*, char const*) = m1 0x31bdc0, imac 0x38c9e0;
    static cocos2d::extension::CCControlSlider* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = m1 0x31be90, imac 0x38caf0;

    CCControlSlider() = m1 0x31bb68, imac 0x38c650;
    virtual ~CCControlSlider() = m1 0x31bbc0, imac 0x38c6f0;

    cocos2d::CCPoint locationFromTouch(cocos2d::CCTouch*) = m1 0x31c3bc, imac 0x38d090;
    void sliderBegan(cocos2d::CCPoint) = m1 0x31c5e4, imac 0x38d2a0;
    void sliderMoved(cocos2d::CCPoint) = m1 0x31c7a8, imac 0x38d480;
    void sliderEnded(cocos2d::CCPoint) = m1 0x31c924, imac 0x38d600;
    float valueForLocation(cocos2d::CCPoint) = m1 0x31caf8, imac 0x38d820;

    virtual void setValue(float) = m1 0x31c250, imac 0x38cef0;
    virtual void setMinimumValue(float) = m1 0x31c2a4, imac 0x38cf40;
    virtual void setMaximumValue(float) = m1 0x31c2d4, imac 0x38cf90;
    virtual void setEnabled(bool) = m1 0x31c200, imac 0x38cea0;
    virtual bool isTouchInside(cocos2d::CCTouch*) = m1 0x31c304, imac 0x38cfe0;
    virtual bool initWithSprites(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = m1 0x31bf44, imac 0x38cbe0;
    virtual void needsLayout() = m1 0x31ca04, imac 0x38d6f0;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x31c454, imac 0x38d120;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x31c6a4, imac 0x38d370;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x31c838, imac 0x38d520;
}

[[link(win, android)]]
class cocos2d::extension::CCControlStepper : cocos2d::extension::CCControl {
    static cocos2d::extension::CCControlStepper* create(cocos2d::CCSprite*, cocos2d::CCSprite*) = m1 0x31fa8c, imac 0x390f70;

    CCControlStepper() = m1 0x31f564, imac 0x390920;
    virtual ~CCControlStepper() = m1 0x31f5d8, imac 0x3909d0;

    bool initWithMinusSpriteAndPlusSprite(cocos2d::CCSprite*, cocos2d::CCSprite*) = m1 0x31f69c, imac 0x390b20;
    void updateLayoutUsingTouchLocation(cocos2d::CCPoint) = m1 0x31fe38, imac 0x3913a0;
    void startAutorepeat() = m1 0x31fd78, imac 0x3912c0;
    void stopAutorepeat() = m1 0x31fda8, imac 0x3912f0;

    virtual void setWraps(bool) = m1 0x31fb80, imac 0x391070;
    virtual void setMinimumValue(double) = m1 0x31fc0c, imac 0x3910e0;
    virtual void setMaximumValue(double) = m1 0x31fc20, imac 0x391110;
    virtual void setValue(double) = m1 0x31fc34, imac 0x391140;
    virtual double getValue() = m1 0x31fc44, imac 0x391160;
    virtual void setStepValue(double) = m1 0x31fc4c, imac 0x391170;
    virtual void setValueWithSendingEvent(double, bool) = m1 0x31fc5c, imac 0x391190;
    virtual bool isContinuous() = m1 0x31fc54, imac 0x391180;
    virtual void update(float) = m1 0x31fdb4, imac 0x391310;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x31ff78, imac 0x3914e0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x320138, imac 0x391690;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x320264, imac 0x3917c0;
}

[[link(win, android)]]
class cocos2d::extension::CCControlSwitch : cocos2d::extension::CCControl {
    static cocos2d::extension::CCControlSwitch* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = m1 0x323c00, imac 0x395780;
    static cocos2d::extension::CCControlSwitch* create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCLabelTTF*, cocos2d::CCLabelTTF*) = m1 0x323cf8, imac 0x395880;

    CCControlSwitch() = m1 0x3237c4, imac 0x395200;
    virtual ~CCControlSwitch() = m1 0x323818, imac 0x395290;

    bool initWithMaskSprite(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) = m1 0x323a14, imac 0x395570;
    bool initWithMaskSprite(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCLabelTTF*, cocos2d::CCLabelTTF*) = m1 0x323a20, imac 0x395590;
    void setOn(bool, bool) = m1 0x323e5c, imac 0x395a00;
    void setOn(bool) = m1 0x323dec, imac 0x395990;
    cocos2d::CCPoint locationFromTouch(cocos2d::CCTouch*) = m1 0x323f40, imac 0x395b00;

    virtual void setEnabled(bool) = m1 0x323f14, imac 0x395ac0;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x323f8c, imac 0x395b50;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x324058, imac 0x395c40;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x324108, imac 0x395d10;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x324220, imac 0x395e40;
}

[[link(win, android)]]
class cocos2d::extension::CCEditBox : cocos2d::extension::CCControlButton, cocos2d::CCIMEDelegate {
    static cocos2d::extension::CCEditBox* create(cocos2d::CCSize const&, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*, cocos2d::extension::CCScale9Sprite*) = m1 0x403630, imac 0x4973d0;

    CCEditBox() = m1 0x4033a4, imac 0x497010;
    virtual ~CCEditBox() = m1 0x40346c, imac 0x497140;

    bool initWithSizeAndBackgroundSprite(cocos2d::CCSize const&, cocos2d::extension::CCScale9Sprite*) = m1 0x4037b8, imac 0x4975a0;
    void setDelegate(cocos2d::extension::CCEditBoxDelegate*) = m1 0x40388c, imac 0x497660;
    cocos2d::extension::CCEditBoxDelegate* getDelegate() = m1 0x4038a0, imac 0x497680;
    void registerScriptEditBoxHandler(int) = m1 0x403f74, imac 0x497e10;
    void unregisterScriptEditBoxHandler() = m1 0x403588, imac 0x4972a0;
    void setText(char const*) = m1 0x4038a8, imac 0x497690;
    char const* getText() = m1 0x4038f4, imac 0x4976d0;
    void setFont(char const*, int) = m1 0x40392c, imac 0x497700;
    void setFontName(char const*) = m1 0x403990, imac 0x497760;
    void setFontSize(int) = m1 0x4039e4, imac 0x4977b0;
    void setFontColor(cocos2d::ccColor3B const&) = m1 0x403a30, imac 0x497810;
    void setPlaceholderFont(char const*, int) = m1 0x403a58, imac 0x497840;
    void setPlaceholderFontName(char const*) = m1 0x403abc, imac 0x4978a0;
    void setPlaceholderFontSize(int) = m1 0x403b14, imac 0x4978f0;
    void setPlaceholderFontColor(cocos2d::ccColor3B const&) = m1 0x403b64, imac 0x497950;
    void setPlaceHolder(char const*) = m1 0x403b8c, imac 0x497980;
    char const* getPlaceHolder() = m1 0x403bd8, imac 0x4979c0;
    void setInputMode(cocos2d::extension::EditBoxInputMode) = m1 0x403bf4, imac 0x4979f0;
    void setMaxLength(int) = m1 0x403c10, imac 0x497a20;
    int getMaxLength() = m1 0x403c2c, imac 0x497a50;
    void setInputFlag(cocos2d::extension::EditBoxInputFlag) = m1 0x403c34, imac 0x497a60;
    void setReturnType(cocos2d::extension::KeyboardReturnType) = m1 0x403c50, imac 0x497a90;
    void touchDownAction(cocos2d::CCObject*, cocos2d::extension::CCControlEvent) = m1 0x403620, imac 0x4973b0;

    virtual void setPosition(cocos2d::CCPoint const&) = m1 0x403c68, imac 0x497ab0;
    virtual void setVisible(bool) = m1 0x403cac, imac 0x497af0;
    virtual void setContentSize(cocos2d::CCSize const&) = m1 0x403cf0, imac 0x497b30;
    virtual void setAnchorPoint(cocos2d::CCPoint const&) = m1 0x403d34, imac 0x497b70;
    virtual void visit() = m1 0x403d78, imac 0x497bb0;
    virtual void onEnter() = m1 0x403db4, imac 0x497be0;
    virtual void onExit() = m1 0x403df0, imac 0x497c10;
    virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&) = m1 0x403e2c, imac 0x497c40;
    virtual void keyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&) = m1 0x403f14, imac 0x497d50;
    virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&) = m1 0x403f1c, imac 0x497d70;
    virtual void keyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&) = m1 0x403f6c, imac 0x497df0;
}

[[link(win, android)]]
class cocos2d::extension::CCScrollView : cocos2d::CCLayer {
    static cocos2d::extension::CCScrollView* create(cocos2d::CCSize, cocos2d::CCNode*) = m1 0x3677b8, imac 0x3e5570;
    static cocos2d::extension::CCScrollView* create() = m1 0x3679c8, imac 0x3e57a0;

    CCScrollView() = m1 0x367418, imac 0x3e50e0;
    virtual ~CCScrollView() = m1 0x367504, imac 0x3e5240;

    bool initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*) = m1 0x367864, imac 0x3e5600;
    void setContentOffset(cocos2d::CCPoint, bool) = m1 0x367d2c, imac 0x3e5b00;
    cocos2d::CCPoint getContentOffset() = m1 0x367bd4, imac 0x3e5990;
    void setContentOffsetInDuration(cocos2d::CCPoint, float) = m1 0x367ea0, imac 0x3e5c90;
    void setZoomScale(float) = m1 0x368040, imac 0x3e5e60;
    void setZoomScale(float, bool) = m1 0x3681b0, imac 0x3e5ff0;
    float getZoomScale() = m1 0x367c08, imac 0x3e59c0;
    void setZoomScaleInDuration(float, float) = m1 0x368254, imac 0x3e6070;
    cocos2d::CCPoint minContainerOffset() = m1 0x367f18, imac 0x3e5d00;
    cocos2d::CCPoint maxContainerOffset() = m1 0x367fa8, imac 0x3e5dc0;
    bool isNodeVisible(cocos2d::CCNode*) = m1 0x367b14, imac 0x3e58c0;
    void pause(cocos2d::CCObject*) = m1 0x367c18, imac 0x3e59e0;
    void resume(cocos2d::CCObject*) = m1 0x367c80, imac 0x3e5a50;
    void setViewSize(cocos2d::CCSize) = m1 0x367a48, imac 0x3e5800;
    cocos2d::CCNode* getContainer() = m1 0x3682f8, imac 0x3e6100;
    void setContainer(cocos2d::CCNode*) = m1 0x368300, imac 0x3e6110;
    void updateInset() = m1 0x3688bc, imac 0x3e6730;
    void relocateContainer(bool) = m1 0x3683b8, imac 0x3e61d0;
    void deaccelerateScrolling(float) = m1 0x36854c, imac 0x3e6370;
    void performedAnimatedScroll(float) = m1 0x368004, imac 0x3e5e20;
    void stoppedAnimatedScroll(cocos2d::CCNode*) = m1 0x367fb8, imac 0x3e5de0;
    void beforeDraw() = m1 0x368b64, imac 0x3e69e0;
    void afterDraw() = m1 0x368d98, imac 0x3e6c50;
    cocos2d::CCRect getViewRect() = m1 0x368c84, imac 0x3e6b30;
    void registerScriptHandler(int, int) = m1 0x369698, imac 0x3e7600;
    void unregisterScriptHandler(int) = m1 0x3676bc, imac 0x3e5430;
    int getScriptHandler(int) = m1 0x36980c, imac 0x3e7760;

    virtual bool init() = m1 0x367a78, imac 0x3e5830;
    virtual void registerWithTouchDispatcher() = m1 0x367ac0, imac 0x3e5870;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x368f8c, imac 0x3e6e30;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x3691f4, imac 0x3e70b0;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x369528, imac 0x3e7480;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x3695d4, imac 0x3e7540;
    virtual void setContentSize(cocos2d::CCSize const&) = m1 0x36887c, imac 0x3e66f0;
    virtual cocos2d::CCSize const& getContentSize() const = m1 0x36886c, imac 0x3e66d0;
    virtual void visit() = m1 0x368dfc, imac 0x3e6cc0;
    virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x3689f0, imac 0x3e68c0;
    virtual void addChild(cocos2d::CCNode*, int) = m1 0x368aac, imac 0x3e6950;
    virtual void addChild(cocos2d::CCNode*) = m1 0x368b00, imac 0x3e6990;
    virtual void setTouchEnabled(bool) = m1 0x367cec, imac 0x3e5ac0;
}

[[link(win, android)]]
class cocos2d::extension::CCArrayForObjectSorting : cocos2d::CCArray {
    void insertSortedObject(cocos2d::extension::CCSortableObject*) = m1 0x392edc, imac 0x417480;
    void removeSortedObject(cocos2d::extension::CCSortableObject*) = m1 0x3930e4, imac 0x417650;
    void setObjectID_ofSortedObject(unsigned int, cocos2d::extension::CCSortableObject*) = m1 0x393290, imac 0x4177b0;
    cocos2d::extension::CCSortableObject* objectWithObjectID(unsigned int) = m1 0x393578, imac 0x417a30;
    unsigned int indexOfSortedObject(cocos2d::extension::CCSortableObject*) = m1 0x392ffc, imac 0x417590;
}

[[link(win, android)]]
class cocos2d::extension::CCTableView : cocos2d::extension::CCScrollView, cocos2d::extension::CCScrollViewDelegate {
    static cocos2d::extension::CCTableView* create(cocos2d::extension::CCTableViewDataSource*, cocos2d::CCSize) = m1 0x3953c0, imac 0x419700;
    static cocos2d::extension::CCTableView* create(cocos2d::extension::CCTableViewDataSource*, cocos2d::CCSize, cocos2d::CCNode*) = m1 0x3953fc, imac 0x419730;

    CCTableView() = m1 0x395844, imac 0x419bf0;
    virtual ~CCTableView() = m1 0x3958a4, imac 0x419ca0;

    void setVerticalFillOrder(cocos2d::extension::CCTableViewVerticalFillOrder) = m1 0x395a88, imac 0x419f50;
    cocos2d::extension::CCTableViewVerticalFillOrder getVerticalFillOrder() = m1 0x395c5c, imac 0x41a120;
    bool initWithViewSize(cocos2d::CCSize, cocos2d::CCNode*) = m1 0x39553c, imac 0x419900;
    void updateCellAtIndex(unsigned int) = m1 0x395cd4, imac 0x41a1a0;
    void insertCellAtIndex(unsigned int) = m1 0x396104, imac 0x41a560;
    void removeCellAtIndex(unsigned int) = m1 0x3962a4, imac 0x41a700;
    void reloadData() = m1 0x395ad0, imac 0x419f90;
    cocos2d::extension::CCTableViewCell* dequeueCell() = m1 0x3964b0, imac 0x41a910;
    cocos2d::extension::CCTableViewCell* cellAtIndex(unsigned int) = m1 0x395c64, imac 0x41a130;
    int __indexFromOffset(cocos2d::CCPoint) = m1 0x3967bc, imac 0x41abe0;
    unsigned int _indexFromOffset(cocos2d::CCPoint) = m1 0x396688, imac 0x41aac0;
    cocos2d::CCPoint __offsetFromIndex(unsigned int) = m1 0x396604, imac 0x41aa40;
    cocos2d::CCPoint _offsetFromIndex(unsigned int) = m1 0x39651c, imac 0x41a970;
    void _moveCellOutOfSight(cocos2d::extension::CCTableViewCell*) = m1 0x395e08, imac 0x41a2c0;
    void _setIndexForCell(unsigned int, cocos2d::extension::CCTableViewCell*) = m1 0x395f70, imac 0x41a400;
    void _addCellIfNecessary(cocos2d::extension::CCTableViewCell*) = m1 0x395ff8, imac 0x41a470;
    void _updateCellPositions() = m1 0x395634, imac 0x4199f0;
    void _updateContentSize() = m1 0x395748, imac 0x419b00;
    void unregisterAllScriptHandler() = m1 0x3959b0, imac 0x419e00;

    virtual void scrollViewDidScroll(cocos2d::extension::CCScrollView*) = m1 0x396868, imac 0x41ac80;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x396b88, imac 0x41b020;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x396d0c, imac 0x41b1a0;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x396aa8, imac 0x41af20;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = m1 0x396dac, imac 0x41b250;
}

[[link(win, android)]]
class cocos2d::extension::CCTableViewCell : cocos2d::CCNode, cocos2d::extension::CCSortableObject {
    unsigned int getIdx() = m1 0x39ff3c, imac 0x424e80;
    void setIdx(unsigned int) = m1 0x39ff44, imac 0x424e90;
    void reset() = m1 0x39ff10, imac 0x424e30;

    virtual void setObjectID(unsigned int) = m1 0x39ff1c, imac 0x424e40;
    virtual unsigned int getObjectID() = m1 0x39ff2c, imac 0x424e60;
}

[[link(win, android)]]
class cocos2d::CCKeypadHandler : cocos2d::CCObject {
    static cocos2d::CCKeypadHandler* handlerWithDelegate(cocos2d::CCKeypadDelegate*) = m1 0x33a5fc, imac 0x3aeb10, ios 0x4f1a4;

    virtual ~CCKeypadHandler() = m1 0x33a43c, imac 0x3ae930, ios 0x4f0f0;

    cocos2d::CCKeypadDelegate* getDelegate() = m1 0x33a434, imac 0x3ae920, ios 0x4f0e8;
    void setDelegate(cocos2d::CCKeypadDelegate*) = m1 0x33a53c, imac 0x3aea50, ios inline {
        if (auto delegate = geode::cast::typeinfo_cast<cocos2d::CCObject*>(p0)) delegate->retain();
        if (auto delegate = geode::cast::typeinfo_cast<cocos2d::CCObject*>(m_pDelegate)) delegate->release();
        m_pDelegate = p0;
    }

    virtual bool initWithDelegate(cocos2d::CCKeypadDelegate*) = m1 0x33a5a8, imac 0x3aeac0, ios 0x4f15c;
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

    [[since("4.11.0")]]
    virtual ~CCTouchScriptHandlerEntry();

    bool init(bool, int, bool);
}

[[link(win, android)]]
class cocos2d::CCTransitionSceneOriented : cocos2d::CCTransitionScene {
    static cocos2d::CCTransitionSceneOriented* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

    CCTransitionSceneOriented();
    virtual ~CCTransitionSceneOriented();

    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::tOrientation) = m1 0xbdaf8, imac 0xd54e0;
}

[[link(win, android)]]
class cocos2d::CCTransitionPageTurn : cocos2d::CCTransitionScene {
    static cocos2d::CCTransitionPageTurn* create(float, cocos2d::CCScene*, bool);

    CCTransitionPageTurn();
    virtual ~CCTransitionPageTurn();

    cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);

    virtual bool initWithDuration(float, cocos2d::CCScene*, bool) = m1 0x34fc98, imac 0x3c6ce0;
    virtual void onEnter() = m1 0x34fcc0, imac 0x3c6d20;
    virtual void sceneOrder() = m1 0x34fcb4, imac 0x3c6d00;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgress : cocos2d::CCTransitionScene {
    static cocos2d::CCTransitionProgress* create(float, cocos2d::CCScene*);

    CCTransitionProgress();

    virtual void onEnter() = m1 0x225534, imac 0x27b4f0;
    virtual void onExit() = m1 0x2256e4, imac 0x27b6a0;
    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = m1 0x225738, imac 0x27b710;
    virtual void setupTransition() = m1 0x225720, imac 0x27b6e0;
    virtual void sceneOrder() = m1 0x225718, imac 0x27b6d0;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressHorizontal : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressHorizontal* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = m1 0x225b4c, imac 0x27baa0;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressInOut : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressInOut* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = m1 0x225f14, imac 0x27be50;
    virtual void sceneOrder() = m1 0x225ef4, imac 0x27be10;
    virtual void setupTransition() = m1 0x225efc, imac 0x27be20;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressOutIn : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressOutIn* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = m1 0x2260ec, imac 0x27c000;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCCW : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressRadialCCW* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = m1 0x225740, imac 0x27b720;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCW : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressRadialCW* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = m1 0x2259b0, imac 0x27b930;
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressVertical : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressVertical* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*) = m1 0x225d20, imac 0x27bc60;
}

[[link(win, android)]]
class cocos2d::CCLabelAtlas : cocos2d::CCAtlasNode, cocos2d::CCLabelProtocol {
    static cocos2d::CCLabelAtlas* create(char const*, char const*, unsigned int, unsigned int, unsigned int) = m1 0x697504, imac 0x7831c0;
    static cocos2d::CCLabelAtlas* create(char const*, char const*) = m1 0x697734, imac 0x7833c0;

    bool initWithString(char const*, char const*, unsigned int, unsigned int, unsigned int) = m1 0x697618, imac 0x7832c0;
    bool initWithString(char const*, char const*) = m1 0x6977c8, imac 0x783460;
    bool initWithString(char const*, cocos2d::CCTexture2D*, unsigned int, unsigned int, unsigned int) = m1 0x6976b0, imac 0x783350;

    virtual void updateAtlasValues() = m1 0x697cd0, imac 0x783990;
    virtual void setString(char const*) = m1 0x697f20, imac 0x783c50;
    virtual char const* getString() = m1 0x697ff8, imac 0x783d40;
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

    [[since("4.11.0")]]
    ~CCMenuItemLabel() = mac inline {}

    bool initWithLabel(cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler);
    void setString(char const*);

    virtual cocos2d::ccColor3B const& getDisabledColor() = m1 0x337964, imac 0x3abbb0;
    virtual void setDisabledColor(cocos2d::ccColor3B const&) = m1 0x33796c, imac 0x3abbc0;
    virtual cocos2d::CCNode* getLabel() = m1 0x337980, imac 0x3abbe0;
    virtual void setLabel(cocos2d::CCNode*) = m1 0x337988, imac 0x3abbf0;
    virtual void activate() = m1 0x337f18, imac 0x3ac190;
    virtual void selected() = m1 0x337fb4, imac 0x3ac220;
    virtual void unselected() = m1 0x338064, imac 0x3ac2b0;
    virtual void setEnabled(bool) = m1 0x3380d8, imac 0x3ac310;
}

[[link(win, android)]]
class cocos2d::CCMenuItemToggle : cocos2d::CCMenuItem {
    static cocos2d::CCMenuItemToggle* createWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCArray*);
    static cocos2d::CCMenuItemToggle* createWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCMenuItem*);
    static cocos2d::CCMenuItemToggle* create();
    static cocos2d::CCMenuItemToggle* create(cocos2d::CCMenuItem*);

    virtual ~CCMenuItemToggle() = m1 0x339da0, imac 0x3ae200;

    bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCMenuItem*, va_list);
    bool initWithItem(cocos2d::CCMenuItem*);
    void addSubItem(cocos2d::CCMenuItem*);
    cocos2d::CCMenuItem* selectedItem();

    virtual unsigned int getSelectedIndex() = m1 0x33a020, imac 0x3ae4b0;
    virtual void setSelectedIndex(unsigned int) = m1 0x339f24, imac 0x3ae3c0;
    virtual cocos2d::CCArray* getSubItems() = m1 0x33976c, imac 0x3ada30;
    virtual void setSubItems(cocos2d::CCArray*) = m1 0x339730, imac 0x3ad9f0;
    virtual void activate() = m1 0x33a084, imac 0x3ae520;
    virtual void selected() = m1 0x33a028, imac 0x3ae4c0;
    virtual void unselected() = m1 0x33a058, imac 0x3ae4f0;
    virtual void setEnabled(bool) = m1 0x33a130, imac 0x3ae5d0;
}

[[link(win, android)]]
class cocos2d::CCParticleFireworks : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFireworks* create();
    static cocos2d::CCParticleFireworks* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = m1 0x3e11c4, imac 0x4726c0;
}

[[link(win, android)]]
class cocos2d::CCParticleFlower : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFlower* create();
    static cocos2d::CCParticleFlower* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = m1 0x3e1a0c, imac 0x472ec0;
}

[[link(win, android)]]
class cocos2d::CCParticleGalaxy : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleGalaxy* create();
    static cocos2d::CCParticleGalaxy* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = m1 0x3e16fc, imac 0x472be0;
}

[[link(win, android)]]
class cocos2d::CCParticleMeteor : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleMeteor* create();
    static cocos2d::CCParticleMeteor* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = m1 0x3e1d1c, imac 0x4731b0;
}

[[link(win, android)]]
class cocos2d::CCParticleSmoke : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSmoke* create();
    static cocos2d::CCParticleSmoke* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = m1 0x3e263c, imac 0x473a40;
}

[[link(win, android)]]
class cocos2d::CCParticleSpiral : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSpiral* create();
    static cocos2d::CCParticleSpiral* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = m1 0x3e2034, imac 0x4734a0;
}

[[link(win, android)]]
class cocos2d::CCParticleSun : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSun* create();
    static cocos2d::CCParticleSun* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int) = m1 0x3e1428, imac 0x472930;
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

    virtual void addChild(cocos2d::CCNode*) = m1 0x34130c, imac 0x3b5d40;
    virtual void addChild(cocos2d::CCNode*, int) = m1 0x341310, imac 0x3b5d50;
    virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x341314, imac 0x3b5d60;
    virtual void removeChild(cocos2d::CCNode*, bool) = m1 0x341c80, imac 0x3b65c0;
    virtual void reorderChild(cocos2d::CCNode*, int) = m1 0x3417d0, imac 0x3b61b0;
    virtual void removeAllChildrenWithCleanup(bool) = m1 0x341de4, imac 0x3b6700;
    virtual void draw() = m1 0x341e70, imac 0x3b6790;
    virtual cocos2d::CCTexture2D* getTexture() = m1 0x342054, imac 0x3b6970;
    virtual void setTexture(cocos2d::CCTexture2D*) = m1 0x341f8c, imac 0x3b68c0;
    virtual void setBlendFunc(cocos2d::ccBlendFunc) = m1 0x342074, imac 0x3b69a0;
    virtual cocos2d::ccBlendFunc getBlendFunc() = m1 0x342084, imac 0x3b69c0;
    virtual void visit() = m1 0x34128c, imac 0x3b5cc0;
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
    static cocos2d::CCKeyboardHandler* handlerWithDelegate(cocos2d::CCKeyboardDelegate*) = m1 0x3a540c, imac 0x42a2d0, ios 0x217670;

    virtual ~CCKeyboardHandler() = m1 0x3a524c, imac 0x42a0f0, ios 0x2175bc;

    cocos2d::CCKeyboardDelegate* getDelegate() = m1 0x3a5244, imac 0x42a0e0, ios 0x2175b4;
    void setDelegate(cocos2d::CCKeyboardDelegate*) = m1 0x3a534c, imac 0x42a210, ios inline {
        if (auto delegate = geode::cast::typeinfo_cast<cocos2d::CCObject*>(p0)) delegate->retain();
        if (auto delegate = geode::cast::typeinfo_cast<cocos2d::CCObject*>(m_pDelegate)) delegate->release();
        m_pDelegate = p0;
    }

    virtual bool initWithDelegate(cocos2d::CCKeyboardDelegate*) = m1 0x3a53b8, imac 0x42a280, ios 0x217628;
}

[[link(win, android)]]
class cocos2d::CCSchedulerScriptHandlerEntry : cocos2d::CCScriptHandlerEntry {
    static cocos2d::CCSchedulerScriptHandlerEntry* create(int, float, bool);

    [[since("4.11.0")]]
    virtual ~CCSchedulerScriptHandlerEntry();

    bool init(float, bool);
}

[[link(win, android)]]
class cocos2d::CCScriptHandlerEntry : cocos2d::CCObject {
    static cocos2d::CCScriptHandlerEntry* create(int);

    [[since("4.11.0")]]
    virtual ~CCScriptHandlerEntry();
}

[[link(win, android)]]
class cocos2d::CCAnimationFrame : cocos2d::CCObject {
    CCAnimationFrame();
    virtual ~CCAnimationFrame();

    bool initWithSpriteFrame(cocos2d::CCSpriteFrame*, float, cocos2d::CCDictionary*);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = m1 0x22deac, imac 0x284770, ios 0x1a72f4;
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

    virtual bool init() = m1 0x8e8b0, imac 0x9b990;
    virtual void onEnter() = m1 0x8e8b8, imac 0x9b9a0;
    virtual void onExit() = m1 0x8e8bc, imac 0x9b9b0;
    virtual void update(float) = m1 0x8e8c0, imac 0x9b9c0;
    virtual bool serialize(void*) = m1 0x8e8c4, imac 0x9b9d0;
    virtual bool isEnabled() const = m1 0x8e968, imac 0x9ba90;
    virtual void setEnabled(bool) = m1 0x8e970, imac 0x9baa0;
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

    virtual cocos2d::CCComponent* get(char const*) const = m1 0x2573a8, imac 0x2b14b0, ios 0x16833c;
    virtual bool add(cocos2d::CCComponent*) = m1 0x2574d8, imac 0x2b15d0, ios 0x1683dc;
    virtual bool remove(char const*) = m1 0x2576f4, imac 0x2b1800, ios 0x16850c;
    virtual bool remove(cocos2d::CCComponent*) = m1 0x2579c4, imac 0x2b1ac0, ios 0x1687b8;
    virtual void removeAll() = m1 0x257b74, imac 0x2b1c80, ios 0x168948;
    virtual void visit(float) = m1 0x257d38, imac 0x2b1e80, ios 0x168ad4;
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

    virtual cocos2d::CCObject* getTarget() = m1 0x220dd4, imac 0x276100;
    virtual cocos2d::SEL_CallFuncO getSelector() = m1 0x220ddc, imac 0x276110;
    virtual char* getName() = m1 0x220de8, imac 0x276120;
    virtual cocos2d::CCObject* getObject() = m1 0x220df0, imac 0x276130;
    virtual int getHandler() = m1 0x220df8, imac 0x276140;
    virtual void setHandler(int) = m1 0x220e00, imac 0x276150;
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

    virtual void addChild(cocos2d::CCNode*, unsigned int, cocos2d::CCPoint const&, cocos2d::CCPoint const&) = m1 0x406bac, imac 0x49b8b0;
    virtual void addChild(cocos2d::CCNode*, unsigned int, int) = m1 0x406ba8, imac 0x49b8a0;
    virtual void removeChild(cocos2d::CCNode*, bool) = m1 0x406d68, imac 0x49ba70;
    virtual void removeAllChildrenWithCleanup(bool) = m1 0x406df8, imac 0x49baf0;
    virtual void visit() = m1 0x406ec0, imac 0x49bbb0;
}

[[link(win, android)]]
class cocos2d::CCTMXLayer : cocos2d::CCSpriteBatchNode {
    static cocos2d::CCTMXLayer* create(cocos2d::CCTMXTilesetInfo*, cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);

    CCTMXLayer() = m1 0x1f605c, imac 0x2479f0;
    virtual ~CCTMXLayer() = m1 0x1f6474, imac 0x247ea0;

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

    virtual cocos2d::CCTMXTilesetInfo* getTileSet() = m1 0x1f6528, imac 0x247f90;
    virtual void setTileSet(cocos2d::CCTMXTilesetInfo*) = m1 0x1f6530, imac 0x247fa0;
    virtual cocos2d::CCDictionary* getProperties() = m1 0x1f7bd4, imac 0x249930;
    virtual void setProperties(cocos2d::CCDictionary*) = m1 0x1f7bdc, imac 0x249940;
    virtual void addChild(cocos2d::CCNode*, int, int) = m1 0x1f7a90, imac 0x249760;
    virtual void removeChild(cocos2d::CCNode*, bool) = m1 0x1f7a94, imac 0x249770;
}

[[link(win, android)]]
class cocos2d::CCTMXLayerInfo : cocos2d::CCObject {
    CCTMXLayerInfo() = m1 0x421654, imac 0x4b99a0;
    virtual ~CCTMXLayerInfo() = m1 0x42170c, imac 0x4b9a60;

    virtual cocos2d::CCDictionary* getProperties() = m1 0x421870, imac 0x4b9bb0;
    virtual void setProperties(cocos2d::CCDictionary*) = m1 0x421878, imac 0x4b9bc0;
}

[[link(win, android)]]
class cocos2d::CCTMXMapInfo : cocos2d::CCObject, cocos2d::CCSAXDelegator {
    static cocos2d::CCTMXMapInfo* formatWithTMXFile(char const*);
    static cocos2d::CCTMXMapInfo* formatWithXML(char const*, char const*);

    CCTMXMapInfo() = m1 0x421c78, imac 0x4b9fa0;
    virtual ~CCTMXMapInfo() = m1 0x4221e0, imac 0x4ba520;

    bool initWithTMXFile(char const*);
    bool initWithXML(char const*, char const*);
    bool parseXMLFile(char const*);
    bool parseXMLString(char const*);
    cocos2d::CCDictionary* getTileProperties();
    void setTileProperties(cocos2d::CCDictionary*);
    void internalInit(char const*, char const*);

    virtual cocos2d::CCArray* getLayers() = m1 0x4222bc, imac 0x4ba630;
    virtual void setLayers(cocos2d::CCArray*) = m1 0x4222c4, imac 0x4ba640;
    virtual cocos2d::CCArray* getTilesets() = m1 0x422300, imac 0x4ba680;
    virtual void setTilesets(cocos2d::CCArray*) = m1 0x422308, imac 0x4ba690;
    virtual cocos2d::CCArray* getObjectGroups() = m1 0x422344, imac 0x4ba6d0;
    virtual void setObjectGroups(cocos2d::CCArray*) = m1 0x42234c, imac 0x4ba6e0;
    virtual cocos2d::CCDictionary* getProperties() = m1 0x422388, imac 0x4ba720;
    virtual void setProperties(cocos2d::CCDictionary*) = m1 0x422390, imac 0x4ba730;
    virtual void startElement(void*, char const*, char const**) = m1 0x422410, imac 0x4ba7c0;
    virtual void endElement(void*, char const*) = m1 0x424e60, imac 0x4bd7f0;
    virtual void textHandler(void*, char const*, int) = m1 0x4252a4, imac 0x4bdc10;
}

[[link(win, android)]]
class cocos2d::CCTMXObjectGroup : cocos2d::CCObject {
    CCTMXObjectGroup() = m1 0x3f6aec, imac 0x4896b0;
    virtual ~CCTMXObjectGroup() = m1 0x3f6ba0, imac 0x489770;

    cocos2d::CCString* propertyNamed(char const*);
    cocos2d::CCDictionary* objectNamed(char const*);

    virtual cocos2d::CCDictionary* getProperties() = m1 0x3f6f2c, imac 0x489ad0;
    virtual void setProperties(cocos2d::CCDictionary*) = m1 0x3f6f34, imac 0x489ae0;
    virtual cocos2d::CCArray* getObjects() = m1 0x3f6f70, imac 0x489b20;
    virtual void setObjects(cocos2d::CCArray*) = m1 0x3f6f78, imac 0x489b30;
}

[[link(win, android)]]
class cocos2d::CCTMXTiledMap : cocos2d::CCNode {
    static cocos2d::CCTMXTiledMap* create(char const*);
    static cocos2d::CCTMXTiledMap* createWithXML(char const*, char const*);

    CCTMXTiledMap() = m1 0x461ad0, imac 0x502300;
    virtual ~CCTMXTiledMap() = m1 0x461f18, imac 0x502770;

    bool initWithTMXFile(char const*);
    bool initWithXML(char const*, char const*);
    cocos2d::CCTMXLayer* layerNamed(char const*);
    cocos2d::CCTMXObjectGroup* objectGroupNamed(char const*);
    cocos2d::CCString* propertyNamed(char const*);
    cocos2d::CCDictionary* propertiesForGID(int);
    cocos2d::CCTMXLayer* parseLayer(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);
    cocos2d::CCTMXTilesetInfo* tilesetForLayer(cocos2d::CCTMXLayerInfo*, cocos2d::CCTMXMapInfo*);
    void buildWithMapInfo(cocos2d::CCTMXMapInfo*);

    virtual cocos2d::CCArray* getObjectGroups() = m1 0x462018, imac 0x5028a0;
    virtual void setObjectGroups(cocos2d::CCArray*) = m1 0x462020, imac 0x5028b0;
    virtual cocos2d::CCDictionary* getProperties() = m1 0x46205c, imac 0x5028f0;
    virtual void setProperties(cocos2d::CCDictionary*) = m1 0x462064, imac 0x502900;
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

    CCTileMapAtlas() = m1 0x1cdb70, imac 0x21ab30;
    virtual ~CCTileMapAtlas() = m1 0x1cded4, imac 0x21af50;

    bool initWithTileFile(char const*, char const*, int, int);
    cocos2d::ccColor3B tileAt(cocos2d::CCPoint const&);
    void setTile(cocos2d::ccColor3B const&, cocos2d::CCPoint const&);
    void releaseMap();
    void loadTGAfile(char const*);
    void calculateItemsToRender();
    void updateAtlasValueAt(cocos2d::CCPoint const&, cocos2d::ccColor3B const&, unsigned int);

    virtual cocos2d::sImageTGA* getTGAInfo() = m1 0x1ce630, imac 0x21b7f0;
    virtual void setTGAInfo(cocos2d::sImageTGA*) = m1 0x1ce628, imac 0x21b7e0;
    virtual void updateAtlasValues() = m1 0x1ce3e0, imac 0x21b5a0;
}

[[link(win, android)]]
class cocos2d::CCStandardTouchHandler : cocos2d::CCTouchHandler {
    static cocos2d::CCStandardTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int);

    virtual ~CCStandardTouchHandler();

    virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int) = m1 0x3dd790, imac 0x46e4b0, ios 0x1049c;
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

    virtual void update(float) = m1 0x3a8898, imac 0x42dbb0, ios 0x1ad214;
}
