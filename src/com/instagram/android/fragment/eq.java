// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import com.instagram.android.feed.b.a.c;
import com.instagram.base.activity.a;
import com.instagram.o.f.e;
import com.instagram.o.f.f;

// Referenced classes of package com.instagram.android.fragment:
//            ep, eo

final class eq
    implements Runnable
{

    final c a;
    final ep b;

    eq(ep ep1, c c1)
    {
        b = ep1;
        a = c1;
        super();
    }

    public final void run()
    {
        a a1 = (a)b.a.l();
        f.a().a(b.a.p(), a.c()).b().a();
        a1.k();
    }
}
