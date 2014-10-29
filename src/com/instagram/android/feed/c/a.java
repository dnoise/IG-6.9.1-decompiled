// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.feed.c;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.support.v4.app.an;
import com.facebook.az;
import com.instagram.ui.dialog.b;

// Referenced classes of package com.instagram.android.feed.c:
//            b

public final class a
{

    private final Context a;
    private final an b;

    public a(Context context, an an)
    {
        a = context;
        b = an;
    }

    static Context a(a a1)
    {
        return a1.a;
    }

    public static String a(com.instagram.user.c.a a1, Resources resources)
    {
        if (a1.v())
        {
            return resources.getString(az.menu_label_unblock_user);
        } else
        {
            return resources.getString(az.menu_label_block_user);
        }
    }

    public static boolean a(CharSequence charsequence, Resources resources)
    {
        return charsequence.equals(resources.getString(az.menu_label_block_user)) || charsequence.equals(resources.getString(az.menu_label_unblock_user));
    }

    static an b(a a1)
    {
        return a1.b;
    }

    public final void a(com.instagram.user.c.a a1)
    {
        com.instagram.android.feed.c.b b1 = new com.instagram.android.feed.c.b(this, a1);
        (new b(a)).b(a(a1, a.getResources())).b(az.yes_im_sure, b1).c(az.cancel, null).c().show();
    }
}
