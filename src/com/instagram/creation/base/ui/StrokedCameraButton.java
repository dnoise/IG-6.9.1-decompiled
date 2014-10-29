// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.base.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.facebook.as;
import com.facebook.at;
import com.facebook.au;
import com.instagram.common.ui.widget.imageview.b;

public class StrokedCameraButton extends ImageView
{

    private Drawable a;

    public StrokedCameraButton(Context context)
    {
        super(context);
        a();
    }

    public StrokedCameraButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a();
    }

    public StrokedCameraButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a();
    }

    private void a()
    {
        a = new b(getResources().getDimensionPixelSize(at.camera_button_stroke_width), getResources().getColor(as.grey_6));
        setBackgroundResource(au.switch_camera_button_background);
        setScaleType(android.widget.ImageView.ScaleType.CENTER);
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        a.draw(canvas);
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        a.setBounds(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom());
    }
}
