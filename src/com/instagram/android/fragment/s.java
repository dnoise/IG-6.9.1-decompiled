// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;

// Referenced classes of package com.instagram.android.fragment:
//            o

final class s
    implements android.widget.TextView.OnEditorActionListener
{

    final o a;

    s(o o1)
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
