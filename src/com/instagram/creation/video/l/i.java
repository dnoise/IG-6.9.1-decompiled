// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.l;

import android.graphics.SurfaceTexture;
import com.instagram.creation.video.d.a;

// Referenced classes of package com.instagram.creation.video.l:
//            h

final class i
    implements Runnable
{

    final SurfaceTexture a;
    final int b;
    final h c;

    i(h h1, SurfaceTexture surfacetexture, int j)
    {
        c = h1;
        a = surfacetexture;
        b = j;
        super();
    }

    public final void run()
    {
        if (com.instagram.creation.video.l.h.a(c) != null)
        {
            c.a(com.instagram.creation.video.l.h.a(c));
        }
        if (h.b(c) != -1)
        {
            c.a(h.b(c));
        }
        if (h.c(c) != null)
        {
            c.a(h.c(c));
        }
        c.b(a, b);
        if (h.d(c))
        {
            h.e(c).g();
        }
    }
}
