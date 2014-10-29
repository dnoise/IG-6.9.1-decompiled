// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.view.View;

// Referenced classes of package com.instagram.android.activity:
//            MainTabActivity, c

final class o
    implements android.view.View.OnClickListener
{

    final MainTabActivity a;

    o(MainTabActivity maintabactivity)
    {
        a = maintabactivity;
        super();
    }

    public final void onClick(View view)
    {
        MainTabActivity.g(a).a(false);
    }
}
