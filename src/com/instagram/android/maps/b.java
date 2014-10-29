// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.instagram.android.maps:
//            PhotoMapsActivity

final class b extends BroadcastReceiver
{

    final PhotoMapsActivity a;

    b(PhotoMapsActivity photomapsactivity)
    {
        a = photomapsactivity;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        PhotoMapsActivity.a(a);
    }
}
