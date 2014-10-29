// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.ImageView;
import com.instagram.creation.photo.c.f;

// Referenced classes of package com.instagram.creation.photo.crop:
//            t, u, v

abstract class s extends ImageView
{

    private final Matrix a;
    private final float b[];
    private v c;
    private Runnable d;
    protected Matrix f;
    protected Matrix g;
    protected final f h;
    int i;
    int j;
    float k;
    protected Handler l;

    public s(Context context)
    {
        super(context);
        f = new Matrix();
        g = new Matrix();
        a = new Matrix();
        b = new float[9];
        h = new f(null);
        i = -1;
        j = -1;
        l = new Handler();
        d = null;
        e();
    }

    public s(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        f = new Matrix();
        g = new Matrix();
        a = new Matrix();
        b = new float[9];
        h = new f(null);
        i = -1;
        j = -1;
        l = new Handler();
        d = null;
        e();
    }

    private float a(Matrix matrix)
    {
        matrix.getValues(b);
        return b[0];
    }

    private void a()
    {
        a(new f(null), true);
    }

    private void a(Bitmap bitmap, int i1)
    {
        super.setImageBitmap(bitmap);
        Drawable drawable = getDrawable();
        if (drawable != null)
        {
            drawable.setDither(true);
        }
        Bitmap bitmap1 = h.b();
        h.a(bitmap);
        h.a(i1);
        if (bitmap1 != null && bitmap1 != bitmap && c != null)
        {
            v _tmp = c;
        }
    }

    private void a(f f1, Matrix matrix)
    {
        float f2 = getWidth();
        float f3 = getHeight();
        float f4 = f1.e();
        float f5 = f1.d();
        matrix.reset();
        float f6 = Math.min(Math.min(f2 / f4, 3F), Math.min(f3 / f5, 3F));
        matrix.postConcat(f1.c());
        matrix.postScale(f6, f6);
        matrix.postTranslate((f2 - f4 * f6) / 2.0F, (f3 - f5 * f6) / 2.0F);
    }

    private float b(Matrix matrix)
    {
        return a(matrix);
    }

    private void e()
    {
        setScaleType(android.widget.ImageView.ScaleType.MATRIX);
    }

    private Matrix f()
    {
        a.set(f);
        a.postConcat(g);
        return a;
    }

    private float g()
    {
        if (h.b() == null)
        {
            return 1.0F;
        } else
        {
            return 4F * Math.max((float)h.e() / (float)i, (float)h.d() / (float)j);
        }
    }

    private void h()
    {
        a(1.0F, (float)getWidth() / 2.0F, (float)getHeight() / 2.0F);
    }

    protected void a(float f1, float f2)
    {
        g.postTranslate(f1, f2);
    }

    protected void a(float f1, float f2, float f3)
    {
        if (f1 > k)
        {
            f1 = k;
        }
        float f4 = f1 / d();
        g.postScale(f4, f4, f2, f3);
        setImageMatrix(f());
        c();
    }

    public final void a(f f1, boolean flag)
    {
        if (getWidth() <= 0)
        {
            d = new t(this, f1, flag);
            return;
        }
        if (f1.b() != null)
        {
            a(f1, f);
            a(f1.b(), f1.a());
        } else
        {
            f.reset();
            setImageBitmap(null);
        }
        if (flag)
        {
            g.reset();
        }
        setImageMatrix(f());
        k = g();
    }

    public final void b()
    {
        a();
    }

    protected final void b(float f1, float f2)
    {
        a(f1, f2);
        setImageMatrix(f());
    }

    protected final void b(float f1, float f2, float f3)
    {
        float f4 = (f1 - d()) / 300F;
        float f5 = d();
        long l1 = SystemClock.elapsedRealtime();
        l.post(new u(this, 300F, l1, f5, f4, f2, f3));
    }

    protected final void c()
    {
        if (h.b() == null)
        {
            return;
        }
        Matrix matrix = f();
        RectF rectf = new RectF(0.0F, 0.0F, h.b().getWidth(), h.b().getHeight());
        matrix.mapRect(rectf);
        float f1 = rectf.height();
        float f2 = rectf.width();
        int i1 = getHeight();
        float f3;
        int j1;
        int k1;
        float f4;
        if (f1 < (float)i1)
        {
            f3 = ((float)i1 - f1) / 2.0F - rectf.top;
        } else
        if (rectf.top > 0.0F)
        {
            f3 = -rectf.top;
        } else
        if (rectf.bottom < (float)i1)
        {
            f3 = (float)getHeight() - rectf.bottom;
        } else
        {
            f3 = 0.0F;
        }
        j1 = getWidth();
        if (f2 >= (float)j1) goto _L2; else goto _L1
_L1:
        f4 = ((float)j1 - f2) / 2.0F - rectf.left;
_L4:
        a(f4, f3);
        setImageMatrix(f());
        return;
_L2:
        if (rectf.left > 0.0F)
        {
            f4 = -rectf.left;
        } else
        {
            k1 = rectf.right != (float)j1;
            f4 = 0.0F;
            if (k1 < 0)
            {
                f4 = (float)j1 - rectf.right;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected final float d()
    {
        return b(g);
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        if (i1 == 4 && keyevent.getRepeatCount() == 0)
        {
            keyevent.startTracking();
            return true;
        } else
        {
            return super.onKeyDown(i1, keyevent);
        }
    }

    public boolean onKeyUp(int i1, KeyEvent keyevent)
    {
        if (i1 == 4 && keyevent.isTracking() && !keyevent.isCanceled() && d() > 1.0F)
        {
            h();
            return true;
        } else
        {
            return super.onKeyUp(i1, keyevent);
        }
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        super.onLayout(flag, i1, j1, k1, l1);
        i = k1 - i1;
        j = l1 - j1;
        Runnable runnable = d;
        if (runnable != null)
        {
            d = null;
            runnable.run();
        }
        if (h.b() != null)
        {
            a(h, f);
            setImageMatrix(f());
        }
    }

    public void setImageBitmap(Bitmap bitmap)
    {
        a(bitmap, 0);
    }
}
