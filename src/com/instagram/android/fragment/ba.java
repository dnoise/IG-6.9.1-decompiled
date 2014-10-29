// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.DialogInterface;
import android.support.v4.app.k;
import com.instagram.share.b.a;

// Referenced classes of package com.instagram.android.fragment:
//            az, aw

final class ba
    implements android.content.DialogInterface.OnClickListener
{

    final az a;

    ba(az az1)
    {
        a = az1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        com.instagram.share.b.a.a(true);
        dialoginterface.dismiss();
        a.a.l().onBackPressed();
    }
}
