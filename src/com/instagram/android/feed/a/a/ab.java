// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.feed.a.a:
//            aa

final class ab
    implements android.content.DialogInterface.OnClickListener
{

    final aa a;

    ab(aa aa)
    {
        a = aa;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
    }
}
