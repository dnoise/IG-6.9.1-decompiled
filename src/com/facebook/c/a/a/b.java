// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.c.a.a;

import java.lang.reflect.Method;

final class b
{

    public final Method a;
    public final Method b;
    public final Method c;

    private b(Method method, Method method1, Method method2)
    {
        a = method;
        b = method1;
        c = method2;
    }

    public static b a()
    {
        Method method;
        Method method1;
        Method method2;
        Class class1 = Class.forName("android.os.SystemProperties");
        method = class1.getMethod("get", new Class[] {
            java/lang/String
        });
        Class aclass[] = new Class[2];
        aclass[0] = java/lang/String;
        aclass[1] = Long.TYPE;
        method1 = class1.getMethod("getLong", aclass);
        if (android.os.Build.VERSION.SDK_INT < 16)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        method2 = class1.getMethod("addChangeCallback", new Class[] {
            java/lang/Runnable
        });
_L1:
        b b1 = new b(method2, method, method1);
        return b1;
        method2 = null;
          goto _L1
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        return null;
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        return null;
    }
}
