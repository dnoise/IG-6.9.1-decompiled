// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.widget.CompoundButton;
import com.instagram.l.b.a;

// Referenced classes of package com.instagram.android.fragment:
//            dh

final class dj
    implements android.widget.CompoundButton.OnCheckedChangeListener
{

    final a a;
    final dh b;

    dj(dh dh, a a1)
    {
        b = dh;
        a = a1;
        super();
    }

    public final void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        a.c(flag);
    }
}
