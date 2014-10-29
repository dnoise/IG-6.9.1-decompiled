// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.realtimeclient;

import com.fasterxml.jackson.a.e;
import com.fasterxml.jackson.a.h;
import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.common.n.a;
import java.io.StringWriter;

// Referenced classes of package com.instagram.realtimeclient:
//            RealtimeSubscription

public final class RealtimeSubscription__JsonHelper
{

    public RealtimeSubscription__JsonHelper()
    {
    }

    public static RealtimeSubscription parseFromJson(l l1)
    {
        RealtimeSubscription realtimesubscription = new RealtimeSubscription();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            realtimesubscription = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                processSingleField(realtimesubscription, s, l1);
                l1.skipChildren();
            }
        }
        return realtimesubscription;
    }

    public static RealtimeSubscription parseFromJson(String s)
    {
        l l1 = a.a.createParser(s);
        l1.nextToken();
        return parseFromJson(l1);
    }

    public static boolean processSingleField(RealtimeSubscription realtimesubscription, String s, l l1)
    {
        if ("topic".equals(s))
        {
            r r7 = l1.getCurrentToken();
            r r8 = r.m;
            String s4 = null;
            if (r7 != r8)
            {
                s4 = l1.getText();
            }
            realtimesubscription.mTopic = s4;
            return true;
        }
        if ("auth".equals(s))
        {
            r r5 = l1.getCurrentToken();
            r r6 = r.m;
            String s3 = null;
            if (r5 != r6)
            {
                s3 = l1.getText();
            }
            realtimesubscription.mAuthToken = s3;
            return true;
        }
        if ("sequence".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.m;
            String s2 = null;
            if (r3 != r4)
            {
                s2 = l1.getText();
            }
            realtimesubscription.mSequence = s2;
            return true;
        }
        if ("url".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.m;
            String s1 = null;
            if (r1 != r2)
            {
                s1 = l1.getText();
            }
            realtimesubscription.mURL = s1;
            return true;
        } else
        {
            return false;
        }
    }

    public static String serializeToJson(RealtimeSubscription realtimesubscription)
    {
        StringWriter stringwriter = new StringWriter();
        h h1 = a.a.createGenerator(stringwriter);
        serializeToJson(h1, realtimesubscription, true);
        h1.close();
        return stringwriter.toString();
    }

    public static void serializeToJson(h h1, RealtimeSubscription realtimesubscription, boolean flag)
    {
        if (flag)
        {
            h1.writeStartObject();
        }
        if (realtimesubscription.mTopic != null)
        {
            h1.writeStringField("topic", realtimesubscription.mTopic);
        }
        if (realtimesubscription.mAuthToken != null)
        {
            h1.writeStringField("auth", realtimesubscription.mAuthToken);
        }
        if (realtimesubscription.mSequence != null)
        {
            h1.writeStringField("sequence", realtimesubscription.mSequence);
        }
        if (realtimesubscription.mURL != null)
        {
            h1.writeStringField("url", realtimesubscription.mURL);
        }
        if (flag)
        {
            h1.writeEndObject();
        }
    }
}
