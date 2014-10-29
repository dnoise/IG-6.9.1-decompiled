// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.instagram.l.b.a;

// Referenced classes of package com.instagram.android.fragment:
//            dh

final class di
    implements android.widget.RadioGroup.OnCheckedChangeListener
{

    final a a;
    final RadioButton b;
    final dh c;

    di(dh dh, a a1, RadioButton radiobutton)
    {
        c = dh;
        a = a1;
        b = radiobutton;
        super();
    }

    public final void onCheckedChanged(RadioGroup radiogroup, int i)
    {
        a a1 = a;
        boolean flag;
        if (i == b.getId())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a1.e(flag);
    }
}
