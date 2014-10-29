// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.View;
import com.facebook.az;

// Referenced classes of package com.instagram.android.fragment:
//            fy

final class ge
    implements android.view.View.OnClickListener
{

    final fy a;

    ge(fy fy1)
    {
        a = fy1;
        super();
    }

    public final void onClick(View view)
    {
        fy.a(a, "/legal/terms/", az.terms_of_service);
    }
}
