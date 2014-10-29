// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Intent;
import android.os.Bundle;
import com.facebook.g.o;
import java.util.Collection;

// Referenced classes of package com.facebook:
//            o, c, k, b, 
//            a, s, ao

final class q extends com.facebook.o
{

    final c c;

    q(c c1)
    {
        c = c1;
        super(c1);
    }

    private s a(Intent intent)
    {
        Bundle bundle = intent.getExtras();
        String s1 = bundle.getString("error");
        if (s1 == null)
        {
            s1 = bundle.getString("error_type");
        }
        s s2;
        if (s1 == null)
        {
            s2 = s.a(com.facebook.a.a(c.h.b(), bundle, b.b));
        } else
        {
            boolean flag = o.a.contains(s1);
            s2 = null;
            if (!flag)
            {
                if (o.b.contains(s1))
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
        if (i == 0)
        {
            s1 = s.a(intent.getStringExtra("error"));
        } else
        if (i != -1)
        {
            s1 = s.a("Unexpected resultCode from authorization.", null);
        } else
        {
            s1 = a(intent);
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
        return a(ao.a(c.c, k1.f(), k1.b()), k1.d());
    }
}
