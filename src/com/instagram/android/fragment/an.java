// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import com.instagram.android.g.a;
import com.instagram.android.login.b.d;
import com.instagram.api.j.f;

// Referenced classes of package com.instagram.android.fragment:
//            ac

final class an extends f
{

    final ac a;

    an(ac ac1)
    {
        a = ac1;
        super();
    }

    private void a(a a1)
    {
        com.instagram.android.fragment.ac.a(a, a1);
        if (ac.c(a) == null || ac.c(a).getText().length() == 0 || !ac.c(a).getText().toString().equals(a1.a()))
        {
            return;
        }
        if (a1.b())
        {
            ac.k(a);
            return;
        } else
        {
            ac.l(a);
            d.a(a1);
            return;
        }
    }

    public final void a()
    {
        if (ac.m(a) != null)
        {
            ac.m(a).setVisibility(0);
        }
        super.a();
    }

    protected final volatile void a(Object obj)
    {
        a((a)obj);
    }

    public final void b()
    {
        if (ac.m(a) != null)
        {
            ac.m(a).setVisibility(8);
        }
        super.b();
    }
}
