// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.content.DialogInterface;

// Referenced classes of package com.facebook.widget:
//            h

final class j
    implements android.content.DialogInterface.OnCancelListener
{

    final h a;

    j(h h1)
    {
        a = h1;
        super();
    }

    public final void onCancel(DialogInterface dialoginterface)
    {
        h.a(a);
        a.dismiss();
    }
}
