// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.g.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.c.a.a;
import com.instagram.common.g.a.c;
import com.instagram.common.g.a.f;
import com.instagram.common.g.a.g;
import com.instagram.common.g.a.i;
import java.util.Deque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.common.g.b:
//            e, l, n, i, 
//            d, c, k, m, 
//            a, r

public class h
{

    private static final Class a = com/instagram/common/g/b/h;
    private static h b;
    private final Context c;
    private final String d;
    private final Handler e = new n(this, Looper.getMainLooper(), (byte)0);
    private final Handler f;
    private final e g = new e();
    private final Object h = new Object();
    private final Map i = new HashMap();
    private final Set j = new HashSet();
    private final Deque k = new LinkedList();
    private i l;
    private final l m = new l(this, (byte)0);

    private h(Context context, String s)
    {
        l = g.a;
        c = context.getApplicationContext();
        d = s;
        HandlerThread handlerthread = new HandlerThread("BitmapDecodingThread");
        handlerthread.start();
        f = new com.instagram.common.g.b.i(this, handlerthread.getLooper(), (byte)0);
    }

    public static h a()
    {
        return b;
    }

    public static h a(Context context, String s)
    {
        h h1 = new h(context, s);
        b = h1;
        return h1;
    }

    static l a(h h1)
    {
        return h1.m;
    }

    private boolean a(g g1, com.instagram.common.g.b.c c1)
    {
        d d1 = (d)g.a(g1.a());
        if (d1 != null)
        {
            k k1 = c1.d();
            if (k1 == null)
            {
                return true;
            } else
            {
                k1.a(g1.c, d1.a());
                return true;
            }
        } else
        {
            return false;
        }
    }

    static Object b(h h1)
    {
        return h1.h;
    }

    static Map c(h h1)
    {
        return h1.i;
    }

    private void c()
    {
        Object obj = h;
        obj;
        JVM INSTR monitorenter ;
        m m1;
        for (; j.size() < 4 && !k.isEmpty(); com.instagram.common.g.b.a.a.execute(m1))
        {
            m1 = (m)k.removeFirst();
            j.add(m1);
        }

        break MISSING_BLOCK_LABEL_73;
        Exception exception;
        exception;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
    }

    static Set d(h h1)
    {
        return h1.j;
    }

    static void e(h h1)
    {
        h1.c();
    }

    static Handler f(h h1)
    {
        return h1.e;
    }

    static Context g(h h1)
    {
        return h1.c;
    }

    static String h(h h1)
    {
        return h1.d;
    }

    static e i(h h1)
    {
        return h1.g;
    }

    static i j(h h1)
    {
        return h1.l;
    }

    public final void a(c c1)
    {
        com.instagram.common.g.b.l.a(m, c1);
    }

    public final void a(f f1)
    {
        com.instagram.common.g.b.l.a(m, f1);
    }

    public final void a(i i1)
    {
        l = i1;
    }

    final void a(com.instagram.common.g.b.c c1)
    {
        g g1;
        String s = c1.c();
        g1 = l.a(s);
        if (c1.g())
        {
            g.b(g1.a());
        }
        if (a(g1, c1))
        {
            return;
        }
        Object obj = h;
        obj;
        JVM INSTR monitorenter ;
        m m1 = (m)i.get(g1.a());
        if (m1 == null) goto _L2; else goto _L1
_L1:
        com.instagram.common.g.b.m.a(m1, c1, g1);
        if (!j.contains(m1) && c1.f())
        {
            a;
            g1.c;
            k.remove(m1);
            k.addFirst(m1);
        }
_L3:
        c();
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        if (!a(g1, c1))
        {
            break MISSING_BLOCK_LABEL_166;
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        m m2;
label0:
        {
            m2 = new m(this, g1.b, g1.a(), g1.d, (byte)0);
            com.instagram.common.g.b.m.a(m2, c1, g1);
            i.put(g1.a(), m2);
            if (!c1.f())
            {
                break label0;
            }
            k.addFirst(m2);
        }
          goto _L3
        k.addLast(m2);
          goto _L3
    }

    public final void a(String s)
    {
        f.sendMessage(f.obtainMessage(1, s));
    }

    public final long b()
    {
        return m.b().a();
    }

    public final Bitmap b(String s)
    {
        if (Looper.getMainLooper() == Looper.myLooper())
        {
            throw new IllegalStateException("Can't fetch the image on UI thread.");
        }
        g g1 = l.a(s);
        d d1 = (new r(m, null, false, false, g1.a(), g1.d, g1.b)).a();
        if (d1 == null)
        {
            return null;
        } else
        {
            return d1.a();
        }
    }

    public final void c(String s)
    {
        a(new com.instagram.common.g.b.c(s, null));
    }

}
