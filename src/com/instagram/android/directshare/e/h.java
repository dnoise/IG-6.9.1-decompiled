// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.e;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.directshare.e:
//            b

final class h
    implements android.content.DialogInterface.OnClickListener
{

    final String a;
    final CharSequence b[];
    final b c;

    h(b b1, String s, CharSequence acharsequence[])
    {
        c = b1;
        a = s;
        b = acharsequence;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        if (a.equals(b[i]))
        {
            com.instagram.android.directshare.e.b.d(c);
        }
    }
}
