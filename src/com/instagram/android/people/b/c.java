// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.b;

import android.support.v4.app.k;
import android.view.View;

// Referenced classes of package com.instagram.android.people.b:
//            a

final class c
    implements android.view.View.OnClickListener
{

    final a a;

    c(a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(View view)
    {
        a.l().onBackPressed();
    }
}
