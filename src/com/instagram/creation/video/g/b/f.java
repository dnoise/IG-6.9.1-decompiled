// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.b;

import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;

// Referenced classes of package com.instagram.creation.video.g.b:
//            a

public final class f
    implements a
{

    private final WeakReference a;
    private final int b;
    private android.media.MediaCodec.BufferInfo c;
    private boolean d;

    public f(ByteBuffer bytebuffer, int i, android.media.MediaCodec.BufferInfo bufferinfo)
    {
        a = new WeakReference(bytebuffer);
        b = i;
        c = bufferinfo;
        d = false;
    }

    public final ByteBuffer a()
    {
        return (ByteBuffer)a.get();
    }

    public final void a(int i, long l, int j)
    {
        if (c == null)
        {
            c = new android.media.MediaCodec.BufferInfo();
        }
        c.set(0, i, l, j);
    }

    public final android.media.MediaCodec.BufferInfo b()
    {
        return c;
    }

    public final int c()
    {
        return b;
    }

    public final boolean d()
    {
        return b >= 0;
    }

    public final boolean e()
    {
        return d;
    }

    final void f()
    {
        d = true;
    }
}
