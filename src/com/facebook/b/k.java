// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.b;

import android.view.View;

// Referenced classes of package com.facebook.b:
//            j, e

final class k
    implements android.view.View.OnClickListener
{

    final j a;

    k(j j1)
    {
        a = j1;
        super();
    }

    public final void onClick(View view)
    {
        j.a(a).a();
        a.dismiss();
    }
}
