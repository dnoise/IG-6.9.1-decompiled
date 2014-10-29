// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.straightening;

import com.instagram.cliffjumper.edit.common.effectfilter.CjFilter;
import com.instagram.cliffjumper.edit.common.ui.b;
import com.instagram.cliffjumper.edit.common.ui.sliderview.a;
import com.instagram.filterkit.filter.IgFilterGroup;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.straightening:
//            a

final class c
    implements a
{

    final com.instagram.cliffjumper.edit.photo.straightening.a a;

    c(com.instagram.cliffjumper.edit.photo.straightening.a a1)
    {
        a = a1;
        super();
    }

    public final void a()
    {
        if (com.instagram.cliffjumper.edit.photo.straightening.a.c(a))
        {
            com.instagram.cliffjumper.edit.photo.straightening.a.d(a).a(11, false);
            com.instagram.cliffjumper.edit.photo.straightening.a.d(a).a(12, false);
        }
    }

    public final void a(float f)
    {
        com.instagram.cliffjumper.edit.photo.straightening.a.a(a, f);
        com.instagram.cliffjumper.edit.photo.straightening.a.a(a).a(f);
        com.instagram.cliffjumper.edit.photo.straightening.a.b(a).a();
    }

    public final void b()
    {
        if (com.instagram.cliffjumper.edit.photo.straightening.a.c(a))
        {
            com.instagram.cliffjumper.edit.photo.straightening.a.d(a).a(11, true);
            com.instagram.cliffjumper.edit.photo.straightening.a.d(a).a(12, true);
            com.instagram.cliffjumper.edit.photo.straightening.a.b(a).a();
        }
    }
}
