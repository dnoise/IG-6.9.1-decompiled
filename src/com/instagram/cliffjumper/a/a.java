// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.a;

import android.util.FloatMath;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.instagram.cliffjumper.a:
//            b

public final class a
    implements android.view.View.OnTouchListener
{

    private b a;
    private boolean b;
    private boolean c;
    private List d;
    private SparseArray e;
    private android.view.MotionEvent.PointerCoords f;
    private android.view.MotionEvent.PointerCoords g;

    public a()
    {
        b = false;
        c = false;
        d = new ArrayList();
        e = new SparseArray();
        f = new android.view.MotionEvent.PointerCoords();
        g = new android.view.MotionEvent.PointerCoords();
    }

    private static float a(android.view.MotionEvent.PointerCoords pointercoords, android.view.MotionEvent.PointerCoords pointercoords1)
    {
        float f1 = pointercoords.x - pointercoords1.x;
        float f2 = pointercoords.y - pointercoords1.y;
        return FloatMath.sqrt(f1 * f1 + f2 * f2);
    }

    private void a(MotionEvent motionevent)
    {
        int i = motionevent.getActionIndex();
        int j = motionevent.getPointerId(i);
        d.add(Integer.valueOf(j));
        android.view.MotionEvent.PointerCoords pointercoords = new android.view.MotionEvent.PointerCoords();
        motionevent.getPointerCoords(i, pointercoords);
        e.put(j, pointercoords);
    }

    private static float b(android.view.MotionEvent.PointerCoords pointercoords, android.view.MotionEvent.PointerCoords pointercoords1)
    {
        return (float)Math.atan2(pointercoords.y - pointercoords1.y, pointercoords1.x - pointercoords.x);
    }

    private void b()
    {
        if (c)
        {
            a.e();
        }
        e.clear();
        d.clear();
        b = false;
        c = false;
    }

    public final void a()
    {
        if (c && a != null)
        {
            a.e();
        }
    }

    public final void a(b b1)
    {
        a = b1;
    }

    public final boolean onTouch(View view, MotionEvent motionevent)
    {
        int i;
        i = motionevent.getPointerId(motionevent.getActionIndex());
        if (motionevent.getAction() != 0 && !b)
        {
            return false;
        }
        motionevent.getActionMasked();
        JVM INSTR tableswitch 0 6: default 72
    //                   0 103
    //                   1 649
    //                   2 150
    //                   3 710
    //                   4 72
    //                   5 74
    //                   6 116;
           goto _L1 _L2 _L3 _L4 _L5 _L1 _L6 _L7
_L1:
        return true;
_L6:
        if (!c)
        {
            a.d();
            c = true;
        }
        a(motionevent);
        continue; /* Loop/switch isn't completed */
_L2:
        b = true;
        a(motionevent);
        continue; /* Loop/switch isn't completed */
_L7:
        d.remove(d.indexOf(Integer.valueOf(i)));
        e.remove(i);
        continue; /* Loop/switch isn't completed */
_L4:
        if (d.size() == 1)
        {
            motionevent.getPointerCoords(0, f);
            android.view.MotionEvent.PointerCoords pointercoords3 = (android.view.MotionEvent.PointerCoords)e.get(((Integer)d.get(0)).intValue());
            if (c || a(f, pointercoords3) > 10F)
            {
                if (!c)
                {
                    c = true;
                    a.d();
                }
                a.b(f.x, f.y, f.x - pointercoords3.x, f.y - pointercoords3.y);
            }
        } else
        {
            int j = motionevent.findPointerIndex(((Integer)d.get(0)).intValue());
            int k = motionevent.findPointerIndex(((Integer)d.get(1)).intValue());
            android.view.MotionEvent.PointerCoords pointercoords1 = (android.view.MotionEvent.PointerCoords)e.get(((Integer)d.get(0)).intValue());
            android.view.MotionEvent.PointerCoords pointercoords2 = (android.view.MotionEvent.PointerCoords)e.get(((Integer)d.get(1)).intValue());
            float f1;
            float f2;
            float f3;
            float f4;
            if (j != -1)
            {
                motionevent.getPointerCoords(j, f);
            } else
            {
                f.x = pointercoords1.x;
                f.y = pointercoords1.y;
            }
            if (k != -1)
            {
                motionevent.getPointerCoords(k, g);
            } else
            {
                g.x = pointercoords2.x;
                g.y = pointercoords2.y;
            }
            f1 = ((f.x + g.x) - (pointercoords1.x + pointercoords2.x)) / 2.0F;
            f2 = ((f.y + g.y) - (pointercoords1.y + pointercoords2.y)) / 2.0F;
            f3 = a(f, g) / a(pointercoords1, pointercoords2);
            f4 = b(f, g) - b(pointercoords1, pointercoords2);
            a.a(f1, f2, f3, f4);
        }
        if (c)
        {
            int l = 0;
            while (l < motionevent.getPointerCount()) 
            {
                motionevent.getPointerCoords(l, (android.view.MotionEvent.PointerCoords)e.get(motionevent.getPointerId(l)));
                l++;
            }
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (!c)
        {
            android.view.MotionEvent.PointerCoords pointercoords = (android.view.MotionEvent.PointerCoords)e.get(((Integer)d.get(0)).intValue());
            a.a(pointercoords.x, pointercoords.y);
        }
        b();
        continue; /* Loop/switch isn't completed */
_L5:
        b();
        if (true) goto _L1; else goto _L8
_L8:
    }
}
