// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.fragment:
//            bx

final class cb
    implements android.content.DialogInterface.OnClickListener
{

    final bx a;

    cb(bx bx1)
    {
        a = bx1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        bx.a(a);
    }
}
