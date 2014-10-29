// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.widget.ProgressBar;

public final class f extends ProgressBar
{

    public f(Context context)
    {
        super(context, null, 0x1010078);
    }

    protected final void onDraw(Canvas canvas)
    {
        this;
        JVM INSTR monitorenter ;
        canvas.save();
        canvas.rotate(270F, (float)getWidth() / 2.0F, (float)getHeight() / 2.0F);
        super.onDraw(canvas);
        canvas.restore();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected final void onMeasure(int i, int j)
    {
        this;
        JVM INSTR monitorenter ;
        Drawable drawable = getProgressDrawable();
        setMeasuredDimension(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
