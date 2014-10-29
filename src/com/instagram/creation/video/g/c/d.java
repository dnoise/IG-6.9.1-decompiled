// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.c;

import android.media.MediaExtractor;
import android.media.MediaFormat;
import com.instagram.common.l.a.b;
import com.instagram.creation.video.g.a.a;
import com.instagram.creation.video.g.b.g;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.creation.video.g.c:
//            e, b

public final class d
{

    private final g a;
    private final com.facebook.d.b.b b;

    public d(g g1, com.facebook.d.b.b b1)
    {
        a = g1;
        b = b1;
    }

    private e a(List list)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            e e1 = (e)iterator.next();
            g _tmp = a;
            if (g.a(e1.a))
            {
                return e1;
            }
        }

        return null;
    }

    private e b(List list)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            e e1 = (e)iterator.next();
            g _tmp = a;
            if (g.b(e1.a))
            {
                return e1;
            }
        }

        return null;
    }

    private static String c(List list)
    {
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(((e)iterator.next()).a)) { }
        return (new StringBuilder()).append(list.size()).append(" tracks: ").append(com.instagram.common.l.a.b.a(", ").a(arraylist)).toString();
    }

    public final e a(MediaExtractor mediaextractor)
    {
        ArrayList arraylist = new ArrayList();
        int i = mediaextractor.getTrackCount();
        for (int j = 0; j < i; j++)
        {
            MediaFormat mediaformat = mediaextractor.getTrackFormat(j);
            String s = mediaformat.getString("mime");
            if (s.startsWith("video/"))
            {
                arraylist.add(new e(s, mediaformat, j));
            }
        }

        if (arraylist.isEmpty())
        {
            throw new com.instagram.creation.video.g.c.b();
        }
        e e1 = a(((List) (arraylist)));
        if (e1 == null)
        {
            throw new a((new StringBuilder("Unsupported video codec. Contained ")).append(c(arraylist)).toString());
        }
        if (arraylist.size() > 1)
        {
            b.a("VideoTrackExtractor_multiple_video_tracks", c(arraylist));
        }
        return e1;
    }

    public final e b(MediaExtractor mediaextractor)
    {
        ArrayList arraylist = new ArrayList();
        int i = mediaextractor.getTrackCount();
        for (int j = 0; j < i; j++)
        {
            MediaFormat mediaformat = mediaextractor.getTrackFormat(j);
            String s = mediaformat.getString("mime");
            if (s.startsWith("audio/"))
            {
                arraylist.add(new e(s, mediaformat, j));
            }
        }

        e e1;
        if (arraylist.isEmpty())
        {
            e1 = null;
        } else
        {
            e1 = b(((List) (arraylist)));
            if (e1 == null)
            {
                throw new a((new StringBuilder("Unsupported audio codec. Contained ")).append(c(arraylist)).toString());
            }
            if (arraylist.size() > 1)
            {
                b.a("VideoTrackExtractor_multiple_audio_tracks", c(arraylist));
                return e1;
            }
        }
        return e1;
    }
}
