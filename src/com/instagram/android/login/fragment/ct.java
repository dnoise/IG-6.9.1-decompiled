// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import com.instagram.android.g.h;

// Referenced classes of package com.instagram.android.login.fragment:
//            cs, ci

final class ct
    implements Runnable
{

    final h a;
    final cs b;

    ct(cs cs1, h h1)
    {
        b = cs1;
        a = h1;
        super();
    }

    public final void run()
    {
        if (a.a())
        {
            ci.c(b.a);
        }
    }
}
