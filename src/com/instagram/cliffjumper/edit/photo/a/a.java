// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.app.Dialog;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.app.k;
import android.view.LayoutInflater;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewSwitcher;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.facebook.ba;
import com.instagram.base.a.b;
import com.instagram.cliffjumper.edit.common.effectfilter.CjFilter;
import com.instagram.cliffjumper.edit.common.effectfilter.c;
import com.instagram.cliffjumper.edit.common.effectfilter.e;
import com.instagram.cliffjumper.edit.common.effectfilter.i;
import com.instagram.cliffjumper.edit.common.filters.BasicAdjustFilter;
import com.instagram.cliffjumper.edit.common.ui.EffectPicker;
import com.instagram.cliffjumper.edit.photo.lux.LuxFilter;
import com.instagram.cliffjumper.edit.photo.resize.IdentityFilter;
import com.instagram.cliffjumper.edit.photo.tiltshift.TiltShiftBlurFilter;
import com.instagram.cliffjumper.edit.photo.tiltshift.TiltShiftFogFilter;
import com.instagram.cliffjumper.edit.photo.tiltshift.l;
import com.instagram.cliffjumper.edit.photo.tiltshift.m;
import com.instagram.cliffjumper.util.a.d;
import com.instagram.creation.photo.gallery.ImageManager;
import com.instagram.filterkit.filter.IgFilter;
import com.instagram.filterkit.filter.IgFilterGroup;
import com.instagram.ui.dialog.f;
import java.text.DecimalFormat;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.a:
//            z, b, m, ac, 
//            w, ae, ad, h, 
//            i, f, g, l, 
//            j, k, o, n, 
//            p, q, r, s, 
//            t, v, c, af, 
//            d, e, u

