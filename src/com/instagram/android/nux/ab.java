// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.nux:
//            n

final class ab
    implements android.content.DialogInterface.OnClickListener
{

    final n a;

    ab(n n)
    {
        a = n;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
    }
}
