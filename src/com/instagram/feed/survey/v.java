// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.content.DialogInterface;
import android.os.Handler;

// Referenced classes of package com.instagram.feed.survey:
//            q

final class v
    implements android.content.DialogInterface.OnShowListener
{

    final q a;

    v(q q1)
    {
        a = q1;
        super();
    }

    public final void onShow(DialogInterface dialoginterface)
    {
        q.f(a).sendEmptyMessageDelayed(4, 1000L);
    }
}
