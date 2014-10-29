// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.s;
import com.facebook.av;
import com.instagram.android.fragment.fo;
import com.instagram.base.a.e;
import com.instagram.common.d.a;

// Referenced classes of package com.instagram.android.activity:
//            ActivityInTab

final class b
    implements a
{

    final ActivityInTab a;

    private b(ActivityInTab activityintab)
    {
        a = activityintab;
        super();
    }

    b(ActivityInTab activityintab, byte byte0)
    {
        this(activityintab);
    }

    public final void a(Intent intent)
    {
        if (intent.getExtras().getString("MainTabActivity.EXTRA_TAB_NAME").equals(a.f()))
        {
            s s1 = a.d();
            if (s1.c())
            {
                if (s1.g() > 0)
                {
                    a.g();
                    return;
                }
                android.support.v4.app.Fragment fragment = s1.a(av.layout_container_main);
                if (fragment instanceof e)
                {
                    ((e)fragment).s_();
                }
                if (fragment instanceof fo)
                {
                    ((fo)fragment).av();
                    return;
                }
            } else
            {
                com.instagram.android.activity.ActivityInTab.a(a);
                return;
            }
        }
    }
}
