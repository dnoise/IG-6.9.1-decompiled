// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.view.View;
import com.instagram.common.y.d;
import com.instagram.ui.widget.a.a;

// Referenced classes of package com.instagram.android.activity:
//            MainTabActivity, t

final class s
    implements android.view.View.OnClickListener
{

    final MainTabActivity a;

    s(MainTabActivity maintabactivity)
    {
        a = maintabactivity;
        super();
    }

    public final void onClick(View view)
    {
        MainTabActivity.c(a).a();
        if (!d.a("NewsfeedFragment.BROADCAST_SWITCH_TO_MODE_YOU"))
        {
            MainTabActivity.b(a, t.b);
            if (!com.instagram.android.activity.MainTabActivity.a(a, t.b))
            {
                com.instagram.android.activity.MainTabActivity.d(a, t.b);
                return;
            }
        }
    }
}
