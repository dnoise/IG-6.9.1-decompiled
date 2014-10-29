// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.base.activity.tabactivity;

import android.view.View;

// Referenced classes of package com.instagram.base.activity.tabactivity:
//            IgTabWidget, j

final class k
    implements android.view.View.OnClickListener
{

    final IgTabWidget a;
    private final int b;

    private k(IgTabWidget igtabwidget, int i)
    {
        a = igtabwidget;
        super();
        b = i;
    }

    k(IgTabWidget igtabwidget, int i, byte byte0)
    {
        this(igtabwidget, i);
    }

    public final void onClick(View view)
    {
        IgTabWidget.a(a).a(b, true);
    }
}
