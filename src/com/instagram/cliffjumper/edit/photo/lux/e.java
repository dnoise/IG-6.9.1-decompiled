// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.lux;

import com.instagram.cliffjumper.ui.a;
import com.instagram.cliffjumper.util.a.b;
import com.instagram.filterkit.filter.IgFilterGroup;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.lux:
//            d

final class e
    implements a
{

    final d a;

    e(d d1)
    {
        a = d1;
        super();
    }

    public final void a()
    {
        if (com.instagram.cliffjumper.util.a.b.a() && d.d(a))
        {
            d.e(a).a(11, false);
            d.e(a).a(12, false);
        }
    }

    public final void a(int i)
    {
        com.instagram.cliffjumper.edit.photo.lux.d.a(a, i);
        com.instagram.cliffjumper.edit.photo.lux.d.b(a, com.instagram.cliffjumper.edit.photo.lux.d.a(a));
        if (!com.instagram.cliffjumper.edit.photo.lux.d.b(a) && com.instagram.cliffjumper.util.a.b.a())
        {
            d.c(a).a();
        }
    }

    public final void b()
    {
        if (!com.instagram.cliffjumper.util.a.b.a())
        {
            d.c(a).a();
        } else
        if (d.d(a))
        {
            d.e(a).a(11, true);
            d.e(a).a(12, true);
            d.c(a).a();
            return;
        }
    }
}
