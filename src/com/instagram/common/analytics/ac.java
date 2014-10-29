// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.analytics;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.instagram.common.analytics:
//            ab, ak

final class ac extends Handler
{

    final ab a;

    ac(ab ab1)
    {
        a = ab1;
        super();
    }

    public final void handleMessage(Message message)
    {
        if (message.what == 1)
        {
            ab.a(a);
        } else
        if (message.what == 2)
        {
            ab.a(a, new ak(a, (byte)0));
            return;
        }
    }
}
