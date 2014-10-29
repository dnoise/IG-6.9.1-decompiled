// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.a.a;


// Referenced classes of package com.a.a:
//            k, j

final class o
    implements Runnable
{

    final k a;

    o(k k1)
    {
        a = k1;
        super();
    }

    public final void run()
    {
        if (k.a(a) != null)
        {
            k.a(a).onPing();
        }
    }
}
