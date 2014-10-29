// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.instagram.android.fragment:
//            fo

final class fv extends BroadcastReceiver
{

    final fo a;

    private fv(fo fo1)
    {
        a = fo1;
        super();
    }

    fv(fo fo1, byte byte0)
    {
        this(fo1);
    }

    public final void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals("PendingMediaManager.BROADCAST_INTENT_NEW_MEDIA"))
        {
            fo.a(a);
        }
    }
}
