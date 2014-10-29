// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.app.Dialog;
import android.view.View;

// Referenced classes of package com.instagram.feed.survey:
//            q

final class ag
    implements android.view.View.OnClickListener
{

    final android.content.DialogInterface.OnClickListener a;
    final Dialog b;
    final q c;

    ag(q q, android.content.DialogInterface.OnClickListener onclicklistener, Dialog dialog)
    {
        c = q;
        a = onclicklistener;
        b = dialog;
        super();
    }

    public final void onClick(View view)
    {
        if (a != null)
        {
            a.onClick(b, -1);
        }
    }
}
