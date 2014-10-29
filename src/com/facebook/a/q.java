// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class q
{

    public static String a(Class class1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        Field afield[] = class1.getFields();
        int i = afield.length;
        int j = 0;
        while (j < i) 
        {
            Field field = afield[j];
            stringbuilder.append(field.getName()).append("=");
            try
            {
                stringbuilder.append(field.get(null).toString());
            }
            catch (Exception exception)
            {
                stringbuilder.append("N/A");
            }
            stringbuilder.append("\n");
            j++;
        }
        return stringbuilder.toString();
    }

    public static String b(Class class1)
    {
        StringBuilder stringbuilder = new StringBuilder();
        Method amethod[] = class1.getMethods();
        int i = amethod.length;
        int j = 0;
        while (j < i) 
        {
            Method method = amethod[j];
            if (method.getParameterTypes().length == 0 && (method.getName().startsWith("get") || method.getName().startsWith("is")) && !method.getName().equals("getClass"))
            {
                try
                {
                    stringbuilder.append(method.getName()).append('=').append(method.invoke(null, null)).append("\n");
                }
                catch (IllegalArgumentException illegalargumentexception) { }
                catch (IllegalAccessException illegalaccessexception) { }
                catch (InvocationTargetException invocationtargetexception) { }
            }
            j++;
        }
        return stringbuilder.toString();
    }
}
