// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.c;

import com.instagram.common.a.c.b;

// Referenced classes of package com.instagram.android.k.c:
//            a

final class d extends com.instagram.android.k.b.d
{

    final a a;

    d(a a1)
    {
        a = a1;
        super();
    }

    protected final void a(b b1)
    {
        b1.a("fb_access_token", com.instagram.android.k.c.a.q(a));
    }

    protected final String d_()
    {
        return "fb/find/?include=extra_display_name";
    }

    public final boolean e_()
    {
        return true;
    }
}
