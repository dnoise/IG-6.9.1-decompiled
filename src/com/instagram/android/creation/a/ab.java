// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.view.View;

// Referenced classes of package com.instagram.android.creation.a:
//            t

final class ab
    implements android.view.View.OnFocusChangeListener
{

    final t a;

    ab(t t1)
    {
        a = t1;
        super();
    }

    public final void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            t.f(a);
        }
    }
}
