// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.people.c;

import android.app.Dialog;
import android.content.DialogInterface;
import com.instagram.android.c.a.r;

// Referenced classes of package com.instagram.android.people.c:
//            f, a, m

final class h
    implements android.content.DialogInterface.OnClickListener
{

    final f a;

    h(f f1)
    {
        a = f1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        a.a.dismiss();
        dialoginterface.dismiss();
        (new r(com.instagram.android.people.c.a.f(a.c), com.instagram.android.people.c.a.g(a.c), a.b, new m(a.c, (byte)0))).g();
    }
}
