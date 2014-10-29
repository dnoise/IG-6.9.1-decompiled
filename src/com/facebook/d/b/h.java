// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.d.b;

import com.facebook.a.p;

public final class h extends Exception
    implements p
{

    public h(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public final String a()
    {
        return "soft error";
    }
}
