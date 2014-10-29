// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.tiltshift;

import android.widget.RadioGroup;
import com.instagram.cliffjumper.edit.common.ui.b;
import com.instagram.cliffjumper.edit.common.ui.g;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.tiltshift:
//            d, b, m, l, 
//            e

final class c
    implements android.widget.RadioGroup.OnCheckedChangeListener
{

    final com.instagram.cliffjumper.edit.photo.tiltshift.b a;

    c(com.instagram.cliffjumper.edit.photo.tiltshift.b b1)
    {
        a = b1;
        super();
    }

    public final void onCheckedChanged(RadioGroup radiogroup, int i)
    {
        g g1 = (g)radiogroup.findViewById(radiogroup.getCheckedRadioButtonId());
        b.a(a, ((d)g1.getTileInfo()).a());
        m.a(b.a(a), com.instagram.cliffjumper.edit.photo.tiltshift.b.b(a));
        com.instagram.filterkit.filter.IgFilterGroup igfiltergroup = b.a(a);
        boolean flag;
        if (com.instagram.cliffjumper.edit.photo.tiltshift.b.b(a) != l.a)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        m.a(igfiltergroup, flag);
        if (com.instagram.cliffjumper.edit.photo.tiltshift.b.b(a) != l.a)
        {
            b.d(a).c(b.c(a));
            return;
        } else
        {
            b.d(a).a();
            b.c(a).a();
            return;
        }
    }
}
