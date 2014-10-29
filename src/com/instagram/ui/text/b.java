// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.ui.text;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import java.util.Locale;

final class b
{

    public static boolean a(Context context)
    {
        String s = context.getResources().getConfiguration().locale.getCountry();
        return s.equals("TR") || s.equals("CZ") || s.equals("SK") || s.equals("PL");
    }
}
