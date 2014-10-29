// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.comments.a;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.instagram.feed.d.b;

// Referenced classes of package com.instagram.feed.comments.a:
//            e, h, a

final class d
    implements android.view.View.OnTouchListener
{

    final Context a;
    final h b;
    final b c;
    final a d;
    private final GestureDetector e;

    d(a a1, Context context, h h, b b1)
    {
        d = a1;
        a = context;
        b = h;
        c = b1;
        super();
        e = new GestureDetector(a, new e(this));
    }

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        return e.onTouchEvent(motionevent);
    }
}
