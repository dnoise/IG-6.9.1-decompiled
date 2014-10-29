// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.b;

import android.media.MediaFormat;

// Referenced classes of package com.instagram.creation.video.g.b:
//            e

public final class j
{

    private e a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;

    public j(e e1)
    {
        e = 0x5dc00;
        f = 15;
        a = e1;
        b = 640;
        c = 640;
        d = 0x7f000789;
    }

    public final j a()
    {
        e = 0x348000;
        return this;
    }

    public final j b()
    {
        f = 30;
        return this;
    }

    public final j c()
    {
        g = 1;
        return this;
    }

    public final MediaFormat d()
    {
        MediaFormat mediaformat = MediaFormat.createVideoFormat(a.k, b, c);
        mediaformat.setInteger("color-format", d);
        if (e > 0)
        {
            mediaformat.setInteger("bitrate", e);
        }
        if (f > 0)
        {
            mediaformat.setInteger("frame-rate", f);
        }
        if (g > 0)
        {
            mediaformat.setInteger("i-frame-interval", g);
        }
        return mediaformat;
    }
}
