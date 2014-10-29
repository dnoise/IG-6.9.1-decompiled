// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.tiltshift;

import com.instagram.cliffjumper.edit.common.ui.b;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.tiltshift:
//            e, TiltShiftFogFilter

abstract class g
{

    final e a;
    private final b b;
    private long c;
    private long d;
    private float e;
    private float f;
    private boolean g;

    private g(e e1, b b1, long l, float f1, float f2)
    {
        a = e1;
        super();
        b = b1;
        d = l;
        e = f1;
        f = f2;
        c = -1L;
    }

    g(e e1, b b1, long l, float f1, float f2, byte byte0)
    {
        this(e1, b1, l, f1, f2);
    }

    final void a()
    {
        g = true;
    }

    public final void a(long l)
    {
        if (c == -1L)
        {
            c = l;
        }
        float f1 = e + ((f - e) * (float)(l - c)) / (float)d;
        if (l - c >= d || g)
        {
            f1 = f;
        } else
        {
            b();
        }
        com.instagram.cliffjumper.edit.photo.tiltshift.e.c(a).c(f1);
        b.a();
    }

    protected abstract void b();
}
