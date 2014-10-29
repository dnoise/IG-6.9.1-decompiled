// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Notification;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package android.support.v4.app:
//            bo, ct, au

final class bt
{

    private static final Object a = new Object();
    private static Field b;
    private static boolean c;
    private static final Object d = new Object();

    public static Bundle a(android.app.Notification.Builder builder, bo bo1)
    {
        builder.addAction(bo1.a(), bo1.b(), bo1.c());
        Bundle bundle = new Bundle(bo1.d());
        if (bo1.e() != null)
        {
            bundle.putParcelableArray("android.support.remoteInputs", ct.a(bo1.e()));
        }
        return bundle;
    }

    public static Bundle a(Notification notification)
    {
label0:
        {
            synchronized (a)
            {
                if (!c)
                {
                    break label0;
                }
            }
            return null;
        }
        Field field;
        if (b != null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        field = android/app/Notification.getDeclaredField("extras");
        if (android/os/Bundle.isAssignableFrom(field.getType()))
        {
            break MISSING_BLOCK_LABEL_60;
        }
        Log.e("NotificationCompat", "Notification.extras field is not of type Bundle");
        c = true;
        obj;
        JVM INSTR monitorexit ;
        return null;
        field.setAccessible(true);
        b = field;
        Bundle bundle = (Bundle)b.get(notification);
        if (bundle != null)
        {
            break MISSING_BLOCK_LABEL_106;
        }
        bundle = new Bundle();
        b.set(notification, bundle);
        obj;
        JVM INSTR monitorexit ;
        return bundle;
        exception;
        throw exception;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        Log.e("NotificationCompat", "Unable to access notification extras", illegalaccessexception);
_L1:
        c = true;
        obj;
        JVM INSTR monitorexit ;
        return null;
        NoSuchFieldException nosuchfieldexception;
        nosuchfieldexception;
        Log.e("NotificationCompat", "Unable to access notification extras", nosuchfieldexception);
          goto _L1
    }

    public static SparseArray a(List list)
    {
        SparseArray sparsearray = null;
        int i = list.size();
        for (int j = 0; j < i; j++)
        {
            Bundle bundle = (Bundle)list.get(j);
            if (bundle == null)
            {
                continue;
            }
            if (sparsearray == null)
            {
                sparsearray = new SparseArray();
            }
            sparsearray.put(j, bundle);
        }

        return sparsearray;
    }

    public static void a(au au1, CharSequence charsequence, boolean flag, CharSequence charsequence1, Bitmap bitmap, Bitmap bitmap1, boolean flag1)
    {
        android.app.Notification.BigPictureStyle bigpicturestyle = (new android.app.Notification.BigPictureStyle(au1.a())).setBigContentTitle(charsequence).bigPicture(bitmap);
        if (flag1)
        {
            bigpicturestyle.bigLargeIcon(bitmap1);
        }
        if (flag)
        {
            bigpicturestyle.setSummaryText(charsequence1);
        }
    }

    public static void a(au au1, CharSequence charsequence, boolean flag, CharSequence charsequence1, CharSequence charsequence2)
    {
        android.app.Notification.BigTextStyle bigtextstyle = (new android.app.Notification.BigTextStyle(au1.a())).setBigContentTitle(charsequence).bigText(charsequence2);
        if (flag)
        {
            bigtextstyle.setSummaryText(charsequence1);
        }
    }

    public static void a(au au1, CharSequence charsequence, boolean flag, CharSequence charsequence1, ArrayList arraylist)
    {
        android.app.Notification.InboxStyle inboxstyle = (new android.app.Notification.InboxStyle(au1.a())).setBigContentTitle(charsequence);
        if (flag)
        {
            inboxstyle.setSummaryText(charsequence1);
        }
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); inboxstyle.addLine((CharSequence)iterator.next())) { }
    }

}
