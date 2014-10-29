// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c2dm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.instagram.android.receiver.C2DMReceiver;

public class C2DMBroadcastReceiver extends BroadcastReceiver
{

    public C2DMBroadcastReceiver()
    {
    }

    public final void onReceive(Context context, Intent intent)
    {
        intent.setClassName(context, com/instagram/android/receiver/C2DMReceiver.getName());
        context.startService(intent);
        setResult(-1, null, null);
    }
}
