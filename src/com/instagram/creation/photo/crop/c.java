// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import android.view.View;

// Referenced classes of package com.instagram.creation.photo.crop:
//            b, m

final class c
    implements android.view.View.OnClickListener
{

    final b a;

    c(b b1)
    {
        a = b1;
        super();
    }

    public final void onClick(View view)
    {
        if (b.a(a) != null)
        {
            b.a(a).g();
        }
    }
}
