// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.support.v4.app.s;
import com.instagram.a.b;
import com.instagram.a.c;
import com.instagram.a.f;
import com.instagram.b.b.a;
import com.instagram.feed.a.i;

// Referenced classes of package com.instagram.android.fragment:
//            a, i, j

public abstract class h extends com.instagram.android.fragment.a
    implements c
{

    public h()
    {
    }

    protected final void Z()
    {
        if (u())
        {
            f.a(l()).b(true);
        }
    }

    public void a(b b1)
    {
        boolean flag = true;
        b1.a(flag, new com.instagram.android.fragment.i(this));
        b1.a(new j(this));
        if (am().g() <= 0)
        {
            flag = false;
        }
        b1.a(flag);
        b1.b(e());
    }

    protected void a(i k, boolean flag)
    {
    }

    protected void aa()
    {
        if (u())
        {
            f.a(l()).b(false);
        }
    }

    protected final void ab()
    {
    }

    protected final s am()
    {
        return p();
    }

    protected final void ar()
    {
        if (!e())
        {
            if (o_())
            {
                com.instagram.b.b.a.a(new com.instagram.common.analytics.b("action_bar_feed_retry", this), n()).a();
            }
            c(true);
        }
    }

    protected void b(i k, boolean flag)
    {
    }
}
