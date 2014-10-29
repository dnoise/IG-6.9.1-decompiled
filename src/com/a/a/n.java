// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.a.a;


// Referenced classes of package com.a.a:
//            k, j

final class n
    implements Runnable
{

    final byte a[];
    final k b;

    n(k k1, byte abyte0[])
    {
        b = k1;
        a = abyte0;
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
