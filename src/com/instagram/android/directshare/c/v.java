// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.c;

import com.instagram.android.h.f;
import com.instagram.common.a.a.j;
import com.instagram.common.l.a.e;
import com.instagram.f.a.b.c;
import com.instagram.feed.f.a;
import com.instagram.feed.f.b;
import com.instagram.realtimeclient.RealtimePatchRange;
import com.instagram.realtimeclient.RealtimeSubscription;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.instagram.android.directshare.c:
//            t

final class v extends j
{

    final t a;
    private final boolean b;

    private v(t t1, boolean flag)
    {
        a = t1;
        super();
        b = flag;
    }

    v(t t1, boolean flag, byte byte0)
    {
        this(t1, flag);
    }

    private void a(c c1)
    {
        com.instagram.android.directshare.f.c.a(c1.c());
        RealtimeSubscription realtimesubscription = c1.t();
        if (realtimesubscription != null && realtimesubscription.getURL() != null)
        {
            f.c().a(realtimesubscription);
        }
        if (b)
        {
            RealtimePatchRange realtimepatchrange = f.c().d();
            Iterator iterator;
            RealtimePatchRange realtimepatchrange1;
            if (realtimepatchrange == null)
            {
                realtimepatchrange1 = c1.f();
            } else
            {
                realtimepatchrange1 = realtimepatchrange.union(c1.f());
            }
            f.c().a(realtimepatchrange1);
        } else
        {
            f.c().a(c1.f());
            a.g();
        }
        a.a(c1.d());
        f.c().a(c1.f());
        f.c().a(c1.e());
        com.instagram.android.directshare.c.t.a(a, c1.b());
        if (com.instagram.android.directshare.c.t.b(a).b() != b.a)
        {
            a.a(c1.d().size());
        }
        for (iterator = com.instagram.android.directshare.c.t.a(a).iterator(); iterator.hasNext(); ((j)iterator.next()).a(c1)) { }
    }

    public final void a()
    {
        super.a();
        com.instagram.android.directshare.c.t.a(a, true);
        for (Iterator iterator = com.instagram.android.directshare.c.t.a(a).iterator(); iterator.hasNext(); ((j)iterator.next()).a()) { }
    }

    public final void a(e e)
    {
        super.a(e);
        com.instagram.android.directshare.c.t.a(a, false);
        for (Iterator iterator = com.instagram.android.directshare.c.t.a(a).iterator(); iterator.hasNext(); ((j)iterator.next()).a(e)) { }
    }

    public final volatile void a(Object obj)
    {
        a((c)obj);
    }

    public final void b(e e)
    {
        for (Iterator iterator = com.instagram.android.directshare.c.t.a(a).iterator(); iterator.hasNext(); ((j)iterator.next()).b(e)) { }
    }
}
