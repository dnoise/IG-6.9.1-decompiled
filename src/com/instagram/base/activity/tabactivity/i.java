// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.base.activity.tabactivity;

import android.view.View;

// Referenced classes of package com.instagram.base.activity.tabactivity:
//            e, IgTabHost

final class i
    implements e
{

    final IgTabHost a;
    private final View b;

    private i(IgTabHost igtabhost, View view)
    {
        a = igtabhost;
        super();
        b = view;
    }

    i(IgTabHost igtabhost, View view, byte byte0)
    {
        this(igtabhost, view);
    }

    public final View a()
    {
        return b;
    }
}
