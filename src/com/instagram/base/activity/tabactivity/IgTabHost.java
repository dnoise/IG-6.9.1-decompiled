// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.base.activity.tabactivity;

import android.app.LocalActivityManager;
import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.base.activity.tabactivity:
//            IgTabWidget, b, c, g, 
//            h, e, d

public class IgTabHost extends FrameLayout
    implements android.view.ViewTreeObserver.OnTouchModeChangeListener
{

    protected int a;
    protected LocalActivityManager b;
    private IgTabWidget c;
    private FrameLayout d;
    private List e;
    private View f;
    private g g;
    private android.view.View.OnKeyListener h;

    public IgTabHost(Context context)
    {
        super(context);
        e = new ArrayList(2);
        a = -1;
        f = null;
        b = null;
        a();
    }

    public IgTabHost(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        e = new ArrayList(2);
        a = -1;
        f = null;
        b = null;
        a();
    }

    static FrameLayout a(IgTabHost igtabhost)
    {
        return igtabhost.d;
    }

    private void a()
    {
        setFocusableInTouchMode(true);
        setDescendantFocusability(0x40000);
        a = -1;
        f = null;
    }

    static void a(View view)
    {
        d(view);
    }

    private void b()
    {
        c = (IgTabWidget)findViewById(0x1020013);
        if (c == null)
        {
            throw new RuntimeException("Your TabHost must have a TabWidget whose id attribute is 'android.R.id.tabs'");
        }
        h = new b(this);
        c.setTabSelectionListener(new c(this));
        d = (FrameLayout)findViewById(0x1020011);
        if (d == null)
        {
            throw new RuntimeException("Your TabHost must have a FrameLayout whose id attribute is 'android.R.id.tabcontent'");
        } else
        {
            return;
        }
    }

    static void b(View view)
    {
        c(view);
    }

    private void c()
    {
        if (g != null)
        {
            g.a(getCurrentTabTag());
        }
    }

    private static void c(View view)
    {
        view.onStartTemporaryDetach();
        if (view instanceof ViewGroup)
        {
            ViewGroup viewgroup = (ViewGroup)view;
            int i = viewgroup.getChildCount();
            for (int j = 0; j < i; j++)
            {
                c(viewgroup.getChildAt(j));
            }

        }
    }

    private static void d(View view)
    {
        view.onFinishTemporaryDetach();
        if (view instanceof ViewGroup)
        {
            ViewGroup viewgroup = (ViewGroup)view;
            int i = viewgroup.getChildCount();
            for (int j = 0; j < i; j++)
            {
                d(viewgroup.getChildAt(j));
            }

        }
    }

    private int getTabWidgetLocation()
    {
        switch (c.getOrientation())
        {
        default:
            return d.getTop() >= c.getTop() ? 1 : 3;

        case 1: // '\001'
            break;
        }
        return d.getLeft() >= c.getLeft() ? 0 : 2;
    }

    public final h a(String s)
    {
        return new h(this, s, (byte)0);
    }

    public final void a(h h1)
    {
        if (com.instagram.base.activity.tabactivity.h.a(h1) == null)
        {
            throw new IllegalArgumentException("you must specify a way to create the tab indicator.");
        }
        if (com.instagram.base.activity.tabactivity.h.b(h1) == null)
        {
            throw new IllegalArgumentException("you must specify a way to create the tab content");
        }
        View view = com.instagram.base.activity.tabactivity.h.a(h1).a();
        view.setOnKeyListener(h);
        c.addView(view);
        e.add(h1);
        if (a == -1)
        {
            setCurrentTab(0);
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        boolean flag = super.dispatchKeyEvent(keyevent);
        if (flag || keyevent.getAction() != 0 || f == null || !f.hasFocus()) goto _L2; else goto _L1
_L1:
        getTabWidgetLocation();
        JVM INSTR tableswitch 0 3: default 68
    //                   0 124
    //                   1 68
    //                   2 137
    //                   3 150;
           goto _L3 _L4 _L3 _L5 _L6
_L3:
        byte byte0;
        char c1;
        byte byte1;
        byte0 = 19;
        c1 = '!';
        byte1 = 2;
_L7:
        if (keyevent.getKeyCode() == byte0 && f.findFocus().focusSearch(c1) == null)
        {
            c.a(a).requestFocus();
            playSoundEffect(byte1);
            return true;
        }
        break; /* Loop/switch isn't completed */
_L4:
        byte0 = 21;
        c1 = '\021';
        byte1 = 1;
        continue; /* Loop/switch isn't completed */
_L5:
        byte0 = 22;
        c1 = 'B';
        byte1 = 3;
        continue; /* Loop/switch isn't completed */
_L6:
        byte0 = 20;
        c1 = '\202';
        byte1 = 4;
        if (true) goto _L7; else goto _L2
_L2:
        return flag;
    }

    public void dispatchWindowFocusChanged(boolean flag)
    {
        if (f != null)
        {
            f.dispatchWindowFocusChanged(flag);
        }
    }

    public int getCurrentTab()
    {
        return a;
    }

    public String getCurrentTabTag()
    {
        if (a >= 0 && a < e.size())
        {
            return ((h)e.get(a)).a();
        } else
        {
            return null;
        }
    }

    public View getCurrentTabView()
    {
        if (a >= 0 && a < e.size())
        {
            return c.a(a);
        } else
        {
            return null;
        }
    }

    public View getCurrentView()
    {
        return f;
    }

    public FrameLayout getTabContentView()
    {
        return d;
    }

    public IgTabWidget getTabWidget()
    {
        return c;
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        getViewTreeObserver().addOnTouchModeChangeListener(this);
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnTouchModeChangeListener(this);
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        super.onInitializeAccessibilityEvent(accessibilityevent);
        accessibilityevent.setClassName(com/instagram/base/activity/tabactivity/IgTabHost.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilitynodeinfo)
    {
        super.onInitializeAccessibilityNodeInfo(accessibilitynodeinfo);
        accessibilitynodeinfo.setClassName(com/instagram/base/activity/tabactivity/IgTabHost.getName());
    }

    public void onTouchModeChanged(boolean flag)
    {
        if (!flag && f != null && (!f.hasFocus() || f.isFocused()))
        {
            c.a(a).requestFocus();
        }
    }

    public void sendAccessibilityEvent(int i)
    {
    }

    public void setCurrentTab(int i)
    {
        while (i < 0 || i >= e.size() || i == a) 
        {
            return;
        }
        if (a != -1)
        {
            com.instagram.base.activity.tabactivity.h.b((h)e.get(a)).b();
        }
        a = i;
        h h1 = (h)e.get(i);
        c.b(a);
        f = com.instagram.base.activity.tabactivity.h.b(h1).a();
        if (f.getParent() == null)
        {
            d.addView(f, new android.view.ViewGroup.LayoutParams(-1, -1));
        }
        if (!c.hasFocus())
        {
            f.requestFocus();
        }
        c();
    }

    public void setCurrentTabByTag(String s)
    {
        int i = 0;
        do
        {
label0:
            {
                if (i < e.size())
                {
                    if (!((h)e.get(i)).a().equals(s))
                    {
                        break label0;
                    }
                    setCurrentTab(i);
                }
                return;
            }
            i++;
        } while (true);
    }

    public void setOnTabChangedListener(g g1)
    {
        g = g1;
    }

    public void setup(LocalActivityManager localactivitymanager)
    {
        b();
        b = localactivitymanager;
    }
}
