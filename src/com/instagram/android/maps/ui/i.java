// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.SystemClock;
import android.view.MotionEvent;
import com.facebook.e.a.a;
import com.google.android.maps.GeoPoint;
import com.google.android.maps.MapController;
import com.google.android.maps.MapView;
import com.google.android.maps.Overlay;
import com.instagram.android.maps.b.h;
import com.instagram.android.maps.ui.a.b;
import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;

// Referenced classes of package com.instagram.android.maps.ui:
//            ah, j, l

public final class i extends MapView
{

    private int a;
    private GeoPoint b;
    private b c;
    private l d;
    private int e;
    private Handler f;
    private Timer g;
    private Hashtable h;
    private long i;

    public i(Context context, String s)
    {
        super(context, s);
        a = -1;
        e = 0;
        i = 0L;
        d();
    }

    static Handler a(i k)
    {
        return k.f;
    }

    private void d()
    {
        f = new Handler();
    }

    private void e()
    {
        try
        {
            if (getHashtable().size() > 200)
            {
                getHashtable().clear();
            }
            return;
        }
        catch (Exception exception)
        {
            com.facebook.e.a.a.a("IgMapsView", "clear cache failed");
        }
    }

    private Hashtable getHashtable()
    {
        if (h == null)
        {
            Field field = getClass().getSuperclass().getDeclaredField("mMap");
            field.setAccessible(true);
            Object obj = field.get(this);
            Field field1 = obj.getClass().getDeclaredField("mapService");
            field1.setAccessible(true);
            Object obj1 = field1.get(obj);
            Field field2 = obj1.getClass().getDeclaredField("mapCache");
            field2.setAccessible(true);
            h = (Hashtable)field2.get(obj1);
        }
        return h;
    }

    public final void a()
    {
        i = 0L;
    }

    public final void a(double d1)
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator = getOverlays().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Overlay overlay = (Overlay)iterator.next();
            if ((overlay instanceof ah) && (double)((ah)overlay).a != d1)
            {
                iterator.remove();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_72;
        Exception exception;
        exception;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

    public final void a(Collection collection)
    {
        this;
        JVM INSTR monitorenter ;
        ah ah1;
        for (Iterator iterator = collection.iterator(); iterator.hasNext(); getOverlays().add(0, ah1))
        {
            ah1 = (ah)iterator.next();
        }

        break MISSING_BLOCK_LABEL_49;
        Exception exception;
        exception;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

    public final boolean a(h h1)
    {
        int k = getMapCenter().getLatitudeE6() - getLatitudeSpan() / 2;
        int i1 = getMapCenter().getLatitudeE6() + getLatitudeSpan() / 2;
        int j1 = getMapCenter().getLongitudeE6() - getLongitudeSpan() / 2;
        int k1 = getMapCenter().getLongitudeE6() + getLongitudeSpan() / 2;
        return h1.d() > k && h1.d() < i1 && h1.e() > j1 && h1.e() < k1;
    }

    public final void b()
    {
        e = 1 + e;
        if (g == null)
        {
            g = new Timer();
            g.schedule(new j(this), 0L, 50L);
        }
    }

    public final void c()
    {
        e = -1 + e;
        if (e == 0 && g != null)
        {
            g.cancel();
            g = null;
        }
    }

    protected final void dispatchDraw(Canvas canvas)
    {
        super.dispatchDraw(canvas);
        if (getZoomLevel() != a)
        {
            if (c != null)
            {
                c.b();
                e();
            }
            a = getZoomLevel();
        }
    }

    public final void draw(Canvas canvas)
    {
        super.draw(canvas);
    }

    protected final void onDetachedFromWindow()
    {
        if (g != null)
        {
            g.cancel();
            g = null;
        }
        if (d != null)
        {
            d.a();
        }
        super.onDetachedFromWindow();
    }

    public final boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        if (motionevent.getAction() == 0)
        {
            long l1 = SystemClock.elapsedRealtime();
            if (l1 - i <= 250L)
            {
                getController().zoomInFixing((int)motionevent.getX(), (int)motionevent.getY());
                i = 0L;
            } else
            {
                i = l1;
            }
        }
        return super.onInterceptTouchEvent(motionevent);
    }

    public final boolean onTouchEvent(MotionEvent motionevent)
    {
        if (motionevent.getAction() == 1)
        {
            GeoPoint geopoint = getMapCenter();
            if (c != null && (b == null || b.getLatitudeE6() != geopoint.getLatitudeE6() || b.getLongitudeE6() != geopoint.getLongitudeE6()))
            {
                c.a();
                e();
            }
            b = getMapCenter();
        }
        return super.onTouchEvent(motionevent);
    }

    public final void setDetachWindowListener(l l1)
    {
        d = l1;
    }

    public final void setOnPanListener(b b1)
    {
        c = b1;
    }
}
