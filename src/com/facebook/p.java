// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Intent;
import android.os.Bundle;
import java.util.ArrayList;

// Referenced classes of package com.facebook:
//            o, b, a, s, 
//            c, ao, k, cf

final class p extends o
{

    final c c;

    p(c c1)
    {
        c = c1;
        super(c1);
    }

    private static s a(Intent intent)
    {
        Bundle bundle = intent.getExtras();
        String s1 = bundle.getString("com.facebook.platform.status.ERROR_TYPE");
        s s2;
        if (s1 == null)
        {
            s2 = s.a(com.facebook.a.a(bundle, b.c));
        } else
        {
            boolean flag = "ServiceDisabled".equals(s1);
            s2 = null;
            if (!flag)
            {
                if ("UserCanceled".equals(s1))
                {
                    return s.a(null);
                } else
                {
                    return s.a(s1, bundle.getString("error_description"));
                }
            }
        }
        return s2;
    }

    final boolean a(int i, Intent intent)
    {
        s s1;
        if (intent == null)
        {
            s1 = s.a("Operation canceled");
        } else
        {
            boolean flag = ao.a(intent);
            s1 = null;
            if (!flag)
            {
                if (i == 0)
                {
                    s1 = s.a(intent.getStringExtra("com.facebook.platform.status.ERROR_DESCRIPTION"));
                } else
                if (i != -1)
                {
                    s1 = s.a("Unexpected resultCode from authorization.", null);
                } else
                {
                    s1 = a(intent);
                }
            }
        }
        if (s1 != null)
        {
            c.a(s1);
        } else
        {
            c.b();
        }
        return true;
    }

    final boolean a(k k1)
    {
        return a(ao.a(c.c, k1.f(), new ArrayList(k1.b()), k1.e().a()), k1.d());
    }
}
