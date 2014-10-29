// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.l.a;

import java.io.Serializable;

// Referenced classes of package com.instagram.common.l.a:
//            g, f, a

public abstract class e
    implements Serializable
{

    e()
    {
    }

    public static e a(Object obj)
    {
        return new g(f.a(obj));
    }

    public static e b(Object obj)
    {
        if (obj == null)
        {
            return c();
        } else
        {
            return new g(obj);
        }
    }

    public static e c()
    {
        return a.a;
    }

    public abstract boolean a();

    public abstract Object b();
}
