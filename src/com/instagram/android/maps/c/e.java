// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.c;

import android.os.Handler;
import android.support.v4.app.k;
import com.facebook.az;
import com.instagram.android.maps.e.f;
import com.instagram.api.j.a;

// Referenced classes of package com.instagram.android.maps.c:
//            c, f

final class e extends a
{

    final c a;

    e(c c1)
    {
        a = c1;
        super();
    }

    private void a(String s)
    {
        com.instagram.android.maps.c.c.a(a, s);
        com.instagram.android.maps.c.c.a(a);
        c.b(a).postDelayed(new com.instagram.android.maps.c.f(this), 15000L);
    }

    public final void a()
    {
        if (c.c(a) == f.b)
        {
            c.e(a).a(c.d(a).getString(az.preparing_your_map));
        } else
        {
            c.e(a).a(c.d(a).getString(az.saving_your_updates));
        }
        c.e(a).setCancelable(false);
        c.e(a).show();
        super.a();
    }

    protected final volatile void a(Object obj)
    {
        a((String)obj);
    }
}
