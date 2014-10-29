// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.u.b;

import com.instagram.common.u.b.a.a;

// Referenced classes of package com.instagram.common.u.b:
//            h

public final class i
{

    private static h a;

    public static h a()
    {
        if (a == null)
        {
            a = b();
        }
        return a;
    }

    private static h b()
    {
        a a1;
        try
        {
            Class.forName("com.amazon.device.messaging.ADM");
            a1 = new a();
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            return new com.instagram.common.u.b.b.a();
        }
        return a1;
    }
}
