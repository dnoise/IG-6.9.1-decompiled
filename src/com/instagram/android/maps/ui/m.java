// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import com.facebook.as;
import com.facebook.at;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.instagram.android.g.b;
import com.instagram.common.g.b.h;
import com.instagram.common.ui.widget.imageview.ConstrainedImageView;
import java.util.List;

// Referenced classes of package com.instagram.android.maps.ui:
//            IgAnimatingMapItem, b, p, q, 
//            t, ad, w, n, 
//            v, u, ae, o, 
//            ah, x, y, aa, 
//            ab, af, d

public final class m extends PopupWindow
{

    private final Context a;
    private final af b;
    private final Handler c;
    private com.instagram.android.maps.ui.b d;
    private List e;
    private m f;
    private View g;
    private m h;
    private Runnable i;
    private View j;
    private ah k;
    private FrameLayout l;

    public m(Context context, af af, List list, View view, View view1)
    {
        super(new FrameLayout(context), -1, -1);
        c = new Handler();
        a = context;
        b = af;
        g = view;
        j = view1;
        e = list;
        getContentView().setWillNotDraw(false);
        a(list);
    }

    public m(Context context, af af, List list, View view, ah ah1)
    {
        super(new FrameLayout(context), -1, -1);
        c = new Handler();
        a = context;
        b = af;
        g = view;
        k = ah1;
        e = list;
        getContentView().setWillNotDraw(false);
        a(list);
    }

