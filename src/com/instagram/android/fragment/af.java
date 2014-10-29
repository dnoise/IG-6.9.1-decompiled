// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.instagram.ui.widget.refresh.RefreshButton;

// Referenced classes of package com.instagram.android.fragment:
//            ac, ao

final class af
    implements TextWatcher
{

    final ac a;

    af(ac ac1)
    {
        a = ac1;
        super();
    }

    public final void afterTextChanged(Editable editable)
    {
        boolean flag = true;
        ac.a(a).removeMessages(flag);
        ac.a(a).sendEmptyMessageDelayed(flag, 1000L);
        if (ac.c(a).getText().length() == 0)
        {
            flag = false;
        }
        ac.d(a).setEnabled(flag);
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }
}
