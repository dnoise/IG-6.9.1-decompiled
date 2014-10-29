// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.d;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.client.HttpClient;
import ch.boye.httpclientandroidlib.client.methods.HttpGet;
import ch.boye.httpclientandroidlib.util.EntityUtils;
import com.facebook.b.b;
import com.instagram.api.f.a;
import com.instagram.creation.photo.gallery.ImageManager;
import com.instagram.creation.photo.gallery.c;
import com.instagram.share.f.g;

public final class d
{

    private static Bitmap a(ContentResolver contentresolver, Uri uri)
    {
        c c1 = ImageManager.a(contentresolver, uri).a(uri);
        int i = (int)(0.37D * (double)Runtime.getRuntime().maxMemory()) / 4;
        System.gc();
        Bitmap bitmap = c1.a(i);
        (new StringBuilder("Rotated image by: ")).append(c1.c());
        Integer.valueOf(bitmap.getWidth());
        Integer.valueOf(bitmap.getHeight());
        int j = Math.min(bitmap.getWidth(), bitmap.getHeight());
        Matrix matrix = new Matrix();
        Rect rect = a(j, ((Integer) (null)), bitmap.getWidth());
        int k = Math.max(0, rect.width());
        RectF rectf = new RectF(0.0F, 0.0F, k, k);
        matrix.mapRect(rectf);
        Float.valueOf(rectf.width());
        Float.valueOf(rectf.height());
        System.gc();
        Bitmap bitmap1 = Bitmap.createBitmap(k, k, android.graphics.Bitmap.Config.ARGB_8888);
        Rect rect1 = new Rect(0, 0, k, k);
        (new Canvas(bitmap1)).drawBitmap(bitmap, rect, rect1, null);
        bitmap.recycle();
        return bitmap1;
    }

    public static Bitmap a(Context context, int i, Uri uri)
    {
        HttpEntity httpentity = null;
        if (i != 0) goto _L2; else goto _L1
_L1:
        Bitmap bitmap4;
        new a(context);
        httpentity = com.instagram.api.f.a.b().execute(new HttpGet((new StringBuilder("https://graph.facebook.com/me/picture?type=large&method=GET&access_token=")).append(com.instagram.share.b.a.a().c()).toString())).getEntity();
        bitmap4 = BitmapFactory.decodeStream(httpentity.getContent());
        Bitmap bitmap;
        if (httpentity != null)
        {
            EntityUtils.consume(httpentity);
            bitmap = bitmap4;
        } else
        {
            bitmap = bitmap4;
        }
_L5:
        HttpEntity httpentity1;
        if (bitmap != null)
        {
            float f = (float)bitmap.getWidth() / (float)bitmap.getHeight();
            Bitmap bitmap1;
            Bitmap bitmap2;
            Exception exception;
            String s;
            Bitmap bitmap3;
            Exception exception1;
            if ((double)f != 1.0D)
            {
                bitmap1 = Bitmap.createScaledBitmap(bitmap, (int)(f * 150F), 150, true);
                bitmap.recycle();
            } else
            {
                bitmap1 = bitmap;
            }
            bitmap2 = com.instagram.o.c.a.a(bitmap1);
            if (bitmap1 != bitmap2)
            {
                bitmap1.recycle();
                bitmap1 = bitmap2;
            }
            return bitmap1;
        } else
        {
            return bitmap;
        }
        exception1;
        if (httpentity != null)
        {
            EntityUtils.consume(httpentity);
        }
        throw exception1;
_L2:
        if (i != 1) goto _L4; else goto _L3
_L3:
        s = g.a(context, com.instagram.share.f.a.b().g());
        httpentity = null;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_307;
        }
        new a(context);
        httpentity = com.instagram.api.f.a.b().execute(new HttpGet(s)).getEntity();
        bitmap3 = BitmapFactory.decodeStream(httpentity.getContent());
        httpentity1 = httpentity;
        bitmap = bitmap3;
_L6:
        if (httpentity1 != null)
        {
            EntityUtils.consume(httpentity1);
        }
          goto _L5
        exception;
        if (httpentity != null)
        {
            EntityUtils.consume(httpentity);
        }
        throw exception;
_L4:
        bitmap = null;
        if (i == 2)
        {
            bitmap = a(context.getContentResolver(), uri);
        }
          goto _L5
        httpentity1 = null;
        bitmap = null;
          goto _L6
    }

    private static Rect a(int i, Integer integer, int j)
    {
        return new Rect(0, 0, i, i);
    }
}
