// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.view.MotionEvent;
import android.view.View;
import com.instagram.feed.d.l;

// Referenced classes of package com.instagram.android.feed.a.b:
//            x, ad, ac

final class y
    implements android.view.View.OnTouchListener
{

    final ac a;
    final int b;
    final l c;
    final x d;

    y(x x1, ac ac, int i, l l)
    {
        d = x1;
        a = ac;
        b = i;
        c = l;
        super();
    }

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        return x.a(d).a(a, b, c, motionevent);
    }
}
