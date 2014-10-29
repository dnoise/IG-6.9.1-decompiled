// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.bugreport.rageshake;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.support.v4.app.k;
import com.facebook.az;
import com.instagram.common.w.f;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.bugreport.rageshake:
//            b, f

public final class a extends f
{

    private b b;
    private com.instagram.bugreport.rageshake.f c;
    private com.instagram.o.b.a d;

    public a(Context context)
    {
        super(context);
    }

    static com.instagram.bugreport.rageshake.f a(a a1, com.instagram.bugreport.rageshake.f f1)
    {
        a1.c = f1;
        return f1;
    }

    static com.instagram.o.b.a a(a a1, com.instagram.o.b.a a2)
    {
        a1.d = a2;
        return a2;
    }

    static CharSequence[] a(a a1)
    {
        return a1.d();
    }

    static k b(a a1)
    {
        return a1.a;
    }

    static k c(a a1)
    {
        return a1.a;
    }

    static k d(a a1)
    {
        return a1.a;
    }

    private CharSequence[] d()
    {
        CharSequence acharsequence[] = new CharSequence[2];
        acharsequence[0] = a.getString(az.rageshake_bug_report_option);
        acharsequence[1] = a.getString(az.rageshake_update_option);
        return acharsequence;
    }

    static com.instagram.bugreport.rageshake.f e(a a1)
    {
        return a1.c;
    }

    static k f(a a1)
    {
        return a1.a;
    }

    static k g(a a1)
    {
        return a1.a;
    }

    static com.instagram.o.b.a h(a a1)
    {
        return a1.d;
    }

    protected final void a()
    {
        b = new b(a);
        b.a(az.rageshake_title);
        b.a(d(), new com.instagram.bugreport.rageshake.b(this, (byte)0));
        b.a(true);
        b.a(b());
        b.c().show();
    }

    public final void a(Activity activity)
    {
        if (c != null)
        {
            c.a();
            c = null;
        }
        if (b != null)
        {
            b.a();
            b = null;
        }
        super.a(activity);
    }
}
