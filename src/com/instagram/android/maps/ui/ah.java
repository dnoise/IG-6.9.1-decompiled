// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.NinePatchDrawable;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.MotionEvent;
import com.facebook.as;
import com.facebook.at;
import com.facebook.au;
import com.google.android.maps.MapView;
import com.google.android.maps.Overlay;
import com.google.android.maps.Projection;
import com.instagram.android.maps.b.f;
import com.instagram.android.maps.b.h;
import com.instagram.android.maps.e.a;
import com.instagram.android.maps.ui.a.c;
import com.instagram.common.ui.widget.imageview.ConstrainedImageView;
import com.instagram.common.ui.widget.imageview.IgImageView;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.instagram.android.maps.ui:
//            ak, ai, i, aj, 
//            IgAnimatingMapItem

public final class ah extends Overlay
{

    public static boolean f = false;
    private static Bitmap n = null;
    private static Bitmap o = null;
    private static Bitmap p = null;
    public long a;
    double b;
    long c;
    public h d;
    GestureDetector e;
    private f g;
    private Context h;
    private c i;
    private com.instagram.android.maps.ui.a.a j;
    private Bitmap k;
    private i l;
    private IgImageView m;
    private NinePatchDrawable q;
    private Point r;
    private boolean s;
    private boolean t;
    private int u;

    public ah(f f1, i i1, Context context)
    {
        a = 0L;
        b = 400D;
        c = 0L;
        d = null;
        q = null;
        e = new GestureDetector(new ak(this, (byte)0));
        s = false;
        t = false;
        h = context;
        l = i1;
        m = new ConstrainedImageView(h);
        m.setBackgroundDrawable(h.getResources().getDrawable(au.map_photo_overlay));
        m.setOnLoadListener(new ai(this));
        a(f1);
        u = j();
    }

    static Bitmap a(ah ah1, Bitmap bitmap)
    {
        ah1.k = bitmap;
        return bitmap;
    }

    private Rect a(Point point)
    {
        return new Rect(point.x - f() / 2, point.y - f() / 2, point.x + f() / 2, point.y + f() / 2);
    }

    private Rect a(Rect rect)
    {
        int i1 = k();
        return new Rect(rect.left - i1, rect.top - i1, i1 + rect.right, i1 + rect.bottom);
    }

    static i a(ah ah1)
    {
        return ah1.l;
    }

    static boolean b(ah ah1)
    {
        return ah1.l();
    }

    static c c(ah ah1)
    {
        return ah1.i;
    }

    static f d(ah ah1)
    {
        return ah1.g;
    }

    static com.instagram.android.maps.ui.a.a e(ah ah1)
    {
        return ah1.j;
    }

