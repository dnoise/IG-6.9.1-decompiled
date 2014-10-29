// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.a;

import android.content.Context;
import android.os.Environment;
import com.instagram.common.y.e;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class a
{

    private static final File a;

    public static String a()
    {
        if (!a.exists() && !a.mkdirs())
        {
            return null;
        } else
        {
            return a(a, "IMG_", ".jpg");
        }
    }

    public static String a(Context context)
    {
        return (new File(context.getFilesDir(), (new StringBuilder("pending_media_")).append(System.currentTimeMillis()).append(".jpg").toString())).getAbsolutePath();
    }

    private static String a(File file, String s, String s1)
    {
        return (new File(file, e.a("%s%s%s", new Object[] {
            s, (new SimpleDateFormat("yyyyMMdd_HHmmss")).format(new Date()), s1
        }))).getAbsolutePath();
    }

    static 
    {
        a = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "Instagram");
    }
}
