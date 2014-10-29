// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.support.v4.app.k;
import android.support.v4.app.s;
import android.view.View;

// Referenced classes of package com.instagram.android.activity:
//            MainTabActivity, t

final class n
    implements android.view.View.OnClickListener
{

    final t a;
    final MainTabActivity b;

    n(MainTabActivity maintabactivity, t t)
    {
        b = maintabactivity;
        a = t;
        super();
    }

    public final void onClick(View view)
    {
        k k1 = (k)b.getCurrentActivity();
        if (!MainTabActivity.a(b, a) || k1.d().g() > 0)
        {
            MainTabActivity.a(b, MainTabActivity.f(b), a);
        }
    }
}
