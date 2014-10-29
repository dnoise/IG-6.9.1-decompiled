// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.notifications.c2dm;

import com.instagram.common.a.a.j;
import com.instagram.common.l.a.e;
import com.instagram.l.a.b;
import java.util.Date;

// Referenced classes of package com.instagram.notifications.c2dm:
//            IgPushRegistrationService

final class a extends j
{

    private a()
    {
    }

    a(byte byte0)
    {
        this();
    }

    private static void c()
    {
        IgPushRegistrationService.a();
        com.instagram.l.a.b.a().a((new Date()).getTime());
    }

    public final void a(Object obj)
    {
        c();
    }

    public final void b(e e)
    {
        IgPushRegistrationService.a();
    }
}
