// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.e;

import android.content.Context;
import com.facebook.a.i;
import com.instagram.common.s.b;

// Referenced classes of package com.instagram.e:
//            b

public final class a
{

    private static i a;

    public static void a(Context context)
    {
        com.instagram.e.b b1 = new com.instagram.e.b(context);
        String s = com.instagram.d.a.d().b();
        boolean flag;
        i j;
        i k;
        if (!com.instagram.common.s.b.d())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j = com.facebook.a.a.a(b1, s, flag);
        a = j;
        j.a("app", "instagram");
        k = a;
        com.instagram.d.a.d();
        k.a("fb_app_id", com.instagram.d.a.c());
        try
        {
            a.a("ig_device_id", com.instagram.common.z.a.b(context));
        }
        catch (RuntimeException runtimeexception)
        {
            (new StringBuilder("Failed to set application uuid")).append(runtimeexception.getMessage());
        }
        if (!com.instagram.common.s.b.d())
        {
            a.c();
        }
    }

    public static void a(String s)
    {
        a.a(s);
    }

    public static void b(String s)
    {
        a.a("ig_uid", s);
    }
}
