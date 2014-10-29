// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.filterkit.d;

import android.opengl.GLES20;
import com.instagram.filterkit.e.a;

public final class d
    implements a
{

    private final int a;
    private final int b;
    private final int c;
    private boolean d;

    public d(int i, int j, int k)
    {
        a = i;
        b = j;
        c = k;
    }

    public final void a()
    {
        d = true;
    }

    public final int b()
    {
        return a;
    }

    public final int c()
    {
        return b;
    }

    public final int d()
    {
        return c;
    }

    public final void e()
    {
        int ai[] = new int[1];
        ai[0] = a;
        GLES20.glDeleteTextures(1, ai, 0);
    }

    public final void f()
    {
        if (d)
        {
            e();
        }
    }
}
