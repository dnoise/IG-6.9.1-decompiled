// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.c.a.a;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

// Referenced classes of package com.facebook.c.a.a:
//            b

public final class a
{

    private static final Method a;
    private static final Method b;
    private static final Method c;
    private static volatile boolean d;

    private static transient Object a(Method method, Object aobj[])
    {
        if (method == null)
        {
            return null;
        }
        Object obj;
        try
        {
            obj = method.invoke(null, (Object[])aobj);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            d = false;
            return null;
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            com.facebook.c.a.a(invocationtargetexception);
            return null;
        }
        return obj;
    }

    public static String a(String s)
    {
        String s1;
        if (!d)
        {
            s1 = "";
        } else
        {
            s1 = (String)a(a, new Object[] {
                s
            });
            if (s1 == null)
            {
                return "";
            }
        }
        return s1;
    }

    public static void a(Runnable runnable)
    {
        if (!d)
        {
            return;
        } else
        {
            a(c, new Object[] {
                runnable
            });
            return;
        }
    }

    static 
    {
        b b1 = com.facebook.c.a.a.b.a();
        if (b1 != null)
        {
            c = b1.a;
            a = b1.b;
            b = b1.c;
            d = true;
        } else
        {
            c = null;
            a = null;
            b = null;
            d = false;
        }
    }
}
