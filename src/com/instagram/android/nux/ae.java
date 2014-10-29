// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import android.os.Bundle;
import com.facebook.b.e;
import com.facebook.b.i;
import com.instagram.p.b;
import com.instagram.share.b.a;

// Referenced classes of package com.instagram.android.nux:
//            n

final class ae
    implements e
{

    final n a;

    private ae(n n1)
    {
        a = n1;
        super();
    }

    ae(n n1, byte byte0)
    {
        this(n1);
    }

    public final void a()
    {
        b.f.c();
    }

    public final void a(Bundle bundle)
    {
        com.instagram.share.b.a.b();
        (new com.instagram.registrationpush.a(a.n())).d();
        b.e.c();
        n n1 = a;
        n _tmp = a;
        com.instagram.android.nux.n.b(n1, n.c());
    }

    public final void a(com.facebook.b.a a1)
    {
        b.g.c();
        n.d(a);
    }

    public final void a(i i)
    {
        b.g.c();
        n.d(a);
    }
}
