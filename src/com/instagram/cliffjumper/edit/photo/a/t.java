// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.view.View;
import android.widget.ImageView;
import com.instagram.cliffjumper.edit.common.ui.a;
import com.instagram.cliffjumper.edit.common.ui.b;
import com.instagram.cliffjumper.util.a.c;
import com.instagram.cliffjumper.util.a.d;
import com.instagram.filterkit.filter.IgFilterGroup;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.a:
//            a

final class t
    implements android.view.View.OnClickListener
{

    final ImageView a;
    final com.instagram.cliffjumper.edit.photo.a.a b;

    t(com.instagram.cliffjumper.edit.photo.a.a a1, ImageView imageview)
    {
        b = a1;
        a = imageview;
        super();
    }

    public final void onClick(View view)
    {
        boolean flag = true;
        if (c.a().e)
        {
            com.instagram.cliffjumper.edit.photo.lux.d d1 = new com.instagram.cliffjumper.edit.photo.lux.d();
            d1.a(a, com.instagram.cliffjumper.edit.photo.a.a.h(b), com.instagram.cliffjumper.edit.photo.a.a.i(b), com.instagram.cliffjumper.edit.photo.a.a.f(b), com.instagram.cliffjumper.edit.photo.a.a.j(b));
            com.instagram.cliffjumper.edit.photo.a.a.a(b, d1);
            return;
        }
        boolean flag1 = com.instagram.cliffjumper.edit.photo.a.a.f(b).b(3);
        IgFilterGroup igfiltergroup = com.instagram.cliffjumper.edit.photo.a.a.f(b);
        boolean flag2;
        ImageView imageview;
        if (!flag1)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        igfiltergroup.a(3, flag2);
        imageview = a;
        if (flag1)
        {
            flag = false;
        }
        imageview.setSelected(flag);
        com.instagram.cliffjumper.edit.photo.a.a.j(b).a();
    }
}
