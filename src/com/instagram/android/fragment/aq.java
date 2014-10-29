// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.View;
import android.widget.AbsListView;
import com.instagram.android.a.m;
import com.instagram.android.a.n;
import com.instagram.base.b.b;
import com.instagram.user.follow.h;

// Referenced classes of package com.instagram.android.fragment:
//            ey, fj, fc

public final class aq extends ey
    implements fj
{

    private b ac;

    public aq()
    {
    }

    public final void W()
    {
        ((fc)r()).a(this);
    }

    public final void X()
    {
        ((fc)r()).a(this);
    }

    public final boolean Y()
    {
        return true;
    }

    protected final m Z()
    {
        if (i == null)
        {
            i = (new n(l())).a(z()).a(r().p()).a().b().c().d().a(3).a(h.a).e();
        }
        return i;
    }

    public final void a(View view, Bundle bundle)
    {
        if (b.a(this))
        {
            ac = ((fc)r()).at();
            ((fc)r()).a(this);
        }
        super.a(view, bundle);
    }

    public final String j_()
    {
        return "explore_people";
    }

    public final void onScroll(AbsListView abslistview, int i, int j, int k)
    {
        super.onScroll(abslistview, i, j, k);
        if (ac != null && j > 0 && y())
        {
            ac.onScroll(abslistview, i, j, k);
        }
    }

    public final void onScrollStateChanged(AbsListView abslistview, int i)
    {
        super.onScrollStateChanged(abslistview, i);
        if (ac != null && y())
        {
            ac.onScrollStateChanged(abslistview, i);
        }
    }

    public final void t_()
    {
        if (!e())
        {
            aa();
        }
    }

    public final void u_()
    {
        if (ab)
        {
            aa();
        }
    }
}
