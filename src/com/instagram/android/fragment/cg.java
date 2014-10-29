// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.instagram.android.feed.a.j;

// Referenced classes of package com.instagram.android.fragment:
//            cf

final class cg extends BroadcastReceiver
{

    final cf a;

    cg(cf cf1)
    {
        a = cf1;
        super();
    }

    public final void onReceive(Context context, Intent intent)
    {
        ((j)a.W()).notifyDataSetChanged();
    }
}
