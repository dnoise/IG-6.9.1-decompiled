// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.b;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.api.b:
//            b

public final class c
{

    public static b a(l l1)
    {
        b b1 = new b();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            b1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(b1, s, l1);
                l1.skipChildren();
            }
        }
        return b1;
    }

    private static boolean a(b b1, String s, l l1)
    {
        if ("key".equals(s))
        {
            String s1;
            if (l1.getCurrentToken() == r.m)
            {
                s1 = null;
            } else
            {
                s1 = l1.getText();
            }
            b1.a = s1;
            return true;
        }
        if ("time".equals(s))
        {
            b1.b = new Float(l1.getValueAsDouble());
            return true;
        } else
        {
            return false;
        }
    }
}
