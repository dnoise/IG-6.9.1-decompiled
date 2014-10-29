// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.k.c;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.k.c:
//            a

final class g
    implements android.content.DialogInterface.OnClickListener
{

    final String a;
    final CharSequence b[];
    final a c;

    g(a a1, String s, CharSequence acharsequence[])
    {
        c = a1;
        a = s;
        b = acharsequence;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        if (a.equals(b[i]))
        {
            com.instagram.android.k.c.a.c(c);
        }
    }
}
