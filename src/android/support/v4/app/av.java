// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Notification;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package android.support.v4.app:
//            bd, bj, bi, bh, 
//            bg, bf, be, bc, 
//            aw, at, az, bt, 
//            bb, ay, au, bk

public final class av
{

    private static final bc a;

    public static Bundle a(Notification notification)
    {
        return a.a(notification);
    }

    static bc a()
    {
        return a;
    }

    static void a(at at1, ArrayList arraylist)
    {
        b(at1, arraylist);
    }

    static void a(au au, bk bk)
    {
        b(au, bk);
    }

    private static void b(at at1, ArrayList arraylist)
    {
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); at1.a((aw)iterator.next())) { }
    }

    private static void b(au au, bk bk)
    {
        if (bk != null)
        {
            if (bk instanceof az)
            {
                az az1 = (az)bk;
                bt.a(au, az1.e, az1.g, az1.f, az1.a);
            } else
            {
                if (bk instanceof bb)
                {
                    bb bb1 = (bb)bk;
                    bt.a(au, bb1.e, bb1.g, bb1.f, bb1.a);
                    return;
                }
                if (bk instanceof ay)
                {
                    ay ay1 = (ay)bk;
                    bt.a(au, ay1.e, ay1.g, ay1.f, ay1.a, ay1.b, ay1.c);
                    return;
                }
            }
        }
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 20)
        {
            a = new bd();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            a = new bj();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            a = new bi();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            a = new bh();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            a = new bg();
        } else
        if (android.os.Build.VERSION.SDK_INT >= 9)
        {
            a = new bf();
        } else
        {
            a = new be();
        }
    }
}
