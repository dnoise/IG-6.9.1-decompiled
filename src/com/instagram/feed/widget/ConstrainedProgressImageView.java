// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import com.instagram.common.y.f;

// Referenced classes of package com.instagram.feed.widget:
//            a

public class ConstrainedProgressImageView extends a
{

    public ConstrainedProgressImageView(Context context)
    {
        super(context);
    }

    public ConstrainedProgressImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    protected void onMeasure(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getSize(i);
        if (getChildCount() > 0)
        {
            getChildAt(0).measure(i, i);
            getChildAt(1).measure(i, (int)f.a(getResources().getDisplayMetrics(), 10));
            getChildAt(2).measure(i, i);
        }
        setMeasuredDimension(k, k);
    }
}
