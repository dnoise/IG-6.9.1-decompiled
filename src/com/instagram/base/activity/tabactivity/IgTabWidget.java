// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.base.activity.tabactivity;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;

// Referenced classes of package com.instagram.base.activity.tabactivity:
//            k, j

public class IgTabWidget extends LinearLayout
    implements android.view.View.OnFocusChangeListener
{

    private j a;
    private int b;

    public IgTabWidget(Context context)
    {
        this(context, null);
    }

    public IgTabWidget(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = -1;
        a();
    }

    public IgTabWidget(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b = -1;
        a();
    }

    static j a(IgTabWidget igtabwidget)
    {
        return igtabwidget.a;
    }

    private void a()
    {
        setChildrenDrawingOrderEnabled(true);
        setFocusable(true);
        setOnFocusChangeListener(this);
    }

    private void a(AccessibilityEvent accessibilityevent)
    {
        onPopulateAccessibilityEvent(accessibilityevent);
    }

    public final View a(int i)
    {
        return getChildAt(i);
    }

    public void addView(View view)
    {
        if (view.getLayoutParams() == null)
        {
            android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(0, -1, 1.0F);
            layoutparams.setMargins(0, 0, 0, 0);
            view.setLayoutParams(layoutparams);
        }
        view.setFocusable(true);
        view.setClickable(true);
        super.addView(view);
        view.setOnClickListener(new k(this, -1 + getTabCount(), (byte)0));
        view.setOnFocusChangeListener(this);
    }

    public final void b(int i)
    {
        int l = b;
        setCurrentTab(i);
        if (l != i)
        {
            a(i).requestFocus();
        }
    }

    public void childDrawableStateChanged(View view)
    {
        if (getTabCount() > 0 && view == a(b))
        {
            invalidate();
        }
        super.childDrawableStateChanged(view);
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            a(accessibilityevent);
        }
        if (b != -1)
        {
            View view = a(b);
            if (view != null && view.getVisibility() == 0)
            {
                return view.dispatchPopulateAccessibilityEvent(accessibilityevent);
            }
        }
        return false;
    }

    protected int getChildDrawingOrder(int i, int l)
    {
        if (b != -1)
        {
            if (l == i - 1)
            {
                return b;
            }
            if (l >= b)
            {
                return l + 1;
            }
        }
        return l;
    }

    public int getTabCount()
    {
        return getChildCount();
    }

    public void onFocusChange(View view, boolean flag)
    {
        if (view != this || !flag || getTabCount() <= 0) goto _L2; else goto _L1
_L1:
        a(b).requestFocus();
_L4:
        return;
_L2:
        int i;
        int l;
        if (!flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        i = getTabCount();
        l = 0;
_L5:
        if (l < i)
        {
label0:
            {
                if (a(l) != view)
                {
                    break label0;
                }
                setCurrentTab(l);
                a.a(l, false);
                if (isShown())
                {
                    sendAccessibilityEvent(8);
                    return;
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
        l++;
          goto _L5
        if (true) goto _L4; else goto _L6
_L6:
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        super.onInitializeAccessibilityEvent(accessibilityevent);
        accessibilityevent.setClassName(com/instagram/base/activity/tabactivity/IgTabWidget.getName());
        accessibilityevent.setItemCount(getTabCount());
        accessibilityevent.setCurrentItemIndex(b);
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilitynodeinfo)
    {
        super.onInitializeAccessibilityNodeInfo(accessibilitynodeinfo);
        accessibilitynodeinfo.setClassName(com/instagram/base/activity/tabactivity/IgTabWidget.getName());
    }

    public void removeAllViews()
    {
        super.removeAllViews();
        b = -1;
    }

    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityevent)
    {
        if (accessibilityevent.getEventType() == 8 && isFocused())
        {
            accessibilityevent.recycle();
            return;
        } else
        {
            super.sendAccessibilityEventUnchecked(accessibilityevent);
            return;
        }
    }

    public void setCurrentTab(int i)
    {
        if (i >= 0 && i < getTabCount() && i != b)
        {
            if (b != -1)
            {
                a(b).setSelected(false);
            }
            b = i;
            a(b).setSelected(true);
            if (isShown())
            {
                sendAccessibilityEvent(4);
                return;
            }
        }
    }

    public void setEnabled(boolean flag)
    {
        super.setEnabled(flag);
        int i = getTabCount();
        for (int l = 0; l < i; l++)
        {
            a(l).setEnabled(flag);
        }

    }

    void setTabSelectionListener(j j1)
    {
        a = j1;
    }
}
