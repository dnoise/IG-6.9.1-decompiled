// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.cliffjumper.edit.photo.a;

import android.support.v4.app.k;
import android.view.View;

// Referenced classes of package com.instagram.cliffjumper.edit.photo.a:
//            a

final class q
    implements android.view.View.OnClickListener
{

    final a a;

    q(a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(View view)
    {
        a.l().onBackPressed();
    }
}