public class a extends b
    implements com.instagram.common.t.a
{

    private static final Class a = com/instagram/cliffjumper/edit/photo/a/a;
    private static final DecimalFormat b = new DecimalFormat("0.0\260");
    private com.instagram.cliffjumper.ui.b aA;
    private View aa;
    private View ab;
    private View ac;
    private FrameLayout ad;
    private ImageView ae;
    private ImageView af;
    private ImageView ag;
    private ImageView ah;
    private ViewSwitcher ai;
    private ViewSwitcher aj;
    private TextView ak;
    private ViewSwitcher al;
    private ViewGroup am;
    private EffectPicker an;
    private EffectPicker ao;
    private IgFilterGroup ap;
    private int aq;
    private int ar;
    private com.instagram.cliffjumper.edit.common.ui.a as;
    private boolean at;
    private com.instagram.creation.photo.gallery.c au;
    private com.instagram.filterkit.c.c av;
    private boolean aw;
    private com.instagram.cliffjumper.edit.photo.lux.a ax;
    private Dialog ay;
    private boolean az;
    private final z c = new z(this, (byte)0);
    private final com.instagram.cliffjumper.edit.common.ui.b d = new com.instagram.cliffjumper.edit.photo.a.b(this);
    private final Handler e = new com.instagram.cliffjumper.edit.photo.a.m(this);
    private long f;
    private final CjFilter g = com.instagram.cliffjumper.edit.common.effectfilter.e.a(null).a();
    private final ac h = new ac(this, (byte)0);
    private f i;

    public a()
    {
        aq = 0;
        ar = w.a;
        at = false;
        ax = new com.instagram.cliffjumper.edit.photo.lux.a();
    }

    static Class V()
    {
        return a;
    }

    private View W()
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            TextureView textureview = new TextureView(n());
            textureview.setId(av.filter_view);
            textureview.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
            textureview.setSurfaceTextureListener(new ae(this, (byte)0));
            return textureview;
        } else
        {
            SurfaceView surfaceview = new SurfaceView(n());
            surfaceview.setId(av.filter_view);
            surfaceview.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1));
            surfaceview.getHolder().addCallback(new ad(this, (byte)0));
            return surfaceview;
        }
    }

    private void X()
    {
        if (aA != null && aA.isShowing())
        {
            aA.dismiss();
            an.setOnTouchListener(null);
            aA = null;
        }
    }

    private View Y()
    {
        ag = a(au.toolbar_straighten);
        ag.setOnClickListener(new h(this));
        ImageView imageview = ag;
        boolean flag;
        if (((CjFilter)ap.a(5)).h() != 0.0F)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        imageview.setSelected(flag);
        return ag;
    }

    private View Z()
    {
        ah = a(au.edit_glyph_dof);
        ah.setOnClickListener(new com.instagram.cliffjumper.edit.photo.a.i(this));
        com.instagram.cliffjumper.edit.photo.tiltshift.b.a(ah, com.instagram.cliffjumper.edit.photo.tiltshift.m.a(ap).f());
        return ah;
    }

    static int a(a a1, int i1)
    {
        a1.ar = i1;
        return i1;
    }

    private ImageView a(int i1)
    {
        ImageView imageview = new ImageView(n());
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(0, -1, 1.0F);
        layoutparams.gravity = 17;
        imageview.setScaleType(android.widget.ImageView.ScaleType.CENTER_INSIDE);
        imageview.setImageResource(i1);
        imageview.setLayoutParams(layoutparams);
        return imageview;
    }

    static com.instagram.filterkit.c.c a(a a1, com.instagram.filterkit.c.c c1)
    {
        a1.av = c1;
        return c1;
    }

    private void a(View view, int i1)
    {
        if (aA == null)
        {
            aA = new com.instagram.cliffjumper.ui.b(n());
            aA.setAnimationStyle(ba.NuxBubbleTransitionStyle);
        }
        if (aA.isShowing())
        {
            return;
        } else
        {
            com.instagram.cliffjumper.edit.photo.a.f f1 = new com.instagram.cliffjumper.edit.photo.a.f(this);
            an.setOnTouchListener(f1);
            aA.showAtLocation(view, 83, 0, 0);
            aA.a(view, i1);
            com.instagram.l.b.a.a().F();
            e.postDelayed(new g(this), 3500L);
            return;
        }
    }

    private void a(com.instagram.cliffjumper.edit.common.ui.a a1)
    {
        as = a1;
        ai.setDisplayedChild(1);
        aj.setDisplayedChild(1);
        ak.setText(as.a());
        am.addView(as.a(n()));
        X();
        if (!com.instagram.cliffjumper.util.a.b.a())
        {
            af();
        }
    }

    static void a(a a1)
    {
        a1.af();
    }

    static void a(a a1, View view, int i1)
    {
        a1.a(view, i1);
    }

    static void a(a a1, com.instagram.cliffjumper.edit.common.ui.a a2)
    {
        a1.a(a2);
    }

    static void a(a a1, String s1)
    {
        a1.b(s1);
    }

    private void a(String s1)
    {
        com.instagram.p.a.m.b().a("error", (new StringBuilder("Rendering error: ")).append(s1).toString()).a();
        if (n() == null)
        {
            return;
        } else
        {
            e.removeMessages(1);
            c();
            (new com.instagram.ui.dialog.b(n())).b(az.photo_edit_error_message).b(az.ok, new com.instagram.cliffjumper.edit.photo.a.l(this)).a(az.photo_edit_error_title).a(false).c().show();
            return;
        }
    }

    static boolean a(a a1, boolean flag)
    {
        a1.at = flag;
        return flag;
    }

    private View aa()
    {
        ImageView imageview = a(au.tool_border);
        imageview.setOnClickListener(new j(this));
        imageview.setSelected(ap.b(20));
        return imageview;
    }

    private void ab()
    {
        boolean flag = true;
        ImageView imageview = ae;
        boolean flag1;
        ImageView imageview1;
        if (ar == w.a)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        imageview.setSelected(flag1);
        imageview1 = af;
        if (ar != com.instagram.cliffjumper.edit.photo.a.w.b)
        {
            flag = false;
        }
        imageview1.setSelected(flag);
        al.setDisplayedChild(-1 + ar);
        X();
    }

    private void ac()
    {
        if (ab != null && ab.getVisibility() == 0)
        {
            ab.setVisibility(8);
        }
        e.removeMessages(1);
        c();
        if (aa != null)
        {
            aa.setOnClickListener(new com.instagram.cliffjumper.edit.photo.a.k(this));
        }
    }

    private boolean ad()
    {
        if (!com.instagram.cliffjumper.util.a.c.a().e)
        {
            return false;
        }
        boolean flag = com.instagram.cliffjumper.edit.common.effectfilter.i.a(ap).l();
        boolean flag1 = ((BasicAdjustFilter)ap.a(4)).j();
        boolean flag2 = ap.b(3);
        boolean flag3;
        if (com.instagram.cliffjumper.edit.photo.tiltshift.m.a(ap).f() != l.a)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        return flag || flag1 || flag2 || flag3;
    }

    private void ae()
    {
        aw = true;
        af();
    }

    private void af()
    {
        if (aw && av != null && !av.c())
        {
            av.a();
        }
    }

    private com.instagram.creation.photo.gallery.c ag()
    {
        if (au == null)
        {
            Uri uri = Uri.parse(j().getString("mediaFilePath"));
            au = ImageManager.a(l().getContentResolver(), uri).a(uri);
        }
        return au;
    }

    private int ah()
    {
        return ImageManager.a(ag().a());
    }

    private com.instagram.creation.b.a.i ai()
    {
        com.instagram.creation.b.a.i i1;
        i1 = new com.instagram.creation.b.a.i();
        CjFilter cjfilter = d();
        if (cjfilter.m() != 0)
        {
            i1.a = Integer.valueOf(cjfilter.m());
            i1.b = Float.valueOf((float)cjfilter.k() / 100F);
        }
        if (ap.b(20))
        {
            i1.c = Integer.valueOf(1);
        }
        if (!com.instagram.cliffjumper.util.a.c.a().d) goto _L2; else goto _L1
_L1:
        TiltShiftBlurFilter tiltshiftblurfilter;
        l l1;
        if (ap.b(3))
        {
            i1.d = Float.valueOf((float)((LuxFilter)ap.a(3)).e() / 100F);
        }
        tiltshiftblurfilter = (TiltShiftBlurFilter)ap.a(11);
        l1 = tiltshiftblurfilter.f();
        if (l1 == l.a) goto _L2; else goto _L3
_L3:
        o.a[l1.ordinal()];
        JVM INSTR tableswitch 1 2: default 172
    //                   1 450
    //                   2 461;
           goto _L4 _L5 _L6
_L4:
        com.instagram.common.i.c.b(a.getSimpleName(), (new StringBuilder("Unexpected tiltshift mode ")).append(l1.toString()).toString());
_L8:
        i1.o = Float.valueOf(tiltshiftblurfilter.i());
        i1.n = tiltshiftblurfilter.g();
        if (l1 == l.c)
        {
            i1.p = Float.valueOf(tiltshiftblurfilter.h());
        }
_L2:
        if (com.instagram.cliffjumper.util.a.c.a().e)
        {
            BasicAdjustFilter basicadjustfilter = (BasicAdjustFilter)ap.a(4);
            if (basicadjustfilter.a() != 0)
            {
                i1.e = Float.valueOf((float)basicadjustfilter.a() / 100F);
            }
            if (basicadjustfilter.b() != 0)
            {
                i1.f = Float.valueOf((float)basicadjustfilter.b() / 100F);
            }
            if (basicadjustfilter.e() != 0)
            {
                i1.g = Float.valueOf((float)basicadjustfilter.e() / 100F);
            }
            if (basicadjustfilter.C_() != 0)
            {
                i1.h = Float.valueOf((float)basicadjustfilter.C_() / 100F);
            }
            if (basicadjustfilter.g() != 0)
            {
                i1.i = Float.valueOf((float)basicadjustfilter.g() / 100F);
            }
            if (basicadjustfilter.h() != 0)
            {
                i1.j = Float.valueOf((float)basicadjustfilter.h() / 100F);
            }
            if (basicadjustfilter.f() != 0)
            {
                i1.k = Float.valueOf((float)basicadjustfilter.f() / 100F);
            }
            if (basicadjustfilter.i() != 0)
            {
                i1.l = Float.valueOf((float)basicadjustfilter.i() / 100F);
            }
        }
        return i1;
_L5:
        i1.m = Integer.valueOf(1);
        continue; /* Loop/switch isn't completed */
_L6:
        i1.m = Integer.valueOf(2);
        if (true) goto _L8; else goto _L7
_L7:
    }

    static long b(a a1)
    {
        return a1.f;
    }

    static void b(a a1, String s1)
    {
        a1.a(s1);
    }

    static void b(a a1, boolean flag)
    {
        a1.c(flag);
    }

    private void b(String s1)
    {
        i = new f(l());
        i.a(s1);
        i.setCancelable(false);
        i.show();
    }

    static void c(a a1)
    {
        a1.ac();
    }

    private void c(boolean flag)
    {
        if (as != null)
        {
            as.a(flag);
            as = null;
            ai.setDisplayedChild(0);
            aj.setDisplayedChild(0);
            am.removeAllViews();
            ac.setOnTouchListener(h);
            af();
        }
    }

    static boolean d(a a1)
    {
        a1.az = true;
        return true;
    }

    static void e(a a1)
    {
        a1.ab();
    }

    static IgFilterGroup f(a a1)
    {
        return a1.ap;
    }

    static void g(a a1)
    {
        a1.X();
    }

    static View h(a a1)
    {
        return a1.ac;
    }

    static FrameLayout i(a a1)
    {
        return a1.ad;
    }

    static com.instagram.cliffjumper.edit.common.ui.b j(a a1)
    {
        return a1.d;
    }

    static ac k(a a1)
    {
        return a1.h;
    }

    static boolean l(a a1)
    {
        return a1.at;
    }

    static ImageView m(a a1)
    {
        return a1.ag;
    }

    static ImageView n(a a1)
    {
        return a1.ah;
    }

    static com.instagram.filterkit.c.c o(a a1)
    {
        return a1.av;
    }

    static z p(a a1)
    {
        return a1.c;
    }

    static void q(a a1)
    {
        a1.ae();
    }

    static com.instagram.creation.photo.gallery.c r(a a1)
    {
        return a1.ag();
    }

    static com.instagram.cliffjumper.edit.photo.lux.a s(a a1)
    {
        return a1.ax;
    }

    static Handler t(a a1)
    {
        return a1.e;
    }

    static int u(a a1)
    {
        return a1.ah();
    }

    static View v(a a1)
    {
        return a1.ab;
    }

    static com.instagram.creation.b.a.i w(a a1)
    {
        return a1.ai();
    }

    static CjFilter x(a a1)
    {
        return a1.g;
    }

    public final void F()
    {
        if (av == null)
        {
            e.sendEmptyMessageDelayed(1, 1500L);
        }
        super.F();
        l().setRequestedOrientation(1);
        l().getWindow().addFlags(1024);
        if (!aw)
        {
            e.post(new n(this));
        }
    }

    public final void G()
    {
        X();
        super.G();
    }

    public final void H()
    {
        super.H();
        c();
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        int i1;
        ViewGroup viewgroup1;
        if (com.instagram.creation.base.ui.a.b(o()))
        {
            i1 = aw.fragment_filter;
        } else
        {
            i1 = aw.fragment_filter_small;
        }
        viewgroup1 = (ViewGroup)layoutinflater.inflate(i1, viewgroup, false);
        com.instagram.creation.base.ui.a.a(viewgroup1);
        ad = (FrameLayout)viewgroup1.findViewById(av.creation_image_container);
        ad.addView(W(), 0);
        return viewgroup1;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        f = SystemClock.elapsedRealtime();
        if (bundle != null)
        {
            ap = (IgFilterGroup)bundle.getParcelable("selectedFilter");
            aq = bundle.getInt("rotation");
            ar = com.instagram.cliffjumper.edit.photo.a.w.a()[bundle.getInt("editMode")];
        } else
        {
            ap = new IgFilterGroup();
            if (com.instagram.cliffjumper.util.a.c.a().d)
            {
                ap.a(3, new LuxFilter());
                ap.a(3, false);
                ap.a(15, new TiltShiftFogFilter());
                ap.a(15, false);
                ap.a(11, new TiltShiftBlurFilter(1.0F, 0.0F));
                ap.a(11, false);
                ap.a(12, new TiltShiftBlurFilter(0.0F, 1.0F));
                ap.a(12, false);
            }
            if (com.instagram.cliffjumper.util.a.c.a().e)
            {
                ap.a(1, new IdentityFilter());
                ap.a(4, new BasicAdjustFilter());
                ap.a(4, com.instagram.cliffjumper.util.a.c.a().e);
            }
            CjFilter cjfilter = new CjFilter(-1, null, null);
            if (j().containsKey("cameraRotation"))
            {
                cjfilter.b(j().getBoolean("mirrorMedia", false));
                cjfilter.a(ah());
            }
            ap.a(5, cjfilter);
        }
        if (ag() == null)
        {
            if (s())
            {
                com.instagram.common.i.c.b("failed_to_load_gallery_image", "failed_to_load_gallery_image");
                Toast.makeText(l(), az.unable_to_load_image, 1).show();
                l().onBackPressed();
            }
            return;
        }
        break; /* Loop/switch isn't completed */
        if (j().containsKey("cameraRotation"))
        {
            g.a(ah());
            g.b(j().getBoolean("mirrorMedia", false));
        }
        ay = (new com.instagram.ui.dialog.b(n())).b(az.discard_dialog_text).b(az.dialog_option_discard, new p(this)).c(az.dialog_option_keep, null).a(az.discard_dialog_title).c();
        return;
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        boolean flag = com.instagram.creation.base.ui.a.b(o());
        ab = view.findViewById(av.loading_cover_for_surface_view);
        ac = view.findViewById(av.filter_view);
        ac.setOnTouchListener(h);
        aa = view.findViewById(av.button_next);
        View view1 = view.findViewById(av.button_back);
        view1.setOnClickListener(new q(this));
        if (flag)
        {
            view1.setBackgroundDrawable(new com.instagram.a.d(o(), com.instagram.a.e.a, 5));
        }
        aj = (ViewSwitcher)view.findViewById(av.creation_main_actions);
        ai = (ViewSwitcher)view.findViewById(av.action_bar_adjust_switcher);
        ak = (TextView)ai.findViewById(av.adjust_title);
        al = (ViewSwitcher)view.findViewById(av.filter_tool_switcher);
        am = (ViewGroup)view.findViewById(av.adjust_container);
        ae = (ImageView)view.findViewById(av.button_mode_filter);
        c ac1[];
        if (com.instagram.cliffjumper.util.a.c.a().e)
        {
            ae.setOnClickListener(new r(this));
        } else
        {
            ae.setVisibility(8);
        }
        com.instagram.p.a.l.c();
        an = (EffectPicker)view.findViewById(av.filter_picker);
        an.setFilterListener(new s(this));
        ac1 = com.instagram.cliffjumper.edit.common.effectfilter.e.a();
        for (int i1 = 0; i1 < 20; i1++)
        {
            ac1[i1].a().a(ax);
        }

        an.setEffects(ac1);
        CjFilter cjfilter = (CjFilter)ap.a(5);
        if (cjfilter != null && cjfilter.m() == -1 && bundle == null)
        {
            an.a();
        }
        if (com.instagram.cliffjumper.util.a.c.a().d)
        {
            ImageView imageview1 = (ImageView)view.findViewById(av.button_mode_lux);
            imageview1.setVisibility(0);
            imageview1.setOnClickListener(new t(this, imageview1));
            if (!com.instagram.cliffjumper.util.a.c.a().e)
            {
                imageview1.setImageResource(au.edit_glyph_lux);
                imageview1.setSelected(ap.b(3));
                ((LuxFilter)ap.a(3)).a(100);
            }
        } else
        {
            ImageView imageview = (ImageView)view.findViewById(av.button_mode_enh);
            imageview.setVisibility(0);
            imageview.setOnClickListener(new u(this, imageview));
            imageview.setImageResource(au.edit_glyph_lux);
            imageview.setSelected(at);
        }
        af = (ImageView)view.findViewById(av.button_mode_tools);
        if (com.instagram.cliffjumper.util.a.c.a().e)
        {
            af.setOnClickListener(new v(this));
            ao = (EffectPicker)view.findViewById(av.tool_picker);
            ao.setFilterListener(new com.instagram.cliffjumper.edit.photo.a.c(this));
            ao.setEffects(com.instagram.cliffjumper.edit.photo.a.af.a(n().getResources(), j().getFloat("straighteningAngle", 0.0F)));
        } else
        {
            af.setVisibility(8);
        }
        if (!com.instagram.cliffjumper.util.a.c.a().e)
        {
            ViewGroup viewgroup = (ViewGroup)view.findViewById(av.creation_secondary_actions);
            int j1;
            View view2;
            int k1;
            View view3;
            int l1;
            if (flag)
            {
                j1 = viewgroup.getChildCount();
            } else
            {
                j1 = -2 + viewgroup.getChildCount();
            }
            view2 = Y();
            k1 = j1 + 1;
            viewgroup.addView(view2, j1);
            view3 = aa();
            l1 = k1 + 1;
            viewgroup.addView(view3, k1);
            if (com.instagram.cliffjumper.util.a.c.a().d)
            {
                viewgroup.addView(Z(), l1);
            }
        }
        ab();
        view.findViewById(av.button_accept_adjust).setOnClickListener(new com.instagram.cliffjumper.edit.photo.a.d(this));
        view.findViewById(av.button_cancel_adjust).setOnClickListener(new com.instagram.cliffjumper.edit.photo.a.e(this));
        if (com.instagram.cliffjumper.util.a.c.a().e)
        {
            ap.a(1, true);
            ap.a(1).a(true);
            ((BasicAdjustFilter)ap.a(4)).b_(true);
        }
        if (com.instagram.cliffjumper.util.a.c.a().d)
        {
            ap.a(12).a(true);
            ((LuxFilter)ap.a(3)).a(ax);
        }
    }

    public final boolean b()
    {
        if (!az)
        {
            if (as != null)
            {
                c(false);
                return true;
            }
            if (ad())
            {
                ay.show();
                return true;
            }
        }
        return false;
    }

    public final void c()
    {
        if (i != null && i.isShowing())
        {
            i.dismiss();
        }
        i = null;
    }

    public final CjFilter d()
    {
        return (CjFilter)ap.a(5);
    }

    public final void e(Bundle bundle)
    {
        super.e(bundle);
        if (as != null)
        {
            as.b();
        }
        bundle.putParcelable("selectedFilter", ap);
        if (as != null)
        {
            as.c();
        }
        bundle.putInt("rotation", aq);
        bundle.putInt("editMode", -1 + ar);
    }

    public final String j_()
    {
        return "sample_app_render";
    }

    public final void m_()
    {
        super.m_();
        e.removeCallbacksAndMessages(null);
        af = null;
        an.setFilterListener(null);
        an = null;
        ac = null;
        ad = null;
        ab = null;
        aj = null;
        ai = null;
        al = null;
        am = null;
        ae = null;
        af = null;
    }

}
