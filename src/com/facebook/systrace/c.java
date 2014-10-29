// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.systrace;


// Referenced classes of package com.facebook.systrace:
//            b

final class c
    implements Runnable
{

    c()
    {
    }

    public final void run()
    {
        b.b();
        try
        {
            Thread.sleep(1000L);
        }
        catch (InterruptedException interruptedexception) { }
        b.e();
        if (!b.f())
        {
            return;
        } else
        {
            b.g();
            return;
        }
    }
}
