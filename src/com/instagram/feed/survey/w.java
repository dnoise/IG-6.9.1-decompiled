// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.survey;

import android.os.Handler;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ViewSwitcher;

// Referenced classes of package com.instagram.feed.survey:
//            q, k, ak, j

final class w
    implements android.widget.AdapterView.OnItemClickListener
{

    final ViewSwitcher a;
    final j b;
    final q c;

    w(q q1, ViewSwitcher viewswitcher, j j)
    {
        c = q1;
        a = viewswitcher;
        b = j;
        super();
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if (q.g(c))
        {
            k k1 = (k)adapterview.getItemAtPosition(i);
            a.showNext();
            ak.a(b, k1, q.e(c));
            q.f(c).sendEmptyMessageDelayed(0, 2000L);
        }
    }
}
