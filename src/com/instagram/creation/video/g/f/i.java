// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.f;

import android.media.MediaFormat;
import com.instagram.creation.b.a.b;
import com.instagram.creation.video.g.b.e;
import com.instagram.creation.video.g.b.f;
import com.instagram.creation.video.g.b.g;
import com.instagram.creation.video.g.b.j;
import com.instagram.creation.video.g.e.c;

// Referenced classes of package com.instagram.creation.video.g.f:
//            h

final class i
    implements h
{

    private final g a;
    private com.instagram.creation.video.g.b.i b;
    private com.instagram.creation.video.g.b.i c;
    private c d;
    private boolean e;

    i(g g1)
    {
        a = g1;
    }

    public final f a()
    {
        return c.a(10000L);
    }

    public final void a(MediaFormat mediaformat)
    {
        g _tmp = a;
        c = g.a(mediaformat.getString("mime"), mediaformat, d.b());
        c.a();
    }

    public final void a(b b1, com.instagram.creation.video.e.c c1)
    {
        MediaFormat mediaformat = (new j(e.c)).a().c().b().d();
        g _tmp = a;
        b = g.a(e.c.k, mediaformat, com.instagram.creation.video.g.b.c.b);
        b.a();
        d = new c(b.d(), b1, c1);
    }

    public final void a(f f1)
    {
        c.a(f1);
    }

    public final void b()
    {
        f f1 = c.b(10000L);
        if (f1 != null && f1.d())
        {
            android.media.MediaCodec.BufferInfo bufferinfo = f1.b();
            if (bufferinfo.presentationTimeUs >= 0L)
            {
                c.b(f1);
            } else
            {
                c.a(f1, false);
            }
            if ((4 & bufferinfo.flags) != 0)
            {
                e = true;
                b.e();
            } else
            if (bufferinfo.presentationTimeUs >= 0L)
            {
                d.c();
                d.d();
                if (bufferinfo != null)
                {
                    d.a(1000L * bufferinfo.presentationTimeUs);
                }
                d.e();
                return;
            }
        }
    }

    public final void b(f f1)
    {
        b.b(f1);
    }

    public final f c()
    {
        return b.b(10000L);
    }

    public final boolean d()
    {
        return e;
    }

    public final void e()
    {
        c.b();
        b.b();
        d.a();
    }

    public final MediaFormat f()
    {
        return b.c();
    }
}
