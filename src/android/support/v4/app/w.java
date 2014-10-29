// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;


// Referenced classes of package android.support.v4.app:
//            u, r

final class w
    implements Runnable
{

    final u a;

    w(u u1)
    {
        a = u1;
        super();
    }

    public final void run()
    {
        u u1 = a;
        a.o.b();
        u1.a(null, -1, 0);
    }
}
