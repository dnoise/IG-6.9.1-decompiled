// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.j;

import com.instagram.creation.b.a.a;
import com.instagram.creation.video.e.e;
import com.instagram.creation.video.l.c;
import java.nio.FloatBuffer;

// Referenced classes of package com.instagram.creation.video.j:
//            l

public final class h
{

    private float a;
    private final l b = e.c();

    public h()
    {
        a = 0.5F;
        a(1.0F, 0, false);
    }

    private void a(float f, float f1)
    {
        a = Math.max(0.0F, Math.min(1.0F, f));
        b.a.put(e.a(f1, a));
        b.a.position(0);
    }

    private void a(float f, int i, boolean flag)
    {
        b.a.put(e.a(f, a));
        b.a.position(0);
        FloatBuffer floatbuffer = b.b;
        if (flag)
        {
            i = 0;
        }
        floatbuffer.put(e.a(i));
        b.b.position(0);
    }

    public final l a()
    {
        return b;
    }

    public final void a(a a1)
    {
        a(a1.j(), c.a(a1), c.b(a1));
        a(a1.e(), a1.j());
    }

    public final void b(a a1)
    {
        a(a1.j(), c.a(a1), false);
    }
}
