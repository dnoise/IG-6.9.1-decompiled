// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.u;


final class m
{

    static final String a()
    {
        return "aggregated";
    }

    static final String a(String s)
    {
        return (new StringBuilder()).append(s).append("|showing").toString();
    }

    static final String a(String s, int i)
    {
        return (new StringBuilder()).append(s).append("|").append(i).toString();
    }
}
