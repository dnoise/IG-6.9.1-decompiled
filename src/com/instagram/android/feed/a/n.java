// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a;

import android.content.Context;
import android.view.View;
import com.instagram.android.feed.a.b.af;
import com.instagram.android.feed.a.b.ar;
import com.instagram.android.feed.a.b.as;
import com.instagram.api.j.k;
import com.instagram.user.c.a;
import com.instagram.user.follow.h;
import java.util.List;

// Referenced classes of package com.instagram.android.feed.a:
//            m, o

public final class n extends m
{

    private int f;
    private int g;
    private List h;
    private final ar i;
    private boolean j;
    private boolean k;
    private h l;

    public n(com.instagram.android.fragment.a a1, int i1, boolean flag, h h1, ar ar)
    {
        super(a1, i1);
        g = 0;
        k = flag;
        l = h1;
        i = ar;
    }

    static boolean a(n n1, boolean flag)
    {
        n1.j = flag;
        return flag;
    }

    protected final View a(Context context)
    {
        return af.a(context, l);
    }

    public final void a(List list)
    {
        h = list;
    }

    protected final void b(Context context, View view, int i1)
    {
        af.a((as)view.getTag(), (a)getItem(i1), g, k, j, h, context, b, c, this, i, new o(this));
    }

    public final void h(int i1)
    {
        f = i1;
        a(null);
    }

    public final void i(int i1)
    {
        g = i1;
        notifyDataSetChanged();
    }

    public final int k()
    {
        return 1;
    }

    public final boolean s()
    {
        return f == k.c;
    }

    public final boolean t()
    {
        return f == k.d;
    }
}
