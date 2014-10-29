// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.userservice.a;

import android.content.SharedPreferences;
import com.instagram.l.b.a.a;

// Referenced classes of package com.instagram.user.userservice.a:
//            h, e

final class g
    implements Runnable
{

    final com.instagram.user.c.a a;
    final e b;

    g(e e, com.instagram.user.c.a a1)
    {
        b = e;
        a = a1;
        super();
    }

    public final void run()
    {
        com.instagram.l.b.a.a.a("autoCompleteUserStoreV2").edit().remove(a.g()).commit();
        h.b(a);
        com.instagram.f.d.a.a().b(a);
    }
}
