// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.h;

import com.facebook.aa;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

// Referenced classes of package com.facebook.h:
//            e

abstract class f
    implements InvocationHandler
{

    protected final Object a;

    protected f(Object obj)
    {
        a = obj;
    }

    protected final Object a(Method method)
    {
        throw new aa((new StringBuilder()).append(getClass().getName()).append(" got an unexpected method signature: ").append(method.toString()).toString());
    }

    protected final Object a(Method method, Object aobj[])
    {
        String s = method.getName();
        if (s.equals("equals"))
        {
            Object obj = aobj[0];
            if (obj == null)
            {
                return Boolean.valueOf(false);
            }
            InvocationHandler invocationhandler = Proxy.getInvocationHandler(obj);
            if (!(invocationhandler instanceof e))
            {
                return Boolean.valueOf(false);
            } else
            {
                e e1 = (e)invocationhandler;
                return Boolean.valueOf(a.equals(e1.a));
            }
        }
        if (s.equals("toString"))
        {
            return toString();
        } else
        {
            return method.invoke(a, aobj);
        }
    }
}
