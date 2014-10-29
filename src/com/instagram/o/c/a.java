// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o.c;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;

public final class a
{

    public static Bitmap a(Bitmap bitmap)
    {
        int i = bitmap.getWidth();
        int j = bitmap.getHeight();
        if (i == j)
        {
            return bitmap;
        }
        int k = Math.min(i, j);
        Rect rect;
        Rect rect1;
        Bitmap bitmap1;
        if (i > j)
        {
            int i1 = (i - j) / 2;
            rect = new Rect(i1, 0, k + i1, k);
        } else
        {
            int l = (j - i) / 2;
            rect = new Rect(0, l, k, k + l);
        }
        rect1 = new Rect(0, 0, k, k);
        bitmap1 = Bitmap.createBitmap(k, k, bitmap.getConfig());
        (new Canvas(bitmap1)).drawBitmap(bitmap, rect, rect1, null);
        return bitmap1;
    }

    public static Bitmap a(Bitmap bitmap, int i, int j, int k, boolean flag)
    {
        Bitmap bitmap1 = Bitmap.createBitmap(i, j, bitmap.getConfig());
        (new Canvas(bitmap1)).drawBitmap(bitmap, a(bitmap.getWidth(), bitmap.getHeight(), i, j, k, flag), null);
        return bitmap1;
    }

    public static Bitmap a(Bitmap bitmap, float af[])
    {
        Bitmap bitmap1 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap1);
        RectF rectf = new RectF(0.0F, 0.0F, bitmap.getWidth(), bitmap.getHeight());
        BitmapShader bitmapshader = new BitmapShader(bitmap, android.graphics.Shader.TileMode.CLAMP, android.graphics.Shader.TileMode.CLAMP);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setShader(bitmapshader);
        Path path = new Path();
        path.addRoundRect(rectf, af, android.graphics.Path.Direction.CW);
        canvas.drawPath(path, paint);
        return bitmap1;
    }

    public static Bitmap a(String s, int i, int j)
    {
        int k = b(s, i, j);
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inSampleSize = Math.max(k, 1);
        options.inPreferredConfig = android.graphics.Bitmap.Config.ARGB_8888;
        Bitmap bitmap = BitmapFactory.decodeFile(s, options);
        if (bitmap != null && Math.max(Math.min((float)i / (float)bitmap.getWidth(), (float)j / (float)bitmap.getHeight()), Math.min((float)j / (float)bitmap.getWidth(), (float)i / (float)bitmap.getHeight())) < 1.0F)
        {
            Bitmap bitmap1 = Bitmap.createScaledBitmap(bitmap, i, j, true);
            if (bitmap1 != bitmap)
            {
                bitmap.recycle();
            }
            return bitmap1;
        } else
        {
            return bitmap;
        }
    }

    private static Matrix a(int i, int j, int k, int l, int i1, boolean flag)
    {
        Matrix matrix = new Matrix();
        RectF rectf = new RectF(0.0F, 0.0F, i, j);
        if (i1 % 360 != 0)
        {
            matrix.setRotate(i1);
            matrix.mapRect(rectf);
        }
        boolean flag1;
        int j1;
        RectF rectf1;
        if (i1 % 180 == 90)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1)
        {
            j1 = j;
        } else
        {
            j1 = i;
        }
        if (!flag1)
        {
            i = j;
        }
        if (j1 * l > k * i)
        {
            rectf1 = new RectF(-100000F, 0.0F, 100000F + (float)k, l);
        } else
        {
            rectf1 = new RectF(0.0F, -100000F, k, 100000F + (float)l);
        }
        matrix.setRectToRect(rectf, rectf1, android.graphics.Matrix.ScaleToFit.CENTER);
        if (i1 % 360 != 0)
        {
            matrix.preRotate(i1);
        }
        if (flag)
        {
            matrix.postScale(-1F, 1.0F);
            matrix.postTranslate(k, 0.0F);
        }
        return matrix;
    }

    private static Rect a(String s)
    {
        Rect rect = new Rect();
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(s, options);
        rect.right = options.outWidth;
        rect.bottom = options.outHeight;
        return rect;
    }

    public static int b(String s, int i, int j)
    {
        Rect rect = a(s);
        return Math.min(Math.max(rect.width() / i, rect.height() / j), Math.max(rect.width() / j, rect.height() / i));
    }
}
