// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o.g;

import android.content.Context;
import android.content.res.Resources;
import com.facebook.ax;
import com.facebook.az;
import java.util.Date;

// Referenced classes of package com.instagram.o.g:
//            c, b

public final class a
{

    public static double a(double d)
    {
        return (double)a() - d;
    }

    private static long a()
    {
        return (new Date()).getTime() / 1000L;
    }

    public static String a(Context context, double d)
    {
        return a(context, d, true);
    }

    private static String a(Context context, double d, boolean flag)
    {
        double d1 = 1.0D;
        double d2 = (double)a() - d;
        if (d2 < -60D)
        {
            return "";
        }
        double d3;
        double d4;
        double d5;
        double d6;
        if (d2 >= d1)
        {
            d1 = d2;
        }
        d3 = Math.floor(d1);
        if (d3 < 60D)
        {
            return a(context, c.a, (int)Math.round(d3), flag);
        }
        d4 = d3 / 60D;
        if (d4 < 60D)
        {
            return a(context, c.b, (int)Math.round(d4), flag);
        }
        d5 = d4 / 60D;
        if (d5 < 24D)
        {
            return a(context, c.c, (int)Math.round(d5), flag);
        }
        d6 = d5 / 24D;
        if (d6 < 7D)
        {
            return a(context, c.d, (int)Math.round(d6), flag);
        } else
        {
            double d7 = d6 / 7D;
            return a(context, c.e, (int)Math.round(d7), flag);
        }
    }

    private static String a(Context context, int i, int j)
    {
        int k;
        switch (b.a[i - 1])
        {
        default:
            int k1 = az.weeks_abbreviation_with_placeholder;
            Object aobj4[] = new Object[1];
            aobj4[0] = Integer.valueOf(j);
            return context.getString(k1, aobj4);

        case 1: // '\001'
            int j1 = az.seconds_abbreviation_with_placeholder;
            Object aobj3[] = new Object[1];
            aobj3[0] = Integer.valueOf(j);
            return context.getString(j1, aobj3);

        case 2: // '\002'
            int i1 = az.minutes_abbreviation_with_placeholder;
            Object aobj2[] = new Object[1];
            aobj2[0] = Integer.valueOf(j);
            return context.getString(i1, aobj2);

        case 3: // '\003'
            int l = az.hours_abbreviation_with_placeholder;
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(j);
            return context.getString(l, aobj1);

        case 4: // '\004'
            k = az.days_abbreviation_with_placeholder;
            break;
        }
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(j);
        return context.getString(k, aobj);
    }

    private static String a(Context context, int i, int j, boolean flag)
    {
        if (flag)
        {
            return a(context, i, j);
        } else
        {
            return b(context, i, j);
        }
    }

    public static String a(Context context, long l)
    {
        return a(context, l, false);
    }

    private static String b(Context context, int i, int j)
    {
        Resources resources;
        switch (b.a[i - 1])
        {
        default:
            Resources resources4 = context.getResources();
            int k1 = ax.x_weeks_ago;
            Object aobj4[] = new Object[1];
            aobj4[0] = Integer.valueOf(j);
            return resources4.getQuantityString(k1, j, aobj4);

        case 1: // '\001'
            Resources resources3 = context.getResources();
            int j1 = ax.x_seconds_ago;
            Object aobj3[] = new Object[1];
            aobj3[0] = Integer.valueOf(j);
            return resources3.getQuantityString(j1, j, aobj3);

        case 2: // '\002'
            Resources resources2 = context.getResources();
            int i1 = ax.x_minutes_ago;
            Object aobj2[] = new Object[1];
            aobj2[0] = Integer.valueOf(j);
            return resources2.getQuantityString(i1, j, aobj2);

        case 3: // '\003'
            Resources resources1 = context.getResources();
            int l = ax.x_hours_ago;
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(j);
            return resources1.getQuantityString(l, j, aobj1);

        case 4: // '\004'
            resources = context.getResources();
            break;
        }
        int k = ax.x_days_ago;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(j);
        return resources.getQuantityString(k, j, aobj);
    }
}
