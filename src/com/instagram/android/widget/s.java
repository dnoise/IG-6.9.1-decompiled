// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.android.creation.widget.ShareTableButton;
import com.instagram.model.a.b;
import com.instagram.service.c.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.android.widget:
//            t, u, x, v

public final class s extends FrameLayout
{

    private final View a;
    private final ViewGroup b;
    private final List c = new ArrayList();
    private ShareTableButton d;
    private final android.view.View.OnClickListener e = new t(this);
    private v f;

    public s(Context context, List list)
    {
        super(context);
        LayoutInflater layoutinflater = LayoutInflater.from(getContext());
        layoutinflater.inflate(aw.widget_share_table, this);
        b = (ViewGroup)findViewById(av.share_table_button_container);
        a = findViewById(av.share_table_divider);
        a(layoutinflater, list);
        a();
        if (com.instagram.service.c.a.b())
        {
            ((TextView)getRootView().findViewById(av.share_title)).setText(az.sharing_disabled);
            setVisibility(8);
        }
    }

    static v a(s s1)
    {
        return s1.f;
    }

    private void a()
    {
        if (d != null && !com.instagram.android.maps.f.a.a())
        {
            d.a();
            d.setOnClickListener(new u(this));
        }
    }

    private void a(LayoutInflater layoutinflater, List list)
    {
        ViewGroup viewgroup = b();
        int i = 0;
        while (i < list.size()) 
        {
            ViewGroup viewgroup1;
            x x1;
            ShareTableButton sharetablebutton;
            if (i > 0 && i % 2 == 0)
            {
                viewgroup1 = b();
            } else
            {
                viewgroup1 = viewgroup;
            }
            x1 = (x)list.get(i);
            sharetablebutton = (ShareTableButton)layoutinflater.inflate(aw.widget_share_table_button, viewgroup1, false);
            sharetablebutton.setText(x1.a(getContext()));
            sharetablebutton.setCompoundDrawablesWithIntrinsicBounds(x1.b(), 0, 0, 0);
            sharetablebutton.setTag(x1);
            sharetablebutton.setOnClickListener(e);
            c.add(sharetablebutton);
            viewgroup1.addView(sharetablebutton);
            if (x1 == x.c)
            {
                d = sharetablebutton;
            }
            i++;
            viewgroup = viewgroup1;
        }
    }

    private ViewGroup b()
    {
        View view = LayoutInflater.from(getContext()).inflate(aw.widget_share_table_row, b, false);
        b.addView(view);
        return (ViewGroup)view.findViewById(av.share_table_row_button_container);
    }

    public final void a(b b1)
    {
        if (d != null)
        {
            ShareTableButton sharetablebutton = d;
            Iterator iterator;
            CompoundButton compoundbutton;
            boolean flag;
            if (!com.instagram.android.maps.f.a.a() || b1.o() || b1.f())
            {
                flag = true;
            } else
            {
                flag = false;
            }
            sharetablebutton.setEnabled(flag);
        }
        for (iterator = c.iterator(); iterator.hasNext(); compoundbutton.setChecked(((x)compoundbutton.getTag()).a(b1)))
        {
            compoundbutton = (CompoundButton)iterator.next();
        }

    }

    protected final void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        a.measure(android.view.View.MeasureSpec.makeMeasureSpec(a.getLayoutParams().width, 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0x40000000));
    }

    public final void setOnSharingToggleListener(v v)
    {
        f = v;
    }
}
