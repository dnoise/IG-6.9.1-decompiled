// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.b.a;


public class f
{

    private final String a;
    private final String b;
    private final String c;

    public f(String s, String s1, String s2)
    {
        a = s;
        b = s1;
        c = s2;
    }

    public final String a()
    {
        return b;
    }

    public final String b()
    {
        return a;
    }

    public final String c()
    {
        return c;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null || getClass() != obj.getClass())
            {
                return false;
            }
            f f1 = (f)obj;
            if (!a.equals(f1.a))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return a.hashCode();
    }
}
