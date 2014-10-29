// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.base.activity.tabactivity;

import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;

// Referenced classes of package com.instagram.base.activity.tabactivity:
//            IgTabHost

final class b
    implements android.view.View.OnKeyListener
{

    final IgTabHost a;

    b(IgTabHost igtabhost)
    {
        a = igtabhost;
        super();
    }

    public final boolean onKey(View view, int i, KeyEvent keyevent)
    {
        switch (i)
        {
        default:
            IgTabHost.a(a).requestFocus(2);
            return IgTabHost.a(a).dispatchKeyEvent(keyevent);

        case 19: // '\023'
        case 20: // '\024'
        case 21: // '\025'
        case 22: // '\026'
        case 23: // '\027'
        case 66: // 'B'
            return false;
        }
    }
}
