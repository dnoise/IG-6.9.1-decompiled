// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.a;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.support.v4.app.s;
import com.instagram.android.nux.af;
import com.instagram.api.j.j;
import com.instagram.g.c;
import com.instagram.p.b;

// Referenced classes of package com.instagram.android.login.a:
//            c, b

public class a extends com.instagram.api.j.a
{

    private final Handler a;
    private final s b;
    private final Context c;
    private final Activity d;

    public a(Context context, Handler handler, s s1, Activity activity)
    {
        c = context;
        a = handler;
        b = s1;
        d = activity;
    }

    public void a()
    {
        (new com.instagram.android.login.a.c()).a(b, "ProgressDialog");
        super.a();
    }

    protected void a(j j1)
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

    protected void a(com.instagram.user.c.a a1)
    {
        com.instagram.n.a.b(a1.b());
        b.aD.b().a("instagram_id", a1.g()).a();
        af.a(d, a1);
        com.instagram.l.a.b.a().j();
    }

    protected volatile void a(Object obj)
    {
        a((com.instagram.user.c.a)obj);
    }

    public final void b()
    {
        com.instagram.base.a.a a1 = (com.instagram.base.a.a)b.a("ProgressDialog");
        a.post(new com.instagram.android.login.a.b(this, a1));
        super.b();
    }
}
