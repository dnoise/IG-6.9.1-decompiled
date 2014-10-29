// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.fragment;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.login.fragment:
//            an

final class bl
    implements android.content.DialogInterface.OnClickListener
{

    final String a;
    final an b;

    bl(an an1, String s)
    {
        b = an1;
        a = s;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
        an.b(b, a);
    }
}
