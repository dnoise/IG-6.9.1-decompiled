// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import com.facebook.e.c.k;
import com.instagram.android.feed.a.l;
import com.instagram.feed.a.c;
import java.util.List;

// Referenced classes of package com.instagram.android.fragment:
//            cr

final class dd
    implements Runnable
{

    final c a;
    final cr b;

    dd(cr cr1, c c1)
    {
        b = cr1;
        a = c1;
        super();
    }

    public final void run()
    {
        if (b.ab == null || !b.ab.booleanValue())
        {
            k.a("loadFeedFromDiskCache");
            ((l)b.W()).c(a.t());
            cr.a(b, ((com.instagram.feed.d.l)a.t().get(0)).f());
        }
    }
}
