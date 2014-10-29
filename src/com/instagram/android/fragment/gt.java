// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.widget.CompoundButton;
import com.instagram.l.b.a;

// Referenced classes of package com.instagram.android.fragment:
//            fy

final class gt
    implements android.widget.CompoundButton.OnCheckedChangeListener
{

    final fy a;

    gt(fy fy)
    {
        a = fy;
        super();
    }

    public final void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        com.instagram.l.b.a.a().g(flag);
    }
}
