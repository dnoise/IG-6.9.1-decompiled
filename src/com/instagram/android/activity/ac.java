// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.view.View;

// Referenced classes of package com.instagram.android.activity:
//            ab

final class ac
    implements android.view.View.OnClickListener
{

    final ab a;

    ac(ab ab1)
    {
        a = ab1;
        super();
    }

    public final void onClick(View view)
    {
        a.onBackPressed();
    }
}
