// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.f;

import android.view.View;
import com.instagram.user.d.a;
import java.util.List;

// Referenced classes of package com.instagram.feed.f:
//            d

public final class c
{

    String a;
    List b;
    String c;
    List d;
    private d e;
    private View f;

    public c()
    {
    }

    public final View a()
    {
        return f;
    }

    public final View a(View view)
    {
        f = view;
        return view;
    }

    public final void a(int i)
    {
        if (d.size() > 3)
        {
            a a1 = (a)d.remove(3);
            d.set(i, a1);
            return;
        } else
        {
            d.remove(i);
            return;
        }
    }

    public final void a(d d1)
    {
        e = d1;
    }

    public final String b()
    {
        return a;
    }

    public final List c()
    {
        return b;
    }

    public final String d()
    {
        return c;
    }

    public final List e()
    {
        return d;
    }
}
