// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.i;


// Referenced classes of package com.facebook.i:
//            c

public final class b extends Exception
{

    private c a;
    private String b;

    public b(c c, String s)
    {
        super(s);
        b = s;
        a = c;
    }

    public final c a()
    {
        return a;
    }

    public final String toString()
    {
        return (new StringBuilder("Error type: ")).append(a).append(". ").append(b).toString();
    }
}
