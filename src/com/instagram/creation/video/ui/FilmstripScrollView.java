// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.HorizontalScrollView;

// Referenced classes of package com.instagram.creation.video.ui:
//            c

public class FilmstripScrollView extends HorizontalScrollView
{

    private c a;
    private boolean b;

    public FilmstripScrollView(Context context)
    {
        super(context);
    }

    public FilmstripScrollView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public FilmstripScrollView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public final void a()
    {
        a = null;
    }

    public final void a(c c1)
    {
        a = c1;
    }

    public void onScrollChanged(int i, int j, int k, int l)
    {
        if (a != null)
        {
            a.f(i - k);
        }
        super.onScrollChanged(i, j, k, l);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 3: default 36
    //                   0 42
    //                   1 81
    //                   2 50
    //                   3 81;
           goto _L1 _L2 _L3 _L4 _L3
_L1:
        return super.onTouchEvent(motionevent);
_L2:
        b = false;
        continue; /* Loop/switch isn't completed */
_L4:
        if (!b && a != null)
        {
            a.V();
            b = true;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (b && a != null)
        {
            a.d();
        }
        if (true) goto _L1; else goto _L5
_L5:
    }
}
