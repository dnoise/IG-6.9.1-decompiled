// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.feed.survey:
//            q, ak, j

final class s
    implements android.content.DialogInterface.OnDismissListener
{

    final j a;
    final q b;

    s(q q1, j j)
    {
        b = q1;
        a = j;
        super();
    }

    public final void onDismiss(DialogInterface dialoginterface)
    {
        ak.a(a, q.e(b), false);
    }
}
