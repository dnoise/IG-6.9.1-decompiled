// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.app.Activity;
import android.content.Intent;
import com.instagram.android.nux.SignedOutFragmentActivity;

public final class a
{

    public static void a(Activity activity)
    {
        Intent intent = new Intent(activity, com/instagram/android/nux/SignedOutFragmentActivity);
        intent.setFlags(0x4000000);
        activity.startActivity(intent);
        activity.finish();
    }
}
