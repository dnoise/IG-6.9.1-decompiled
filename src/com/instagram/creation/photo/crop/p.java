// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.creation.photo.crop;

import android.app.ProgressDialog;

// Referenced classes of package com.instagram.creation.photo.crop:
//            o, y

final class p
    implements Runnable
{

    final o a;

    p(o o1)
    {
        a = o1;
        super();
    }

    public final void run()
    {
        o.a(a).b(a);
        if (o.b(a).getWindow() != null)
        {
            o.b(a).dismiss();
        }
    }
}
