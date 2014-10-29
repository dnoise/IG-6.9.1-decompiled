// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.d.b;

import a.a.a;
import com.facebook.a.i;
import java.util.HashMap;

// Referenced classes of package com.facebook.d.b:
//            c

final class d
    implements Runnable
{

    final String a;
    final String b;
    final Throwable c;
    final c d;

    d(c c1, String s, String s1, Throwable throwable)
    {
        d = c1;
        a = s;
        b = s1;
        c = throwable;
        super();
    }

    public final void run()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("soft_error_category", a);
        hashmap.put("soft_error_message", b);
        ((i)com.facebook.d.b.c.a(d).a()).a(c, hashmap);
_L1:
        return;
        Throwable throwable;
        throwable;
        if (com.facebook.d.b.c.b(d))
        {
            if (throwable instanceof Error)
            {
                throw (Error)throwable;
            }
            if (throwable instanceof RuntimeException)
            {
                throw (RuntimeException)throwable;
            } else
            {
                throw new RuntimeException(throwable);
            }
        }
          goto _L1
    }
}
