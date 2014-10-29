// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.api.h;

import android.net.Uri;

// Referenced classes of package com.instagram.api.h:
//            c

public final class b
{

    public static boolean a(String s)
    {
        String s1;
        if (s != null)
        {
            if (b(s1 = Uri.parse(s).getHost()) || c(s1))
            {
                return true;
            }
        }
        return false;
    }

    public static boolean b(String s)
    {
        return s != null && (s.equals("instagram.com") || s.endsWith(".instagram.com"));
    }

    public static boolean c(String s)
    {
        return com.instagram.api.h.c.b() && s.endsWith(".sb.facebook.com");
    }
}
