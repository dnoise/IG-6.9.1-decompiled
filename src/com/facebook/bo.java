// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.a.e;
import com.facebook.g.p;
import com.facebook.g.t;
import com.facebook.g.u;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;

// Referenced classes of package com.facebook:
//            bp, cl, ch, cm, 
//            a, s, t, x, 
//            ab, z, bt, bu, 
//            ca, br, bz, cj, 
//            al, cb, cg, c, 
//            bq, cd, b, by, 
//            cc

public class bo
    implements Serializable
{

    public static final String a = com/facebook/bo.getCanonicalName();
    private static final Object b = new Object();
    private static bo c;
    private static volatile Context d;
    private static final Set e = new bp();
    private String f;
    private ch g;
    private a h;
    private Date i;
    private bu j;
    private c k;
    private volatile Bundle l;
    private final List m;
    private Handler n;
    private by o;
    private final Object p;
    private cm q;
    private volatile cd r;

    bo(Context context, String s1, cm cm1)
    {
        this(context, s1, cm1, (byte)0);
    }

    private bo(Context context, String s1, cm cm1, byte byte0)
    {
        Bundle bundle;
label0:
        {
            super();
            i = new Date(0L);
            p = new Object();
            if (context != null && s1 == null)
            {
                s1 = t.a(context);
            }
            u.a(s1, "applicationId");
            c(context);
            if (cm1 == null)
            {
                cm1 = new cl(d);
            }
            f = s1;
            q = cm1;
            g = ch.a;
            j = null;
            m = new ArrayList();
            n = new Handler(Looper.getMainLooper());
            bundle = cm1.a();
            if (cm.b(bundle))
            {
                Date date = cm.a(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate");
                Date date1 = new Date();
                if (date != null && !date.before(date1))
                {
                    break label0;
                }
                cm1.b();
            }
            h = com.facebook.a.a(Collections.emptyList());
            return;
        }
        h = com.facebook.a.a(bundle);
        g = ch.b;
    }

    public static bo a(Context context)
    {
        return b(context);
    }

    private void a(int i1, s s1)
    {
        Object obj;
        a a1;
        if (i1 == -1)
        {
            if (s1.a == t.a)
            {
                a1 = s1.b;
                obj = null;
            } else
            {
                obj = new x(s1.c);
                a1 = null;
            }
        } else
        if (i1 == 0)
        {
            obj = new ab(s1.c);
            a1 = null;
        } else
        {
            obj = null;
            a1 = null;
        }
        k = null;
        a(a1, ((Exception) (obj)));
    }

    static void a(Handler handler, Runnable runnable)
    {
        b(handler, runnable);
    }

    private void a(a a1)
    {
        if (a1 != null && q != null)
        {
            q.a(a1.f());
        }
    }

    private void a(a a1, Exception exception)
    {
        if (a1 != null && a1.g())
        {
            a1 = null;
            exception = new z("Invalid access token.");
        }
        Object obj = p;
        obj;
        JVM INSTR monitorenter ;
        bt.a[g.ordinal()];
        JVM INSTR tableswitch 2 5: default 72
    //                   2 75
    //                   3 72
    //                   4 91
    //                   5 91;
           goto _L1 _L2 _L1 _L3 _L3
_L1:
        break; /* Loop/switch isn't completed */
_L3:
        break MISSING_BLOCK_LABEL_91;
_L4:
        return;
_L2:
        b(a1, exception);
          goto _L4
        Exception exception1;
        exception1;
        throw exception1;
        c(a1, exception);
          goto _L4
    }

    public static final void a(bo bo1)
    {
        Object obj = b;
        obj;
        JVM INSTR monitorenter ;
        bo bo2;
        if (bo1 == c)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        bo2 = c;
        if (bo2 == null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        bo2.m();
        c = bo1;
        if (bo2 == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        b("com.facebook.sdk.ACTIVE_SESSION_UNSET");
        if (bo1 == null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        b("com.facebook.sdk.ACTIVE_SESSION_SET");
        if (bo1.a())
        {
            b("com.facebook.sdk.ACTIVE_SESSION_OPENED");
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static void a(bo bo1, int i1, s s1)
    {
        bo1.a(i1, s1);
    }

    private void a(bu bu1)
    {
        bu1.a(f);
        p();
        boolean flag = c(bu1);
        if (!flag && bu.a(bu1))
        {
            flag = e(bu1);
        }
        if (flag)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        Object obj = p;
        obj;
        JVM INSTR monitorenter ;
        ch ch1 = g;
        switch (bt.a[g.ordinal()])
        {
        default:
            g = ch.f;
            a(ch1, g, ((Exception) (new z("Log in attempt failed."))));
            return;

        case 6: // '\006'
        case 7: // '\007'
            break;
        }
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static void a(bu bu1, p p1)
    {
        if (bu1 == null || t.a(bu1.d()))
        {
            if (p.b.equals(p1))
            {
                throw new z("Cannot request publish or manage authorization with no permissions.");
            }
        } else
        {
            Iterator iterator = bu1.d().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                String s1 = (String)iterator.next();
                if (a(s1))
                {
                    if (p.a.equals(p1))
                    {
                        throw new z(String.format("Cannot pass a publish or manage permission (%s) to a request for read authorization", new Object[] {
                            s1
                        }));
                    }
                } else
                if (p.b.equals(p1))
                {
                    String _tmp = a;
                    String.format("Should not pass a read permission (%s) to a request for publish or manage authorization", new Object[] {
                        s1
                    });
                }
            } while (true);
        }
    }

    private void a(ca ca1, p p1)
    {
        ch ch1;
label0:
        {
            a(((bu) (ca1)), p1);
            b(ca1);
            synchronized (p)
            {
                if (j == null)
                {
                    break label0;
                }
                a(g, g, ((Exception) (new UnsupportedOperationException("Session: an attempt was made to open a session that has a pending request."))));
            }
            return;
        }
        ch1 = g;
        bt.a[g.ordinal()];
        JVM INSTR tableswitch 1 3: default 92
    //                   1 110
    //                   2 92
    //                   3 178;
           goto _L1 _L2 _L1 _L3
_L1:
        throw new UnsupportedOperationException("Session: an attempt was made to open an already opened session.");
_L2:
        ch ch2;
        ch2 = ch.c;
        g = ch2;
        if (ca1 != null) goto _L5; else goto _L4
_L4:
        throw new IllegalArgumentException("openRequest cannot be null when opening a new Session");
_L5:
        j = ca1;
_L12:
        if (ca1 == null) goto _L7; else goto _L6
_L6:
        a(ca1.a());
_L7:
        a(ch1, ch2, ((Exception) (null)));
        obj;
        JVM INSTR monitorexit ;
        if (ch2 == ch.c)
        {
            a(((bu) (ca1)));
            return;
        } else
        {
            return;
        }
_L3:
        if (ca1 == null) goto _L9; else goto _L8
_L8:
        if (!t.a(ca1.d()) && !t.a(ca1.d(), e()))
        {
            j = ca1;
        }
_L9:
        if (j != null) goto _L11; else goto _L10
_L10:
        ch2 = ch.d;
        g = ch2;
          goto _L12
_L11:
        ch2 = ch.c;
        g = ch2;
          goto _L12
    }

    private void a(ch ch1, ch ch2, Exception exception)
    {
        if (ch1 != ch2 || ch1 == com.facebook.ch.e || exception != null)
        {
            if (ch2.b())
            {
                h = com.facebook.a.a(Collections.emptyList());
            }
            synchronized (m)
            {
                br br1 = new br(this, ch2, exception);
                b(n, br1);
            }
            if (this == c && ch1.a() != ch2.a())
            {
                if (ch2.a())
                {
                    b("com.facebook.sdk.ACTIVE_SESSION_OPENED");
                    return;
                } else
                {
                    b("com.facebook.sdk.ACTIVE_SESSION_CLOSED");
                    return;
                }
            }
        }
    }

    private static boolean a(Intent intent)
    {
        return h().getPackageManager().resolveActivity(intent, 0) != null;
    }

    private static boolean a(Object obj, Object obj1)
    {
        if (obj == null)
        {
            return obj1 == null;
        } else
        {
            return obj.equals(obj1);
        }
    }

    static boolean a(String s1)
    {
        return s1 != null && (s1.startsWith("publish") || s1.startsWith("manage") || e.contains(s1));
    }

    private static bo b(Context context)
    {
        bo bo1 = (new bz(context)).a();
        if (ch.b.equals(bo1.b()))
        {
            a(bo1);
            bo1.a(((ca) (null)));
            return bo1;
        } else
        {
            return null;
        }
    }

    static List b(bo bo1)
    {
        return bo1.m;
    }

    private static void b(Handler handler, Runnable runnable)
    {
        if (handler != null)
        {
            handler.post(runnable);
            return;
        } else
        {
            cj.a().execute(runnable);
            return;
        }
    }

    private void b(a a1, Exception exception)
    {
        ch ch1 = g;
        if (a1 == null) goto _L2; else goto _L1
_L1:
        h = a1;
        a(a1);
        g = ch.d;
_L4:
        j = null;
        a(ch1, g, exception);
        return;
_L2:
        if (exception != null)
        {
            g = ch.f;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static void b(bu bu1)
    {
        if (bu1 != null && !bu.a(bu1))
        {
            Intent intent = new Intent();
            intent.setClass(h(), com/facebook/al);
            if (!a(intent))
            {
                Object aobj[] = new Object[2];
                aobj[0] = bu1.b();
                aobj[1] = com/facebook/al.getName();
                throw new z(String.format("Cannot use SessionLoginBehavior %s when %s is not declared as an activity in AndroidManifest.xml", aobj));
            }
        }
    }

    private static void b(String s1)
    {
        Intent intent = new Intent(s1);
        android.support.v4.a.e.a(h()).a(intent);
    }

    static Handler c(bo bo1)
    {
        return bo1.n;
    }

    private static void c(Context context)
    {
        if (context != null && d == null)
        {
            Context context1 = context.getApplicationContext();
            if (context1 != null)
            {
                context = context1;
            }
            d = context;
        }
    }

    private void c(a a1, Exception exception)
    {
        ch ch1 = g;
        if (a1 != null)
        {
            h = a1;
            a(a1);
            g = com.facebook.ch.e;
        }
        j = null;
        a(ch1, g, exception);
    }

    private static boolean c(bu bu1)
    {
        Intent intent = d(bu1);
        if (!a(intent))
        {
            return false;
        }
        try
        {
            bu1.e().a(intent, bu1.c());
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            return false;
        }
        return true;
    }

    private static Intent d(bu bu1)
    {
        Intent intent = new Intent();
        intent.setClass(h(), com/facebook/al);
        intent.setAction(bu1.b().toString());
        intent.putExtras(al.a(bu1.f()));
        return intent;
    }

    static cd d(bo bo1)
    {
        return bo1.r;
    }

    static cd e(bo bo1)
    {
        bo1.r = null;
        return null;
    }

    private boolean e(bu bu1)
    {
        k = new c();
        k.a(new bq(this));
        k.a(h());
        k.a(bu1.f());
        return true;
    }

    static by f(bo bo1)
    {
        bo1.o = null;
        return null;
    }

    public static final bo g()
    {
        bo bo1;
        synchronized (b)
        {
            bo1 = c;
        }
        return bo1;
    }

    static Context h()
    {
        return d;
    }

    static Context k()
    {
        return d;
    }

    private Date l()
    {
        Object obj = p;
        obj;
        JVM INSTR monitorenter ;
        if (h != null) goto _L2; else goto _L1
_L1:
        Date date = null;
_L4:
        obj;
        JVM INSTR monitorexit ;
        return date;
_L2:
        Date date1 = h.b();
        date = date1;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private void m()
    {
        Object obj = p;
        obj;
        JVM INSTR monitorenter ;
        ch ch1 = g;
        bt.a[g.ordinal()];
        JVM INSTR tableswitch 1 5: default 56
    //                   1 59
    //                   2 59
    //                   3 93
    //                   4 93
    //                   5 93;
           goto _L1 _L2 _L2 _L3 _L3 _L3
_L1:
        break; /* Loop/switch isn't completed */
_L3:
        break MISSING_BLOCK_LABEL_93;
_L4:
        return;
_L2:
        g = ch.f;
        a(ch1, g, new z("Log in attempt aborted."));
          goto _L4
        Exception exception;
        exception;
        throw exception;
        g = ch.g;
        a(ch1, g, ((Exception) (null)));
          goto _L4
    }

    private void n()
    {
        Object obj = p;
        obj;
        JVM INSTR monitorenter ;
        cd cd1 = r;
        cd cd2;
        cd2 = null;
        if (cd1 != null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        cd2 = new cd(this);
        r = cd2;
        obj;
        JVM INSTR monitorexit ;
        if (cd2 != null)
        {
            cd2.a();
        }
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private boolean o()
    {
        if (r == null)
        {
            Date date = new Date();
            if (g.a() && h.d().a() && date.getTime() - i.getTime() > 0x36ee80L && date.getTime() - h.e().getTime() > 0x5265c00L)
            {
                return true;
            }
        }
        return false;
    }

    private void p()
    {
        this;
        JVM INSTR monitorenter ;
        by by1 = o;
        by by2;
        by2 = null;
        if (by1 != null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        boolean flag = cj.b();
        by2 = null;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        String s1 = f;
        by2 = null;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        by2 = new by(this, s1, d);
        o = by2;
        this;
        JVM INSTR monitorexit ;
        if (by2 != null)
        {
            by2.execute(new Void[0]);
        }
        return;
        Exception exception;
        exception;
        throw exception;
    }

    final void a(Bundle bundle)
    {
        Object obj = p;
        obj;
        JVM INSTR monitorenter ;
        ch ch1 = g;
        bt.a[g.ordinal()];
        JVM INSTR tableswitch 4 5: default 48
    //                   4 73
    //                   5 91;
           goto _L1 _L2 _L3
_L1:
        a;
        (new StringBuilder("refreshToken ignored in state ")).append(g);
        return;
_L2:
        g = com.facebook.ch.e;
        a(ch1, g, ((Exception) (null)));
_L3:
        h = com.facebook.a.a(h, bundle);
        if (q != null)
        {
            q.a(h.f());
        }
        return;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void a(ca ca1)
    {
        a(ca1, p.a);
    }

    public final void a(cc cc)
    {
        List list = m;
        list;
        JVM INSTR monitorenter ;
        if (cc == null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        if (!m.contains(cc))
        {
            m.add(cc);
        }
        list;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    final void a(Date date)
    {
        i = date;
    }

    public final boolean a()
    {
        boolean flag;
        synchronized (p)
        {
            flag = g.a();
        }
        return flag;
    }

    public final ch b()
    {
        ch ch1;
        synchronized (p)
        {
            ch1 = g;
        }
        return ch1;
    }

    public final void b(ca ca1)
    {
        a(ca1, p.b);
    }

    public final void b(cc cc)
    {
        synchronized (m)
        {
            m.remove(cc);
        }
    }

    public final String c()
    {
        return f;
    }

    public final String d()
    {
        Object obj = p;
        obj;
        JVM INSTR monitorenter ;
        if (h != null) goto _L2; else goto _L1
_L1:
        String s1 = null;
_L4:
        obj;
        JVM INSTR monitorexit ;
        return s1;
_L2:
        String s2 = h.a();
        s1 = s2;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public final List e()
    {
        Object obj = p;
        obj;
        JVM INSTR monitorenter ;
        if (h != null) goto _L2; else goto _L1
_L1:
        List list = null;
_L4:
        obj;
        JVM INSTR monitorexit ;
        return list;
_L2:
        List list1 = h.c();
        list = list1;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public boolean equals(Object obj)
    {
        bo bo1;
        if (obj instanceof bo)
        {
            if (a((bo1 = (bo)obj).f, f) && a(bo1.l, l) && a(bo1.g, g) && a(bo1.l(), l()))
            {
                return true;
            }
        }
        return false;
    }

    public final void f()
    {
        if (q != null)
        {
            q.b();
        }
        t.b(d);
        m();
    }

    public int hashCode()
    {
        return 0;
    }

    final void i()
    {
        if (o())
        {
            n();
        }
    }

    final a j()
    {
        return h;
    }

    public String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder("{Session state:")).append(g).append(", token:");
        Object obj;
        StringBuilder stringbuilder1;
        String s1;
        if (h == null)
        {
            obj = "null";
        } else
        {
            obj = h;
        }
        stringbuilder1 = stringbuilder.append(obj).append(", appId:");
        if (f == null)
        {
            s1 = "null";
        } else
        {
            s1 = f;
        }
        return stringbuilder1.append(s1).append("}").toString();
    }

}
