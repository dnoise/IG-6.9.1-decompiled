// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.userservice;

import com.instagram.api.k.a.d;
import com.instagram.common.a.a.j;
import com.instagram.common.l.a.e;
import java.io.IOException;

// Referenced classes of package com.instagram.user.userservice:
//            a, c

final class b extends j
{

    final a a;

    private b(a a1)
    {
        a = a1;
        super();
    }

    b(a a1, byte byte0)
    {
        this(a1);
    }

    private void a(d d1)
    {
        super.a(d1);
        a.a(true);
        try
        {
            a.a(((c)d1).a());
        }
        catch (IOException ioexception) { }
        a.a(((c)d1).b());
    }

    public final volatile void a(Object obj)
    {
        a((d)obj);
    }

    public final void b(e e)
    {
        super.b(e);
        try
        {
            com.instagram.user.userservice.a.a(a);
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }
}
