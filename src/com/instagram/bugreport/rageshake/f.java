// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.bugreport.rageshake;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import com.facebook.az;
import com.instagram.common.e.a;
import com.instagram.o.e;
import java.io.File;
import java.util.ArrayList;

// Referenced classes of package com.instagram.bugreport.rageshake:
//            RageShakeActivity

public final class f extends AsyncTask
{

    private Bitmap a;
    private Activity b;
    private Uri c;
    private Uri d;
    private Uri e;
    private Context f;
    private com.instagram.ui.dialog.f g;

    public f(Bitmap bitmap, Activity activity)
    {
        b = activity;
        f = activity.getApplicationContext();
        a = bitmap;
    }

    private void a(Intent intent)
    {
        ArrayList arraylist = new ArrayList();
        if (d != null)
        {
            arraylist.add(d.getPath());
        }
        if (e != null)
        {
            arraylist.add(e.getPath());
        }
        intent.putStringArrayListExtra("RageShakeActivity.INTENT_EXTRA_OTHER_ATTACHMENT_FILE_PATHS", arraylist);
    }

    private transient Void b()
    {
        c = com.instagram.common.e.a.a(a, new File(f.getCacheDir(), "ig_bugreport.png"));
        d = com.instagram.common.e.a.a(new File(f.getCacheDir(), "logcat.txt"));
        e = com.instagram.common.e.a.b(new File(f.getCacheDir(), "stacktrace-dump.txt"));
        return null;
    }

    private void c()
    {
label0:
        {
            if (b != null)
            {
                a();
                Intent intent = new Intent(f, com/instagram/bugreport/rageshake/RageShakeActivity);
                intent.setFlags(0x10000000);
                Uri uri = c;
                boolean flag = false;
                if (uri != null)
                {
                    intent.putExtra("RageShakeActivity.INTENT_EXTRA_MEDIA_FILE_PATH", c.getPath());
                    flag = true;
                }
                if (d != null || e != null)
                {
                    a(intent);
                    flag = true;
                }
                if (!flag)
                {
                    break label0;
                }
                f.startActivity(intent);
            }
            return;
        }
        com.instagram.o.e.a(az.rageshake_error_save_failed);
    }

    public final void a()
    {
        if (g != null)
        {
            g.dismiss();
        }
        b = null;
    }

    protected final Object doInBackground(Object aobj[])
    {
        return b();
    }

    protected final void onPostExecute(Object obj)
    {
        c();
    }

    protected final void onPreExecute()
    {
        g = new com.instagram.ui.dialog.f(b);
        g.a(b.getString(az.rageshake_wait));
        g.show();
    }
}
