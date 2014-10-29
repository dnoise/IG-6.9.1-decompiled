// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.content.DialogInterface;
import android.support.v4.app.k;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.a:
//            a

final class p
    implements android.content.DialogInterface.OnClickListener
{

    final a a;

    p(a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        com.instagram.cliffjumper.edit.photo.a.a.d(a);
        a.l().onBackPressed();
    }
}
