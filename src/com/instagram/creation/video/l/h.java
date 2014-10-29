// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.l;

import android.content.Context;
import android.graphics.SurfaceTexture;
import com.instagram.creation.video.d.a;
import com.instagram.creation.video.d.c;
import com.instagram.creation.video.e.e;
import com.instagram.creation.video.j.j;
import com.instagram.creation.video.ui.d;

// Referenced classes of package com.instagram.creation.video.l:
//            i

public final class h
    implements d
{

    private Context a;
    private a b;
    private com.instagram.creation.video.ui.a.a c;
    private boolean d;
    private com.instagram.creation.b.a.a e;
    private int f;
    private c g;

    public h(Context context, com.instagram.creation.video.ui.a.a a1, boolean flag)
    {
        f = -1;
        a = context;
        c = a1;
        d = flag;
    }

    static com.instagram.creation.b.a.a a(h h1)
    {
        return h1.e;
    }

    static int b(h h1)
    {
        return h1.f;
    }

    static c c(h h1)
    {
        return h1.g;
    }

    static boolean d(h h1)
    {
        return h1.d;
    }

    static a e(h h1)
    {
        return h1.b;
    }

    public final void a()
    {
        b.j();
        b = null;
    }

    public final void a(int i1)
    {
        f = i1;
        if (b != null)
        {
            com.instagram.creation.video.e.c c1 = com.instagram.creation.video.e.e.a(a, i1);
            b.k().a().a(c1);
        }
    }

    public final void a(SurfaceTexture surfacetexture, int i1)
    {
        b = com.instagram.creation.video.d.a.a(c, (com.instagram.creation.video.k.a)a);
        ((com.instagram.creation.b.a.e)a).a(new i(this, surfacetexture, i1));
    }

    public final void a(com.instagram.creation.b.a.a a1)
    {
        e = a1;
        if (b != null)
        {
            b.a(a1);
        }
    }

    public final void a(c c1)
    {
        g = c1;
        if (b != null)
        {
            b.a(c1);
        }
    }

    public final void b()
    {
        b.a();
    }

    public final void b(SurfaceTexture surfacetexture, int i1)
    {
        if (b != null)
        {
            b.a(surfacetexture, i1);
        }
    }

    public final void c()
    {
        c.d();
        c.e();
    }

    public final void d()
    {
        if (b != null)
        {
            b.h();
        }
    }

    public final void e()
    {
        if (b != null)
        {
            b.i();
        }
    }

    public final boolean f()
    {
        if (b != null)
        {
            return b.e();
        } else
        {
            return false;
        }
    }

    public final void g()
    {
        if (b != null)
        {
            b.f();
        }
    }

    public final void h()
    {
        if (b != null)
        {
            b.c();
        }
    }

    public final void i()
    {
        if (b != null)
        {
            b.d();
        }
    }

    public final void j()
    {
        if (b != null)
        {
            b.b();
        }
    }

    public final void k()
    {
        if (b != null)
        {
            b.j();
        }
    }

    public final boolean l()
    {
        if (b != null)
        {
            return b.g();
        } else
        {
            return false;
        }
    }
}
