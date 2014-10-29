// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.instagram.android.login.fragment:
//            an

final class ao extends Handler
{

    final an a;

    ao(an an1)
    {
        a = an1;
        super();
    }

    public final void handleMessage(Message message)
    {
        super.handleMessage(message);
        if (a.l() != null && message.what == 1)
        {
            an.a(a, an.a(a));
        }
    }
}
