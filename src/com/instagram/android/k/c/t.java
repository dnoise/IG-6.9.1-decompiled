// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.c;

import android.widget.Toast;
import com.facebook.az;
import com.instagram.android.k.f.a;
import com.instagram.api.j.f;
import com.instagram.api.j.j;

// Referenced classes of package com.instagram.android.k.c:
//            a, u

class t extends f
{

    final com.instagram.android.k.c.a b;

    private t(com.instagram.android.k.c.a a1)
    {
        b = a1;
        super();
    }

    t(com.instagram.android.k.c.a a1, byte byte0)
    {
        this(a1);
    }

    public final void a()
    {
        com.instagram.android.k.c.a.j(b).a(true);
        com.instagram.android.k.c.a.o(b);
    }

    protected final void a(j j)
    {
        Toast.makeText(b.l(), az.request_error, 1).show();
        com.instagram.android.k.c.a.p(b).setFollowAllEnabled(true);
    }

    protected void a(Object obj)
    {
        com.instagram.a.f.a(b.l()).b();
    }

    public final void b()
    {
        com.instagram.android.k.c.a.j(b).a(false);
        com.instagram.android.k.c.a.o(b);
    }
}
