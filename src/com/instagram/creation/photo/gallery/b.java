// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.gallery;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.database.Cursor;
import android.net.Uri;
import android.support.v4.c.c;
import com.facebook.e.a.a;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.instagram.creation.photo.gallery:
//            d, p, a, c

public abstract class b
    implements d
{

    private static final Pattern h = Pattern.compile("(.*)/\\d+");
    protected ContentResolver a;
    protected int b;
    protected Uri c;
    protected Cursor d;
    protected String e;
    protected boolean f;
    private final c g = new c();

    public b(ContentResolver contentresolver, Uri uri, int i, String s)
    {
        f = false;
        b = i;
        c = uri;
        e = s;
        a = contentresolver;
        d = d();
        Cursor _tmp = d;
        g.a();
    }

    private static String b(Uri uri)
    {
        String s = uri.getPath();
        Matcher matcher = h.matcher(s);
        if (matcher.matches())
        {
            s = matcher.group(1);
        }
        return s;
    }

    private boolean c(Uri uri)
    {
        Uri uri1 = c;
        return com.instagram.creation.photo.gallery.p.a(uri1.getScheme(), uri.getScheme()) && com.instagram.creation.photo.gallery.p.a(uri1.getHost(), uri.getHost()) && com.instagram.creation.photo.gallery.p.a(uri1.getAuthority(), uri.getAuthority()) && com.instagram.creation.photo.gallery.p.a(uri1.getPath(), b(uri));
    }

    private Cursor f()
    {
        this;
        JVM INSTR monitorenter ;
        if (d != null)
        {
            break MISSING_BLOCK_LABEL_13;
        }
        this;
        JVM INSTR monitorexit ;
        return null;
        Cursor cursor;
        if (f)
        {
            d.requery();
            f = false;
        }
        cursor = d;
        this;
        JVM INSTR monitorexit ;
        return cursor;
        Exception exception;
        exception;
        throw exception;
    }

    private void g()
    {
        if (d == null)
        {
            return;
        } else
        {
            d.deactivate();
            f = true;
            return;
        }
    }

    public final Uri a(long l)
    {
        Uri uri;
        try
        {
            if (ContentUris.parseId(c) != l)
            {
                com.facebook.e.a.a.a("BaseImageList", "id mismatch");
            }
            uri = c;
        }
        catch (NumberFormatException numberformatexception)
        {
            return ContentUris.withAppendedId(c, l);
        }
        return uri;
    }

    protected abstract com.instagram.creation.photo.gallery.a a(Cursor cursor);

    public final com.instagram.creation.photo.gallery.c a(int i)
    {
        Cursor cursor;
label0:
        {
            com.instagram.creation.photo.gallery.a a1 = (com.instagram.creation.photo.gallery.a)g.a(Integer.valueOf(i));
            if (a1 == null)
            {
                cursor = f();
                if (cursor != null)
                {
                    break label0;
                }
                a1 = null;
            }
            return a1;
        }
        this;
        JVM INSTR monitorenter ;
        com.instagram.creation.photo.gallery.a a2;
        if (!cursor.moveToPosition(i))
        {
            break MISSING_BLOCK_LABEL_77;
        }
        a2 = a(cursor);
_L1:
        g.a(Integer.valueOf(i), a2);
        this;
        JVM INSTR monitorexit ;
        return a2;
        Exception exception;
        exception;
        throw exception;
        a2 = null;
          goto _L1
    }

    public final com.instagram.creation.photo.gallery.c a(Uri uri)
    {
        if (c(uri)) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        long l;
        Cursor cursor;
        Exception exception;
        int i;
        com.instagram.creation.photo.gallery.a a1;
        try
        {
            l = ContentUris.parseId(uri);
        }
        catch (NumberFormatException numberformatexception)
        {
            (new StringBuilder("fail to get id in: ")).append(uri);
            return null;
        }
        if ((cursor = f()) == null) goto _L1; else goto _L3
_L3:
        this;
        JVM INSTR monitorenter ;
        cursor.moveToPosition(-1);
        i = 0;
_L5:
        if (!cursor.moveToNext())
        {
            break; /* Loop/switch isn't completed */
        }
        if (b(cursor) != l)
        {
            break MISSING_BLOCK_LABEL_137;
        }
        a1 = (com.instagram.creation.photo.gallery.a)g.a(Integer.valueOf(i));
        if (a1 != null)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        a1 = a(cursor);
        g.a(Integer.valueOf(i), a1);
        this;
        JVM INSTR monitorexit ;
        return a1;
        exception;
        throw exception;
        i++;
        if (true) goto _L5; else goto _L4
_L4:
        return null;
    }

    public final void a()
    {
        try
        {
            g();
        }
        catch (IllegalStateException illegalstateexception)
        {
            com.facebook.e.a.a.a("BaseImageList", "Caught exception while deactivating cursor.", illegalstateexception);
        }
        a = null;
        if (d != null)
        {
            d.close();
            d = null;
        }
    }

    public final int b()
    {
        Cursor cursor;
        cursor = f();
        if (cursor == null)
        {
            return 0;
        }
        this;
        JVM INSTR monitorenter ;
        int i = cursor.getCount();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    protected abstract long b(Cursor cursor);

    public final boolean c()
    {
        return b() == 0;
    }

    protected abstract Cursor d();

    protected final String e()
    {
        String s;
        if (b == 1)
        {
            s = " ASC";
        } else
        {
            s = " DESC";
        }
        return (new StringBuilder()).append("case ifnull(datetaken,0) when 0 then date_modified*1000 else datetaken end").append(s).append(", _id").append(s).toString();
    }

}
