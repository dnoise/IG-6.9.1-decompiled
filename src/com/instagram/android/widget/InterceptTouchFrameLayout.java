// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;

public class InterceptTouchFrameLayout extends FrameLayout
{

    public InterceptTouchFrameLayout(Context context)
    {
        super(context);
    }

    public InterceptTouchFrameLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public InterceptTouchFrameLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return true;
    }
}
