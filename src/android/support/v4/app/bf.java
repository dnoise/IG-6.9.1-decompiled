// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Notification;

// Referenced classes of package android.support.v4.app:
//            be, ba, bq

final class bf extends be
{

    bf()
    {
    }

    public final Notification a(ba ba1)
    {
        Notification notification = ba1.w;
        android.widget.RemoteViews remoteviews = notification.contentView;
        notification.setLatestEventInfo(ba1.a, ba1.b, ba1.c, ba1.d);
        if (remoteviews != null)
        {
            notification.contentView = remoteviews;
        }
        Notification notification1 = bq.a(notification, ba1.a, ba1.b, ba1.c, ba1.d, ba1.e);
        if (ba1.j > 0)
        {
            notification1.flags = 0x80 | notification1.flags;
        }
        return notification1;
    }
}
