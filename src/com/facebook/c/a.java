// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.c;

import java.lang.reflect.InvocationTargetException;

public final class a
{

    public static void a(InvocationTargetException invocationtargetexception)
    {
        Throwable throwable = invocationtargetexception.getTargetException();
        if (throwable instanceof RuntimeException)
        {
            throw (RuntimeException)throwable;
        }
        if (throwable instanceof Error)
        {
            throw (Error)throwable;
        } else
        {
            return;
        }
    }
}
