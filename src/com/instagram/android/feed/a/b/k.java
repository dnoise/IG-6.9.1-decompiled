// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.a.b;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.instagram.common.y.e;
import com.instagram.venue.model.Venue;

final class k
    implements android.view.View.OnClickListener
{

    final Venue a;
    final Context b;

    k(Venue venue, Context context)
    {
        a = venue;
        b = context;
        super();
    }

    public final void onClick(View view)
    {
        Intent intent = new Intent("android.intent.action.VIEW");
        Object aobj[] = new Object[1];
        aobj[0] = a.e();
        intent.setData(Uri.parse(e.a("https://foursquare.com/venue/%s", aobj)));
        b.startActivity(intent);
    }
}
