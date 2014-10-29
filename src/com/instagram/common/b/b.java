// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.b;


// Referenced classes of package com.instagram.common.b:
//            a

public abstract class b
    implements a
{

    public b()
    {
    }

    public Object getAppService(Class class1)
    {
        throw new IllegalArgumentException((new StringBuilder("Unknown service type ")).append(class1).toString());
    }

    public void onCreate()
    {
    }
}
