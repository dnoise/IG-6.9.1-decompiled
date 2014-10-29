// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.instagram.j.a.a;

// Referenced classes of package com.instagram.j.c:
//            s

final class t extends BroadcastReceiver
{

    final s a;

    t(s s1)
    {
        a = s1;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals("com.instagram.android.widget.BROADCAST_FOLLOW_STATUS_CHANGED"))
        {
            com.instagram.j.c.s.a(a).notifyDataSetChanged();
        }
    }
}
