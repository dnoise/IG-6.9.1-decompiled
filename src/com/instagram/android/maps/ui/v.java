// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.view.View;
import java.util.List;

// Referenced classes of package com.instagram.android.maps.ui:
//            m, af

final class v
    implements android.view.View.OnClickListener
{

    final List a;
    final m b;

    v(m m1, List list)
    {
        b = m1;
        a = list;
        super();
    }

    public final void onClick(View view)
    {
        m.c(b).a(a);
    }
}
