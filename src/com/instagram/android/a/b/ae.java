// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.a.b;

import android.support.v4.app.s;
import android.view.View;
import com.facebook.av;
import com.instagram.common.analytics.g;
import com.instagram.o.f.e;
import com.instagram.o.f.f;
import com.instagram.user.d.a;
import com.instagram.user.d.b;

final class ae
    implements android.view.View.OnClickListener
{

    final boolean a;
    final s b;
    final a c;
    final int d;

    ae(boolean flag, s s1, a a1, int i)
    {
        a = flag;
        b = s1;
        c = a1;
        d = i;
        super();
    }

    public final void onClick(View view)
    {
        if (a)
        {
            com.instagram.user.d.b.b((g)b.a(av.layout_container_main), c, d, true);
        }
        f.a().a(b, c.a().g()).a();
    }
}
