// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.login.b;

import com.instagram.android.g.a;
import com.instagram.common.i.c;
import com.instagram.o.e;

public final class d
{

    public static void a(a a1)
    {
        if (a1.c() != null)
        {
            e.a(a1.c());
            return;
        } else
        {
            c.b("check_username", "no server error message");
            return;
        }
    }
}
