// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.d;

import android.app.Dialog;
import android.view.View;

// Referenced classes of package com.instagram.android.feed.d:
//            a

final class c
    implements android.view.View.OnClickListener
{

    final Dialog a;
    final a b;

    c(a a1, Dialog dialog)
    {
        b = a1;
        a = dialog;
        super();
    }

    public final void onClick(View view)
    {
        a.dismiss();
    }
}
