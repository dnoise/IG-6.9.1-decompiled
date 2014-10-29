// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.fragment;

import android.app.Dialog;
import android.widget.CompoundButton;
import com.facebook.az;
import com.instagram.a.c;
import com.instagram.ui.dialog.b;
import com.instagram.ui.menu.aa;
import com.instagram.ui.menu.e;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.android.fragment:
//            n, l, m

public final class k extends e
    implements c
{

    public k()
    {
    }

    private void a(int i, CompoundButton compoundbutton)
    {
        (new b(n())).b(i).b(az.ok, null).c(az.cancel, new n(this, compoundbutton)).c().show();
    }

    static void a(k k1, int i, CompoundButton compoundbutton)
    {
        k1.a(i, compoundbutton);
    }

    private List d()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new aa(az.instagram_camera, com.instagram.l.a.b.a().f(), new l(this)));
        arraylist.add(new aa(az.advanced_resize, com.instagram.l.a.b.a().g(), new m(this)));
        return arraylist;
    }

    public final void F()
    {
        super.F();
        a(d());
    }

    public final void a(com.instagram.a.b b1)
    {
        b1.a(az.advanced_features);
        b1.a(true);
    }

    public final String j_()
    {
        return "camera_settings";
    }
}
