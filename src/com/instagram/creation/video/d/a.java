// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.d;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import com.instagram.creation.video.gl.j;

// Referenced classes of package com.instagram.creation.video.d:
//            e, d, b, c

public abstract class a
    implements android.graphics.SurfaceTexture.OnFrameAvailableListener
{

    protected final Object a = new Object();
    protected boolean b;
    protected Handler c;
    protected c d;
    protected com.instagram.creation.b.a.a e;
    private b f;

    protected a(b b1)
    {
        b = false;
        c = new Handler();
        f = b1;
    }

    public static a a(b b1, com.instagram.creation.video.k.a a1)
    {
        return new e(b1, new j(null, 0), a1);
    }

    public abstract void a();

    public final void a(SurfaceTexture surfacetexture, int i1)
    {
        j j1 = k().l();
        j1.a(surfacetexture, i1);
        (new Thread(j1)).start();
    }

    public final void a(com.instagram.creation.b.a.a a1)
    {
        e = a1;
    }

    public final void a(c c1)
    {
        d = c1;
    }

    public abstract void b();

    public abstract void c();

    public abstract void d();

    public abstract boolean e();

    public abstract void f();

    public abstract boolean g();

    public final void h()
    {
        k().n();
    }

    public final void i()
    {
        k().o();
    }

    public final void j()
    {
        k().p();
    }

    public abstract d k();

    protected final void l()
    {
        if (f != null)
        {
            f.a();
        }
    }

    protected final void m()
    {
        if (f != null)
        {
            f.b();
        }
    }

    protected final void n()
    {
        if (f != null)
        {
            f.c();
        }
    }

    protected final void o()
    {
        if (f != null)
        {
            f.d();
        }
    }

    protected final void p()
    {
        if (f != null)
        {
            f.e();
        }
    }

    protected final void q()
    {
        if (f != null)
        {
            f.f();
        }
    }
}
