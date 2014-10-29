// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.d;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.d:
//            j

final class k
    implements android.content.DialogInterface.OnClickListener
{

    final j a;

    k(j j)
    {
        a = j;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
    }
}
