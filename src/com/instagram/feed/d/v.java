// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import android.content.Intent;
import com.instagram.common.y.d;
import com.instagram.model.b.c;
import com.instagram.service.a.a;
import java.util.Collections;

// Referenced classes of package com.instagram.feed.d:
//            l

public final class v
{

    public static String a(String s)
    {
        return (new StringBuilder("Media.UPDATED_RECIPIENTS|")).append(s).toString();
    }

    static void a(l l1)
    {
        String s = com.instagram.service.a.a.a().b().g();
        boolean flag;
        if (l1.ap() != 0L || l1.an() != 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(l1, s, c.a, flag);
        a(l1, s, c.b, l1.r());
    }

    public static void a(l l1, String s, int i, boolean flag)
    {
        com.instagram.model.b.a a1 = l1.al();
        boolean flag1 = s.equals(a1.a().g());
        if (!flag1)
        {
            a1 = l1.g(s);
        }
        while (a1 == null || a1.a(i) == flag) 
        {
            return;
        }
        a1.a(i, flag);
        if (!flag1)
        {
            Collections.sort(l1.am());
        }
        b(l1);
    }

    private static void b(l l1)
    {
        Intent intent = new Intent(a(l1.d()));
        intent.putExtra("id", l1.d());
        d.a(intent);
    }
}
