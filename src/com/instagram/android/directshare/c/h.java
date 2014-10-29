// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.c;

import android.view.View;
import android.widget.AdapterView;
import com.instagram.base.a.a.a;
import com.instagram.feed.d.l;
import com.instagram.o.f.e;
import com.instagram.o.f.f;

// Referenced classes of package com.instagram.android.directshare.c:
//            c, a

final class h
    implements android.widget.AdapterView.OnItemClickListener
{

    final c a;

    h(c c1)
    {
        a = c1;
        super();
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l1)
    {
        if (l1 == 0L)
        {
            l l2 = (l)c.c(a).getItem(i);
            f.a().a(a.p(), l2.d(), false, false).a();
        }
    }
}
