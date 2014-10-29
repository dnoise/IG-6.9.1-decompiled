// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.a.a;


// Referenced classes of package com.a.a:
//            k, j

final class q
    implements Runnable
{

    final Exception a;
    final k b;

    q(k k1, Exception exception)
    {
        b = k1;
        a = exception;
        super();
    }

    public final void run()
    {
        if (k.a(b) != null)
        {
            k.a(b).onError(a);
        }
    }
}
