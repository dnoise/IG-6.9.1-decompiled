// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.util;

import android.content.Context;
import com.facebook.az;
import com.instagram.api.h.d;
import com.instagram.common.y.e;
import com.instagram.simplewebview.SimpleWebViewActivity;
import com.instagram.user.c.a;

public final class f
{

    public static void a(Context context, a a1)
    {
        Object aobj[] = new Object[1];
        aobj[0] = a1.g();
        String s = e.a("/users/%s/flag/", aobj);
        String s1 = context.getString(az.report_inappropriate);
        SimpleWebViewActivity.a(context, d.a(s), s1);
    }
}
