// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.util.DisplayMetrics;
import android.view.View;
import com.facebook.as;
import com.instagram.common.y.f;
import com.instagram.creation.base.ui.i;

// Referenced classes of package com.instagram.creation.photo.crop:
//            r

final class q
{

    View a;
    boolean b;
    boolean c;
    Rect d;
    RectF e;
    Matrix f;
    private int g;
    private int h;
    private float i;
    private float j;
    private int k;
    private RectF l;
    private boolean m;
    private float n;
    private boolean o;
    private ShapeDrawable p;
    private i q;
    private final Paint r = new Paint();
    private final Paint s = new Paint();
    private final Paint t = new Paint();

    public q(View view)
    {
        k = r.a;
        m = false;
        o = false;
        a = view;
    }

    private void b(float f1, float f2)
    {
        Rect rect = new Rect(d);
        e.offset(f1, f2);
        e.offset(Math.max(0.0F, l.left - e.left), Math.max(0.0F, l.top - e.top));
        e.offset(Math.min(0.0F, l.right - e.right), Math.min(0.0F, l.bottom - e.bottom));
        d = g();
        rect.union(d);
        rect.inset(-10, -10);
        a.invalidate(rect);
    }

    private static boolean b(Canvas canvas)
    {
        return android.os.Build.VERSION.SDK_INT >= 11 && canvas.isHardwareAccelerated();
    }

    private void c(float f1, float f2)
    {
        RectF rectf;
        float f3;
        float f4;
        if (m)
        {
            if (f1 != 0.0F)
            {
                f2 = f1 / n;
            } else
            if (f2 != 0.0F)
            {
                float _tmp = n;
            }
        }
        rectf = new RectF(e);
        if (f2 < 0.0F && rectf.width() + 2.0F * f2 > l.width())
        {
            f4 = (l.width() - rectf.width()) / 2.0F;
            float f5;
            if (m)
            {
                f3 = f4 / n;
            } else
            {
                f3 = f2;
            }
        } else
        {
            f3 = f2;
            f4 = f2;
        }
        if (f3 > 0.0F && rectf.height() + 2.0F * f3 > l.height())
        {
            f3 = (l.height() - rectf.height()) / 2.0F;
            if (m)
            {
                f4 = f3 * n;
            }
        }
        if ((f4 < 0.0F || f3 < 0.0F) && (rectf.width() - 2.0F * f4 < (float)g || rectf.height() - 2.0F * f3 < (float)g))
        {
            f4 = ((float)g - rectf.width()) / 2.0F;
            f3 = ((float)g - rectf.height()) / 2.0F;
            rectf.inset(-f4, -f3);
        }
        rectf.inset(-f4, -f3);
        if (rectf.width() < 25F)
        {
            rectf.inset(-(25F - rectf.width()) / 2.0F, 0.0F);
        }
        if (m)
        {
            f5 = 25F / n;
        } else
        {
            f5 = 25F;
        }
        if (rectf.height() < f5)
        {
            rectf.inset(0.0F, -(f5 - rectf.height()) / 2.0F);
        }
        if (rectf.left < l.left)
        {
            rectf.offset(l.left - rectf.left, 0.0F);
        } else
        if (rectf.right > l.right)
        {
            rectf.offset(-(rectf.right - l.right), 0.0F);
        }
        if (rectf.top < l.top)
        {
            rectf.offset(0.0F, l.top - rectf.top);
        } else
        if (rectf.bottom > l.bottom)
        {
            rectf.offset(0.0F, -(rectf.bottom - l.bottom));
        }
        if (rectf.width() >= (float)g && rectf.height() >= (float)g && rectf.width() <= l.width() && rectf.height() <= l.height())
        {
            e.set(rectf);
            d = g();
        }
        a.invalidate();
    }

    private void e()
    {
        Resources resources = a.getResources();
        p = new ShapeDrawable();
        p.getPaint().setColor(resources.getColor(as.white));
        p.setShape(new OvalShape());
        int i1 = (int)com.instagram.common.y.f.a(resources.getDisplayMetrics(), 20);
        p.setIntrinsicHeight(i1);
        p.setIntrinsicWidth(i1);
    }

