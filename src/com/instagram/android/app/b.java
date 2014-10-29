// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.a.e;
import com.instagram.android.service.AutoCompleteHashtagService;
import com.instagram.bugreport.rageshake.a;
import com.instagram.common.j.g;
import com.instagram.user.c.d;
import com.instagram.user.userservice.UserService;

// Referenced classes of package com.instagram.android.app:
//            InstagramApplicationForMainProcess

final class b extends BroadcastReceiver
{

    final InstagramApplicationForMainProcess a;
    private a b;

    b(InstagramApplicationForMainProcess instagramapplicationformainprocess)
    {
        a = instagramapplicationformainprocess;
        super();
    }

    private a a()
    {
        if (b == null)
        {
            b = new a(InstagramApplicationForMainProcess.access$100(a));
        }
        return b;
    }

    public final void onReceive(Context context, Intent intent)
    {
        String s = intent.getStringExtra("userid");
        if (s == null)
        {
            s = "0";
        }
        com.instagram.e.a.b(s);
        if (intent.getBooleanExtra("loggedin", false))
        {
            if (!com.instagram.common.s.b.d())
            {
                com.instagram.common.p.a.b.a().a(a());
            }
            Intent intent1 = new Intent(context, com/instagram/user/userservice/UserService);
            intent1.setAction("autocomplete");
            InstagramApplicationForMainProcess.access$100(a).startService(intent1);
            Intent intent2 = new Intent(context, com/instagram/user/userservice/UserService);
            intent2.setAction("suggestions");
            InstagramApplicationForMainProcess.access$100(a).startService(intent2);
            InstagramApplicationForMainProcess.access$100(a).startService(new Intent(context, com/instagram/android/service/AutoCompleteHashtagService));
            g.a().a(com/instagram/user/c/d, InstagramApplicationForMainProcess.access$200(a));
            e.a(context).a(InstagramApplicationForMainProcess.access$300(a), new IntentFilter("InboxFragment.ADD_MEDIA_TO_INBOX"));
            return;
        }
        if (!com.instagram.common.s.b.d())
        {
            a().c();
            com.instagram.common.p.a.b.a().b(a());
        }
        g.a().b(com/instagram/user/c/d, InstagramApplicationForMainProcess.access$200(a));
        e.a(context).a(InstagramApplicationForMainProcess.access$300(a));
    }
}
