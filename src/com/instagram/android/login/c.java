// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login;

import java.util.List;

// Referenced classes of package com.instagram.android.login:
//            b

public final class c extends Enum
{

    public static final c a;
    public static final c b;
    public static final c c;
    public static final c d;
    public static final c e;
    public static final c f;
    public static final c g;
    public static final c h;
    public static final c i;
    public static final c j;
    private static final c m[];
    public String k;
    public List l;

    private c(String s, int i1, String s1, List list)
    {
        super(s, i1);
        k = s1;
        l = list;
    }

    public static c valueOf(String s)
    {
        return (c)Enum.valueOf(com/instagram/android/login/c, s);
    }

    public static c[] values()
    {
        return (c[])m.clone();
    }

    static 
    {
        a = new c("HOTMAIL", 0, "hotmail.com", b.a);
        b = new c("YAHOO", 1, "yahoo.com", b.c);
        c = new c("GMAIL", 2, "gmail.com", b.b);
        d = new c("AOL", 3, "aol.com", b.d);
        e = new c("HOTMAIL_UK", 4, "hotmail.co.uk", b.e);
        f = new c("LIVE", 5, "live.com", b.f);
        g = new c("MAIL_RU", 6, "mail.ru", b.g);
        h = new c("HOTMAIL_FR", 7, "hotmail.fr", b.h);
        i = new c("MSN", 8, "msn.com", b.i);
        j = new c("COMCAST", 9, "comcast.net", b.j);
        c ac[] = new c[10];
        ac[0] = a;
        ac[1] = b;
        ac[2] = c;
        ac[3] = d;
        ac[4] = e;
        ac[5] = f;
        ac[6] = g;
        ac[7] = h;
        ac[8] = i;
        ac[9] = j;
        m = ac;
    }
}
