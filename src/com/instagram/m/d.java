// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.m;

import com.instagram.common.y.e;
import java.util.Map;

public final class d
{

    private String a;
    private Map b;

    public d()
    {
    }

    public d(String s, Map map)
    {
        a = s;
        b = map;
    }

    public final String a(String s)
    {
        return (String)b.get(s);
    }

    public final Map a()
    {
        return b;
    }

    public final String b()
    {
        return a;
    }

    public final String toString()
    {
        Object aobj[] = new Object[2];
        aobj[0] = a;
        aobj[1] = b;
        return e.a("<QuickExperiment name: %s parameters: %s>", aobj);
    }
}
