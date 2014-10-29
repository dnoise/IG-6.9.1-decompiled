// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Handler;
import com.instagram.android.login.c.a;
import com.instagram.api.j.f;
import com.instagram.ui.widget.spinner.RefreshSpinner;

// Referenced classes of package com.instagram.android.login.fragment:
//            an, aq

final class ap extends f
{

    final an a;

    ap(an an1)
    {
        a = an1;
        super();
    }

    private void a(com.instagram.android.g.a a1)
    {
        an.c(a).post(new aq(this, a1));
    }

    public final void a()
    {
        if (an.s(a).e().equals(com.instagram.android.login.fragment.an.a(a)))
        {
            an.t(a).setVisibility(0);
        }
        super.a();
    }

    protected final volatile void a(Object obj)
    {
        a((com.instagram.android.g.a)obj);
    }

    public final void b()
    {
        an.u(a);
        an.t(a).setVisibility(8);
        super.b();
    }
}
