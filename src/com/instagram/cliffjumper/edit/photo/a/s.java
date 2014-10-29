// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.view.View;
import com.instagram.cliffjumper.edit.common.ui.a;
import com.instagram.cliffjumper.edit.common.ui.c;
import com.instagram.cliffjumper.edit.common.ui.f;
import com.instagram.cliffjumper.edit.common.ui.g;
import com.instagram.cliffjumper.util.a.d;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.a:
//            a, ac

final class s
    implements f
{

    final com.instagram.cliffjumper.edit.photo.a.a a;

    s(com.instagram.cliffjumper.edit.photo.a.a a1)
    {
        a = a1;
        super();
    }

    public final void a(g g1)
    {
        if (g1.getTileInfo().d().a(g1, com.instagram.cliffjumper.edit.photo.a.a.f(a)))
        {
            a(g1, false, 0);
        }
    }

    public final void a(g g1, boolean flag, int i)
    {
        a a1;
        if (com.instagram.cliffjumper.util.a.c.a().e && flag && !com.instagram.l.b.a.a().E())
        {
            com.instagram.cliffjumper.edit.photo.a.a.a(a, g1, i);
        } else
        {
            com.instagram.cliffjumper.edit.photo.a.a.g(a);
        }
        a1 = g1.getTileInfo().d();
        com.instagram.cliffjumper.edit.photo.a.a.h(a).setOnTouchListener(null);
        if (a1.a(g1, com.instagram.cliffjumper.edit.photo.a.a.h(a), com.instagram.cliffjumper.edit.photo.a.a.i(a), com.instagram.cliffjumper.edit.photo.a.a.f(a), com.instagram.cliffjumper.edit.photo.a.a.j(a)))
        {
            com.instagram.cliffjumper.edit.photo.a.a.k(a).a();
            if (flag)
            {
                com.instagram.cliffjumper.edit.photo.a.a.a(a, a1);
            }
            return;
        } else
        {
            com.instagram.cliffjumper.edit.photo.a.a.h(a).setOnTouchListener(com.instagram.cliffjumper.edit.photo.a.a.k(a));
            return;
        }
    }
}
