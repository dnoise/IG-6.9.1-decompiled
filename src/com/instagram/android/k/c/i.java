// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.c;

import android.os.Handler;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.api.k.a.d;
import com.instagram.common.a.a.j;
import com.instagram.common.l.a.e;
import com.instagram.l.b.a;

// Referenced classes of package com.instagram.android.k.c:
//            a, j

final class i extends j
{

    final com.instagram.android.k.c.a a;

    i(com.instagram.android.k.c.a a1)
    {
        a = a1;
        super();
    }

    private void a(d d1)
    {
        super.a(d1);
        com.instagram.l.b.a.a().h(false);
        com.instagram.android.k.c.a.e(a).post(new com.instagram.android.k.c.j(this));
    }

    public final volatile void a(Object obj)
    {
        a((d)obj);
    }

    public final void b(e e)
    {
        super.b(e);
        Toast.makeText(a.n(), az.disconnect_failed, 0).show();
    }
}
