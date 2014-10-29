// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.view.KeyEvent;
import android.widget.TextView;
import com.instagram.ui.widget.refresh.RefreshButton;

// Referenced classes of package com.instagram.android.login.fragment:
//            ad

final class ah
    implements android.widget.TextView.OnEditorActionListener
{

    final ad a;

    ah(ad ad1)
    {
        a = ad1;
        super();
    }

    public final boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (i == 2)
        {
            if (ad.d(a).isEnabled())
            {
                ad.e(a);
            }
            return true;
        } else
        {
            return false;
        }
    }
}
