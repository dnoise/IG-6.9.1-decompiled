// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import java.io.Serializable;

// Referenced classes of package com.facebook:
//            t, a

final class s
    implements Serializable
{

    final int a;
    final a b;
    final String c;

    private s(int i, a a1, String s1)
    {
        b = a1;
        c = s1;
        a = i;
    }

    static s a(a a1)
    {
        return new s(t.a, a1, null);
    }

    static s a(String s1)
    {
        return new s(t.b, null, s1);
    }

    static s a(String s1, String s2)
    {
        if (s2 != null)
        {
            s1 = (new StringBuilder()).append(s1).append(": ").append(s2).toString();
        }
        return new s(t.c, null, s1);
    }
}
