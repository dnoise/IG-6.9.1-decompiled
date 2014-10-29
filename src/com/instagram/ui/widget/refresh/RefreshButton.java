// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.widget.refresh;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ViewSwitcher;
import com.facebook.at;
import com.facebook.au;
import com.instagram.ui.widget.spinner.RefreshSpinner;

public class RefreshButton extends ViewSwitcher
{

    private ImageView a;
    private ImageView b;

    public RefreshButton(Context context)
    {
        super(context);
        a(context);
    }

    public RefreshButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a(context);
    }

    private void a(Context context)
    {
        a = new ImageView(context);
        a.setImageResource(au.nav_refresh);
        a.setScaleType(android.widget.ImageView.ScaleType.CENTER);
        addView(a);
        b = new RefreshSpinner(context);
        FrameLayout framelayout = new FrameLayout(context);
        framelayout.addView(b, new android.widget.FrameLayout.LayoutParams(-2, -2));
        int i = getResources().getDimensionPixelSize(at.refresh_button_size);
        addView(framelayout, new android.widget.FrameLayout.LayoutParams(i, i, 17));
    }

    protected void onRestoreInstanceState(Parcelable parcelable)
    {
        if (!parcelable.getClass().equals(com/instagram/ui/widget/refresh/RefreshButton$SavedState))
        {
            super.onRestoreInstanceState(parcelable);
            return;
        } else
        {
            SavedState savedstate = (SavedState)parcelable;
            super.onRestoreInstanceState(savedstate.getSuperState());
            setDisplayedChild(savedstate.a);
            return;
        }
    }

    protected Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        savedstate.a = getDisplayedChild();
        return savedstate;
    }

    public void setButtonDrawable(Drawable drawable)
    {
        a.setImageDrawable(drawable);
    }

    public void setButtonResource(int i)
    {
        a.setImageResource(i);
    }

    public void setColorFilter(ColorFilter colorfilter)
    {
        a.getDrawable().mutate().setColorFilter(colorfilter);
        b.getDrawable().mutate().setColorFilter(colorfilter);
    }

    public void setDisplayedChild(int i)
    {
        super.setDisplayedChild(i);
        boolean flag;
        if (i == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setClickable(flag);
    }

    public void setEnabled(boolean flag)
    {
        super.setEnabled(flag);
        Drawable drawable = a.getDrawable().mutate();
        char c;
        if (flag)
        {
            c = '\377';
        } else
        {
            c = 'M';
        }
        drawable.setAlpha(c);
    }

    private class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new a();
        int a;

        public void writeToParcel(Parcel parcel, int i)
        {
            super.writeToParcel(parcel, i);
            parcel.writeInt(a);
        }


        public SavedState(Parcel parcel)
        {
            super(parcel);
            a = parcel.readInt();
        }

        public SavedState(Parcelable parcelable)
        {
            super(parcelable);
        }
    }

}
