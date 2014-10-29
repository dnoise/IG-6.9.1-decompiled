// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.j;

import android.opengl.GLES20;
import com.instagram.creation.video.e.c;
import com.instagram.creation.video.e.e;
import com.instagram.creation.video.gl.g;
import com.instagram.creation.video.gl.i;

// Referenced classes of package com.instagram.creation.video.j:
//            g, l

public class f extends com.instagram.creation.video.j.g
{

    protected c a;
    protected c b;
    protected boolean c;
    protected i d;
    protected i e;
    protected l f;
    protected l g;

    public f()
    {
        a = com.instagram.creation.video.e.e.b();
        b = com.instagram.creation.video.e.e.a();
    }

    public final void a(int j)
    {
        super.a(j);
        d = new i(j);
        e = new i(j);
        b.e();
        a.e();
        f = com.instagram.creation.video.e.e.c();
        g = com.instagram.creation.video.e.e.d();
    }

    public final void a(c c1)
    {
        b = c1;
    }

    protected final g b(g g1)
    {
        return d;
    }

    public final void b()
    {
        c = true;
    }

    public final void b(int j)
    {
        d.a(j);
        e.a(j);
    }

    protected final void c(g g1)
    {
        int j = d.b();
        if (c)
        {
            GLES20.glBindFramebuffer(36160, e.a());
            b.a(j, f);
            j = e.b();
        }
        GLES20.glBindFramebuffer(36160, g1.a());
        if (c)
        {
            a.a(j, g);
            return;
        } else
        {
            b.a(j, f);
            return;
        }
    }
}
