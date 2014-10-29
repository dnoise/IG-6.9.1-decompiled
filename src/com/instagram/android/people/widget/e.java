// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.widget;

import android.content.Context;
import android.support.v4.app.an;
import android.support.v4.app.s;
import com.instagram.model.people.b;
import com.instagram.user.follow.h;

// Referenced classes of package com.instagram.android.people.widget:
//            d

public final class e
{

    private Context a;
    private an b;
    private s c;
    private b d;
    private boolean e;
    private boolean f;
    private h g;

    public e()
    {
    }

    public final e a()
    {
        f = false;
        return this;
    }

    public final e a(Context context)
    {
        a = context;
        return this;
    }

    public final e a(an an)
    {
        b = an;
        return this;
    }

    public final e a(b b1)
    {
        d = b1;
        return this;
    }

    public final e a(h h)
    {
        g = h;
        return this;
    }

    public final e b()
    {
        e = false;
        return this;
    }

    public final d c()
    {
        return new d(a, b, c, e, f, d, g, (byte)0);
    }
}
