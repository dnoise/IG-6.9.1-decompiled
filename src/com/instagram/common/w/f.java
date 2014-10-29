// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.w;

import android.app.Activity;
import android.content.Context;
import android.hardware.SensorManager;
import android.support.v4.app.k;
import com.instagram.common.p.a.a;

// Referenced classes of package com.instagram.common.w:
//            g, h, a

public abstract class f
    implements a
{

    protected k a;
    private SensorManager b;
    private boolean c;
    private boolean d;
    private com.instagram.common.w.a e;

    public f(Context context)
    {
        d = false;
        e = new g(this);
        b = (SensorManager)context.getSystemService("sensor");
    }

    static boolean a(f f1)
    {
        return f1.c;
    }

    static boolean a(f f1, boolean flag)
    {
        f1.c = flag;
        return flag;
    }

    static com.instagram.common.w.a b(f f1)
    {
        return f1.e;
    }

    private void d()
    {
        if (!d)
        {
            b.registerListener(e, b.getDefaultSensor(1), 2);
            d = true;
        }
    }

    protected abstract void a();

    public void a(Activity activity)
    {
        a = null;
        c();
    }

    protected final android.content.DialogInterface.OnDismissListener b()
    {
        return new h(this);
    }

    public final void b(Activity activity)
    {
        if (activity instanceof k)
        {
            a = (k)activity;
            d();
        }
    }

    public final void c()
    {
        if (d)
        {
            b.unregisterListener(e);
            d = false;
        }
    }
}
