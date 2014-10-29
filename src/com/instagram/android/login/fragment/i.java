// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.view.KeyEvent;
import android.widget.TextView;
import com.instagram.ui.widget.refresh.RefreshButton;

// Referenced classes of package com.instagram.android.login.fragment:
//            h

final class i
    implements android.widget.TextView.OnEditorActionListener
{

    final h a;

    i(h h1)
    {
        a = h1;
        super();
    }

    public final boolean onEditorAction(TextView textview, int j, KeyEvent keyevent)
    {
        if (j == 6)
        {
            if (h.a(a).isEnabled())
            {
                h.b(a);
            }
            return false;
        } else
        {
            return true;
        }
    }
}
