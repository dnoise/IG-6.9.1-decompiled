// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.e;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import java.util.Map;

// Referenced classes of package com.instagram.android.feed.e:
//            a, d

final class b extends Handler
{

    final a a;

    b(a a1)
    {
        a = a1;
        super();
    }

    public final void handleMessage(Message message)
    {
        if (message.what == 0)
        {
            String s = message.getData().getString("pending_media_key");
            com.instagram.creation.b.a.b b1 = (com.instagram.creation.b.a.b)com.instagram.android.feed.e.a.a(a).get(s);
            com.instagram.android.feed.e.a.a(a, b1);
            if (com.instagram.android.feed.e.a.b(a) != null)
            {
                com.instagram.android.feed.e.a.b(a).a(b1.B());
            }
        }
    }
}
