// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Notification;

// Referenced classes of package android.support.v4.app:
//            ba

public abstract class bk
{

    ba d;
    CharSequence e;
    CharSequence f;
    boolean g;

    public bk()
    {
        g = false;
    }

    public final Notification a()
    {
        ba ba1 = d;
        Notification notification = null;
        if (ba1 != null)
        {
            notification = d.d();
        }
        return notification;
    }

    public final void a(ba ba1)
    {
        if (d != ba1)
        {
            d = ba1;
            if (d != null)
            {
                d.a(this);
            }
        }
    }
}
