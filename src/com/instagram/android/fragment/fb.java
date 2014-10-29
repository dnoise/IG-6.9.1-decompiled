// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.widget.Toast;
import com.facebook.az;
import com.instagram.android.a.m;
import com.instagram.api.j.f;
import com.instagram.api.j.j;
import com.instagram.ui.d.b;
import java.util.ArrayList;

// Referenced classes of package com.instagram.android.fragment:
//            ey

final class fb extends f
{

    final ey a;

    fb(ey ey1)
    {
        a = ey1;
        super();
    }

    private void a(ArrayList arraylist)
    {
        ey.a(a);
        a.Z().a(arraylist);
        a.a(arraylist);
        com.instagram.ui.d.b.a(false, a.E());
    }

    public final void a()
    {
        ey.a(a, true);
        a.ab = false;
        a.W();
    }

    protected final void a(j j)
    {
        com.instagram.ui.d.b.a(false, a.E());
        Toast.makeText(a.n(), az.tabbed_explore_people_fail, 0).show();
    }

    protected final volatile void a(Object obj)
    {
        a((ArrayList)obj);
    }

    public final void b()
    {
        ey.a(a, false);
        a.X();
    }
}
