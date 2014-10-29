// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.camera;

import android.app.Activity;
import android.content.DialogInterface;

final class i
    implements android.content.DialogInterface.OnClickListener
{

    final Activity a;

    i(Activity activity)
    {
        a = activity;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int j)
    {
        a.finish();
    }
}
