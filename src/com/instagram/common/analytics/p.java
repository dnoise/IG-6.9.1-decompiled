// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.instagram.common.analytics:
//            o

final class p extends BroadcastReceiver
{

    final o a;

    p(o o1)
    {
        a = o1;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        if (isInitialStickyBroadcast())
        {
            return;
        } else
        {
            o.a(a, context);
            return;
        }
    }
}
