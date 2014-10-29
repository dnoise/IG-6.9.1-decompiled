// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.media.MediaMetadataRetriever;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.app.k;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.facebook.aq;
import com.facebook.at;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.ba;
import com.instagram.camera.h;
import com.instagram.common.y.f;
import com.instagram.creation.b.a.a;
import com.instagram.creation.b.a.b;
import com.instagram.creation.video.d.c;
import com.instagram.creation.video.ui.FilmstripScrollView;
import com.instagram.creation.video.ui.LivePreviewTextureView;
import com.instagram.creation.video.ui.r;
import com.instagram.creation.video.ui.s;
import java.io.File;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.instagram.creation.video.f:
//            aw, bl, bn, bm, 
//            br, bj, bs, bo, 
//            bk, av, bp

public final class bi extends com.instagram.creation.video.f.aw
    implements c, com.instagram.creation.video.ui.c
{

    double a[];
    private View aa;
    private Animation ab;
    private Animation ac;
    private int ad;
    private View ae;
    private boolean af;
    private int ag;
    private double ah;
    private double ai;
    private File aj;
    private long ak;
    private MediaMetadataRetriever al;
    private b am;
    private a an;
    private ThreadPoolExecutor ao;
    private final Handler ap = new Handler();
    private LivePreviewTextureView b;
    private com.instagram.creation.video.l.h c;
    private LinearLayout d;
    private FilmstripScrollView e;
    private View f;
    private View g;
    private ProgressBar h;
    private r i;

    public bi()
    {
        a = new double[0];
        ao = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue());
    }

    private double X()
    {
        return h(e.getScrollX());
    }

    private double Z()
    {
        return h(e.getScrollX() + ag);
    }

    private Bitmap a(Bitmap bitmap, int i1, int j1)
    {
        int k1 = 1;
        int l1;
        boolean flag;
        Bitmap bitmap1;
        if (!com.instagram.creation.video.l.c.b(an) && an.c() != -1)
        {
            android.hardware.Camera.CameraInfo camerainfo = com.instagram.camera.h.a(an.c());
            int i2 = camerainfo.orientation;
            Bitmap bitmap3;
            if (camerainfo.facing != k1)
            {
                k1 = 0;
            }
            flag = k1;
            l1 = i2;
        } else
        {
            l1 = 0;
            flag = false;
        }
        bitmap1 = com.instagram.o.c.a.a(bitmap, (int)ai, (int)ah, l1, flag);
        if (i1 == 0)
        {
            bitmap3 = com.instagram.o.c.a.a(bitmap1, new float[] {
                4F, 4F, 0.0F, 0.0F, 0.0F, 0.0F, 4F, 4F
            });
            bitmap1.recycle();
            return bitmap3;
        }
        if (i1 == j1 - 1)
        {
            Bitmap bitmap2 = com.instagram.o.c.a.a(bitmap1, new float[] {
                0.0F, 0.0F, 4F, 4F, 4F, 4F, 0.0F, 0.0F
            });
            bitmap1.recycle();
            return bitmap2;
        } else
        {
            return bitmap1;
        }
    }

    static b a(bi bi1, b b1)
    {
        bi1.am = b1;
        return b1;
    }

    static com.instagram.creation.video.l.h a(bi bi1)
    {
        return bi1.c;
    }

    private void a(float f1)
    {
        an.a(f1);
        c.g();
    }

    private void a(int i1, int j1)
    {
        if (i1 < j1)
        {
            for (; i1 <= j1; i1++)
            {
                i(i1);
            }

        } else
        {
            for (; j1 >= i1; j1--)
            {
                i(j1);
            }

        }
    }

    private void a(ImageView imageview, int i1)
    {
        long l1 = SystemClock.elapsedRealtime();
        long l2 = (int)(1000000D * a[i1]);
        Bitmap bitmap = al.getFrameAtTime(l2, 2);
        if (bitmap != null)
        {
            Bitmap bitmap1 = a(bitmap, i1, a.length);
            bitmap.recycle();
            imageview.post(new bl(this, imageview, bitmap1, i1, l1));
        }
    }

    static void a(bi bi1, float f1)
    {
        bi1.a(f1);
    }

    static void a(bi bi1, int i1)
    {
        bi1.j(i1);
    }

    static void a(bi bi1, ImageView imageview, int i1)
    {
        bi1.a(imageview, i1);
    }

    private void a(s s1, int i1, int j1)
    {
        if (i == null)
        {
            i = new r(l(), s1);
        }
        if (!i.isShowing())
        {
            View view = E().findViewById(av.trim_root);
            i.setAnimationStyle(ba.Tooltip_Popup);
            i.showAtLocation(view, 83, i1, j1);
            ap.postDelayed(new bn(this), 2000L);
        }
    }

    static boolean a(bi bi1, boolean flag)
    {
        bi1.af = flag;
        return flag;
    }

    private double aa()
    {
        return (double)d.getChildCount() * ai;
    }

    private double ab()
    {
        return aa() - (double)e.getScrollX();
    }

    private double ac()
    {
        return g(3000);
    }

    private void ad()
    {
        aa.clearAnimation();
        aa.startAnimation(ac);
    }

    private void ae()
    {
        aa.setVisibility(0);
        aa.clearAnimation();
        aa.startAnimation(ab);
    }

    private void af()
    {
        if (i != null)
        {
            i.dismiss();
            i = null;
        }
        ap.removeCallbacksAndMessages(null);
    }

    static double b(bi bi1, int i1)
    {
        return bi1.g(i1);
    }

    static boolean b(bi bi1)
    {
        return bi1.af;
    }

    static double c(bi bi1)
    {
        return bi1.Z();
    }

    static void c(bi bi1, int i1)
    {
        bi1.l(i1);
    }

    static a d(bi bi1)
    {
        return bi1.an;
    }

    static void d(bi bi1, int i1)
    {
        bi1.k(i1);
    }

    static File e(bi bi1)
    {
        return bi1.aj;
    }

    static long f(bi bi1)
    {
        return bi1.ak;
    }

    private double g(int i1)
    {
        return ((double)i1 * ai) / 2000D;
    }

    static double g(bi bi1)
    {
        return bi1.ai;
    }

    private double h(int i1)
    {
        return (1000D * (2D * (double)i1)) / ai;
    }

    static double h(bi bi1)
    {
        return bi1.ah;
    }

    static LinearLayout i(bi bi1)
    {
        return bi1.d;
    }

    private void i(int i1)
    {
        ImageView imageview = (ImageView)d.getChildAt(i1);
        if (imageview != null && imageview.getDrawable() == null)
        {
            ao.execute(new bm(this, imageview, i1));
        }
    }

    static double j(bi bi1)
    {
        return bi1.ac();
    }

    private void j(int i1)
    {
        ao.getQueue().clear();
        int j1 = d.getChildCount();
        int k1 = 1 + (int)((double)e.getWidth() / ai);
        int l1 = (int)((double)e.getScrollX() / ai);
        int i2 = Math.min(j1, l1 + k1);
        int j2 = Math.max(0, l1 - 1 - k1);
        int k2 = Math.max(0, l1 - 1);
        int l2 = Math.min(i2 + 1, j1);
        int i3 = Math.min(k1 + (i2 + 1), j1);
        a(l1, i2);
        if (i1 == com.instagram.creation.video.f.br.b)
        {
            a(l2, i3);
            a(k2, j2);
            return;
        } else
        {
            a(k2, j2);
            a(l2, i3);
            return;
        }
    }

    static double k(bi bi1)
    {
        return bi1.aa();
    }

    private void k(int i1)
    {
        int j1 = com.instagram.common.y.f.a(n());
        int k1 = Math.min(i1, j1);
        if (ag < k1 && j1 - k1 < ae.getBackground().getIntrinsicWidth() / 2)
        {
            if (ab() < (double)j1)
            {
                e.scrollBy((int)(ab() - (double)j1), 0);
            }
        } else
        {
            j1 = k1;
        }
        l(j1);
    }

    static View l(bi bi1)
    {
        return bi1.ae;
    }

    private void l(int i1)
    {
        ag = i1;
        h.setProgress(ag);
        ((android.view.ViewGroup.MarginLayoutParams)ae.getLayoutParams()).leftMargin = ag - ae.getBackground().getIntrinsicWidth() / 2;
        ae.requestLayout();
        f.getLayoutParams().width = e.getWidth() - ag;
        f.requestLayout();
        e.invalidate();
    }

    private int m(int i1)
    {
        n((int)(((aa() - (double)(2 * ad)) * (double)i1) / (double)ak));
        return i1;
    }

    static FilmstripScrollView m(bi bi1)
    {
        return bi1.e;
    }

    static View n(bi bi1)
    {
        return bi1.g;
    }

    private void n(int i1)
    {
        ((android.widget.FrameLayout.LayoutParams)aa.getLayoutParams()).leftMargin = (i1 - aa.getPaddingLeft()) + ad;
        aa.requestLayout();
    }

    static int o(bi bi1)
    {
        return bi1.ag;
    }

    static double p(bi bi1)
    {
        return bi1.ab();
    }

    static void q(bi bi1)
    {
        bi1.af();
    }

    static LivePreviewTextureView r(bi bi1)
    {
        return bi1.b;
    }

    public final void F()
    {
        super.F();
        c.c();
        c.e();
        if (aa() > 0.0D)
        {
            j(com.instagram.creation.video.f.br.b);
        }
    }

    public final void F_()
    {
        ae();
        m(an.f());
    }

    public final void G()
    {
        ao.getQueue().clear();
        c.d();
        super.G();
        af();
    }

    public final void H()
    {
        super.H();
        ao.shutdown();
    }

    public final void V()
    {
        c.j();
        n(e.getScrollX());
        ae();
    }

    public final void W()
    {
        s s1 = s.c;
        int i1 = (int)com.instagram.common.y.f.a(l().getResources().getDisplayMetrics(), 14);
        int j1 = E().findViewById(av.creation_main_actions).getHeight();
        a(s1, (int)ac() - i1, j1);
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        boolean flag = com.instagram.creation.base.ui.a.b(o());
        int i1;
        View view;
        com.instagram.creation.video.ui.a.a a1;
        bj bj1;
        GestureDetector gesturedetector;
        if (flag)
        {
            i1 = aw.fragment_video_trim;
        } else
        {
            i1 = aw.fragment_video_trim_small;
        }
        view = layoutinflater.inflate(i1, viewgroup, false);
        com.instagram.creation.base.ui.a.a(view);
        a1 = (new com.instagram.creation.video.ui.a.a()).a(view.findViewById(av.play_button)).b(view.findViewById(av.seek_frame_indicator));
        b = (LivePreviewTextureView)view.findViewById(av.textureview);
        c = new com.instagram.creation.video.l.h(n(), a1, false);
        b.setDelegate(c);
        c.a(an);
        c.a(am.d());
        c.a(this);
        d = (LinearLayout)view.findViewById(av.filmstrip_keyframes_holder);
        e = (FilmstripScrollView)view.findViewById(av.filmstrip_scrollview);
        e.a(this);
        ae = view.findViewById(av.trim_handle);
        f = view.findViewById(av.filmstrip_dimmer);
        aa = view.findViewById(av.filmstrip_play_indicator);
        g = view.findViewById(av.filmstrip_scrollview_container);
        h = (ProgressBar)view.findViewById(av.trim_length_bar);
        h.setMax(com.instagram.common.y.f.a(n()));
        if (!flag)
        {
            g.getLayoutParams().height = (int)com.instagram.common.y.f.a(o().getDisplayMetrics(), 66);
        }
        ai = (double)com.instagram.common.y.f.a(n()) / 7.5D;
        ah = g.getLayoutParams().height;
        bj1 = new bj(this, new GestureDetector(n(), new bs(this, (byte)0)));
        ae.setOnTouchListener(bj1);
        f.setOnTouchListener(bj1);
        gesturedetector = new GestureDetector(n(), new bo(this, (byte)0));
        b.setOnTouchListener(new bk(this, gesturedetector));
        return view;
    }

    public final void a(int i1)
    {
        m(i1);
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        am = Y();
        an = am.K();
        aj = new File(an.b());
        al = new MediaMetadataRetriever();
        al.setDataSource(aj.getAbsolutePath());
        ak = an.h();
        if (ak < 0L)
        {
            ak = com.instagram.creation.video.c.a.a(al);
            an.a(ak);
        }
        l().getWindow().addFlags(1024);
        ab = AnimationUtils.loadAnimation(n(), aq.import_play_fade_in);
        ac = AnimationUtils.loadAnimation(n(), aq.import_play_fade_out);
        ad = o().getDimensionPixelSize(at.trim_play_indicator_min_padding);
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        E().findViewById(av.creation_main_actions).setVisibility(0);
        E().findViewById(av.seek_frame_indicator).setVisibility(8);
        a(com.instagram.creation.video.f.av.c);
        (new bp(this, (byte)0)).b(new Void[0]);
    }

    public final void b()
    {
        c.k();
    }

    public final void c()
    {
        ad();
    }

    public final void c(Bundle bundle)
    {
    }

    public final void d()
    {
        ad();
    }

    public final void f(int i1)
    {
        int j1;
        double d1;
        double d2;
        long l1;
        int k1;
        if (i1 >= 0)
        {
            j1 = com.instagram.creation.video.f.br.b;
        } else
        {
            j1 = com.instagram.creation.video.f.br.a;
        }
        j(j1);
        d1 = ab();
        d2 = ac();
        if (!com.instagram.l.b.a.a().p())
        {
            com.instagram.l.b.a.a().q();
        }
        if (d1 > d2)
        {
            an.c((int)X());
        } else
        {
            an.c(-3000 + (int)Z());
            W();
        }
        l1 = e.getScrollX();
        k1 = (int)(aa() - (double)l1);
        if (ag > k1)
        {
            l(k1);
        }
        an.d((int)Z());
        c.h();
        n(e.getScrollX());
    }

    public final String j_()
    {
        return "video_trim";
    }

    public final void m_()
    {
        super.m_();
        e.a();
        b = null;
        d = null;
        e = null;
        g = null;
        f = null;
        aa = null;
        ae = null;
        h = null;
    }
}
