// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.base.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import com.facebook.bb;

// Referenced classes of package com.instagram.creation.base.ui:
//            i

public class GridLinesView extends View
{

    private final int a;
    private final Rect b;
    private final i c;
    private int d;

    public GridLinesView(Context context)
    {
        this(context, null);
    }

    public GridLinesView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public GridLinesView(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
        d = 3;
        int k;
        if ((double)getResources().getDisplayMetrics().density >= 1.5D)
        {
            k = 2;
        } else
        {
            k = 1;
        }
        a = k;
        if (attributeset != null)
        {
            TypedArray typedarray = getContext().obtainStyledAttributes(attributeset, bb.GridLinesView);
            d = typedarray.getInteger(bb.GridLinesView_lines, d);
            typedarray.recycle();
        }
        b = new Rect();
        c = new i(d, a);
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        c.a(canvas);
    }

    protected void onMeasure(int j, int k)
    {
        super.onMeasure(j, k);
        setMeasuredDimension(getMeasuredWidth(), getMeasuredWidth());
    }

    protected void onSizeChanged(int j, int k, int l, int i1)
    {
        super.onSizeChanged(j, k, l, i1);
        b.set(0, 0, j, k);
        c.a(b);
    }
}
