// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.g.b;

import android.content.Context;
import android.support.v4.app.an;

// Referenced classes of package com.instagram.android.g.b:
//            b

public final class a
{

    public static void a(com.instagram.user.c.a a1, Context context, an an)
    {
        String s;
        boolean flag;
        if (a1.v())
        {
            s = "unblock";
        } else
        {
            s = "block";
        }
        if (!a1.v())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a1.c(flag);
        a1.G();
        (new com.instagram.android.c.a.a(context, an, new b(context, a1))).a(a1, s);
    }
}
