// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.view.View;
import com.instagram.p.b;

// Referenced classes of package com.instagram.android.login.fragment:
//            h

final class l
    implements android.view.View.OnFocusChangeListener
{

    final h a;

    l(h h)
    {
        a = h;
        super();
    }

    public final void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            b.af.c();
        }
    }
}
