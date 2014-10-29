// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.g;

import android.util.Log;
import com.facebook.ak;
import com.facebook.cj;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.facebook.g:
//            u

public final class n
{

    private static final HashMap a = new HashMap();
    private final ak b;
    private final String c;
    private StringBuilder d;
    private int e;

    public n(ak ak1, String s)
    {
        e = 3;
        u.a(s, "tag");
        b = ak1;
        c = (new StringBuilder("FacebookSDK.")).append(s).toString();
        d = new StringBuilder();
    }

    public static void a(ak ak1, int i, String s, String s1)
    {
        if (cj.a(ak1))
        {
            String s2 = c(s1);
            if (!s.startsWith("FacebookSDK."))
            {
                s = (new StringBuilder("FacebookSDK.")).append(s).toString();
            }
            Log.println(i, s, s2);
            if (ak1 == ak.e)
            {
                (new Exception()).printStackTrace();
            }
        }
    }

    public static void a(ak ak1, String s, String s1)
    {
        a(ak1, 3, s, s1);
    }

    public static transient void a(ak ak1, String s, String s1, Object aobj[])
    {
        if (cj.a(ak1))
        {
            a(ak1, 3, s, String.format(s1, aobj));
        }
    }

    public static void a(String s)
    {
        com/facebook/g/n;
        JVM INSTR monitorenter ;
        if (!cj.a(ak.b))
        {
            a(s, "ACCESS_TOKEN_REMOVED");
        }
        com/facebook/g/n;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private static void a(String s, String s1)
    {
        com/facebook/g/n;
        JVM INSTR monitorenter ;
        a.put(s, s1);
        com/facebook/g/n;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private transient void a(String s, Object aobj[])
    {
        if (b())
        {
            d.append(String.format(s, aobj));
        }
    }

    private boolean b()
    {
        return cj.a(b);
    }

    private static String c(String s)
    {
        com/facebook/g/n;
        JVM INSTR monitorenter ;
        Iterator iterator = a.entrySet().iterator();
_L1:
        String s1;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_64;
        }
        java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
        s1 = s.replace((CharSequence)entry.getKey(), (CharSequence)entry.getValue());
        s = s1;
          goto _L1
        com/facebook/g/n;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    private void d(String s)
    {
        a(b, e, c, s);
    }

    public final void a()
    {
        d(d.toString());
        d = new StringBuilder();
    }

    public final void a(String s, Object obj)
    {
        a("  %s:\t%s\n", new Object[] {
            s, obj
        });
    }

    public final void b(String s)
    {
        if (b())
        {
            d.append(s);
        }
    }

}
