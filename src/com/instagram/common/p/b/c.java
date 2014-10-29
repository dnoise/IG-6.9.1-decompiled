// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.p.b;


// Referenced classes of package com.instagram.common.p.b:
//            b

final class c
    implements Runnable
{

    final b a;

    c(b b1)
    {
        a = b1;
        super();
    }

    public final void run()
    {
        if (b.a(a))
        {
            if (!b.b(a))
            {
                b.a(a, true);
                b.c(a);
            }
        } else
        {
            b.a(a, false);
        }
        b.d(a);
    }
}
