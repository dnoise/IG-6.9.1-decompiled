// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.a.a;


// Referenced classes of package com.a.a:
//            k, j

final class m
    implements Runnable
{

    final String a;
    final k b;

    m(k k1, String s)
    {
        b = k1;
        a = s;
        super();
    }

    public final void run()
    {
        if (k.a(b) != null)
        {
            k.a(b).onMessage(a);
        }
    }
}
