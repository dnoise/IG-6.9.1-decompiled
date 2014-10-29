// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.f.a.b;

import com.instagram.api.k.a.d;
import com.instagram.f.b.a;
import com.instagram.feed.f.b;
import com.instagram.realtimeclient.RealtimePatchRange;
import com.instagram.realtimeclient.RealtimeSubscription;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.instagram.f.a.b:
//            d

public final class c extends d
{

    List a;
    a b;
    RealtimeSubscription c;
    com.instagram.f.a.b.d d;
    private com.instagram.feed.f.a e;

    public c()
    {
        b = new a();
        e = com.instagram.feed.f.a.a();
    }

    final void a(String s)
    {
        if (s == null)
        {
            e.a(b.a, null);
            return;
        } else
        {
            e.a(b.c, s);
            return;
        }
    }

    public final com.instagram.feed.f.a b()
    {
        return e;
    }

    public final a c()
    {
        return b;
    }

    public final List d()
    {
        return a;
    }

    public final Map e()
    {
        if (d != null)
        {
            return com.instagram.f.a.b.d.a(d);
        } else
        {
            return null;
        }
    }

    public final RealtimePatchRange f()
    {
        if (d != null)
        {
            return com.instagram.f.a.b.d.b(d);
        } else
        {
            return null;
        }
    }

    public final RealtimeSubscription t()
    {
        return c;
    }
}
