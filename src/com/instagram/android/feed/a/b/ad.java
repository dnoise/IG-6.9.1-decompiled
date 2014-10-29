// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.instagram.feed.d.l;

// Referenced classes of package com.instagram.android.feed.a.b:
//            x, ae, ac

final class ad
{

    final x a;
    private GestureDetector b;
    private ac c;
    private Integer d;
    private l e;

    public ad(x x1)
    {
        a = x1;
        super();
        b = new GestureDetector(x.c(x1), new ae(this));
        b.setIsLongpressEnabled(false);
    }

    static l a(ad ad1)
    {
        return ad1.e;
    }

    static Integer b(ad ad1)
    {
        return ad1.d;
    }

    static ac c(ad ad1)
    {
        return ad1.c;
    }

    public final boolean a(ac ac, int i, l l, MotionEvent motionevent)
    {
        c = ac;
        d = Integer.valueOf(i);
        e = l;
        return b.onTouchEvent(motionevent);
    }
}
