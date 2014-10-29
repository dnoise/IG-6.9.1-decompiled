// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.g;

import android.os.Bundle;
import android.support.v4.app.s;

// Referenced classes of package com.instagram.g:
//            a

final class e
    implements Runnable
{

    final Bundle a;
    final s b;

    e(Bundle bundle, s s)
    {
        a = bundle;
        b = s;
        super();
    }

    public final void run()
    {
        a a1 = new a();
        a1.g(a);
        a1.a(b, "feedbackAlertDialog");
    }
}
