// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.f;

import com.fasterxml.jackson.a.l;
import com.fasterxml.jackson.a.r;

// Referenced classes of package com.instagram.share.f:
//            d

public final class e
{

    public static d a(l l1)
    {
        d d1 = new d();
        if (l1.getCurrentToken() != r.b)
        {
            l1.skipChildren();
            d1 = null;
        } else
        {
            while (l1.nextToken() != r.c) 
            {
                String s = l1.getCurrentName();
                l1.nextToken();
                a(d1, s, l1);
                l1.skipChildren();
            }
        }
        return d1;
    }

    private static boolean a(d d1, String s, l l1)
    {
        if ("profile_image_url".equals(s))
        {
            String s1;
            if (l1.getCurrentToken() == r.m)
            {
                s1 = null;
            } else
            {
                s1 = l1.getText();
            }
            d1.a = s1;
            return true;
        } else
        {
            return false;
        }
    }
}
