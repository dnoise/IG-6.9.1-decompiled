// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.content.Context;
import android.widget.AbsListView;
import com.instagram.common.g.b.h;
import com.instagram.feed.d.w;

// Referenced classes of package com.instagram.android.feed.a.a:
//            f, g, h

public final class e
{

    private final com.instagram.android.feed.a.a.h a;
    private final com.instagram.android.feed.a.a.h b;
    private int c;

    public e(h h1, Context context)
    {
        c = 0;
        w w1 = w.a(context);
        a = new f(this, h1, context);
        b = new g(this, w1);
    }

    public final void a(AbsListView abslistview)
    {
        int i = abslistview.getFirstVisiblePosition();
        if (i <= c) goto _L2; else goto _L1
_L1:
        h.a(b, abslistview);
        h.a(a, abslistview);
_L4:
        c = i;
        return;
_L2:
        if (i < c)
        {
            h.b(b, abslistview);
            h.b(a, abslistview);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
