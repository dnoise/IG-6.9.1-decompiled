// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.view.View;
import android.view.ViewGroup;
import com.instagram.android.g.b;

// Referenced classes of package com.instagram.android.maps.ui:
//            m

final class ad
    implements android.view.View.OnClickListener
{

    final b a;
    final ViewGroup b;
    final m c;

    ad(m m1, b b1, ViewGroup viewgroup)
    {
        c = m1;
        a = b1;
        b = viewgroup;
        super();
    }

    public final void onClick(View view)
    {
        m.a(c, a, b);
    }
}
