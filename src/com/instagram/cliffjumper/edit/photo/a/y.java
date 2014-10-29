// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.content.DialogInterface;
import android.support.v4.app.k;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.a:
//            x, a

final class y
    implements android.content.DialogInterface.OnClickListener
{

    final x a;

    y(x x1)
    {
        a = x1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        a.a.l().finish();
    }
}
