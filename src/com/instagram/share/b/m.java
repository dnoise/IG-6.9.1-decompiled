// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.b;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.share.b:
//            l

public final class m
{

    public static com.instagram.share.b.l a(l l1)
    {
        com.instagram.share.b.l l2 = new com.instagram.share.b.l();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            l2 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(l2, s, l1);
                l1.skipChildren();
            }
        }
        return l2;
    }

    private static boolean a(com.instagram.share.b.l l1, String s, l l2)
    {
        if ("id".equals(s))
        {
            String s1;
            if (l2.getCurrentToken() == r.m)
            {
                s1 = null;
            } else
            {
                s1 = l2.getText();
            }
            l1.a = s1;
            return true;
        } else
        {
            return false;
        }
    }
}
