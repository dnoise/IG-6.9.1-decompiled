// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.a;

import android.support.v4.app.s;
import android.view.View;
import com.instagram.android.i.d;
import com.instagram.o.f.e;
import com.instagram.o.f.f;
import com.instagram.user.c.a;

// Referenced classes of package com.instagram.android.k.a:
//            f

final class i
    implements android.view.View.OnClickListener
{

    final boolean a;
    final d b;
    final a c;
    final s d;
    final com.instagram.android.k.a.f e;

    i(com.instagram.android.k.a.f f1, boolean flag, d d1, a a1, s s)
    {
        e = f1;
        a = flag;
        b = d1;
        c = a1;
        d = s;
        super();
    }

    public final void onClick(View view)
    {
        if (a)
        {
            b.b(c);
        }
        f.a().a(d, c.g()).a();
    }
}
