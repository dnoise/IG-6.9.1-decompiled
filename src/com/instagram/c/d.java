// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.c;

import android.app.Dialog;
import android.view.View;

// Referenced classes of package com.instagram.c:
//            a

final class d
    implements android.view.View.OnClickListener
{

    final Dialog a;
    final a b;

    d(a a1, Dialog dialog)
    {
        b = a1;
        a = dialog;
        super();
    }

    public final void onClick(View view)
    {
        com.instagram.c.a.e(b);
        com.instagram.c.a.c(b);
        a.dismiss();
    }
}
