// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.d;

import android.opengl.GLES20;
import com.instagram.filterkit.e.b;

// Referenced classes of package com.instagram.filterkit.d:
//            b

final class a
    implements b
{

    private final int a;
    private final int b;
    private final int c;
    private final int d;

    a(int i, int j)
    {
        a = i;
        b = j;
        c = com.instagram.filterkit.d.b.b(3553);
        int ai[] = new int[1];
        GLES20.glGenFramebuffers(1, ai, 0);
        d = ai[0];
        GLES20.glTexImage2D(3553, 0, 6408, i, j, 0, 6408, 5121, null);
        GLES20.glBindFramebuffer(36160, d);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, c, 0);
        GLES20.glViewport(0, 0, i, j);
    }

    a(com.instagram.filterkit.d.b b1, int i)
    {
        this(i, i);
    }

    public final int a()
    {
        return d;
    }

    public final int b()
    {
        return c;
    }

    public final int c()
    {
        return a;
    }

    public final int d()
    {
        return b;
    }

    public final void e()
    {
        int ai[] = new int[1];
        ai[0] = d;
        GLES20.glDeleteFramebuffers(1, ai, 0);
        int ai1[] = new int[1];
        ai1[0] = c;
        GLES20.glDeleteTextures(1, ai1, 0);
    }

    public final void f()
    {
    }
}
