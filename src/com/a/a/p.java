// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.a.a;


// Referenced classes of package com.a.a:
//            k, j

final class p
    implements Runnable
{

    final int a;
    final String b;
    final k c;

    p(k k1, int i, String s)
    {
        c = k1;
        a = i;
        b = s;
        super();
    }

    public final void run()
    {
        if (k.a(c) != null)
        {
            k.a(c).onDisconnect(a, b);
        }
    }
}
