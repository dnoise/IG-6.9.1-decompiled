// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.ui;

import android.view.View;
import java.lang.ref.WeakReference;

// Referenced classes of package com.instagram.cliffjumper.edit.common.ui:
//            g

abstract class h
{

    private WeakReference a;
    private float b;
    private float c;
    private long d;

    public h(View view)
    {
        b = 1.0F;
        c = 1.0F;
        d = -1L;
        a = new WeakReference(view);
    }

    protected abstract void a();

    public final void a(float f)
    {
        c = f;
        if (c != b)
        {
            a();
        }
    }

    protected final void a(long l)
    {
        if (a.get() == null || b == c)
        {
            b();
            d = -1L;
            return;
        }
        if (d == -1L)
        {
            d = l;
        }
        float f = (float)(l - d) / (float)g.c();
        float f1;
        if (c > b)
        {
            f1 = Math.min(1.0F, f + b);
        } else
        {
            f1 = Math.max(0.0F, b - f);
        }
        b = f1;
        ((View)a.get()).invalidate();
        d = l;
        a();
    }

    protected abstract void b();

    public final float c()
    {
        return c;
    }

    public final float d()
    {
        return b;
    }
}
