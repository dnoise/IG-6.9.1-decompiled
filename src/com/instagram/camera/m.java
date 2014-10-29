// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.camera;

import android.content.res.AssetFileDescriptor;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.av;
import com.instagram.camera.ui.FocusIndicatorView;
import com.instagram.camera.ui.a;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.camera:
//            o, h, n, s, 
//            k

public final class m
{

    n a;
    private int b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private Matrix g;
    private s h;
    private View i;
    private FocusIndicatorView j;
    private View k;
    private List l;
    private List m;
    private String n;
    private String o;
    private String p;
    private android.hardware.Camera.Parameters q;
    private k r;
    private Handler s;

    public m(k k1, String s1)
    {
        b = 0;
        r = k1;
        o = s1;
        s = new o(this, (byte)0);
        g = new Matrix();
    }

    private void a(int i1, int j1, float f1, int k1, int l1, int i2, int j2, 
            Rect rect)
    {
        int k2 = (int)(f1 * (float)i1);
        int l2 = (int)(f1 * (float)j1);
        int i3 = com.instagram.camera.h.b(k1 - k2 / 2, i2 - k2);
        int j3 = com.instagram.camera.h.b(l1 - l2 / 2, j2 - l2);
        RectF rectf = new RectF(i3, j3, k2 + i3, l2 + j3);
        g.mapRect(rectf);
        com.instagram.camera.h.a(rectf, rect);
    }

    static void a(m m1)
    {
        m1.s();
    }

    private static boolean a(String s1, List list)
    {
        return list != null && list.indexOf(s1) >= 0;
    }

