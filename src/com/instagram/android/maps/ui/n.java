// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.view.View;

// Referenced classes of package com.instagram.android.maps.ui:
//            IgAnimatingMapItem, m

final class n
    implements android.view.View.OnClickListener
{

    final m a;

    n(m m1)
    {
        a = m1;
        super();
    }

    public final void onClick(View view)
    {
        if (IgAnimatingMapItem.f == 0)
        {
            m.b(a);
        }
    }
}
