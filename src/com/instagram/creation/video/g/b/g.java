// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.b;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.view.Surface;
import com.instagram.common.l.a.f;
import com.instagram.creation.video.g.a.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.instagram.creation.video.g.b:
//            h, c, i, e

public class g
{

    private static final Class a = com/instagram/creation/video/g/b/g;
    private static final Set b;
    private static final Map c;
    private static final Set d;
    private static final Set e;
    private static final Set f;
    private static final List g;
    private h h;

    public g()
    {
        this(com.instagram.creation.video.g.b.h.a());
    }

    private g(h h1)
    {
        h = h1;
    }

    private static i a(MediaCodec mediacodec, MediaFormat mediaformat, int j)
    {
        boolean flag;
        Surface surface;
        if (j != c.b || android.os.Build.VERSION.SDK_INT >= 18)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.instagram.common.l.a.f.a(flag);
        mediacodec.configure(mediaformat, null, null, 1);
        if (j == c.b)
        {
            surface = mediacodec.createInputSurface();
        } else
        {
            surface = null;
        }
        return com.instagram.creation.video.g.b.i.a(mediacodec, surface);
    }

    private static i a(MediaCodec mediacodec, MediaFormat mediaformat, Surface surface)
    {
        mediacodec.configure(mediaformat, surface, null, 0);
        boolean flag = false;
        if (surface != null)
        {
            flag = true;
        }
        return com.instagram.creation.video.g.b.i.a(mediacodec, flag);
    }

    public static i a(String s, MediaFormat mediaformat, int j)
    {
        if (c(s))
        {
            return a(MediaCodec.createEncoderByType(s), mediaformat, j);
        } else
        {
            throw com.instagram.creation.video.g.a.a.a(s);
        }
    }

    public static i a(String s, MediaFormat mediaformat, Surface surface)
    {
        if (a(s))
        {
            return a(MediaCodec.createDecoderByType(s), mediaformat, surface);
        } else
        {
            throw com.instagram.creation.video.g.a.a.a(s);
        }
    }

    public static boolean a(String s)
    {
        return s.equals(e.c.k) || s.equals(e.e.k) || s.equals(e.d.k) || s.equals(com.instagram.creation.video.g.b.e.a.k);
    }

    public static boolean b(String s)
    {
        return s.equals(e.i.k);
    }

    private static boolean c(String s)
    {
        return s.equals(e.c.k);
    }

    static 
    {
        HashSet hashset = new HashSet();
        b = hashset;
        hashset.add("OMX.ittiam.video.encoder.avc");
        b.add("OMX.Exynos.avc.enc");
        HashMap hashmap = new HashMap();
        c = hashmap;
        hashmap.put("OMX.qcom.video.encoder.avc", Integer.valueOf(21));
        HashSet hashset1 = new HashSet();
        d = hashset1;
        hashset1.add("OMX.qcom.video.decoder.avc");
        HashSet hashset2 = new HashSet();
        e = hashset2;
        hashset2.add("OMX.ittiam.video.decoder.avc");
        e.add("OMX.Exynos.AVC.Decoder");
        HashSet hashset3 = new HashSet();
        f = hashset3;
        hashset3.add("GT-S6812i");
        f.add("GT-I8552");
        f.add("GT-I8552");
        f.add("GT-I8552B");
        f.add("GT-I8262B");
        ArrayList arraylist = new ArrayList();
        g = arraylist;
        arraylist.add("OMX.SEC.AVC.Encoder");
        g.add("OMX.SEC.avc.enc");
    }
}
