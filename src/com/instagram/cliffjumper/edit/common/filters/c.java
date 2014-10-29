// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.filters;

import com.instagram.cliffjumper.ui.a;
import com.instagram.cliffjumper.util.a.b;
import com.instagram.filterkit.filter.IgFilterGroup;

// Referenced classes of package com.instagram.cliffjumper.edit.common.filters:
//            b

final class c
    implements a
{

    final com.instagram.cliffjumper.edit.common.filters.b a;

    c(com.instagram.cliffjumper.edit.common.filters.b b1)
    {
        a = b1;
        super();
    }

    public final void a()
    {
        if (com.instagram.cliffjumper.util.a.b.a() && com.instagram.cliffjumper.edit.common.filters.b.d(a))
        {
            com.instagram.cliffjumper.edit.common.filters.b.e(a).a(11, false);
            com.instagram.cliffjumper.edit.common.filters.b.e(a).a(12, false);
        }
    }

    public final void a(int i)
    {
        com.instagram.cliffjumper.edit.common.filters.b.a(a, i);
        if (!com.instagram.cliffjumper.edit.common.filters.b.a(a))
        {
            com.instagram.cliffjumper.edit.common.filters.b.b(a, com.instagram.cliffjumper.edit.common.filters.b.b(a));
            if (com.instagram.cliffjumper.util.a.b.a())
            {
                com.instagram.cliffjumper.edit.common.filters.b.c(a).a();
            }
        }
    }

    public final void b()
    {
        if (!com.instagram.cliffjumper.util.a.b.a())
        {
            com.instagram.cliffjumper.edit.common.filters.b.c(a).a();
        } else
        if (com.instagram.cliffjumper.edit.common.filters.b.d(a))
        {
            com.instagram.cliffjumper.edit.common.filters.b.e(a).a(11, true);
            com.instagram.cliffjumper.edit.common.filters.b.e(a).a(12, true);
            com.instagram.cliffjumper.edit.common.filters.b.c(a).a();
            return;
        }
    }
}
