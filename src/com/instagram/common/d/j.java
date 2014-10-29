// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.d;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.a.e;
import com.instagram.common.l.a.f;

// Referenced classes of package com.instagram.common.d:
//            b

public final class j extends b
{

    private final e a;

    public j(Context context)
    {
        a = e.a((Context)f.a(context));
    }

    protected final void a(BroadcastReceiver broadcastreceiver)
    {
        a.a(broadcastreceiver);
    }

    protected final void a(BroadcastReceiver broadcastreceiver, IntentFilter intentfilter)
    {
        a.a(broadcastreceiver, intentfilter);
    }

    public final void a(Intent intent)
    {
        a.a(intent);
    }
}
