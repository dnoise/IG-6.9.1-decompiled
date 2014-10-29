// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.i;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Observable;
import java.util.Observer;

public class a extends Observable
    implements LocationListener
{

    private static final Class a = com/instagram/i/a;
    private static a b;
    private final Context c;
    private Location d;

    private a(Context context)
    {
        c = context;
    }

    private void a(LocationManager locationmanager)
    {
        String s;
        for (Iterator iterator = locationmanager.getProviders(true).iterator(); iterator.hasNext(); locationmanager.requestLocationUpdates(s, 0L, 0.0F, this))
        {
            s = (String)iterator.next();
            if (locationmanager.isProviderEnabled(s))
            {
                d(locationmanager.getLastKnownLocation(s));
            }
        }

    }

    public static a b()
    {
        com/instagram/i/a;
        JVM INSTR monitorenter ;
        a a1;
        if (b == null)
        {
            b = new a(com.instagram.common.h.a.a());
        }
        a1 = b;
        com/instagram/i/a;
        JVM INSTR monitorexit ;
        return a1;
        Exception exception;
        exception;
        throw exception;
    }

    private void b(LocationManager locationmanager)
    {
        locationmanager.removeUpdates(this);
    }

    public static boolean b(Location location)
    {
        return location != null && location.hasAccuracy() && location.getAccuracy() <= 100F && (new Date()).getTime() - location.getTime() < 0x493e0L;
    }

    private void c(Location location)
    {
        this;
        JVM INSTR monitorenter ;
        d = location;
        setChanged();
        notifyObservers(location);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void d(Location location)
    {
        boolean flag = true;
        if (location != null && d == null)
        {
            c(location);
        } else
        if (location != null)
        {
            long l = (new Date()).getTime();
            long l1 = l - location.getTime();
            long l2 = l - d.getTime();
            boolean flag1;
            boolean flag2;
            boolean flag3;
            if (l1 <= 0x493e0L)
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            if (l2 <= 0x493e0L)
            {
                flag2 = flag;
            } else
            {
                flag2 = false;
            }
            if (location.hasAccuracy() || d.hasAccuracy())
            {
                flag3 = flag;
            } else
            {
                flag3 = false;
            }
            if (flag3)
            {
                if ((!location.hasAccuracy() || d.hasAccuracy()) && (!location.hasAccuracy() && d.hasAccuracy() || location.getAccuracy() > d.getAccuracy()))
                {
                    flag = false;
                }
            } else
            {
                flag = false;
            }
            if (flag3 && flag && flag1)
            {
                c(location);
                return;
            }
            if (flag1 && !flag2)
            {
                c(location);
                return;
            }
        }
    }

    public final Location a()
    {
        this;
        JVM INSTR monitorenter ;
        Location location = d;
        this;
        JVM INSTR monitorexit ;
        return location;
        Exception exception;
        exception;
        throw exception;
    }

    public final void a(Observer observer)
    {
        addObserver(observer);
        a((LocationManager)c.getSystemService("location"));
    }

    public final boolean a(Location location)
    {
        boolean flag = true;
        this;
        JVM INSTR monitorenter ;
        boolean flag1 = location.getProvider().equalsIgnoreCase("photo");
        if (!flag1) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        long l;
        long l1;
        l = (new Date()).getTime();
        l1 = location.getTime();
        if (l - l1 > 0x493e0L)
        {
            flag = false;
        }
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public final void b(Observer observer)
    {
        deleteObserver(observer);
        b((LocationManager)c.getSystemService("location"));
    }

    public void onLocationChanged(Location location)
    {
        d(location);
    }

    public void onProviderDisabled(String s)
    {
    }

    public void onProviderEnabled(String s)
    {
    }

    public void onStatusChanged(String s, int i, Bundle bundle)
    {
    }

}
