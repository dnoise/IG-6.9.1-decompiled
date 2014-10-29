// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.a;

import android.content.Context;
import android.os.Handler;
import android.support.v4.app.s;
import com.instagram.api.j.a;
import com.instagram.api.j.j;
import com.instagram.g.c;

// Referenced classes of package com.instagram.android.login.a:
//            k, j

public abstract class i extends a
{

    private final Handler a;
    private final s b;
    private final Context c;

    public i(Context context, Handler handler, s s1)
    {
        a = handler;
        b = s1;
        c = context;
    }

    public final void a()
    {
        (new k(this)).a(b, "ProgressDialog");
        super.a();
    }

    protected final void a(j j1)
    {
        if (com.instagram.g.c.b(j1))
        {
            com.instagram.g.c.c(j1);
            return;
        } else
        {
            com.instagram.o.a.a.a(c, j1.b(), j1.i(), null);
            return;
        }
    }

    public final void b()
    {
        com.instagram.base.a.a a1 = (com.instagram.base.a.a)b.a("ProgressDialog");
        a.post(new com.instagram.android.login.a.j(this, a1));
        super.b();
    }
}
