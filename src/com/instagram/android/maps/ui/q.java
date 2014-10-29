// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.view.View;
import com.instagram.android.g.b;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.android.maps.ui:
//            m, r

final class q
    implements Runnable
{

    final b a;
    final View b;
    final m c;

    q(m m1, b b1, View view)
    {
        c = m1;
        a = b1;
        b = view;
        super();
    }

    public final void run()
    {
        ArrayList arraylist = new ArrayList(1);
        arraylist.add(a);
        m.a(c, new m(m.i(c), m.c(c), arraylist, m.j(c), b));
        m.k(c).a(c);
        m.k(c).showAtLocation(m.j(c), 17, 0, 0);
        m.k(c).a(new r(this));
        m.l(c);
    }
}
