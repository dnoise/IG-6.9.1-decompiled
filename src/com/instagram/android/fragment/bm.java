// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.fragment:
//            bi

final class bm
    implements android.content.DialogInterface.OnClickListener
{

    final bi a;

    bm(bi bi1)
    {
        a = bi1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        bi.a(a);
    }
}
