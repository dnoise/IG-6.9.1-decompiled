// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;


// Referenced classes of package android.support.v4.app:
//            u

final class aa
    implements Runnable
{

    final Exception a;
    final u b;

    aa(u u, Exception exception)
    {
        b = u;
        a = exception;
        super();
    }

    public final void run()
    {
        throw new RuntimeException("Re-posting exception from listener", a);
    }
}
