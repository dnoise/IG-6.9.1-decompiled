// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import android.content.ContentResolver;
import android.content.Context;
import android.media.ExifInterface;
import android.net.Uri;
import com.instagram.common.q.a;
import com.instagram.creation.photo.c.b;
import com.instagram.creation.photo.gallery.ImageManager;
import com.instagram.creation.photo.gallery.c;
import com.instagram.creation.photo.gallery.d;
import java.io.FileNotFoundException;
import java.io.IOException;

// Referenced classes of package com.instagram.creation.photo.crop:
//            x

class w extends a
{

    private static final Class n = com/instagram/creation/photo/crop/w;
    private final Uri o;

    w(Context context, Uri uri)
    {
        super(context);
        o = uri;
    }

    private static int a(ExifInterface exifinterface)
    {
        switch (exifinterface.getAttributeInt("Orientation", 1))
        {
        case 4: // '\004'
        case 5: // '\005'
        case 7: // '\007'
        default:
            return 0;

        case 6: // '\006'
            return 90;

        case 3: // '\003'
            return 180;

        case 8: // '\b'
            return 270;
        }
    }

    private static Double a(String s)
    {
        String as[] = s.split(",", 3);
        String as1[] = as[0].split("/", 2);
        Double double1 = Double.valueOf(as1[0]);
        Double double2 = Double.valueOf(as1[1]);
        Double double3 = Double.valueOf(double1.doubleValue() / double2.doubleValue());
        String as2[] = as[1].split("/", 2);
        Double double4 = Double.valueOf(as2[0]);
        Double double5 = Double.valueOf(as2[1]);
        Double double6 = Double.valueOf(double4.doubleValue() / double5.doubleValue());
        String as3[] = as[2].split("/", 2);
        Double double7 = Double.valueOf(as3[0]);
        Double double8 = Double.valueOf(as3[1]);
        Double double9 = Double.valueOf(double7.doubleValue() / double8.doubleValue());
        return Double.valueOf(double3.doubleValue() + double6.doubleValue() / 60D + double9.doubleValue() / 3600D);
    }

    private void a(b b1, String s)
    {
        Double adouble[];
        try
        {
            ExifInterface exifinterface = new ExifInterface(s);
            b1.a(a(exifinterface));
            adouble = b(exifinterface);
        }
        catch (IOException ioexception)
        {
            com.facebook.e.a.a.a(n, "Exception caught reading exif data", ioexception);
            return;
        }
        if (adouble == null)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        b1.a(adouble[0]);
        b1.b(adouble[1]);
    }

    private static Double[] b(ExifInterface exifinterface)
    {
        String s2;
        Double adouble[];
label0:
        {
            String s = exifinterface.getAttribute("GPSLatitude");
            String s1 = exifinterface.getAttribute("GPSLatitudeRef");
            s2 = exifinterface.getAttribute("GPSLongitude");
            String s3 = exifinterface.getAttribute("GPSLongitudeRef");
            adouble = null;
            if (s != null)
            {
                adouble = null;
                if (s1 != null)
                {
                    adouble = null;
                    if (s2 != null)
                    {
                        adouble = null;
                        if (s3 != null)
                        {
                            adouble = new Double[2];
                            if (s1.equals("N"))
                            {
                                adouble[0] = a(s);
                            } else
                            {
                                adouble[0] = Double.valueOf(0.0D - a(s).doubleValue());
                            }
                            if (!s3.equals("E"))
                            {
                                break label0;
                            }
                            adouble[1] = a(s2);
                        }
                    }
                }
            }
            return adouble;
        }
        adouble[1] = Double.valueOf(0.0D - a(s2).doubleValue());
        return adouble;
    }

    private x u()
    {
        d d1;
        ContentResolver contentresolver;
        d1 = null;
        contentresolver = f().getContentResolver();
        java.io.InputStream inputstream = contentresolver.openInputStream(o);
        Object obj = inputstream;
        java.io.File file = com.instagram.common.y.a.b(f());
        if (com.instagram.common.y.a.a(((java.io.InputStream) (obj)), file)) goto _L2; else goto _L1
_L1:
        x x1 = new x(this, null, null, null);
        com.instagram.common.l.c.a.a(((java.io.Closeable) (obj)));
_L4:
        return x1;
_L2:
        Uri uri;
        d d3;
        uri = Uri.fromFile(file);
        d3 = ImageManager.a(contentresolver, uri);
        d d2 = d3;
        c c1 = d2.a(uri);
        android.graphics.Bitmap bitmap;
        bitmap = null;
        if (c1 == null)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        bitmap = c1.a((int)(0.080000000000000002D * (double)Runtime.getRuntime().maxMemory()) / 4);
        b b1 = new b();
        a(b1, uri.getPath());
        x1 = new x(this, c1, bitmap, b1);
        com.instagram.common.l.c.a.a(((java.io.Closeable) (obj)));
        if (d2 == null) goto _L4; else goto _L3
_L3:
        d2.a();
        return x1;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        Object obj1 = null;
_L10:
        x1 = new x(this, null, null, null);
        com.instagram.common.l.c.a.a(((java.io.Closeable) (obj1)));
        if (d1 == null) goto _L4; else goto _L5
_L5:
        d1.a();
        return x1;
        SecurityException securityexception;
        securityexception;
        d2 = null;
        obj = null;
_L9:
        x1 = new x(this, null, null, null);
        com.instagram.common.l.c.a.a(((java.io.Closeable) (obj)));
        if (d2 == null) goto _L4; else goto _L6
_L6:
        d2.a();
        return x1;
        Exception exception;
        exception;
        d2 = null;
        obj = null;
_L8:
        com.instagram.common.l.c.a.a(((java.io.Closeable) (obj)));
        if (d2 != null)
        {
            d2.a();
        }
        throw exception;
        exception;
        d2 = null;
        continue; /* Loop/switch isn't completed */
        exception;
        continue; /* Loop/switch isn't completed */
        exception;
        obj = obj1;
        d2 = d1;
        if (true) goto _L8; else goto _L7
_L7:
        SecurityException securityexception1;
        securityexception1;
        d2 = null;
          goto _L9
        SecurityException securityexception2;
        securityexception2;
          goto _L9
        FileNotFoundException filenotfoundexception1;
        filenotfoundexception1;
        obj1 = obj;
        d1 = null;
          goto _L10
        FileNotFoundException filenotfoundexception2;
        filenotfoundexception2;
        d1 = d2;
        obj1 = obj;
          goto _L10
    }

    public final Object d()
    {
        return u();
    }

}
