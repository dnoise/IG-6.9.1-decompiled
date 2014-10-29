// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.a;

import android.content.Context;
import android.os.Handler;
import android.support.v4.app.s;
import com.facebook.az;
import com.instagram.android.login.c.f;
import com.instagram.api.j.a;
import com.instagram.api.j.j;
import com.instagram.o.e;

// Referenced classes of package com.instagram.android.login.a:
//            f, g, e

public class d extends a
{

    private Handler a;
    private s b;
    private Context c;

    public d(Context context, Handler handler, s s)
    {
        a = handler;
        b = s;
        c = context;
    }

    static Context a(d d1)
    {
        return d1.c;
    }

    private void a(f f1)
    {
        com.instagram.user.c.a a1 = com.instagram.service.a.a.a().b();
        if (a1 != null && !a1.g().equals(f1.a().g()))
        {
            a.post(new com.instagram.android.login.a.f(this));
            return;
        } else
        {
            a.post(new g(this, f1));
            return;
        }
    }

    static s b(d d1)
    {
        return d1.b;
    }

    protected void a(j j1)
    {
        if (j1.d() == null)
        {
            e.a(az.request_error);
            return;
        }
        if (j1.d().intValue() == 403 || j1.d().intValue() == 404)
        {
            a.post(new com.instagram.android.login.a.e(this));
            return;
        } else
        {
            super.a(j1);
            return;
        }
    }

    protected final volatile void a(Object obj)
    {
        a((f)obj);
    }
}
