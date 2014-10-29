// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.b;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.share.b:
//            h

public final class i
{

    public static h a(l l1)
    {
        h h1 = new h();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            h1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(h1, s, l1);
                l1.skipChildren();
            }
        }
        return h1;
    }

    private static boolean a(h h1, String s, l l1)
    {
        if ("id".equals(s))
        {
            r r5 = l1.getCurrentToken();
            r r6 = r.m;
            String s3 = null;
            if (r5 != r6)
            {
                s3 = l1.getText();
            }
            h1.c = s3;
            return true;
        }
        if ("access_token".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.m;
            String s2 = null;
            if (r3 != r4)
            {
                s2 = l1.getText();
            }
            h1.a = s2;
            return true;
        }
        if ("name".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.m;
            String s1 = null;
            if (r1 != r2)
            {
                s1 = l1.getText();
            }
            h1.b = s1;
            return true;
        } else
        {
            return false;
        }
    }
}
