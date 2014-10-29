// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package ch.boye.httpclientandroidlib.client.utils;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class CloneUtils
{

    private CloneUtils()
    {
    }

    public static Object clone(Object obj)
    {
        if (obj == null)
        {
            return null;
        }
        if (obj instanceof Cloneable)
        {
            Class class1 = obj.getClass();
            Method method;
            Object obj1;
            try
            {
                method = class1.getMethod("clone", null);
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                throw new NoSuchMethodError(nosuchmethodexception.getMessage());
            }
            try
            {
                obj1 = method.invoke(obj, null);
            }
            catch (InvocationTargetException invocationtargetexception)
            {
                Throwable throwable = invocationtargetexception.getCause();
                if (throwable instanceof CloneNotSupportedException)
                {
                    throw (CloneNotSupportedException)throwable;
                } else
                {
                    throw new Error("Unexpected exception", throwable);
                }
            }
            catch (IllegalAccessException illegalaccessexception)
            {
                throw new IllegalAccessError(illegalaccessexception.getMessage());
            }
            return obj1;
        } else
        {
            throw new CloneNotSupportedException();
        }
    }
}
