// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.content.DialogInterface;
import android.support.v4.app.s;
import com.instagram.base.a.a.a;

// Referenced classes of package com.instagram.android.login.fragment:
//            aj, ad, h

final class ak
    implements android.content.DialogInterface.OnClickListener
{

    final aj a;

    ak(aj aj1)
    {
        a = aj1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        a.a.p().b(null);
        (new a(a.a.p())).a(new h()).a();
    }
}
