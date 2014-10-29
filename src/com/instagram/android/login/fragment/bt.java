// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.view.View;

// Referenced classes of package com.instagram.android.login.fragment:
//            an

abstract class bt
    implements android.view.View.OnFocusChangeListener
{

    final an b;

    private bt(an an1)
    {
        b = an1;
        super();
    }

    bt(an an1, byte byte0)
    {
        this(an1);
    }

    public abstract void a(boolean flag);

    public final void onFocusChange(View view, boolean flag)
    {
        if (!an.F(b))
        {
            a(flag);
        }
    }
}
