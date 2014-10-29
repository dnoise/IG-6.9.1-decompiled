// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.View;
import com.instagram.android.widget.x;
import com.instagram.base.a.a.a;

// Referenced classes of package com.instagram.android.fragment:
//            cl, aw

final class cm
    implements android.view.View.OnClickListener
{

    final x a;
    final cl b;

    cm(cl cl1, x x1)
    {
        b = cl1;
        a = x1;
        super();
    }

    public final void onClick(View view)
    {
        if (a.c())
        {
            if (a == x.a)
            {
                (new a(b.p())).a(new aw()).a();
                return;
            } else
            {
                com.instagram.android.fragment.cl.a(b, view, a);
                return;
            }
        } else
        {
            a.a(b, com.instagram.android.fragment.cl.a(b));
            return;
        }
    }
}
