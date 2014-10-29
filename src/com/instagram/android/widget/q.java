// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.content.res.Resources;
import android.widget.TextView;
import com.instagram.common.y.f;

public final class q
{

    public static void a(TextView textview, String s)
    {
        int i;
        if (s.length() == 1)
        {
            i = 0;
        } else
        {
            i = (int)f.a(textview.getResources().getDisplayMetrics(), 41);
        }
        textview.setMinimumWidth(i);
        textview.setText(s);
    }
}
