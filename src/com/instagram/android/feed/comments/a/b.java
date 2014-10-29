// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.comments.a;

import android.view.View;
import android.widget.ListView;
import com.instagram.common.j.a;
import com.instagram.common.j.d;
import com.instagram.feed.comments.a.i;
import com.instagram.feed.d.l;
import com.instagram.feed.d.t;

// Referenced classes of package com.instagram.android.feed.comments.a:
//            a

final class b
    implements d
{

    final com.instagram.android.feed.comments.a.a a;

    b(com.instagram.android.feed.comments.a.a a1)
    {
        a = a1;
        super();
    }

    private void a()
    {
        int j = 0;
        if (com.instagram.android.feed.comments.a.a.a(a) == null)
        {
            return;
        }
        if (a.E() != null)
        {
            int k = com.instagram.android.feed.comments.a.a.b(a).getCount();
            int i1 = com.instagram.android.feed.comments.a.a.b(a).a();
            int j1 = a.v_().getFirstVisiblePosition();
            int k1;
            if (a.v_().getChildAt(0) != null)
            {
                k1 = a.v_().getChildAt(0).getTop();
            } else
            {
                k1 = 0;
                j = 0;
            }
            for (; j < com.instagram.android.feed.comments.a.a.b(a).a() - j1; j++)
            {
                View view = a.v_().getChildAt(j);
                if (view != null)
                {
                    k1 += view.getMeasuredHeight();
                }
            }

            com.instagram.android.feed.comments.a.a.b(a).a(com.instagram.android.feed.comments.a.a.a(a));
            com.instagram.android.feed.comments.a.a.b(a).notifyDataSetChanged();
            int l1 = (Math.max(j1, com.instagram.android.feed.comments.a.a.b(a).a()) + com.instagram.android.feed.comments.a.a.b(a).getCount()) - k;
            if (j1 < i1)
            {
                l1 += i1 - com.instagram.android.feed.comments.a.a.b(a).a();
            }
            a.v_().setSelectionFromTop(l1, k1);
            return;
        } else
        {
            com.instagram.android.feed.comments.a.a.b(a).a(com.instagram.android.feed.comments.a.a.a(a));
            return;
        }
    }

    private boolean a(t t1)
    {
        return com.instagram.android.feed.comments.a.a.a(a) != null && t1.a.equals(com.instagram.android.feed.comments.a.a.a(a).d());
    }

    public final volatile boolean a(a a1)
    {
        return a((t)a1);
    }

    public final void b(a a1)
    {
        a();
    }
}
