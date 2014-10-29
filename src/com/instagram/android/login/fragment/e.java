// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.instagram.api.h.d;
import com.instagram.p.b;

// Referenced classes of package com.instagram.android.login.fragment:
//            a

final class e
    implements android.view.View.OnClickListener
{

    final a a;

    e(a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(View view)
    {
        b.al.c();
        a.a(new Intent("android.intent.action.VIEW", Uri.parse(d.a("http://help.instagram.com/", a.l()))));
    }
}
