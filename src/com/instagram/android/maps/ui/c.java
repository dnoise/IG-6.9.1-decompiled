// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.view.ViewGroup;

// Referenced classes of package com.instagram.android.maps.ui:
//            g, b

final class c
    implements g
{

    final b a;

    c(b b1)
    {
        a = b1;
        super();
    }

    public final void a(b b1)
    {
        b1.a(a.getParentView());
        a.getParentView().removeView(a);
        a.setLayoutListener(null);
    }
}
