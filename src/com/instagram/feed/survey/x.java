// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.content.DialogInterface;
import android.os.Handler;
import android.view.ViewConfiguration;

// Referenced classes of package com.instagram.feed.survey:
//            q, ak, j

final class x
    implements android.content.DialogInterface.OnShowListener
{

    final j a;
    final q b;

    x(q q1, j j)
    {
        b = q1;
        a = j;
        super();
    }

    public final void onShow(DialogInterface dialoginterface)
    {
        ak.a(a, q.e(b));
        q.f(b).sendEmptyMessageDelayed(2, ViewConfiguration.getDoubleTapTimeout());
    }
}
