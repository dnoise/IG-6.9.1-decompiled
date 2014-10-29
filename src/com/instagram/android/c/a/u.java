// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.android.c.a;


// Referenced classes of package com.instagram.android.c.a:
//            v

final class u
{

    static final int a[];

    static 
    {
        a = new int[v.a().length];
        try
        {
            a[-1 + v.a] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[-1 + v.b] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1)
        {
            return;
        }
    }
}
