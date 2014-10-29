// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.app;

import android.content.Context;
import com.facebook.e.a.a;
import com.instagram.common.b.b;

public class InstagramApplicationForSecondaryProcess extends b
{

    private final Class TAG = com/instagram/android/app/InstagramApplicationForSecondaryProcess;

    public InstagramApplicationForSecondaryProcess(Context context)
    {
    }

    public void onCreate()
    {
        super.onCreate();
        byte byte0;
        if (com.instagram.common.s.b.d())
        {
            byte0 = 6;
        } else
        {
            byte0 = 2;
        }
        a.a(byte0);
        Class _tmp = TAG;
    }
}
