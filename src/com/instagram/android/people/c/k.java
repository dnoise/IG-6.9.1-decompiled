// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.c;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.instagram.api.h.d;

// Referenced classes of package com.instagram.android.people.c:
//            a

final class k
    implements android.view.View.OnClickListener
{

    final a a;

    k(a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(View view)
    {
        com.instagram.android.people.c.a.f(a).startActivity(new Intent("android.intent.action.VIEW", Uri.parse(d.a("http://help.instagram.com/433611883398929", com.instagram.android.people.c.a.f(a)))));
    }
}
