// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.app.Dialog;
import android.content.Context;
import android.support.v4.app.Fragment;
import com.facebook.az;
import com.instagram.android.fragment.fx;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.widget:
//            d, b

public final class a
{

    public static String a = "http://help.instagram.com/227486307449481";
    private final Context b;
    private final Fragment c;
    private String d;
    private boolean e;

    public a(Context context, Fragment fragment)
    {
        b = context;
        c = fragment;
    }

    static void a(a a1)
    {
        a1.c();
    }

    private void c()
    {
        new fx();
        fx.a(c.p(), d, e).a();
    }

    public final a a()
    {
        e = true;
        return this;
    }

    public final a a(String s)
    {
        d = s;
        return this;
    }

    public final void b()
    {
        com.instagram.l.b.a a1 = com.instagram.l.b.a.a();
        if (a1.G())
        {
            c();
            return;
        } else
        {
            (new b(b)).a(az.confirm_find_friends_title).b(az.confirm_find_friends_msg).a(az.learn_more, az.learn_more, a).b(az.allow, new d(this, a1)).c(az.cancel, new com.instagram.android.widget.b(this)).c().show();
            return;
        }
    }

}
