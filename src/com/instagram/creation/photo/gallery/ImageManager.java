// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.gallery;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.location.Location;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Environment;
import com.facebook.e.a.a;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.instagram.creation.photo.gallery:
//            k, l, n, f, 
//            b, g, d, p

public final class ImageManager
{

    private static final Uri a;

    public static int a(String s)
    {
        ExifInterface exifinterface;
        int i;
        try
        {
            exifinterface = new ExifInterface(s);
        }
        catch (IOException ioexception)
        {
            com.facebook.e.a.a.a("ImageManager", "cannot read exif", ioexception);
            exifinterface = null;
        }
        if (exifinterface == null) goto _L2; else goto _L1
_L1:
        i = exifinterface.getAttributeInt("Orientation", -1);
        if (i == -1) goto _L2; else goto _L3
_L3:
        i;
        JVM INSTR tableswitch 3 8: default 64
    //                   3 83
    //                   4 64
    //                   5 64
    //                   6 80
    //                   7 64
    //                   8 87;
           goto _L2 _L4 _L2 _L2 _L5 _L2 _L6
_L2:
        return 0;
_L5:
        return 90;
_L4:
        return 180;
_L6:
        return 270;
    }

    public static Uri a(ContentResolver contentresolver, String s, long l1, Location location, String s1, String s2, int ai[])
    {
        String s3 = (new StringBuilder()).append(s1).append("/").append(s2).toString();
        ContentValues contentvalues = new ContentValues(7);
        contentvalues.put("title", s);
        contentvalues.put("_display_name", s2);
        contentvalues.put("datetaken", Long.valueOf(l1));
        contentvalues.put("mime_type", "image/jpeg");
        contentvalues.put("orientation", Integer.valueOf(ai[0]));
        contentvalues.put("_data", s3);
        if (location != null)
        {
            contentvalues.put("latitude", Double.valueOf(location.getLatitude()));
            contentvalues.put("longitude", Double.valueOf(location.getLongitude()));
        }
        return contentresolver.insert(a, contentvalues);
    }

    private static ImageListParam a(Uri uri)
    {
        ImageListParam imagelistparam = new ImageListParam();
        imagelistparam.e = uri;
        return imagelistparam;
    }

    private static ImageListParam a(k k1, int i, int j, String s)
    {
        ImageListParam imagelistparam = new ImageListParam();
        imagelistparam.a = k1;
        imagelistparam.b = i;
        imagelistparam.c = j;
        imagelistparam.d = s;
        return imagelistparam;
    }

    public static d a(ContentResolver contentresolver, Uri uri)
    {
        String s;
        if (uri != null)
        {
            s = uri.toString();
        } else
        {
            s = "";
        }
        if (s.startsWith("content://drm"))
        {
            return a(contentresolver, k.d, 2, 1, null);
        }
        if (s.startsWith("content://media/external/video"))
        {
            return a(contentresolver, k.c, 4, 1, null);
        }
        if (b(s))
        {
            return b(contentresolver, uri);
        } else
        {
            String s1 = uri.getQueryParameter("bucketId");
            return a(contentresolver, k.d, 1, 1, s1);
        }
    }