    private boolean f()
    {
        return b;
    }

    private Rect g()
    {
        RectF rectf = new RectF(e.left, e.top, e.right, e.bottom);
        f.mapRect(rectf);
        int i1 = (int)(t.getStrokeWidth() / 2.0F);
        return new Rect(Math.max(Math.round(rectf.left), i1), Math.max(Math.round(rectf.top), i1), Math.min(Math.round(rectf.right), a.getWidth() - i1), Math.min(Math.round(rectf.bottom), a.getHeight() - i1));
    }

    public final int a(float f1, float f2)
    {
        byte byte0;
        Rect rect;
        float f3;
        float f4;
        float f5;
        int i2;
        int j2;
        byte0 = 1;
        rect = g();
        f3 = com.instagram.common.y.f.a(a.getResources().getDisplayMetrics(), 20);
        if (!o)
        {
            break MISSING_BLOCK_LABEL_146;
        }
        f4 = f1 - (float)rect.centerX();
        f5 = f2 - (float)rect.centerY();
        i2 = (int)Math.sqrt(f4 * f4 + f5 * f5);
        j2 = d.width() / 2;
        if ((float)Math.abs(i2 - j2) > f3) goto _L2; else goto _L1
_L1:
        if (Math.abs(f5) <= Math.abs(f4)) goto _L4; else goto _L3
_L3:
        if (f5 >= 0.0F) goto _L6; else goto _L5
_L5:
        byte0 = 8;
_L8:
        return byte0;
_L6:
        return 16;
_L4:
        return f4 >= 0.0F ? 4 : 2;
_L2:
        if (i2 >= j2) goto _L8; else goto _L7
_L7:
        return 32;
        byte byte1;
        int i1;
        byte byte2;
        int j1;
        int k1;
        if (f2 >= (float)rect.top - f3 && f2 < f3 + (float)rect.bottom)
        {
            byte1 = byte0;
        } else
        {
            byte1 = 0;
        }
        i1 = f1 != (float)rect.left - f3;
        byte2 = 0;
        if (i1 >= 0)
        {
            int l1 = f1 != f3 + (float)rect.right;
            byte2 = 0;
            if (l1 < 0)
            {
                byte2 = byte0;
            }
        }
        if (Math.abs((float)rect.left - f1) < f3 && byte1 != 0)
        {
            j1 = 3;
        } else
        {
            j1 = byte0;
        }
        if (Math.abs((float)rect.right - f1) < f3 && byte1 != 0)
        {
            j1 |= 4;
        }
        if (Math.abs((float)rect.top - f2) < f3 && byte2 != 0)
        {
            j1 |= 8;
        }
        if (Math.abs((float)rect.bottom - f2) < f3 && byte2 != 0)
        {
            k1 = j1 | 0x10;
        } else
        {
            k1 = j1;
        }
        if (k1 == byte0 && rect.contains((int)f1, (int)f2))
        {
            return 32;
        } else
        {
            return k1;
        }
    }

    public final void a()
    {
        b = true;
    }

    public final void a(int i1)
    {
        if (i1 != k)
        {
            k = i1;
            a.invalidate();
        }
    }

    final void a(int i1, float f1, float f2)
    {
        Rect rect = g();
        if (i1 == 1)
        {
            return;
        }
        if (i1 == 32)
        {
            float f6 = f1 * (e.width() / (float)rect.width());
            float f7 = f2 * (e.height() / (float)rect.height());
            if (h != 0)
            {
                f6 = f1 * j - f2 * i;
                f7 = f1 * i + f2 * j;
            }
            b(f6, f7);
            return;
        }
        if ((i1 & 6) == 0)
        {
            f1 = 0.0F;
        }
        if ((i1 & 0x18) == 0)
        {
            f2 = 0.0F;
        }
        float f3 = f1 * (e.width() / (float)rect.width());
        float f4 = f2 * (e.height() / (float)rect.height());
        int j1;
        float f5;
        int k1;
        if ((i1 & 2) != 0)
        {
            j1 = -1;
        } else
        {
            j1 = 1;
        }
        f5 = f3 * (float)j1;
        if ((i1 & 8) != 0)
        {
            k1 = -1;
        } else
        {
            k1 = 1;
        }
        c(f5, f4 * (float)k1);
    }

