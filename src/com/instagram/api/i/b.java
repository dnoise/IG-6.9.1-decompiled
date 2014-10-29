// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.i;

import com.instagram.api.b.a;
import com.instagram.common.y.e;
import com.instagram.strings.StringBridge;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class b
{

    private static String a = null;

    public static com.instagram.common.a.c.b a(String s)
    {
        com.instagram.common.a.c.b b1 = new com.instagram.common.a.c.b();
        Object aobj[] = new Object[2];
        aobj[0] = b(s);
        aobj[1] = s;
        b1.a("signed_body", e.a("%s.%s", aobj));
        b1.a("ig_sig_key_version", "4");
        return b1;
    }

    public static void a(com.instagram.common.a.c.b b1)
    {
        b1.a("ig_sig_key_version", "4");
        b1.a("ig_sig", b(b1.a(true)));
    }

    public static com.instagram.common.a.c.b b(com.instagram.common.a.c.b b1)
    {
        a a1 = new a();
        java.util.Map.Entry entry;
        for (Iterator iterator = b1.b().entrySet().iterator(); iterator.hasNext(); a1.a((String)entry.getKey(), (String)entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

        com.instagram.common.a.c.b b2 = a(a1.toString());
        b2.a(b1.c());
        return b2;
    }

    private static String b(String s)
    {
        return StringBridge.getSignatureString(s.getBytes());
    }

}
