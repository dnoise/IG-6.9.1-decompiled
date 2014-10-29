// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.menu;

import android.widget.CompoundButton;

// Referenced classes of package com.instagram.ui.menu:
//            aa

final class v
    implements android.widget.CompoundButton.OnCheckedChangeListener
{

    final aa a;

    v(aa aa1)
    {
        a = aa1;
        super();
    }

    public final void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        a.a(flag);
        a.d().onCheckedChanged(compoundbutton, flag);
    }
}
