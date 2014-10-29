// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.gl;

import javax.microedition.khronos.opengles.GL11;

// Referenced classes of package com.instagram.creation.video.gl:
//            a, h, c

public final class b extends a
{

    private static int h[] = new int[1];
    private static float i[] = new float[4];
    private int j;

    public b()
    {
        super((byte)0);
        com.instagram.creation.video.gl.h.a(1, h);
        a = h[0];
        j = 36197;
    }

    private void c(c c1)
    {
        GL11 gl11 = c1.d();
        int k = b();
        int l = c();
        i[0] = 0.0F;
        i[1] = l;
        i[2] = k;
        i[3] = -l;
        gl11.glBindTexture(j, a);
        gl11.glTexParameterfv(j, 35741, i, 0);
        gl11.glTexParameteri(j, 10242, 33071);
        gl11.glTexParameteri(j, 10243, 33071);
        gl11.glTexParameterf(j, 10241, 9729F);
        gl11.glTexParameterf(j, 10240, 9729F);
        a(c1);
        b = 1;
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
        if (!h())
        {
            c(c1);
        }
        return true;
    }

    public final volatile int c()
    {
        return super.c();
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

    public final int g()
    {
        return j;
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
        return true;
    }

}
