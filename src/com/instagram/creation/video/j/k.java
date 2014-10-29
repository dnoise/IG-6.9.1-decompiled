// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.j;

import com.instagram.creation.video.gl.g;
import com.instagram.creation.video.gl.p;

public final class k
    implements p
{

    private p a[];
    private int b;

    public k(p ap[])
    {
        a = ap;
    }

    public final void a()
    {
        for (int i = 0; i < a.length; i++)
        {
            a[i].a();
        }

    }

    public final void a(int i)
    {
        for (int j = 0; j < a.length; j++)
        {
            a[j].a(i);
        }

    }

    public final void a(g g)
    {
        a[b].a(g);
    }

    public final boolean a(p p1)
    {
        return a[b] == p1;
    }

    public final void b(int i)
    {
        for (int j = 0; j < a.length; j++)
        {
            a[j].b(i);
        }

    }

    public final void c(int i)
    {
        b = i;
    }
}
