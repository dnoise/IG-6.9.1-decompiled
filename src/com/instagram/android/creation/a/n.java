// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.os.Handler;
import android.widget.AbsListView;
import android.widget.EditText;
import com.instagram.android.directshare.widget.DirectShareSearchEditText;

// Referenced classes of package com.instagram.android.creation.a:
//            d

final class n
    implements android.widget.AbsListView.OnScrollListener
{

    final d a;

    n(d d1)
    {
        a = d1;
        super();
    }

    public final void onScroll(AbsListView abslistview, int i, int j, int k)
    {
    }

    public final void onScrollStateChanged(AbsListView abslistview, int i)
    {
        if (d.l(a).hasFocus() || d.d(a).hasFocus())
        {
            d.l(a).clearFocus();
            d.d(a).clearFocus();
            d.n(a).sendEmptyMessageDelayed(1, 20L);
        }
    }
}
