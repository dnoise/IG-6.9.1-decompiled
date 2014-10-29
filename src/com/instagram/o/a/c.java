// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o.a;

import android.content.Context;
import android.content.DialogInterface;
import com.facebook.az;
import com.instagram.simplewebview.SimpleWebViewActivity;

// Referenced classes of package com.instagram.o.a:
//            b

final class c
    implements android.content.DialogInterface.OnClickListener
{

    final b a;

    c(b b1)
    {
        a = b1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        SimpleWebViewActivity.a(a.a, a.d, a.a.getString(az.learn_more));
    }
}
