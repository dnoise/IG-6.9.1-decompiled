// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.view.KeyEvent;
import android.widget.TextView;
import com.instagram.android.login.d;

// Referenced classes of package com.instagram.android.login.fragment:
//            v

final class ac
    implements android.widget.TextView.OnEditorActionListener
{

    final v a;

    ac(v v1)
    {
        a = v1;
        super();
    }

    public final boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (i == 6)
        {
            if (v.e(a).c())
            {
                v.b(a);
            }
            return false;
        } else
        {
            return true;
        }
    }
}
