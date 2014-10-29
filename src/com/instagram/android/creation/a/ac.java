// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.creation.a;

import android.app.Dialog;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.facebook.ba;
import com.instagram.android.widget.s;
import com.instagram.l.b.a;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.creation.a:
//            t

final class ac
    implements android.widget.CompoundButton.OnCheckedChangeListener
{

    final t a;

    ac(t t1)
    {
        a = t1;
        super();
    }

    public final void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        if (flag)
        {
            if (!t.g(a))
            {
                t.h(a);
            }
            if (!com.instagram.l.b.a.a().n())
            {
                Dialog dialog = (new b(a.n(), aw.photo_maps_dialog, ba.IgDialogFull)).b(az.ok, null).c();
                ((TextView)dialog.findViewById(av.dialog_map_title)).setText(az.photo_map);
                dialog.show();
                com.instagram.l.b.a.a().o();
            }
        } else
        {
            com.instagram.android.creation.a.t.a(a, null);
            a.a(null, null);
        }
        com.instagram.l.b.a.a().b(flag);
        t.i(a);
        t.e(a).a(t.d(a));
    }
}
