// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.userservice;

import android.app.IntentService;
import android.content.Intent;
import com.instagram.f.d.a;
import com.instagram.user.userservice.a.d;
import com.instagram.user.userservice.b.f;

public class UserService extends IntentService
{

    public UserService()
    {
        super(com/instagram/user/userservice/UserService.toString());
    }

    protected void onHandleIntent(Intent intent)
    {
        String s = intent.getAction();
        if ("autocomplete".equals(s))
        {
            (new d()).a();
            a.a().d();
            com.instagram.common.y.d.a("DirectShareRecipientsStore.BROADCAST_TARGET_RECIPIENTS_CHANGED");
            return;
        }
        if ("suggestions".equals(s))
        {
            (new f()).a();
            com.instagram.common.y.d.a("DirectShareRecipientsStore.BROADCAST_TARGET_RECIPIENTS_CHANGED");
            return;
        } else
        {
            throw new UnsupportedOperationException("Intent is not supported by this UserService");
        }
    }
}
