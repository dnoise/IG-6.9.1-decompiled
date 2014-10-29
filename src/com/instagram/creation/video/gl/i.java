// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.gl;

import android.opengl.GLES20;
import com.instagram.creation.base.d;

// Referenced classes of package com.instagram.creation.video.gl:
//            g

public final class i
    implements g
{

    private int a;
    private int b;
    private int c;

    public i(int j)
    {
        a = j;
        int ai[] = new int[1];
        GLES20.glGenFramebuffers(1, ai, 0);
        c = ai[0];
        b = d.a(3553);
        GLES20.glTexImage2D(3553, 0, 6408, j, j, 0, 6408, 5121, null);
        GLES20.glBindFramebuffer(36160, c);
        GLES20.glFramebufferTexture2D(36160, 36064, 3553, b, 0);
        GLES20.glViewport(0, 0, j, j);
    }

    public final int a()
    {
        return c;
    }

    public final void a(int j)
    {
        if (j == a)
        {
            return;
        } else
        {
            a = j;
            int k = d.a(3553);
            GLES20.glTexImage2D(3553, 0, 6408, j, j, 0, 6408, 5121, null);
            GLES20.glBindFramebuffer(36160, c);
            GLES20.glFramebufferTexture2D(36160, 36064, 3553, k, 0);
            int ai[] = new int[1];
            ai[0] = b;
            GLES20.glDeleteTextures(1, ai, 0);
            b = k;
            return;
        }
    }

    public final int b()
    {
        return b;
    }

    public final void c()
    {
        GLES20.glBindFramebuffer(36160, 0);
        int ai[] = new int[1];
        ai[0] = c;
        GLES20.glDeleteFramebuffers(1, ai, 0);
        ai[0] = b;
        GLES20.glDeleteTextures(1, ai, 0);
    }
}
