// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.o.a;

import android.app.Dialog;
import android.content.Context;
import com.facebook.az;

// Referenced classes of package com.instagram.o.a:
//            c

final class b
    implements Runnable
{

    final Context a;
    final String b;
    final String c;
    final String d;

    b(Context context, String s, String s1, String s2)
    {
        a = context;
        b = s;
        c = s1;
        d = s2;
        super();
    }

    public final void run()
    {
        com.instagram.ui.dialog.b b1 = (new com.instagram.ui.dialog.b(a)).a(b).b(az.dismiss, null);
        if (c != null)
        {
            b1.b(c);
        }
        if (d != null)
        {
            b1.c(az.learn_more, new c(this));
        }
        b1.c().show();
    }
}
