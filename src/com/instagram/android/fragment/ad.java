// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.View;

// Referenced classes of package com.instagram.android.fragment:
//            ac, ao

final class ad
    implements android.view.View.OnFocusChangeListener
{

    final ac a;

    ad(ac ac1)
    {
        a = ac1;
        super();
    }

    public final void onFocusChange(View view, boolean flag)
    {
        if (!flag)
        {
            ac.a(a).removeMessages(1);
            ac.b(a);
        }
    }
}
