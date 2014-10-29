// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.base.b;

import android.os.Handler;
import android.view.View;
import android.widget.ListView;

// Referenced classes of package com.instagram.base.b:
//            b

final class c
    implements Runnable
{

    final b a;
    private float b;
    private boolean c;
    private ListView d;

    private c(b b1)
    {
        a = b1;
        super();
    }

    c(b b1, byte byte0)
    {
        this(b1);
    }

    public final void a(float f, boolean flag, ListView listview)
    {
        b = f;
        c = flag;
        d = listview;
    }

    public final void run()
    {
        int i = (int)Math.abs(a.b() - b);
        if (i >= com.instagram.base.b.b.a(a))
        {
            i = com.instagram.base.b.b.a(a);
            com.instagram.base.b.b.b(a).post(this);
        }
        if (c)
        {
            i = -i;
        }
        d.setSelectionFromTop(d.getFirstVisiblePosition(), d.getChildAt(0).getTop() - i);
    }
}
