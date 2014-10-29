// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.instagram.creation.video.c;
import com.instagram.creation.video.i.a;
import com.instagram.creation.video.i.d;
import java.util.Iterator;

// Referenced classes of package com.instagram.creation.video.ui:
//            b

public class ClipStackView extends LinearLayout
    implements c
{

    private d a;

    public ClipStackView(Context context)
    {
        super(context);
    }

    public ClipStackView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public ClipStackView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    private void b()
    {
        a a1;
        for (Iterator iterator = a.iterator(); iterator.hasNext(); addView(new b(getContext(), a1)))
        {
            a1 = (a)iterator.next();
        }

    }

    public final void a()
    {
        for (int i = 0; i < getChildCount(); i++)
        {
            b b1 = (b)getChildAt(i);
            ((a)b1.getTag()).b(b1);
        }

    }

    public final void a(int i)
    {
    }

    public final void a(a a1)
    {
        addView(new b(getContext(), a1));
    }

    public final void b(a a1)
    {
        b b1 = (b)findViewWithTag(a1);
        a1.b(b1);
        removeView(b1);
    }

    public final void c()
    {
    }

    public final void c(a a1)
    {
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        int k = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0x80000000);
        int l = android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0x80000000);
        for (int i1 = 0; i1 < getChildCount(); i1++)
        {
            getChildAt(i1).measure(k, l);
        }

    }

    public void setClipStack(d d1)
    {
        a = d1;
        b();
    }
}
