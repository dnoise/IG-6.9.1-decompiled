// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.widget.CheckBox;
import android.widget.CompoundButton;

// Referenced classes of package com.instagram.android.widget:
//            IndeterminateCheckBox

final class i
    implements android.widget.CompoundButton.OnCheckedChangeListener
{

    final IndeterminateCheckBox a;

    i(IndeterminateCheckBox indeterminatecheckbox)
    {
        a = indeterminatecheckbox;
        super();
    }

    public final void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        CheckBox checkbox = IndeterminateCheckBox.a(a);
        boolean flag1;
        if (!flag)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        checkbox.setChecked(flag1);
    }
}
