// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.view.View;
import com.instagram.common.y.d;
import com.instagram.ui.widget.a.a;

// Referenced classes of package com.instagram.android.activity:
//            MainTabActivity, t

final class p
    implements android.view.View.OnClickListener
{

    final t a;
    final MainTabActivity b;

    p(MainTabActivity maintabactivity, t t1)
    {
        b = maintabactivity;
        a = t1;
        super();
    }

    public final void onClick(View view)
    {
        if (com.instagram.android.activity.MainTabActivity.a(b, a))
        {
            MainTabActivity.b(b, a);
            if (a == t.b)
            {
                if (MainTabActivity.b(b).getVisibility() == 0)
                {
                    d.a("NewsfeedFragment.BROADCAST_SWITCH_TO_MODE_YOU");
                } else
                if (MainTabActivity.c(b) != null)
                {
                    MainTabActivity.c(b).a();
                    return;
                }
            }
        }
    }
}
