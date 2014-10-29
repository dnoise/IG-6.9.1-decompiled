// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.instagram.creation.video.f:
//            av, ar

final class ba extends BroadcastReceiver
{

    final ar a;

    private ba(ar ar1)
    {
        a = ar1;
        super();
    }

    ba(ar ar1, byte byte0)
    {
        this(ar1);
    }

    public final void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        if (s.equals("VideoEditFragment.INTENT_ACTION_EDIT_MODE"))
        {
            ar.a(a, intent.getIntExtra("VideoEditFragment.EDIT_MODE", av.a.d));
        } else
        if (s.equals("VideoEditFragment.INTENT_ACTION_START_SHARE_SCREEN"))
        {
            ar.a(a);
            return;
        }
    }
}
