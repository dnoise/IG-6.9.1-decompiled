// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.View;
import com.facebook.az;
import com.instagram.b.c.a;

// Referenced classes of package com.instagram.android.fragment:
//            fy

final class gb
    implements android.view.View.OnClickListener
{

    final fy a;

    gb(fy fy1)
    {
        a = fy1;
        super();
    }

    public final void onClick(View view)
    {
        com.instagram.b.c.a.a().a(a.l(), "starred_posts");
        com.instagram.android.fragment.fy.a(a, "/xwoiynko", az.about_ads);
    }
}
