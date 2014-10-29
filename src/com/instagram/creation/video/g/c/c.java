// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.g.c;

import android.content.Context;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import com.instagram.common.y.e;
import com.instagram.creation.video.g.a.d;

public final class c
    implements d
{

    private final Context a;

    public c(Context context)
    {
        a = context;
    }

    private static int a(MediaMetadataRetriever mediametadataretriever, int i, int j)
    {
        String s = mediametadataretriever.extractMetadata(i);
        if (e.c(s))
        {
            return j;
        }
        int k;
        try
        {
            k = Integer.parseInt(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            return j;
        }
        return k;
    }

    private static long a(MediaMetadataRetriever mediametadataretriever)
    {
        String s = mediametadataretriever.extractMetadata(9);
        if (e.c(s))
        {
            return 0L;
        }
        long l;
        try
        {
            l = Long.parseLong(s);
        }
        catch (NumberFormatException numberformatexception)
        {
            return 0L;
        }
        return l;
    }

    public final com.instagram.creation.video.g.a.c a(Uri uri)
    {
        int i;
        MediaMetadataRetriever mediametadataretriever;
        i = -1;
        mediametadataretriever = new MediaMetadataRetriever();
        int j;
        mediametadataretriever.setDataSource(a, uri);
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        j = a(mediametadataretriever, 18, -1);
        i = a(mediametadataretriever, 19, -1);
_L1:
        int k = android.os.Build.VERSION.SDK_INT;
        int l;
        l = 0;
        if (k < 17)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        l = a(mediametadataretriever, 24, 0);
        com.instagram.creation.video.g.a.c c1 = new com.instagram.creation.video.g.a.c(a(mediametadataretriever), j, i, l);
        mediametadataretriever.release();
        return c1;
        Exception exception;
        exception;
        mediametadataretriever.release();
        throw exception;
        j = i;
          goto _L1
    }
}
