// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ViewSwitcher;
import com.facebook.as;
import com.facebook.av;
import com.instagram.ui.widget.spinner.RefreshSpinner;

// Referenced classes of package com.instagram.android.widget:
//            i

public class IndeterminateCheckBox extends ViewSwitcher
{

    private CheckBox a;
    private android.widget.CompoundButton.OnCheckedChangeListener b;

    public IndeterminateCheckBox(Context context)
    {
        super(context);
        a(context, null);
    }

    public IndeterminateCheckBox(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(context, attributeset);
    }

    static CheckBox a(IndeterminateCheckBox indeterminatecheckbox)
    {
        return indeterminatecheckbox.a;
    }

    private void a(Context context, AttributeSet attributeset)
    {
        setBackgroundDrawable(new ColorDrawable(getResources().getColor(as.transparent)));
        a = new CheckBox(context, attributeset);
        a.setId(av.indeterminate_check_box);
        addView(a);
        RefreshSpinner refreshspinner = new RefreshSpinner(context);
        refreshspinner.setDark(true);
        FrameLayout framelayout = new FrameLayout(context);
        framelayout.addView(refreshspinner, new android.widget.FrameLayout.LayoutParams(-2, -2, 17));
        addView(framelayout, a.getBackground().getIntrinsicWidth(), a.getBackground().getIntrinsicHeight());
        setDisplayedChild(0);
        b = new i(this);
        a.setOnCheckedChangeListener(b);
    }

    public final boolean a()
    {
        return a.isChecked();
    }

    public CheckBox getCheckBox()
    {
        return a;
    }

    public void setChecked(Boolean boolean1)
    {
        a.setOnCheckedChangeListener(null);
        a.setChecked(boolean1.booleanValue());
        a.setOnCheckedChangeListener(b);
    }

    public void setIndeterminate(boolean flag)
    {
        int j;
        if (flag)
        {
            j = 1;
        } else
        {
            j = 0;
        }
        setDisplayedChild(j);
    }

    public void setOnClickListener(android.view.View.OnClickListener onclicklistener)
    {
        a.setOnClickListener(onclicklistener);
    }
}
