// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.c;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;

// Referenced classes of package com.instagram.c:
//            a

final class b
    implements android.view.View.OnClickListener
{

    final Dialog a;
    final a b;

    b(a a1, Dialog dialog)
    {
        b = a1;
        a = dialog;
        super();
    }

    public final void onClick(View view)
    {
        Object aobj[] = new Object[1];
        aobj[0] = com.instagram.c.a.a(b).getPackageName();
        Uri uri = Uri.parse(String.format("market://details?id=%s", aobj));
        Intent intent = (new Intent("android.intent.action.VIEW")).setData(uri);
        com.instagram.c.a.a(b).startActivity(intent);
        com.instagram.c.a.b(b);
        com.instagram.c.a.c(b);
        a.dismiss();
    }
}
