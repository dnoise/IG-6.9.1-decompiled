// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.gl;

import javax.microedition.khronos.opengles.GL11;

// Referenced classes of package com.instagram.creation.video.gl:
//            a, c, h

public final class x extends a
{

    private static final int h[] = new int[1];
    private static final float i[] = new float[4];
    private final boolean j = true;

    public x(int k, int l)
    {
        super((byte)0);
        a(k, l);
    }

    public final volatile int a()
    {
        return super.a();
    }

    public final volatile void a(c c1, int k, int l, int i1, int j1)
    {
        super.a(c1, k, l, i1, j1);
    }

    public final volatile int b()
    {
        return super.b();
    }

    protected final boolean b(c c1)
    {
        return h();
    }

    public final volatile int c()
    {
        return super.c();
    }

    protected final void c(c c1)
    {
        GL11 gl11 = c1.d();
        i[0] = 0.0F;
        i[1] = d;
        i[2] = c;
        i[3] = -d;
        com.instagram.creation.video.gl.h.a(1, h);
        gl11.glBindTexture(3553, h[0]);
        gl11.glTexParameterfv(3553, 35741, i, 0);
        gl11.glTexParameteri(3553, 10242, 33071);
        gl11.glTexParameteri(3553, 10243, 33071);
        gl11.glTexParameterf(3553, 10241, 9729F);
        gl11.glTexParameterf(3553, 10240, 9729F);
        gl11.glTexImage2D(3553, 0, 6408, d(), e(), 0, 6408, 5121, null);
        a = h[0];
        b = 1;
        a(c1);
    }

    public final volatile int d()
    {
        return super.d();
    }

    public final volatile int e()
    {
        return super.e();
    }

    public final volatile boolean f()
    {
        return super.f();
    }

    protected final int g()
    {
        return 3553;
    }

    public final volatile boolean h()
    {
        return super.h();
    }

    public final volatile void i()
    {
        super.i();
    }

    public final void j()
    {
    }

    public final boolean m()
    {
        return j;
    }

}
