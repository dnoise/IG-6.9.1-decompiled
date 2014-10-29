// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.j;

import com.instagram.creation.b.a.a;
import com.instagram.creation.video.e.e;
import com.instagram.creation.video.l.c;
import java.nio.FloatBuffer;

// Referenced classes of package com.instagram.creation.video.j:
//            f, l

public final class j extends f
{

    private a h;
    private volatile boolean i;

    public j()
    {
    }

    public final void b(a a1)
    {
        h = a1;
        float f1 = a1.j();
        int k = c.a(a1);
        float f2 = a1.e();
        f.a.put(com.instagram.creation.video.e.e.a(f1, f2));
        f.a.position(0);
        FloatBuffer floatbuffer = f.b;
        if (c.b(a1))
        {
            k = 0;
        }
        floatbuffer.put(com.instagram.creation.video.e.e.a(k));
        f.b.position(0);
        i = true;
    }

    public final boolean e()
    {
        return i;
    }

    public final void f()
    {
        f.a.put(com.instagram.creation.video.e.e.a(h.j(), h.e()));
        f.a.position(0);
    }
}
