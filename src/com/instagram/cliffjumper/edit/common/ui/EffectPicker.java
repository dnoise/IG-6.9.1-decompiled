// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.common.ui;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import com.facebook.at;
import com.facebook.av;
import com.instagram.creation.base.ui.a;
import com.instagram.creation.base.ui.c;

// Referenced classes of package com.instagram.cliffjumper.edit.common.ui:
//            g, k, f, d, 
//            c

public class EffectPicker extends HorizontalScrollView
    implements android.view.View.OnClickListener
{

    private LinearLayout a;
    private f b;
    private int c;
    private int d;

    public EffectPicker(Context context)
    {
        super(context);
        c = -1;
        b();
    }

    public EffectPicker(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        c = -1;
        b();
    }

    public EffectPicker(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        c = -1;
        b();
    }

    private void a(ViewGroup viewgroup, com.instagram.cliffjumper.edit.common.ui.c ac[])
    {
        int i = 0;
        while (i < ac.length) 
        {
            g g1 = new g(viewgroup.getContext(), ac[i], k.d);
            g1.setOnClickListener(this);
            g1.setId(i);
            g1.setPadding(d, 0, d, 0);
            boolean flag;
            if (i != -1 + ac.length)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            g1.a(flag);
            viewgroup.addView(g1, new android.widget.LinearLayout.LayoutParams(-2, -1));
            b.a(g1);
            i++;
        }
    }

    private void a(g g1, boolean flag)
    {
        int i = g1.getLeft() - g1.getWidth() - getScrollX();
        int j = (g1.getRight() + g1.getWidth()) - getWidth() - getScrollX();
        int l;
        int i1;
        int j1;
        if (j <= 0)
        {
            if (i < 0)
            {
                j = i;
            } else
            {
                j = 0;
            }
        }
        l = getWidth() - getPaddingLeft() - getPaddingRight();
        i1 = Math.max(0, getChildAt(0).getWidth() - l);
        j1 = Math.max(0, Math.min(j + getScrollX(), i1)) - getScrollX();
        smoothScrollBy(j1, 0);
        if (b != null)
        {
            b.a(g1, flag, j1);
        }
    }

    private void b()
    {
        setHorizontalFadingEdgeEnabled(false);
        setHorizontalScrollBarEnabled(false);
        d = getResources().getDimensionPixelSize(at.effect_tile_padding) / 2;
        if (com.instagram.creation.base.ui.a.a(getResources()) == c.d)
        {
            d = d / 2;
        }
    }

    private void c()
    {
        int i = c;
        c = -1;
        post(new d(this, i));
    }

    private void setRestoreScrollPosition(int i)
    {
        c = i;
    }

    public final void a()
    {
        a((g)a.findViewById(0), false);
    }

    public void onClick(View view)
    {
        a((g)view, true);
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        if (getChildCount() > 0 && c != -1)
        {
            c();
        }
    }

    public void onRestoreInstanceState(Parcelable parcelable)
    {
        if (!parcelable.getClass().equals(com/instagram/cliffjumper/edit/common/ui/EffectPicker$SavedState))
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

    public void setEffects(com.instagram.cliffjumper.edit.common.ui.c ac[])
    {
        a = new LinearLayout(getContext());
        a.setId(av.filter_tile_group);
        a.setOrientation(0);
        a.setGravity(16);
        a(a, ac);
        addView(a);
        if (getWidth() > 0 && c != -1)
        {
            c();
        }
    }

    public void setFilterListener(f f1)
    {
        b = f1;
    }

    private class SavedState extends android.view.View.BaseSavedState
    {

        public static final android.os.Parcelable.Creator CREATOR = new e();
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
