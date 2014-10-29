// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.camera;

import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.hardware.Camera;
import android.media.CameraProfile;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.MessageQueue;
import android.os.SystemClock;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.Toast;
import com.facebook.as;
import com.facebook.at;
import com.facebook.au;
import com.facebook.av;
import com.facebook.aw;
import com.facebook.ay;
import com.facebook.az;
import com.instagram.base.a.b;
import com.instagram.camera.ShutterButton;
import com.instagram.camera.SquarePreviewFrameLayout;
import com.instagram.camera.d;
import com.instagram.camera.e;
import com.instagram.camera.g;
import com.instagram.camera.h;
import com.instagram.camera.k;
import com.instagram.camera.m;
import com.instagram.camera.n;
import com.instagram.camera.r;
import com.instagram.camera.ui.RotateLayout;
import com.instagram.common.y.a;
import java.io.File;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.instagram.creation.photo.camera:
//            u, n, q, f, 
//            r, o, d, CameraFlashButton, 
//            k, l, b, m, 
//            g, h, e, s, 
//            i, j, p

public final class c extends b
    implements android.view.SurfaceHolder.Callback, android.view.View.OnClickListener, android.view.View.OnTouchListener, n, r
{

    private static int aD = 90;
    Camera a;
    private View aA;
    private RotateLayout aB;
    private int aC;
    private boolean aE;
    private boolean aF;
    private long aG;
    private String aH;
    private final com.instagram.camera.c aI = new com.instagram.camera.c();
    private int aJ;
    private int aK;
    private int aL;
    private o aM;
    private File aN;
    private Uri aO;
    private float aP;
    private Bitmap aQ;
    private final BroadcastReceiver aR = new f(this);
    private final com.instagram.creation.photo.camera.n aa = new com.instagram.creation.photo.camera.n(this, (byte)0);
    private long ab;
    private final Handler ac = new q(this, (byte)0);
    private com.instagram.creation.photo.camera.r ad;
    private int ae;
    private int af;
    private k ag;
    private Camera ah;
    private android.hardware.Camera.Parameters ai;
    private android.hardware.Camera.Parameters aj;
    private boolean ak;
    private boolean al;
    private boolean am;
    private boolean an;
    private boolean ao;
    private boolean ap;
    private m aq;
    private String ar;
    private SurfaceHolder as;
    private ShutterButton at;
    private ImageView au;
    private View av;
    private boolean aw;
    private boolean ax;
    private ImageView ay;
    private SquarePreviewFrameLayout az;
    int b;
    Thread c;
    Thread d;
    private int e;
    private int f;
    private ContentResolver g;
    private boolean h;
    private final u i = new u(this, (byte)0);

    public c()
    {
        e = 0;
        h = false;
        ae = -1;
        af = 0;
        as = null;
        aw = false;
        ax = false;
        aO = null;
        aP = -1F;
        c = null;
        d = null;
    }

    static int A(c c1)
    {
        return c1.ae;
    }

    static float B(c c1)
    {
        float f1 = c1.aP - 360F;
        c1.aP = f1;
        return f1;
    }

    static float C(c c1)
    {
        float f1 = 360F + c1.aP;
        c1.aP = f1;
        return f1;
    }

    static int D(c c1)
    {
        return c1.af;
    }

    static ContentResolver E(c c1)
    {
        return c1.g;
    }

    private void W()
    {
        if (!"0".equals(ag.getString("pref_camera_exposure_key", "0")))
        {
            android.content.SharedPreferences.Editor editor = ag.edit();
            editor.putString("pref_camera_exposure_key", "0");
            editor.apply();
        }
    }

    private void X()
    {
        if (aF)
        {
            return;
        }
        ad = new com.instagram.creation.photo.camera.r(this, l());
        ad.a();
        aI.a(l());
        as();
        g = l().getContentResolver();
        aA = l().findViewById(av.camera_preview);
        aA.setOnTouchListener(this);
        aB = (RotateLayout)l().findViewById(av.focus_indicator_rotate_layout);
        boolean flag;
        if (com.instagram.camera.e.a().c()[aJ].facing == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        aq.a(aB, aA, this, flag, aD);
        aq.a(o().openRawResourceFd(ay.camera_focus));
        aM = new o(this);
        ah();
        aF = true;
        Y();
    }

    private void Y()
    {
        Looper.myQueue().addIdleHandler(new com.instagram.creation.photo.camera.d(this));
    }

    private void Z()
    {
        ad.a();
        ah();
        aq.a(o().openRawResourceFd(ay.camera_focus));
        aM = new o(this);
    }

    static float a(c c1, float f1)
    {
        c1.aP = f1;
        return f1;
    }

    static int a(c c1, int i1)
    {
        c1.ae = i1;
        return i1;
    }

    private android.hardware.Camera.Size a(List list, double d1)
    {
        double d2;
        android.hardware.Camera.Size size;
        d2 = 1.7976931348623157E+308D;
        size = null;
        if (list != null) goto _L2; else goto _L1
_L1:
        return size;
_L2:
        Display display = l().getWindowManager().getDefaultDisplay();
        int i1 = Math.min(display.getHeight(), display.getWidth());
        int j1;
        Iterator iterator;
        double d3;
        Iterator iterator1;
        android.hardware.Camera.Size size1;
        android.hardware.Camera.Size size2;
        if (i1 <= 0)
        {
            j1 = ((WindowManager)l().getSystemService("window")).getDefaultDisplay().getHeight();
        } else
        {
            j1 = i1;
        }
        iterator = list.iterator();
        d3 = d2;
        if (iterator.hasNext())
        {
            size2 = (android.hardware.Camera.Size)iterator.next();
            if (Math.abs((double)size2.width / (double)size2.height - d1) <= 0.050000000000000003D)
            {
                if ((double)Math.abs(size2.height - j1) < d3)
                {
                    d3 = Math.abs(size2.height - j1);
                } else
                {
                    size2 = size;
                }
                size = size2;
            }
            if (false)
            {
                break MISSING_BLOCK_LABEL_170;
            } else
            {
                break MISSING_BLOCK_LABEL_84;
            }
        }
        if (size == null)
        {
            iterator1 = list.iterator();
            while (iterator1.hasNext()) 
            {
                size1 = (android.hardware.Camera.Size)iterator1.next();
                if ((double)Math.abs(size1.height - j1) < d2)
                {
                    d2 = Math.abs(size1.height - j1);
                    size = size1;
                }
            }
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    static Camera a(c c1, Camera camera)
    {
        c1.ah = camera;
        return camera;
    }

    static Uri a(c c1, Uri uri)
    {
        c1.aO = uri;
        return uri;
    }

    private void a(int i1)
    {
        at.getLayoutParams().height = i1;
        at.getLayoutParams().width = i1;
    }

    private void a(SurfaceHolder surfaceholder)
    {
        try
        {
            ah.setPreviewDisplay(surfaceholder);
            return;
        }
        catch (Throwable throwable)
        {
            aj();
            com.instagram.common.i.c.a("setPreviewDisplay failed", throwable.toString());
            com.instagram.camera.h.b(l(), az.cannot_connect_camera);
            return;
        }
    }

    static void a(c c1)
    {
        c1.X();
    }

    private static boolean a(String s1, List list)
    {
        return list != null && list.indexOf(s1) >= 0;
    }

    private void aa()
    {
        ag = new k(l());
        com.instagram.camera.g.b(ag.a());
        aJ = com.instagram.camera.g.c(ag);
    }

    private void ab()
    {
        if (aQ != null)
        {
            au.setImageBitmap(aQ);
        }
    }

    private void ac()
    {
        ac.removeMessages(3);
        l().getWindow().clearFlags(128);
    }

    private void ad()
    {
        ac.removeMessages(3);
        l().getWindow().addFlags(128);
        ac.sendEmptyMessageDelayed(3, 0x1d4c0L);
    }

    private boolean ae()
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

    private void af()
    {
        aN = com.instagram.common.y.a.b(n());
        com.instagram.creation.base.e.a(this, 0, aN);
    }

    private void ag()
    {
        if (ab != -1L) goto _L2; else goto _L1
_L1:
        String s1 = c(az.no_storage);
_L4:
        if (s1 != null)
        {
            Toast.makeText(l(), s1, 1).show();
            l().finish();
        }
        return;
_L2:
        if (ab == -2L)
        {
            s1 = c(az.preparing_sd);
        } else
        if (ab == -3L)
        {
            s1 = c(az.access_sd_fail);
        } else
        {
            int i1 = ab != 1L;
            s1 = null;
            if (i1 < 0)
            {
                s1 = c(az.not_enough_space);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void ah()
    {
        IntentFilter intentfilter = new IntentFilter("android.intent.action.MEDIA_MOUNTED");
        intentfilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentfilter.addAction("android.intent.action.MEDIA_SCANNER_FINISHED");
        intentfilter.addAction("android.intent.action.MEDIA_CHECKING");
        intentfilter.addDataScheme("file");
        l().registerReceiver(aR, intentfilter);
        h = true;
    }

    private boolean ai()
    {
        return at();
    }

    private void aj()
    {
        if (ah != null)
        {
            com.instagram.camera.e.a().d();
            ah.setErrorCallback(null);
            ah = null;
            e = 0;
            aq.g();
        }
    }

    private void ak()
    {
        if (android.os.Build.VERSION.SDK_INT >= 14 || e == 0)
        {
            ah.setDisplayOrientation(aD);
            return;
        }
        try
        {
            a.stopPreview();
            a.setDisplayOrientation(aD);
            a.startPreview();
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            com.facebook.e.a.a.a("CameraFragment", "Error setting display orientation");
        }
        return;
    }

    private void al()
    {
        if (!aE && !l().isFinishing()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        ah.setErrorCallback(aI);
        if (e != 0)
        {
            am();
        }
        a(as);
        ak();
        aq.n();
        h(-1);
        if (d != null)
        {
            synchronized (d)
            {
                d.notify();
            }
        }
        ah.startPreview();
        e = 1;
        aq.e();
        return;
        Throwable throwable;
        throwable;
        aj();
        com.instagram.common.i.c.a("startPreview failed", throwable.toString());
        if (!ac.hasMessages(5))
        {
            ac.sendEmptyMessage(5);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void am()
    {
        if (ah != null && e != 0)
        {
            ah.stopPreview();
        }
        e = 0;
        aq.f();
    }

    private void an()
    {
        List list = ai.getSupportedPreviewFrameRates();
        if (list != null)
        {
            Integer integer = (Integer)Collections.max(list);
            ai.setPreviewFrameRate(integer.intValue());
        }
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            ao();
        }
        if ("true".equals(ai.get("video-stabilization-supported")))
        {
            ai.set("video-stabilization", "false");
        }
    }

    private void ao()
    {
        ai.setRecordingHint(false);
    }

    private void ap()
    {
        if (!"auto".equals(ar))
        {
            ai.getFlashMode();
            ai.getWhiteBalance();
            ai.getFocusMode();
        }
    }

    private void aq()
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            ar();
        }
        String s1 = ag.getString("pref_camera_picturesize_key_V7", null);
        android.hardware.Camera.Size size;
        android.hardware.Camera.Size size1;
        int i1;
        int j1;
        int k1;
        CameraFlashButton cameraflashbutton;
        String s2;
        List list;
        View view;
        if (s1 == null)
        {
            com.instagram.camera.g.a(ai);
        } else
        {
            com.instagram.camera.g.a(s1, ai.getSupportedPictureSizes(), ai);
        }
        size = ai.getPictureSize();
        size1 = a(ai.getSupportedPreviewSizes(), (double)size.width / (double)size.height);
        if (!ai.getPreviewSize().equals(size1))
        {
            ai.setPreviewSize(size1.width, size1.height);
            ah.setParameters(ai);
            ai = ah.getParameters();
        }
        (new StringBuilder("Preview size is ")).append(size1.width).append("x").append(size1.height);
        az.setAspectRatio((double)size1.height / (double)size1.width);
        ar = ag.getString("pref_camera_scenemode_key", c(az.pref_camera_scenemode_default));
        if (a(ar, ai.getSupportedSceneModes()))
        {
            if (!ai.getSceneMode().equals(ar))
            {
                ai.setSceneMode(ar);
                ah.setParameters(ai);
                ai = ah.getParameters();
            }
        } else
        {
            ar = ai.getSceneMode();
            if (ar == null)
            {
                ar = "auto";
            }
        }
        i1 = CameraProfile.getJpegEncodingQualityParameter(aJ, 2);
        ai.setJpegQuality(i1);
        j1 = com.instagram.camera.g.a(ag);
        k1 = ai.getMaxExposureCompensation();
        if (j1 >= ai.getMinExposureCompensation() && j1 <= k1)
        {
            ai.setExposureCompensation(j1);
        }
        if ("auto".equals(ar))
        {
            String s3 = ag.getString("pref_camera_flashmode_key", c(az.pref_camera_flash_mode_off));
            List list1 = ai.getSupportedFlashModes();
            String s5;
            if (a(s3, list1))
            {
                ai.setFlashMode(s3);
            } else
            {
                String s4 = c(az.pref_camera_flash_mode_off);
                if (a(s4, list1))
                {
                    ai.setFlashMode(s4);
                } else
                {
                    (new StringBuilder("Unknown flash mode: ")).append(ai.getFlashMode());
                }
            }
            s5 = ag.getString("pref_camera_whitebalance_key", c(az.pref_camera_whitebalance_default));
            if (a(s5, ai.getSupportedWhiteBalance()))
            {
                ai.setWhiteBalance(s5);
            } else
            if (ai.getWhiteBalance() == null)
            {
                ai.setWhiteBalance("auto");
            }
            aq.a(null);
            ai.setFocusMode(aq.i());
        } else
        {
            aq.a(ai.getFocusMode());
        }
        cameraflashbutton = (CameraFlashButton)E().findViewById(av.flash_button);
        s2 = ai.getFlashMode();
        list = ai.getSupportedFlashModes();
        if (list == null || list.size() == 0)
        {
            cameraflashbutton.setVisibility(8);
        } else
        if (list.size() == 1 && ((String)list.get(0)).equals("off"))
        {
            cameraflashbutton.setVisibility(8);
        } else
        if (s2.equals("on"))
        {
            cameraflashbutton.a(com.instagram.creation.photo.camera.b.a);
        } else
        if (s2.equals("auto"))
        {
            cameraflashbutton.a(b.c);
        } else
        {
            cameraflashbutton.a(com.instagram.creation.photo.camera.b.b);
        }
        cameraflashbutton.setOnClickListener(new com.instagram.creation.photo.camera.k(this, cameraflashbutton));
        view = E().findViewById(av.switch_camera_button);
        if (b > 1)
        {
            view.setOnClickListener(new l(this));
            return;
        } else
        {
            view.setVisibility(8);
            return;
        }
    }

    private void ar()
    {
        if (an)
        {
            ai.setAutoExposureLock(aq.o());
        }
        if (ao)
        {
            ai.setAutoWhiteBalanceLock(aq.o());
        }
        if (ak)
        {
            ai.setFocusAreas(aq.j());
        }
        if (al)
        {
            ai.setMeteringAreas(aq.k());
        }
    }

    private void as()
    {
        if (!com.instagram.l.b.a.a().x()) goto _L2; else goto _L1
_L1:
        ab = com.instagram.creation.photo.c.g.a();
        if (ab <= 0x2faf080L) goto _L4; else goto _L3
_L3:
        ab = (ab - 0x2faf080L) / 0x16e360L;
_L6:
        ag();
_L2:
        return;
_L4:
        if (ab > 0L)
        {
            ab = 0L;
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private boolean at()
    {
        return e == 1 || aq.l();
    }

    private void au()
    {
        aj = ah.getParameters();
        aq.a(aj);
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            av();
        } else
        if (aq.i().equals("auto"))
        {
            am = true;
            return;
        }
    }

    private void av()
    {
        boolean flag = true;
        boolean flag1;
        boolean flag2;
        if (aj.getMaxNumFocusAreas() > 0 && a("auto", aj.getSupportedFocusModes()))
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        ak = flag1;
        if (aj.getMaxNumMeteringAreas() > 0)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        al = flag2;
        an = aj.isAutoExposureLockSupported();
        if (!aj.isAutoWhiteBalanceLockSupported() || aw())
        {
            flag = false;
        }
        ao = flag;
    }

    private static boolean aw()
    {
        return Build.MODEL.indexOf("LG-E612f") != -1 || Build.MODEL.indexOf("LG-E612") != -1 || Build.MODEL.indexOf("LG-E610v") != -1 || Build.MODEL.indexOf("LG-E610G") != -1 || Build.MODEL.indexOf("LG-E615f") != -1 || Build.MODEL.indexOf("LG-E610") != -1 || Build.MODEL.indexOf("LG-E617G") != -1 || Build.MODEL.indexOf("LG-P705f") != -1 || Build.MODEL.indexOf("LG-P705g") != -1 || Build.MODEL.indexOf("LG-P708g") != -1 || Build.MODEL.indexOf("LG-E615F") != -1;
    }

    static int b(c c1, int i1)
    {
        c1.af = i1;
        return i1;
    }

    static void b(c c1)
    {
        c1.g(0);
    }

    static int c(c c1)
    {
        return c1.aC;
    }

    static void c(c c1, int i1)
    {
        c1.i(i1);
    }

    static void d(c c1)
    {
        c1.ak();
    }

    static long e(c c1)
    {
        return c1.aG;
    }

    static Handler f(c c1)
    {
        return c1.ac;
    }

    private void f(int i1)
    {
        av.getLayoutParams().height = i1;
        av.getLayoutParams().width = i1;
        au.getLayoutParams().height = i1;
        au.getLayoutParams().width = i1;
    }

    static m g(c c1)
    {
        return c1.aq;
    }

    private void g(int i1)
    {
        f = i1 | f;
        if (ah == null)
        {
            f = 0;
        } else
        {
            if (at())
            {
                h(f);
                ap();
                f = 0;
                return;
            }
            if (!ac.hasMessages(4))
            {
                ac.sendEmptyMessageDelayed(4, 1000L);
                return;
            }
        }
    }

    private void h(int i1)
    {
        ai = ah.getParameters();
        if ((i1 & 1) != 0)
        {
            an();
        }
        if ((i1 & 4) != 0)
        {
            aq();
        }
        try
        {
            ah.setParameters(ai);
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            com.facebook.e.a.a.a("CameraFragment", "Failed to set parameters", runtimeexception);
        }
        ac.post(new com.instagram.creation.photo.camera.m(this));
    }

    static void h(c c1)
    {
        c1.as();
    }

    static ImageView i(c c1)
    {
        return c1.ay;
    }

    private void i(int i1)
    {
        if (aB != null)
        {
            aB.setOrientation(i1);
        }
    }

    static int j(c c1)
    {
        return c1.aJ;
    }

    static boolean k(c c1)
    {
        c1.aw = true;
        return true;
    }

    static boolean l(c c1)
    {
        c1.ax = true;
        return true;
    }

    static void m(c c1)
    {
        c1.au();
    }

    static void n(c c1)
    {
        c1.al();
    }

    static android.hardware.Camera.Parameters o(c c1)
    {
        return c1.ai;
    }

    static k p(c c1)
    {
        return c1.ag;
    }

    static void q(c c1)
    {
        c1.h(4);
    }

    static int r(c c1)
    {
        return c1.aK;
    }

    static int s(c c1)
    {
        return c1.aL;
    }

    static boolean t(c c1)
    {
        return c1.aE;
    }

    static o u(c c1)
    {
        return c1.aM;
    }

    static Uri v(c c1)
    {
        return c1.aO;
    }

    static void w(c c1)
    {
        c1.ag();
    }

    static float x(c c1)
    {
        return c1.aP;
    }

    static String y(c c1)
    {
        return c1.aH;
    }

    static boolean z(c c1)
    {
        return c1.ae();
    }

    public final void F()
    {
        super.F();
        aE = false;
        if (!aw && !ax)
        {
            if (e == 0)
            {
                try
                {
                    ah = com.instagram.camera.h.a(l(), aJ);
                    au();
                    W();
                    al();
                }
                catch (d d1)
                {
                    com.instagram.camera.h.b(l(), az.cannot_connect_camera);
                    return;
                }
                catch (com.instagram.camera.b b1)
                {
                    com.instagram.camera.h.b(l(), az.cannot_connect_camera);
                    return;
                }
            }
            if (as != null)
            {
                if (!aF)
                {
                    ac.sendEmptyMessage(1);
                } else
                {
                    Z();
                }
            }
            ad();
            if (e == 1)
            {
                aG = SystemClock.uptimeMillis();
                ac.sendEmptyMessageDelayed(2, 100L);
                return;
            }
        }
    }

    public final void G()
    {
        aE = true;
        am();
        aj();
        ac();
        if (aF)
        {
            ad.b();
            if (aM != null)
            {
                aM.a();
                aM = null;
            }
        }
        if (h)
        {
            l().unregisterReceiver(aR);
            h = false;
        }
        aq.h();
        ac.removeMessages(1);
        ac.removeMessages(2);
        aq.m();
        super.G();
    }

    public final void V()
    {
        if (aE)
        {
            return;
        }
        android.support.v4.app.k k1 = l();
        int i1 = com.instagram.camera.g.c(ag);
        if (aJ != i1)
        {
            Intent intent = k1.getIntent();
            intent.addFlags(0x4000000);
            intent.addFlags(0x2000000);
            intent.setClassName(k1.getPackageName(), k1.getClass().getName());
            com.instagram.camera.e.a().e();
            try
            {
                k1.startActivity(intent);
            }
            catch (ActivityNotFoundException activitynotfoundexception)
            {
                intent.setComponent(null);
                k1.startActivity(intent);
            }
            k1.overridePendingTransition(0, 0);
            k1.finish();
            return;
        } else
        {
            g(4);
            return;
        }
    }

    public final View a(LayoutInflater layoutinflater, ViewGroup viewgroup)
    {
        int i1;
        View view;
        SurfaceView surfaceview;
        SurfaceHolder surfaceholder;
        View view1;
        int j1;
        com.instagram.l.b.a a1;
        View view2;
        if (com.instagram.creation.base.ui.a.b(o()))
        {
            i1 = aw.fragment_camera;
        } else
        {
            i1 = aw.fragment_camera_small;
        }
        view = layoutinflater.inflate(i1, viewgroup, false);
        surfaceview = (SurfaceView)view.findViewById(av.camera_preview);
        surfaceview.setZOrderOnTop(false);
        surfaceholder = surfaceview.getHolder();
        surfaceholder.addCallback(this);
        surfaceholder.setType(3);
        at = (ShutterButton)view.findViewById(av.fragment_camera_shutter_button);
        at.setOnShutterButtonListener(this);
        at.setVisibility(0);
        au = (ImageView)view.findViewById(av.fragment_camera_gallery_button);
        au.setOnClickListener(this);
        av = view.findViewById(av.fragment_camera_video_button);
        view1 = av;
        if (com.instagram.creation.c.a.d())
        {
            j1 = 0;
        } else
        {
            j1 = 4;
        }
        view1.setVisibility(j1);
        av.setOnClickListener(this);
        view.findViewById(av.action_bar_cancel).setOnClickListener(new com.instagram.creation.photo.camera.g(this));
        a1 = com.instagram.l.b.a.a();
        view2 = view.findViewById(av.grid_lines_view);
        ay = (ImageView)view.findViewById(av.grid_lines_button);
        if (a1.c())
        {
            view2.setVisibility(0);
            ay.getDrawable().mutate().setColorFilter(com.instagram.common.ui.colorfilter.a.a(o().getColor(as.accent_blue_medium)));
        }
        ay.setOnClickListener(new com.instagram.creation.photo.camera.h(this, view2, a1));
        az = (SquarePreviewFrameLayout)view.findViewById(av.creation_image_container);
        com.instagram.creation.base.ui.a.a(view);
        com.instagram.creation.photo.camera.e.a[-1 + com.instagram.creation.base.ui.a.a(o())];
        JVM INSTR tableswitch 1 3: default 328
    //                   1 348
    //                   2 375
    //                   3 375;
           goto _L1 _L2 _L3 _L3
_L1:
        ab();
        return view;
_L2:
        a(o().getDimensionPixelSize(at.camera_shutter_button_size_large_condensed));
        at.setBackgroundResource(au.camera_shutter_button_condensed_background);
        continue; /* Loop/switch isn't completed */
_L3:
        a(o().getDimensionPixelSize(at.camera_shutter_button_size_small));
        at.setBackgroundResource(au.camera_shutter_button_condensed_background);
        f(o().getDimensionPixelSize(at.camera_bottom_button_size_small));
        if (true) goto _L1; else goto _L4
_L4:
    }

    public final void a(int i1, int j1, Intent intent)
    {
        if (j1 != -1)
        {
            return;
        }
        Uri uri;
        switch (i1)
        {
        default:
            return;

        case 0: // '\0'
            uri = com.instagram.creation.base.e.a(intent, aN);
            break;
        }
        ((s)l()).a(uri, aH, ae());
    }

    public final void a(Bundle bundle)
    {
        super.a(bundle);
        aa();
        aq = new m(ag, c(az.pref_camera_focusmode_default));
        if (bundle != null)
        {
            String s1 = bundle.getString("tempFileGallery");
            if (s1 != null)
            {
                aN = new File(s1);
            }
            aH = bundle.getString("pendingMediaKey");
        }
        if (aH == null)
        {
            com.instagram.creation.b.a.b b1 = com.instagram.creation.b.a.b.a(String.valueOf(System.nanoTime()));
            ((com.instagram.creation.photo.b.a)l()).a(b1);
            aH = b1.a();
        }
    }

    public final void a(boolean flag)
    {
        while (aE || e == 3 || flag && !ai()) 
        {
            return;
        }
        if (flag)
        {
            aq.a();
            return;
        } else
        {
            aq.b();
            return;
        }
    }

    public final boolean b()
    {
        if (!ap)
        {
            return false;
        } else
        {
            ah.autoFocus(aa);
            e = 2;
            return true;
        }
    }

    public final void c()
    {
        ah.cancelAutoFocus();
        e = 1;
        h(4);
    }

    public final void d(Bundle bundle)
    {
        super.d(bundle);
        aE = false;
        c = new Thread(new i(this));
        d = new Thread(new j(this));
        c.start();
        ag.a(l(), aJ);
        com.instagram.camera.g.a(ag.b());
        b = com.instagram.camera.e.a().b();
        W();
        c.join();
        c = null;
        if (aw)
        {
            com.instagram.camera.h.b(l(), az.cannot_connect_camera);
            return;
        }
        InterruptedException interruptedexception1;
        try
        {
            if (ax)
            {
                com.instagram.camera.h.b(l(), az.cannot_connect_camera);
                return;
            }
        }
        catch (InterruptedException interruptedexception) { }
        d.start();
        aL = com.instagram.camera.e.a().f();
        aK = com.instagram.camera.e.a().g();
        synchronized (d)
        {
            try
            {
                d.wait();
            }
            // Misplaced declaration of an exception variable
            catch (InterruptedException interruptedexception1) { }
        }
        try
        {
            d.join();
        }
        catch (InterruptedException interruptedexception2) { }
        d = null;
        return;
    }

    public final boolean d()
    {
        if (e == 3 || ah == null)
        {
            return false;
        } else
        {
            com.instagram.camera.h.a(ai, aJ, ae, com.instagram.camera.e.a());
            ah.setParameters(ai);
            ah.takePicture(i, null, null, new p(this, (byte)0));
            e = 3;
            return true;
        }
    }

    public final void e()
    {
        h(4);
    }

    public final void e(Bundle bundle)
    {
        super.e(bundle);
        bundle.putString("pendingMediaKey", aH);
        if (aN != null)
        {
            bundle.putString("tempFileGallery", aN.toString());
        }
    }

    public final void f()
    {
        if (aE)
        {
            return;
        } else
        {
            aq.c();
            return;
        }
    }

    public final String j_()
    {
        return "camera";
    }

    public final void l_()
    {
        super.l_();
        aj();
        aF = false;
    }

    public final void m_()
    {
        super.m_();
        at = null;
        au = null;
        av = null;
        ay = null;
        az = null;
        aQ = null;
    }

    public final void onClick(View view)
    {
        if (view == au)
        {
            com.instagram.p.a.g.c();
            af();
        } else
        if (view == av)
        {
            if (!com.instagram.creation.c.b.a())
            {
                int i1 = az.video_not_enough_space_for_recording;
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(100);
                String s1 = a(i1, aobj);
                Toast.makeText(l(), s1, 1).show();
                return;
            } else
            {
                ((com.instagram.creation.base.b)l()).a(com.instagram.creation.base.c.b, ae());
                return;
            }
        }
    }

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        while (aE || ah == null || !aF || e == 3 || !ak && !al && !am) 
        {
            return false;
        }
        return aq.a(motionevent);
    }

    public final void surfaceChanged(SurfaceHolder surfaceholder, int i1, int j1, int k1)
    {
        if (surfaceholder.getSurface() != null)
        {
            (new StringBuilder("surfaceChanged. w=")).append(j1).append(". h=").append(k1);
            com.instagram.b.d.c.a().a("camera_surface_init");
            as = surfaceholder;
            if (ah != null && !aE && !l().isFinishing())
            {
                if (e == 0)
                {
                    al();
                } else
                {
                    if (com.instagram.camera.h.a(l()) != aC)
                    {
                        ak();
                    }
                    if (surfaceholder.isCreating())
                    {
                        a(surfaceholder);
                    }
                }
                if (!aF)
                {
                    ac.sendEmptyMessage(1);
                } else
                {
                    Z();
                }
                com.instagram.b.d.c.a().b("camera_surface_init");
                return;
            }
        }
    }

    public final void surfaceCreated(SurfaceHolder surfaceholder)
    {
        ap = true;
    }

    public final void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        am();
        ap = false;
        as = null;
    }

}
