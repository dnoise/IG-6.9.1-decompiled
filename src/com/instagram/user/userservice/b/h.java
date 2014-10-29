// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.userservice.b;


// Referenced classes of package com.instagram.user.userservice.b:
//            f, g

final class h
    implements Runnable
{

    final g a;

    h(g g)
    {
        a = g;
        super();
    }

    public final void run()
    {
        f.b(System.currentTimeMillis());
    }
}
