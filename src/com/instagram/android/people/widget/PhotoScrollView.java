// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ScrollView;
import com.instagram.common.ui.b.a;

// Referenced classes of package com.instagram.android.people.widget:
//            n

public class PhotoScrollView extends ScrollView
{

    private float a;
    private a b;

    public PhotoScrollView(Context context)
    {
        super(context);
        a();
    }

    public PhotoScrollView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public PhotoScrollView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a();
    }

    static float a(PhotoScrollView photoscrollview)
    {
        return photoscrollview.a;
    }

    private void a()
    {
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
    }

    private void a(float f)
    {
        int i = getChildCount();
        if (i == 0)
        {
            return;
        } else
        {
            int j = getHeight();
            smoothScrollTo(0, (int)(f * (float)(getChildAt(i - 1).getBottom() + getPaddingBottom()) - (float)(j / 2)));
            return;
        }
    }

    static void a(PhotoScrollView photoscrollview, float f)
    {
        photoscrollview.a(f);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        return false;
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        if (b != null)
        {
            a a1 = b;
            int k = getMeasuredWidth();
            getMeasuredHeight();
            a1.a(k);
        }
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        postDelayed(new n(this), 500L);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return false;
    }

    public void setOnMeasureListener(a a1)
    {
        b = a1;
    }

    public void setScrollTarget(float f)
    {
        a = f;
        a(a);
    }
}
