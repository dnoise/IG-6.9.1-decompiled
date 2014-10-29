// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.g;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.facebook.bo;

// Referenced classes of package com.facebook.g:
//            q

final class r extends BroadcastReceiver
{

    final q a;

    private r(q q1)
    {
        a = q1;
        super();
    }

    r(q q1, byte byte0)
    {
        this(q1);
    }

    public final void onReceive(Context context, Intent intent)
    {
        if ("com.facebook.sdk.ACTIVE_SESSION_SET".equals(intent.getAction()))
        {
            bo bo1 = bo.g();
            if (bo1 != null)
            {
                bo1.a(q.a(a));
            }
        }
    }
}
