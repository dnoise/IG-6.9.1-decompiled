// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.j;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import com.instagram.creation.b.a.a;
import com.instagram.creation.base.d;
import com.instagram.creation.video.e.b;
import com.instagram.creation.video.gl.p;

// Referenced classes of package com.instagram.creation.video.j:
//            h

public abstract class g
    implements p
{

    private final b a = new b();
    private final h b = new h();
    private final float c[] = new float[16];
    private int d;
    private SurfaceTexture e;
    private boolean f;

    public g()
    {
        f = true;
    }

    private boolean b()
    {
        return f;
    }

    public final void a()
    {
    }

    public void a(int i)
    {
        d = com.instagram.creation.base.d.a(36197);
        e = new SurfaceTexture(d);
        a.e();
    }

    public final void a(a a1)
    {
        b.b(a1);
    }

    public final void a(com.instagram.creation.video.gl.g g1)
    {
        GLES20.glClear(16640);
        e.updateTexImage();
        e.getTransformMatrix(c);
        if (b())
        {
            GLES20.glBindFramebuffer(36160, b(g1).a());
            a.a(d, b.a(), c);
        }
        c(g1);
    }

    public final void a(boolean flag)
    {
        f = flag;
    }

    protected abstract com.instagram.creation.video.gl.g b(com.instagram.creation.video.gl.g g1);

    public void b(int i)
    {
    }

    public void b(a a1)
    {
        b.a(a1);
    }

    public final SurfaceTexture c()
    {
        return e;
    }

    protected void c(com.instagram.creation.video.gl.g g1)
    {
    }

    public final void d()
    {
        e.updateTexImage();
    }
}
