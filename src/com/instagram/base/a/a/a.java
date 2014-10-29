// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.base.a.a;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.s;
import com.facebook.av;
import com.instagram.common.analytics.g;
import com.instagram.common.t.b;

// Referenced classes of package com.instagram.base.a.a:
//            b

public final class a
{

    private final s a;
    private Fragment b;
    private Bundle c;
    private String d;
    private boolean e;
    private String f;
    private boolean g;
    private String h;
    private boolean i;

    public a(s s1)
    {
        e = true;
        f = null;
        g = false;
        i = false;
        a = s1;
    }

    private void a(int j)
    {
        ag ag1;
        Fragment fragment = a.a(av.layout_container_main);
        if (fragment instanceof g)
        {
            com.instagram.b.c.a.a().a((g)fragment, a.g(), h);
        }
        if (c != null && !c.isEmpty())
        {
            b.g(c);
        }
        ag1 = a.a();
        if (i)
        {
            ag1.a();
        }
        if (j != b.a) goto _L2; else goto _L1
_L1:
        ag1.a(av.layout_container_main, b, d);
_L8:
        if (e)
        {
            ag1.a(f);
        }
        if (!g) goto _L4; else goto _L3
_L3:
        ag1.c();
_L6:
        a.b();
        return;
_L2:
        if (j == com.instagram.base.a.a.b.b)
        {
            ag1.b(av.layout_container_main, b, d);
        }
        continue; /* Loop/switch isn't completed */
_L4:
        ag1.b();
        if (true) goto _L6; else goto _L5
_L5:
        IllegalStateException illegalstateexception;
        illegalstateexception;
        b b1 = com.instagram.common.t.b.a();
        String s1;
        if (b1 != null)
        {
            s1 = (new StringBuilder("nav_events: ")).append(b1.c()).toString();
        } else
        {
            s1 = null;
        }
        throw new IllegalStateException(s1, illegalstateexception);
        if (true) goto _L8; else goto _L7
_L7:
    }

    public final a a(Fragment fragment)
    {
        b = fragment;
        return this;
    }

    public final a a(Fragment fragment, Bundle bundle)
    {
        b = fragment;
        c = bundle;
        return this;
    }

    public final a a(String s1)
    {
        d = s1;
        return this;
    }

    public final void a()
    {
        a(com.instagram.base.a.a.b.b);
    }

    public final a b()
    {
        e = false;
        return this;
    }

    public final a b(String s1)
    {
        h = s1;
        return this;
    }

    public final a c()
    {
        g = true;
        return this;
    }

    public final a c(String s1)
    {
        f = s1;
        return this;
    }
}
