// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.y.f;

import android.content.Context;
import com.instagram.common.b.a;
import com.instagram.common.y.d;

// Referenced classes of package com.instagram.common.y.f:
//            a

public class b
{

    private static final Class a = com/instagram/common/y/f/b;

    public b()
    {
    }

    public static void a()
    {
        d.a("LogoutManager.BROADCAST_POST_LOGOUT");
    }

    public static void a(Context context)
    {
        Class _tmp = a;
        b(context);
        a();
    }

    public static void b(Context context)
    {
        c(context).a(context);
    }

    private static com.instagram.common.y.f.a c(Context context)
    {
        Context context1 = context.getApplicationContext();
        if (context1 instanceof a)
        {
            return (com.instagram.common.y.f.a)((a)context1).getAppService(com/instagram/common/y/f/a);
        } else
        {
            throw new RuntimeException("Your Application class needs to implement AppSpecificLogoutDelegate interface");
        }
    }

}
