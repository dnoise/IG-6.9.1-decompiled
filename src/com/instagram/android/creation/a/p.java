// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.view.View;
import android.view.ViewGroup;
import com.instagram.android.directshare.widget.DirectShareSearchEditText;
import com.instagram.android.directshare.widget.g;
import com.instagram.common.ui.a.a;
import com.instagram.common.y.e;
import com.instagram.creation.b.a.b;
import com.instagram.creation.b.a.f;

// Referenced classes of package com.instagram.android.creation.a:
//            d

final class p
    implements g
{

    final d a;

    p(d d1)
    {
        a = d1;
        super();
    }

    public final void a()
    {
        if (e.c(d.l(a).getText().toString()) && !d.i(a).N().b())
        {
            View view = d.p(a).getChildAt(-1 + d.o(a));
            if (com.instagram.android.creation.a.d.a(a))
            {
                f f1 = (f)view.getTag();
                d.i(a).N().b(f1);
                com.instagram.android.creation.a.d.a(a, false);
                return;
            } else
            {
                com.instagram.android.creation.a.d.a(a, true);
                d.q(a).a(view, 0.5F);
                return;
            }
        } else
        {
            com.instagram.android.creation.a.d.a(a, false);
            return;
        }
    }
}
