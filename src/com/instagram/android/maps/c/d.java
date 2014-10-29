// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.c;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.instagram.android.maps.c:
//            c

final class d extends Handler
{

    final c a;

    d(c c1)
    {
        a = c1;
        super();
    }

    public final void handleMessage(Message message)
    {
        super.handleMessage(message);
        c.a(a);
    }
}
