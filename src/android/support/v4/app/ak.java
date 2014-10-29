// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

// Referenced classes of package android.support.v4.app:
//            Fragment, al, am

public class ak extends Fragment
{

    ListAdapter a;
    private final Runnable aa = new al(this);
    private final android.widget.AdapterView.OnItemClickListener ab = new am(this);
    ListView b;
    View c;
    TextView d;
    View e;
    View f;
    CharSequence g;
    boolean h;
    private final Handler i = new Handler();

    public ak()
    {
    }

    private void W()
    {
        if (b != null)
        {
            return;
        }
        View view = E();
        if (view == null)
        {
            throw new IllegalStateException("Content view not yet created");
        }
        if (view instanceof ListView)
        {
            b = (ListView)view;
        } else
        {
            d = (TextView)view.findViewById(0xff0001);
            View view1;
            if (d == null)
            {
                c = view.findViewById(0x1020004);
            } else
            {
                d.setVisibility(8);
            }
            e = view.findViewById(0xff0002);
            f = view.findViewById(0xff0003);
            view1 = view.findViewById(0x102000a);
            if (!(view1 instanceof ListView))
            {
                if (view1 == null)
                {
                    throw new RuntimeException("Your content must have a ListView whose id attribute is 'android.R.id.list'");
                } else
                {
                    throw new RuntimeException("Content has view with id attribute 'android.R.id.list' that is not a ListView class");
                }
            }
            b = (ListView)view1;
            if (c != null)
            {
                b.setEmptyView(c);
            } else
            if (g != null)
            {
                d.setText(g);
                b.setEmptyView(d);
            }
        }
        h = true;
        b.setOnItemClickListener(ab);
        if (a != null)
        {
            ListAdapter listadapter = a;
            a = null;
            a(listadapter);
        } else
        if (e != null)
        {
            a(false, false);
        }
        i.post(aa);
    }

    public static void a()
    {
    }

    private void a(boolean flag, boolean flag1)
    {
        W();
        if (e == null)
        {
            throw new IllegalStateException("Can't be used with a custom content view");
        }
        if (h == flag)
        {
            return;
        }
        h = flag;
        if (flag)
        {
            if (flag1)
            {
                e.startAnimation(AnimationUtils.loadAnimation(n(), 0x10a0001));
                f.startAnimation(AnimationUtils.loadAnimation(n(), 0x10a0000));
            } else
            {
                e.clearAnimation();
                f.clearAnimation();
            }
            e.setVisibility(8);
            f.setVisibility(0);
            return;
        }
        if (flag1)
        {
            e.startAnimation(AnimationUtils.loadAnimation(n(), 0x10a0000));
            f.startAnimation(AnimationUtils.loadAnimation(n(), 0x10a0001));
        } else
        {
            e.clearAnimation();
            f.clearAnimation();
        }
        e.setVisibility(0);
        f.setVisibility(8);
    }

    public View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        android.content.Context context = n();
        FrameLayout framelayout = new FrameLayout(context);
        LinearLayout linearlayout = new LinearLayout(context);
        linearlayout.setId(0xff0002);
        linearlayout.setOrientation(1);
        linearlayout.setVisibility(8);
        linearlayout.setGravity(17);
        linearlayout.addView(new ProgressBar(context, null, 0x101007a), new android.widget.FrameLayout.LayoutParams(-2, -2));
        framelayout.addView(linearlayout, new android.widget.FrameLayout.LayoutParams(-1, -1));
        FrameLayout framelayout1 = new FrameLayout(context);
        framelayout1.setId(0xff0003);
        TextView textview = new TextView(n());
        textview.setId(0xff0001);
        textview.setGravity(17);
        framelayout1.addView(textview, new android.widget.FrameLayout.LayoutParams(-1, -1));
        ListView listview = new ListView(n());
        listview.setId(0x102000a);
        listview.setDrawSelectorOnTop(false);
        framelayout1.addView(listview, new android.widget.FrameLayout.LayoutParams(-1, -1));
        framelayout.addView(framelayout1, new android.widget.FrameLayout.LayoutParams(-1, -1));
        framelayout.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
        return framelayout;
    }

    public void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        W();
    }

    public final void a(ListAdapter listadapter)
    {
        boolean flag;
        if (a != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a = listadapter;
        if (b != null)
        {
            b.setAdapter(listadapter);
            if (!h && !flag)
            {
                android.os.IBinder ibinder = E().getWindowToken();
                boolean flag1 = false;
                if (ibinder != null)
                {
                    flag1 = true;
                }
                a(true, flag1);
            }
        }
    }

    public final void a_(int j)
    {
        W();
        b.setSelection(j);
    }

    public final ListAdapter c()
    {
        return a;
    }

    public void m_()
    {
        i.removeCallbacks(aa);
        b = null;
        h = false;
        f = null;
        e = null;
        c = null;
        d = null;
        super.m_();
    }

    public final ListView v_()
    {
        W();
        return b;
    }
}
