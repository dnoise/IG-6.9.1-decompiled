// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.share.b;

import android.content.SharedPreferences;
import com.instagram.common.a.a.j;
import com.instagram.common.analytics.a;

// Referenced classes of package com.instagram.share.b:
//            l, a

final class d extends j
{

    d()
    {
    }

    private static void a(l l1)
    {
        String s = l1.b();
        if (s != null)
        {
            com.instagram.share.b.a.n().edit().putString("user_id", s).commit();
            com.instagram.common.analytics.a.a().a(s);
        }
    }

    public final volatile void a(Object obj)
    {
        a((l)obj);
    }
}
