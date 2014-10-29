// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.login.fragment:
//            an

final class bm
    implements android.content.DialogInterface.OnClickListener
{

    final an a;

    bm(an an)
    {
        a = an;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
    }
}
