// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.base.activity.tabactivity;

import android.widget.FrameLayout;

// Referenced classes of package com.instagram.base.activity.tabactivity:
//            j, IgTabHost

final class c
    implements j
{

    final IgTabHost a;

    c(IgTabHost igtabhost)
    {
        a = igtabhost;
        super();
    }

    public final void a(int i, boolean flag)
    {
        a.setCurrentTab(i);
        if (flag)
        {
            IgTabHost.a(a).requestFocus(2);
        }
    }
}
