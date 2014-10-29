// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.b;

import ch.boye.httpclientandroidlib.client.HttpClient;
import ch.boye.httpclientandroidlib.client.methods.HttpGet;
import ch.boye.httpclientandroidlib.impl.conn.tsccm.ThreadSafeClientConnManager;
import ch.boye.httpclientandroidlib.params.BasicHttpParams;
import ch.boye.httpclientandroidlib.params.HttpConnectionParams;
import com.c.a.a;
import com.instagram.common.a.g.d;
import com.instagram.common.g.a.c;
import com.instagram.common.g.a.e;
import com.instagram.common.g.a.f;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.instagram.common.g.b:
//            t, g, h, e

final class l
    implements t
{

    final h a;
    private final Set b;
    private final g c;
    private c d;
    private a e;
    private HttpClient f;

    private l(h h1)
    {
        a = h1;
        super();
        b = new HashSet();
        c = new g();
        d = new e();
    }

    l(h h1, byte byte0)
    {
        this(h1);
    }

    private void a(c c1)
    {
        d = c1;
    }

    private void a(f f1)
    {
        b.add(f1);
    }

    static void a(l l1, c c1)
    {
        l1.a(c1);
    }

    static void a(l l1, f f1)
    {
        l1.a(f1);
    }

    private void e()
    {
        this;
        JVM INSTR monitorenter ;
        HttpClient httpclient = f;
        if (httpclient == null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        ThreadSafeClientConnManager threadsafeclientconnmanager = new ThreadSafeClientConnManager(com.instagram.common.a.g.d.a());
        threadsafeclientconnmanager.setDefaultMaxPerRoute(10);
        threadsafeclientconnmanager.setMaxTotal(10);
        BasicHttpParams basichttpparams = new BasicHttpParams();
        HttpConnectionParams.setTcpNoDelay(basichttpparams, true);
        HttpConnectionParams.setConnectionTimeout(basichttpparams, 10000);
        HttpConnectionParams.setSoTimeout(basichttpparams, 10000);
        f = d.a(threadsafeclientconnmanager, basichttpparams);
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private void f()
    {
        this;
        JVM INSTR monitorenter ;
        a a1 = e;
        if (a1 != null)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        e = com.c.a.a.a(com.instagram.common.g.a.d.a(h.g(a), h.h(a), false), 0x1e00000L);
        this;
        JVM INSTR monitorexit ;
        return;
        IOException ioexception;
        ioexception;
        throw new RuntimeException("Unable to open disk cache for images", ioexception);
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final HttpClient a()
    {
        if (f == null)
        {
            e();
        }
        return f;
    }

    public final void a(HttpGet httpget, String s)
    {
        for (Iterator iterator = b.iterator(); iterator.hasNext(); ((f)iterator.next()).a(httpget, s)) { }
    }

    public final a b()
    {
        if (e == null)
        {
            f();
        }
        return e;
    }

    public final com.instagram.common.g.b.e c()
    {
        return h.i(a);
    }

    public final g d()
    {
        return c;
    }
}
