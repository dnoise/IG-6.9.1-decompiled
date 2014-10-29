// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.base;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.support.v4.app.Fragment;
import com.facebook.az;
import java.io.File;

public final class e
{

    private static Intent a(File file, boolean flag)
    {
        Intent intent = new Intent("android.intent.action.GET_CONTENT", null);
        String s;
        if (flag)
        {
            s = "image/*";
        } else
        {
            s = "video/*";
        }
        intent.setType(s);
        if (file != null)
        {
            intent.putExtra("output", Uri.fromFile(file));
            intent.putExtra("outputFormat", android.graphics.Bitmap.CompressFormat.JPEG.name());
        }
        return intent;
    }

    public static Uri a(Intent intent, File file)
    {
        Uri uri = intent.getData();
        if (file != null && uri == null || uri.toString().length() == 0)
        {
            uri = Uri.fromFile(file);
        }
        return uri;
    }

    public static void a(Activity activity, int i, File file)
    {
        activity.startActivityForResult(Intent.createChooser(a(file, true), activity.getResources().getString(az.capture_source)), 10002);
    }

    public static void a(Fragment fragment)
    {
        fragment.a(Intent.createChooser(a(((File) (null)), false), fragment.o().getString(az.capture_source)), 0);
    }

    public static void a(Fragment fragment, int i, File file)
    {
        fragment.a(Intent.createChooser(a(file, true), fragment.o().getString(az.capture_source)), i);
    }
}