    private LinearLayout a(boolean flag)
    {
        LinearLayout linearlayout = new LinearLayout(j());
        linearlayout.setGravity(17);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0F);
        int i1 = j().getResources().getDimensionPixelSize(at.map_media_inner_margin);
        if (flag)
        {
            layoutparams.setMargins(0, i1, 0, 0);
        }
        linearlayout.setLayoutParams(layoutparams);
        return linearlayout;
    }

    static m a(m m1, m m2)
    {
        m1.h = m2;
        return m2;
    }

    private void a(int i1, int j1)
    {
        for (int k1 = 0; k1 < ((ViewGroup)getContentView()).getChildCount(); k1++)
        {
            ((IgAnimatingMapItem)((ViewGroup)getContentView()).getChildAt(k1)).a(i1, j1);
        }

    }

    private void a(View view)
    {
        f().addView(view);
    }

    private void a(b b1, View view)
    {
        if (f != null)
        {
            c.post(new p(this));
            return;
        }
        if (e.size() != 1)
        {
            c.post(new q(this, b1, view));
            return;
        } else
        {
            c.post(new t(this));
            return;
        }
    }

    private void a(b b1, ViewGroup viewgroup)
    {
        c(b1, viewgroup).setOnClickListener(new ad(this, b1, viewgroup));
    }

    private void a(b b1, LinearLayout linearlayout)
    {
        IgAnimatingMapItem iganimatingmapitem = (IgAnimatingMapItem)LayoutInflater.from(j()).inflate(aw.animated_info_button, null);
        iganimatingmapitem.setLayoutParams(new android.widget.LinearLayout.LayoutParams(-1, -2, 0.0F));
        iganimatingmapitem.findViewById(av.animated_info_button).setOnClickListener(new w(this, b1));
        linearlayout.addView(iganimatingmapitem);
    }

    static void a(m m1, int i1, int j1)
    {
        m1.a(i1, j1);
    }

    static void a(m m1, b b1, View view)
    {
        m1.a(b1, view);
    }

    private void a(List list)
    {
        LinearLayout linearlayout;
        if (k != null)
        {
            super.getContentView().setBackgroundResource(as.dialog_background);
        }
        ((ViewGroup)getContentView()).addView(f());
        getContentView().setOnClickListener(new n(this));
        linearlayout = e();
        if (list.size() != 1) goto _L2; else goto _L1
_L1:
        a((b)list.get(0), ((ViewGroup) (linearlayout)));
        a(((View) (linearlayout)));
        LinearLayout linearlayout12 = a(false);
        a((b)list.get(0), linearlayout12);
        a(((View) (linearlayout12)));
_L4:
        if (list.size() > 1)
        {
            b(list);
        }
        return;
_L2:
        if (list.size() == 2)
        {
            b((b)list.get(0), linearlayout);
            b((b)list.get(1), linearlayout);
            a(((View) (linearlayout)));
        } else
        if (list.size() == 3)
        {
            b((b)list.get(0), linearlayout);
            a(((View) (linearlayout)));
            LinearLayout linearlayout11 = a(true);
            b((b)list.get(1), linearlayout11);
            b((b)list.get(2), linearlayout11);
            a(((View) (linearlayout11)));
        } else
        if (list.size() == 4)
        {
            b((b)list.get(0), linearlayout);
            b((b)list.get(1), linearlayout);
            a(((View) (linearlayout)));
            LinearLayout linearlayout10 = a(true);
            b((b)list.get(2), linearlayout10);
            b((b)list.get(3), linearlayout10);
            a(((View) (linearlayout10)));
        } else
        if (list.size() == 5)
        {
            b((b)list.get(0), linearlayout);
            b((b)list.get(1), linearlayout);
            a(((View) (linearlayout)));
            LinearLayout linearlayout9 = a(true);
            b((b)list.get(2), linearlayout9);
            b((b)list.get(3), linearlayout9);
            b((b)list.get(4), linearlayout9);
            a(((View) (linearlayout9)));
        } else
        if (list.size() == 6)
        {
            b((b)list.get(0), linearlayout);
            b((b)list.get(1), linearlayout);
            b((b)list.get(2), linearlayout);
            a(((View) (linearlayout)));
            LinearLayout linearlayout8 = a(true);
            b((b)list.get(3), linearlayout8);
            b((b)list.get(4), linearlayout8);
            b((b)list.get(5), linearlayout8);
            a(((View) (linearlayout8)));
        } else
        if (list.size() == 7)
        {
            b((b)list.get(0), linearlayout);
            b((b)list.get(1), linearlayout);
            a(((View) (linearlayout)));
            LinearLayout linearlayout6 = a(true);
            b((b)list.get(2), linearlayout6);
            b((b)list.get(3), linearlayout6);
            a(((View) (linearlayout6)));
            LinearLayout linearlayout7 = a(true);
            b((b)list.get(4), linearlayout7);
            b((b)list.get(5), linearlayout7);
            b((b)list.get(6), linearlayout7);
            a(((View) (linearlayout7)));
        } else
        if (list.size() == 8)
        {
            b((b)list.get(0), linearlayout);
            b((b)list.get(1), linearlayout);
            a(((View) (linearlayout)));
            LinearLayout linearlayout4 = a(true);
            b((b)list.get(2), linearlayout4);
            b((b)list.get(3), linearlayout4);
            b((b)list.get(4), linearlayout4);
            a(((View) (linearlayout4)));
            LinearLayout linearlayout5 = a(true);
            b((b)list.get(5), linearlayout5);
            b((b)list.get(6), linearlayout5);
            b((b)list.get(7), linearlayout5);
            a(((View) (linearlayout5)));
        } else
        if (list.size() >= 9)
        {
            b((b)list.get(0), linearlayout);
            b((b)list.get(1), linearlayout);
            b((b)list.get(2), linearlayout);
            a(((View) (linearlayout)));
            LinearLayout linearlayout1 = a(true);
            b((b)list.get(3), linearlayout1);
            b((b)list.get(4), linearlayout1);
            b((b)list.get(5), linearlayout1);
            a(((View) (linearlayout1)));
            LinearLayout linearlayout2 = a(true);
            b((b)list.get(6), linearlayout2);
            b((b)list.get(7), linearlayout2);
            b((b)list.get(8), linearlayout2);
            a(((View) (linearlayout2)));
            if (list.size() > 9)
            {
                LinearLayout linearlayout3 = a(true);
                a(list, linearlayout3);
                a(((View) (linearlayout3)));
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void a(List list, LinearLayout linearlayout)
    {
        IgAnimatingMapItem iganimatingmapitem = (IgAnimatingMapItem)LayoutInflater.from(j()).inflate(aw.animated_map_button, null);
        iganimatingmapitem.setLayoutParams(new android.widget.LinearLayout.LayoutParams(0, -1, 1.0F));
        Button button = (Button)iganimatingmapitem.findViewById(av.animated_map_button);
        Context context = j();
        int i1 = az.show_all_x_photos;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.toString(list.size());
        button.setText(context.getString(i1, aobj));
        button.setOnClickListener(new v(this, list));
        linearlayout.addView(iganimatingmapitem);
    }

    private void b(int i1, int j1)
    {
        c.postDelayed(new u(this, i1), j1);
    }

    private void b(b b1, ViewGroup viewgroup)
    {
        c(b1, viewgroup).setOnClickListener(new ae(this, b1));
    }

    static void b(m m1)
    {
        m1.c();
    }

    private void b(List list)
    {
        WindowManager windowmanager = (WindowManager)j().getSystemService("window");
        DisplayMetrics displaymetrics = new DisplayMetrics();
        windowmanager.getDefaultDisplay().getMetrics(displaymetrics);
        int i1 = displaymetrics.widthPixels - j().getResources().getDimensionPixelSize(at.maps_full_frame_total_width_padding);
        for (int j1 = 0; j1 < list.size() && j1 < 9; j1++)
        {
            com.instagram.common.g.b.h.a().c(((b)list.get(j1)).a(i1));
        }

    }

    private IgAnimatingMapItem c(b b1, ViewGroup viewgroup)
    {
        IgAnimatingMapItem iganimatingmapitem = (IgAnimatingMapItem)LayoutInflater.from(j()).inflate(aw.constrained_image_view, null);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(0, -1, 1.0F);
        if (viewgroup.getChildCount() > 0)
        {
            layoutparams.setMargins(j().getResources().getDimensionPixelSize(at.map_media_inner_margin), 0, 0, 0);
        }
        iganimatingmapitem.setLayoutParams(layoutparams);
        ConstrainedImageView constrainedimageview = (ConstrainedImageView)iganimatingmapitem.findViewById(av.constrained_image_view);
        constrainedimageview.setOnMeasureListener(new o(this, constrainedimageview, b1));
        iganimatingmapitem.invalidate();
        viewgroup.addView(iganimatingmapitem);
        return iganimatingmapitem;
    }

    static af c(m m1)
    {
        return m1.b;
    }

    private void c()
    {
        if (j != null)
        {
            i();
        } else
        if (k != null)
        {
            a(k.g().x, k.g().y);
            return;
        }
    }

    static ah d(m m1)
    {
        return m1.k;
    }

    private void d()
    {
        for (int i1 = 0; i1 < ((ViewGroup)getContentView()).getChildCount(); i1++)
        {
            ((IgAnimatingMapItem)((ViewGroup)getContentView()).getChildAt(i1)).b();
        }

    }

    static Handler e(m m1)
    {
        return m1.c;
    }

    private LinearLayout e()
    {
        LinearLayout linearlayout = new LinearLayout(j());
        linearlayout.setGravity(17);
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, 0, 1.0F);
        layoutparams.setMargins(0, j().getResources().getDimensionPixelSize(at.map_media_centering_offset), 0, 0);
        linearlayout.setLayoutParams(layoutparams);
        return linearlayout;
    }

    private com.instagram.android.maps.ui.b f()
    {
        if (d != null) goto _L2; else goto _L1
_L1:
        d = new com.instagram.android.maps.ui.b(j());
        d.setOrientation(1);
        d.setGravity(17);
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-1, -2, 17);
        int i1 = g();
        layoutparams.setMargins(i1, i1, i1, i1);
        d.setLayoutParams(layoutparams);
        if (k == null) goto _L4; else goto _L3
_L3:
        d.setOriginalSize(k.f());
        d.setStartX(k.g().x);
        d.setStartY(k.g().y);
        d.setAnimationStartListener(new x(this));
        d.setReverseAnimationPreFinishListener(new y(this));
_L6:
        d.a();
_L2:
        return d;
_L4:
        if (j != null)
        {
            int ai[] = new int[2];
            j.getLocationOnScreen(ai);
            d.setOriginalSize(j.getWidth());
            d.setStartX(((View)j.getParent()).getLeft());
            d.setStartY(((View)j.getParent()).getTop());
            d.setAnimationStartListener(new aa(this));
            d.setReverseAnimationPreFinishListener(new ab(this));
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    static com.instagram.android.maps.ui.b f(m m1)
    {
        return m1.d;
    }

    private int g()
    {
        return j().getResources().getDimensionPixelSize(at.map_media_outer_margin);
    }

    static View g(m m1)
    {
        return m1.j;
    }

    private void h()
    {
        b(4, 100);
    }

    static void h(m m1)
    {
        m1.i();
    }

    static Context i(m m1)
    {
        return m1.j();
    }

    private void i()
    {
        d();
        f.b(0, 350);
    }

    private Context j()
    {
        return a;
    }

    static View j(m m1)
    {
        return m1.g;
    }

    static m k(m m1)
    {
        return m1.h;
    }

    static void l(m m1)
    {
        m1.h();
    }

    public final void a()
    {
        if (h != null && h.isShowing())
        {
            h.a();
            return;
        } else
        {
            c();
            return;
        }
    }

    public final void a(d d1)
    {
        f().setReverAnimationFinishListener(d1);
    }

    public final void a(m m1)
    {
        f = m1;
    }

    public final void b()
    {
        if (h != null)
        {
            h.dismiss();
        }
        dismiss();
    }

    public final void dismiss()
    {
        super.dismiss();
        if (k != null)
        {
            k.c();
        }
        if (j != null)
        {
            j.setVisibility(0);
        }
        if (i != null)
        {
            i.run();
        }
    }

    public final View getContentView()
    {
        if (l == null)
        {
            l = new FrameLayout(j());
            l.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
            ((ViewGroup)super.getContentView()).addView(l);
        }
        return l;
    }
}
