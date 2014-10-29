// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.d;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.client.HttpClient;
import ch.boye.httpclientandroidlib.client.methods.HttpGet;
import ch.boye.httpclientandroidlib.util.EntityUtils;
import com.facebook.au;
import com.facebook.az;
import com.instagram.android.login.fragment.an;
import com.instagram.o.c.a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import org.json.JSONObject;

// Referenced classes of package com.instagram.android.d:
//            a, d, c

public final class b extends AsyncTask
{

    final com.instagram.android.d.a a;
    private final int b;
    private Uri c;
    private boolean d;

    public b(com.instagram.android.d.a a1, int i, Uri uri)
    {
        a = a1;
        super();
        b = i;
        c = uri;
        d = false;
    }

    private transient Bitmap a()
    {
        Bitmap bitmap;
        if (b())
        {
            d = true;
            return null;
        }
        Bitmap bitmap1;
        try
        {
            bitmap = com.instagram.android.d.d.a(com.instagram.android.d.a.a(a).n(), b, c);
            bitmap1 = com.instagram.o.c.a.a(bitmap);
        }
        catch (Exception exception)
        {
            com.facebook.e.a.a.a("AddAvatarHelper", "An error occurred fetching your image", exception);
            return null;
        }
        if (bitmap == bitmap1)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        bitmap.recycle();
        return bitmap1;
        return bitmap;
    }

    private void a(Bitmap bitmap)
    {
        if (com.instagram.android.d.a.a(a) != null)
        {
            if (bitmap != null)
            {
                com.instagram.android.d.a.a(a, bitmap);
                com.instagram.android.d.a.a(a).a(bitmap);
            } else
            if (d)
            {
                com.instagram.android.d.a.a(a, null);
                com.instagram.android.d.a.a(a).a(com.instagram.android.d.a.a(a).n().getResources().getDrawable(au.profile_anonymous_user));
            } else
            {
                c();
            }
        }
        super.onPostExecute(bitmap);
    }

    private boolean b()
    {
        if (b == 0) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        HttpEntity httpentity;
        new com.instagram.api.f.a(com.instagram.android.d.a.a(a).n());
        ch.boye.httpclientandroidlib.impl.client.AbstractHttpClient abstracthttpclient = com.instagram.api.f.a.b();
        HttpResponse httpresponse;
        ByteArrayOutputStream bytearrayoutputstream;
        boolean flag;
        try
        {
            httpresponse = abstracthttpclient.execute(new HttpGet((new StringBuilder("https://graph.facebook.com/me?fields=picture&method=GET&access_token=")).append(com.instagram.share.b.a.a().c()).toString()));
        }
        catch (IOException ioexception)
        {
            com.facebook.e.a.a.a("AddAvatarHelper", "Unable to fetch avatar info", ioexception);
            return false;
        }
        httpentity = null;
        httpentity = httpresponse.getEntity();
        bytearrayoutputstream = new ByteArrayOutputStream((int)httpentity.getContentLength());
        httpentity.writeTo(bytearrayoutputstream);
        if (httpentity == null)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        EntityUtils.consume(httpentity);
        flag = (new JSONObject(new String(bytearrayoutputstream.toByteArray()))).getJSONObject("picture").getJSONObject("data").getBoolean("is_silhouette");
        if (!flag) goto _L1; else goto _L3
_L3:
        return true;
        Exception exception;
        exception;
        if (httpentity == null)
        {
            break MISSING_BLOCK_LABEL_181;
        }
        EntityUtils.consume(httpentity);
        throw exception;
        Exception exception1;
        exception1;
        com.facebook.e.a.a.a("AddAvatarHelper", "Error reading FB avatar info", exception1);
        return false;
    }

    private void c()
    {
        (new com.instagram.ui.dialog.b(com.instagram.android.d.a.a(a).l())).a(az.error).b(az.profile_picture_download_failed).b(az.dismiss, new c(this)).c().show();
    }

    protected final Object doInBackground(Object aobj[])
    {
        return a();
    }

    protected final void onPostExecute(Object obj)
    {
        a((Bitmap)obj);
    }

    protected final void onPreExecute()
    {
        com.instagram.android.d.a.a(a);
        super.onPreExecute();
    }
}
