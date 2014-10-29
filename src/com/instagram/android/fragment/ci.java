// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.DialogInterface;
import android.support.v4.app.s;

// Referenced classes of package com.instagram.android.fragment:
//            cf

final class ci
    implements android.content.DialogInterface.OnClickListener
{

    final String a;
    final s b;
    final String c;

    ci(String s, s s1, String s2)
    {
        a = s;
        b = s1;
        c = s2;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        cf.a(a, b, c);
    }
}
