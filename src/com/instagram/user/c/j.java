// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.user.c;


// Referenced classes of package com.instagram.user.c:
//            i

public final class j
{

    private static i a;

    public static i a()
    {
        return a;
    }

    public static void a(i i)
    {
        if (a != null && a != i)
        {
            throw new IllegalStateException("UserStore no longer a singleton");
        } else
        {
            a = i;
            return;
        }
    }
}
