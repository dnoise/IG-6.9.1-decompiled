// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.service.persistentcookiestore;


// Referenced classes of package com.instagram.service.persistentcookiestore:
//            PersistentCookieStore

final class a
    implements Runnable
{

    final PersistentCookieStore a;

    a(PersistentCookieStore persistentcookiestore)
    {
        a = persistentcookiestore;
        super();
    }

    public final void run()
    {
        PersistentCookieStore.a(a);
    }
}