    private boolean b(MotionEvent motionevent)
    {
        if (l != null && (b == 1 || b == 3 || b == 4))
        {
            s();
        }
        int i1 = Math.round(motionevent.getX());
        int j1 = Math.round(motionevent.getY());
        int k1 = i.getWidth();
        int l1 = i.getHeight();
        int i2 = k.getWidth();
        int j2 = k.getHeight();
        if (l == null)
        {
            l = new ArrayList();
            l.add(new android.hardware.Camera.Area(new Rect(), 1));
            m = new ArrayList();
            m.add(new android.hardware.Camera.Area(new Rect(), 1));
        }
        a(k1, l1, 1.0F, i1, j1, i2, j2, ((android.hardware.Camera.Area)l.get(0)).rect);
        a(k1, l1, 1.5F, i1, j1, i2, j2, ((android.hardware.Camera.Area)m.get(0)).rect);
        android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)i.getLayoutParams();
        layoutparams.setMargins(com.instagram.camera.h.b(i1 - k1 / 2, i2 - k1), com.instagram.camera.h.b(j1 - l1 / 2, j2 - l1), 0, 0);
        layoutparams.getRules()[13] = 0;
        i.requestLayout();
        a.e();
        if (d && motionevent.getAction() == 1)
        {
            r();
            return true;
        } else
        {
            u();
            s.removeMessages(0);
            s.sendEmptyMessageDelayed(0, 3000L);
            return true;
        }
    }

    private void p()
    {
        boolean flag;
        if (q.isAutoExposureLockSupported() || q.isAutoWhiteBalanceLockSupported())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        e = flag;
    }

    private int q()
    {
        return q.getMaxNumFocusAreas();
    }

    private void r()
    {
        if (!a.b())
        {
            return;
        } else
        {
            b = 1;
            u();
            s.removeMessages(0);
            return;
        }
    }

    private void s()
    {
        v();
        a.c();
        b = 0;
        u();
        s.removeMessages(0);
    }

    private void t()
    {
        if (a.d())
        {
            b = 0;
            s.removeMessages(0);
        }
    }

    private void u()
    {
        if (c)
        {
            int i1 = Math.min(k.getWidth(), k.getHeight()) / 4;
            android.view.ViewGroup.LayoutParams layoutparams = j.getLayoutParams();
            layoutparams.width = i1;
            layoutparams.height = i1;
            FocusIndicatorView focusindicatorview = j;
            if (b == 0)
            {
                if (l == null)
                {
                    focusindicatorview.d();
                    return;
                } else
                {
                    focusindicatorview.a();
                    return;
                }
            }
            if (b == 1 || b == 2)
            {
                focusindicatorview.a();
                return;
            }
            if ("continuous-picture".equals(n))
            {
                focusindicatorview.a();
                return;
            }
            if (b == 3)
            {
                focusindicatorview.b();
                return;
            }
            if (b == 4)
            {
                focusindicatorview.c();
                return;
            }
        }
    }

    private void v()
    {
        if (!c)
        {
            return;
        } else
        {
            android.view.ViewGroup.LayoutParams layoutparams = j.getLayoutParams();
            android.widget.RelativeLayout.LayoutParams layoutparams1 = (android.widget.RelativeLayout.LayoutParams)i.getLayoutParams();
            layoutparams1.setMargins(k.getWidth() / 2 - layoutparams.width / 2, k.getWidth() / 2 - layoutparams.height / 2, 0, 0);
            layoutparams1.getRules()[13] = 0;
            i.requestLayout();
            l = null;
            m = null;
            return;
        }
    }

    private boolean w()
    {
        String s1 = i();
        return !s1.equals("infinity") && !s1.equals("fixed") && !s1.equals("edof");
    }

    public final void a()
    {
        if (c)
        {
            if (e && !f)
            {
                f = true;
                a.e();
            }
            if (w() && b != 3 && b != 4)
            {
                r();
                return;
            }
        }
    }

    public final void a(AssetFileDescriptor assetfiledescriptor)
    {
        h = new s(assetfiledescriptor);
    }

    public final void a(android.hardware.Camera.Parameters parameters)
    {
        q = parameters;
        int i1;
        boolean flag;
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            i1 = q();
        } else
        {
            i1 = 0;
        }
        flag = false;
        if (i1 > 0)
        {
            boolean flag1 = a("auto", q.getSupportedFocusModes());
            flag = false;
            if (flag1)
            {
                flag = true;
            }
        }
        d = flag;
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            p();
        }
    }

    public final void a(View view, View view1, n n1, boolean flag, int i1)
    {
        i = view;
        j = (FocusIndicatorView)view.findViewById(av.focus_indicator);
        k = view1;
        a = n1;
        Matrix matrix = new Matrix();
        com.instagram.camera.h.a(matrix, flag, i1, view1.getWidth(), view1.getHeight());
        matrix.invert(g);
        if (q != null)
        {
            c = true;
        } else
        {
            com.facebook.e.a.a.a("FocusManager", "mParameters is not initialized.");
        }
        u();
        v();
    }

    public final void a(String s1)
    {
        p = s1;
    }

    public final void a(boolean flag)
    {
        if (b == 2)
        {
            if (flag)
            {
                b = 3;
            } else
            {
                b = 4;
            }
            u();
            t();
        } else
        if (b == 1)
        {
            if (flag)
            {
                b = 3;
                if (!"continuous-picture".equals(n) && h != null)
                {
                    h.a();
                }
            } else
            {
                b = 4;
            }
            u();
            if (l != null || android.os.Build.VERSION.SDK_INT < 14)
            {
                s.sendEmptyMessageDelayed(0, 3000L);
                return;
            }
        } else
        {
            int _tmp = b;
            return;
        }
    }

    public final boolean a(MotionEvent motionevent)
    {
        if (!c || b == 2)
        {
            return false;
        }
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            r();
            return true;
        } else
        {
            return b(motionevent);
        }
    }

    public final void b()
    {
        if (c)
        {
            if (w() && (b == 1 || b == 3 || b == 4))
            {
                s();
            }
            if (e && f && b != 2)
            {
                f = false;
                a.e();
                return;
            }
        }
    }

    public final void c()
    {
        if (c)
        {
            if (!w() || b == 3 || b == 4)
            {
                t();
                return;
            }
            if (b == 1)
            {
                b = 2;
                return;
            }
            if (b == 0)
            {
                t();
                return;
            }
        }
    }

    public final void d()
    {
        v();
        u();
    }

    public final void e()
    {
        b = 0;
    }

    public final void f()
    {
        b = 0;
        v();
        u();
    }

    public final void g()
    {
        f();
    }

    public final void h()
    {
        if (h != null)
        {
            h.b();
            h = null;
        }
    }

    public final String i()
    {
        if (p != null)
        {
            return p;
        }
        if (d && l != null)
        {
            n = "auto";
        } else
        {
            n = r.getString("pref_camera_focusmode_key", o);
        }
        if (!a(n, q.getSupportedFocusModes()))
        {
            if (a("auto", q.getSupportedFocusModes()))
            {
                n = "auto";
            } else
            {
                n = q.getFocusMode();
            }
        }
        return n;
    }

    public final List j()
    {
        return l;
    }

    public final List k()
    {
        return m;
    }

    public final boolean l()
    {
        return b == 3 || b == 4;
    }

    public final void m()
    {
        s.removeMessages(0);
    }

    public final void n()
    {
        f = false;
    }

    public final boolean o()
    {
        return f;
    }
}
