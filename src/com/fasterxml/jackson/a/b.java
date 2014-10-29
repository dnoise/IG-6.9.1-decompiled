// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.fasterxml.jackson.a;


// Referenced classes of package com.fasterxml.jackson.a:
//            a

public final class b
{

    public static final a a;
    public static final a b;
    public static final a c;
    public static final a d;

    public static a a()
    {
        return b;
    }

    static 
    {
        a = new a("MIME", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", true, '=', 76);
        b = new a(a, "MIME-NO-LINEFEEDS");
        c = new a(a, "PEM", true, '=', 64);
        StringBuffer stringbuffer = new StringBuffer("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
        stringbuffer.setCharAt(stringbuffer.indexOf("+"), '-');
        stringbuffer.setCharAt(stringbuffer.indexOf("/"), '_');
        d = new a("MODIFIED-FOR-URL", stringbuffer.toString(), false, '\0', 0x7fffffff);
    }
}
