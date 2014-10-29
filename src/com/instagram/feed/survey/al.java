// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.feed.survey:
//            k

public final class al
{

    public static k a(l l1)
    {
        k k1 = new k();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            k1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(k1, s, l1);
                l1.skipChildren();
            }
        }
        return k1;
    }

    private static boolean a(k k1, String s, l l1)
    {
        if ("value".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.m;
            String s2 = null;
            if (r3 != r4)
            {
                s2 = l1.getText();
            }
            k1.a = s2;
            return true;
        }
        if ("title".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.m;
            String s1 = null;
            if (r1 != r2)
            {
                s1 = l1.getText();
            }
            k1.b = s1;
            return true;
        } else
        {
            return false;
        }
    }
}
