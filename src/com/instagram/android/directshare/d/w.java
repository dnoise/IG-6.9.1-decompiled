// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.widget.AbsListView;

// Referenced classes of package com.instagram.android.directshare.d:
//            c

final class w
    implements android.widget.AbsListView.OnScrollListener
{

    final c a;

    w(c c1)
    {
        a = c1;
        super();
    }

    public final void onScroll(AbsListView abslistview, int i, int j, int k)
    {
        if (c.i(a) && i + j == k)
        {
            c.j(a);
            c.a(a, false);
        }
    }

    public final void onScrollStateChanged(AbsListView abslistview, int i)
    {
    }
}
