// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.instagram.feed.d;

import com.instagram.o.d;

final class m
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
        catch (NoSuchFieldError nosuchfielderror1)
        {
            return;
        }
    }
}
