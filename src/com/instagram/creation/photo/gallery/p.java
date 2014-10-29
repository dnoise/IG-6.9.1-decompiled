// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.gallery;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.facebook.e.a.a;
import java.io.Closeable;
import java.io.IOException;

public final class p
{

    private static int a(android.graphics.BitmapFactory.Options options, int i, int j)
    {
        int k = b(options, i, j);
        int l;
        if (k <= 8)
        {
            for (l = 1; l < k; l <<= 1) { }
        } else
        {
            l = 8 * ((k + 7) / 8);
        }
        return l;
    }

    private static Bitmap a(int i, int j, Uri uri, ContentResolver contentresolver, ParcelFileDescriptor parcelfiledescriptor, android.graphics.BitmapFactory.Options options)
    {
        if (parcelfiledescriptor != null)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        ParcelFileDescriptor parcelfiledescriptor1 = a(uri, contentresolver);
        parcelfiledescriptor = parcelfiledescriptor1;
        if (parcelfiledescriptor == null)
        {
            a(parcelfiledescriptor);
            return null;
        }
        if (options != null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        options = new android.graphics.BitmapFactory.Options();
        java.io.FileDescriptor filedescriptor;
        int k;
        filedescriptor = parcelfiledescriptor.getFileDescriptor();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(filedescriptor, null, options);
        if (options.mCancel || options.outWidth == -1)
        {
            break MISSING_BLOCK_LABEL_94;
        }
        k = options.outHeight;
        if (k != -1)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        a(parcelfiledescriptor);
        return null;
        Bitmap bitmap;
        options.inSampleSize = a(options, i, j);
        options.inJustDecodeBounds = false;
        options.inDither = false;
        options.inPreferredConfig = android.graphics.Bitmap.Config.ARGB_8888;
        bitmap = BitmapFactory.decodeFileDescriptor(filedescriptor, null, options);
        a(parcelfiledescriptor);
        return bitmap;
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
        com.facebook.e.a.a.a("Util", "Got oom exception ", outofmemoryerror);
        a(parcelfiledescriptor);
        return null;
        Exception exception;
        exception;
        a(parcelfiledescriptor);
        throw exception;
    }

    public static Bitmap a(int i, int j, Uri uri, ContentResolver contentresolver, boolean flag)
    {
        ParcelFileDescriptor parcelfiledescriptor1 = contentresolver.openFileDescriptor(uri, "r");
        ParcelFileDescriptor parcelfiledescriptor = parcelfiledescriptor1;
        Bitmap bitmap = a(-1, j, uri, contentresolver, parcelfiledescriptor, a());
        a(parcelfiledescriptor);
        return bitmap;
        IOException ioexception;
        ioexception;
        parcelfiledescriptor = null;
_L4:
        a(parcelfiledescriptor);
        return null;
        Exception exception;
        exception;
        parcelfiledescriptor = null;
_L2:
        a(parcelfiledescriptor);
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
        IOException ioexception1;
        ioexception1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static Bitmap a(int i, int j, ParcelFileDescriptor parcelfiledescriptor, boolean flag)
    {
        return a(-1, j, null, null, parcelfiledescriptor, a());
    }

    public static Bitmap a(Bitmap bitmap, int i)
    {
        if (i == 0 || bitmap == null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        Matrix matrix = new Matrix();
        matrix.setRotate(i, (float)bitmap.getWidth() / 2.0F, (float)bitmap.getHeight() / 2.0F);
        Bitmap bitmap1;
        try
        {
            int j = bitmap.getWidth();
            int k = bitmap.getHeight();
            bitmap1 = Bitmap.createBitmap(bitmap, 0, 0, j, k, matrix, true);
        }
        catch (OutOfMemoryError outofmemoryerror)
        {
            return bitmap;
        }
        if (bitmap == bitmap1)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        bitmap.recycle();
        bitmap = bitmap1;
        return bitmap;
    }

    private static android.graphics.BitmapFactory.Options a()
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inPurgeable = true;
        options.inInputShareable = true;
        return options;
    }

    private static ParcelFileDescriptor a(Uri uri, ContentResolver contentresolver)
    {
        ParcelFileDescriptor parcelfiledescriptor;
        try
        {
            parcelfiledescriptor = contentresolver.openFileDescriptor(uri, "r");
        }
        catch (IOException ioexception)
        {
            return null;
        }
        return parcelfiledescriptor;
    }

    public static void a(ParcelFileDescriptor parcelfiledescriptor)
    {
        if (parcelfiledescriptor == null)
        {
            return;
        }
        try
        {
            parcelfiledescriptor.close();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public static void a(Closeable closeable)
    {
        if (closeable == null)
        {
            return;
        }
        try
        {
            closeable.close();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public static boolean a(String s, String s1)
    {
        return s == s1 || s.equals(s1);
    }

    private static int b(android.graphics.BitmapFactory.Options options, int i, int j)
    {
        double d = options.outWidth;
        double d1 = options.outHeight;
        int k;
        int l;
        if (j == -1)
        {
            k = 1;
        } else
        {
            k = (int)Math.ceil(Math.sqrt((d * d1) / (double)j));
        }
        if (i == -1)
        {
            l = 128;
        } else
        {
            l = (int)Math.min(Math.floor(d / (double)i), Math.floor(d1 / (double)i));
        }
        if (l >= k)
        {
            if (j == -1 && i == -1)
            {
                return 1;
            }
            if (i != -1)
            {
                return l;
            }
        }
        return k;
    }
}
