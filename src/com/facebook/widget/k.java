// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.view.View;

// Referenced classes of package com.facebook.widget:
//            h

final class k
    implements android.view.View.OnClickListener
{

    final h a;

    k(h h1)
    {
        a = h1;
        super();
    }

    public final void onClick(View view)
    {
        h.a(a);
        a.dismiss();
    }
}
