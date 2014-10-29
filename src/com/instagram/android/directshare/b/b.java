// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.b;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import com.instagram.api.h.d;

final class b
    implements android.content.DialogInterface.OnClickListener
{

    final Context a;

    b(Context context)
    {
        a = context;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(d.a("http://help.instagram.com/426700567389543/", a))));
    }
}
