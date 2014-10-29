// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.w;


// Referenced classes of package com.instagram.common.w:
//            d

final class b
{

    static final int a[];

    static 
    {
        a = new int[d.a().length];
        try
        {
            a[-1 + d.a] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[-1 + d.b] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[-1 + d.c] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2)
        {
            return;
        }
    }
}
