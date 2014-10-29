// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.tiltshift;

import android.os.Handler;
import android.view.Choreographer;
import com.instagram.cliffjumper.edit.common.ui.b;
import com.instagram.filterkit.filter.IgFilterGroup;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.tiltshift:
//            m, TiltShiftFogFilter, h, i, 
//            f

public final class e
{

    private final TiltShiftFogFilter a;
    private Handler b;
    private i c;
    private Runnable d;
    private Choreographer e;
    private h f;

    public e(IgFilterGroup igfiltergroup)
    {
        b = new Handler();
        a = m.c(igfiltergroup);
        a.c(0.0F);
        if (b())
        {
            e = Choreographer.getInstance();
        }
    }

    static Handler a(e e1)
    {
        return e1.b;
    }

    static Choreographer b(e e1)
    {
        return e1.e;
    }

    private static final boolean b()
    {
        return android.os.Build.VERSION.SDK_INT >= 16;
    }

    static TiltShiftFogFilter c(e e1)
    {
        return e1.a;
    }

    public final void a()
    {
        if (!b()) goto _L2; else goto _L1
_L1:
        if (f != null)
        {
            f.a();
            e.removeFrameCallback(f);
            f = null;
        }
_L4:
        if (d != null)
        {
            b.removeCallbacks(d);
            d = null;
        }
        return;
_L2:
        if (c != null)
        {
            c.a();
            b.removeCallbacks(c);
            c = null;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void a(b b1)
    {
        a();
        float f1 = a.j();
        long l = (long)((1.5E+08F * (0.9F - f1)) / 0.9F);
        if (b())
        {
            f = new h(this, b1, l, f1, 0.9F, (byte)0);
            e.postFrameCallback(f);
            return;
        } else
        {
            c = new i(this, b1, l, f1, 0.9F, (byte)0);
            b.post(c);
            return;
        }
    }

    public final void b(b b1)
    {
        a();
        float f1 = a.j();
        long l = (long)((7.5E+08F * f1) / 0.9F);
        if (b())
        {
            f = new h(this, b1, l, f1, 0.0F, (byte)0);
            e.postFrameCallback(f);
            return;
        } else
        {
            c = new i(this, b1, l, f1, 0.0F, (byte)0);
            b.post(c);
            return;
        }
    }

    public final void c(b b1)
    {
        a(b1);
        d = new f(this, b1);
        b.postDelayed(d, 650L);
    }
}
