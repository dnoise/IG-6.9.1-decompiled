// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.widget;

import android.content.DialogInterface;
import com.instagram.common.y.c.a;
import java.util.concurrent.Executor;

// Referenced classes of package com.instagram.android.widget:
//            c, a

final class b
    implements android.content.DialogInterface.OnClickListener
{

    final com.instagram.android.widget.a a;

    b(com.instagram.android.widget.a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        com.instagram.common.y.c.a.a().execute(new c(this));
        dialoginterface.dismiss();
    }
}
