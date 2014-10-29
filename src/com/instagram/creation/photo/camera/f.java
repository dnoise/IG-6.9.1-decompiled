// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.camera;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.instagram.creation.photo.camera:
//            c

final class f extends BroadcastReceiver
{

    final c a;

    f(c c1)
    {
        a = c1;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if (s.equals("android.intent.action.MEDIA_MOUNTED") || s.equals("android.intent.action.MEDIA_UNMOUNTED") || s.equals("android.intent.action.MEDIA_CHECKING"))
        {
            c.h(a);
        } else
        if (s.equals("android.intent.action.MEDIA_SCANNER_FINISHED"))
        {
            c.h(a);
            return;
        }
    }
}
