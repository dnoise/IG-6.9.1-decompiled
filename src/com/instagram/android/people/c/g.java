// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.c;

import android.app.Dialog;
import android.content.DialogInterface;

// Referenced classes of package com.instagram.android.people.c:
//            f

final class g
    implements android.content.DialogInterface.OnClickListener
{

    final f a;

    g(f f1)
    {
        a = f1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
        a.a.show();
    }
}
