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

    virtual cocos2d::CCSize const& getFrameSize() const;
    virtual void setFrameSize(float, float);
    virtual cocos2d::CCSize getVisibleSize() const;
    virtual cocos2d::CCPoint getVisibleOrigin() const;
    virtual void setDesignResolutionSize(float, float, ResolutionPolicy);
    virtual cocos2d::CCSize const& getDesignResolutionSize() const;
    virtual void setTouchDelegate(cocos2d::EGLTouchDelegate*);
    virtual void setViewPortInPoints(float, float, float, float);
    virtual void setScissorInPoints(float, float, float, float);
    virtual bool isScissorEnabled();
    virtual cocos2d::CCRect getScissorRect();
    virtual void setViewName(char const*);
    virtual void pollInputEvents();
    virtual void handleTouchesBegin(int, int*, float*, float*);
    virtual void handleTouchesMove(int, int*, float*, float*);
    virtual void handleTouchesEnd(int, int*, float*, float*);
    virtual void handleTouchesCancel(int, int*, float*, float*);
}

[[link(win, android)]]
class cocos2d::CCActionEase : cocos2d::CCActionInterval {
    static cocos2d::CCActionEase* create(cocos2d::CCActionInterval*);

    // CCActionEase(cocos2d::CCActionEase const&);
    // CCActionEase();
    virtual ~CCActionEase();

    bool initWithAction(cocos2d::CCActionInterval* pAction);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void stop();
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
    virtual cocos2d::CCActionInterval* getInnerAction();
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
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

    virtual cocos2d::CCActionInterval* reverse() = ios inline {
        return CCEaseRateAction::create(m_pInner->reverse(), 1 / m_fRate);
    }
}

