// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.feed.survey:
//            q

final class r
    implements android.content.DialogInterface.OnDismissListener
{

    final q a;

    r(q q1)
    {
        a = q1;
        super();
    }

    public final void onDismiss(DialogInterface dialoginterface)
    {
        q.a(a);
    }
}
