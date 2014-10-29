// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.registrationpush;

import com.facebook.az;

public final class b extends Enum
{

    public static final b a;
    public static final b b;
    public static final b c;
    private static final b f[];
    private final String d;
    private final int e;

    private b(String s, int i, String s1, int j)
    {
        super(s, i);
        d = s1;
        e = j;
    }

    public static b a(String s)
    {
        b ab[] = values();
        int i = ab.length;
        for (int j = 0; j < i; j++)
        {
            b b1 = ab[j];
            if (b1.a().equals(s))
            {
                return b1;
            }
        }

        return null;
    }

    public static b valueOf(String s)
    {
        return (b)Enum.valueOf(com/instagram/registrationpush/b, s);
    }

    public static b[] values()
    {
        return (b[])f.clone();
    }

    public final String a()
    {
        return d;
    }

    public final int b()
    {
        return e;
    }

    static 
    {
        a = new b("Friends", 0, "friends", az.local_push_friends);
        b = new b("Photos", 1, "photos", az.local_push_photos);
        c = new b("Finish", 2, "finish", az.local_push_finish);
        b ab[] = new b[3];
        ab[0] = a;
        ab[1] = b;
        ab[2] = c;
        f = ab;
    }
}
