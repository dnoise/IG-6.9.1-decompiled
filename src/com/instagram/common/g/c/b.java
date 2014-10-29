// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.c;

import android.os.Handler;
import ch.boye.httpclientandroidlib.StatusLine;
import ch.boye.httpclientandroidlib.client.methods.HttpGet;
import com.c.a.d;
import com.facebook.e.a.a;
import com.instagram.common.g.a.g;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.instagram.common.g.c:
//            a, d

final class b
    implements com.instagram.common.m.b
{

    final com.instagram.common.g.c.a a;
    private final g b;
    private int c;
    private long d;
    private boolean e;
    private d f;
    private BufferedOutputStream g;
    private Set h;

    b(com.instagram.common.g.c.a a1, g g1)
    {
        a = a1;
        super();
        e = false;
        b = g1;
    }

    static g a(b b1)
    {
        return b1.b;
    }

    static void a(b b1, com.instagram.common.g.c.d d1)
    {
        b1.a(d1);
    }

    private void a(com.instagram.common.g.c.d d1)
    {
        this;
        JVM INSTR monitorenter ;
        if (!com.instagram.common.g.c.a.a(a, b.a())) goto _L2; else goto _L1
_L1:
        d1.f();
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (h == null)
        {
            h = new HashSet();
        }
        h.add(d1);
        d1.e();
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    static void b(b b1, com.instagram.common.g.c.d d1)
    {
        b1.b(d1);
    }

    private void b(com.instagram.common.g.c.d d1)
    {
        this;
        JVM INSTR monitorenter ;
        if (h != null)
        {
            h.remove(d1);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void c()
    {
        if (h != null)
        {
            com.instagram.common.g.c.d d1;
            for (Iterator iterator = h.iterator(); iterator.hasNext(); com.instagram.common.g.c.a.b(a).sendMessage(com.instagram.common.g.c.a.b(a).obtainMessage(1, d1)))
            {
                d1 = (com.instagram.common.g.c.d)iterator.next();
            }

        }
    }

    private void d()
    {
        if (g != null)
        {
            try
            {
                g.close();
            }
            catch (IOException ioexception1)
            {
                Object aobj1[] = new Object[1];
                aobj1[0] = b;
                com.facebook.e.a.a.a("IgVideoCache", "Couldn't close disk cache output stream for %s", aobj1);
            }
        }
        if (f != null)
        {
            try
            {
                f.c();
            }
            catch (IOException ioexception)
            {
                Object aobj[] = new Object[1];
                aobj[0] = b;
                com.facebook.e.a.a.a("IgVideoCache", "Couldn't abort cache entry for %s", aobj);
            }
        }
        if (h != null)
        {
            com.instagram.common.g.c.d d1;
            for (Iterator iterator = h.iterator(); iterator.hasNext(); com.instagram.common.g.c.a.b(a).sendMessage(com.instagram.common.g.c.a.b(a).obtainMessage(2, d1)))
            {
                d1 = (com.instagram.common.g.c.d)iterator.next();
            }

        }
    }

    public final void a()
    {
        long l = (System.nanoTime() - d) / 0xf4240L;
        (new StringBuilder("Video downloaded in ")).append(l).append("ms: ").append(b);
        if (c != 200 || e) goto _L2; else goto _L1
_L1:
        g.close();
        f.b();
        this;
        JVM INSTR monitorenter ;
        c();
        this;
        JVM INSTR monitorexit ;
_L4:
        com.instagram.common.g.c.a.b(a, b.a());
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        IOException ioexception;
        ioexception;
        com.facebook.e.a.a.a("IgVideoCache", (new StringBuilder("Couldn't store cache entry for ")).append(b).toString());
_L2:
        d();
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void a(StatusLine statusline)
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        c = statusline.getStatusCode();
        i = c;
        if (i != 200)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        com.c.a.a a1 = com.instagram.common.g.c.a.a(a);
        a;
        f = a1.c(com.instagram.common.g.c.a.c(b.a()));
        g = new BufferedOutputStream(f.a());
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        IOException ioexception;
        ioexception;
        com.facebook.e.a.a.a("IgVideoCache", "can't open disk cache entry for video ", ioexception);
        e = true;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(HttpGet httpget)
    {
        d = System.nanoTime();
        (new StringBuilder("Started downloading ")).append(b);
        com.instagram.common.g.c.a.a(a, httpget, b.d);
    }

    public final void a(byte abyte0[], int i)
    {
        this;
        JVM INSTR monitorenter ;
        BufferedOutputStream bufferedoutputstream = g;
        if (bufferedoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        g.write(abyte0, 0, i);
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        IOException ioexception;
        ioexception;
        com.facebook.e.a.a.a("IgVideoCache", "can't write video cache ", ioexception);
        e = true;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public final void b()
    {
        d();
        com.instagram.common.g.c.a.b(a, b.a());
    }
}
