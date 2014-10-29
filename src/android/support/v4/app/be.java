// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Notification;
import android.os.Bundle;

// Referenced classes of package android.support.v4.app:
//            bc, ba

class be
    implements bc
{

    be()
    {
    }

    public Notification a(ba ba1)
    {
        Notification notification = ba1.w;
        notification.setLatestEventInfo(ba1.a, ba1.b, ba1.c, ba1.d);
        if (ba1.j > 0)
        {
            notification.flags = 0x80 | notification.flags;
        }
        return notification;
    }

    public Bundle a(Notification notification)
    {
        return null;
    }
}
