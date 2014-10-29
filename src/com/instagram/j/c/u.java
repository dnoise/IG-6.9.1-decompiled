// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.j.c;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.instagram.j.e.a;
import com.instagram.ui.d.b;

// Referenced classes of package com.instagram.j.c:
//            s, g

final class u extends BroadcastReceiver
{

    final s a;

    u(s s1)
    {
        a = s1;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        if ("NewsfeedYouFragment.UPDATE_NEWSFEED_YOU".equals(intent.getAction()))
        {
            com.instagram.j.c.s.b(a);
            s.c(a);
            if (a.E() != null)
            {
                b.a(false, a.E());
                a.W();
            }
            ((g)a.r()).a(a);
            if (com.instagram.j.e.a.a().g())
            {
                ((g)a.r()).b(a);
            }
        }
    }
}
