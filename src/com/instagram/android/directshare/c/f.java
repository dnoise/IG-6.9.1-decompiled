// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.c;

import android.os.Handler;
import com.instagram.android.c2dm.a;
import com.instagram.common.j.d;

// Referenced classes of package com.instagram.android.directshare.c:
//            c, g

final class f
    implements d
{

    final c a;

    f(c c1)
    {
        a = c1;
        super();
    }

    private void a()
    {
        c.l(a).post(new g(this));
    }

    private static boolean a(a a1)
    {
        return "directshare".equals(a1.a);
    }

    public final volatile boolean a(com.instagram.common.j.a a1)
    {
        return a((a)a1);
    }

    public final void b(com.instagram.common.j.a a1)
    {
        a();
    }
}
