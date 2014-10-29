// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.support.v4.app.k;
import android.view.View;

// Referenced classes of package com.instagram.android.creation.a:
//            az, ax

final class ba
    implements android.view.View.OnClickListener
{

    final az a;

    ba(az az1)
    {
        a = az1;
        super();
    }

    public final void onClick(View view)
    {
        a.b.l().onBackPressed();
    }
}
