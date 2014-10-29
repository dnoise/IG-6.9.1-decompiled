// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.i;

import android.media.MediaMetadataRetriever;
import android.os.SystemClock;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.creation.video.i:
//            c, b

public final class a
{

    private static int a = -1;
    private List b;
    private String c;
    private long d;
    private int e;
    private long f;
    private int g;

    public a()
    {
        b = new ArrayList();
    }

    public a(int i, long l, String s)
    {
        b = new ArrayList();
        g = i;
        d = l;
        e = c.b;
        c = s;
    }

    public static a a(String s)
    {
        a a1;
        MediaMetadataRetriever mediametadataretriever = new MediaMetadataRetriever();
        mediametadataretriever.setDataSource((new File(s)).getAbsolutePath());
        if (!c(mediametadataretriever.extractMetadata(12)))
        {
            break MISSING_BLOCK_LABEL_52;
        }
        a1 = new a(-1, com.instagram.creation.video.c.a.a(mediametadataretriever), s);
        return a1;
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        return new a(0, a, null);
    }

    private static boolean c(String s)
    {
        return "video/avc".equals(s) || "video/mp4".equals(s) || "video/3gpp".equals(s) || "video/3gpp2".equals(s);
    }

    public final void a()
    {
        b(SystemClock.elapsedRealtime() - f);
    }

    public final void a(int i)
    {
        e = i;
        for (Iterator iterator = b.iterator(); iterator.hasNext(); ((b)iterator.next()).a(i)) { }
    }

    public final void a(long l)
    {
        f = l + SystemClock.elapsedRealtime();
    }

    public final void a(b b1)
    {
        b.add(b1);
    }

    public final long b()
    {
        return d;
    }

    public final void b(int i)
    {
        g = i;
    }

    public final void b(long l)
    {
        d = l;
        for (Iterator iterator = b.iterator(); iterator.hasNext(); ((b)iterator.next()).a(this)) { }
    }

    public final void b(b b1)
    {
        b.remove(b1);
    }

    public final void b(String s)
    {
        c = s;
    }

    public final int c()
    {
        return e;
    }

    public final String d()
    {
        return c;
    }

    public final int e()
    {
        return g;
    }

}
