// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.widget.RemoteViews;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package android.support.v4.app:
//            at, au, bt, bo

public final class bu
    implements at, au
{

    private android.app.Notification.Builder a;
    private final Bundle b = new Bundle();
    private List c;

    public bu(Context context, Notification notification, CharSequence charsequence, CharSequence charsequence1, CharSequence charsequence2, RemoteViews remoteviews, int i, 
            PendingIntent pendingintent, PendingIntent pendingintent1, Bitmap bitmap, int j, int k, boolean flag, boolean flag1, 
            int l, CharSequence charsequence3, boolean flag2, Bundle bundle, String s, boolean flag3, String s1)
    {
        c = new ArrayList();
        android.app.Notification.Builder builder = (new android.app.Notification.Builder(context)).setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteviews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS);
        boolean flag4;
        android.app.Notification.Builder builder1;
        boolean flag5;
        android.app.Notification.Builder builder2;
        boolean flag6;
        android.app.Notification.Builder builder3;
        boolean flag7;
        if ((2 & notification.flags) != 0)
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        builder1 = builder.setOngoing(flag4);
        if ((8 & notification.flags) != 0)
        {
            flag5 = true;
        } else
        {
            flag5 = false;
        }
        builder2 = builder1.setOnlyAlertOnce(flag5);
        if ((0x10 & notification.flags) != 0)
        {
            flag6 = true;
        } else
        {
            flag6 = false;
        }
        builder3 = builder2.setAutoCancel(flag6).setDefaults(notification.defaults).setContentTitle(charsequence).setContentText(charsequence1).setSubText(charsequence3).setContentInfo(charsequence2).setContentIntent(pendingintent).setDeleteIntent(notification.deleteIntent);
        if ((0x80 & notification.flags) != 0)
        {
            flag7 = true;
        } else
        {
            flag7 = false;
        }
        a = builder3.setFullScreenIntent(pendingintent1, flag7).setLargeIcon(bitmap).setNumber(i).setUsesChronometer(flag1).setPriority(l).setProgress(j, k, flag);
        if (bundle != null)
        {
            b.putAll(bundle);
        }
        if (flag2)
        {
            b.putBoolean("android.support.localOnly", true);
        }
        if (s != null)
        {
            b.putString("android.support.groupKey", s);
            if (flag3)
            {
                b.putBoolean("android.support.isGroupSummary", true);
            } else
            {
                b.putBoolean("android.support.useSideChannel", true);
            }
        }
        if (s1 != null)
        {
            b.putString("android.support.sortKey", s1);
        }
    }

    public final android.app.Notification.Builder a()
    {
        return a;
    }

    public final void a(bo bo)
    {
        c.add(bt.a(a, bo));
    }

    public final Notification b()
    {
        Notification notification = a.build();
        Bundle bundle = bt.a(notification);
        Bundle bundle1 = new Bundle(b);
        Iterator iterator = b.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            if (bundle.containsKey(s))
            {
                bundle1.remove(s);
            }
        } while (true);
        bundle.putAll(bundle1);
        android.util.SparseArray sparsearray = bt.a(c);
        if (sparsearray != null)
        {
            bt.a(notification).putSparseParcelableArray("android.support.actionExtras", sparsearray);
        }
        return notification;
    }
}
