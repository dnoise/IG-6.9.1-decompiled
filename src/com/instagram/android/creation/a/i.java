// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.view.View;
import com.instagram.android.k.b.e;
import com.instagram.common.a.a.j;
import com.instagram.service.a.a;
import java.util.List;

// Referenced classes of package com.instagram.android.creation.a:
//            d

final class i extends j
{

    final d a;

    i(d d1)
    {
        a = d1;
        super();
    }

    private void a(e e1)
    {
        super.a(e1);
        com.instagram.android.creation.a.d.e(a);
        List list = e1.b();
        list.remove(com.instagram.service.a.a.a().b());
        list.removeAll(d.f(a).b());
        d.f(a).a(list);
    }

    public final void a()
    {
        super.a();
        if (d.g(a) != null)
        {
            d.g(a).setVisibility(0);
        }
    }

    public final void a(com.instagram.common.l.a.e e1)
    {
        super.a(e1);
        if (d.g(a) != null)
        {
            d.g(a).setVisibility(8);
        }
    }

    public final volatile void a(Object obj)
    {
        a((e)obj);
    }
}
