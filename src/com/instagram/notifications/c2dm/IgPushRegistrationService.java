// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.notifications.c2dm;

import android.app.IntentService;
import android.content.Intent;
import android.os.Bundle;
import com.instagram.common.a.a.f;
import com.instagram.common.a.a.k;
import com.instagram.common.u.b.g;

// Referenced classes of package com.instagram.notifications.c2dm:
//            b, a

public class IgPushRegistrationService extends IntentService
{

    private static final Class a = com/instagram/notifications/c2dm/IgPushRegistrationService;
    private final k b = new f();

    public IgPushRegistrationService()
    {
        super(com/instagram/notifications/c2dm/IgPushRegistrationService.toString());
    }

    static Class a()
    {
        return a;
    }

    protected void onHandleIntent(Intent intent)
    {
        b b1 = new b(intent.getExtras().getString("PushRegistrationService.DEVICE_TOKEN"), (g)intent.getExtras().getSerializable("PushRegistrationService.PUSH_DEVICE_TYPE"), (byte)0);
        b1.a(new a((byte)0));
        b.a(b1);
    }

}
