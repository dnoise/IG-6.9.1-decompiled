// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a;

import android.content.Context;
import android.support.v4.app.an;
import android.support.v4.app.s;
import com.instagram.android.a.b.f;
import com.instagram.user.follow.h;

// Referenced classes of package com.instagram.android.a:
//            m

public final class n
{

    private Context a;
    private an b;
    private boolean c;
    private s d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private int j;
    private h k;
    private f l;

    public n(Context context)
    {
        a = context;
        c = true;
        e = true;
        f = true;
        g = true;
        h = true;
        i = true;
    }

    public final n a()
    {
        f = false;
        return this;
    }

    public final n a(int i1)
    {
        j = i1;
        return this;
    }

    public final n a(an an)
    {
        b = an;
        return this;
    }

    public final n a(s s)
    {
        d = s;
        return this;
    }

    public final n a(f f1)
    {
        l = f1;
        return this;
    }

    public final n a(h h1)
    {
        k = h1;
        return this;
    }

    public final n a(boolean flag)
    {
        c = flag;
        return this;
    }

    public final n b()
    {
        g = false;
        return this;
    }

    public final n b(boolean flag)
    {
        e = flag;
        return this;
    }

    public final n c()
    {
        h = false;
        return this;
    }

    public final n d()
    {
        i = false;
        return this;
    }

    public final m e()
    {
        return new m(a, b, d, c, e, f, g, h, i, j, l, k);
    }
}
