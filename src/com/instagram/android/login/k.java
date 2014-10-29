// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login;

import com.instagram.m.b;
import com.instagram.m.c;

public final class k extends Enum
{

    public static final k a;
    public static final k b;
    public static final k c;
    private static final k e[];
    private final String d;

    private k(String s, int i, String s1)
    {
        super(s, i);
        d = s1;
    }

    private static k a(String s)
    {
        k ak[] = values();
        int i = ak.length;
        for (int j = 0; j < i; j++)
        {
            k k1 = ak[j];
            if (k1.a().equals(s))
            {
                return k1;
            }
        }

        return a;
    }

    public static k b()
    {
        k k1 = a(c.i.h());
        if (k1 == a)
        {
            k1 = a(c.j.h());
        }
        return k1;
    }

    public static k valueOf(String s)
    {
        return (k)Enum.valueOf(com/instagram/android/login/k, s);
    }

    public static k[] values()
    {
        return (k[])e.clone();
    }

    public final String a()
    {
        return d;
    }

    static 
    {
        a = new k("EmailOnly", 0, "email_only");
        b = new k("EmailFirst", 1, "email_first");
        c = new k("PhoneFirst", 2, "phone_first");
        k ak[] = new k[3];
        ak[0] = a;
        ak[1] = b;
        ak[2] = c;
        e = ak;
    }
}
