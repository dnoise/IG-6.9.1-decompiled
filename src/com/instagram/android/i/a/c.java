// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.i.a;

import android.support.v4.app.s;
import android.view.View;
import com.facebook.av;
import com.instagram.android.i.a;
import com.instagram.android.i.b;
import com.instagram.common.analytics.g;

// Referenced classes of package com.instagram.android.i.a:
//            d

final class c
    implements android.view.View.OnClickListener
{

    final d a;
    final s b;
    final String c;
    final String d;

    c(d d1, s s1, String s2, String s3)
    {
        a = d1;
        b = s1;
        c = s2;
        d = s3;
        super();
    }

    public final void onClick(View view)
    {
        a.a();
        com.instagram.android.i.b.a((g)b.a(av.layout_container_main), a.d, c, null, d);
    }
}
