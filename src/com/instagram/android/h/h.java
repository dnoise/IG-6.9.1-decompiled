// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.h;

import android.content.Intent;
import com.instagram.common.d.a;
import com.instagram.realtimeclient.RealtimeClient;
import com.instagram.realtimeclient.RealtimeOperationManager;

// Referenced classes of package com.instagram.android.h:
//            f

final class h
    implements a
{

    final f a;

    private h(f f1)
    {
        a = f1;
        super();
    }

    h(f f1, byte byte0)
    {
        this(f1);
    }

    public final void a(Intent intent)
    {
        if (!intent.getBooleanExtra("loggedin", false))
        {
            com.instagram.android.h.f.a(a).unsubscribe();
            com.instagram.android.h.f.a(a).setSubscription(null);
            f.b(a).clearOperations();
        }
    }
}
