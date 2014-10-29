// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.common.a.b;

import com.instagram.common.a.c.a;

final class b
{

    static final int a[];

    static 
    {
        a = new int[com.instagram.common.a.c.a.a().length];
        try
        {
            a[-1 + a.c] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[-1 + a.a] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[-1 + a.d] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[-1 + a.b] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3)
        {
            return;
        }
    }
}
