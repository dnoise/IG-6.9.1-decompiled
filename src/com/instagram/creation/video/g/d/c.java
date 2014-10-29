// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.d;

import android.media.MediaFormat;
import android.media.MediaMuxer;
import com.instagram.creation.video.g.b.a;

// Referenced classes of package com.instagram.creation.video.g.d:
//            b

public final class c
    implements b
{

    private MediaMuxer a;
    private int b;
    private int c;

    public c()
    {
    }

    public final void a()
    {
        a.start();
    }

    public final void a(MediaFormat mediaformat)
    {
        b = a.addTrack(mediaformat);
    }

    public final void a(a a1)
    {
        a.writeSampleData(b, a1.a(), a1.b());
    }

    public final void a(String s)
    {
        a = new MediaMuxer(s, 0);
    }

    public final void b()
    {
        a.stop();
        a.release();
    }

    public final void b(MediaFormat mediaformat)
    {
        c = a.addTrack(mediaformat);
    }

    public final void b(a a1)
    {
        a.writeSampleData(c, a1.a(), a1.b());
    }
}
