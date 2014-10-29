// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.view.View;
import com.facebook.az;
import com.instagram.cliffjumper.edit.common.filters.BasicAdjustFilter;
import com.instagram.cliffjumper.edit.photo.render.c;
import com.instagram.cliffjumper.edit.photo.render.i;
import com.instagram.cliffjumper.edit.photo.resize.ResizeFilter;
import com.instagram.creation.a.a;
import com.instagram.filterkit.filter.IgFilterGroup;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.a:
//            a, aa, z

final class k
    implements android.view.View.OnClickListener
{

    final com.instagram.cliffjumper.edit.photo.a.a a;

    k(com.instagram.cliffjumper.edit.photo.a.a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(View view)
    {
        a.c();
        com.instagram.cliffjumper.edit.photo.a.a.a(a, a.c(az.processing));
        com.instagram.creation.a.a.b();
        com.instagram.cliffjumper.edit.photo.a.a.f(a).a(false);
        if (com.instagram.cliffjumper.edit.photo.a.a.f(a).a(4) != null)
        {
            ((BasicAdjustFilter)com.instagram.cliffjumper.edit.photo.a.a.f(a).a(4)).b_(false);
        }
        com.instagram.cliffjumper.edit.photo.a.a.f(a).a(1, false);
        com.instagram.cliffjumper.edit.photo.a.a.f(a).a(15, false);
        c c1 = new c(a.n(), new aa(a, (byte)0), com.instagram.cliffjumper.edit.photo.a.a.o(a).d(), com.instagram.cliffjumper.edit.photo.a.a.f(a), new ResizeFilter(), com.instagram.cliffjumper.edit.photo.a.a.p(a).a(), i.a(a.n()));
        com.instagram.cliffjumper.edit.photo.a.a.o(a).a(c1);
    }
}
