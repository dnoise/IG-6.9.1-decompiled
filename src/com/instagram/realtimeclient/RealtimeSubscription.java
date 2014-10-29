// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;


// Referenced classes of package com.instagram.realtimeclient:
//            RealtimePatchEvent

public class RealtimeSubscription
{

    String mAuthToken;
    String mSequence;
    String mTopic;
    String mURL;

    public RealtimeSubscription()
    {
    }

    public String getAuthToken()
    {
        return mAuthToken;
    }

    public String getSequence()
    {
        return mSequence;
    }

    public String getTopic()
    {
        return mTopic;
    }

    public String getURL()
    {
        return mURL;
    }

    public void updateSequence(String s)
    {
        if (RealtimePatchEvent.compareSequences(mSequence, s) < 0)
        {
            mSequence = s;
        }
    }

    public void updateWithSubscription(RealtimeSubscription realtimesubscription)
    {
        if (mTopic.equals(realtimesubscription.getTopic()))
        {
            mURL = realtimesubscription.getURL();
            mAuthToken = realtimesubscription.getAuthToken();
            updateSequence(realtimesubscription.getSequence());
        }
    }
}
