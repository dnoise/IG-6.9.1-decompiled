// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.triangleshape;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import com.facebook.bb;

public class TriangleShape extends View
{

    private View a;
    private int b;
    private int c[];
    private Paint d;
    private Path e;

    public TriangleShape(Context context)
    {
        super(context);
        a(null);
    }

    public TriangleShape(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(attributeset);
    }

    public TriangleShape(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a(attributeset);
    }

    private void a(AttributeSet attributeset)
    {
        TypedArray typedarray = getContext().obtainStyledAttributes(attributeset, bb.TriangleShape);
        b = typedarray.getColor(bb.TriangleShape_fillColor, -1);
        typedarray.recycle();
        c = new int[2];
        d = new Paint(1);
        d.setStrokeWidth(2.0F);
        d.setColor(b);
        d.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
        e = new Path();
        e.setFillType(android.graphics.Path.FillType.EVEN_ODD);
    }

    public void draw(Canvas canvas)
    {
        int i = getHeight();
        int j = getBottom();
        a.getLocationInWindow(c);
        int k = c[0] + a.getWidth() / 2;
        e.reset();
        e.moveTo(k - i, j);
        e.lineTo(k + i, j);
        e.lineTo(k, j - i);
        e.close();
        canvas.drawPath(e, d);
    }

    public void setNotchCenterXOn(View view)
    {
        a = view;
    }
}
