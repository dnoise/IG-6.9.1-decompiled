// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.view.MotionEvent;
import android.view.View;
import com.instagram.cliffjumper.edit.common.effectfilter.CjFilter;
import com.instagram.cliffjumper.edit.common.effectfilter.i;
import com.instagram.cliffjumper.util.a.d;
import com.instagram.filterkit.c.c;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.a:
//            a

final class ac
    implements android.view.View.OnTouchListener
{

    final a a;
    private boolean b;

    private ac(a a1)
    {
        a = a1;
        super();
    }

    ac(a a1, byte byte0)
    {
        this(a1);
    }

    public final void a()
    {
        if (b)
        {
            b = false;
            com.instagram.cliffjumper.edit.photo.a.a.o(a).a(com.instagram.cliffjumper.edit.photo.a.a.f(a));
            com.instagram.cliffjumper.edit.photo.a.a.a(a);
        }
    }

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        boolean flag = true;
        if (!com.instagram.cliffjumper.util.a.c.a().e)
        {
            flag = false;
        } else
        if (com.instagram.cliffjumper.edit.photo.a.a.o(a) != null)
        {
            if (motionevent.getAction() == 0)
            {
                com.instagram.cliffjumper.edit.photo.a.a.o(a).a(com.instagram.cliffjumper.edit.photo.a.a.x(a));
                CjFilter cjfilter = i.a(com.instagram.cliffjumper.edit.photo.a.a.f(a));
                com.instagram.cliffjumper.edit.photo.a.a.x(a).b(cjfilter.g());
                com.instagram.cliffjumper.edit.photo.a.a.x(a).a(cjfilter.h());
                b = flag;
                com.instagram.cliffjumper.edit.photo.a.a.a(a);
                return flag;
            }
            if (motionevent.getAction() == flag)
            {
                a();
                return flag;
            }
        }
        return flag;
    }
}
