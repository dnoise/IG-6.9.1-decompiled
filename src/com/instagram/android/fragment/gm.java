// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.DialogInterface;
import com.instagram.l.b.a;

// Referenced classes of package com.instagram.android.fragment:
//            fy

final class gm
    implements android.content.DialogInterface.OnClickListener
{

    final fy a;

    gm(fy fy)
    {
        a = fy;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        com.instagram.l.b.a.a().h();
        com.instagram.h.a.a.a();
        dialoginterface.dismiss();
    }
}
