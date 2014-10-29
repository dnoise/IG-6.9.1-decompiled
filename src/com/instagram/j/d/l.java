// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.d;

import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.j.d:
//            f

public final class l
{

    public static f a(com.fasterxml.jackson.a.l l1)
    {
        f f1 = new f();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            f1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(f1, s, l1);
                l1.skipChildren();
            }
        }
        return f1;
    }

    private static boolean a(f f1, String s, com.fasterxml.jackson.a.l l1)
    {
        if ("image".equals(s))
        {
            r r3 = l1.getCurrentToken();
            r r4 = r.m;
            String s2 = null;
            if (r3 != r4)
            {
                s2 = l1.getText();
            }
            f1.b = s2;
            return true;
        }
        if ("id".equals(s))
        {
            r r1 = l1.getCurrentToken();
            r r2 = r.m;
            String s1 = null;
            if (r1 != r2)
            {
                s1 = l1.getText();
            }
            f1.a = s1;
            return true;
        } else
        {
            return false;
        }
    }
}
