// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.b;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.view.Surface;
import com.instagram.common.l.a.f;
import java.nio.ByteBuffer;

// Referenced classes of package com.instagram.creation.video.g.b:
//            d, f

public final class i
{

    private final d a;
    private final MediaCodec b;
    private final Surface c;
    private final boolean d;
    private MediaFormat e;
    private ByteBuffer f[];
    private ByteBuffer g[];

    private i(d d1, MediaCodec mediacodec, Surface surface, boolean flag)
    {
        boolean flag1;
        if (surface == null || d1 == d.b)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        com.instagram.common.l.a.f.a(flag1);
        a = d1;
        b = mediacodec;
        c = surface;
        d = flag;
    }

    static i a(MediaCodec mediacodec, Surface surface)
    {
        return new i(d.b, mediacodec, surface, false);
    }

    static i a(MediaCodec mediacodec, boolean flag)
    {
        return new i(d.a, mediacodec, null, flag);
    }

    public final com.instagram.creation.video.g.b.f a(long l)
    {
        boolean flag;
        int j;
        if (c == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.instagram.common.l.a.f.b(flag);
        j = b.dequeueInputBuffer(10000L);
        if (j >= 0)
        {
            return new com.instagram.creation.video.g.b.f(f[j], j, null);
        } else
        {
            return null;
        }
    }

    public final void a()
    {
        b.start();
        if (c == null)
        {
            f = b.getInputBuffers();
        }
        g = b.getOutputBuffers();
    }

    public final void a(com.instagram.creation.video.g.b.f f1)
    {
        b.queueInputBuffer(f1.c(), f1.b().offset, f1.b().size, f1.b().presentationTimeUs, f1.b().flags);
    }

    public final void a(com.instagram.creation.video.g.b.f f1, boolean flag)
    {
        if (f1.d())
        {
            b.releaseOutputBuffer(f1.c(), flag);
        }
    }

    public final com.instagram.creation.video.g.b.f b(long l)
    {
        android.media.MediaCodec.BufferInfo bufferinfo;
        int j;
        bufferinfo = new android.media.MediaCodec.BufferInfo();
        j = b.dequeueOutputBuffer(bufferinfo, 10000L);
        if (j < 0) goto _L2; else goto _L1
_L1:
        com.instagram.creation.video.g.b.f f1 = new com.instagram.creation.video.g.b.f(g[j], j, bufferinfo);
_L4:
        return f1;
_L2:
        f1 = null;
        switch (j)
        {
        default:
            return null;

        case -1: 
            break;

        case -3: 
            g = b.getOutputBuffers();
            return null;

        case -2: 
            e = b.getOutputFormat();
            break; /* Loop/switch isn't completed */
        }
        if (true) goto _L4; else goto _L3
_L3:
        com.instagram.creation.video.g.b.f f2 = new com.instagram.creation.video.g.b.f(null, -1, null);
        f2.f();
        return f2;
    }

    public final void b()
    {
        if (b != null)
        {
            b.stop();
            b.release();
            f = null;
            g = null;
            e = null;
        }
        if (c != null)
        {
            c.release();
        }
    }

    public final void b(com.instagram.creation.video.g.b.f f1)
    {
        a(f1, d);
    }

    public final MediaFormat c()
    {
        return e;
    }

    public final Surface d()
    {
        boolean flag;
        if (a == d.b)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.instagram.common.l.a.f.a(flag);
        return c;
    }

    public final void e()
    {
        boolean flag;
        if (a == d.b)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.instagram.common.l.a.f.a(flag);
        b.signalEndOfInputStream();
    }
}
