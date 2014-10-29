// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.proxy;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import java.util.ArrayList;

// Referenced classes of package com.instagram.ui.widget.proxy:
//            a

public class ProxyFrameLayout extends FrameLayout
{

    private android.view.View.OnClickListener a;
    private ArrayList b;
    private boolean c;

    public ProxyFrameLayout(Context context)
    {
        super(context);
        b = new ArrayList();
        c = true;
        super.setOnClickListener(new a(this));
    }

    public ProxyFrameLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = new ArrayList();
        c = true;
        super.setOnClickListener(new a(this));
    }

    public ProxyFrameLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b = new ArrayList();
        c = true;
        super.setOnClickListener(new a(this));
    }

    static ArrayList a(ProxyFrameLayout proxyframelayout)
    {
        return proxyframelayout.b;
    }

    static android.view.View.OnClickListener b(ProxyFrameLayout proxyframelayout)
    {
        return proxyframelayout.a;
    }

    static boolean c(ProxyFrameLayout proxyframelayout)
    {
        return proxyframelayout.c;
    }

    public final void a(android.view.View.OnClickListener onclicklistener)
    {
        b.add(onclicklistener);
    }

    public void setOnClickListener(android.view.View.OnClickListener onclicklistener)
    {
        a = onclicklistener;
    }

    public void setProxyToOnClickListener(boolean flag)
    {
        c = flag;
    }
}
