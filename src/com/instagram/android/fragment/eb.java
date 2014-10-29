// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.instagram.android.fragment:
//            ea

final class eb extends Handler
{

    final ea a;

    eb(ea ea1)
    {
        a = ea1;
        super();
    }

    public final void handleMessage(Message message)
    {
        if (message.what == 1)
        {
            a.b(a.ad());
        }
    }
}
