// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.c;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

// Referenced classes of package com.instagram.user.c:
//            a

final class b extends Handler
{

    b(Looper looper)
    {
        super(looper);
    }

    public final void handleMessage(Message message)
    {
        a.g((String)message.obj);
    }
}
