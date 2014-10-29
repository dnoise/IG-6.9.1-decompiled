// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.os.Bundle;
import android.os.Handler;
import com.instagram.creation.b.a.b;
import com.instagram.creation.video.e.e;
import com.instagram.creation.video.gl.j;
import com.instagram.creation.video.gl.o;
import com.instagram.creation.video.gl.z;
import com.instagram.creation.video.j.f;
import com.instagram.creation.video.k.a;

// Referenced classes of package com.instagram.creation.video.f:
//            ad, ak, al, aj, 
//            ai

public abstract class ah extends z
{

    final ad a;
    private int b;
    private boolean c;
    private boolean d;
    private f e;

    public ah(ad ad1, j j1)
    {
        a = ad1;
        super(j1);
        c = false;
        d = false;
        e = new f();
        j1.a(e);
    }

    private void q()
    {
        synchronized (a.e)
        {
            if (!a.d)
            {
                a.d = h();
                if (!a.d)
                {
                    com.instagram.creation.video.f.ad.e(a).post(new ak(this));
                }
            }
        }
    }

    private void r()
    {
        synchronized (a.e)
        {
            if (a.d)
            {
                j();
                a.d = false;
            }
        }
    }

    private void s()
    {
        com.instagram.creation.video.f.ad.e(a).post(new al(this));
    }

    public void H_()
    {
        ((a)a.l()).i();
        a.b = false;
        a.c = a.j().getBoolean("VideoCoverFragmentBase.SAVE_AND_FINISH", false);
        q();
        b b1 = a.Y();
        l().a(o.b);
        a().a(com.instagram.creation.video.e.e.a(a.n(), b1.d()));
        a().b(a.a);
        i();
        if (a.V() != null)
        {
            a.V().a(ad.c(a));
        }
    }

    public final void I_()
    {
        r();
    }

    public final f a()
    {
        return e;
    }

    protected abstract void a(int l);

    public final void d()
    {
        q();
    }

    public void e()
    {
        if (d)
        {
            s();
            l().e();
            return;
        } else
        {
            com.instagram.creation.video.f.ad.e(a).postDelayed(new aj(this), 50L);
            return;
        }
    }

    public final void f()
    {
        r();
        if (ad.d(a) || a.j().getBoolean("VideoCoverFragmentBase.SAVE_AND_FINISH", false))
        {
            com.instagram.creation.video.f.ad.e(a).post(new ai(this));
        }
    }

    public final boolean g()
    {
        if (d)
        {
            return true;
        }
        if (c)
        {
            if (b == 3)
            {
                d = true;
                l().c();
                l().d();
            }
            b = 1 + b;
        }
        return false;
    }

    protected abstract boolean h();

    protected abstract void i();

    protected abstract void j();

    protected final void k()
    {
        l().a(o.a);
        c = true;
    }
}
