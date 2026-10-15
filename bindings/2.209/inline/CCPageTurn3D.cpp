#include <Geode/Bindings.hpp>


#if defined(GEODE_IS_WINDOWS) || defined(GEODE_IS_IOS)
#endif

#if defined(GEODE_IS_WINDOWS)
#endif

#if defined(GEODE_IS_IOS)
using namespace cocos2d;

CCPageTurn3D* CCPageTurn3D::create(float duration, const CCSize& gridSize)
{
    CCPageTurn3D *pAction = new CCPageTurn3D();

    if (pAction)
    {
        if (pAction->initWithDuration(duration, gridSize))
        {
            pAction->autorelease();
        }
        else
        {
            CC_SAFE_RELEASE_NULL(pAction);
        }
    }

    return pAction;
}

/*
 * Update each tick
 * Time is the percentage of the way through the duration
 */
void CCPageTurn3D::update(float time)
{
    float tt = MAX(0, time - 0.25f);
    float deltaAy = (tt * tt * 500);
    float ay = -100 - deltaAy;
    
    float deltaTheta = - (float) M_PI_2 * sqrtf( time) ;
    float theta = /*0.01f */ + (float) M_PI_2 +deltaTheta;
    
    float sinTheta = sinf(theta);
    float cosTheta = cosf(theta);
    
    for (int i = 0; i <= m_sGridSize.width; ++i)
    {
        for (int j = 0; j <= m_sGridSize.height; ++j)
        {
            // Get original vertex
            ccVertex3F p = originalVertex(ccp(i ,j));
            
            float R = sqrtf((p.x * p.x) + ((p.y - ay) * (p.y - ay)));
            float r = R * sinTheta;
            float alpha = asinf( p.x / R );
            float beta = alpha / sinTheta;
            float cosBeta = cosf( beta );
            
            // If beta > PI then we've wrapped around the cone
            // Reduce the radius to stop these points interfering with others
            if (beta <= M_PI)
            {
                p.x = ( r * sinf(beta));
            }
            else
            {
                // Force X = 0 to stop wrapped
                // points
                p.x = 0;
            }

            p.y = ( R + ay - ( r * (1 - cosBeta) * sinTheta));

            // We scale z here to avoid the animation being
            // too much bigger than the screen due to perspective transform
            p.z = (r * ( 1 - cosBeta ) * cosTheta) / 7;// "100" didn't work for

            //    Stop z coord from dropping beneath underlying page in a transition
            // issue #751
            if( p.z < 0.5f )
            {
                p.z = 0.5f;
            }
            
            // Set new coords
            setVertex(ccp(i, j), p);
            
        }
    }
}
#endif

