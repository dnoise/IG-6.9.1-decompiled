// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.dialog;

import android.app.Dialog;
import android.view.View;

// Referenced classes of package com.instagram.ui.dialog:
//            b

final class d
    implements android.view.View.OnClickListener
{

    final android.content.DialogInterface.OnClickListener a;
    final int b;
    final b c;

    d(b b1, android.content.DialogInterface.OnClickListener onclicklistener, int i)
    {
        c = b1;
        a = onclicklistener;
        b = i;
        super();
    }

    public final void onClick(View view)
    {
        if (a != null)
        {
            a.onClick(com.instagram.ui.dialog.b.b(c), b);
        }
        com.instagram.ui.dialog.b.b(c).dismiss();
    }
}
