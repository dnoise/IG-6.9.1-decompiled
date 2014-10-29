// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c2dm.a;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.support.v4.app.ay;
import android.support.v4.app.ba;
import android.support.v4.app.bb;
import com.facebook.au;
import com.instagram.android.activity.MainTabActivity;
import com.instagram.android.c2dm.ClearNotificationReceiver;
import com.instagram.common.g.b.h;
import com.instagram.notifications.a.a;
import com.instagram.notifications.a.b;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

public final class c
{

    public static Notification a(Context context, List list, ba ba1)
    {
        b b1 = (b)list.get(-1 + list.size());
        String s = b1.g();
        Bitmap bitmap = null;
        if (s != null)
        {
            bitmap = h.a().b(com.instagram.o.b.a(context, b1.g()));
        }
        if (bitmap != null)
        {
            return (new ay(ba1)).a(bitmap).a(b1.d()).a();
        } else
        {
            return ba1.d();
        }
    }

    public static PendingIntent a(Context context, Intent intent)
    {
        return PendingIntent.getBroadcast(context, 64278, intent, 0x10000000);
    }

    private static PendingIntent a(Context context, b b1, boolean flag)
    {
        Intent intent = new Intent(context, com/instagram/android/activity/MainTabActivity);
        intent.setFlags(0x4000000);
        android.net.Uri.Builder builder = Uri.parse((new StringBuilder("ig://")).append(b1.f()).toString()).buildUpon();
        builder.appendQueryParameter("notif_dummy", UUID.randomUUID().toString());
        if (flag)
        {
            builder.appendQueryParameter("has_comment", Boolean.TRUE.toString());
        }
        intent.setData(builder.build());
        intent.putExtra("from_notification_id", b1.k());
        return PendingIntent.getActivity(context, 64278, intent, 0x8000000);
    }

    public static Intent a(Context context, String s)
    {
        Intent intent = new Intent(context, com/instagram/android/c2dm/ClearNotificationReceiver);
        intent.setData(com.instagram.android.c2dm.b.a(s));
        return intent;
    }

    private static Intent a(Context context, String s, String s1)
    {
        Intent intent = new Intent(context, com/instagram/android/c2dm/ClearNotificationReceiver);
        intent.setData(com.instagram.android.c2dm.b.a(s, s1));
        return intent;
    }

    private static Bitmap a(Context context, Bitmap bitmap)
    {
        float f = context.getResources().getDimension(0x1050005);
        float f1 = context.getResources().getDimension(0x1050006);
        float f2 = Math.min(f / (float)bitmap.getWidth(), f1 / (float)bitmap.getHeight());
        if (f2 >= 1.0F)
        {
            return bitmap;
        } else
        {
            float f3 = f2 * (float)bitmap.getWidth();
            float f4 = f2 * (float)bitmap.getHeight();
            return Bitmap.createScaledBitmap(bitmap, (int)f3, (int)f4, true);
        }
    }

    public static ba a(Context context, String s, String s1, List list)
    {
        b b1 = (b)list.get(-1 + list.size());
        PendingIntent pendingintent = a(context, a(context, s, s1));
        PendingIntent pendingintent1 = a(context, b1, a(list));
        ba ba1 = (new ba(context)).a(pendingintent1).a().c(Integer.toString(list.size())).a(b1.c()).b(b1.d()).b(pendingintent).d(b1.e()).a(au.notification_icon);
        if ("default".equals(b1.j()))
        {
            ba1.c();
        }
        Bitmap bitmap;
        if (b1.h() != null)
        {
            bitmap = h.a().b(b1.h());
        } else
        {
            bitmap = null;
        }
        if (bitmap != null)
        {
            if (android.os.Build.VERSION.SDK_INT >= 11)
            {
                bitmap = a(context, bitmap);
            }
            ba1.a(bitmap);
        }
        return ba1;
    }

    static void a(bb bb1, List list)
    {
        for (int i = -1 + list.size(); i >= 0; i--)
        {
            bb1.b(((b)list.get(i)).d());
        }

    }

    private static boolean a(List list)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            b b1 = (b)iterator.next();
            if (a.g.equals(b1.b()))
            {
                return true;
            }
        }

        return false;
    }
}
