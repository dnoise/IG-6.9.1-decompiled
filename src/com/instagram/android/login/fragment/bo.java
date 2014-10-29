// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.content.DialogInterface;
import com.instagram.p.b;
import java.util.List;

// Referenced classes of package com.instagram.android.login.fragment:
//            an, RegisterParameters, bx

final class bo
    implements android.content.DialogInterface.OnClickListener
{

    final boolean a;
    final an b;

    bo(an an1, boolean flag)
    {
        b = an1;
        a = flag;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        String s = (String)an.m(b).b().get(i);
        an.d(b, s);
        an.a(b, bx.c);
        an.n(b);
        b.T.b().a("username", s).a("rank", i).a();
        if (a)
        {
            an.o(b);
        }
    }
}
