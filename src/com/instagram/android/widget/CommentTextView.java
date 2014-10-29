// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.content.Context;
import android.text.Layout;
import android.text.Spannable;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;

public class CommentTextView extends TextView
{

    public CommentTextView(Context context)
    {
        super(context);
    }

    public CommentTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public CommentTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0)
        {
            int i = (int)motionevent.getX();
            int j = (int)motionevent.getY();
            int k = i - getTotalPaddingLeft();
            int l = j - getTotalPaddingTop();
            int i1 = k + getScrollX();
            int j1 = l + getScrollY();
            Layout layout = getLayout();
            int k1 = layout.getOffsetForHorizontal(layout.getLineForVertical(j1), i1);
            if (getText() != null && (getText() instanceof Spannable) && ((ClickableSpan[])((Spannable)getText()).getSpans(k1, k1, android/text/style/ClickableSpan)).length != 0)
            {
                return super.onTouchEvent(motionevent);
            } else
            {
                return false;
            }
        } else
        {
            return super.onTouchEvent(motionevent);
        }
    }
}
