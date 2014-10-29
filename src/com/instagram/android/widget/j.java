// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import com.instagram.common.y.e;
import com.instagram.strings.StringBridge;
import com.instagram.venue.model.Venue;

public final class j
{

    private static String a()
    {
        return StringBridge.getInstagramString("ef9e3381f0a045d396ee38292ca5481d");
    }

    public static String a(float f, Venue venue, String s, int i, int k, Double double1, Double double2)
    {
        byte byte0;
        int l;
        int i1;
        StringBuilder stringbuilder;
        if ((double)f > 1.5D)
        {
            byte0 = 2;
        } else
        {
            byte0 = 1;
        }
        l = i / byte0;
        i1 = k / byte0;
        stringbuilder = new StringBuilder();
        stringbuilder.append(e.a("https://%s/maps/api/staticmap?center=%s,%s", new Object[] {
            "maps.googleapis.com", double1, double2
        }));
        if (venue != null && venue.c() != null)
        {
            stringbuilder.append("&markers=color:0xe45846%7C").append(double1).append(",").append(double2);
        }
        stringbuilder.append("&zoom=").append(s).append("&size=").append(l).append("x").append(i1).append("&scale=").append(byte0).append("&maptype=road&sensor=false&style=feature:landscape%7Celement:geometry%7Chue:0xf0eade%7csaturation:8&style=feature:road%7Celement:geometry%7Chue:0xf0d59f%7Csaturation:34%7Clightness:30&key=").append(a());
        return stringbuilder.toString();
    }
}
