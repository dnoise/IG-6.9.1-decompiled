// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.view.MotionEvent;
import com.instagram.android.feed.ui.c;

// Referenced classes of package com.instagram.android.feed.a.b:
//            ad, x, ab

final class ae extends c
{

    final ad a;

    ae(ad ad1)
    {
        a = ad1;
        super();
    }

    protected final void a()
    {
        x.b(a.a).a(ad.a(a), ad.b(a).intValue(), com.instagram.android.feed.a.b.ad.c(a));
    }

    public final boolean onDoubleTap(MotionEvent motionevent)
    {
        x.b(a.a).b(ad.a(a), ad.b(a).intValue(), com.instagram.android.feed.a.b.ad.c(a));
        return true;
    }
}
