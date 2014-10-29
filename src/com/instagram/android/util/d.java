// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.util;

import android.content.res.Resources;
import com.facebook.az;
import java.text.DecimalFormat;

public final class d
{

    public static String a(Resources resources, int i)
    {
        if (i <= 0)
        {
            return "";
        }
        if (i == 1)
        {
            int k = az.posts_singular;
            Object aobj1[] = new Object[1];
            aobj1[0] = Integer.valueOf(i);
            return resources.getString(k, aobj1);
        } else
        {
            DecimalFormat decimalformat = new DecimalFormat();
            decimalformat.setGroupingUsed(true);
            decimalformat.setMaximumFractionDigits(0);
            int j = az.posts_plural;
            Object aobj[] = new Object[1];
            aobj[0] = decimalformat.format(i);
            return resources.getString(j, aobj);
        }
    }
}
