// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.c;

import android.content.Context;
import android.os.Handler;
import ch.boye.httpclientandroidlib.client.HttpClient;
import ch.boye.httpclientandroidlib.client.methods.HttpGet;
import ch.boye.httpclientandroidlib.impl.conn.tsccm.ThreadSafeClientConnManager;
import ch.boye.httpclientandroidlib.params.BasicHttpParams;
import ch.boye.httpclientandroidlib.params.HttpConnectionParams;
import com.instagram.common.g.a.d;
import com.instagram.common.g.a.f;
import com.instagram.common.g.a.g;
import com.instagram.common.g.a.i;
import com.instagram.common.i.c;
import com.instagram.common.y.c.e;
import java.io.IOException;
import java.util.Deque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.common.g.c:
//            c, b, d, e

public final class a
{

    private static a a;
    private final Handler b = new com.instagram.common.g.c.c((byte)0);
    private final Executor c = com.instagram.common.y.c.e.a().a("IgVideoCache").c();
    private final Object d = new Object();
    private final Deque e = new LinkedList();
    private final Map f = new HashMap();
    private final Set g = new HashSet();
    private final Set h = new HashSet();
    private final Context i;
    private HttpClient j;
    private com.c.a.a k;
    private i l;
    private com.instagram.common.g.a.c m;
    private final com.instagram.common.g.a.a n = new com.instagram.common.g.a.a("video_disk");

    private a(Context context)
    {
        l = g.a;
        m = new com.instagram.common.g.a.e();
        i = context.getApplicationContext();
        n.a();
    }

    static com.c.a.a a(a a1)
    {
        return a1.d();
    }

    public static a a()
    {
        return a;
    }

    public static a a(Context context)
    {
        a a1 = new a(context);
        a = a1;
        return a1;
    }

    private void a(HttpGet httpget, String s)
    {
        for (Iterator iterator = h.iterator(); iterator.hasNext(); ((f)iterator.next()).a(httpget, s)) { }
    }

    static void a(a a1, HttpGet httpget, String s)
    {
        a1.a(httpget, s);
    }

    static boolean a(a a1, String s)
    {
        return a1.f(s);
    }

    static Handler b(a a1)
    {
        return a1.b;
    }

    static void b(a a1, String s)
    {
        a1.d(s);
    }

    static String c(String s)
    {
        return e(s);
    }

    private void c()
    {
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        String s;
        if (g.size() > 0 || e.isEmpty())
        {
            break MISSING_BLOCK_LABEL_104;
        }
        s = (String)e.getFirst();
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        b b1 = (b)f.get(s);
        c.execute(new com.instagram.common.m.a(f(), com.instagram.common.g.c.b.a(b1).b, b1));
        g.add(s);
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private com.c.a.a d()
    {
        if (k == null)
        {
            e();
        }
        return k;
    }

    private void d(String s)
    {
        synchronized (d)
        {
            f.remove(s);
            e.remove(s);
            g.remove(s);
            c();
        }
    }

    private static String e(String s)
    {
        return Integer.toHexString(s.hashCode());
    }

    private void e()
    {
        this;
        JVM INSTR monitorenter ;
        com.c.a.a a1 = k;
        if (a1 == null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        java.io.File file;
        long l1;
        file = com.instagram.common.g.a.d.a(i, "video", true);
        l1 = com.instagram.common.g.a.d.a(file);
        if (l1 > 0L)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        file = com.instagram.common.g.a.d.a(i, "video", false);
        l1 = com.instagram.common.g.a.d.a(file);
        com.instagram.common.i.c.b("IgVideoCache", "Couldn't create in external storage");
        (new StringBuilder("Cache directory: ")).append(file);
        (new StringBuilder("Cache size: ")).append(l1 / 0x100000L).append("MB");
        k = com.c.a.a.a(file, l1);
        if (true) goto _L1; else goto _L3
_L3:
        IOException ioexception;
        ioexception;
        throw new RuntimeException("Unable to open video cache", ioexception);
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private HttpClient f()
    {
        if (j == null)
        {
            g();
        }
        return j;
    }

    private boolean f(String s)
    {
        return d().a(e(s));
    }

    private void g()
    {
        this;
        JVM INSTR monitorenter ;
        HttpClient httpclient = j;
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
        j = m.a(threadsafeclientconnmanager, basichttpparams);
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(com.instagram.common.g.a.c c1)
    {
        m = c1;
    }

    public final void a(f f1)
    {
        h.add(f1);
    }

    public final void a(i i1)
    {
        l = i1;
    }

    public final void a(String s)
    {
        a(s, false, ((com.instagram.common.g.c.d) (null)));
    }

    public final void a(String s, com.instagram.common.g.c.d d1)
    {
        if (s == null)
        {
            return;
        }
        g g1 = l.a(s);
        synchronized (d)
        {
            if (f.containsKey(g1.a()))
            {
                com.instagram.common.g.c.b.b((b)f.get(g1.a()), d1);
            }
        }
        b.removeMessages(1, d1);
        b.removeMessages(2, d1);
    }

    public final void a(String s, boolean flag, com.instagram.common.g.c.d d1)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        if (d1 != null)
        {
            d1.g();
        }
_L4:
        return;
_L2:
        g g1;
        String s1;
        g1 = l.a(s);
        s1 = g1.a();
        if (!f(s1))
        {
            break; /* Loop/switch isn't completed */
        }
        n.b();
        if (d1 != null)
        {
            d1.f();
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        n.c();
        Object obj = d;
        obj;
        JVM INSTR monitorenter ;
        if (!f.containsKey(s1)) goto _L6; else goto _L5
_L5:
        b b2 = (b)f.get(s1);
        if (d1 == null)
        {
            break MISSING_BLOCK_LABEL_117;
        }
        com.instagram.common.g.c.b.a(b2, d1);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_165;
        }
        (new StringBuilder("Reordering ")).append(s).append(" to front of queue");
        e.remove(s1);
        e.addFirst(s1);
_L8:
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L6:
        if (!f(s1))
        {
            break MISSING_BLOCK_LABEL_199;
        }
        if (d1 == null) goto _L8; else goto _L7
_L7:
        d1.f();
          goto _L8
        b b1 = new b(this, g1);
        if (d1 == null)
        {
            break MISSING_BLOCK_LABEL_221;
        }
        com.instagram.common.g.c.b.a(b1, d1);
        f.put(s1, b1);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_278;
        }
        (new StringBuilder("Adding ")).append(s).append(" at front of queue");
        e.addFirst(s1);
_L9:
        c();
          goto _L8
        (new StringBuilder("Adding ")).append(s).append(" at back of queue");
        e.addLast(s1);
          goto _L9
    }

    public final long b()
    {
        return d().a();
    }

    public final com.instagram.common.g.c.e b(String s)
    {
        g g1 = l.a(s);
        com.c.a.g g2 = d().b(e(g1.a()));
        if (g2 != null)
        {
            return new com.instagram.common.g.c.e(g2);
        } else
        {
            return null;
        }
    }
}
