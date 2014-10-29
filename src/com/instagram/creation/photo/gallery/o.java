// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.gallery;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import com.facebook.e.a.a;
import java.io.File;
import java.io.FileNotFoundException;

// Referenced classes of package com.instagram.creation.photo.gallery:
//            c, p, d

final class o
    implements c
{

    private final Uri a;
    private final d b;
    private final ContentResolver c;

    o(d d1, ContentResolver contentresolver, Uri uri)
    {
        b = d1;
        c = contentresolver;
        a = uri;
    }

    private ParcelFileDescriptor h()
    {
        ParcelFileDescriptor parcelfiledescriptor;
        try
        {
            if (a.getScheme().equals("file"))
            {
                return ParcelFileDescriptor.open(new File(a.getPath()), 0x10000000);
            }
            parcelfiledescriptor = c.openFileDescriptor(a, "r");
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            return null;
        }
        return parcelfiledescriptor;
    }

    private android.graphics.BitmapFactory.Options i()
    {
        ParcelFileDescriptor parcelfiledescriptor;
        parcelfiledescriptor = h();
        if (parcelfiledescriptor == null)
        {
            return null;
        }
        android.graphics.BitmapFactory.Options options;
        options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(parcelfiledescriptor.getFileDescriptor(), null, options);
        com.instagram.creation.photo.gallery.p.a(parcelfiledescriptor);
        return options;
        Exception exception;
        exception;
        com.instagram.creation.photo.gallery.p.a(parcelfiledescriptor);
        throw exception;
    }

    public final Bitmap a(int j)
    {
        Bitmap bitmap;
        try
        {
            bitmap = com.instagram.creation.photo.gallery.p.a(-1, j, h(), true);
        }
        catch (Exception exception)
        {
            com.facebook.e.a.a.a("UriImage", "got exception decoding bitmap ", exception);
            return null;
        }
        return bitmap;
    }

    public final String a()
    {
        return a.getPath();
    }

    public final long b()
    {
        return 0L;
    }

    public final int c()
    {
        return 0;
    }

    public final String d()
    {
        android.graphics.BitmapFactory.Options options = i();
        if (options != null && options.outMimeType != null)
        {
            return options.outMimeType;
        } else
        {
            return "";
        }
    }

    public final int e()
    {
        android.graphics.BitmapFactory.Options options = i();
        if (options != null)
        {
            return options.outWidth;
        } else
        {
            return 0;
        }
    }

    public final int f()
    {
        android.graphics.BitmapFactory.Options options = i();
        if (options != null)
        {
            return options.outHeight;
        } else
        {
            return 0;
        }
    }

    public final boolean g()
    {
        return "image/jpeg".equals(d());
    }
}
