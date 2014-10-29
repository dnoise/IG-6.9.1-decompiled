// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.b;

import android.graphics.BitmapFactory;
import android.net.Uri;
import ch.boye.httpclientandroidlib.HttpEntity;
import ch.boye.httpclientandroidlib.HttpResponse;
import ch.boye.httpclientandroidlib.client.HttpClient;
import ch.boye.httpclientandroidlib.client.methods.HttpGet;
import ch.boye.httpclientandroidlib.entity.FileEntity;
import ch.boye.httpclientandroidlib.util.EntityUtils;
import com.c.a.a;
import com.c.a.d;
import com.c.a.g;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

// Referenced classes of package com.instagram.common.g.b:
//            f, s, t, e, 
//            d, g

class r
{

    private static final Class a = com/instagram/common/g/b/r;
    private static final android.graphics.BitmapFactory.Options b;
    private final t c;
    private final s d;
    private final boolean e;
    private final boolean f;
    private final String g;
    private final String h;
    private final String i;
    private final String j;

    r(t t1, s s1, boolean flag, boolean flag1, String s2, String s3, String s4)
    {
        c = t1;
        d = s1;
        e = flag;
        f = flag1;
        g = s2;
        h = a(g);
        i = s3;
        j = s4;
    }

    private static String a(String s1)
    {
        return Integer.toHexString(s1.hashCode());
    }

    private void a(HttpEntity httpentity, f f1)
    {
        InputStream inputstream;
        if (httpentity == null)
        {
            throw new IllegalArgumentException("HTTP entity may not be null");
        }
        inputstream = httpentity.getContent();
        if (inputstream == null)
        {
            throw new IllegalArgumentException("Input stream should not be null");
        }
        if (httpentity.getContentLength() > 0x7fffffffL)
        {
            throw new IllegalArgumentException("HTTP entity too large to be buffered in memory");
        }
        int k;
        byte abyte0[];
        k = (int)httpentity.getContentLength();
        abyte0 = f1.a();
        int l = 0;
_L2:
        int i1 = inputstream.read(abyte0);
        if (i1 == -1)
        {
            break MISSING_BLOCK_LABEL_154;
        }
        f1.a(i1);
        if (!f || k <= 0) goto _L2; else goto _L1
_L1:
        int j1 = (int)(100F * ((float)f1.c() / (float)k));
        if (j1 / 10 > l)
        {
            d.a(j1);
            l = j1 / 10;
        }
          goto _L2
        f1.d();
        inputstream.close();
        return;
        Exception exception;
        exception;
        inputstream.close();
        throw exception;
    }

    private static void a(g g1, f f1)
    {
        InputStream inputstream = g1.a();
        byte abyte0[] = f1.a();
        do
        {
            int k = inputstream.read(abyte0);
            if (k != -1)
            {
                f1.a(k);
            } else
            {
                f1.d();
                return;
            }
        } while (true);
    }

    private void a(String s1, f f1)
    {
        FileEntity fileentity = new FileEntity(new File(Uri.parse(s1).getPath()), "image/jpeg");
        a(((HttpEntity) (fileentity)), f1);
        Exception exception;
        try
        {
            EntityUtils.consume(fileentity);
            return;
        }
        catch (IOException ioexception1)
        {
            return;
        }
        exception;
        fileentity = null;
_L2:
        try
        {
            EntityUtils.consume(fileentity);
        }
        catch (IOException ioexception) { }
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void a(String s1, String s2, f f1)
    {
        if (s1.startsWith("file:/"))
        {
            a(s1, f1);
        } else
        {
            c(s1, f1);
        }
        b(s2, f1);
    }

    private void b(String s1, f f1)
    {
        OutputStream outputstream = null;
        d d2 = c.b().c(s1);
        d d1 = d2;
        outputstream = d1.a();
        outputstream.write(f1.b(), 0, f1.c());
        outputstream.close();
        d1.b();
_L2:
        return;
        IOException ioexception;
        ioexception;
        d1 = null;
_L3:
        a;
        if (outputstream == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        outputstream.close();
        if (d1 == null) goto _L2; else goto _L1
_L1:
        try
        {
            d1.c();
            return;
        }
        catch (IOException ioexception1)
        {
            a;
        }
        return;
        IOException ioexception2;
        ioexception2;
          goto _L3
    }

    private void c(String s1, f f1)
    {
        HttpEntity httpentity = null;
        HttpGet httpget = new HttpGet(s1);
        c.a(httpget, i);
        httpentity = c.a().execute(httpget).getEntity();
        a(httpentity, f1);
        Exception exception;
        try
        {
            EntityUtils.consume(httpentity);
            return;
        }
        catch (IOException ioexception1)
        {
            return;
        }
        exception;
        try
        {
            EntityUtils.consume(httpentity);
        }
        catch (IOException ioexception) { }
        throw exception;
    }

    final com.instagram.common.g.b.d a()
    {
        com.instagram.common.g.b.d d1;
        if (e)
        {
            try
            {
                c.b().d(h);
            }
            catch (IOException ioexception2)
            {
                com.facebook.e.a.a.a(a, "Error while removing cache entry from persistent storage.", ioexception2);
            }
        }
        d1 = (com.instagram.common.g.b.d)c.c().a(g);
        if (d1 == null) goto _L2; else goto _L1
_L1:
        return d1;
_L2:
        f f1 = c.d().a();
        g g3 = c.b().b(h);
        g g2 = g3;
        if (g2 == null) goto _L4; else goto _L3
_L3:
        a(g2, f1);
_L10:
        com/instagram/common/g/b/r;
        JVM INSTR monitorenter ;
        android.graphics.Bitmap bitmap = BitmapFactory.decodeByteArray(f1.b(), 0, f1.c(), b);
        com/instagram/common/g/b/r;
        JVM INSTR monitorexit ;
        if (bitmap == null) goto _L6; else goto _L5
_L5:
        d1 = new com.instagram.common.g.b.d(bitmap, f1.c());
_L14:
        if (d1 == null) goto _L8; else goto _L7
_L7:
        c.c().a(g, d1);
        if (g2 != null)
        {
            g2.close();
        }
        if (f1 == null) goto _L1; else goto _L9
_L9:
        f1.e();
        return d1;
_L4:
        a(j, h, f1);
          goto _L10
        IOException ioexception1;
        ioexception1;
        g g1 = g2;
_L13:
        a;
        if (g1 != null)
        {
            g1.close();
        }
        if (f1 != null)
        {
            f1.e();
        }
_L11:
        return null;
        Exception exception2;
        exception2;
        com/instagram/common/g/b/r;
        JVM INSTR monitorexit ;
        throw exception2;
        Exception exception1;
        exception1;
_L12:
        if (g2 != null)
        {
            g2.close();
        }
        if (f1 != null)
        {
            f1.e();
        }
        throw exception1;
_L8:
        if (g2 != null)
        {
            g2.close();
        }
        if (f1 != null)
        {
            f1.e();
        }
          goto _L11
        exception1;
        g2 = null;
          goto _L12
        Exception exception;
        exception;
        g2 = g1;
        exception1 = exception;
          goto _L12
        IOException ioexception;
        ioexception;
        g1 = null;
        if (true) goto _L13; else goto _L6
_L6:
        d1 = null;
          goto _L14
    }

    static 
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        b = options;
        options.inPurgeable = true;
        b.inInputShareable = false;
    }
}
