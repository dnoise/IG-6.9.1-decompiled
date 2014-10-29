// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.bugreport.a;

import android.content.Context;
import com.instagram.common.a.c.b;
import com.instagram.common.y.e;

// Referenced classes of package com.instagram.bugreport.a:
//            b

final class a extends com.instagram.bugreport.a.b
{

    private final String a;
    private final String b;

    public a(Context context, String s, String s1, String s2, String s3, String s4, String s5)
    {
        super(context, s, s1, s2, s3);
        a = s4;
        b = s5;
    }

    public final b a()
    {
        b b1 = super.a();
        b1.a("access_token", a);
        return b1;
    }

    public final String g_()
    {
        Object aobj[] = new Object[1];
        aobj[0] = b;
        return e.a("https://graph.facebook.com/%s/bugs", aobj);
    }
}