    protected final void a(Canvas canvas)
    {
        if (!c)
        {
            canvas.save();
            Path path = new Path();
            if (!f())
            {
                t.setColor(0xffef04d6);
                canvas.drawRect(d, t);
                return;
            }
            Rect rect = new Rect();
            a.getDrawingRect(rect);
            t.setColor(a.getResources().getColor(as.white));
            Paint paint;
            if (o)
            {
                float f1 = d.width();
                float f2 = d.height();
                path.addCircle((float)d.left + f1 / 2.0F, (float)d.top + f2 / 2.0F, f1 / 2.0F, android.graphics.Path.Direction.CW);
            } else
            {
                path.addRect(new RectF(d), android.graphics.Path.Direction.CW);
                q.a(d);
                q.a(canvas);
            }
            if (!b(canvas))
            {
                canvas.clipPath(path, android.graphics.Region.Op.DIFFERENCE);
            }
            if (f())
            {
                paint = r;
            } else
            {
                paint = s;
            }
            canvas.drawRect(rect, paint);
            canvas.restore();
            canvas.drawPath(path, t);
            if (k != r.b)
            {
                if (o)
                {
                    int k1 = p.getIntrinsicWidth();
                    int l1 = p.getIntrinsicHeight();
                    int i2 = (int)Math.round(Math.cos(0.78539816339744828D) * ((double)d.width() / 2D));
                    int j2 = (i2 + (d.left + d.width() / 2)) - k1 / 2;
                    int k2 = (d.top + d.height() / 2) - i2 - l1 / 2;
                    p.setBounds(j2, k2, j2 + p.getIntrinsicWidth(), k2 + p.getIntrinsicHeight());
                    p.draw(canvas);
                    return;
                } else
                {
                    int i1 = p.getIntrinsicWidth() / 2;
                    int j1 = p.getIntrinsicHeight() / 2;
                    p.setBounds(d.left - i1, d.top - j1, i1 + d.left, j1 + d.top);
                    p.draw(canvas);
                    p.setBounds(d.right - i1, d.top - j1, i1 + d.right, j1 + d.top);
                    p.draw(canvas);
                    p.setBounds(d.left - i1, d.bottom - j1, i1 + d.left, j1 + d.bottom);
                    p.draw(canvas);
                    p.setBounds(d.right - i1, d.bottom - j1, i1 + d.right, j1 + d.bottom);
                    p.draw(canvas);
                    return;
                }
            }
        }
    }

    public final void a(Matrix matrix, Rect rect, RectF rectf, float f1, int i1)
    {
        f = new Matrix(matrix);
        e = rectf;
        l = new RectF(rect);
        m = true;
        h = i1;
        i = (float)Math.sin(Math.toRadians(-h));
        j = (float)Math.cos(Math.toRadians(-h));
        n = e.width() / e.height();
        float f2;
        if (l.width() < l.height())
        {
            g = (int)(f1 * (float)(int)l.width());
        } else
        {
            g = (int)(f1 * (float)(int)l.height());
        }
        d = g();
        if ((double)a.getResources().getDisplayMetrics().density >= 1.5D)
        {
            f2 = 2.0F;
        } else
        {
            f2 = 1.0F;
        }
        q = new i(3, f2);
        q.a(d);
        r.setARGB(125, 50, 50, 50);
        s.setARGB(125, 50, 50, 50);
        t.setStrokeWidth(com.instagram.common.y.f.a(a.getResources().getDisplayMetrics(), 2));
        t.setStyle(android.graphics.Paint.Style.STROKE);
        t.setAntiAlias(true);
        k = r.a;
        e();
    }

    public final void b()
    {
        o = true;
    }

    public final Rect c()
    {
        return new Rect((int)e.left, (int)e.top, (int)e.right, (int)e.bottom);
    }

    public final void d()
    {
        d = g();
    }
}
