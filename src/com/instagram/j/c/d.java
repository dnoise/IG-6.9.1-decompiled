// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.c;

import android.widget.Toast;
import com.facebook.az;
import com.instagram.a.f;
import com.instagram.common.a.a.j;
import com.instagram.common.l.a.e;
import com.instagram.j.a.c;
import com.instagram.user.e.b;

// Referenced classes of package com.instagram.j.c:
//            a

final class d extends j
{

    final a a;

    private d(a a1)
    {
        a = a1;
        super();
    }

    d(a a1, byte byte0)
    {
        this(a1);
    }

    private void a(b b1)
    {
        com.instagram.j.c.a.a(a).a(b1.b());
        com.instagram.j.c.a.a(a, b1.b());
    }

    public final void a()
    {
        super.a();
        f.a(a.l()).b(true);
    }

    public final void a(e e)
    {
        super.a(e);
        f.a(a.l()).b(false);
    }

    public final volatile void a(Object obj)
    {
        a((b)obj);
    }

    public final void b(e e)
    {
        super.b(e);
        Toast.makeText(a.l(), az.request_error, 0).show();
    }
}
