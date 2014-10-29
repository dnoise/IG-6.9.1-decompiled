// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.instagram.creation.photo.c.f;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.instagram.creation.photo.crop:
//            s, q, b, r

class CropImageView extends s
{

    ArrayList a;
    q b;
    float c;
    float d;
    int e;
    private b m;

    public CropImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = new ArrayList();
        b = null;
    }

    private void a(q q1, boolean flag)
    {
        Rect rect = q1.d;
        float f1 = rect.width();
        float f2 = rect.height();
        float f3 = getWidth();
        float f4 = getHeight();
        float f5 = Math.max(1.0F, Math.min(0.6F * (f3 / f1), 0.6F * (f4 / f2)) * d());
        if ((double)(Math.abs(f5 - d()) / f5) > 0.10000000000000001D)
        {
            float af[] = new float[2];
            af[0] = q1.e.centerX();
            af[1] = q1.e.centerY();
            getImageMatrix().mapPoints(af);
            if (flag)
            {
                b(f5, af[0], af[1]);
            } else
            {
                a(f5, af[0], af[1]);
            }
        }
        b(q1);
    }

    private void b(q q1)
    {
        Rect rect = q1.d;
        int i = Math.max(0, getLeft() - rect.left);
        int j = Math.min(0, getRight() - rect.right);
        int k = Math.max(0, getTop() - rect.top);
        int l = Math.min(0, getBottom() - rect.bottom);
        if (i == 0)
        {
            i = j;
        }
        if (k == 0)
        {
            k = l;
        }
        if (i != 0 || k != 0)
        {
            b(i, k);
        }
    }

    public final void a()
    {
        a.clear();
    }

    protected final void a(float f1, float f2)
    {
        super.a(f1, f2);
        for (int i = 0; i < a.size(); i++)
        {
            q q1 = (q)a.get(i);
            q1.f.postTranslate(f1, f2);
            q1.d();
        }

    }

    protected final void a(float f1, float f2, float f3)
    {
        super.a(f1, f2, f3);
        q q1;
        for (Iterator iterator = a.iterator(); iterator.hasNext(); q1.d())
        {
            q1 = (q)iterator.next();
            q1.f.set(getImageMatrix());
        }

    }

    public final void a(b b1)
    {
        m = b1;
    }

    public final void a(q q1)
    {
        a.clear();
        a.add(q1);
        invalidate();
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        for (int i = 0; i < a.size(); i++)
        {
            ((q)a.get(i)).a(canvas);
        }

    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        super.onLayout(flag, i, j, k, l);
        if (h.b() != null)
        {
            Iterator iterator = a.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                q q1 = (q)iterator.next();
                q1.f.set(getImageMatrix());
                q1.d();
                if (q1.b)
                {
                    a(q1, false);
                }
            } while (true);
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (m == null || m.a)
        {
            return false;
        }
        motionevent.getAction();
        JVM INSTR tableswitch 0 2: default 48
    //                   0 78
    //                   1 192
    //                   2 226;
           goto _L1 _L2 _L3 _L4
_L1:
        motionevent.getAction();
        JVM INSTR tableswitch 1 2: default 76
    //                   1 289
    //                   2 296;
           goto _L5 _L6 _L7
_L5:
        return true;
_L2:
        int i = 0;
_L11:
        if (i >= a.size()) goto _L1; else goto _L8
_L8:
        q q1;
        int j;
        q1 = (q)a.get(i);
        j = q1.a(motionevent.getX(), motionevent.getY());
        if (j == 1) goto _L10; else goto _L9
_L9:
        e = j;
        b = q1;
        c = motionevent.getX();
        d = motionevent.getY();
        q q2 = b;
        int k;
        if (j == 32)
        {
            k = r.b;
        } else
        {
            k = r.c;
        }
        q2.a(k);
          goto _L1
_L10:
        i++;
          goto _L11
_L3:
        if (b != null)
        {
            a(b, true);
            b.a(r.a);
        }
        b = null;
          goto _L1
_L4:
        if (b != null)
        {
            b.a(e, motionevent.getX() - c, motionevent.getY() - d);
            c = motionevent.getX();
            d = motionevent.getY();
            b(b);
        }
          goto _L1
_L6:
        c();
          goto _L5
_L7:
        if (d() == 1.0F)
        {
            c();
        }
          goto _L5
    }
}
