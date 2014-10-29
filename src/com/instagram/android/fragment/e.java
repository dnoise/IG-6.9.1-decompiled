// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.os.Handler;
import android.os.Message;
import com.instagram.android.feed.a.a;

// Referenced classes of package com.instagram.android.fragment:
//            a

final class e extends Handler
{

    final com.instagram.android.fragment.a a;

    e(com.instagram.android.fragment.a a1)
    {
        a = a1;
        super();
    }

    public final void handleMessage(Message message)
    {
        if (a.W() != null)
        {
            a.W().notifyDataSetChanged();
        }
    }
}
