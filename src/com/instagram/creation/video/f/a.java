// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.hardware.Camera;
import android.media.AudioManager;
import android.media.CamcorderProfile;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.support.v4.app.k;
import android.view.LayoutInflater;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.ViewSwitcher;
import com.facebook.at;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.az;
import com.facebook.ba;
import com.instagram.base.a.b;
import com.instagram.camera.h;
import com.instagram.camera.ui.FocusIndicatorView;
import com.instagram.camera.ui.RotateLayout;
import com.instagram.creation.base.e;
import com.instagram.creation.video.a.f;
import com.instagram.creation.video.c;
import com.instagram.creation.video.gl.GLRootView;
import com.instagram.creation.video.gl.q;
import com.instagram.creation.video.h.d;
import com.instagram.creation.video.ui.CamcorderBlinker;
import com.instagram.creation.video.ui.CamcorderPreviewLayout;
import com.instagram.creation.video.ui.ClipStackView;
import com.instagram.creation.video.ui.PreviewSurfaceView;
import com.instagram.creation.video.ui.VideoAcceptButton;
import com.instagram.creation.video.ui.VideoCancelButton;
import com.instagram.creation.video.ui.VideoShutterButton;
import com.instagram.creation.video.ui.g;
import com.instagram.creation.video.ui.r;
import com.instagram.creation.video.ui.s;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.creation.video.f:
//            b, i, j, x, 
//            e, n, o, p, 
//            l, m, u, r, 
//            s, t, c, q, 
//            d, g, f, h

