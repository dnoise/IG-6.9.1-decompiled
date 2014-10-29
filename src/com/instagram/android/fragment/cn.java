// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.content.DialogInterface;
import android.view.View;
import com.instagram.android.widget.x;
import com.instagram.ui.menu.c;

// Referenced classes of package com.instagram.android.fragment:
//            cl

final class cn
    implements android.content.DialogInterface.OnClickListener
{

    final x a;
    final View b;
    final cl c;

    cn(cl cl, x x1, View view)
    {
        c = cl;
        a = x1;
        b = view;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        a.d();
        ((c)b).setChecked(false);
        dialoginterface.dismiss();
    }
}
