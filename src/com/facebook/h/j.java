// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.h;


final class j
    implements java.util.Map.Entry
{

    private final String a;
    private final Object b;

    j(String s, Object obj)
    {
        a = s;
        b = obj;
    }

    private String a()
    {
        return a;
    }

    public final Object getKey()
    {
        return a();
    }

    public final Object getValue()
    {
        return b;
    }

    public final Object setValue(Object obj)
    {
        throw new UnsupportedOperationException("JSONObjectEntry is immutable");
    }
}
