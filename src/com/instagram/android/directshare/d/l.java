// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.d;

import android.content.DialogInterface;
import com.instagram.f.a.a.a.a;
import com.instagram.feed.d.b;

// Referenced classes of package com.instagram.android.directshare.d:
//            c, aa

final class l
    implements android.content.DialogInterface.OnClickListener
{

    final b a;
    final c b;

    l(c c1, b b1)
    {
        b = c1;
        a = b1;
        super();
    }

    public final void onClick(DialogInterface dialoginterface, int i)
    {
        com.instagram.f.a.a.a.a.a(b.n(), b.z(), a, new aa(b, (byte)0));
    }
}
