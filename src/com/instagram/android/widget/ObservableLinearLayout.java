// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

// Referenced classes of package com.instagram.android.widget:
//            p

public class ObservableLinearLayout extends LinearLayout
{

    private p a;

    public ObservableLinearLayout(Context context)
    {
        super(context);
    }

    public ObservableLinearLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public ObservableLinearLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        if (a != null)
        {
            a.a(j, l);
        }
    }

    public void setOnSizeChangedListener(p p1)
    {
        a = p1;
    }
}