[[link(win, android)]]
class cocos2d::CCEaseIn : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseIn* create(cocos2d::CCActionInterval*, float);

    // CCEaseIn(cocos2d::CCEaseIn const&);
    // CCEaseIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseOut : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseOut* create(cocos2d::CCActionInterval*, float);

    // CCEaseOut(cocos2d::CCEaseOut const&);
    // CCEaseOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseInOut : cocos2d::CCEaseRateAction {
    static cocos2d::CCEaseInOut* create(cocos2d::CCActionInterval*, float);

    // CCEaseInOut(cocos2d::CCEaseInOut const&);
    // CCEaseInOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBackIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackIn* create(cocos2d::CCActionInterval*);

    // CCEaseBackIn(cocos2d::CCEaseBackIn const&);
    // CCEaseBackIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBackOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseBackOut* create(cocos2d::CCActionInterval*);

    // CCEaseBackOut(cocos2d::CCEaseBackOut const&);
    // CCEaseBackOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
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
    virtual void update(float time) = ios inline {
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
    virtual cocos2d::CCActionInterval* reverse() = ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
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
    virtual cocos2d::CCActionInterval* reverse() = ios inline {
        return CCEaseBounce::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEaseBounceIn : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceIn* create(cocos2d::CCActionInterval*);

    // CCEaseBounceIn(cocos2d::CCEaseBounceIn const&);
    // CCEaseBounceIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseBounceOut : cocos2d::CCEaseBounce {
    static cocos2d::CCEaseBounceOut* create(cocos2d::CCActionInterval*);

    // CCEaseBounceOut(cocos2d::CCEaseBounceOut const&);
    // CCEaseBounceOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
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
    virtual void update(float time) = ios inline {
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
    virtual cocos2d::CCActionInterval* reverse() = ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
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
    virtual cocos2d::CCActionInterval* reverse() = ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCEaseElasticOut : cocos2d::CCEaseElastic {
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*);
    static cocos2d::CCEaseElasticOut* create(cocos2d::CCActionInterval*, float);

    // CCEaseElasticOut(cocos2d::CCEaseElasticOut const&);
    // CCEaseElasticOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
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
    virtual void update(float time) = ios inline {
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
    virtual cocos2d::CCActionInterval* reverse() = ios inline {
        return CCEaseElasticInOut::create(m_pInner->reverse(), m_fPeriod);
    }
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialIn : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialIn* create(cocos2d::CCActionInterval*);

    // CCEaseExponentialIn(cocos2d::CCEaseExponentialIn const&);
    // CCEaseExponentialIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
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
    virtual void update(float time) = ios inline {
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
    virtual cocos2d::CCActionInterval* reverse() = ios inline {
        return CCEaseExponentialInOut::create(m_pInner->reverse());
    }
}

[[link(win, android)]]
class cocos2d::CCEaseExponentialOut : cocos2d::CCActionEase {
    static cocos2d::CCEaseExponentialOut* create(cocos2d::CCActionInterval*);

    // CCEaseExponentialOut(cocos2d::CCEaseExponentialOut const&);
    // CCEaseExponentialOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
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
    virtual void update(float time) = ios inline {
        m_pInner->update(-1 * cosf(time * (float)M_PI_2) + 1);
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
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
    virtual void update(float time) = ios inline {
        m_pInner->update(sinf(time * (float)M_PI_2));
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
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
    virtual void update(float time) = ios inline {
        m_pInner->update(-0.5f * (cosf((float)M_PI * time) - 1));
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline {
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

    virtual void update(float);
    virtual void setPosition(cocos2d::CCPoint const&);
    virtual void draw();

    virtual unsigned char getOpacity();
    virtual void setOpacity(unsigned char);
    virtual void setOpacityModifyRGB(bool);
    virtual bool isOpacityModifyRGB();

    virtual void setBlendFunc(cocos2d::ccBlendFunc);
    virtual cocos2d::ccBlendFunc getBlendFunc();
    virtual cocos2d::CCTexture2D* getTexture();
    virtual void setTexture(cocos2d::CCTexture2D*);

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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual cocos2d::CCActionInterval* reverse();
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*);
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
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
    virtual void update(float time) = ios inline {
        CC_UNUSED_PARAM(time);
        m_pTarget->removeFromParentAndCleanup(m_bIsNeedCleanUp);
    }
    virtual cocos2d::CCFiniteTimeAction* reverse() = ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
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
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = ios inline {
        cocos2d::CCScaleTo::startWithTarget(pTarget);
        m_fDeltaX = m_fStartScaleX * m_fEndScaleX - m_fStartScaleX;
        m_fDeltaY = m_fStartScaleY * m_fEndScaleY - m_fStartScaleY;
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
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

    virtual void startWithTarget(cocos2d::CCNode* pTarget) = ios inline {
	CCSkewTo::startWithTarget(pTarget);
        m_fDeltaX = m_fSkewX;
        m_fDeltaY = m_fSkewY;
        m_fEndSkewX = m_fStartSkewX + m_fDeltaX;
        m_fEndSkewY = m_fStartSkewY + m_fDeltaY;
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline {
	return create(m_fDuration, -m_fSkewX, -m_fSkewY);
    }
    virtual bool initWithDuration(float t, float deltaSkewX, float deltaSkewY) = ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
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
    virtual void update(float t) = ios inline {
        m_pTarget->setSkewX(m_fStartSkewX + m_fDeltaX * t);
        m_pTarget->setSkewY(m_fStartSkewY + m_fDeltaY * t);
    }
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = ios inline {
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
    virtual bool initWithDuration(float t, float sx, float sy) = ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    //virtual void setTag(int);
    virtual bool isDone();
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void stop();
    virtual void step(float);

    cocos2d::CCNode* m_pOriginalTarget;
    cocos2d::CCNode* m_pTarget;
    int m_nTag;
    float m_fSpeedMod;
}

[[link(win, android)]]
class cocos2d::CCActionInstant : cocos2d::CCFiniteTimeAction {
    // CCActionInstant(cocos2d::CCActionInstant const&);
    CCActionInstant() = ios inline {}

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual bool isDone();
    virtual void step(float);
    virtual cocos2d::CCFiniteTimeAction* reverse();
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual bool isDone() = ,;
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void step(float);
    virtual cocos2d::CCActionInterval* reverse();

    float m_elapsed;
    bool m_bFirstTick;
}

[[link(win, android)]]
class cocos2d::CCFiniteTimeAction : cocos2d::CCAction {
    // CCFiniteTimeAction(cocos2d::CCFiniteTimeAction const&);
    // CCFiniteTimeAction();

    virtual cocos2d::CCFiniteTimeAction* reverse() = ios inline {
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

    virtual bool init();
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

    virtual void acceptVisitor(cocos2d::CCDataVisitor&);

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
    virtual cocos2d::ccColor4F const& getStartColor();
    virtual void setStartColor(cocos2d::ccColor4F const&);
    virtual cocos2d::ccColor4F const& getStartColorVar();
    virtual void setStartColorVar(cocos2d::ccColor4F const&);
    virtual cocos2d::ccColor4F const& getEndColor();
    virtual void setEndColor(cocos2d::ccColor4F const&);
    virtual cocos2d::ccColor4F const& getEndColorVar();
    virtual void setEndColorVar(cocos2d::ccColor4F const&);
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

    virtual void setBlendFunc(cocos2d::ccBlendFunc);
    virtual cocos2d::ccBlendFunc getBlendFunc();
    virtual cocos2d::CCTexture2D* getTexture();
    virtual void setTexture(cocos2d::CCTexture2D*);

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

    // virtual bool init();
    virtual bool initWithTotalParticles(unsigned int numberOfParticles) = ios inline {
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

    // virtual bool init();
    virtual bool initWithTotalParticles(unsigned int) = ios inline {
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

    // virtual bool init();
    virtual bool initWithTotalParticles(unsigned int) = ios inline {
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

    // virtual bool init();
    virtual bool initWithTotalParticles(unsigned int) = ios inline {
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

    virtual void draw();
    virtual void setBatchNode(cocos2d::CCParticleBatchNode*);
    virtual void setTotalParticles(unsigned int);
    virtual bool initWithTotalParticles(unsigned int, bool);
    virtual void updateQuadWithParticle(cocos2d::sCCParticle*, cocos2d::CCPoint const&);
    virtual void postStep();

    virtual void setTexture(cocos2d::CCTexture2D*);

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

    virtual cocos2d::ccColor3B const& getColor() const;
    virtual unsigned char getOpacity() const;
    virtual void draw();
    virtual cocos2d::CCPoint getMidpoint();
    virtual void setMidpoint(cocos2d::CCPoint);

    virtual void setColor(cocos2d::ccColor3B const&);
    virtual void setOpacity(unsigned char);
}

[[link(win, android)]]
class cocos2d::CCFadeIn : cocos2d::CCActionInterval {
    static cocos2d::CCFadeIn* create(float);

    // CCFadeIn(cocos2d::CCFadeIn const&);
    // CCFadeIn();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCFadeOut : cocos2d::CCActionInterval {
    static cocos2d::CCFadeOut* create(float);

    // CCFadeOut(cocos2d::CCFadeOut const&);
    // CCFadeOut();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCFileUtils : cocos2d::TypeInfo {
    protected CCFileUtils();
    // CCFileUtils(cocos2d::CCFileUtils const&);
    virtual ~CCFileUtils();
    virtual void addSearchPath(char const*);
    virtual void addSearchResolutionsOrder(char const*);
    virtual gd::string addSuffix(gd::string, gd::string);
    virtual cocos2d::CCArray* createCCArrayWithContentsOfFile(gd::string const&);
    virtual cocos2d::CCDictionary* createCCDictionaryWithContentsOfFile(gd::string const&);
    virtual gd::string fullPathForFilename(char const*, bool);
    virtual char const* fullPathFromRelativeFile(char const*, char const*);
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
    virtual void setFilenameLookupDictionary(cocos2d::CCDictionary*);
    virtual void setPopupNotify(bool);
    virtual void setSearchPaths(gd::vector<gd::string> const&);
    virtual void setSearchResolutionsOrder(gd::vector<gd::string> const&);
    static cocos2d::CCFileUtils* sharedFileUtils();
    virtual bool shouldUseHD();
    virtual bool writeToFile(cocos2d::CCDictionary*, gd::string const&);
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

    virtual void update(float);
    virtual bool init();
    virtual void setZOrder(int);
    virtual void _setZOrder(int);
    virtual int getZOrder();
    virtual void setVertexZ(float);
    virtual float getVertexZ();
    virtual void setScaleX(float);
    virtual float getScaleX();
    virtual void setScaleY(float);
    virtual float getScaleY();
    virtual void setScale(float);
    virtual float getScale();
    virtual void setScale(float, float);
    virtual void setPosition(cocos2d::CCPoint const&);
    virtual cocos2d::CCPoint const& getPosition();
    virtual void setPosition(float, float);
    virtual void getPosition(float*, float*);
    virtual void setPositionX(float);
    virtual float getPositionX();
    virtual void setPositionY(float);
    virtual float getPositionY();
    virtual void setSkewX(float);
    virtual float getSkewX();
    virtual void setSkewY(float);
    virtual float getSkewY();
    virtual void setAnchorPoint(cocos2d::CCPoint const&);
    virtual cocos2d::CCPoint const& getAnchorPoint();
    virtual cocos2d::CCPoint const& getAnchorPointInPoints();
    virtual void setContentSize(cocos2d::CCSize const&);
    virtual cocos2d::CCSize const& getContentSize() const;
    virtual cocos2d::CCSize getScaledContentSize();
    virtual void setVisible(bool);
    virtual bool isVisible();
    virtual void setRotation(float);
    virtual float getRotation();
    virtual void setRotationX(float);
    virtual float getRotationX();
    virtual void setRotationY(float);
    virtual float getRotationY();
    virtual void setOrderOfArrival(unsigned int);
    virtual unsigned int getOrderOfArrival();
    virtual void setGLServerState(cocos2d::ccGLServerState);
    virtual cocos2d::ccGLServerState getGLServerState();
    virtual void ignoreAnchorPointForPosition(bool);
    virtual bool isIgnoreAnchorPointForPosition();
    virtual void addChild(cocos2d::CCNode*);
    virtual void addChild(cocos2d::CCNode*, int);
    virtual void addChild(cocos2d::CCNode*, int, int);
    virtual cocos2d::CCNode* getChildByTag(int);
    virtual cocos2d::CCArray* getChildren();
    virtual unsigned int getChildrenCount() const;
    virtual void setParent(cocos2d::CCNode*);
    virtual cocos2d::CCNode* getParent();
    virtual void removeFromParent();
    virtual void removeFromParentAndCleanup(bool);
    virtual void removeMeAndCleanup();
    virtual void removeChild(cocos2d::CCNode*);
    virtual void removeChild(cocos2d::CCNode*, bool);
    virtual void removeChildByTag(int);
    virtual void removeChildByTag(int, bool);
    virtual void removeAllChildren();
    virtual void removeAllChildrenWithCleanup(bool);
    virtual void reorderChild(cocos2d::CCNode*, int);
    virtual void sortAllChildren();
    virtual cocos2d::CCGridBase* getGrid();
    virtual void setGrid(cocos2d::CCGridBase*);
    virtual void* getUserData();
    virtual void setUserData(void*);
    virtual cocos2d::CCObject* getUserObject();
    virtual void setUserObject(cocos2d::CCObject*);
    virtual cocos2d::CCGLProgram* getShaderProgram();
    virtual void setShaderProgram(cocos2d::CCGLProgram*);
    virtual cocos2d::CCCamera* getCamera();
    virtual bool isRunning();
    virtual void registerScriptHandler(int);
    virtual void unregisterScriptHandler();
    virtual void onEnter();
    virtual void onEnterTransitionDidFinish();
    virtual void onExit();
    virtual void onExitTransitionDidStart();
    virtual void cleanup();
    virtual void draw();
    virtual void visit();
    virtual void setActionManager(cocos2d::CCActionManager*);
    virtual cocos2d::CCActionManager* getActionManager();
    virtual void setScheduler(cocos2d::CCScheduler*);
    virtual cocos2d::CCScheduler* getScheduler();
    virtual void updateTransform();
    virtual cocos2d::CCAffineTransform const nodeToParentTransform();
    virtual cocos2d::CCAffineTransform const nodeToParentTransformFast();
    virtual cocos2d::CCAffineTransform const parentToNodeTransform();
    virtual cocos2d::CCAffineTransform nodeToWorldTransform();
    virtual cocos2d::CCAffineTransform nodeToWorldTransformFast();
    virtual cocos2d::CCAffineTransform worldToNodeTransform();
    virtual bool addComponent(cocos2d::CCComponent*);
    virtual bool removeComponent(char const*);
    virtual bool removeComponent(cocos2d::CCComponent*);
    virtual void removeAllComponents();
    virtual void updateTweenAction(float, char const*);
    virtual void updateTweenActionInt(float, int);

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

    virtual void update(float);
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

    virtual bool init();
    virtual void onEnter();
    virtual void onEnterTransitionDidFinish();
    virtual void onExit();
    virtual void registerWithTouchDispatcher();
    virtual void registerScriptTouchHandler(int, bool, int, bool);
    virtual void unregisterScriptTouchHandler();
    virtual bool isTouchEnabled();
    virtual void setTouchEnabled(bool);
    virtual void setTouchMode(cocos2d::ccTouchesMode);
    virtual int getTouchMode();
    virtual void setTouchPriority(int);
    virtual int getTouchPriority();
    virtual bool isAccelerometerEnabled();
    virtual void setAccelerometerEnabled(bool);
    virtual void setAccelerometerInterval(double);
    virtual bool isKeypadEnabled();
    virtual void setKeypadEnabled(bool);
    virtual bool isKeyboardEnabled();
    virtual void setKeyboardEnabled(bool);
    virtual bool isMouseEnabled();
    virtual void setMouseEnabled(bool);

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void ccTouchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void ccTouchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void ccTouchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void setPreviousPriority(int);
    virtual int getPreviousPriority();

    virtual void didAccelerate(cocos2d::CCAcceleration*);

    virtual void keyBackClicked();
    virtual void keyMenuClicked();

    virtual void keyDown(cocos2d::enumKeyCodes);

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

    virtual bool init();
    [[since("4.10.1")]]
    virtual void visit();

    virtual void updateColor();
    virtual bool initWithColor(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&);
    virtual bool initWithColor(cocos2d::ccColor4B const&, cocos2d::ccColor4B const&, cocos2d::CCPoint const&);
    virtual cocos2d::ccColor3B const& getStartColor();
    virtual void setStartColor(cocos2d::ccColor3B const&);
    virtual cocos2d::ccColor3B const& getEndColor();
    virtual void setEndColor(cocos2d::ccColor3B const&);
    virtual unsigned char getStartOpacity();
    virtual void setStartOpacity(unsigned char);
    virtual unsigned char getEndOpacity();
    virtual void setEndOpacity(unsigned char);
    virtual cocos2d::CCPoint const& getVector();
    virtual void setVector(cocos2d::CCPoint const&);
    virtual void setCompressedInterpolation(bool);
    virtual bool isCompressedInterpolation();

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

    virtual int getTag() const;
    virtual bool isEqual(cocos2d::CCObject const*);
    virtual void acceptVisitor(cocos2d::CCDataVisitor&);
    virtual void encodeWithCoder(DS_Dictionary*);
    virtual bool canEncode();
    virtual void setTag(int);

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

    virtual void startWithTarget(cocos2d::CCNode*);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCOrbitCamera : cocos2d::CCActionCamera {
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

    virtual bool init();
    virtual void setContentSize(cocos2d::CCSize const&);
    virtual void draw();
    virtual bool initWithColor(cocos2d::ccColor4B const&, float, float);
    virtual bool initWithColor(cocos2d::ccColor4B const&);
    virtual void updateColor();

    virtual void setColor(cocos2d::ccColor3B const&);
    virtual void setOpacity(unsigned char);

    virtual void setBlendFunc(cocos2d::ccBlendFunc);
    virtual cocos2d::ccBlendFunc getBlendFunc();

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

    virtual bool init();

    virtual void setColor(cocos2d::ccColor3B const&);
    virtual cocos2d::ccColor3B const& getColor();
    virtual cocos2d::ccColor3B const& getDisplayedColor();
    virtual unsigned char getDisplayedOpacity();
    virtual unsigned char getOpacity();
    virtual void setOpacity(unsigned char);
    virtual bool isCascadeColorEnabled();
    virtual void setCascadeColorEnabled(bool);
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&);
    virtual bool isCascadeOpacityEnabled();
    virtual void setCascadeOpacityEnabled(bool);
    virtual void updateDisplayedOpacity(unsigned char);

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

    virtual cocos2d::CCTexture2DPixelFormat getPixelFormat();
    virtual unsigned int getPixelsWide();
    virtual unsigned int getPixelsHigh();
    virtual unsigned int getName();
    virtual float getMaxS();
    virtual void setMaxS(float);
    virtual float getMaxT();
    virtual void setMaxT(float);
    virtual cocos2d::CCSize getContentSize();
    virtual cocos2d::CCGLProgram* getShaderProgram();
    virtual void setShaderProgram(cocos2d::CCGLProgram*);
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

	virtual unsigned int getTotalQuads();
	virtual unsigned int getCapacity();
	virtual cocos2d::CCTexture2D* getTexture();
	virtual void setTexture(cocos2d::CCTexture2D*);
	virtual cocos2d::ccV3F_C4B_T2F_Quad* getQuads();
	virtual void setQuads(cocos2d::ccV3F_C4B_T2F_Quad*);
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

    virtual void touchesBegan(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void touchesMoved(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void touchesEnded(cocos2d::CCSet*, cocos2d::CCEvent*);
    virtual void touchesCancelled(cocos2d::CCSet*, cocos2d::CCEvent*);

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

    virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int);

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

    virtual bool initWithDelegate(cocos2d::CCMouseDelegate*);

    cocos2d::CCMouseDelegate* m_pDelegate;
}

[[link(win, android)]]
class cocos2d::CCEGLView {
    protected CCEGLView();
    protected virtual ~CCEGLView() = ios inline {}

    virtual void end();
    virtual void swapBuffers();
    virtual bool isOpenGLReady();
    virtual void setIMEKeyboardState(bool);
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
    virtual bool attachWithIME();
    virtual bool detachWithIME();
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

    virtual bool init();

    virtual void setColor(cocos2d::ccColor3B const&);
    virtual cocos2d::ccColor3B const& getColor();
    virtual cocos2d::ccColor3B const& getDisplayedColor();
    virtual unsigned char getDisplayedOpacity();
    virtual unsigned char getOpacity();
    virtual void setOpacity(unsigned char);
    virtual bool isCascadeColorEnabled();
    virtual void setCascadeColorEnabled(bool);
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&);
    virtual bool isCascadeOpacityEnabled();
    virtual void setCascadeOpacityEnabled(bool);
    virtual void updateDisplayedOpacity(unsigned char);

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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void stop();
    virtual cocos2d::CCActionInterval* reverse();
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

    virtual bool init();
    virtual void setVertexZ(float);
    virtual void setScaleX(float);
    virtual void setScaleY(float);
    virtual void setScale(float);
    virtual void setPosition(cocos2d::CCPoint const&);
    virtual void setSkewX(float);
    virtual void setSkewY(float);
    virtual void setAnchorPoint(cocos2d::CCPoint const&);
    virtual void setVisible(bool);
    virtual void setRotation(float);
    virtual void setRotationX(float);
    virtual void setRotationY(float);
    virtual void ignoreAnchorPointForPosition(bool);
    virtual void addChild(cocos2d::CCNode*);
    virtual void addChild(cocos2d::CCNode*, int);
    virtual void addChild(cocos2d::CCNode*, int, int);
    virtual void removeChild(cocos2d::CCNode*, bool);
    virtual void removeAllChildrenWithCleanup(bool);
    virtual void reorderChild(cocos2d::CCNode*, int);
    virtual void sortAllChildren();
    virtual void draw();
    virtual void updateTransform();
    virtual bool initWithTexture(cocos2d::CCTexture2D*);
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&);
    virtual bool initWithTexture(cocos2d::CCTexture2D*, cocos2d::CCRect const&, bool);
    virtual bool initWithSpriteFrame(cocos2d::CCSpriteFrame*);
    virtual bool initWithSpriteFrameName(char const*);
    virtual bool initWithFile(char const*);
    virtual bool initWithFile(char const*, cocos2d::CCRect const&);
    virtual void setChildColor(cocos2d::ccColor3B const&);
    virtual void setChildOpacity(unsigned char);
    virtual cocos2d::CCSpriteBatchNode* getBatchNode();
    virtual void setBatchNode(cocos2d::CCSpriteBatchNode*);
    virtual void refreshTextureRect();
    virtual void setTextureRect(cocos2d::CCRect const&);
    virtual void setTextureRect(cocos2d::CCRect const&, bool, cocos2d::CCSize const&);
    virtual void setVertexRect(cocos2d::CCRect const&);
    virtual void setDisplayFrame(cocos2d::CCSpriteFrame*);
    virtual bool isFrameDisplayed(cocos2d::CCSpriteFrame*);
    virtual cocos2d::CCSpriteFrame* displayFrame();
    virtual void setDisplayFrameWithAnimationName(char const*, int);
    virtual void setTextureCoords(cocos2d::CCRect const&);
    virtual void updateBlendFunc();
    virtual void setReorderChildDirtyRecursively();
    virtual void setDirtyRecursively(bool);

    virtual void setOpacity(unsigned char);
    virtual void updateDisplayedOpacity(unsigned char);
    virtual void setColor(cocos2d::ccColor3B const&);
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&);
    virtual void setOpacityModifyRGB(bool);
    virtual bool isOpacityModifyRGB();

    virtual void setTexture(cocos2d::CCTexture2D*);
    virtual cocos2d::CCTexture2D* getTexture();

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
    virtual bool init();
    virtual void setScaleX(float);
    virtual void setScaleY(float);
    virtual void setScale(float);
    virtual void setAnchorPoint(cocos2d::CCPoint const&);
    virtual void setString(char const*);
    virtual void setString(char const*, bool);
    virtual char const* getString();
    virtual void setCString(char const*);
    virtual void updateLabel();
    virtual void setAlignment(cocos2d::CCTextAlignment);
    virtual void setWidth(float);
    virtual void setLineBreakWithoutSpace(bool);
    virtual void setString(unsigned short*, bool);

    virtual void setColor(cocos2d::ccColor3B const&);
    virtual cocos2d::ccColor3B const& getColor();
    virtual cocos2d::ccColor3B const& getDisplayedColor();
    virtual unsigned char getDisplayedOpacity();
    virtual unsigned char getOpacity();
    virtual void setOpacity(unsigned char);
    virtual void setOpacityModifyRGB(bool);
    virtual bool isOpacityModifyRGB();
    virtual bool isCascadeColorEnabled();
    virtual void setCascadeColorEnabled(bool);
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&);
    virtual bool isCascadeOpacityEnabled();
    virtual void setCascadeOpacityEnabled(bool);
    virtual void updateDisplayedOpacity(unsigned char);

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

	virtual bool init();

	virtual void setString(char const*);
	virtual char const* getString();
}

[[link(win, android)]]
class cocos2d::CCActionManager : cocos2d::CCObject {
    CCActionManager();
    virtual ~CCActionManager();

    virtual void update(float);

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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void stop();
    virtual cocos2d::CCActionInterval* reverse();

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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual float getDuration();
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
    virtual void setAnimationInterval(double);
    virtual cocos2d::ccLanguageType getCurrentLanguage();
    virtual cocos2d::TargetPlatform getTargetPlatform();
    virtual void openURL(char const*);

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

    // virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    // virtual void acceptVisitor(cocos2d::CCDataVisitor&);

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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void acceptVisitor(cocos2d::CCDataVisitor&);

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

    virtual void draw();
    virtual void visit();
    virtual cocos2d::CCSprite* getSprite();
    virtual void setSprite(cocos2d::CCSprite*);
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
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
    virtual void update(float dt) = ios inline {
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
    virtual bool isDone() = ios inline {
        return m_uTotal == m_uTimes;
    }
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = ios inline {
        m_uTotal = 0;
        m_fNextDt = m_pInnerAction->getDuration()/m_fDuration;
        CCActionInterval::startWithTarget(pTarget);
        m_pInnerAction->startWithTarget(pTarget);
    }
    virtual void stop() = ios inline {
        m_pInnerAction->stop();
        CCActionInterval::stop();
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual bool isDone();
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void step(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCBezierBy : cocos2d::CCActionInterval {
    static cocos2d::CCBezierBy* create(float, cocos2d::ccBezierConfig const&);

    bool initWithDuration(float, cocos2d::ccBezierConfig const&);

    // CCBezierBy(cocos2d::CCBezierBy const&);
    // CCBezierBy();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCBezierTo : cocos2d::CCBezierBy {
    static cocos2d::CCBezierTo* create(float, cocos2d::ccBezierConfig const&);

    bool initWithDuration(float, cocos2d::ccBezierConfig const&);

    // CCBezierTo(cocos2d::CCBezierTo const&);
    // CCBezierTo();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInT : cocos2d::CCTransitionMoveInL {
    static cocos2d::CCTransitionMoveInT* create(float, cocos2d::CCScene*);

    // CCTransitionMoveInT(cocos2d::CCTransitionMoveInT const&);
    CCTransitionMoveInT();
    virtual ~CCTransitionMoveInT();

    virtual void initScenes();
}

[[link(win, android)]]
class cocos2d::CCTransitionFade : cocos2d::CCTransitionScene {
    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*);
    static cocos2d::CCTransitionFade* create(float, cocos2d::CCScene*, cocos2d::ccColor3B const&);

    // CCTransitionFade(cocos2d::CCTransitionFade const&);
    CCTransitionFade();
    virtual ~CCTransitionFade();

    virtual void onEnter();
    virtual void onExit();
    virtual bool initWithDuration(float, cocos2d::CCScene*);
    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::ccColor3B const&);
}

[[link(win, android)]]
class cocos2d::CCTransitionRotoZoom : cocos2d::CCTransitionScene {
    static cocos2d::CCTransitionRotoZoom* create(float, cocos2d::CCScene*);

    // CCTransitionRotoZoom(cocos2d::CCTransitionRotoZoom const&);
    CCTransitionRotoZoom();
    virtual ~CCTransitionRotoZoom();

    virtual void onEnter();
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

    virtual void onEnter();
    virtual void onExit();
    virtual void cleanup();
    virtual void draw();
    virtual bool initWithDuration(float, cocos2d::CCScene*);
    virtual void sceneOrder();
}

[[link(win, android)]]
class cocos2d::CCTransitionCrossFade : cocos2d::CCTransitionScene {
	static cocos2d::CCTransitionCrossFade* create(float, cocos2d::CCScene*);

	// CCTransitionCrossFade(cocos2d::CCTransitionCrossFade const&);
    CCTransitionCrossFade();
    virtual ~CCTransitionCrossFade();

	virtual void onEnter();
	virtual void onExit();
	virtual void draw();
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeBL : cocos2d::CCTransitionFadeTR {
	static cocos2d::CCTransitionFadeBL* create(float, cocos2d::CCScene*);

	// CCTransitionFadeBL(cocos2d::CCTransitionFadeBL const&);
    CCTransitionFadeBL();
    virtual ~CCTransitionFadeBL();

	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeDown : cocos2d::CCTransitionFadeTR {
	static cocos2d::CCTransitionFadeDown* create(float, cocos2d::CCScene*);

	// CCTransitionFadeDown(cocos2d::CCTransitionFadeDown const&);
    CCTransitionFadeDown();
    virtual ~CCTransitionFadeDown();

	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeTR : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionFadeTR* create(float, cocos2d::CCScene*);

	// CCTransitionFadeTR(cocos2d::CCTransitionFadeTR const&);
    CCTransitionFadeTR();
    virtual ~CCTransitionFadeTR();

	virtual void onEnter();
	virtual void sceneOrder();
	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
}

[[link(win, android)]]
class cocos2d::CCTransitionFadeUp : cocos2d::CCTransitionFadeTR {
	static cocos2d::CCTransitionFadeUp* create(float, cocos2d::CCScene*);

	// CCTransitionFadeUp(cocos2d::CCTransitionFadeUp const&);
    CCTransitionFadeUp();
    virtual ~CCTransitionFadeUp();

	virtual cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipAngular : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionFlipAngular* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionFlipAngular(cocos2d::CCTransitionFlipAngular const&);
    CCTransitionFlipAngular();
    virtual ~CCTransitionFlipAngular();

	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipX : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionFlipX(cocos2d::CCTransitionFlipX const&);
    CCTransitionFlipX();
    virtual ~CCTransitionFlipX();

	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionFlipY : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionFlipY(cocos2d::CCTransitionFlipY const&);
    CCTransitionFlipY();
    virtual ~CCTransitionFlipY();

	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionJumpZoom : cocos2d::CCTransitionScene {
	static cocos2d::CCTransitionJumpZoom* create(float, cocos2d::CCScene*);

	// CCTransitionJumpZoom(cocos2d::CCTransitionJumpZoom const&);
    CCTransitionJumpZoom();
    virtual ~CCTransitionJumpZoom();

	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInB : cocos2d::CCTransitionMoveInL {
	static cocos2d::CCTransitionMoveInB* create(float, cocos2d::CCScene*);

	// CCTransitionMoveInB(cocos2d::CCTransitionMoveInB const&);
    CCTransitionMoveInB();
    virtual ~CCTransitionMoveInB();

	virtual void initScenes();
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInL : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionMoveInL* create(float, cocos2d::CCScene*);

	// CCTransitionMoveInL(cocos2d::CCTransitionMoveInL const&);
    CCTransitionMoveInL();
    virtual ~CCTransitionMoveInL();

	virtual void onEnter();
	virtual void initScenes();
	virtual cocos2d::CCActionInterval* action();

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
}

[[link(win, android)]]
class cocos2d::CCTransitionMoveInR : cocos2d::CCTransitionMoveInL {
	static cocos2d::CCTransitionMoveInR* create(float, cocos2d::CCScene*);

	// CCTransitionMoveInR(cocos2d::CCTransitionMoveInR const&);
    CCTransitionMoveInR();
    virtual ~CCTransitionMoveInR();

	virtual void initScenes();
}

[[link(win, android)]]
class cocos2d::CCTransitionShrinkGrow : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionShrinkGrow* create(float, cocos2d::CCScene*);

	// CCTransitionShrinkGrow(cocos2d::CCTransitionShrinkGrow const&);
    CCTransitionShrinkGrow();
    virtual ~CCTransitionShrinkGrow();

	virtual void onEnter();

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInB : cocos2d::CCTransitionSlideInL {
	static cocos2d::CCTransitionSlideInB* create(float, cocos2d::CCScene*);

	// CCTransitionSlideInB(cocos2d::CCTransitionSlideInB const&);
    CCTransitionSlideInB();
    virtual ~CCTransitionSlideInB();

	virtual void sceneOrder();
	virtual void initScenes();
	virtual cocos2d::CCActionInterval* action();
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInL : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionSlideInL* create(float, cocos2d::CCScene*);

	// CCTransitionSlideInL(cocos2d::CCTransitionSlideInL const&);
    CCTransitionSlideInL();
    virtual ~CCTransitionSlideInL();

	virtual void onEnter();
	virtual void sceneOrder();
	virtual void initScenes();
	virtual cocos2d::CCActionInterval* action();

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInR : cocos2d::CCTransitionSlideInL {
	static cocos2d::CCTransitionSlideInR* create(float, cocos2d::CCScene*);

	// CCTransitionSlideInR(cocos2d::CCTransitionSlideInR const&);
    CCTransitionSlideInR();
    virtual ~CCTransitionSlideInR();

	virtual void sceneOrder();
	virtual void initScenes();
	virtual cocos2d::CCActionInterval* action();
}

[[link(win, android)]]
class cocos2d::CCTransitionSlideInT : cocos2d::CCTransitionSlideInL {
	static cocos2d::CCTransitionSlideInT* create(float, cocos2d::CCScene*);

	// CCTransitionSlideInT(cocos2d::CCTransitionSlideInT const&);
    CCTransitionSlideInT();
    virtual ~CCTransitionSlideInT();

	virtual void sceneOrder();
	virtual void initScenes();
	virtual cocos2d::CCActionInterval* action();
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitCols : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionSplitCols* create(float, cocos2d::CCScene*);

	// CCTransitionSplitCols(cocos2d::CCTransitionSplitCols const&);
    CCTransitionSplitCols();
    virtual ~CCTransitionSplitCols();

	virtual void onEnter();
	virtual cocos2d::CCActionInterval* action();

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
}

[[link(win, android)]]
class cocos2d::CCTransitionSplitRows : cocos2d::CCTransitionSplitCols {
	static cocos2d::CCTransitionSplitRows* create(float, cocos2d::CCScene*);

	// CCTransitionSplitRows(cocos2d::CCTransitionSplitRows const&);
    CCTransitionSplitRows();
    virtual ~CCTransitionSplitRows();

	virtual cocos2d::CCActionInterval* action();
}

[[link(win, android)]]
class cocos2d::CCTransitionTurnOffTiles : cocos2d::CCTransitionScene, cocos2d::CCTransitionEaseScene {
	static cocos2d::CCTransitionTurnOffTiles* create(float, cocos2d::CCScene*);

	// CCTransitionTurnOffTiles(cocos2d::CCTransitionTurnOffTiles const&);
    CCTransitionTurnOffTiles();
    virtual ~CCTransitionTurnOffTiles();

	virtual void onEnter();
	virtual void sceneOrder();

	virtual cocos2d::CCActionInterval* easeActionWithAction(cocos2d::CCActionInterval*);
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipAngular : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionZoomFlipAngular* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionZoomFlipAngular(cocos2d::CCTransitionZoomFlipAngular const&);
    CCTransitionZoomFlipAngular();
    virtual ~CCTransitionZoomFlipAngular();

	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipX : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionZoomFlipX* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionZoomFlipX(cocos2d::CCTransitionZoomFlipX const&);
    CCTransitionZoomFlipX();
    virtual ~CCTransitionZoomFlipX();

	virtual void onEnter();
}

[[link(win, android)]]
class cocos2d::CCTransitionZoomFlipY : cocos2d::CCTransitionSceneOriented {
	static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*);
	static cocos2d::CCTransitionZoomFlipY* create(float, cocos2d::CCScene*, cocos2d::tOrientation);

	// CCTransitionZoomFlipY(cocos2d::CCTransitionZoomFlipY const&);
    CCTransitionZoomFlipY();
    virtual ~CCTransitionZoomFlipY();

	virtual void onEnter();
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

	virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
	virtual void update(float);
	virtual void startWithTarget(cocos2d::CCNode*);
	virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int);
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void stop();
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCHide : cocos2d::CCActionInstant {
    static cocos2d::CCHide* create();

    // CCHide(cocos2d::CCHide const&);
    // CCHide();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCFiniteTimeAction* reverse();
}

[[link(win, android)]]
class cocos2d::CCShow : cocos2d::CCActionInstant {
    static cocos2d::CCShow* create();

    // CCShow(cocos2d::CCShow const&);
    // CCShow();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCFiniteTimeAction* reverse();
}

[[link(win, android)]]
class cocos2d::CCCallFunc : cocos2d::CCActionInstant {
    static cocos2d::CCCallFunc* create(cocos2d::CCObject*, cocos2d::SEL_CallFunc);

    // CCCallFunc(cocos2d::CCCallFunc const&);
    // CCCallFunc();
    [[since("4.2.1")]]
    virtual ~CCCallFunc();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual bool initWithTarget(cocos2d::CCObject*);
    virtual void execute();
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

    virtual bool initWithTarget(cocos2d::CCObject* pSelectorTarget, cocos2d::SEL_CallFuncN selector) = ios inline {
        if (CCCallFunc::initWithTarget(pSelectorTarget)) {
            m_pCallFuncN = selector;
            return true;
        }

        return false;
    }

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* zone) = ios inline {
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
    
    virtual void execute() = ios inline {
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

    virtual bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_CallFuncND, void*) = ios inline {
        if (!CCCallFunc::initWithTarget(p0)) return false;
        m_pData = p2;
        m_pCallFuncND = p1;
        return true;
    }
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*) = ios inline {
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
    virtual void execute() = ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void execute();
    virtual bool initWithTarget(cocos2d::CCObject*, cocos2d::SEL_MenuHandler, cocos2d::CCObject*);
}

[[link(win, android)]]
class cocos2d::CCClippingNode : cocos2d::CCNode {
    static cocos2d::CCClippingNode* create();
    static cocos2d::CCClippingNode* create(cocos2d::CCNode* stencil);

    protected CCClippingNode();
    virtual ~CCClippingNode();

    virtual bool init();

    virtual bool init(cocos2d::CCNode* pStencil);
    virtual void onEnter();
    virtual void onEnterTransitionDidFinish();
    virtual void onExit();
    virtual void onExitTransitionDidStart();
    virtual void visit();

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

    virtual bool init();
    virtual void draw();

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

    virtual bool init();
    virtual void addChild(cocos2d::CCNode*);
    virtual void addChild(cocos2d::CCNode*, int);
    virtual void addChild(cocos2d::CCNode*, int, int);
    virtual void removeChild(cocos2d::CCNode*, bool);
    virtual void removeAllChildrenWithCleanup(bool);
    virtual void reorderChild(cocos2d::CCNode*, int);
    virtual void sortAllChildren();
    virtual void draw();
    virtual void visit();

    virtual void setBlendFunc(cocos2d::ccBlendFunc);
    virtual cocos2d::ccBlendFunc getBlendFunc();
    virtual cocos2d::CCTexture2D* getTexture();
    virtual void setTexture(cocos2d::CCTexture2D*);

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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual bool isEqual(cocos2d::CCObject const*);
    virtual void acceptVisitor(cocos2d::CCDataVisitor&);

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

    virtual void activate();
    virtual void selected();
    virtual void unselected();
    virtual void registerScriptTapHandler(int);
    virtual void unregisterScriptTapHandler();
    virtual bool isEnabled();
    virtual void setEnabled(bool);
    virtual bool isSelected();

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

    virtual void selected();
    virtual void unselected();
    virtual void setEnabled(bool);
    virtual cocos2d::CCNode* getNormalImage();
    virtual void setNormalImage(cocos2d::CCNode*);
    virtual cocos2d::CCNode* getSelectedImage();
    virtual void setSelectedImage(cocos2d::CCNode*);
    virtual cocos2d::CCNode* getDisabledImage();
    virtual void setDisabledImage(cocos2d::CCNode*);
    virtual void updateImagesVisibility();

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

    virtual bool init();
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

    virtual bool init();
    virtual void addChild(cocos2d::CCNode*);
    virtual void addChild(cocos2d::CCNode*, int);
    virtual void addChild(cocos2d::CCNode*, int, int);
    virtual void removeChild(cocos2d::CCNode*, bool);
    virtual void onExit();
    virtual void registerWithTouchDispatcher();

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);

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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual cocos2d::CCActionInterval* reverse();
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

    virtual bool initWithDuration(float fDuration, float fDeltaAngleX, float fDeltaAngleY);
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCDelayTime : cocos2d::CCActionInterval {
    static cocos2d::CCDelayTime* create(float);

    // CCDelayTime(cocos2d::CCDelayTime const&);
    // CCDelayTime();

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
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

    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual cocos2d::CCActionInterval* reverse();
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
    [[since("4.10.1")]]
    virtual void deleteForward();
    virtual const char* getContentText();
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

    virtual bool init();
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

    virtual bool init();
    virtual void onEnter();
    virtual void onExit();
    virtual void registerWithTouchDispatcher();
    virtual void setOpacityModifyRGB(bool);
    virtual bool isOpacityModifyRGB();
    virtual void setEnabled(bool);
    virtual bool isEnabled();
    virtual void setSelected(bool);
    virtual bool isSelected();
    virtual void setHighlighted(bool);
    virtual bool isHighlighted();
    virtual void needsLayout();
    virtual void sendActionsForControlEvents(unsigned int);
    virtual void addTargetWithActionForControlEvents(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, unsigned int);
    virtual void removeTargetWithActionForControlEvents(cocos2d::CCObject*, cocos2d::extension::SEL_CCControlHandler, unsigned int);
    virtual cocos2d::CCPoint getTouchLocation(cocos2d::CCTouch*);
    virtual bool isTouchInside(cocos2d::CCTouch*);
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

    virtual bool init();
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void setColorValue(cocos2d::ccColor3B const&);
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

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void setEnabled(bool);
    virtual bool initWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint);
    virtual void setHue(float);
    virtual void setHuePercentage(float);
    [[since("4.10.1")]]
    virtual void registerWithTouchDispatcher();
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

    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void setEnabled(bool);
    virtual bool initWithTargetAndPos(cocos2d::CCNode*, cocos2d::CCPoint);
    virtual void updateWithHSV(cocos2d::extension::HSV);
    virtual void updateDraggerWithHSV(cocos2d::extension::HSV);
    [[since("4.10.1")]]
    virtual void registerWithTouchDispatcher();
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

    virtual bool init();
    virtual void setContentSize(const cocos2d::CCSize& size);
    virtual void visit();
    virtual unsigned char getOpacity();
    virtual void setOpacity(unsigned char);
    virtual void updateDisplayedOpacity(unsigned char);
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void stop();
    virtual cocos2d::CCActionInterval* reverse();
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual bool isDone();
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void stop();
    virtual void step(float);
    virtual cocos2d::CCActionInterval* reverse();
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

    virtual void draw();
    virtual bool isOpacityModifyRGB();
    virtual void setOpacityModifyRGB(bool);
    virtual unsigned char getOpacity();
    virtual unsigned char getDisplayedOpacity();
    virtual void setOpacity(unsigned char);
    virtual void updateDisplayedOpacity(unsigned char);
    virtual bool isCascadeOpacityEnabled();
    virtual void setCascadeOpacityEnabled(bool);
    virtual cocos2d::ccColor3B const& getColor();
    virtual cocos2d::ccColor3B const& getDisplayedColor();
    virtual void setColor(cocos2d::ccColor3B const&);
    virtual void updateDisplayedColor(cocos2d::ccColor3B const&);
    virtual bool isCascadeColorEnabled();
    virtual void setCascadeColorEnabled(bool);

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
    virtual void setAnimationInterval(double);
    virtual void stopAnimation();
    virtual void startAnimation();
    virtual void mainLoop();
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
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
    virtual void update(float t) = ios inline {
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
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = ios inline {
        CCActionInterval::startWithTarget(pTarget);
        m_previousPos = m_startPosition = pTarget->getPosition();
    }
    virtual cocos2d::CCActionInterval* reverse() = ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone* pZone) = ios inline {
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
    virtual void startWithTarget(cocos2d::CCNode* pTarget) = ios inline {
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void step(float);
    virtual bool isDone();
    virtual void stop();
}

[[link(win, android)]]
class cocos2d::CCCardinalSplineBy : cocos2d::CCCardinalSplineTo {
    static cocos2d::CCCardinalSplineBy* create(float, cocos2d::CCPointArray*, float);

    CCCardinalSplineBy();

    virtual void startWithTarget(cocos2d::CCNode*);
    virtual cocos2d::CCActionInterval* reverse();
    virtual void updatePosition(cocos2d::CCPoint&);
}

[[link(win, android)]]
class cocos2d::CCCardinalSplineTo : cocos2d::CCActionInterval {
    static cocos2d::CCCardinalSplineTo* create(float, cocos2d::CCPointArray*, float);

    CCCardinalSplineTo();
    virtual ~CCCardinalSplineTo();

    bool initWithDuration(float, cocos2d::CCPointArray*, float);

    virtual cocos2d::CCCardinalSplineTo* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
    virtual void updatePosition(cocos2d::CCPoint&);
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

    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCAccelDeccelAmplitude : cocos2d::CCActionInterval {
    static cocos2d::CCAccelDeccelAmplitude* create(cocos2d::CCAction*, float);

    virtual ~CCAccelDeccelAmplitude();

    bool initWithAction(cocos2d::CCAction*, float);

    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCDeccelAmplitude : cocos2d::CCActionInterval {
    static cocos2d::CCDeccelAmplitude* create(cocos2d::CCAction*, float);

    virtual ~CCDeccelAmplitude();

    bool initWithAction(cocos2d::CCAction*, float);

    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCGrid3DAction : cocos2d::CCGridAction {
    cocos2d::ccVertex3F vertex(cocos2d::CCPoint const&);
    cocos2d::ccVertex3F originalVertex(cocos2d::CCPoint const&);
    void setVertex(cocos2d::CCPoint const&, cocos2d::ccVertex3F const&);

    virtual cocos2d::CCGridBase* getGrid();
}

[[link(win, android)]]
class cocos2d::CCGridAction : cocos2d::CCActionInterval {
    static cocos2d::CCGridAction* create(float, cocos2d::CCSize const&);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual cocos2d::CCActionInterval* reverse();
    virtual bool initWithDuration(float, cocos2d::CCSize const&);
    virtual cocos2d::CCGridBase* getGrid();
}

[[link(win, android)]]
class cocos2d::CCReuseGrid : cocos2d::CCActionInstant {
    static cocos2d::CCReuseGrid* create(int);

    bool initWithTimes(int);

    virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCStopGrid : cocos2d::CCActionInstant {
    static cocos2d::CCStopGrid* create();

    virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCTiledGrid3DAction : cocos2d::CCGridAction {
    static cocos2d::CCTiledGrid3DAction* create(float, cocos2d::CCSize const&);

    cocos2d::ccQuad3 tile(cocos2d::CCPoint const&);
    cocos2d::ccQuad3 originalTile(cocos2d::CCPoint const&);
    void setTile(cocos2d::CCPoint const&, cocos2d::ccQuad3 const&);

    virtual cocos2d::CCGridBase* getGrid();
}

[[link(win, android)]]
class cocos2d::CCFlipX3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCFlipX3D* create(float);

    virtual bool initWithDuration(float);
    virtual bool initWithSize(cocos2d::CCSize const&, float);
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCFlipY3D : cocos2d::CCFlipX3D {
    static cocos2d::CCFlipY3D* create(float);

    virtual void update(float);
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
}

[[link(win, android)]]
class cocos2d::CCLens3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCLens3D* create(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float);

    void setPosition(cocos2d::CCPoint const&);
    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCLiquid : cocos2d::CCGrid3DAction {
    static cocos2d::CCLiquid* create(float, cocos2d::CCSize const&, unsigned int, float);

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCRipple3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCRipple3D* create(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float);

    void setPosition(cocos2d::CCPoint const&);
    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint const&, float, unsigned int, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCShaky3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCShaky3D* create(float, cocos2d::CCSize const&, int, bool);

    bool initWithDuration(float, cocos2d::CCSize const&, int, bool);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCTwirl : cocos2d::CCGrid3DAction {
    static cocos2d::CCTwirl* create(float, cocos2d::CCSize const&, cocos2d::CCPoint, unsigned int, float);

    void setPosition(cocos2d::CCPoint const&);
    bool initWithDuration(float, cocos2d::CCSize const&, cocos2d::CCPoint, unsigned int, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCWaves : cocos2d::CCGrid3DAction {
    static cocos2d::CCWaves* create(float, cocos2d::CCSize const&, unsigned int, float, bool, bool);

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float, bool, bool);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCWaves3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCWaves3D* create(float, cocos2d::CCSize const&, unsigned int, float);

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCFlipX : cocos2d::CCActionInstant {
    static cocos2d::CCFlipX* create(bool);

    bool initWithFlipX(bool);

    virtual void update(float);
    virtual cocos2d::CCFiniteTimeAction* reverse();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
}

[[link(win, android)]]
class cocos2d::CCFlipY : cocos2d::CCActionInstant {
    static cocos2d::CCFlipY* create(bool);

    bool initWithFlipY(bool);

    virtual void update(float);
    virtual cocos2d::CCFiniteTimeAction* reverse();
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
}

[[link(win, android)]]
class cocos2d::CCPlace : cocos2d::CCActionInstant {
    static cocos2d::CCPlace* create(cocos2d::CCPoint const&);

    bool initWithPosition(cocos2d::CCPoint const&);

    virtual void update(float);
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
}

[[link(win, android)]]
class cocos2d::CCToggleVisibility : cocos2d::CCActionInstant {
    static cocos2d::CCToggleVisibility* create();

    virtual void update(float);
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
}

[[link(win, android)]]
class cocos2d::CCReverseTime : cocos2d::CCActionInterval {
    static cocos2d::CCReverseTime* create(cocos2d::CCFiniteTimeAction*);

    CCReverseTime();
    virtual ~CCReverseTime();

    bool initWithAction(cocos2d::CCFiniteTimeAction*);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void stop();
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCTargetedAction : cocos2d::CCActionInterval {
    static cocos2d::CCTargetedAction* create(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*);

    CCTargetedAction();
    virtual ~CCTargetedAction();

    bool initWithTarget(cocos2d::CCNode*, cocos2d::CCFiniteTimeAction*);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void stop();
    virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCTintBy : cocos2d::CCActionInterval {
    static cocos2d::CCTintBy* create(float, short, short, short);

    bool initWithDuration(float, short, short, short);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void update(float);
    virtual cocos2d::CCActionInterval* reverse();
}

[[link(win, android)]]
class cocos2d::CCPageTurn3D : cocos2d::CCGrid3DAction {
    static cocos2d::CCPageTurn3D* create(float, cocos2d::CCSize const&);

    virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCProgressFromTo : cocos2d::CCActionInterval {
    static cocos2d::CCProgressFromTo* create(float, float, float);

    bool initWithDuration(float, float, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual cocos2d::CCActionInterval* reverse();
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCProgressTo : cocos2d::CCActionInterval {
    static cocos2d::CCProgressTo* create(float, float);

    bool initWithDuration(float, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCFadeOutBLTiles : cocos2d::CCFadeOutTRTiles {
    static cocos2d::CCFadeOutBLTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float);
}

[[link(win, android)]]
class cocos2d::CCFadeOutDownTiles : cocos2d::CCFadeOutUpTiles {
    static cocos2d::CCFadeOutDownTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float);
}

[[link(win, android)]]
class cocos2d::CCFadeOutTRTiles : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCFadeOutTRTiles* create(float, cocos2d::CCSize const&);

    void turnOnTile(cocos2d::CCPoint const&);
    void turnOffTile(cocos2d::CCPoint const&);

    virtual float testFunc(cocos2d::CCSize const&, float);
    virtual void transformTile(cocos2d::CCPoint const&, float);
    virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCFadeOutUpTiles : cocos2d::CCFadeOutTRTiles {
    static cocos2d::CCFadeOutUpTiles* create(float, cocos2d::CCSize const&);

    virtual float testFunc(cocos2d::CCSize const&, float);
    virtual void transformTile(cocos2d::CCPoint const&, float);
}

[[link(win, android)]]
class cocos2d::CCJumpTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCJumpTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float);

    bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCShakyTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCShakyTiles3D* create(float, cocos2d::CCSize const&, int, bool);

    virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool);
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCShatteredTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCShatteredTiles3D* create(float, cocos2d::CCSize const&, int, bool);

    virtual bool initWithDuration(float, cocos2d::CCSize const&, int, bool);
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
}

[[link(win, android)]]
class cocos2d::CCShuffleTiles : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCShuffleTiles* create(float, cocos2d::CCSize const&, unsigned int);

    virtual ~CCShuffleTiles();

    void shuffle(unsigned int*, unsigned int);
    cocos2d::CCSize getDelta(cocos2d::CCSize const&);
    void placeTile(cocos2d::CCPoint const&, cocos2d::Tile*);

    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int);
    virtual void startWithTarget(cocos2d::CCNode*);
    virtual void update(float);
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
}

[[link(win, android)]]
class cocos2d::CCSplitCols : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCSplitCols* create(float, unsigned int);

    virtual bool initWithDuration(float, unsigned int);
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCSplitRows : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCSplitRows* create(float, unsigned int);

    virtual bool initWithDuration(float, unsigned int);
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
    virtual void startWithTarget(cocos2d::CCNode*);
}

[[link(win, android)]]
class cocos2d::CCWavesTiles3D : cocos2d::CCTiledGrid3DAction {
    static cocos2d::CCWavesTiles3D* create(float, cocos2d::CCSize const&, unsigned int, float);

    virtual bool initWithDuration(float, cocos2d::CCSize const&, unsigned int, float);
    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
    virtual void update(float);
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

    virtual cocos2d::CCTextureAtlas* getTextureAtlas();
    virtual void setTextureAtlas(cocos2d::CCTextureAtlas*);
    virtual cocos2d::ccBlendFunc getBlendFunc();
    virtual void setBlendFunc(cocos2d::ccBlendFunc);
    virtual unsigned int getQuadsToDraw();
    virtual void setQuadsToDraw(unsigned int);
    virtual void updateAtlasValues();
    virtual void draw();
    virtual cocos2d::CCTexture2D* getTexture();
    virtual void setTexture(cocos2d::CCTexture2D*);
    virtual bool isOpacityModifyRGB();
    virtual void setOpacityModifyRGB(bool);
    virtual cocos2d::ccColor3B const& getColor();
    virtual void setColor(cocos2d::ccColor3B const&);
    virtual void setOpacity(unsigned char);
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
    virtual void visit(cocos2d::CCBool const*) = ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCInteger const*) = ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCFloat const*) = ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCDouble const*) = ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCString const*) = ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCArray const*) = ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCDictionary const*) = ios inline {
        return visitObject(p0);
    }
    virtual void visit(cocos2d::CCSet const*) = ios inline {
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

    virtual void clear();
    virtual gd::string getResult();
    virtual void visitObject(cocos2d::CCObject const*);
    virtual void visit(cocos2d::CCBool const*);
    virtual void visit(cocos2d::CCInteger const*);
    virtual void visit(cocos2d::CCFloat const*);
    virtual void visit(cocos2d::CCDouble const*);
    virtual void visit(cocos2d::CCString const*);
    virtual void visit(cocos2d::CCArray const*);
    virtual void visit(cocos2d::CCDictionary const*);
    virtual void visit(cocos2d::CCSet const*);
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
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

    virtual void blit();
    virtual void reuse();
    virtual void calculateVertexPoints();
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

    virtual void blit();
    virtual void reuse();
    virtual void calculateVertexPoints();
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

    virtual void blit();
    virtual void reuse();
    virtual void calculateVertexPoints();
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

    virtual void needsLayout();
    virtual void setEnabled(bool);
    virtual void setSelected(bool);
    virtual void setHighlighted(bool);
    virtual cocos2d::CCSize getPreferredSize();
    virtual void setPreferredSize(cocos2d::CCSize);
    virtual bool getZoomOnTouchDown();
    virtual void setZoomOnTouchDown(bool);
    virtual cocos2d::CCPoint getLabelAnchorPoint();
    virtual void setLabelAnchorPoint(cocos2d::CCPoint);
    virtual unsigned char getOpacity();
    virtual void setOpacity(unsigned char);
    virtual cocos2d::ccColor3B const& getColor();
    virtual void setColor(cocos2d::ccColor3B const&);
    virtual void setMargins(int, int);
    virtual bool init();
    virtual bool initWithLabelAndBackgroundSprite(cocos2d::CCNode*, cocos2d::extension::CCScale9Sprite*);
    virtual bool initWithTitleAndFontNameAndFontSize(gd::string, char const*, float);
    virtual bool initWithBackgroundSprite(cocos2d::extension::CCScale9Sprite*);
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual cocos2d::CCString* getTitleForState(unsigned int);
    virtual void setTitleForState(cocos2d::CCString*, unsigned int);
    virtual cocos2d::ccColor3B const getTitleColorForState(unsigned int);
    virtual void setTitleColorForState(cocos2d::ccColor3B, unsigned int);
    virtual cocos2d::CCNode* getTitleLabelForState(unsigned int);
    virtual void setTitleLabelForState(cocos2d::CCNode*, unsigned int);
    virtual void setTitleTTFForState(char const*, unsigned int);
    virtual char const* getTitleTTFForState(unsigned int);
    virtual void setTitleTTFSizeForState(float, unsigned int);
    virtual float getTitleTTFSizeForState(unsigned int);
    virtual void setTitleBMFontForState(char const*, unsigned int);
    virtual char const* getTitleBMFontForState(unsigned int);
    virtual cocos2d::extension::CCScale9Sprite* getBackgroundSpriteForState(unsigned int);
    virtual void setBackgroundSpriteForState(cocos2d::extension::CCScale9Sprite*, unsigned int);
    virtual void setBackgroundSpriteFrameForState(cocos2d::CCSpriteFrame*, unsigned int);
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

    virtual void setEnabled(bool);
    virtual bool isTouchInside(cocos2d::CCTouch*);
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
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

    virtual void setValue(float);
    virtual void setMinimumValue(float);
    virtual void setMaximumValue(float);
    virtual void setEnabled(bool);
    virtual bool isTouchInside(cocos2d::CCTouch*);
    virtual bool initWithSprites(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*);
    virtual void needsLayout();
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
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

    virtual void setWraps(bool);
    virtual void setMinimumValue(double);
    virtual void setMaximumValue(double);
    virtual void setValue(double);
    virtual double getValue();
    virtual void setStepValue(double);
    virtual void setValueWithSendingEvent(double, bool);
    virtual bool isContinuous();
    virtual void update(float);
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
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

    virtual void setEnabled(bool);
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
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

    virtual void setPosition(cocos2d::CCPoint const&);
    virtual void setVisible(bool);
    virtual void setContentSize(cocos2d::CCSize const&);
    virtual void setAnchorPoint(cocos2d::CCPoint const&);
    virtual void visit();
    virtual void onEnter();
    virtual void onExit();
    virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&);
    virtual void keyboardDidShow(cocos2d::CCIMEKeyboardNotificationInfo&);
    virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&);
    virtual void keyboardDidHide(cocos2d::CCIMEKeyboardNotificationInfo&);
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

    virtual bool init();
    virtual void registerWithTouchDispatcher();
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void setContentSize(cocos2d::CCSize const&);
    virtual cocos2d::CCSize const& getContentSize() const;
    virtual void visit();
    virtual void addChild(cocos2d::CCNode*, int, int);
    virtual void addChild(cocos2d::CCNode*, int);
    virtual void addChild(cocos2d::CCNode*);
    virtual void setTouchEnabled(bool);
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

    virtual void scrollViewDidScroll(cocos2d::extension::CCScrollView*);
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*);
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*);
}

[[link(win, android)]]
class cocos2d::extension::CCTableViewCell : cocos2d::CCNode, cocos2d::extension::CCSortableObject {
    unsigned int getIdx();
    void setIdx(unsigned int);
    void reset();

    virtual void setObjectID(unsigned int);
    virtual unsigned int getObjectID();
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

    virtual bool initWithDelegate(cocos2d::CCKeypadDelegate*);
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

    virtual bool initWithDuration(float, cocos2d::CCScene*, cocos2d::tOrientation);
}

[[link(win, android)]]
class cocos2d::CCTransitionPageTurn : cocos2d::CCTransitionScene {
    static cocos2d::CCTransitionPageTurn* create(float, cocos2d::CCScene*, bool);

    CCTransitionPageTurn();
    virtual ~CCTransitionPageTurn();

    cocos2d::CCActionInterval* actionWithSize(cocos2d::CCSize const&);

    virtual bool initWithDuration(float, cocos2d::CCScene*, bool);
    virtual void onEnter();
    virtual void sceneOrder();
}

[[link(win, android)]]
class cocos2d::CCTransitionProgress : cocos2d::CCTransitionScene {
    static cocos2d::CCTransitionProgress* create(float, cocos2d::CCScene*);

    CCTransitionProgress();

    virtual void onEnter();
    virtual void onExit();
    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
    virtual void setupTransition();
    virtual void sceneOrder();
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressHorizontal : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressHorizontal* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressInOut : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressInOut* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
    virtual void sceneOrder();
    virtual void setupTransition();
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressOutIn : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressOutIn* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCCW : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressRadialCCW* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressRadialCW : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressRadialCW* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCTransitionProgressVertical : cocos2d::CCTransitionProgress {
    static cocos2d::CCTransitionProgressVertical* create(float, cocos2d::CCScene*);

    virtual cocos2d::CCProgressTimer* progressTimerNodeWithRenderTexture(cocos2d::CCRenderTexture*);
}

[[link(win, android)]]
class cocos2d::CCLabelAtlas : cocos2d::CCAtlasNode, cocos2d::CCLabelProtocol {
    static cocos2d::CCLabelAtlas* create(char const*, char const*, unsigned int, unsigned int, unsigned int);
    static cocos2d::CCLabelAtlas* create(char const*, char const*);

    bool initWithString(char const*, char const*, unsigned int, unsigned int, unsigned int);
    bool initWithString(char const*, char const*);
    bool initWithString(char const*, cocos2d::CCTexture2D*, unsigned int, unsigned int, unsigned int);

    virtual void updateAtlasValues();
    virtual void setString(char const*);
    virtual char const* getString();
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

    virtual cocos2d::ccColor3B const& getDisabledColor();
    virtual void setDisabledColor(cocos2d::ccColor3B const&);
    virtual cocos2d::CCNode* getLabel();
    virtual void setLabel(cocos2d::CCNode*);
    virtual void activate();
    virtual void selected();
    virtual void unselected();
    virtual void setEnabled(bool);
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

    virtual unsigned int getSelectedIndex();
    virtual void setSelectedIndex(unsigned int);
    virtual cocos2d::CCArray* getSubItems();
    virtual void setSubItems(cocos2d::CCArray*);
    virtual void activate();
    virtual void selected();
    virtual void unselected();
    virtual void setEnabled(bool);
}

[[link(win, android)]]
class cocos2d::CCParticleFireworks : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFireworks* create();
    static cocos2d::CCParticleFireworks* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleFlower : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleFlower* create();
    static cocos2d::CCParticleFlower* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleGalaxy : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleGalaxy* create();
    static cocos2d::CCParticleGalaxy* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleMeteor : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleMeteor* create();
    static cocos2d::CCParticleMeteor* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleSmoke : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSmoke* create();
    static cocos2d::CCParticleSmoke* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleSpiral : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSpiral* create();
    static cocos2d::CCParticleSpiral* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int);
}

[[link(win, android)]]
class cocos2d::CCParticleSun : cocos2d::CCParticleSystemQuad {
    static cocos2d::CCParticleSun* create();
    static cocos2d::CCParticleSun* createWithTotalParticles(unsigned int);

    virtual bool initWithTotalParticles(unsigned int);
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

    virtual void addChild(cocos2d::CCNode*);
    virtual void addChild(cocos2d::CCNode*, int);
    virtual void addChild(cocos2d::CCNode*, int, int);
    virtual void removeChild(cocos2d::CCNode*, bool);
    virtual void reorderChild(cocos2d::CCNode*, int);
    virtual void removeAllChildrenWithCleanup(bool);
    virtual void draw();
    virtual cocos2d::CCTexture2D* getTexture();
    virtual void setTexture(cocos2d::CCTexture2D*);
    virtual void setBlendFunc(cocos2d::ccBlendFunc);
    virtual cocos2d::ccBlendFunc getBlendFunc();
    virtual void visit();
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

    virtual bool initWithDelegate(cocos2d::CCKeyboardDelegate*);
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

    virtual cocos2d::CCObject* copyWithZone(cocos2d::CCZone*);
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

    virtual bool init();
    virtual void onEnter();
    virtual void onExit();
    virtual void update(float);
    virtual bool serialize(void*);
    virtual bool isEnabled() const;
    virtual void setEnabled(bool);
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

    virtual cocos2d::CCComponent* get(char const*) const;
    virtual bool add(cocos2d::CCComponent*);
    virtual bool remove(char const*);
    virtual bool remove(cocos2d::CCComponent*);
    virtual void removeAll();
    virtual void visit(float);
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

    virtual cocos2d::CCObject* getTarget();
    virtual cocos2d::SEL_CallFuncO getSelector();
    virtual char* getName();
    virtual cocos2d::CCObject* getObject();
    virtual int getHandler();
    virtual void setHandler(int);
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

    virtual void addChild(cocos2d::CCNode*, unsigned int, cocos2d::CCPoint const&, cocos2d::CCPoint const&);
    virtual void addChild(cocos2d::CCNode*, unsigned int, int);
    virtual void removeChild(cocos2d::CCNode*, bool);
    virtual void removeAllChildrenWithCleanup(bool);
    virtual void visit();
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

    virtual cocos2d::CCTMXTilesetInfo* getTileSet();
    virtual void setTileSet(cocos2d::CCTMXTilesetInfo*);
    virtual cocos2d::CCDictionary* getProperties();
    virtual void setProperties(cocos2d::CCDictionary*);
    virtual void addChild(cocos2d::CCNode*, int, int);
    virtual void removeChild(cocos2d::CCNode*, bool);
}

[[link(win, android)]]
class cocos2d::CCTMXLayerInfo : cocos2d::CCObject {
    CCTMXLayerInfo();
    virtual ~CCTMXLayerInfo();

    virtual cocos2d::CCDictionary* getProperties();
    virtual void setProperties(cocos2d::CCDictionary*);
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

    virtual cocos2d::CCArray* getLayers();
    virtual void setLayers(cocos2d::CCArray*);
    virtual cocos2d::CCArray* getTilesets();
    virtual void setTilesets(cocos2d::CCArray*);
    virtual cocos2d::CCArray* getObjectGroups();
    virtual void setObjectGroups(cocos2d::CCArray*);
    virtual cocos2d::CCDictionary* getProperties();
    virtual void setProperties(cocos2d::CCDictionary*);
    virtual void startElement(void*, char const*, char const**);
    virtual void endElement(void*, char const*);
    virtual void textHandler(void*, char const*, int);
}

[[link(win, android)]]
class cocos2d::CCTMXObjectGroup : cocos2d::CCObject {
    CCTMXObjectGroup();
    virtual ~CCTMXObjectGroup();

    cocos2d::CCString* propertyNamed(char const*);
    cocos2d::CCDictionary* objectNamed(char const*);

    virtual cocos2d::CCDictionary* getProperties();
    virtual void setProperties(cocos2d::CCDictionary*);
    virtual cocos2d::CCArray* getObjects();
    virtual void setObjects(cocos2d::CCArray*);
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

    virtual cocos2d::CCArray* getObjectGroups();
    virtual void setObjectGroups(cocos2d::CCArray*);
    virtual cocos2d::CCDictionary* getProperties();
    virtual void setProperties(cocos2d::CCDictionary*);
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

    virtual cocos2d::sImageTGA* getTGAInfo();
    virtual void setTGAInfo(cocos2d::sImageTGA*);
    virtual void updateAtlasValues();
}

[[link(win, android)]]
class cocos2d::CCStandardTouchHandler : cocos2d::CCTouchHandler {
    static cocos2d::CCStandardTouchHandler* handlerWithDelegate(cocos2d::CCTouchDelegate*, int);

    virtual ~CCStandardTouchHandler();

    virtual bool initWithDelegate(cocos2d::CCTouchDelegate*, int);
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

    virtual void update(float);
}
