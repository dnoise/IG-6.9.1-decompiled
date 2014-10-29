// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.gl;

import android.graphics.Rect;
import android.view.MotionEvent;
import com.instagram.creation.video.l.j;
import java.util.ArrayList;

// Referenced classes of package com.instagram.creation.video.gl:
//            c, q

public class v
{

    protected final Rect a = new Rect();
    protected final Rect b = new Rect();
    protected v c;
    protected int d;
    protected int e;
    protected int f;
    protected int g;
    protected int h;
    protected int i;
    private q j;
    private ArrayList k;
    private v l;
    private int m;
    private int n;
    private int o;
    private float p[];

    public v()
    {
        m = 0;
        d = 0;
        e = 0;
        n = -1;
        o = -1;
        f = 0;
        g = 0;
        h = 0;
        i = 0;
    }

    private v a(int i1)
    {
        if (k == null)
        {
            throw new ArrayIndexOutOfBoundsException(i1);
        } else
        {
            return (v)k.get(i1);
        }
    }

    private void a(c c1, v v1)
    {
        if (v1.g() != 0)
        {
            return;
        } else
        {
            int i1 = v1.a.left - g;
            int j1 = v1.a.top - f;
            c1.a(i1, j1);
            v1.a(c1);
            c1.a(-i1, -j1);
            return;
        }
    }

    private boolean a(int i1, int j1, int k1, int l1)
    {
        boolean flag;
        if (k1 + 0 != a.right - a.left || l1 + 0 != a.bottom - a.top)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a.set(0, 0, k1, l1);
        return flag;
    }

    private static boolean a(MotionEvent motionevent, int i1, int j1, v v1, boolean flag)
    {
        Rect rect = v1.a;
        int k1 = rect.left;
        int l1 = rect.top;
        if (!flag || rect.contains(i1, j1))
        {
            motionevent.offsetLocation(-k1, -l1);
            if (v1.a(motionevent))
            {
                motionevent.offsetLocation(k1, l1);
                return true;
            }
            motionevent.offsetLocation(k1, l1);
        }
        return false;
    }

    private void b(c c1)
    {
        if (p != null)
        {
            c1.a(p);
        }
    }

    private void b(q q)
    {
        j = q;
        int i1 = 0;
        for (int j1 = h(); i1 < j1; i1++)
        {
            a(i1).b(q);
        }

    }

    private int g()
    {
        return (1 & m) != 0 ? 1 : 0;
    }

    private int h()
    {
        if (k == null)
        {
            return 0;
        } else
        {
            return k.size();
        }
    }

    private void i()
    {
        int i1 = 0;
        for (int j1 = h(); i1 < j1; i1++)
        {
            a(i1).i();
        }

        j = null;
    }

    public final void a()
    {
        boolean flag;
        if (c == null && j != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.instagram.creation.video.l.j.a(flag);
        i();
    }

    public final void a(int i1, int j1)
    {
        a(0, 0, i1, j1);
        m = -5 & m;
        f();
    }

    protected void a(c c1)
    {
        b(c1);
        c1.b();
        int i1 = 0;
        for (int j1 = h(); i1 < j1; i1++)
        {
            a(c1, a(i1));
        }

        c1.c();
    }

    public final void a(q q)
    {
        boolean flag;
        if (c == null && j == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.instagram.creation.video.l.j.a(flag);
        b(q);
    }

    protected final boolean a(MotionEvent motionevent)
    {
        int i1;
        int j1;
        int k1;
        i1 = (int)motionevent.getX();
        j1 = (int)motionevent.getY();
        k1 = motionevent.getAction();
        if (l == null) goto _L2; else goto _L1
_L1:
        if (k1 != 0) goto _L4; else goto _L3
_L3:
        MotionEvent motionevent1 = MotionEvent.obtain(motionevent);
        motionevent1.setAction(3);
        a(motionevent1, i1, j1, l, false);
        l = null;
_L2:
        if (k1 != 0) goto _L6; else goto _L5
_L5:
        int l1 = -1 + h();
_L11:
        v v1;
        if (l1 < 0)
        {
            break; /* Loop/switch isn't completed */
        }
        v1 = a(l1);
        if (v1.g() != 0 || !a(motionevent, i1, j1, v1, true)) goto _L8; else goto _L7
_L7:
        l = v1;
_L10:
        return true;
_L4:
        a(motionevent, i1, j1, l, false);
        if (k1 != 3 && k1 != 1) goto _L10; else goto _L9
_L9:
        l = null;
        return true;
_L8:
        l1--;
        if (true) goto _L11; else goto _L6
_L6:
        return e();
    }

    public final int b()
    {
        return a.right - a.left;
    }

    public final int c()
    {
        return a.bottom - a.top;
    }

    public final q d()
    {
        return j;
    }

    protected boolean e()
    {
        return false;
    }

    protected void f()
    {
    }
}