public final class a extends b
    implements com.instagram.common.t.a, com.instagram.creation.video.a.b, f, c, com.instagram.creation.video.h.b, com.instagram.creation.video.h.c, g
{

    protected CamcorderProfile a;
    private String aA;
    private com.instagram.creation.video.i.a aB;
    private int aC;
    private volatile boolean aD;
    private CamcorderPreviewLayout aE;
    private PreviewSurfaceView aF;
    private android.view.SurfaceHolder.Callback aG;
    private com.instagram.creation.video.a aH;
    private List aI;
    private int aJ;
    private boolean aK;
    private boolean aL;
    private List aM;
    private List aN;
    private RotateLayout aO;
    private boolean aP;
    private boolean aQ;
    private boolean aR;
    private int aS;
    private Handler aT;
    private int aa;
    private CamcorderPreviewLayout ab;
    private com.instagram.creation.video.ui.f ac;
    private GLRootView ad;
    private View ae;
    private VideoCancelButton af;
    private View ag;
    private VideoAcceptButton ah;
    private ClipStackView ai;
    private CamcorderBlinker aj;
    private View ak;
    private View al;
    private ViewSwitcher am;
    private VideoShutterButton an;
    private ImageView ao;
    private Bitmap ap;
    private com.instagram.ui.dialog.f aq;
    private r ar;
    private boolean as;
    private boolean at;
    private long au;
    private boolean av;
    private final com.instagram.camera.c aw = new com.instagram.camera.c();
    private com.instagram.creation.b.a.b ax;
    private SharedPreferences ay;
    private int az;
    protected com.instagram.creation.video.a.a b;
    private Camera c;
    private android.hardware.Camera.Parameters d;
    private com.instagram.creation.video.h.a e;
    private Matrix f;
    private int g;
    private int h;
    private int i;

    public a()
    {
        a = null;
        g = -1;
        at = false;
        av = false;
        aB = null;
        aC = 0;
        aD = false;
        aH = new com.instagram.creation.video.a();
        aP = false;
        aQ = false;
        aR = false;
        aT = new com.instagram.creation.video.f.b(this);
    }

    static int A(a a1)
    {
        return a1.ax();
    }

    static List B(a a1)
    {
        return a1.aM;
    }

    static List C(a a1)
    {
        return a1.aN;
    }

    static Matrix D(a a1)
    {
        return a1.f;
    }

    static CamcorderPreviewLayout E(a a1)
    {
        return a1.ab;
    }

    static android.hardware.Camera.Parameters F(a a1)
    {
        return a1.d;
    }

    static boolean G(a a1)
    {
        a1.aL = true;
        return true;
    }

    static com.instagram.ui.dialog.f H(a a1)
    {
        return a1.aq;
    }

    static Matrix a(a a1, Matrix matrix)
    {
        a1.f = matrix;
        return matrix;
    }

    static android.hardware.Camera.Parameters a(a a1, android.hardware.Camera.Parameters parameters)
    {
        a1.d = parameters;
        return parameters;
    }

    static RotateLayout a(a a1)
    {
        return a1.aO;
    }

    static com.instagram.creation.b.a.b a(a a1, com.instagram.creation.b.a.b b1)
    {
        a1.ax = b1;
        return b1;
    }

    static com.instagram.ui.dialog.f a(a a1, com.instagram.ui.dialog.f f1)
    {
        a1.aq = f1;
        return f1;
    }

    static List a(a a1, List list)
    {
        a1.aM = list;
        return list;
    }

    private void a(int i1, int j1)
    {
        int l1;
        int i2;
        if (h % 180 == 0)
        {
            int k1 = j1;
            j1 = i1;
            i1 = k1;
        }
        l1 = b.a();
        i2 = b.b();
        if (l1 != j1 || i2 != i1)
        {
            b.a(j1, i1);
            b.c();
            d();
        }
        if (b.g() == null)
        {
            b.d();
        }
    }

    private void a(int i1, int j1, float f1, int k1, int l1, int i2, int j2, 
            Rect rect)
    {
        int k2 = (int)(f1 * (float)i1);
        int l2 = (int)(f1 * (float)j1);
        int i3 = com.instagram.camera.h.b(k1 - k2 / 2, i2 - k2);
        int j3 = com.instagram.camera.h.b(l1 - l2 / 2, j2 - l2);
        RectF rectf = new RectF(i3, j3, k2 + i3, l2 + j3);
        f.mapRect(rectf);
        com.instagram.camera.h.a(rectf, rect);
    }

    static void a(a a1, int i1, int j1, float f1, int k1, int l1, int i2, int j2, 
            Rect rect)
    {
        a1.a(i1, j1, f1, k1, l1, i2, j2, rect);
    }

    static void a(a a1, boolean flag)
    {
        a1.d(flag);
    }

    private void a(s s1)
    {
        if (ar.a() != s1)
        {
            ar.dismiss();
            aT.removeMessages(15);
            ar = new r(l(), s1);
        }
    }

    private void a(s s1, int i1, int j1, int k1)
    {
        if (ar == null)
        {
            ar = new r(l(), s1);
        }
        a(s1);
        if (!ar.isShowing())
        {
            ar.setAnimationStyle(ba.Tooltip_Popup);
            ar.showAtLocation(E(), i1, j1, k1);
            aT.sendEmptyMessageDelayed(15, 2000L);
        }
    }

    private void a(Throwable throwable)
    {
        a(throwable, az.video_failed_to_start);
    }

    private void a(Throwable throwable, int i1)
    {
        aT.post(new i(this, throwable, i1));
    }

    private void aA()
    {
        c.setErrorCallback(aw);
        if (av)
        {
            aB();
        }
        ab();
        c.setDisplayOrientation(90);
        try
        {
            aD();
        }
        catch (Throwable throwable)
        {
            a(throwable);
            return;
        }
        aS();
        if (com.instagram.creation.video.l.a.j)
        {
            try
            {
                c.setPreviewTexture(b.g());
            }
            catch (Throwable throwable3)
            {
                az();
                a(throwable3);
                return;
            }
        } else
        {
            try
            {
                c.setPreviewDisplay(aF.getHolder());
            }
            catch (Throwable throwable1)
            {
                az();
                a(throwable1);
                return;
            }
            c.setDisplayOrientation(com.instagram.creation.video.l.b.a(aS, ax()));
        }
        try
        {
            c.startPreview();
        }
        catch (Throwable throwable2)
        {
            az();
            a(throwable2);
            return;
        }
        av = true;
    }

    private void aB()
    {
        c.stopPreview();
        av = false;
    }

    private void aC()
    {
        if (!com.instagram.creation.video.l.a.j)
        {
            aB();
            av = true;
            e.a(aF.getHolder().getSurface());
        }
    }

    private void aD()
    {
        d.setPreviewSize(i, aa);
        d.setPreviewFrameRate(a.videoFrameRate);
        com.instagram.creation.video.l.b.a(d);
        com.instagram.creation.video.l.b.b(d);
        d.setRecordingHint(true);
        if (android.os.Build.VERSION.SDK_INT >= 15)
        {
            aE();
        }
        c.setParameters(d);
        d = c.getParameters();
        a(i, aa);
    }

    private void aE()
    {
        if (com.instagram.service.c.a.d() && d.isVideoStabilizationSupported())
        {
            d.setVideoStabilization(false);
        }
        if (com.instagram.service.c.a.d())
        {
            d.set("video-stabilization", "false");
        }
    }

    private void aF()
    {
        double d1 = (double)a.videoFrameWidth / (double)a.videoFrameHeight;
        aE.setAspectRatio(d1);
        ab.setAspectRatio(d1);
    }

    private void aG()
    {
        int i1 = ax();
        if (com.instagram.service.c.a.d())
        {
            a = CamcorderProfile.get(i1, 5);
        } else
        {
            a = com.instagram.creation.video.l.b.a(i1);
        }
        aH();
        if (Build.BOARD.equals("smdk4x12") || Build.BOARD.startsWith("DB85"))
        {
            a.audioChannels = 2;
        }
        if (com.instagram.creation.c.a.e() && !com.instagram.creation.video.l.b.b())
        {
            a.audioCodec = 3;
        }
    }

    private void aH()
    {
        d = c.getParameters();
        if (d.getSupportedVideoSizes() == null)
        {
            i = a.videoFrameWidth;
            aa = a.videoFrameHeight;
        } else
        {
            List list = d.getSupportedPreviewSizes();
            android.hardware.Camera.Size size = com.instagram.creation.video.l.b.a(d, list);
            int i1 = size.width * size.height;
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                android.hardware.Camera.Size size2 = (android.hardware.Camera.Size)iterator.next();
                if (size2.width * size2.height > i1)
                {
                    iterator.remove();
                }
            } while (true);
            android.hardware.Camera.Size size1 = com.instagram.creation.video.l.b.a(l(), list, (double)a.videoFrameWidth / (double)a.videoFrameHeight);
            i = size1.width;
            aa = size1.height;
        }
        (new StringBuilder("mDesiredPreviewWidth=")).append(i).append(". mDesiredPreviewHeight=").append(aa);
    }

    private q aI()
    {
        return ad;
    }

    private void aJ()
    {
        if (b.g() != null)
        {
            b.e();
        }
    }

    private void aK()
    {
        aR = true;
        com.instagram.creation.base.e.a(this);
    }

    private boolean aL()
    {
        Bundle bundle = j();
        boolean flag = false;
        if (bundle != null)
        {
            boolean flag1 = j().getBoolean("directShare", false);
            flag = false;
            if (flag1)
            {
                flag = true;
            }
        }
        return flag;
    }

    private void aM()
    {
        byte byte0;
label0:
        {
            byte0 = 8;
            if (ag != null)
            {
                ag.clearAnimation();
                if (az <= 1)
                {
                    break label0;
                }
                View view = ag;
                if (aH.o() == 0)
                {
                    byte0 = 0;
                }
                view.setVisibility(byte0);
            }
            return;
        }
        ag.setVisibility(byte0);
    }

    private void aN()
    {
        boolean flag = true;
        boolean flag1;
        if (aH.d())
        {
            View view2 = al;
            View view;
            View view1;
            int i1;
            if (aH.g())
            {
                i1 = au.video_delete_button;
            } else
            {
                i1 = au.video_soft_delete_button;
            }
            view2.setBackgroundResource(i1);
            am.setDisplayedChild(flag);
        } else
        {
            am.setDisplayedChild(0);
        }
        view = ak;
        if (aJ == com.instagram.creation.video.a.e.d)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        view.setEnabled(flag1);
        view1 = al;
        if (aJ != com.instagram.creation.video.a.e.d)
        {
            flag = false;
        }
        view1.setEnabled(flag);
    }

    private void aO()
    {
        if (ak != null)
        {
            View view = ak;
            byte byte0;
            if (aH.o() > 0)
            {
                byte0 = 8;
            } else
            {
                byte0 = 0;
            }
            view.setVisibility(byte0);
        }
    }

    private void aP()
    {
        s s1 = s.d;
        if (ar == null)
        {
            ar = new r(l(), s1);
        }
        a(s1, 53, (int)com.instagram.common.y.f.a(l().getResources().getDisplayMetrics(), 10), (int)com.instagram.common.y.f.a(l().getResources().getDisplayMetrics(), 48));
    }

    private int aQ()
    {
        return com.instagram.common.y.f.a(l()) / 5;
    }

    private void aR()
    {
        if (aK)
        {
            return;
        }
        if (aO == null || ad == null)
        {
            com.facebook.e.a.a.a("CamcorderFragment", "Couldn't set up tap to focus, missing view");
            return;
        }
        if (!com.instagram.creation.video.l.b.a())
        {
            com.facebook.e.a.a.a("CamcorderFragment", "Couldnt set up tap to focus, not supported");
            return;
        } else
        {
            FocusIndicatorView focusindicatorview = (FocusIndicatorView)aO.findViewById(av.focus_indicator);
            ae.setOnTouchListener(new j(this, focusindicatorview));
            aK = true;
            return;
        }
    }

    private void aS()
    {
        d = c.getParameters();
        d.setFocusAreas(null);
        if (aO != null)
        {
            ((FocusIndicatorView)aO.findViewById(av.focus_indicator)).d();
        }
    }

    static void aa()
    {
        an();
    }

    private void ab()
    {
        aS = com.instagram.camera.h.a(l());
        h = com.instagram.creation.video.l.b.a(0, ax());
    }

    private void ac()
    {
        aF = (PreviewSurfaceView)E().findViewById(av.surfaceview);
        if (aG == null)
        {
            aG = new x(this, (byte)0);
        }
        aF.getHolder().addCallback(aG);
        ab.setVisibility(8);
        aE.setVisibility(0);
    }

    private void ad()
    {
        if (ax == null && !ae())
        {
            return;
        } else
        {
            com.instagram.creation.b.d.a.a().b();
            aH.a(false);
            ax = com.instagram.creation.b.a.b.b(String.valueOf(System.nanoTime()));
            ax.i(com.instagram.creation.video.c.b.a(ax.L(), ax(), n()));
            com.instagram.creation.b.d.a.a().a(ax.a(), ax);
            com.instagram.creation.b.d.c.a().b();
            return;
        }
    }

    private boolean ae()
    {
        Context context;
        try
        {
            context = n();
        }
        catch (IllegalStateException illegalstateexception)
        {
            a(illegalstateexception);
            return false;
        }
        if (context == null)
        {
            return false;
        }
        com.instagram.creation.video.c.b.e(context);
        return true;
    }

    private void af()
    {
        if (!aR)
        {
            ((com.instagram.creation.base.b)l()).a(com.instagram.creation.base.c.a, aL());
        }
    }

    private void ag()
    {
        at = true;
        aj.b();
        if (ar != null && ar.isShowing())
        {
            ar.dismiss();
        }
        aT.removeCallbacksAndMessages(null);
        if (as)
        {
            aq();
        } else
        {
            az();
        }
        ad.onPause();
        aJ();
        E().findViewById(av.black_bg).setVisibility(0);
        ak();
        c(false);
    }

    private void ah()
    {
        aC = ((AudioManager)l().getSystemService("audio")).getRingerMode();
        c(true);
        at = false;
        ad.onResume();
    }

    private void ai()
    {
        aT.postDelayed(new com.instagram.creation.video.f.e(this), 300L);
        aM();
        if (!av)
        {
            ay();
            aG();
            aF();
            if (aQ)
            {
                aA();
            } else
            {
                aP = true;
            }
        } else
        {
            au = SystemClock.uptimeMillis();
            aT.sendEmptyMessageDelayed(4, 100L);
        }
        al();
        aj.a();
        aO();
    }

    private void aj()
    {
        if (ap != null)
        {
            ao.setImageBitmap(ap);
        }
    }

    private void ak()
    {
        aT.removeMessages(2);
        l().getWindow().clearFlags(128);
    }

    private void al()
    {
        aT.removeMessages(2);
        l().getWindow().addFlags(128);
        aT.sendEmptyMessageDelayed(2, 0x1d4c0L);
    }

    private void am()
    {
        aT.removeMessages(2);
        l().getWindow().addFlags(128);
    }

    private static void an()
    {
        com.instagram.creation.b.d.a.a().b();
        com.instagram.creation.b.d.c.a().b();
    }

    private void ao()
    {
        d(true);
        ap();
        if (e == null)
        {
            com.facebook.e.a.a.a("CamcorderFragment", "Fail to initialize media recorder");
            return;
        }
        av();
        aw();
        try
        {
            e.b();
            as = true;
        }
        catch (RuntimeException runtimeexception)
        {
            com.facebook.e.a.a.a("CamcorderFragment", "Could not filter media recorder. ", runtimeexception);
            au();
            try
            {
                c.reconnect();
                return;
            }
            catch (IOException ioexception)
            {
                com.facebook.e.a.a.a("CamcorderFragment", "Could not reconnect camera.", ioexception);
            }
            return;
        }
        am();
    }

    private void ap()
    {
        if (c == null)
        {
            return;
        }
        n();
        e = com.instagram.creation.video.h.d.a();
        aC();
        try
        {
            c.unlock();
        }
        catch (RuntimeException runtimeexception)
        {
            com.facebook.e.a.a.a("CamcorderFragment", "Couldn't unlock camera");
            return;
        }
        e.a(c);
        e.a(5);
        e.b(1);
        e.a(a);
        aA = com.instagram.creation.video.c.b.b(ax.L(), n());
        e.a(aA);
        try
        {
            e.a();
        }
        catch (IOException ioexception)
        {
            com.facebook.e.a.a.a("CamcorderFragment", (new StringBuilder("prepare failed for ")).append(aA).toString(), ioexception);
            au();
            throw new RuntimeException(ioexception);
        }
        e.a(this);
        e.a(this);
    }

    private void aq()
    {
        ar();
    }

    private boolean ar()
    {
        if (!as || e == null)
        {
            break MISSING_BLOCK_LABEL_216;
        }
        e.a(null);
        e.a(null);
        long l1 = SystemClock.elapsedRealtime();
        e.c();
        com.instagram.creation.video.l.b.a((int)(SystemClock.elapsedRealtime() - l1), ay);
        c.reconnect();
        d(false);
        (new StringBuilder("stopVideoRecording: Setting current video filename: ")).append(aA);
        aH.a(aA);
        boolean flag = false;
_L1:
        as = false;
        if (!flag && !aH.n())
        {
            at();
        }
        if (at)
        {
            az();
        }
        al();
        au();
        if (!at)
        {
            c.lock();
        }
_L2:
        if (!at)
        {
            d = c.getParameters();
        }
        aH.i();
        h(com.instagram.creation.video.a.e.d);
        return flag;
        Exception exception;
        exception;
        if (aA != null)
        {
            com.instagram.common.y.a.a(aA);
        }
        flag = true;
          goto _L1
        flag = false;
          goto _L2
    }

    private void as()
    {
        aH.j();
    }

    private void at()
    {
        int i1;
        i1 = (int)com.instagram.creation.video.c.a.a(aA);
        int j1 = aH.l();
        long l1 = aH.a().b();
        if (Math.min(j1, l1 + (long)(j1 - i1)) <= 300L)
        {
            aH.a().b(l1 + (long)j1);
            return;
        }
        try
        {
            aH.a().b(i1);
            return;
        }
        catch (Exception exception)
        {
            com.instagram.o.e.a(az.unknown_error_occured);
        }
        as();
        return;
    }

    private void au()
    {
        if (e != null)
        {
            com.instagram.common.y.a.b(com.instagram.common.y.c.a.a(), aA);
            e.d();
            e.e();
            e = null;
        }
        aA = null;
    }

    private void av()
    {
        Intent intent = new Intent("com.android.music.musicservicecommand");
        intent.putExtra("command", "pause");
        l().sendBroadcast(intent);
    }

    private void aw()
    {
        an.setEnabled(false);
    }

    private int ax()
    {
        return com.instagram.camera.g.c(ay);
    }

    private void ay()
    {
        try
        {
            c = Camera.open(ax());
            return;
        }
        catch (Exception exception)
        {
            a(exception, az.cannot_connect_camera);
        }
    }

    private void az()
    {
        if (c == null)
        {
            return;
        } else
        {
            c.setZoomChangeListener(null);
            c.setErrorCallback(null);
            c.release();
            c = null;
            av = false;
            return;
        }
    }

    static com.instagram.creation.video.a b(a a1)
    {
        return a1.aH;
    }

    static List b(a a1, List list)
    {
        a1.aN = list;
        return list;
    }

    static Handler c(a a1)
    {
        return a1.aT;
    }

    private void c(boolean flag)
    {
        AudioManager audiomanager = (AudioManager)l().getSystemService("audio");
        audiomanager.setStreamSolo(1, flag);
        int i1;
        if (flag)
        {
            i1 = 0;
        } else
        {
            i1 = aC;
        }
        if (i1 != audiomanager.getRingerMode())
        {
            audiomanager.setRingerMode(i1);
        }
        audiomanager.setStreamMute(1, flag);
    }

    static r d(a a1)
    {
        return a1.ar;
    }

    private void d(boolean flag)
    {
        if (aL && com.instagram.creation.video.l.b.a())
        {
            d = c.getParameters();
            d.setAutoExposureLock(flag);
            c.setParameters(d);
        }
    }

    static int e(a a1)
    {
        return a1.h;
    }

    private void f(int i1)
    {
        an.getLayoutParams().height = i1;
        an.getLayoutParams().width = i1;
    }

    static boolean f(a a1)
    {
        return a1.as;
    }

    private void g(int i1)
    {
        ak.getLayoutParams().height = i1;
        ak.getLayoutParams().width = i1;
        ao.getLayoutParams().height = i1;
        ao.getLayoutParams().width = i1;
    }

    static void g(a a1)
    {
        a1.aA();
    }

    static long h(a a1)
    {
        return a1.au;
    }

    private void h(int i1)
    {
        aJ = i1;
        aN();
        if (aI != null)
        {
            for (Iterator iterator = aI.iterator(); iterator.hasNext(); ((com.instagram.creation.video.a.d)iterator.next()).b(aJ)) { }
        }
    }

    static void i(a a1)
    {
        a1.af();
    }

    static View j(a a1)
    {
        return a1.al;
    }

    static GLRootView k(a a1)
    {
        return a1.ad;
    }

    static boolean l(a a1)
    {
        return a1.aP;
    }

    static boolean m(a a1)
    {
        a1.aP = false;
        return false;
    }

    static boolean n(a a1)
    {
        a1.aQ = true;
        return true;
    }

    static void o(a a1)
    {
        a1.aK();
    }

    static boolean p(a a1)
    {
        return a1.ar();
    }

    static com.instagram.creation.b.a.b q(a a1)
    {
        return a1.ax;
    }

    static void r(a a1)
    {
        a1.ad();
    }

    static boolean s(a a1)
    {
        return a1.aD;
    }

    static boolean t(a a1)
    {
        a1.aD = false;
        return false;
    }

    static com.instagram.creation.video.i.a u(a a1)
    {
        return a1.aB;
    }

    static boolean v(a a1)
    {
        return a1.aL();
    }

    static VideoShutterButton w(a a1)
    {
        return a1.an;
    }

    static CamcorderBlinker x(a a1)
    {
        return a1.aj;
    }

    static boolean y(a a1)
    {
        return a1.at;
    }

    static Camera z(a a1)
    {
        return a1.c;
    }

    public final void F()
    {
        ah();
        super.F();
        ai();
    }

    public final void G()
    {
        ag();
        super.G();
    }

    public final void H()
    {
        super.H();
        aH.b(this);
    }

    public final int V()
    {
        return aJ;
    }

    public final void W()
    {
        int i1 = 1;
        SharedPreferences sharedpreferences = ay;
        if (com.instagram.camera.g.c(ay) == i1)
        {
            i1 = 0;
        }
        com.instagram.camera.g.a(sharedpreferences, i1);
        az();
        ay();
        aG();
        aA();
        aF();
    }

    public final void X()
    {
        if (b != null)
        {
            b.a(true);
        }
    }

    public final void Y()
    {
        a(s.a, 81, 0, (E().findViewById(av.creation_main_actions).getHeight() + an.getHeight()) / 2);
        com.instagram.l.b.a.a().u();
    }

    public final void Z()
    {
        s s1 = s.b;
        int i1 = (int)com.instagram.common.y.f.a(l().getResources().getDisplayMetrics(), 14);
        int j1 = E().findViewById(av.creation_main_actions).getHeight();
        a(s1, 83, aQ() - i1, j1);
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        x();
        int i1;
        View view;
        if (com.instagram.creation.base.ui.a.b(o()))
        {
            i1 = aw.fragment_camcorder;
        } else
        {
            i1 = aw.fragment_camcorder_small;
        }
        view = layoutinflater.inflate(i1, viewgroup, false);
        ad = (GLRootView)view.findViewById(av.camera_preview);
        view.findViewById(av.black_bg).setBackgroundColor(0xff000000);
        ab = (CamcorderPreviewLayout)view.findViewById(av.non_ics_preview);
        aE = (CamcorderPreviewLayout)view.findViewById(av.ics_preview);
        ae = view.findViewById(av.preview_overlay);
        an = (VideoShutterButton)view.findViewById(av.fragment_camera_shutter_button);
        an.setOnTouchListener(new com.instagram.creation.video.a.g(this, this));
        an.setClipStackManager(aH);
        an.setEnabled(false);
        aj = (CamcorderBlinker)view.findViewById(av.blinker);
        aj.setClipStackManager(aH);
        al = view.findViewById(av.button_remove_actual);
        al.setOnClickListener(new n(this, view));
        ak = view.findViewById(av.button_remove);
        ak.setOnClickListener(new o(this));
        ao = (ImageView)view.findViewById(av.gallery_button);
        am = (ViewSwitcher)view.findViewById(av.backspace_switcher);
        if (b == null)
        {
            b = new com.instagram.creation.video.a.a(this);
            ac = new com.instagram.creation.video.ui.f(l());
            ac.a(this);
            ac.a(b);
            ad.setContentPane(ac);
            ad.addOnLayoutChangeListener(new p(this));
        }
        aO = (RotateLayout)view.findViewById(av.focus_indicator_rotate_layout);
        aR();
        ab();
        aj();
        com.instagram.creation.base.ui.a.a(view);
        switch (l.a[-1 + com.instagram.creation.base.ui.a.a(o())])
        {
        default:
            return view;

        case 1: // '\001'
            f(o().getDimensionPixelSize(at.camera_shutter_button_size_large_condensed));
            an.setBackgroundResource(au.camcorder_shutter_button_condensed_background);
            return view;

        case 2: // '\002'
        case 3: // '\003'
            f(o().getDimensionPixelSize(at.camera_shutter_button_size_small));
            break;
        }
        an.setBackgroundResource(au.camcorder_shutter_button_condensed_background);
        g(o().getDimensionPixelSize(at.camera_bottom_button_size_small));
        return view;
    }

    public final void a(int i1)
    {
        aN();
    }

    public final void a(int i1, int j1, Intent intent)
    {
        (new StringBuilder("onActivityResult ")).append(i1).append("\t").append(j1);
        aR = false;
        break MISSING_BLOCK_LABEL_30;
        if (j1 == -1 && intent != null && i1 == 0)
        {
            android.net.Uri uri = com.instagram.creation.base.e.a(intent, null);
            String s1 = com.instagram.creation.video.l.g.a(n(), uri);
            if (!s1.equals("video_invalid_url"))
            {
                com.instagram.creation.video.i.a a1 = com.instagram.creation.video.i.a.a(s1);
                if (com.instagram.creation.video.l.g.a(a1))
                {
                    if (ax == null)
                    {
                        aD = true;
                        aB = a1;
                        return;
                    } else
                    {
                        com.instagram.creation.video.l.g.a(p(), ax.a(), a1, true, aL());
                        return;
                    }
                }
            } else
            {
                com.instagram.creation.video.l.g.a(l());
                return;
            }
        }
        return;
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        if (bundle != null)
        {
            aH.b(bundle);
        }
        if (!com.instagram.common.y.a.a(n()))
        {
            com.instagram.common.i.c.b("camcorder_fragment", "external_dir_unavailable_and_failed_to_start_camera");
            (new Handler()).post(new m(this));
        }
        ay = PreferenceManager.getDefaultSharedPreferences(n());
        aH.a(this);
        aJ = com.instagram.creation.video.a.e.d;
        az = Camera.getNumberOfCameras();
    }

    public final void a(View view)
    {
        aN();
        if (com.instagram.common.y.a.a(n()))
        {
            (new u(this, (byte)0)).b(new String[0]);
        }
        if (!com.instagram.creation.video.l.a.j)
        {
            ac();
        }
        ai = (ClipStackView)view.findViewById(av.clip_stack_view);
        ai.setClipStack(aH.b());
        aH.a(ai);
        aH.a(an);
        aw.a(l());
        aI = new ArrayList();
        aI.add(an);
        ao.setOnClickListener(new com.instagram.creation.video.f.r(this));
        af = (VideoCancelButton)view.findViewById(av.action_bar_cancel_button);
        af.setOnClickListener(new com.instagram.creation.video.f.s(this));
        aI.add(af);
        ah = (VideoAcceptButton)view.findViewById(av.button_accept);
        aI.add(ah);
        ah.setOnClickListener(new t(this));
        ag = view.findViewById(av.switch_camera_button);
        ag.setOnClickListener(new com.instagram.creation.video.f.c(this));
        ((android.widget.FrameLayout.LayoutParams)view.findViewById(av.minimum_clip_length_image).getLayoutParams()).setMargins(aQ(), 0, 0, 0);
        aI.add(aj);
        aH.a(aj);
    }

    public final void a(View view, Bundle bundle)
    {
        super.a(view, bundle);
        ((com.instagram.creation.b.a.e)l()).a(new com.instagram.creation.video.f.q(this));
    }

    public final void a(com.instagram.creation.video.i.a a1)
    {
        aM();
        aO();
        aN();
    }

    public final void a(List list)
    {
        ArrayList arraylist;
        int i1;
        Iterator iterator;
        int k1;
        arraylist = new ArrayList();
        i1 = ax();
        int j1 = aH.l();
        iterator = list.iterator();
        k1 = j1;
_L2:
        File file;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_135;
        }
        file = (File)iterator.next();
        long l1 = com.instagram.creation.video.c.a.a(file);
        long l2 = l1;
        if (l2 > 0L && l2 <= (long)k1)
        {
            if ((long)k1 - l2 <= 300L)
            {
                l2 = k1;
            }
            arraylist.add(new com.instagram.creation.video.i.a(i1, l2, file.getPath()));
            k1 = (int)((long)k1 - l2);
            continue; /* Loop/switch isn't completed */
        }
        aT.post(new com.instagram.creation.video.f.d(this, arraylist));
        return;
        Exception exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public final void b(com.instagram.creation.video.i.a a1)
    {
        aM();
        aO();
        if (a1.c() == com.instagram.creation.video.i.c.d)
        {
            Y();
        }
        aN();
    }

    public final boolean b()
    {
        if (aH.b().b() > 0)
        {
            (new com.instagram.ui.dialog.b(n())).a(az.discard_video).b(az.discard_video_close).b(az.discard_video_discard_button, new com.instagram.creation.video.f.g(this)).c(az.discard_video_keep_button, new com.instagram.creation.video.f.f(this)).c().show();
            return true;
        } else
        {
            an();
            return false;
        }
    }

    public final void c()
    {
        aP();
    }

    public final void c(com.instagram.creation.video.i.a a1)
    {
        if (a1.c() == com.instagram.creation.video.i.c.a && aH.n())
        {
            f();
        }
    }

    public final void d()
    {
        aI().a();
    }

    public final void e()
    {
        int i1 = Math.max(0, 800 - com.instagram.camera.g.e(ay));
        int j1 = com.instagram.camera.g.c(n().getSharedPreferences("CAMERA_SETTINGS", 0));
        aH.a(i1, j1);
        aT.sendEmptyMessageDelayed(1, i1);
        h(com.instagram.creation.video.a.e.a);
        if (aJ == com.instagram.creation.video.a.e.b)
        {
            return;
        } else
        {
            ao();
            h(com.instagram.creation.video.a.e.b);
            am.setVisibility(4);
            return;
        }
    }

    public final void e(Bundle bundle)
    {
        super.e(bundle);
        aH.a(bundle);
    }

    public final void f()
    {
        aT.removeMessages(1);
        h(com.instagram.creation.video.a.e.c);
        aH.();
        aT.postDelayed(new com.instagram.creation.video.f.h(this), 300L);
        am.setVisibility(0);
    }

    public final String j_()
    {
        return "camcorder";
    }

    public final void m_()
    {
        super.m_();
        ad = null;
        aG = null;
        aF = null;
        aI = null;
        aH.b(ai);
        aH.b(an);
        aH.b(aj);
        if (ai != null)
        {
            ai.a();
        }
        ak = null;
        al = null;
        am = null;
        ai = null;
        an = null;
        ah = null;
        af = null;
        if (ag != null)
        {
            ag.clearAnimation();
        }
        ag = null;
        if (aq != null)
        {
            aq.dismiss();
            aq = null;
        }
        ab = null;
        aE = null;
        b = null;
        aO = null;
        ae = null;
        aL = false;
        aK = false;
        d = null;
        ar = null;
        aj = null;
        ac = null;
        ao = null;
    }
}
