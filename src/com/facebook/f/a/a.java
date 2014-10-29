// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.f.a;

import android.content.Context;
import android.support.v4.view.az;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;

// Referenced classes of package com.facebook.f.a:
//            g, e, h, d, 
//            c, f, b

public class a
{

    private static final Class a = com/facebook/f/a/a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private float g;
    private float h;
    private float i;
    private float j;
    private h k;
    private int l;
    private VelocityTracker m;
    private int n;
    private c o;
    private d p;
    private f q;

    public a(Context context)
    {
        f = g.b;
        g = -1F;
        h = -1F;
        i = 0.0F;
        j = 0.0F;
        k = null;
        l = e.a;
        m = null;
        n = 0;
        o = null;
        p = null;
        q = null;
        ViewConfiguration viewconfiguration = ViewConfiguration.get(context);
        b = az.a(viewconfiguration);
        c = viewconfiguration.getScaledTouchSlop();
        d = viewconfiguration.getScaledMinimumFlingVelocity();
        e = viewconfiguration.getScaledMaximumFlingVelocity();
    }

    private void a(float f1, float f2)
    {
        if (!g() && !f())
        {
            int i1 = (int)(f1 - g);
            int j1 = (int)(f2 - h);
            int k1 = Math.abs(i1);
            int l1 = Math.abs(j1);
            i = i + (float)i1;
            j = j + (float)j1;
            if (l1 > c && (f == g.b || 0.5F * (float)l1 > (float)k1))
            {
                if (j1 < 0 && a())
                {
                    a(f1, f2, h.a);
                    return;
                }
                if (j1 > 0 && b())
                {
                    a(f1, f2, h.b);
                    return;
                } else
                {
                    i();
                    return;
                }
            }
            if (k1 > b && (f == g.a || 0.5F * (float)k1 > (float)l1))
            {
                if (i1 < 0 && c())
                {
                    a(f1, f2, h.c);
                    return;
                }
                if (i1 > 0 && d())
                {
                    a(f1, f2, h.d);
                    return;
                } else
                {
                    i();
                    return;
                }
            }
        }
    }

    private void a(float f1, float f2, h h1)
    {
        g = f1;
        h = f2;
        k = h1;
        l = e.c;
        p.a();
    }

    private void a(int i1)
    {
        n = i1 | n;
    }

    private boolean a()
    {
        return h.a.a(n);
    }

    private boolean a(float f1)
    {
        if (o != null)
        {
            return o.a(f1);
        } else
        {
            return true;
        }
    }

    private transient void b(h ah[])
    {
        for (int i1 = 0; i1 < ah.length; i1++)
        {
            if (ah[i1] != null)
            {
                a(ah[i1].a());
            }
        }

    }

    private boolean b()
    {
        return h.b.a(n);
    }

    private boolean c()
    {
        return h.c.a(n);
    }

    private boolean d()
    {
        return h.d.a(n);
    }

    private boolean e()
    {
        return n > 0;
    }

    private boolean f()
    {
        return l == e.c;
    }

    private boolean g()
    {
        return l == e.d;
    }

    private boolean h()
    {
        return Math.abs(i) < (float)c && Math.abs(j) < (float)c;
    }

    private void i()
    {
        g = -1F;
        h = -1F;
        l = e.d;
        VelocityTracker velocitytracker = m;
        m = null;
        if (velocitytracker != null)
        {
            velocitytracker.recycle();
        }
    }

    private h j()
    {
        if (k != null)
        {
            return k;
        }
        if (d())
        {
            return h.d;
        }
        if (b())
        {
            return h.b;
        }
        if (a())
        {
            return h.a;
        } else
        {
            return h.c;
        }
    }

    private boolean k()
    {
        if (o != null)
        {
            c _tmp = o;
            return true;
        } else
        {
            return false;
        }
    }

    public final void a(c c1)
    {
        o = c1;
    }

    public final void a(d d1)
    {
        p = d1;
    }

    public final void a(f f1)
    {
        q = f1;
    }

