// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.d;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import com.instagram.common.l.a.f;

// Referenced classes of package com.instagram.common.d:
//            f, c, g

public abstract class b
    implements com.instagram.common.d.f
{

    public b()
    {
    }

    public final g a()
    {
        return new c(this);
    }

    protected abstract void a(BroadcastReceiver broadcastreceiver);

    protected abstract void a(BroadcastReceiver broadcastreceiver, IntentFilter intentfilter);

    public abstract void a(Intent intent);

    public final void a(String s)
    {
        a(new Intent((String)f.a(s)));
    }
}
