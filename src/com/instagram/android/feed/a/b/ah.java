// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.Toast;
import com.facebook.az;
import com.instagram.user.c.a;

final class ah
    implements android.view.View.OnClickListener
{

    final a a;
    final Context b;

    ah(a a1, Context context)
    {
        a = a1;
        b = context;
        super();
    }

    public final void onClick(View view)
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(a.k()));
        try
        {
            b.startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            Toast.makeText(b, az.web_error, 0).show();
        }
    }
}
