// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;

// Referenced classes of package com.instagram.android.widget:
//            k

final class l
    implements android.content.DialogInterface.OnClickListener
{

    final k a;

    l(k k1)
    {
        a = k1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        switch (i)
        {
        default:
            return;

        case -1: 
            Object aobj[] = new Object[4];
            aobj[0] = k.a(a);
            aobj[1] = k.b(a);
            aobj[2] = k.c(a);
            aobj[3] = Uri.encode(k.d(a).toString());
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(String.format("geo:0,0?z=%s&q=%s,%s (%s)", aobj)));
            k.e(a).startActivity(intent);
            // fall through

        case -2: 
            dialoginterface.dismiss();
            return;
        }
    }
}
