// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.view.View;

// Referenced classes of package com.instagram.android.activity:
//            TumblrAuthActivity

final class v
    implements android.view.View.OnClickListener
{

    final TumblrAuthActivity a;

    v(TumblrAuthActivity tumblrauthactivity)
    {
        a = tumblrauthactivity;
        super();
    }

    public final void onClick(View view)
    {
        TumblrAuthActivity.a(a);
    }
}
