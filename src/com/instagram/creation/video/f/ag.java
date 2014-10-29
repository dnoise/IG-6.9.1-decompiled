// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.instagram.creation.video.f:
//            ad

final class ag extends BroadcastReceiver
{

    final ad a;

    private ag(ad ad1)
    {
        a = ad1;
        super();
    }

    ag(ad ad1, byte byte0)
    {
        this(ad1);
    }

    public final void onReceive(Context context, Intent intent)
    {
        ad.b(a);
    }
}
