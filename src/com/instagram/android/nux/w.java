// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.nux;

import android.app.Dialog;
import android.support.v4.app.k;
import android.view.View;
import android.view.Window;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.ba;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.nux:
//            n, x, y

final class w
    implements android.view.View.OnClickListener
{

    final n a;

    w(n n1)
    {
        a = n1;
        super();
    }

    public final void onClick(View view)
    {
        Dialog dialog = (new b(a.n(), aw.dialog_server_options, ba.IgDialogActionBar)).a(true).c();
        a.l().getWindow().setSoftInputMode(32);
        dialog.getWindow().setSoftInputMode(5);
        dialog.setOnDismissListener(new x(this));
        dialog.findViewById(av.done_button).setOnClickListener(new y(this, dialog));
        dialog.show();
    }
}
