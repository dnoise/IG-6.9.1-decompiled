// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.c;

import android.app.Dialog;
import android.content.Context;
import android.support.v4.app.an;
import android.view.View;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.ba;
import com.instagram.android.widget.IndeterminateCheckBox;
import com.instagram.feed.d.l;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.people.c:
//            c, d, e, f, 
//            i, j, k, b

public final class a
{

    private final Context a;
    private final an b;
    private Dialog c;
    private IndeterminateCheckBox d;
    private IndeterminateCheckBox e;

    private a(Context context, an an)
    {
        a = context;
        b = an;
    }

    static Dialog a(a a1)
    {
        a1.c = null;
        return null;
    }

    private void a(Dialog dialog, l l1)
    {
        d = (IndeterminateCheckBox)dialog.findViewById(av.photos_of_you_radio_show);
        d.setChecked(Boolean.valueOf(l1.Y()));
        dialog.findViewById(av.photos_of_you_show).setOnClickListener(new c(this, l1));
        e = (IndeterminateCheckBox)dialog.findViewById(av.photos_of_you_radio_hide);
        IndeterminateCheckBox indeterminatecheckbox = e;
        boolean flag;
        TextView textview;
        if (!l1.Y())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        indeterminatecheckbox.setChecked(Boolean.valueOf(flag));
        dialog.findViewById(av.photos_of_you_hide).setOnClickListener(new d(this, l1));
        dialog.findViewById(av.more_options_button).setOnClickListener(new e(this, dialog));
        dialog.findViewById(av.remove_me).setOnClickListener(new f(this, dialog, l1));
        dialog.findViewById(av.report_inappropriate).setOnClickListener(new i(this, dialog, l1));
        dialog.findViewById(av.button_cancel).setOnClickListener(new j(this, dialog));
        textview = (TextView)dialog.findViewById(av.learn_more);
        textview.setPaintFlags(8 | textview.getPaintFlags());
        textview.setOnClickListener(new k(this));
    }

    public static void a(Context context, an an, l l1)
    {
        (new a(context, an)).a(l1);
    }

    private void a(l l1)
    {
        c = (new b(a, aw.dialog_modify_photos_of_you, ba.IgDialogActionBar)).a(true).c();
        a(c, l1);
        c.setOnDismissListener(new com.instagram.android.people.c.b(this));
        c.show();
    }

    static IndeterminateCheckBox b(a a1)
    {
        a1.d = null;
        return null;
    }

    static IndeterminateCheckBox c(a a1)
    {
        return a1.d;
    }

    static IndeterminateCheckBox d(a a1)
    {
        return a1.e;
    }

    static Dialog e(a a1)
    {
        return a1.c;
    }

    static Context f(a a1)
    {
        return a1.a;
    }

    static an g(a a1)
    {
        return a1.b;
    }
}
