// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.bugreport.rageshake;

import android.view.View;

// Referenced classes of package com.instagram.bugreport.rageshake:
//            RageShakeActivity

final class c
    implements android.view.View.OnClickListener
{

    final RageShakeActivity a;

    c(RageShakeActivity rageshakeactivity)
    {
        a = rageshakeactivity;
        super();
    }

    public final void onClick(View view)
    {
        a.onBackPressed();
    }
}
