// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import com.instagram.common.j.a;
import com.instagram.common.j.e;
import java.util.Map;

// Referenced classes of package com.instagram.feed.d:
//            w, t

final class x
    implements e
{

    final w a;

    x(w w1)
    {
        a = w1;
        super();
    }

    private void a(t t1)
    {
        com.instagram.feed.d.w.a(a).remove(t1.a);
        w.b(a).remove(t1.a);
        w.c(a).remove(t1.a);
    }

    public final void b(a a1)
    {
        a((t)a1);
    }
}
