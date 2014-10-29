// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.content.DialogInterface;
import android.support.v4.app.k;
import com.instagram.b.c.a;

// Referenced classes of package com.instagram.creation.video.f:
//            a

final class g
    implements android.content.DialogInterface.OnClickListener
{

    final com.instagram.creation.video.f.a a;

    g(com.instagram.creation.video.f.a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
        com.instagram.creation.video.f.a.aa();
        com.instagram.b.c.a.a().a(a.l(), "back");
        a.l().finish();
    }
}
