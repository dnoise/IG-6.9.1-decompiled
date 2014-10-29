// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import com.facebook.bo;
import com.facebook.cc;
import com.facebook.ch;

// Referenced classes of package com.facebook.widget:
//            LoginButton, c

final class b
    implements cc
{

    final LoginButton a;

    private b(LoginButton loginbutton)
    {
        a = loginbutton;
        super();
    }

    b(LoginButton loginbutton, byte byte0)
    {
        this(loginbutton);
    }

    public final void a(bo bo, ch ch, Exception exception)
    {
        LoginButton.h(a);
        LoginButton.i(a);
        if (exception != null)
        {
            a.a(exception);
        }
        if (c.e(LoginButton.g(a)) != null)
        {
            c.e(LoginButton.g(a)).a(bo, ch, exception);
        }
    }
}
