// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a.f;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public abstract class b
    implements Comparable
{

    protected final Type a;

    protected b()
    {
        Type type = getClass().getGenericSuperclass();
        if (type instanceof Class)
        {
            throw new IllegalArgumentException("Internal error: TypeReference constructed without actual type information");
        } else
        {
            a = ((ParameterizedType)type).getActualTypeArguments()[0];
            return;
        }
    }

    public final Type a()
    {
        return a;
    }

    public volatile int compareTo(Object obj)
    {
        return 0;
    }
}
