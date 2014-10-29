// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.g;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.android.g:
//            e

public final class f
{

    public static e a(l l1)
    {
        e e1 = new e();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            e1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(e1, s, l1);
                l1.skipChildren();
            }
        }
        return e1;
    }

    private static boolean a(e e1, String s, l l1)
    {
        if ("size".equals(s))
        {
            e1.d = Integer.valueOf(l1.getValueAsInt());
            return true;
        }
        if ("shift".equals(s))
        {
            e1.c = Integer.valueOf(l1.getValueAsInt());
            return true;
        }
        if ("edges".equals(s))
        {
            e1.e = Integer.valueOf(l1.getValueAsInt());
            return true;
        }
        if ("header".equals(s))
        {
            String s1;
            if (l1.getCurrentToken() == r.m)
            {
                s1 = null;
            } else
            {
                s1 = l1.getText();
            }
            e1.a = s1;
            return true;
        }
        if ("iterations".equals(s))
        {
            e1.b = Integer.valueOf(l1.getValueAsInt());
            return true;
        } else
        {
            return com.instagram.api.k.a.f.a(e1, s, l1);
        }
    }
}
