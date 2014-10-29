// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.view.KeyEvent;
import android.widget.TextView;
import com.instagram.ui.widget.refresh.RefreshButton;

// Referenced classes of package com.instagram.android.login.fragment:
//            o

final class t
    implements android.widget.TextView.OnEditorActionListener
{

    final o a;

    t(o o1)
    {
        a = o1;
        super();
    }

    public final boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (i == 6)
        {
            if (o.c(a).isEnabled())
            {
                o.d(a);
            }
            return false;
        } else
        {
            return true;
        }
    }
}
