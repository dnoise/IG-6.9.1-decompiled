// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.app.Dialog;
import android.view.View;

// Referenced classes of package com.instagram.feed.survey:
//            q

final class af
    implements android.view.View.OnClickListener
{

    final Dialog a;
    final q b;

    af(q q, Dialog dialog)
    {
        b = q;
        a = dialog;
        super();
    }

    public final void onClick(View view)
    {
        a.dismiss();
    }
}
