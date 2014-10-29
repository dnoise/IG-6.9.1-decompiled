// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.c;

import android.view.View;
import com.instagram.android.activity.c;

// Referenced classes of package com.instagram.android.directshare.c:
//            c

final class l
    implements android.view.View.OnClickListener
{

    final com.instagram.android.directshare.c.c a;

    l(com.instagram.android.directshare.c.c c1)
    {
        a = c1;
        super();
    }

    public final void onClick(View view)
    {
        c.n(a).a(true);
    }
}
