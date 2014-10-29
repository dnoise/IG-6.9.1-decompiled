// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.f;

import android.view.View;

// Referenced classes of package com.instagram.ui.f:
//            b

final class e
    implements android.view.View.OnLayoutChangeListener
{

    final b a;

    private e(b b1)
    {
        a = b1;
        super();
    }

    e(b b1, byte byte0)
    {
        this(b1);
    }

    public final void onLayoutChange(View view, int i, int j, int k, int l, int i1, int j1, 
            int k1, int l1)
    {
        b.b(a);
    }
}
