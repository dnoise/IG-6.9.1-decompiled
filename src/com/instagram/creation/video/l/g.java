// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.l;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Bundle;
import android.provider.DocumentsContract;
import android.support.v4.app.s;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.common.i.c;
import com.instagram.creation.b.a.b;
import com.instagram.creation.video.f.ar;
import com.instagram.creation.video.f.av;
import com.instagram.creation.video.i.a;
import com.instagram.o.e;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.creation.video.l:
//            c

public final class g
{

    private static Bundle a(String s, a a1)
    {
        Bundle bundle = new Bundle();
        bundle.putString("pendingMediaKey", s);
        bundle.putString("ARGUMENT_IMPORT_PATH", a1.d());
        bundle.putLong("ARGUMENT_IMPORT_DURATION_MS", a1.b());
        return bundle;
    }

    private static com.instagram.creation.b.a.a a(String s, long l)
    {
        com.instagram.creation.b.a.a a1 = new com.instagram.creation.b.a.a();
        a1.a(s);
        a1.a(l);
        a1.c(0);
        a1.d(Math.min(15000, (int)l));
        a1.a(0.5F);
        a1.a(-1);
        MediaMetadataRetriever mediametadataretriever;
        try
        {
            a1.b(com.instagram.creation.video.l.c.a(new File(s)));
        }
        catch (IOException ioexception) { }
        mediametadataretriever = new MediaMetadataRetriever();
        mediametadataretriever.setDataSource(s);
        a1.b(Integer.parseInt(mediametadataretriever.extractMetadata(18)), Integer.parseInt(mediametadataretriever.extractMetadata(19)));
        return a1;
    }

    public static b a(Context context, int i)
    {
        b b1 = com.instagram.creation.b.a.b.b(String.valueOf(System.nanoTime()));
        b1.i(com.instagram.creation.video.c.b.a(null, -1, context));
        b1.a(i);
        return b1;
    }

    public static String a(Context context, Uri uri)
    {
        Cursor cursor;
        if (android.os.Build.VERSION.SDK_INT >= 19 && DocumentsContract.isDocumentUri(context, uri) && a(uri))
        {
            String s1 = DocumentsContract.getDocumentId(uri).split(":")[1];
            cursor = context.getContentResolver().query(android.provider.MediaStore.Video.Media.EXTERNAL_CONTENT_URI, new String[] {
                "_data"
            }, "_id=?", new String[] {
                s1
            }, null);
        } else
        {
            cursor = context.getContentResolver().query(uri, null, null, null, null);
        }
        if (cursor == null)
        {
            return uri.getPath();
        }
        cursor.moveToFirst();
        int i = cursor.getColumnIndex("_data");
        if (i < 0)
        {
            return "video_invalid_url";
        } else
        {
            String s = cursor.getString(i);
            cursor.close();
            return s;
        }
    }

    private static void a()
    {
        e.a(az.video_import_unsupported_file_type);
    }

    public static void a(Activity activity)
    {
        Toast.makeText(activity.getApplicationContext(), az.video_import_remote_url, 0).show();
        activity.finish();
    }

    public static void a(s s, String s1, a a1, boolean flag, boolean flag1)
    {
        com.instagram.base.a.a.a a2 = new com.instagram.base.a.a.a(s);
        Bundle bundle = a(s1, a1);
        bundle.putBoolean("directShare", flag1);
        ar.a(bundle, av.a);
        a2.a(new ar(), bundle);
        if (!flag)
        {
            a2.b();
        }
        a2.a();
    }

    private static boolean a(long l)
    {
        return l >= 3000L;
    }

    private static boolean a(Uri uri)
    {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public static boolean a(Bundle bundle)
    {
        return bundle.containsKey("pendingMediaKey") && bundle.containsKey("ARGUMENT_IMPORT_PATH") && bundle.containsKey("ARGUMENT_IMPORT_DURATION_MS");
    }

    public static boolean a(Bundle bundle, b b1)
    {
        String s = bundle.getString("ARGUMENT_IMPORT_PATH");
        long l = bundle.getLong("ARGUMENT_IMPORT_DURATION_MS", -1L);
        com.instagram.creation.b.a.a a1 = a(s, l);
        ArrayList arraylist = new ArrayList();
        arraylist.add(a1);
        b1.b(arraylist);
        b1.a(a1);
        b1.a(0);
        b1.d(a1.k());
        b1.e(a1.l());
        bundle.remove("ARGUMENT_IMPORT_PATH");
        bundle.remove("ARGUMENT_IMPORT_DURATION_MS");
        int i = l != (long)a1.i();
        boolean flag = false;
        if (i > 0)
        {
            flag = true;
        }
        return flag;
    }

    public static boolean a(a a1)
    {
        if (a1.b() < 0L)
        {
            a();
            return false;
        }
        if (!a(a1.b()))
        {
            b();
            return false;
        }
        if (!b(a1.b()))
        {
            com.instagram.common.i.c.b("Import long clip", String.valueOf(a1.b()));
            c();
            return false;
        } else
        {
            return true;
        }
    }

    public static double[] a(double ad[], int i)
    {
        int j;
        double ad1[];
        int k;
        if (i % 2 == 0)
        {
            j = i / 2;
        } else
        {
            j = 1 + i / 2;
        }
        ad1 = new double[j];
        k = 0;
        while (k < i) 
        {
            double d = i;
            double d1 = ad[-1 + ad.length];
            int l = ad.length;
            int i1 = 0;
            while (i1 < l) 
            {
                double d2 = ad[i1];
                double d3 = Math.abs((double)k - d2);
                double d4;
                if (d3 < d)
                {
                    d4 = d3;
                } else
                {
                    d2 = d1;
                    d4 = d;
                }
                i1++;
                d = d4;
                d1 = d2;
            }
            ad1[k / 2] = d1;
            k += 2;
        }
        return ad1;
    }

    private static void b()
    {
        e.a(az.video_import_too_short);
    }

    private static boolean b(long l)
    {
        return l <= 0x927c0L;
    }

    private static void c()
    {
        e.a(az.video_import_too_long);
    }
}
