// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.dialog;

import android.app.Dialog;
import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.instagram.ui.dialog:
//            b

final class e
    implements android.widget.AdapterView.OnItemClickListener
{

    final android.content.DialogInterface.OnClickListener a;
    final b b;

    e(b b1, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        b = b1;
        a = onclicklistener;
        super();
    }

    public final void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if (a != null)
        {
            a.onClick(com.instagram.ui.dialog.b.b(b), i);
        }
        com.instagram.ui.dialog.b.b(b).dismiss();
    }
}
