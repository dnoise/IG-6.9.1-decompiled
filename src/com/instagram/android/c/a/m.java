// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;
import com.instagram.api.k.a.f;

// Referenced classes of package com.instagram.android.c.a:
//            l

public final class m
{

    public static com.instagram.android.c.a.l a(l l1)
    {
        com.instagram.android.c.a.l l2 = new com.instagram.android.c.a.l();
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

    private static boolean a(com.instagram.android.c.a.l l1, String s, l l2)
    {
        if ("permalink".equals(s))
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
            return f.a(l1, s, l2);
        }
    }
}
