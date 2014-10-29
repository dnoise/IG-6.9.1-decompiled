// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.c.a.a;

import android.os.Trace;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

final class d
{

    public final Method a;
    public final Method b;
    public final long c;

    private d(Method method, Method method1, long l)
    {
        a = method;
        b = method1;
        c = l;
    }

    public static d a()
    {
        Method method;
        Method method1;
        Field field;
        Class aclass[] = new Class[1];
        aclass[0] = Long.TYPE;
        method = android/os/Trace.getMethod("isTagEnabled", aclass);
        Class aclass1[] = new Class[1];
        aclass1[0] = Boolean.TYPE;
        method1 = android/os/Trace.getMethod("setAppTracingAllowed", aclass1);
        field = android/os/Trace.getField("TRACE_TAG_APP");
        if (field.getType() != Long.TYPE)
        {
            return null;
        }
        d d1;
        try
        {
            d1 = new d(method, method1, field.getLong(null));
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            return null;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            return null;
        }
        catch (NoSuchFieldException nosuchfieldexception)
        {
            return null;
        }
        return d1;
    }
}
