// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.support.v4.view.bm;
import com.instagram.common.y.f;
import com.instagram.ui.viewpager.ScrollingOptionalViewPager;

// Referenced classes of package com.instagram.android.creation.a:
//            ah

final class al
    implements bm
{

    final ScrollingOptionalViewPager a;
    final ah b;

    al(ah ah1, ScrollingOptionalViewPager scrollingoptionalviewpager)
    {
        b = ah1;
        a = scrollingoptionalviewpager;
        super();
    }

    public final void a(int i)
    {
        if (!a.getScrollingEnabled())
        {
            ah.c(b);
        }
        ah.a(b, i);
    }

    public final void b(int i)
    {
        if (ah.d(b) == 0 && i != 0)
        {
            ah.c(b);
        }
        ah.b(b, i);
        f.a(b.n(), b.E());
    }
}
