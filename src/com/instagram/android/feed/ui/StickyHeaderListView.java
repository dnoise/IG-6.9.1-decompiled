// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AbsListView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListView;
import com.instagram.common.y.f;
import com.instagram.ui.a.b;

// Referenced classes of package com.instagram.android.feed.ui:
//            d

public class StickyHeaderListView extends FrameLayout
    implements android.widget.AbsListView.OnScrollListener
{

    private static Boolean k;
    protected boolean a;
    protected boolean b;
    protected ListView c;
    protected d d;
    protected View e;
    protected View f;
    protected View g;
    protected int h;
    protected Object i;
    protected int j;
    private com.instagram.base.b.b l;

    public StickyHeaderListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        h = -1;
        j = 0;
    }

    private void a(View view, boolean flag)
    {
        if (flag)
        {
            com.instagram.ui.a.b.a(e, view.getBottom() - e.getMeasuredHeight());
            return;
        } else
        {
            com.instagram.ui.a.b.a(e, (int)getContentPosition());
            return;
        }
    }

    private boolean a()
    {
        if (k == null)
        {
            boolean flag;
            if (com.instagram.common.y.f.b(getContext()) > 320)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            k = Boolean.valueOf(flag);
        }
        return k.booleanValue();
    }

    private boolean a(int i1)
    {
        return i1 != h || i == null || !i.equals(d.getItem(i1));
    }

    private View b(int i1)
    {
        f = d.a(i1, f, this);
        int j1 = f.getLayoutParams().height;
        int k1;
        if (j1 > 0)
        {
            k1 = android.view.View.MeasureSpec.makeMeasureSpec(j1, 0x40000000);
        } else
        {
            k1 = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        f.measure(android.view.View.MeasureSpec.makeMeasureSpec(c.getWidth(), 0x40000000), k1);
        return f;
    }

    private void b()
    {
        if (f != null)
        {
            for (int i1 = 0; i1 < c.getChildCount(); i1++)
            {
                View view = c.getChildAt(i1);
                if (view == getAdjustedTopChildView())
                {
                    continue;
                }
                View view1 = view.findViewById(f.getId());
                if (view1 != null)
                {
                    view1.setVisibility(0);
                }
            }

        }
    }

    private void b(View view, boolean flag)
    {
        int i1;
        View view1;
        i1 = 0;
        if (e == g)
        {
            return;
        }
        view1 = view.findViewById(e.getId());
        if (!flag) goto _L2; else goto _L1
_L1:
        View view2;
        e.setVisibility(0);
        view2 = view1;
_L4:
        view2.setVisibility(i1);
        return;
_L2:
        boolean flag1;
        int j1;
        if ((float)view.getTop() == getContentPosition())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1)
        {
            j1 = 0;
        } else
        {
            j1 = 4;
        }
        view1.setVisibility(j1);
        view2 = e;
        i1 = 0;
        if (flag1)
        {
            i1 = 8;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void c()
    {
        if (!a)
        {
            d();
        }
        b = true;
        l = com.instagram.base.b.b.a(getContext());
    }

    private void d()
    {
        int i1 = getChildCount();
        for (int j1 = 0; j1 < i1; j1++)
        {
            View view = getChildAt(j1);
            if (view instanceof ListView)
            {
                setListView((ListView)view);
            }
        }

        g = new View(getContext());
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-1, 1, 48);
        g.setLayoutParams(layoutparams);
        g.setBackgroundColor(0);
        a = true;
    }

    private int getAdjustedHeaderItemPosition()
    {
        int i1 = 1;
        int j1 = c.getFirstVisiblePosition() - j;
        int k1 = (int)getContentPosition();
        if (c.getChildCount() <= i1 || c.getChildAt(0).getBottom() > k1)
        {
            i1 = 0;
        }
        return Math.max(0, i1 + j1);
    }

    private View getAdjustedTopChildView()
    {
        int i1 = c.getFirstVisiblePosition() - j;
        ListView listview = c;
        int j1;
        if (getAdjustedHeaderItemPosition() != i1)
        {
            j1 = 1;
        } else
        {
            j1 = 0;
        }
        return listview.getChildAt(j1);
    }

    private float getContentPosition()
    {
        if (l == null)
        {
            return 0.0F;
        } else
        {
            return l.b();
        }
    }

    public final void a(boolean flag)
    {
        boolean flag1 = true;
        if (a())
        {
            if (d == null && c != null)
            {
                android.widget.ListAdapter listadapter = c.getAdapter();
                j = c.getHeaderViewsCount();
                if (j > 0)
                {
                    listadapter = ((HeaderViewListAdapter)listadapter).getWrappedAdapter();
                }
                setAdapter((d)listadapter);
            }
            if (d != null && b)
            {
                int i1 = getAdjustedHeaderItemPosition();
                Object obj = d.getItem(i1);
                boolean flag2;
                if (a(i1) || flag)
                {
                    View view = e;
                    View view1;
                    View view2;
                    if (d.b(i1))
                    {
                        view1 = b(i1);
                    } else
                    {
                        view1 = g;
                    }
                    e = view1;
                    if (view != e)
                    {
                        removeView(view);
                        flag2 = flag1;
                    } else
                    {
                        flag2 = false;
                    }
                    h = i1;
                    i = obj;
                } else
                {
                    flag2 = false;
                }
                view2 = getAdjustedTopChildView();
                if (view2 != null)
                {
                    if ((float)e.getMeasuredHeight() < (float)view2.getBottom() - getContentPosition())
                    {
                        flag1 = false;
                    }
                    a(view2, flag1);
                    b(view2, flag1);
                }
                if (flag2)
                {
                    addView(e);
                }
                b();
                return;
            }
        }
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        c();
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        c();
    }

    public void onScroll(AbsListView abslistview, int i1, int j1, int k1)
    {
        a(false);
    }

    public void onScrollStateChanged(AbsListView abslistview, int i1)
    {
    }

    public void setAdapter(d d1)
    {
        d = d1;
    }

    public void setListView(ListView listview)
    {
        c = listview;
    }
}
