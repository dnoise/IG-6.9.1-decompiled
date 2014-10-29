// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.app.Dialog;
import android.content.DialogInterface;

// Referenced classes of package com.instagram.feed.survey:
//            q, ak, j

final class ah
    implements android.content.DialogInterface.OnClickListener
{

    final j a;
    final q b;

    ah(q q1, j j)
    {
        b = q1;
        a = j;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        ak.a(a, q.e(b), true);
        q.d(b).show();
    }
}
