// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.a;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.instagram.android.k.a:
//            a

final class d extends Handler
{

    final a a;

    private d(a a1)
    {
        a = a1;
        super();
    }

    d(a a1, byte byte0)
    {
        this(a1);
    }

    public final void handleMessage(Message message)
    {
        a.notifyDataSetChanged();
    }
}
