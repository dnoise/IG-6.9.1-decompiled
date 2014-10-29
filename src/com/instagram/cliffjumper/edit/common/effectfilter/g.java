// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.effectfilter;

import com.instagram.cliffjumper.ui.a;
import com.instagram.cliffjumper.util.a.b;
import com.instagram.filterkit.filter.IgFilterGroup;

// Referenced classes of package com.instagram.cliffjumper.edit.common.effectfilter:
//            f, i, CjFilter

final class g
    implements a
{

    final f a;

    g(f f1)
    {
        a = f1;
        super();
    }

    public final void a()
    {
        if (com.instagram.cliffjumper.util.a.b.a() && f.e(a))
        {
            f.c(a).a(11, false);
            f.c(a).a(12, false);
        }
    }

    public final void a(int j)
    {
        com.instagram.cliffjumper.edit.common.effectfilter.f.a(a, j);
        if (!com.instagram.cliffjumper.edit.common.effectfilter.f.a(a))
        {
            com.instagram.cliffjumper.edit.common.effectfilter.i.a(f.c(a)).c(com.instagram.cliffjumper.edit.common.effectfilter.f.b(a));
            if (com.instagram.cliffjumper.util.a.b.a())
            {
                f.d(a).a();
            }
        }
    }

    public final void b()
    {
        if (!com.instagram.cliffjumper.util.a.b.a())
        {
            f.d(a).a();
        } else
        if (f.e(a))
        {
            f.c(a).a(11, true);
            f.c(a).a(12, true);
            f.d(a).a();
            return;
        }
    }
}
