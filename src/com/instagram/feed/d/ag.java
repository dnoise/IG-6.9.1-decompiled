// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.feed.d:
//            s

public final class ag
{

    public static s a(l l1)
    {
        s s1 = new s();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            s1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s2 = l1.getCurrentName();
                l1.nextToken();
                a(s1, s2, l1);
                l1.skipChildren();
            }
        }
        return s1;
    }

    private static boolean a(s s1, String s2, l l1)
    {
        if ("type".equals(s2))
        {
            s1.b = l1.getValueAsInt();
            return true;
        }
        if ("url".equals(s2))
        {
            String s3;
            if (l1.getCurrentToken() == r.m)
            {
                s3 = null;
            } else
            {
                s3 = l1.getText();
            }
            s1.a = s3;
            return true;
        } else
        {
            return false;
        }
    }
}