    private static d a(ContentResolver contentresolver, ImageListParam imagelistparam)
    {
        k k1 = imagelistparam.a;
        int i = imagelistparam.b;
        int j = imagelistparam.c;
        String s = imagelistparam.d;
        Uri uri = imagelistparam.e;
        if (imagelistparam.f || contentresolver == null)
        {
            return new l((byte)0);
        }
        if (uri != null)
        {
            return new n(contentresolver, uri);
        }
        boolean flag = a();
        ArrayList arraylist = new ArrayList();
        if (flag && k1 != k.b && (i & 1) != 0)
        {
            arraylist.add(new f(contentresolver, a, j, s));
        }
        if ((k1 == k.b || k1 == k.d) && (i & 1) != 0)
        {
            arraylist.add(new f(contentresolver, android.provider.MediaStore.Images.Media.INTERNAL_CONTENT_URI, j, s));
        }
        Iterator iterator = arraylist.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            b b1 = (b)iterator.next();
            if (b1.c())
            {
                b1.a();
                iterator.remove();
            }
        } while (true);
        if (arraylist.size() == 1)
        {
            return (b)arraylist.get(0);
        } else
        {
            return new g((d[])arraylist.toArray(new d[arraylist.size()]), j);
        }
    }

    private static d a(ContentResolver contentresolver, k k1, int i, int j, String s)
    {
        return a(contentresolver, a(k1, i, 1, s));
    }

    public static File a(String s, String s1, byte abyte0[], int ai[])
    {
        Object obj;
        String s2;
        obj = null;
        s2 = (new StringBuilder()).append(s).append("/").append(s1).toString();
        File file;
        boolean flag;
        file = new File(s);
        flag = file.exists();
        obj = null;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        file.mkdirs();
        File file1 = new File(s, s1);
        Exception exception;
        IOException ioexception;
        IOException ioexception1;
        FileNotFoundException filenotfoundexception;
        FileNotFoundException filenotfoundexception1;
        FileOutputStream fileoutputstream;
        try
        {
            fileoutputstream = new FileOutputStream(file1);
        }
        // Misplaced declaration of an exception variable
        catch (FileNotFoundException filenotfoundexception1)
        {
            obj = null;
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception1)
        {
            obj = null;
            continue; /* Loop/switch isn't completed */
        }
        fileoutputstream.write(abyte0);
        ai[0] = a(s2);
        com.instagram.creation.photo.gallery.p.a(fileoutputstream);
        return file1;
        filenotfoundexception;
        filenotfoundexception1 = filenotfoundexception;
        file1 = null;
_L6:
        filenotfoundexception1.getMessage();
        com.instagram.creation.photo.gallery.p.a(((java.io.Closeable) (obj)));
        return file1;
        ioexception;
        ioexception1 = ioexception;
        file1 = null;
_L4:
        ioexception1.getMessage();
        com.instagram.creation.photo.gallery.p.a(((java.io.Closeable) (obj)));
        return file1;
        exception;
_L2:
        com.instagram.creation.photo.gallery.p.a(((java.io.Closeable) (obj)));
        throw exception;
        exception;
        obj = fileoutputstream;
        if (true) goto _L2; else goto _L1
_L1:
        break MISSING_BLOCK_LABEL_81;
        ioexception1;
        obj = fileoutputstream;
        if (true) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_81;
        filenotfoundexception1;
        obj = fileoutputstream;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private static boolean a()
    {
        for (String s = Environment.getExternalStorageState(); "mounted".equals(s) || "mounted_ro".equals(s);)
        {
            return true;
        }

        return false;
    }

    private static d b(ContentResolver contentresolver, Uri uri)
    {
        return a(contentresolver, a(uri));
    }

    private static boolean b(String s)
    {
        return !s.startsWith(android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI.toString()) && !s.startsWith(android.provider.MediaStore.Images.Media.INTERNAL_CONTENT_URI.toString());
    }

    static 
    {
        a = android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
    }

    private class ImageListParam
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new m();
        public k a;
        public int b;
        public int c;
        public String d;
        public Uri e;
        public boolean f;

        public int describeContents()
        {
            return 0;
        }

        public String toString()
        {
            Object aobj[] = new Object[6];
            aobj[0] = a;
            aobj[1] = Integer.valueOf(b);
            aobj[2] = Integer.valueOf(c);
            aobj[3] = d;
            aobj[4] = Boolean.valueOf(f);
            aobj[5] = e;
            return String.format("ImageListParam{loc=%s,inc=%d,sort=%d,bucket=%s,empty=%b,single=%s}", aobj);
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            parcel.writeInt(a.ordinal());
            parcel.writeInt(b);
            parcel.writeInt(c);
            parcel.writeString(d);
            parcel.writeParcelable(e, i);
            int j;
            if (f)
            {
                j = 1;
            } else
            {
                j = 0;
            }
            parcel.writeInt(j);
        }


        public ImageListParam()
        {
        }

        private ImageListParam(Parcel parcel)
        {
            a = k.values()[parcel.readInt()];
            b = parcel.readInt();
            c = parcel.readInt();
            d = parcel.readString();
            e = (Uri)parcel.readParcelable(null);
            boolean flag;
            if (parcel.readInt() != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            f = flag;
        }

        ImageListParam(Parcel parcel, byte byte0)
        {
            this(parcel);
        }
    }

}
