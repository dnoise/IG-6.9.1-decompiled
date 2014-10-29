// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.os.Handler;
import com.instagram.android.c2dm.a;
import com.instagram.android.c2dm.c;
import com.instagram.common.j.d;

// Referenced classes of package com.instagram.android.directshare.d:
//            c, u

final class t
    implements d
{

    final com.instagram.android.directshare.d.c a;

    t(com.instagram.android.directshare.d.c c1)
    {
        a = c1;
        super();
    }

    private void a()
    {
        c.f(a).post(new u(this));
    }

    private boolean a(a a1)
    {
        return "directshare".equals(a1.a) && c.b(com.instagram.android.directshare.d.c.c(a)).equals(a1.b);
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
