// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.b;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.facebook.b:
//            g, b, f, i

final class h extends Handler
{

    final g a;

    h(g g1)
    {
        a = g1;
        super();
    }

    public final void handleMessage(Message message)
    {
        String s;
        long l;
        s = message.getData().getString("access_token");
        l = 1000L * message.getData().getLong("expires_in");
        ((Bundle)message.getData().clone()).putLong("expires_in", l);
        if (s == null) goto _L2; else goto _L1
_L1:
        a.e.a(s);
        a.e.a(l);
        if (a.b != null)
        {
            a.b.a();
        }
_L4:
        a.c.unbindService(a);
        return;
_L2:
        if (a.b != null)
        {
            String s1 = message.getData().getString("error");
            if (message.getData().containsKey("error_code"))
            {
                int j = message.getData().getInt("error_code");
                a.b;
                new i(s1, null, j);
            } else
            {
                a.b;
                if (s1 == null)
                {
                    s1 = "Unknown service error";
                }
                new Error(s1);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
