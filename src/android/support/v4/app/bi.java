// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Notification;
import android.os.Bundle;

// Referenced classes of package android.support.v4.app:
//            be, bu, ba, av, 
//            bt

class bi extends be
{

    bi()
    {
    }

    public Notification a(ba ba1)
    {
        bu bu1 = new bu(ba1.a, ba1.w, ba1.b, ba1.c, ba1.h, ba1.f, ba1.i, ba1.d, ba1.e, ba1.g, ba1.n, ba1.o, ba1.p, ba1.k, ba1.j, ba1.m, ba1.u, ba1.v, ba1.q, ba1.r, ba1.s);
        av.a(bu1, ba1.t);
        av.a(bu1, ba1.l);
        return bu1.b();
    }

    public Bundle a(Notification notification)
    {
        return bt.a(notification);
    }
}
