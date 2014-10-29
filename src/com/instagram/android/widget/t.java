// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.view.View;

// Referenced classes of package com.instagram.android.widget:
//            s, x, v

final class t
    implements android.view.View.OnClickListener
{

    final s a;

    t(s s1)
    {
        a = s1;
        super();
    }

    public final void onClick(View view)
    {
        if (s.a(a) != null)
        {
            s.a(a).a((x)view.getTag());
        }
    }
}
