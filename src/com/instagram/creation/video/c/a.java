// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.c;

import android.media.MediaMetadataRetriever;
import java.io.File;

public final class a
{

    public static long a(MediaMetadataRetriever mediametadataretriever)
    {
        String s = mediametadataretriever.extractMetadata(9);
        if (s != null)
        {
            return Long.valueOf(s).longValue();
        } else
        {
            return 0L;
        }
    }

    public static long a(File file)
    {
        MediaMetadataRetriever mediametadataretriever = new MediaMetadataRetriever();
        try
        {
            mediametadataretriever.setDataSource(file.getAbsolutePath());
        }
        catch (Exception exception)
        {
            throw exception;
        }
        return a(mediametadataretriever);
    }

    public static long a(String s)
    {
        return a(new File(s));
    }
}
