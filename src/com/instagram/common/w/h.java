// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.w;

import android.content.DialogInterface;

// Referenced classes of package com.instagram.common.w:
//            f, a

final class h
    implements android.content.DialogInterface.OnDismissListener
{

    final f a;

    h(f f1)
    {
        a = f1;
        super();
    }

    public final void onDismiss(DialogInterface dialoginterface)
    {
        f.a(a, false);
        f.b(a).b();
    }
}
