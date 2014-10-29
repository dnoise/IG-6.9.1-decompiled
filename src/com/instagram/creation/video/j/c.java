// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.j;

import android.opengl.GLES20;
import com.instagram.creation.video.e.e;
import com.instagram.creation.video.gl.g;
import com.instagram.creation.video.gl.i;
import com.instagram.creation.video.gl.p;
import java.util.LinkedList;
import java.util.Queue;

// Referenced classes of package com.instagram.creation.video.j:
//            l

public final class c
    implements p
{

    private Queue a;
    private com.instagram.creation.video.e.c b;
    private com.instagram.creation.video.e.c c;
    private i d;
    private l e;
    private l f;

    public c(com.instagram.creation.video.e.c c1)
    {
        c = c1;
        b = com.instagram.creation.video.e.e.b();
        a = new LinkedList();
        e = com.instagram.creation.video.e.e.c();
        f = com.instagram.creation.video.e.e.d();
    }

    public final void a()
    {
        d.c();
    }

    public final void a(int j)
    {
        d = new i(j);
        c.e();
        b.e();
    }

    public final void a(g g1)
    {
        GLES20.glBindFramebuffer(36160, d.a());
        c.a(((i)a.peek()).b(), e);
        GLES20.glFlush();
        GLES20.glBindFramebuffer(36160, g1.a());
        b.a(d.b(), f);
    }

    public final void a(i j)
    {
        a.offer(j);
    }

    public final i b()
    {
        return (i)a.poll();
    }

    public final void b(int j)
    {
        d.a(j);
    }
}
