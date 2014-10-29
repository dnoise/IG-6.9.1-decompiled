// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.view.View;
import android.view.ViewStub;

// Referenced classes of package com.instagram.android.fragment:
//            cr

final class ct
    implements android.view.ViewStub.OnInflateListener
{

    final cr a;

    ct(cr cr1)
    {
        a = cr1;
        super();
    }

    public final void onInflate(ViewStub viewstub, View view)
    {
        cr.c(a);
    }
}
