// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.support.v4.a.e;
import com.facebook.bo;
import com.facebook.cc;

// Referenced classes of package com.facebook.g:
//            s, r

public final class q
{

    private bo a;
    private final cc b;
    private final BroadcastReceiver c = new r(this, (byte)0);
    private final e d;
    private boolean e;

    public q(Context context, cc cc)
    {
        e = false;
        b = new s(this, cc);
        a = null;
        d = android.support.v4.a.e.a(context);
    }

    static cc a(q q1)
    {
        return q1.b;
    }

    static bo b(q q1)
    {
        return q1.a;
    }

    private void f()
    {
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("com.facebook.sdk.ACTIVE_SESSION_SET");
        intentfilter.addAction("com.facebook.sdk.ACTIVE_SESSION_UNSET");
        d.a(c, intentfilter);
    }

    public final bo a()
    {
        if (a == null)
        {
            return bo.g();
        } else
        {
            return a;
        }
    }

    public final void a(bo bo1)
    {
        if (bo1 == null)
        {
            if (a != null)
            {
                a.b(b);
                a = null;
                f();
                if (a() != null)
                {
                    a().a(b);
                }
            }
            return;
        }
        if (a == null)
        {
            bo bo2 = bo.g();
            if (bo2 != null)
            {
                bo2.b(b);
            }
            d.a(c);
        } else
        {
            a.b(b);
        }
        a = bo1;
        a.a(b);
    }

    public final bo b()
    {
        bo bo1 = a();
        if (bo1 != null && bo1.a())
        {
            return bo1;
        } else
        {
            return null;
        }
    }

    public final void c()
    {
        if (e)
        {
            return;
        }
        if (a == null)
        {
            f();
        }
        if (a() != null)
        {
            a().a(b);
        }
        e = true;
    }

    public final void d()
    {
        if (!e)
        {
            return;
        }
        bo bo1 = a();
        if (bo1 != null)
        {
            bo1.b(b);
        }
        d.a(c);
        e = false;
    }

    public final boolean e()
    {
        return e;
    }
}
