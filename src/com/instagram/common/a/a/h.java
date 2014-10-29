// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.a;

import android.os.Bundle;
import android.support.v4.a.c;
import android.support.v4.app.an;
import android.support.v4.app.ao;
import com.instagram.common.l.a.e;
import com.instagram.common.y.e.a;

// Referenced classes of package com.instagram.common.a.a:
//            a, g, i

final class h
    implements ao
{

    final g a;
    private final int b;
    private final com.instagram.common.a.a.a c;

    private h(g g1, com.instagram.common.a.a.a a1)
    {
        a = g1;
        super();
        b = com.instagram.common.y.e.a.a();
        c = a1;
    }

    h(g g1, com.instagram.common.a.a.a a1, byte byte0)
    {
        this(g1, a1);
    }

    static com.instagram.common.a.a.a a(h h1)
    {
        return h1.c;
    }

    private void a(an an1)
    {
        an1.a(b, null, this);
    }

    static void a(h h1, an an1)
    {
        h1.a(an1);
    }

    private void a(e e1)
    {
        c.a(e1);
        g.b(a).a(b);
    }

    public final c a(Bundle bundle)
    {
        c.i();
        return new i(this, com.instagram.common.a.a.g.a(a));
    }

    public final volatile void a(c c1, Object obj)
    {
        a((e)obj);
    }
}
