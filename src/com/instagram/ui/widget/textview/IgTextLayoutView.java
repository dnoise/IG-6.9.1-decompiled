// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.textview;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;

public class IgTextLayoutView extends View
{

    private Layout a;

    public IgTextLayoutView(Context context)
    {
        this(context, null);
    }

    public IgTextLayoutView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, -1);
    }

    public IgTextLayoutView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        setFocusable(true);
    }

    public CharSequence getTextForAccessibility()
    {
        if (a == null)
        {
            return "";
        } else
        {
            return a.getText();
        }
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        canvas.save();
        if (a != null)
        {
            canvas.translate(getPaddingLeft(), getPaddingTop());
            a.draw(canvas);
        }
        canvas.restore();
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilitynodeinfo)
    {
        super.onInitializeAccessibilityNodeInfo(accessibilitynodeinfo);
        accessibilitynodeinfo.setClassName(getClass().getName());
        accessibilitynodeinfo.setText(getTextForAccessibility());
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        if (a != null)
        {
            setMeasuredDimension(getPaddingLeft() + getPaddingRight() + a.getWidth(), getPaddingTop() + getPaddingBottom() + a.getHeight());
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (a == null)
        {
            return false;
        }
        int i = motionevent.getAction();
        if (i == 1 || i == 0)
        {
            int j = (int)motionevent.getX();
            int k = (int)motionevent.getY();
            int l = j - getPaddingLeft();
            int i1 = k - getPaddingTop();
            int j1 = l + getScrollX();
            int k1 = i1 + getScrollY();
            int l1 = a.getLineForVertical(k1);
            if (a.getLineLeft(l1) <= (float)j1 && (float)j1 <= a.getLineRight(l1))
            {
                int i2 = a.getOffsetForHorizontal(l1, j1);
                ClickableSpan aclickablespan[] = (ClickableSpan[])((Spanned)a.getText()).getSpans(i2, i2, android/text/style/ClickableSpan);
                if (aclickablespan.length != 0)
                {
                    if (i == 1)
                    {
                        aclickablespan[0].onClick(this);
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public void setTextLayout(Layout layout)
    {
        if (!(layout.getText() instanceof Spanned))
        {
            throw new IllegalArgumentException("CommentText must be spanned text");
        } else
        {
            a = layout;
            requestLayout();
            return;
        }
    }
}
