// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.e;

import android.content.Context;
import android.content.DialogInterface;
import com.facebook.az;

// Referenced classes of package com.instagram.feed.e:
//            c, b

final class e
    implements android.content.DialogInterface.OnClickListener
{

    final c a;

    private e(c c1)
    {
        a = c1;
        super();
    }

    e(c c1, byte byte0)
    {
        this(c1);
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
        CharSequence charsequence = c.b(a)[i];
        if (c.c(a).getString(az.megaphone_dismiss).equals(charsequence))
        {
            c.e(a).b(c.d(a));
            return;
        } else
        {
            throw new UnsupportedOperationException("Menu item click not handled");
        }
    }
}
