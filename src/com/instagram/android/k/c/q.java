// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.c;

import com.instagram.android.k.b.d;
import com.instagram.common.a.c.a;
import com.instagram.common.a.c.b;

// Referenced classes of package com.instagram.android.k.c:
//            a, u

final class q extends d
{

    final String a;
    final com.instagram.android.k.c.a b;

    q(com.instagram.android.k.c.a a1, String s)
    {
        b = a1;
        a = s;
        super();
    }

    protected final void a(b b1)
    {
        if (com.instagram.android.k.c.a.j(b).k() != -1L)
        {
            b1.a("max_id", String.valueOf(com.instagram.android.k.c.a.j(b).k()));
        }
    }

    public final int c()
    {
        return a.c;
    }

    protected final String d_()
    {
        return a;
    }
}
