// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.view.View;
import com.instagram.android.directshare.widget.DirectShareSearchEditText;

// Referenced classes of package com.instagram.android.creation.a:
//            d

final class f
    implements android.view.View.OnClickListener
{

    final d a;

    f(d d1)
    {
        a = d1;
        super();
    }

    public final void onClick(View view)
    {
        d.k(a);
        d.l(a).requestFocus();
        d.a(a, d.l(a));
    }
}
