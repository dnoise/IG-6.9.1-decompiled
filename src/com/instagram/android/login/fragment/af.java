// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import com.instagram.common.y.e;

// Referenced classes of package com.instagram.android.login.fragment:
//            ad

final class af
    implements TextWatcher
{

    final ad a;

    af(ad ad1)
    {
        a = ad1;
        super();
    }

    public final void afterTextChanged(Editable editable)
    {
        if (a.j() != null && a.j().getBoolean("com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_EDIT_PROFILE_FLOW"))
        {
            byte byte0;
            if (e.c(editable.toString()))
            {
                byte0 = 8;
            } else
            {
                byte0 = 0;
            }
            ad.b(a).setVisibility(byte0);
        }
        ad.c(a);
    }

    public final void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public final void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }
}
