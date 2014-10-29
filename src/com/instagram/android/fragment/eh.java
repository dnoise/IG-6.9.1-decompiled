// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Filter;
import com.facebook.az;
import com.instagram.android.a.b;
import com.instagram.android.c.a.d;
import com.instagram.android.feed.a;
import com.instagram.android.g.c;
import java.util.List;

// Referenced classes of package com.instagram.android.fragment:
//            ea, ei, cf, ef

public final class eh extends ea
{

    private d a;
    private b b;

    public eh()
    {
    }

    static b a(eh eh1)
    {
        return eh1.b;
    }

    protected final int V()
    {
        return az.search_for_a_tag;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        a = new d(n(), z(), new ei(this));
    }

    protected final void a(AdapterView adapterview, int i)
    {
        c c1 = (c)adapterview.getItemAtPosition(i);
        List list = ((b)c()).b();
        String as[] = new String[list.size()];
        for (int j = 0; j < list.size(); j++)
        {
            as[j] = ((c)list.get(j)).a();
        }

        Y().a(this, c().getCount(), c1.a(), i - 1, ad(), as);
        com.instagram.android.j.c.a(c1.a());
        com.instagram.android.fragment.cf.a(l(), c1.a(), r().p(), null);
    }

    protected final void a(String s)
    {
        Y().a(this, c().getCount(), s);
        a.a(s);
    }

    public final int b()
    {
        return com.instagram.android.fragment.ef.a;
    }

    protected final BaseAdapter c()
    {
        if (b == null)
        {
            b = new b(n());
        }
        return b;
    }

    protected final Filter d()
    {
        return b.getFilter();
    }

    public final String j_()
    {
        return "search_tags";
    }
}
