// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.a.c;


public final class l
{

    public final String a;
    public final long b;

    public final String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = Long.valueOf(b);
        aobj[1] = a;
        return String.format("[%d] %s", aobj);
    }
}
