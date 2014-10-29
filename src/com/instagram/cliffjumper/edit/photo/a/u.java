// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.view.View;
import android.widget.ImageView;
import com.instagram.cliffjumper.edit.common.effectfilter.CjFilter;
import com.instagram.cliffjumper.edit.common.ui.b;
import com.instagram.filterkit.filter.IgFilterGroup;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.a:
//            a

final class u
    implements android.view.View.OnClickListener
{

    final ImageView a;
    final a b;

    u(a a1, ImageView imageview)
    {
        b = a1;
        a = imageview;
        super();
    }

    public final void onClick(View view)
    {
        a a1 = b;
        boolean flag;
        if (!com.instagram.cliffjumper.edit.photo.a.a.l(b))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.instagram.cliffjumper.edit.photo.a.a.a(a1, flag);
        ((CjFilter)com.instagram.cliffjumper.edit.photo.a.a.f(b).a(5)).a_(com.instagram.cliffjumper.edit.photo.a.a.l(b));
        a.setSelected(com.instagram.cliffjumper.edit.photo.a.a.l(b));
        com.instagram.cliffjumper.edit.photo.a.a.j(b).a();
    }
}
