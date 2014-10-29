// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.activity;

import android.support.v4.app.f;

// Referenced classes of package com.instagram.android.activity:
//            TumblrAuthActivity

final class w
    implements Runnable
{

    final f a;
    final TumblrAuthActivity b;

    w(TumblrAuthActivity tumblrauthactivity, f f1)
    {
        b = tumblrauthactivity;
        a = f1;
        super();
    }

    public final void run()
    {
        if (a != null)
        {
            a.a();
        }
    }
}
