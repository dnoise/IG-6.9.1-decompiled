// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.facebook.az;
import com.instagram.android.creation.activity.MediaCaptureActivity;
import com.instagram.creation.base.e;
import com.instagram.creation.c.a;
import com.instagram.ui.dialog.b;
import java.io.File;

// Referenced classes of package com.instagram.android.activity:
//            e, d

public final class c
{

    public File a;
    private Context b;
    private com.instagram.android.activity.e c;
    private int d;
    private boolean e;

    public c(Activity activity)
    {
        this(((Context) (activity)), (com.instagram.android.activity.e)activity);
    }

    public c(Context context, com.instagram.android.activity.e e1)
    {
        b = context;
        c = e1;
    }

    static com.instagram.android.activity.e a(c c1)
    {
        return c1.c;
    }

    private void a()
    {
        String s = b.getString(az.legacy_camera_capture_options_item_photo);
        String s1 = b.getString(az.legacy_camera_capture_options_item_video);
        String s2 = b.getString(az.legacy_camera_capture_options_item_gallery);
        com.instagram.creation.c.a.d();
        CharSequence acharsequence[] = {
            s, s2
        };
        (new b(b)).a(az.legacy_camera_capture_options_title).a(acharsequence, new d(this, acharsequence, s, s1)).c().show();
    }

    private void a(Uri uri)
    {
        a(uri, 1, ((String) (null)));
    }

    private void a(Uri uri, int i)
    {
        a(uri, i, 10001, null);
    }

    static Context b(c c1)
    {
        return c1.b;
    }

    private void b()
    {
        com.instagram.p.a.g.c();
        a = com.instagram.common.y.a.b(b);
        c.a(a);
    }

    private void c()
    {
        if (a != null && a.isFile())
        {
            Uri uri = Uri.fromFile(a);
            if (!a.delete())
            {
                (new StringBuilder("Failed to delete ")).append(a);
            }
            b.getContentResolver().notifyChange(uri, null);
        }
    }

    static void c(c c1)
    {
        c1.b();
    }

    public final void a(int i, int j, Intent intent)
    {
        if (j != -1)
        {
            c();
            com.instagram.p.a.f.b().a("reason", "backed_out_of_flow").a();
            c.a(i, d);
            return;
        }
        switch (i)
        {
        default:
            return;

        case 10001: 
        case 10004: 
            if (d == 0 || d == 2)
            {
                c();
            }
            c.h_();
            return;

        case 10002: 
            a(com.instagram.creation.base.e.a(intent, a), 0);
            return;

        case 10003: 
            com.instagram.creation.photo.c.a.a(b.getContentResolver(), a);
            a(com.instagram.creation.photo.c.a.a(intent, a), 1);
            return;

        case 10005: 
            a(Uri.fromFile(a));
            return;
        }
    }

    public final void a(Uri uri, int i, int j, String s)
    {
        com.instagram.p.a.j.c();
        d = i;
        com.instagram.creation.photo.crop.a a1 = com.instagram.creation.photo.crop.a.a(b, uri);
        a1.a(d);
        a1.a(e);
        Intent intent = new Intent(b, com/instagram/android/creation/activity/MediaCaptureActivity);
        intent.putExtras(a1.a());
        if (s != null)
        {
            intent.putExtra("caption", s);
        }
        c.a_(intent, j);
    }

    public final void a(Uri uri, int i, String s)
    {
        d = i;
        Intent intent = new Intent(b, com/instagram/android/creation/activity/MediaCaptureActivity);
        intent.putExtra("videoFilePath", uri);
        intent.putExtra("mediaSource", i);
        if (s != null)
        {
            intent.putExtra("caption", s);
        }
        c.a_(intent, 10004);
    }

    public final void a(Bundle bundle)
    {
        if (a != null)
        {
            bundle.putString("tempPhotoFile", a.toString());
        }
        bundle.putBoolean("isDirectShare", e);
        bundle.putInt("mediaSource", d);
    }

    public final void a(boolean flag)
    {
        e = flag;
        com.instagram.l.a.b b1 = com.instagram.l.a.b.a();
        com.instagram.p.a.a();
        com.instagram.common.analytics.b b2 = com.instagram.p.a.a.b();
        b2.a("is_direct_share", e);
        boolean flag1 = b1.f();
        if (!com.instagram.camera.a.a(b.getPackageManager()))
        {
            b2.a("has_built_in_camera", false);
            b();
        } else
        if (!flag1 || android.os.Build.VERSION.SDK_INT <= 8)
        {
            b2.a("advanced_camera_enabled", false);
            a();
        } else
        {
            b2.a("advanced_camera_enabled", true);
            Intent intent = new Intent(b, com/instagram/android/creation/activity/MediaCaptureActivity);
            intent.setFlags(0x10000);
            intent.putExtra("directShare", e);
            c.a_(intent, 10001);
        }
        b2.a();
    }

    public final void b(Bundle bundle)
    {
        if (bundle != null)
        {
            if (bundle.getString("tempPhotoFile") != null)
            {
                a = new File(bundle.getString("tempPhotoFile"));
            }
            e = bundle.getBoolean("isDirectShare", false);
            d = bundle.getInt("mediaSource");
        }
    }
}
