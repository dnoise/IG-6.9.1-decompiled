// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.instagram.j.a.c;

// Referenced classes of package com.instagram.j.c:
//            a

final class b extends BroadcastReceiver
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals("com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"))
        {
            com.instagram.j.c.a.a(a).notifyDataSetChanged();
        }
    }
}
