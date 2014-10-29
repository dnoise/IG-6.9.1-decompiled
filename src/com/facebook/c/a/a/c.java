// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.c.a.a;

import com.facebook.c.a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

// Referenced classes of package com.facebook.c.a.a:
//            d

public final class c
{

    public static final boolean a;
    public static final long b;
    private static final Method c;
    private static final Method d;
    private static volatile boolean e;

    private static transient Object a(Method method, Object aobj[])
    {
        Object obj;
        try
        {
            obj = method.invoke(null, (Object[])aobj);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            e = false;
            return null;
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            com.facebook.c.a.a(invocationtargetexception);
            return null;
        }
        return obj;
    }

    public static void a(boolean flag)
    {
        if (!e)
        {
            return;
        } else
        {
            Method method = d;
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.valueOf(true);
            a(method, aobj);
            return;
        }
    }

    public static boolean a(long l)
    {
        if (!e)
        {
            return false;
        }
        Method method = c;
        Object aobj[] = new Object[1];
        aobj[0] = Long.valueOf(l);
        Boolean boolean1 = (Boolean)a(method, aobj);
        if (boolean1 == null)
        {
            return false;
        } else
        {
            return boolean1.booleanValue();
        }
    }

    static 
    {
        boolean flag;
        d d1;
        if (android.os.Build.VERSION.SDK_INT >= 18)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = flag;
        if (a)
        {
            d1 = com.facebook.c.a.a.d.a();
        } else
        {
            d1 = null;
        }
        if (d1 != null)
        {
            c = d1.a;
            d = d1.b;
            b = d1.c;
            e = true;
            return;
        } else
        {
            c = null;
            d = null;
            b = 0L;
            e = false;
            return;
        }
    }
}