    public static void h()
    {
        com/instagram/android/maps/ui/ah;
        JVM INSTR monitorenter ;
        f = false;
        com/instagram/android/maps/ui/ah;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private int i()
    {
        if (com.instagram.android.maps.e.a.a().b())
        {
            return u;
        } else
        {
            return g.c().size();
        }
    }

    private int j()
    {
        if (com.instagram.android.maps.e.a.a().b())
        {
            return com.instagram.android.maps.e.a.a().d(g.g()).size();
        } else
        {
            return 0;
        }
    }

    private int k()
    {
        return h.getResources().getDimensionPixelSize(at.maps_pile_rect_size);
    }

    private boolean l()
    {
        boolean flag = true;
        this;
        JVM INSTR monitorenter ;
        boolean flag1 = f;
        if (!flag1) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        f = true;
        l.getHandler().postDelayed(new aj(this), 200L);
        flag = false;
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public final f a()
    {
        return g;
    }

    public final void a(f f1)
    {
        g = f1;
        com.instagram.android.maps.b.a a1 = (com.instagram.android.maps.b.a)f1.f().g();
        m.setUrl(a1.a());
    }

    public final void a(com.instagram.android.maps.ui.a.a a1)
    {
        j = a1;
    }

    public final void a(c c1)
    {
        i = c1;
    }

    public final void b()
    {
        s = true;
        l.invalidate();
    }

    public final void c()
    {
        s = false;
        l.invalidate();
    }

    public final void d()
    {
        u = j();
        q = null;
    }

    public final void draw(Canvas canvas, MapView mapview, boolean flag)
    {
        if (s)
        {
            super.draw(canvas, mapview, flag);
            return;
        }
        if (flag)
        {
            Projection projection = mapview.getProjection();
            r = new Point();
            projection.toPixels(g.f().a(), r);
            Point point = null;
            double d1 = 0.0D;
            int i1;
            String s1;
            Paint paint;
            int j1;
            int k1;
            int i2;
            int j2;
            Rect rect;
            Rect rect1;
            Paint paint1;
            int k2;
            Rect rect2;
            if (c == 0L)
            {
                l.b();
                c = (new Date()).getTime();
            } else
            {
                long l1 = (new Date()).getTime() - c;
                if ((double)l1 < b)
                {
                    d1 = (double)l1 / b;
                    h h1 = d;
                    point = null;
                    if (h1 != null)
                    {
                        Point point1 = projection.toPixels(d.a(), null);
                        point = new Point((int)((double)(point1.x - r.x) * (1.0D - d1)), (int)((double)(point1.y - r.y) * (1.0D - d1)));
                    }
                } else
                {
                    d1 = 1.0D;
                    boolean flag1 = t;
                    point = null;
                    if (!flag1)
                    {
                        l.c();
                        t = true;
                        point = null;
                    }
                }
            }
            i1 = h.getResources().getDimensionPixelSize(at.maps_font_size);
            s1 = String.valueOf(i());
            paint = new Paint();
            paint.setTextSize(i1);
            paint.setTypeface(Typeface.DEFAULT_BOLD);
            paint.setAntiAlias(true);
            if (com.instagram.android.maps.e.a.a().b() && i() == 0)
            {
                paint.setColor(h.getResources().getColor(as.photo_map_disabled_text));
            } else
            {
                paint.setColor(h.getResources().getColor(as.white));
            }
            j1 = (int)paint.measureText(s1);
            k1 = h.getResources().getDimensionPixelSize(at.maps_bubble_padding_x);
            i2 = h.getResources().getDimensionPixelSize(at.maps_bubble_padding_y);
            j2 = i1 * 2;
            rect = a(r);
            rect1 = new Rect((r.x + f() / 2) - (j1 + k1) / 2, r.y - f() / 2 - j2 / 2, r.x + f() / 2 + (k1 + j1) / 2, i2 + ((r.y - f() / 2) + j2 / 2));
            if (point != null)
            {
                rect.left = rect.left + point.x;
                rect.right = rect.right + point.x;
                rect.top = rect.top + point.y;
                rect.bottom = rect.bottom + point.y;
                rect1.left = rect1.left + point.x;
                rect1.right = rect1.right + point.x;
                rect1.top = rect1.top + point.y;
                rect1.bottom = rect1.bottom + point.y;
            }
            paint1 = new Paint();
            paint1.setAlpha((int)(d1 * 255D));
            paint.setAlpha(paint1.getAlpha());
            if (q == null)
            {
                if (com.instagram.android.maps.e.a.a().b())
                {
                    q = (NinePatchDrawable)h.getResources().getDrawable(au.map_counter_bubble_green);
                } else
                {
                    q = (NinePatchDrawable)h.getResources().getDrawable(au.map_counter_bubble_blue);
                }
            }
            if (n == null || o == null || p == null)
            {
                n = BitmapFactory.decodeResource(h.getResources(), au.map_photo_overlay_1);
                o = BitmapFactory.decodeResource(h.getResources(), au.map_photo_overlay_2);
                p = BitmapFactory.decodeResource(h.getResources(), au.map_photo_overlay_3);
            }
            k2 = a().c().size();
            rect2 = a(rect);
            if (k2 == 1)
            {
                canvas.drawBitmap(n, null, rect2, paint1);
            } else
            if (k2 == 2)
            {
                canvas.drawBitmap(o, null, rect2, paint1);
            } else
            {
                canvas.drawBitmap(p, null, rect2, paint1);
            }
            if (k != null)
            {
                canvas.drawBitmap(k, null, rect, paint1);
            } else
            {
                Paint paint2 = new Paint();
                paint2.setColor(0xffaaaaaa);
                canvas.drawRect(rect, paint2);
            }
            if (com.instagram.android.maps.e.a.a().b() || i() > 1)
            {
                q.setBounds(rect1.left, rect1.top, rect1.right, rect1.bottom);
                q.setAlpha(paint1.getAlpha());
                q.draw(canvas);
                int l2 = h.getResources().getDimensionPixelSize(at.maps_pile_text_top_offset);
                float f1 = (float)(rect1.top + rect1.height() / 2) - (paint.descent() + paint.ascent()) / 2.0F - (float)(l2 / 2);
                canvas.drawText(s1, (rect1.left + rect1.width() / 2) - j1 / 2, f1, paint);
            }
        }
        super.draw(canvas, mapview, flag);
    }

    public final void e()
    {
        d();
        l.invalidate();
    }

    public final int f()
    {
        return h.getResources().getDimensionPixelSize(at.maps_square_height);
    }

    protected final void finalize()
    {
        super.finalize();
    }

    public final Point g()
    {
        Projection projection = l.getProjection();
        Point point = new Point();
        projection.toPixels(g.f().a(), point);
        Rect rect = a(point);
        Point point1 = new Point();
        point1.x = rect.left;
        point1.y = rect.top;
        return point1;
    }

    public final boolean onTouchEvent(MotionEvent motionevent, MapView mapview)
    {
        if (!f && com.instagram.android.maps.ui.IgAnimatingMapItem.f <= 0)
        {
            Projection projection = l.getProjection();
            Point point = new Point();
            projection.toPixels(g.f().a(), point);
            if ((new Rect(point.x - f() / 2, point.y - f() / 2, point.x + f() / 2, point.y + f() / 2)).contains((int)motionevent.getX(), (int)motionevent.getY()))
            {
                l.a();
                if (e.onTouchEvent(motionevent) || super.onTouchEvent(motionevent, mapview))
                {
                    return true;
                }
            }
        }
        return false;
    }

}
