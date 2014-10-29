// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.proxy;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.instagram.ui.widget.proxy:
//            ProxyFrameLayout

final class a
    implements android.view.View.OnClickListener
{

    final ProxyFrameLayout a;

    a(ProxyFrameLayout proxyframelayout)
    {
        a = proxyframelayout;
        super();
    }

    public final void onClick(View view)
    {
        for (Iterator iterator = ProxyFrameLayout.a(a).iterator(); iterator.hasNext(); ((android.view.View.OnClickListener)iterator.next()).onClick(view)) { }
        if (ProxyFrameLayout.b(a) != null && ProxyFrameLayout.c(a))
        {
            ProxyFrameLayout.b(a).onClick(view);
        }
    }
}
