// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.ui;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import com.instagram.creation.video.gl.c;
import com.instagram.creation.video.gl.q;
import com.instagram.creation.video.gl.v;

// Referenced classes of package com.instagram.creation.video.ui:
//            j, i, g, h, 
//            k

public final class f extends v
{

    private h j;
    private j k[];
    private g l;
    private int m;
    private int n;
    private boolean o;
    private Rect p;
    private Rect q;
    private Context r;

    public f(Activity activity)
    {
        k = new j[1];
        m = 0;
        n = 0;
        p = new Rect();
        q = new Rect();
        r = activity.getBaseContext();
        j = new i(this);
    }

    static int a(int i1, int j1, int k1)
    {
        return b(i1, j1, k1);
    }

    static int a(f f1)
    {
        return f1.h();
    }

    private void a(Rect rect)
    {
        p.set(rect);
        g();
    }

    static void a(c c1, Rect rect)
    {
        b(c1, rect);
    }

    private static int b(int i1, int j1, int k1)
    {
        if (i1 % 180 == 0)
        {
            return j1;
        } else
        {
            return k1;
        }
    }

    private static void b(c c1, Rect rect)
    {
        c1.a(rect.left, rect.top, rect.width(), rect.height());
    }

    private void g()
    {
        int i1 = b();
        int j1 = c();
        int l1;
        int i2;
        int j2;
        int k2;
        if (n % 180 == 0)
        {
            int k1 = j1;
            j1 = i1;
            i1 = k1;
        }
        l1 = p.left;
        i2 = p.top;
        j2 = p.right;
        k2 = p.bottom;
        n;
        JVM INSTR lookupswitch 4: default 104
    //                   0: 146
    //                   90: 164
    //                   180: 186
    //                   270: 212;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        (new StringBuilder("compensation = ")).append(n).append(", CameraRelativeFrame = ").append(p).append(", mCameraRect = ").append(q);
        return;
_L2:
        q.set(l1, i2, j2, k2);
        continue; /* Loop/switch isn't completed */
_L3:
        q.set(i1 - k2, l1, i1 - i2, j2);
        continue; /* Loop/switch isn't completed */
_L4:
        q.set(j1 - j2, i1 - k2, j1 - l1, i1 - i2);
        continue; /* Loop/switch isn't completed */
_L5:
        q.set(i2, j1 - j2, k2, j1 - l1);
        if (true) goto _L1; else goto _L6
_L6:
    }

    private int h()
    {
        return (360 + (n - m)) % 360;
    }

    protected final void a(c c1)
    {
        if (!o)
        {
            o = true;
            l.X();
        }
        boolean _tmp = o;
        Rect rect = new Rect(0, 0, j.b().a, j.b().b);
        j.a(c1, rect);
    }

    public final void a(g g1)
    {
        l = g1;
    }

    public final void a(k k1)
    {
        j.a(k1);
        j.a();
        a(new Rect(0, 0, j.b().a, j.b().b));
    }

    protected final boolean e()
    {
        return true;
    }

    protected final void f()
    {
        q q1 = d();
        int i1 = q1.getDisplayRotation();
        int j1 = q1.getCompensation();
        if (m != i1 || n != j1)
        {
            m = i1;
            n = j1;
        }
        j.a();
        g();
    }
}
