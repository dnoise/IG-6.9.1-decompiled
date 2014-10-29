// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.b;

import android.widget.AbsListView;

// Referenced classes of package com.instagram.feed.b:
//            c, b

public final class a
    implements android.widget.AbsListView.OnScrollListener
{

    private final b a;
    private int b;
    private int c;

    public a(b b1)
    {
        b = -1;
        c = c.b;
        a = b1;
    }

    private void a(int i)
    {
        if (b > i)
        {
            c = c.a;
        } else
        if (b < i)
        {
            c = c.b;
            return;
        }
    }

    private boolean a(int i, int j, int k)
    {
        int l = i + j;
        return k > 0 && j > 0 && c == c.b && l + a.b() >= k;
    }

    public final void onScroll(AbsListView abslistview, int i, int j, int k)
    {
        a(i);
        if (a(i, j, k))
        {
            a.a();
        }
        b = i;
    }

    public final void onScrollStateChanged(AbsListView abslistview, int i)
    {
    }
}
