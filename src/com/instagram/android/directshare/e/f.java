// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.directshare.e;

import android.support.v4.app.k;

// Referenced classes of package com.instagram.android.directshare.e:
//            b

final class f
    implements Runnable
{

    final b a;

    f(b b1)
    {
        a = b1;
        super();
    }

    public final void run()
    {
        a.l().onBackPressed();
    }
}
