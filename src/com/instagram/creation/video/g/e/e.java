// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.e;

import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.opengl.Matrix;
import com.instagram.creation.base.d;
import com.instagram.creation.video.e.b;
import com.instagram.creation.video.e.c;
import com.instagram.creation.video.gl.i;
import com.instagram.creation.video.j.h;
import com.instagram.creation.video.j.l;

final class e
{

    protected i a;
    protected l b;
    private final float c[] = new float[16];
    private int d;
    private int e;
    private int f;
    private b g;
    private h h;

    public e(com.instagram.creation.b.a.b b1)
    {
        e = -12345;
        b = com.instagram.creation.video.e.e.c();
        g = new b();
        h = new h();
        h.a(b1.K());
        h.b(b1.K());
        Matrix.setIdentityM(c, 0);
    }

    public final int a()
    {
        return e;
    }

    public final void a(SurfaceTexture surfacetexture, c c1)
    {
        com.instagram.creation.base.d.a("onDrawFrame start");
        surfacetexture.getTransformMatrix(c);
        GLES20.glClearColor(0.0F, 1.0F, 0.0F, 1.0F);
        GLES20.glClear(16640);
        GLES20.glUseProgram(d);
        GLES20.glBindFramebuffer(36160, a.a());
        g.a(e, h.a(), c);
        GLES20.glBindFramebuffer(36160, 0);
        c1.a(a.b(), b);
        GLES20.glFinish();
    }

    public final void a(c c1)
    {
        d = g.e();
        a = new i(640);
        e = com.instagram.creation.base.d.a(36197);
        f = GLES20.glGetUniformLocation(d, "transformMatrix");
        com.instagram.creation.base.d.a("glGetUniformLocation uSTMatrix");
        if (f == -1)
        {
            throw new RuntimeException("Could not get attrib location for uSTMatrix");
        } else
        {
            c1.e();
            return;
        }
    }
}
