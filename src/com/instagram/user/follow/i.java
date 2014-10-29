// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.follow;

import com.facebook.as;
import com.facebook.au;
import com.instagram.user.c.c;

// Referenced classes of package com.instagram.user.follow:
//            j

public final class i
{

    public static int a(int k)
    {
        if (k == as.green_medium)
        {
            k = as.green_6;
        } else
        {
            if (k == as.grey_light)
            {
                return as.grey_4;
            }
            if (k == as.accent_blue_medium)
            {
                return as.accent_blue_6;
            }
        }
        return k;
    }

    public static int a(c c1)
    {
        switch (j.a[c1.ordinal()])
        {
        default:
            return au.rounded_layout_border_stroke;

        case 1: // '\001'
        case 2: // '\002'
            return au.rounded_layout_border_fill;
        }
    }

    public static int b(c c1)
    {
        switch (j.a[c1.ordinal()])
        {
        case 2: // '\002'
        default:
            return as.grey_light;

        case 1: // '\001'
            return as.green_medium;

        case 3: // '\003'
            return as.accent_blue_medium;
        }
    }
}
