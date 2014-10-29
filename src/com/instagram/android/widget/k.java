// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.app.Dialog;
import android.content.Context;
import android.view.View;
import com.facebook.az;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.widget:
//            l

public final class k
    implements android.view.View.OnClickListener
{

    private final Context a;
    private final Double b;
    private final Double c;
    private final CharSequence d;
    private final String e;

    public k(Context context, Double double1, Double double2, CharSequence charsequence, String s)
    {
        a = context;
        b = double1;
        c = double2;
        d = charsequence;
        e = s;
    }

    static String a(k k1)
    {
        return k1.e;
    }

    static Double b(k k1)
    {
        return k1.b;
    }

    static Double c(k k1)
    {
        return k1.c;
    }

    static CharSequence d(k k1)
    {
        return k1.d;
    }

    static Context e(k k1)
    {
        return k1.a;
    }

    public final void onClick(View view)
    {
        b b1 = new b(a);
        l l1 = new l(this);
        b1.b(az.open_in_maps).b(az.open, l1).c(az.cancel, l1).a(false).c().show();
    }
}
