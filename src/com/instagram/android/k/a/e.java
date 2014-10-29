// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.a;

import android.content.Context;
import android.support.v4.app.an;
import android.support.v4.app.s;
import com.instagram.ui.widget.loadmore.c;
import com.instagram.ui.widget.loadmore.f;
import com.instagram.user.follow.h;

// Referenced classes of package com.instagram.android.k.a:
//            a

public final class e
{

    private Context a;
    private an b;
    private s c;
    private c d;
    private boolean e;
    private boolean f;
    private boolean g;
    private h h;

    public e(Context context)
    {
        d = new f();
        a = context;
    }

    public final a a()
    {
        return new a(a, b, c, e, f, g, h, d);
    }

    public final e a(an an)
    {
        b = an;
        return this;
    }

    public final e a(s s)
    {
        c = s;
        return this;
    }

    public final e a(c c1)
    {
        d = c1;
        return this;
    }

    public final e a(h h1)
    {
        h = h1;
        return this;
    }

    public final e a(boolean flag)
    {
        f = flag;
        return this;
    }

    public final e b(boolean flag)
    {
        e = flag;
        return this;
    }

    public final e c(boolean flag)
    {
        g = flag;
        return this;
    }
}
