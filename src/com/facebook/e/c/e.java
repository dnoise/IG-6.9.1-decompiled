// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.e.c;


// Referenced classes of package com.facebook.e.c:
//            d

final class e extends ThreadLocal
{

    e()
    {
    }

    private static d a()
    {
        return new d();
    }

    protected final Object initialValue()
    {
        return a();
    }
}
