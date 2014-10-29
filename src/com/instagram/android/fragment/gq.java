// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.View;
import com.facebook.az;
import com.instagram.api.h.d;
import com.instagram.simplewebview.SimpleWebViewActivity;

// Referenced classes of package com.instagram.android.fragment:
//            fy

final class gq
    implements android.view.View.OnClickListener
{

    final fy a;

    gq(fy fy1)
    {
        a = fy1;
        super();
    }

    public final void onClick(View view)
    {
        SimpleWebViewActivity.a(a.l(), d.a("/push/preferences/", true), a.c(az.notifications));
    }
}
