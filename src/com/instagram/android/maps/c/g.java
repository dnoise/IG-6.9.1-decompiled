// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.c;

import com.instagram.ui.dialog.f;

// Referenced classes of package com.instagram.android.maps.c:
//            c, h

final class g
    implements Runnable
{

    final boolean a;
    final c b;

    g(c c1, boolean flag)
    {
        b = c1;
        a = flag;
        super();
    }

    public final void run()
    {
        if (a)
        {
            c.e(b).setOnDismissListener(new h(this));
        } else
        {
            com.instagram.android.maps.c.c.f(b);
        }
        if (c.e(b) != null && c.e(b).isShowing())
        {
            c.e(b).dismiss();
        }
    }
}
