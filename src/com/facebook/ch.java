// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;


// Referenced classes of package com.facebook:
//            ci

public final class ch extends Enum
{

    public static final ch a;
    public static final ch b;
    public static final ch c;
    public static final ch d;
    public static final ch e;
    public static final ch f;
    public static final ch g;
    private static final ch i[];
    private final int h;

    private ch(String s, int j, int k)
    {
        super(s, j);
        h = k;
    }

    public static ch valueOf(String s)
    {
        return (ch)Enum.valueOf(com/facebook/ch, s);
    }

    public static ch[] values()
    {
        return (ch[])i.clone();
    }

    public final boolean a()
    {
        return h == ci.b;
    }

    public final boolean b()
    {
        return h == ci.c;
    }

    static 
    {
        a = new ch("CREATED", 0, ci.a);
        b = new ch("CREATED_TOKEN_LOADED", 1, ci.a);
        c = new ch("OPENING", 2, ci.a);
        d = new ch("OPENED", 3, ci.b);
        e = new ch("OPENED_TOKEN_UPDATED", 4, ci.b);
        f = new ch("CLOSED_LOGIN_FAILED", 5, ci.c);
        g = new ch("CLOSED", 6, ci.c);
        ch ach[] = new ch[7];
        ach[0] = a;
        ach[1] = b;
        ach[2] = c;
        ach[3] = d;
        ach[4] = e;
        ach[5] = f;
        ach[6] = g;
        i = ach;
    }
}
