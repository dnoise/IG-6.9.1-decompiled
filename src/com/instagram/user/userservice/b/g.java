// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.userservice.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.instagram.common.y.c.a;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.user.userservice.b:
//            h

public final class g extends BroadcastReceiver
{

    public g()
    {
    }

    public final void onReceive(Context context, Intent intent)
    {
        if ("InboxFragment.ADD_MEDIA_TO_INBOX".equals(intent.getAction()))
        {
            a.a().execute(new h(this));
        }
    }
}
