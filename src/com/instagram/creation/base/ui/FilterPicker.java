// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.base.ui;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.RadioGroup;
import com.facebook.at;
import com.facebook.av;

// Referenced classes of package com.instagram.creation.base.ui:
//            a, c, g, d, 
//            e, h

public class FilterPicker extends HorizontalScrollView
    implements android.view.View.OnClickListener, android.widget.RadioGroup.OnCheckedChangeListener
{

    private RadioGroup a;
    private e b;
    private int c;
    private int d;

    public FilterPicker(Context context)
    {
        super(context);
        c = -1;
        a();
    }

    public FilterPicker(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = -1;
        a();
    }

    public FilterPicker(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        c = -1;
        a();
    }

    private void a()
    {
        setHorizontalFadingEdgeEnabled(false);
        setHorizontalScrollBarEnabled(false);
        d = getResources().getDimensionPixelSize(at.row_padding) / 2;
        if (com.instagram.creation.base.ui.a.a(getResources()) == c.d)
        {
            d = d / 2;
        }
    }

    private void a(ViewGroup viewgroup, h ah[])
    {
        for (int i = 0; i < ah.length; i++)
        {
            g g1 = new g(viewgroup.getContext(), ah[i]);
            g1.setOnClickListener(this);
            g1.setId(i);
            g1.setPadding(d, 0, d, 0);
            viewgroup.addView(g1);
        }

    }

    private void b()
    {
        int i = c;
        c = -1;
        post(new d(this, i));
    }

    private void setRestoreScrollPosition(int i)
    {
        c = i;
    }

    public h getSelectedFilter()
    {
        return ((g)a.findViewById(a.getCheckedRadioButtonId())).getFilter();
    }

    public void onCheckedChanged(RadioGroup radiogroup, int i)
    {
        g g1 = (g)radiogroup.findViewById(radiogroup.getCheckedRadioButtonId());
        if (b != null)
        {
            b.a(g1.getFilter());
        }
        int j = g1.getLeft() - g1.getWidth() - getScrollX();
        int k = (g1.getRight() + g1.getWidth()) - getWidth() - getScrollX();
        if (k > 0)
        {
            smoothScrollBy(k, 0);
        } else
        if (j < 0)
        {
            smoothScrollBy(j, 0);
            return;
        }
    }

    public void onClick(View view)
    {
        g g1 = (g)view;
        if (g1.isChecked() && b != null)
        {
            e _tmp = b;
            g1.getFilter();
        }
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        if (getChildCount() > 0 && c != -1)
        {
            b();
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        if (!parcelable.getClass().equals(com/instagram/creation/base/ui/FilterPicker$SavedState))
        {
            super.onRestoreInstanceState(parcelable);
            return;
        } else
        {
            SavedState savedstate = (SavedState)parcelable;
            super.onRestoreInstanceState(savedstate.getSuperState());
            setRestoreScrollPosition(savedstate.a);
            return;
        }
    }

    public Parcelable onSaveInstanceState()
    {
        SavedState savedstate = new SavedState(super.onSaveInstanceState());
        savedstate.a = getScrollX();
        return savedstate;
    }

    public void setFilterListener(e e1)
    {
        b = e1;
    }

    public void setFilters(h ah[])
    {
        a = new RadioGroup(getContext());
        a.setId(av.filter_tile_group);
        a.setOrientation(0);
        a.setOnCheckedChangeListener(this);
        a.setGravity(16);
        a.setPadding(d, 2 * d, d, 2 * d);
        a(a, ah);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -1);
        addView(a, layoutparams);
        if (getWidth() > 0 && c != -1)
        {
            b();
        }
    }

    public void setSelectedFilterIndex(int i)
    {
        ((g)a.findViewById(i)).setChecked(true);
    }

    private class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new f();
        public int a;

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
