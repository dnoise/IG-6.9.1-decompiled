// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.widget.HorizontalScrollView;
import com.instagram.android.directshare.widget.DirectShareSearchEditText;
import com.instagram.common.y.f;

// Referenced classes of package com.instagram.android.creation.a:
//            d

final class h
    implements Runnable
{

    final d a;

    h(d d1)
    {
        a = d1;
        super();
    }

    public final void run()
    {
        boolean flag = d.l(a).hasFocus();
        if (d.r(a) != null)
        {
            d.r(a).fullScroll(66);
            d.r(a).clearFocus();
            if (flag)
            {
                d.l(a).requestFocus();
                f.b(a.n(), d.l(a));
            }
        }
    }
}
