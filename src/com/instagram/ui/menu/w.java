// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.menu;

import android.view.View;
import android.widget.CompoundButton;

// Referenced classes of package com.instagram.ui.menu:
//            x

final class w
    implements android.view.View.OnClickListener
{

    final x a;

    w(x x1)
    {
        a = x1;
        super();
    }

    public final void onClick(View view)
    {
        a.b.performClick();
    }
}
