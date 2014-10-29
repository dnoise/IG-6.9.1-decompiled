// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.support.v4.app.k;
import android.view.View;

// Referenced classes of package com.instagram.android.creation.a:
//            ah

final class aj
    implements android.view.View.OnClickListener
{

    final ah a;

    aj(ah ah1)
    {
        a = ah1;
        super();
    }

    public final void onClick(View view)
    {
        a.l().onBackPressed();
    }
}