    public final transient void a(h ah[])
    {
        n = 0;
        b(ah);
    }

    public final boolean a(MotionEvent motionevent)
    {
        d d1;
        boolean flag;
        d1 = p;
        flag = false;
        if (d1 == null) goto _L2; else goto _L1
_L1:
        boolean flag1;
        flag1 = e();
        flag = false;
        if (flag1) goto _L3; else goto _L2
_L2:
        return flag;
_L3:
        int i1;
        float f1;
        float f2;
        i1 = motionevent.getAction();
        f1 = motionevent.getX();
        f2 = motionevent.getY();
        i1;
        JVM INSTR tableswitch 0 3: default 76
    //                   0 81
    //                   1 158
    //                   2 147
    //                   3 158;
           goto _L4 _L5 _L6 _L7 _L6
_L4:
        return f();
_L5:
        l = e.b;
        i = 0.0F;
        j = 0.0F;
        if (!a(f2))
        {
            i();
            return false;
        }
        g = f1;
        h = f2;
        if (k())
        {
            a(f1, f2, j());
        }
        continue; /* Loop/switch isn't completed */
_L7:
        a(f1, f2);
        if (true) goto _L4; else goto _L6
_L6:
        if (q == null || g() || f() || !h()) goto _L4; else goto _L8
_L8:
        flag = q.a(f1, f2);
        if (!flag)
        {
            i();
            return flag;
        }
        if (true) goto _L2; else goto _L9
_L9:
    }

    public final boolean b(MotionEvent motionevent)
    {
        if (f()) goto _L2; else goto _L1
_L1:
        boolean flag;
        a(motionevent);
        int k1 = b.a[-1 + l];
        flag = false;
        switch (k1)
        {
        default:
            flag = true;
            break;

        case 1: // '\001'
            break;
        }
_L4:
        return flag;
_L2:
        d d1;
        d1 = p;
        flag = false;
        if (d1 == null) goto _L4; else goto _L3
_L3:
        boolean flag1;
        flag1 = e();
        flag = false;
        if (!flag1) goto _L4; else goto _L5
_L5:
        int i1;
        float f1;
        float f2;
        if (m == null)
        {
            m = VelocityTracker.obtain();
        }
        m.addMovement(motionevent);
        i1 = motionevent.getAction();
        f1 = motionevent.getX();
        f2 = motionevent.getY();
        i1;
        JVM INSTR tableswitch 1 3: default 144
    //                   1 280
    //                   2 146
    //                   3 280;
           goto _L6 _L7 _L8 _L7
_L6:
        return true;
_L8:
        float f3 = f1 - g;
        float f4 = f2 - h;
        g = f1;
        h = f2;
        i = f3 + i;
        j = f4 + j;
        if (k.c())
        {
            d d5 = p;
            if (f4 < 0.0F)
            {
                h.a;
            } else
            {
                h.b;
            }
            d5.b(f3);
        } else
        {
            d d4 = p;
            if (f3 < 0.0F)
            {
                h.c;
            } else
            {
                h.d;
            }
            d4.b(f3);
        }
        continue; /* Loop/switch isn't completed */
_L7:
        VelocityTracker velocitytracker = m;
        m = null;
        velocitytracker.computeCurrentVelocity(1000, e);
        int j1;
        if (k.b())
        {
            j1 = (int)velocitytracker.getXVelocity();
        } else
        {
            j1 = (int)velocitytracker.getYVelocity();
        }
        if (Math.abs(j1) > d)
        {
            if (j1 < 0)
            {
                d d3 = p;
                if (k.b())
                {
                    h.c;
                } else
                {
                    h.a;
                }
                d3.c();
            } else
            if (j1 > 0)
            {
                d d2 = p;
                if (k.b())
                {
                    h.d;
                } else
                {
                    h.b;
                }
                d2.c();
            }
        } else
        if (q != null && h())
        {
            q.b(f1, f2);
        } else
        {
            p.b();
        }
        l = e.a;
        velocitytracker.recycle();
        if (true) goto _L6; else goto _L9
_L9:
    }

}
