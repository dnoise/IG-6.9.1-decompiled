// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.a;

import android.view.ViewConfiguration;
import com.instagram.android.feed.a.b.ac;
import com.instagram.android.l.a.c;
import com.instagram.android.l.a.f;
import com.instagram.android.widget.MediaActionsView;
import com.instagram.feed.c.p;
import com.instagram.feed.widget.a;

// Referenced classes of package com.instagram.android.feed.a.a:
//            m, s

final class o
    implements f
{

    final m a;

    o(m m1)
    {
        a = m1;
        super();
    }

    public final void a(c c1)
    {
        if (m.d(a) != null)
        {
            p.a(com.instagram.android.feed.a.a.m.a(a), m.b(a), m.e(a), com.instagram.android.feed.a.a.m.c(a), com.instagram.android.feed.a.a.m.f(a));
            float f1;
            MediaActionsView mediaactionsview;
            int i;
            if (m.e(a))
            {
                f1 = 1.0F;
            } else
            {
                f1 = 0.0F;
            }
            c1.a(f1, f1);
            c1.d();
            m.d(a).a().startAnimation(m.g(a));
            mediaactionsview = m.d(a).d();
            if (m.e(a))
            {
                i = com.instagram.android.widget.o.a;
            } else
            {
                i = com.instagram.android.widget.o.f;
            }
            mediaactionsview.a(i);
            if (m.h(a))
            {
                com.instagram.android.feed.a.a.m.a(a, false);
                m.i(a).sendEmptyMessageDelayed(3, ViewConfiguration.getDoubleTapTimeout());
            }
        }
    }
}
