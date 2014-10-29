// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;


// Referenced classes of package android.support.v4.app:
//            u, r

final class y
    implements Runnable
{

    final int a;
    final int b = 1;
    final u c;

    y(u u1, int i, int j)
    {
        c = u1;
        a = i;
        super();
    }

    public final void run()
    {
        u u1 = c;
        c.o.b();
        u1.a(null, a, b);
    }
}
