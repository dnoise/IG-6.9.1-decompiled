// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.userservice.a;

import android.content.SharedPreferences;
import com.instagram.common.y.d;
import com.instagram.l.b.a.a;
import com.instagram.user.b.b;
import java.io.IOException;

// Referenced classes of package com.instagram.user.userservice.a:
//            h, e

final class f
    implements Runnable
{

    final com.instagram.user.c.a a;
    final e b;

    f(e e, com.instagram.user.c.a a1)
    {
        b = e;
        a = a1;
        super();
    }

    public final void run()
    {
        try
        {
            com.instagram.l.b.a.a.a("autoCompleteUserStoreV2").edit().putString(a.g(), com.instagram.user.b.b.a(a)).commit();
            com.instagram.user.userservice.a.h.a(a);
            com.instagram.f.d.a.a().a(a);
            com.instagram.f.d.a.a().d();
            d.a("DirectShareRecipientsStore.BROADCAST_TARGET_RECIPIENTS_CHANGED");
            return;
        }
        catch (IOException ioexception)
        {
            getClass();
            Object aobj[] = new Object[2];
            aobj[0] = a.g();
            aobj[1] = ioexception;
            String.format("Unable to serialize user: %s. Exception %s", aobj);
            return;
        }
    }
}
