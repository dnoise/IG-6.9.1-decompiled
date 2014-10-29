// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.View;
import android.widget.CompoundButton;

// Referenced classes of package com.instagram.android.fragment:
//            dh

final class dk
    implements android.view.View.OnClickListener
{

    final CompoundButton a;
    final dh b;

    dk(dh dh, CompoundButton compoundbutton)
    {
        b = dh;
        a = compoundbutton;
        super();
    }

    public final void onClick(View view)
    {
        a.performClick();
    }
}
