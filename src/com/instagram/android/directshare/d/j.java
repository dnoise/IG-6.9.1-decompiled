// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import com.instagram.android.feed.a.b.ac;
import com.instagram.android.widget.MediaActionsView;

// Referenced classes of package com.instagram.android.directshare.d:
//            c

final class j
    implements Runnable
{

    final ac a;
    final c b;

    j(c c1, ac ac1)
    {
        b = c1;
        a = ac1;
        super();
    }

    public final void run()
    {
        if (b.E() != null)
        {
            a.d().a();
        }
    }
}
