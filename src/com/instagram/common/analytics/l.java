// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;

// Referenced classes of package com.instagram.common.analytics:
//            AnalyticsUploadAlarmReceiver

final class l extends Enum
{

    public static final l a;
    public static final l b;
    private static final l f[];
    private final String c;
    private final long d;
    private boolean e;

    private l(String s, int i, String s1, long l1)
    {
        super(s, i);
        c = s1;
        d = l1;
    }

    public static l a(String s)
    {
        l al[] = values();
        int i = al.length;
        for (int j = 0; j < i; j++)
        {
            l l1 = al[j];
            if (l1.c.equals(s))
            {
                return l1;
            }
        }

        return null;
    }

    public static l valueOf(String s)
    {
        return (l)Enum.valueOf(com/instagram/common/analytics/l, s);
    }

    public static l[] values()
    {
        return (l[])f.clone();
    }

    final void a()
    {
        e = false;
    }

    public final void a(Context context, AlarmManager alarmmanager)
    {
        if (e)
        {
            return;
        } else
        {
            Intent intent = new Intent(context, com/instagram/common/analytics/AnalyticsUploadAlarmReceiver);
            intent.setAction(c);
            PendingIntent pendingintent = PendingIntent.getBroadcast(context, 0, intent, 0);
            alarmmanager.set(2, SystemClock.elapsedRealtime() + d, pendingintent);
            e = true;
            return;
        }
    }

    static 
    {
        a = new l("BatchUpload", 0, "action_batch_upload", 0x493e0L);
        b = new l("UploadRetry", 1, "action_upload_retry", 0x36ee80L);
        l al[] = new l[2];
        al[0] = a;
        al[1] = b;
        f = al;
    }
}
