// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.e;

import com.instagram.android.directshare.c.x;
import com.instagram.common.j.e;
import com.instagram.user.c.a;
import com.instagram.user.c.c;
import com.instagram.user.c.d;
import com.instagram.user.c.i;
import com.instagram.user.c.j;

// Referenced classes of package com.instagram.android.directshare.e:
//            b

final class o
    implements e
{

    final b a;

    private o(b b1)
    {
        a = b1;
        super();
    }

    o(b b1, byte byte0)
    {
        this(b1);
    }

    private static void a(d d1)
    {
        a a1 = j.a().a(d1.a);
        if (a1 != null && a1.t() == c.d && (a1.u() == c.c || a1.u() == c.e))
        {
            com.instagram.f.c.a a2 = new com.instagram.f.c.a();
            a2.a(a1);
            x.b(a2);
        }
    }

    public final void b(com.instagram.common.j.a a1)
    {
        a((d)a1);
    }
}
