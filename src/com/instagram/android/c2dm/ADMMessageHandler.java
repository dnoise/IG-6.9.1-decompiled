// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c2dm;

import android.content.Intent;
import com.amazon.device.messaging.ADMMessageHandlerBase;
import com.instagram.common.i.c;
import com.instagram.common.u.b.g;

// Referenced classes of package com.instagram.android.c2dm:
//            c

public class ADMMessageHandler extends ADMMessageHandlerBase
{

    public ADMMessageHandler()
    {
        super(com/instagram/android/c2dm/ADMMessageHandler.getName());
    }

    protected void onMessage(Intent intent)
    {
        c.a().a(intent);
    }

    protected void onRegistered(String s)
    {
        c.a();
        c.a(getApplicationContext(), s, g.a);
    }

    protected void onRegistrationError(String s)
    {
        c.b("ADMMessagehandler onRegistrationError", s);
    }

    protected void onUnregistered(String s)
    {
        c.a();
        getApplicationContext();
    }
}
