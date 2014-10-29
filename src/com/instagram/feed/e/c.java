// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.e;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import com.facebook.az;
import com.instagram.feed.f.d;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.feed.e:
//            e, d, b

public final class c
{

    private final Context a;
    private final com.instagram.feed.e.b b;
    private final d c;
    private Dialog d;
    private CharSequence e[];

    public c(Context context, com.instagram.feed.e.b b1, d d1)
    {
        e = null;
        a = context;
        b = b1;
        c = d1;
    }

    static Dialog a(c c1)
    {
        c1.d = null;
        return null;
    }

    private CharSequence[] b()
    {
        if (e == null)
        {
            CharSequence acharsequence[] = new CharSequence[1];
            acharsequence[0] = a.getResources().getString(az.megaphone_dismiss);
            e = acharsequence;
        }
        return e;
    }

    static CharSequence[] b(c c1)
    {
        return c1.b();
    }

    static Context c(c c1)
    {
        return c1.a;
    }

    static d d(c c1)
    {
        return c1.c;
    }

    static com.instagram.feed.e.b e(c c1)
    {
        return c1.b;
    }

    public final void a()
    {
        d = (new b(a)).a(b(), new e(this, (byte)0)).a(true).d().c();
        d.setOnDismissListener(new com.instagram.feed.e.d(this));
        d.show();
    }
}
