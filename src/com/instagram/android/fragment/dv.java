// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.text.Editable;
import android.text.TextWatcher;
import com.instagram.ui.widget.refresh.RefreshButton;

// Referenced classes of package com.instagram.android.fragment:
//            du

final class dv
    implements TextWatcher
{

    final du a;

    dv(du du1)
    {
        a = du1;
        super();
    }

    public final void afterTextChanged(Editable editable)
    {
        if (du.a(a) != null)
        {
            RefreshButton refreshbutton = du.a(a);
            boolean flag;
            if (editable.toString().trim().length() > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            refreshbutton.setEnabled(flag);
        }
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }
}
