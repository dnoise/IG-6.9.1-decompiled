// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.c;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import com.instagram.camera.h;
import java.io.File;
import java.io.IOException;

// Referenced classes of package com.instagram.creation.photo.c:
//            g

public final class a
{

    private static Intent a(File file, String s)
    {
        Intent intent;
        try
        {
            file.getParentFile().mkdirs();
            file.createNewFile();
            Runtime.getRuntime().exec((new StringBuilder("chmod 0666")).append(file.getPath()).toString());
        }
        catch (IOException ioexception) { }
        intent = new Intent(s);
        intent.putExtra("output", Uri.fromFile(file));
        return intent;
    }

    public static Uri a(Intent intent, File file)
    {
        Uri uri = Uri.fromFile(file);
        if (uri == null)
        {
            uri = intent.getData();
        }
        return uri;
    }

    public static File a(String s)
    {
        return new File(g.a(h.a(System.currentTimeMillis()), s));
    }

    public static void a(Activity activity, int i, File file, String s)
    {
        activity.startActivityForResult(a(file, s), i);
    }

    public static void a(ContentResolver contentresolver, File file)
    {
        String s = file.getName();
        String s1 = TextUtils.substring(s, 0, -3 + s.length());
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("title", s1);
        contentvalues.put("_display_name", s);
        contentvalues.put("datetaken", Long.valueOf(System.currentTimeMillis()));
        contentvalues.put("mime_type", "image/jpeg");
        contentvalues.put("_data", file.getPath());
        try
        {
            contentresolver.insert(android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentvalues);
            return;
        }
        catch (Exception exception)
        {
            com.facebook.e.a.a.a("BuiltInCameraUtil", "Unable to insert media into media store");
        }
    }

    public static void a(Fragment fragment, int i, File file, String s)
    {
        fragment.a(a(file, s), i);
    }
}
