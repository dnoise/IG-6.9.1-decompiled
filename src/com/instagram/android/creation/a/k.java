// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.view.View;

// Referenced classes of package com.instagram.android.creation.a:
//            d

final class k
    implements android.view.View.OnFocusChangeListener
{

    final d a;

    k(d d1)
    {
        a = d1;
        super();
    }

    public final void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            d.j(a);
        }
    }
}
