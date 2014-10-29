// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.os.Handler;
import android.os.Message;
import com.instagram.android.a.m;

// Referenced classes of package com.instagram.android.fragment:
//            dn

final class do extends Handler
{

    final dn a;

    do(dn dn1)
    {
        a = dn1;
        super();
    }

    public final void handleMessage(Message message)
    {
        dn.a(a).notifyDataSetChanged();
    }
}
