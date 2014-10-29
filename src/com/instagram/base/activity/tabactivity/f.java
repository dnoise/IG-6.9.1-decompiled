// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.base.activity.tabactivity;

import android.app.LocalActivityManager;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;

// Referenced classes of package com.instagram.base.activity.tabactivity:
//            d, IgTabHost

final class f
    implements d
{

    final IgTabHost a;
    private final String b;
    private final Intent c;
    private View d;

    private f(IgTabHost igtabhost, String s, Intent intent)
    {
        a = igtabhost;
        super();
        b = s;
        c = intent;
    }

    f(IgTabHost igtabhost, String s, Intent intent, byte byte0)
    {
        this(igtabhost, s, intent);
    }

    public final View a()
    {
        if (a.b == null)
        {
            throw new IllegalStateException("Did you forget to call 'public void setup(LocalActivityManager activityGroup)'?");
        }
        Window window = a.b.startActivity(b, c);
        View view;
        if (window != null)
        {
            view = window.getDecorView();
        } else
        {
            view = null;
        }
        if (d != view && d != null && d.getParent() != null)
        {
            IgTabHost.a(a).removeView(d);
        }
        d = view;
        if (d != null)
        {
            d.setVisibility(0);
            d.setFocusableInTouchMode(true);
            ((ViewGroup)d).setDescendantFocusability(0x40000);
            IgTabHost.a(d);
        }
        return d;
    }

    public final void b()
    {
        if (d != null)
        {
            d.setVisibility(8);
            IgTabHost.b(d);
            if (android.os.Build.VERSION.SDK_INT >= 19)
            {
                d.cancelPendingInputEvents();
            }
        }
    }
}
