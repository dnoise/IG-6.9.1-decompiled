// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.maps.b;

import android.graphics.Point;
import android.location.Location;
import com.google.android.maps.GeoPoint;
import com.google.android.maps.Projection;

public final class h
    implements Comparable
{

    private double a;
    private double b;
    private Comparable c;

    public h(double d1, double d2)
    {
        this(d1, d2, null);
    }

    public h(double d1, double d2, Comparable comparable)
    {
        a = d1;
        b = d2;
        c = comparable;
    }

    public static double a(h h1, Projection projection)
    {
        Point point = h1.a(projection);
        Point point1 = h1.a(projection);
        double d1 = point.x - point1.x;
        double d2 = point.y - point1.y;
        return Math.sqrt(d1 * d1 + d2 * d2);
    }

    public static double a(h h1, h h2)
    {
        float af[] = new float[1];
        Location.distanceBetween(h1.c(), h1.f(), h2.c(), h2.f(), af);
        return (double)af[0];
    }

    public static h a(GeoPoint geopoint)
    {
        return new h((double)geopoint.getLatitudeE6() / 1000000D, (double)geopoint.getLongitudeE6() / 1000000D);
    }

    public final double a(h h1, Projection projection, Point point)
    {
        Point point1 = h1.a(projection);
        if (point == null)
        {
            point = a(projection);
        }
        double d1 = point1.x - point.x;
        double d2 = point1.y - point.y;
        return Math.sqrt(d1 * d1 + d2 * d2);
    }

    public final Point a(Projection projection)
    {
        return projection.toPixels(a(), null);
    }

    public final GeoPoint a()
    {
        return new GeoPoint((int)(1000000D * a), (int)(1000000D * b));
    }

    public final h a(double d1)
    {
        h h1 = b();
        h1.a = d1 * h1.a;
        h1.b = d1 * h1.b;
        return h1;
    }

    public final boolean a(h h1)
    {
        return h1 != null && h1.a == a && h1.b == b;
    }

    public final int b(h h1)
    {
        return c.compareTo(h1.c);
    }

    public final h b()
    {
        return new h(a, b, c);
    }

    public final void b(double d1)
    {
        a = d1;
    }

    public final double c()
    {
        return a;
    }

    public final void c(double d1)
    {
        b = d1;
    }

    public final int compareTo(Object obj)
    {
        return b((h)obj);
    }

    public final int d()
    {
        return (int)(1000000D * a);
    }

    public final int e()
    {
        return (int)(1000000D * b);
    }

    public final double f()
    {
        return b;
    }

    public final Comparable g()
    {
        return c;
    }
}
