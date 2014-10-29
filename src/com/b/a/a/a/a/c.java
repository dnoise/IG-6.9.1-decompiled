// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a.a.a.a;


final class c extends ThreadLocal
{

    c()
    {
    }

    private static char[] a()
    {
        return new char[1024];
    }

    protected final Object initialValue()
    {
        return a();
    }
}
