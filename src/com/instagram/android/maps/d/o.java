// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.d;

import android.content.DialogInterface;
import android.support.v4.app.k;

// Referenced classes of package com.instagram.android.maps.d:
//            l

final class o
    implements android.content.DialogInterface.OnClickListener
{

    final l a;

    o(l l1)
    {
        a = l1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        a.l().onBackPressed();
    }
}
