// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;


// Referenced classes of package android.support.v4.app:
//            u, r

final class x
    implements Runnable
{

    final String a;
    final int b = 1;
    final u c;

    x(u u1, String s, int i)
    {
        c = u1;
        a = s;
        super();
    }

    public final void run()
    {
        u u1 = c;
        c.o.b();
        u1.a(a, -1, b);
    }
}
