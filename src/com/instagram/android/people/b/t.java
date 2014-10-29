// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.b;

import android.content.Intent;
import android.net.Uri;
import android.text.style.ClickableSpan;
import android.view.View;
import com.instagram.api.h.d;

// Referenced classes of package com.instagram.android.people.b:
//            q

final class t extends ClickableSpan
{

    final q a;

    t(q q1)
    {
        a = q1;
        super();
    }

    public final void onClick(View view)
    {
        a.a(new Intent("android.intent.action.VIEW", Uri.parse(d.a("http://help.instagram.com/433611883398929", a.l()))));
    }
}
