// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.follow;

import com.facebook.au;
import com.instagram.user.c.c;

// Referenced classes of package com.instagram.user.follow:
//            f

public final class h extends Enum
{

    public static final h a;
    public static final h b;
    private static final h g[];
    private boolean c;
    private int d;
    private int e;
    private int f;

    private h(String s, int i, boolean flag, int j, int k, int l)
    {
        super(s, i);
        c = flag;
        d = j;
        e = k;
        f = l;
    }

    public static h valueOf(String s)
    {
        return (h)Enum.valueOf(com/instagram/user/follow/h, s);
    }

    public static h[] values()
    {
        return (h[])g.clone();
    }

    public final int a(c c1)
    {
        switch (f.a[c1.ordinal()])
        {
        default:
            return 0;

        case 1: // '\001'
            return d;

        case 2: // '\002'
            return e;

        case 3: // '\003'
            return f;
        }
    }

    public final boolean a()
    {
        return c;
    }

    static 
    {
        a = new h("MEDIUM", 0, false, au.following_avatar, au.requested_avatar, au.follow_avatar);
        b = new h("LARGE", 1, true, au.following_icon, au.requested_icon, au.follow_icon);
        h ah[] = new h[2];
        ah[0] = a;
        ah[1] = b;
        g = ah;
    }
}
