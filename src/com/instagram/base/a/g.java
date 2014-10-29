// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.base.a;

import android.support.v4.app.Fragment;
import android.widget.ListView;

// Referenced classes of package com.instagram.base.a:
//            h

final class g
    implements Runnable
{

    final Fragment a;
    final ListView b;
    final android.widget.AbsListView.OnScrollListener c;

    g(Fragment fragment, ListView listview, android.widget.AbsListView.OnScrollListener onscrolllistener)
    {
        a = fragment;
        b = listview;
        c = onscrolllistener;
        super();
    }

    public final void run()
    {
        if (a.E() != null)
        {
            b.smoothScrollBy(0, 0);
            b.setSelection(0);
            b.postDelayed(new h(this), 100L);
        }
    }
}
