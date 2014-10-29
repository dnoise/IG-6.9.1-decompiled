// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.video.f;

import android.support.v4.app.k;
import android.view.View;

// Referenced classes of package com.instagram.creation.video.f:
//            a

final class s
    implements android.view.View.OnClickListener
{

    final a a;

    s(a a1)
    {
        a = a1;
        super();
    }

    public final void onClick(View view)
    {
        a.l().onBackPressed();
    }
}
