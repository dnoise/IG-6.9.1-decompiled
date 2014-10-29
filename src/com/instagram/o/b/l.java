// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o.b;

import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.o.b:
//            k, g

public final class l
{

    public static k a(com.fasterxml.jackson.a.l l1)
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

    private static boolean a(k k1, String s, com.fasterxml.jackson.a.l l1)
    {
        if ("android-beta".equals(s))
        {
            k1.a = g.a(l1);
            return true;
        }
        if ("android-inhouse".equals(s))
        {
            k1.b = g.a(l1);
            return true;
        } else
        {
            return false;
        }
    }
}
