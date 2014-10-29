// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.gallery;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.FileNotFoundException;

// Referenced classes of package com.instagram.creation.photo.gallery:
//            c, p, b, e

public abstract class a
    implements c
{

    protected ContentResolver a;
    protected Uri b;
    protected long c;
    protected String d;
    protected long e;
    protected final int f;
    protected String g;
    protected b h;
    private final long i;
    private String j;
    private int k;
    private int l;

    protected a(b b1, ContentResolver contentresolver, long l1, int i1, Uri uri, String s, 
            long l2, String s1, long l3, String s2)
    {
        k = -1;
        l = -1;
        h = b1;
        a = contentresolver;
        c = l1;
        f = i1;
        b = uri;
        d = s;
        e = l2;
        g = s1;
        i = l3;
        j = s2;
    }

    private void h()
    {
        ParcelFileDescriptor parcelfiledescriptor = null;
        ParcelFileDescriptor parcelfiledescriptor2 = a.openFileDescriptor(b, "r");
        parcelfiledescriptor = parcelfiledescriptor2;
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFileDescriptor(parcelfiledescriptor.getFileDescriptor(), null, options);
        k = options.outWidth;
        l = options.outHeight;
        p.a(parcelfiledescriptor);
        return;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        k = 0;
        l = 0;
        p.a(parcelfiledescriptor);
        return;
        Exception exception;
        exception;
        ParcelFileDescriptor parcelfiledescriptor1;
        Exception exception1;
        parcelfiledescriptor1 = null;
        exception1 = exception;
_L2:
        p.a(parcelfiledescriptor1);
        throw exception1;
        Exception exception2;
        exception2;
        parcelfiledescriptor1 = parcelfiledescriptor;
        exception1 = exception2;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final Bitmap a(int i1)
    {
        Uri uri = h.a(c);
        Bitmap bitmap;
        if (uri == null)
        {
            bitmap = null;
        } else
        {
            bitmap = p.a(-1, i1, uri, a, true);
            if (bitmap != null)
            {
                return p.a(bitmap, c());
            }
        }
        return bitmap;
    }

    public final String a()
    {
        return d;
    }

    public final long b()
    {
        return i;
    }

    public int c()
    {
        return 0;
    }

    public final String d()
    {
        return g;
    }

    public final int e()
    {
        if (k == -1)
        {
            h();
        }
        return k;
    }

    public boolean equals(Object obj)
    {
        if (obj == null || !(obj instanceof e))
        {
            return false;
        } else
        {
            return b.equals(((e)obj).b);
        }
    }

    public final int f()
    {
        if (l == -1)
        {
            h();
        }
        return l;
    }

    public final boolean g()
    {
        return "image/jpeg".equalsIgnoreCase(g);
    }

    public int hashCode()
    {
        return b.hashCode();
    }

    public String toString()
    {
        return b.toString();
    }
}
