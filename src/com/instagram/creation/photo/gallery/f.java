// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.gallery;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;

// Referenced classes of package com.instagram.creation.photo.gallery:
//            b, d, e, a

public final class f extends b
    implements d
{

    static final String g[] = {
        "_id", "_data", "datetaken", "mini_thumb_magic", "orientation", "title", "mime_type", "date_modified"
    };
    private static final String h[] = {
        "image/jpeg", "image/png", "image/gif"
    };

    public f(ContentResolver contentresolver, Uri uri, int i, String s)
    {
        super(contentresolver, uri, i, s);
    }

    private String f()
    {
        if (e == null)
        {
            return "(mime_type in (?, ?, ?))";
        } else
        {
            return "(mime_type in (?, ?, ?)) AND bucket_id = ?";
        }
    }

    private String[] g()
    {
        if (e != null)
        {
            int i = h.length;
            String as[] = new String[i + 1];
            System.arraycopy(h, 0, as, 0, i);
            as[i] = e;
            return as;
        } else
        {
            return h;
        }
    }

    protected final a a(Cursor cursor)
    {
        long l = cursor.getLong(0);
        String s = cursor.getString(1);
        long l1 = cursor.getLong(2);
        if (l1 == 0L)
        {
            l1 = 1000L * cursor.getLong(7);
        }
        long l2 = cursor.getLong(3);
        int i = cursor.getInt(4);
        String s1 = cursor.getString(5);
        String s2 = cursor.getString(6);
        if (s1 == null || s1.length() == 0)
        {
            s1 = s;
        }
        return new e(this, a, l, cursor.getPosition(), a(l), s, l2, s2, l1, s1, i);
    }

    protected final long b(Cursor cursor)
    {
        return cursor.getLong(0);
    }

    protected final Cursor d()
    {
        return android.provider.MediaStore.Images.Media.query(a, c, g, f(), g(), e());
    }

}
