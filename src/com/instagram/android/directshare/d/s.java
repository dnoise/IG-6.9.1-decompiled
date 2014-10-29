// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.instagram.android.directshare.d:
//            c

final class s extends BroadcastReceiver
{

    final c a;

    s(c c1)
    {
        a = c1;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        c.b(a);
    }
}
