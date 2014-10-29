// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.f;

import ch.boye.httpclientandroidlib.HttpHost;
import com.instagram.common.y.e;

final class c
{

    static HttpHost a()
    {
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            String s = System.getProperty("http.proxyHost");
            String s1 = System.getProperty("http.proxyPort");
            int i;
            if (s1 == null)
            {
                s1 = "-1";
            }
            i = Integer.parseInt(s1);
            if (!e.c(s) && i != -1)
            {
                return new HttpHost(s, i);
            }
        }
        return null;
    }
}
