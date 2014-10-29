// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.view.View;

// Referenced classes of package com.instagram.android.directshare.d:
//            c

final class f
    implements android.view.View.OnFocusChangeListener
{

    final c a;

    f(c c1)
    {
        a = c1;
        super();
    }

    public final void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            c.b(a, true);
        }
    }
}
