// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.b.b;

import android.content.Context;
import android.support.v4.app.k;
import android.support.v4.app.s;
import com.facebook.av;
import com.instagram.common.analytics.b;
import com.instagram.common.analytics.g;

public class a
{

    private static final Class a = com/instagram/b/b/a;

    public a()
    {
    }

    public static b a(b b1, Context context)
    {
        if (context != null)
        {
            b1.a("is_connected", com.instagram.common.y.g.a.a(context));
        }
        return b1;
    }

    public static g a(Context context)
    {
        if (context instanceof k)
        {
            android.support.v4.app.Fragment fragment = ((k)context).d().a(av.layout_container_main);
            if (fragment instanceof g)
            {
                return (g)fragment;
            }
            Class _tmp = a;
        } else
        {
            Class _tmp1 = a;
        }
        return null;
    }

}
